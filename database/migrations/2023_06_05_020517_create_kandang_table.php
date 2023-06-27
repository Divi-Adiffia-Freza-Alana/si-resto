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
        Schema::create('kandang', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('id_keeper')->required();
            $table->foreign('id_keeper')->references('id')->on('keeper');
            $table->uuid('id_zona')->required();
            $table->foreign('id_zona')->references('id')->on('zona');
            $table->string('kode_kandang');
            $table->String('jenis_kandang');
            $table->String('deskripsi')->nullable();
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kandang');
    }
};
