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
        Schema::table('users', function (Blueprint $table) {
            $table->text('description')->nullable()->after('email');
            $table->text('urlfacebook')->nullable()->after('description');
            $table->text('urlinstagram')->nullable()->after('urlfacebook');
            $table->text('urlx')->nullable()->after('urlinstagram');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $tabledropColum(['description','urlfacebook','urlinstagram','urlx']);
        });
    }
};
