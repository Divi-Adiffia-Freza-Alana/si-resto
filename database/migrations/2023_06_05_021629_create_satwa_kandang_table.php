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
        Schema::create('satwa_kandang', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('id_kandang')->required();
            $table->foreign('id_kandang')->references('id')->on('kandang');
            $table->uuid('id_satwa')->required();
            $table->foreign('id_satwa')->references('id')->on('satwa');
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('satwa_kandang');
    }
};
