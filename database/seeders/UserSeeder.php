<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        DB::table('roles')->insert([
            'name' => "superadmin",
            'guard_name' => 'web'
        ]);
        DB::table('roles')->insert([
            'name' => "bag_dapur",
            'guard_name' => 'web'
        ]);
        DB::table('roles')->insert([
            'name' => "pelayan",
            'guard_name' => 'web'
        ]);
        DB::table('roles')->insert([
            'name' => "konsumen",
            'guard_name' => 'web'
        ]);
    
       $user = DB::table('users')->insert([
            'id' => Str::uuid(),
            'name' => "kasir",
            'email' => 'kasir@gmail.com',
            'password' => Hash::make('kasir12345'),
        ]);

       // $user->assignRole('superadmin');
    
    
    }
}
