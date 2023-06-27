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
        Schema::create('satwa', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->uuid('id_mastersatwa')->required();
            $table->foreign('id_mastersatwa')->references('id')->on('mastersatwa');
            //$table->uuid('id_kandang')->required();
            //$table->foreign('id_kandang')->references('id')->on('kandang');
            $table->string('nama',30);
            $table->string('filial',3);
            $table->string('jk',10);
          //  $table->string('asal_usul',30);
            $table->string('induk_jantan',30);
            $table->string('induk_betina',30);
            $table->string('status_breeding',30);
            $table->date('tgl_lahir');
            //$table->string('nama_instansi',100);
            //$table->string('dokumen_bap');
            //$table->string('dokumen_lahir');
            //$table->string('dokumen_pendukung');
            $table->text('ciri')->nullable();
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('satwa');
    }
};
