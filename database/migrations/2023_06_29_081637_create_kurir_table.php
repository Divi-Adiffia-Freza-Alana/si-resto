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
        Schema::create('kurir', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('nama');
            $table->string('no_ktp');
            $table->date('tgl_lahir');
            $table->string('no_hp');
            $table->string('jk');
            $table->string('email');
            $table->text('alamat');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kurir');
    }
};