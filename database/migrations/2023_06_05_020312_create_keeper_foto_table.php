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
        Schema::create('keeper_foto', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('id_keeper')->required();
            $table->foreign('id_keeper')->references('id')->on('keeper')->onDelete('cascade');
            $table->string('nama');
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('keeper_foto');
    }
};
