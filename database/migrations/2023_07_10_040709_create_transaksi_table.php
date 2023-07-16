<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('transaksi', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('id_konsumen')->required();
            $table->foreign('id_konsumen')->references('id')->on('users');
            $table->uuid('id_bag_dapur')->required();
            $table->foreign('id_bag_dapur')->references('id')->on('bag_dapur');
            $table->date('tgl_transaksi');
            $table->float('total');
            $table->string('status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transaksi');
    }
};
