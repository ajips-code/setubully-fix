<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::insert([
            // Admins
            [
                "nik" => "1234567890123456",
                "name" => "Muhammad Adji",
                "username" => "adji",
                "gender" => "L",
                "email" => "adji@gmail.com",
                "password" => Hash::make("password"),
                "level" => 'admin',
                "created_at" => now()
            ],
            [
                "nik" => "1201234563456789",
                "name" => "admin",
                "username" => "nana",
                "gender" => "P",
                "email" => "admin@gmail.com",
                "password" => Hash::make("password"),
                "level" => 'admin',
                "created_at" => now()
            ],
            // Students
            [
                "nik" => "1234561234567890",
                "name" => "Adji",
                "username" => "aji",
                "gender" => "L",
                "email" => "aji@gmail.com",
                "password" => Hash::make("password"),
                "level" => "student",
                "created_at" => now()
            ],
            [
                "nik" => "1234556789061234",
                "name" => "Student",
                "username" => "student",
                "gender" => "L",
                "email" => "student@gmail.com",
                "password" => Hash::make("password"),
                "level" => "student",
                "created_at" => now()
            ],
            [
                "nik" => "5678901234561234",
                "name" => "Muhammad Pasya",
                "username" => "pasyaa",
                "gender" => "L",
                "email" => "pasyaa@gmail.com",
                "password" => Hash::make("password"),
                "level" => "student",
                "created_at" => now()
            ],
            // Officers
            [
                "nik" => "1234512345667890",
                "name" => "ajie",
                "username" => "ajie",
                "gender" => "L",
                "email" => "ajie@gmail.com",
                "password" => Hash::make("password"),
                "level" => "officer",
                "created_at" => now()
            ],
            [
                "nik" => "1234516678902345",
                "name" => "officer",
                "username" => "officer",
                "gender" => "L",
                "email" => "officer@gmail.com",
                "password" => Hash::make("password"),
                "level" => "officer",
                "created_at" => now()
            ],
            [
                "nik" => "1238902345451667",
                "name" => "Arif Rahmaanul",
                "username" => "arif.rahmaanul",
                "gender" => "L",
                "email" => "arif@gmail.com",
                "password" => Hash::make("password"),
                "level" => "officer",
                "created_at" => now()
            ]
        ]);
    }
}
