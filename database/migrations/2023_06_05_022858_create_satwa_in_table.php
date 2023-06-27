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
        Schema::create('satwa_in', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('id_satwa')->required();
            $table->foreign('id_satwa')->references('id')->on('satwa');
            $table->string('asal_usul',30);
            $table->string('nama_instansi',100);
            $table->date('tgl_masuk');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('satwa_in');
    }
};
