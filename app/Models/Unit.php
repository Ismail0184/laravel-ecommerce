<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Unit extends Model
{
    use HasFactory;
    public static $unit;

    public static function newUnit($request)
    {
        self::$unit = new Unit();
        self::$unit->name = $request->name;
        self::$unit->code = $request->code;
        self::$unit->description = $request->description;
        self::$unit->save();
    }

    public static function updateUnit($request, $id)
    {
        self::$unit = Unit::find($id);
        self::$unit->name = $request->name;
        self::$unit->code = $request->code;
        self::$unit->description = $request->description;
        self::$unit->save();
    }

    public static function deleteUnit($id)
    {
        self::$unit = Unit::find($id);
        self::$unit->delete();
    }
}
