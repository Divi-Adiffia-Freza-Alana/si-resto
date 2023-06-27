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
        Schema::create('mastersatwa', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('namasatwa');
            $table->string('kingdom');
            $table->string('filum');
            $table->string('kelas');
            $table->string('ordo');
            $table->string('famili');
            $table->string('subfamili');
            $table->string('genus');
            $table->string('spesies');
            $table->string('ancaman');
            $table->string('penyebaran');
            $table->string('makanan');
            $table->string('habitat');
            $table->string('trenpopulasi');
            $table->string('funfact');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mastersatwa');
    }
};
