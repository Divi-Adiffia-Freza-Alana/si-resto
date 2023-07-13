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
            $table->uuid('id_pembeli')->required();
            $table->foreign('id_pembeli')->references('id')->on('users');
            $table->uuid('id_kurir')->required();
            $table->foreign('id_kurir')->references('id')->on('users');
            $table->date('tgl_transaksi');
            $table->float('total');
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
