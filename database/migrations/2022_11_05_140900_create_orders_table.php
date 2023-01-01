<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('customer_id');
            $table->double('order_total', 10, 2);
            $table->double('tax_total', 10,2);
            $table->double('shipping_total', 10,2);
            $table->text('order_date');
            $table->text('order_timestamp');
            $table->text('order_status')->default('Pending');
            $table->text('payment_status')->default('Pending');
            $table->text('payment_type');
            $table->double('payment_amount', 10,2)->default(0);
            $table->text('payment_date')->nullable();
            $table->text('payment_timestamp')->nullable();
            $table->text('delivery_status')->default('Pending');
            $table->text('delivery_date')->nullable();
            $table->text('delivery_timestamp')->nullable();
            $table->text('delivery_address');
            $table->text('transaction_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
};
