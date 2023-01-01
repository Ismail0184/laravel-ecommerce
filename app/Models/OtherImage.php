<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OtherImage extends Model
{
    use HasFactory;

    public static $otherImage, $otherImages, $images, $image, $imageUrl, $imageName, $directory;

    public static function getImageUrl($image)
    {
        self::$imageName    = $image->getClientOriginalName();
        self::$directory    = 'product-other-images/';
        $image->move(self::$directory, self::$imageName);
        return self::$directory.self::$imageName;
    }

    public static function newOtherImage($request, $id)
    {
        self::$images = $request->file('other_image');
        foreach (self::$images as $image)
        {
            self::$otherImage = new OtherImage();
            self::$otherImage->product_id = $id;
            self::$otherImage->image = self::getImageUrl($image);
            self::$otherImage->save();
        }
    }

    public static function updateOtherImage($request, $id)
    {
        self::$otherImages = OtherImage::whre('product_id', $id)->get();
        foreach (self::$otherImages as $otherImage)
        {
            $otherImage->delete();
        }
        self::newOtherImage($request, $id);
    }
}
