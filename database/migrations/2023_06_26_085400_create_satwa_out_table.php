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
        Schema::create('satwa_out', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('id_satwa')->required();
            $table->foreign('id_satwa')->references('id')->on('satwa');
            $table->string('instansi');
            $table->string('jenis');
            $table->text('deskripsi');
            $table->date('tgl_keluar');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('satwa_out');
    }
};
