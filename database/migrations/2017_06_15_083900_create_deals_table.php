<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDealsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('deals', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title', 100);
            $table->string('category', 50);
            $table->string('sub_category', 50);
            $table->text('description');
            $table->enum('duration', ['1year', '1month', '1day']);
            $table->unsignedInteger('rent_amount');
            $table->string('pic1');
            $table->string('pic2')->nullable()->default('');
            $table->string('pic3')->nullable()->default('');
            $table->string('user_name', 100);
            $table->string('phone_no', 30);
            $table->string('email', 50)->nullable()->default('');
            $table->string('city', 50);
            $table->unsignedInteger('user_id')->nullable();
            $table->timestamps();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('deals');
    }
}
