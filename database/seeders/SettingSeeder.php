<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Setting;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Setting::insert([
            ['key' => 'WEB_TITLE', 'value' => 'Setubully'],
            ['key' => 'WEB_LOCATION', 'value' => '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.0482658443407!2d110.3830403743061!3d-7.784707677244947!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59ce29bc3887%3A0x2cad870b4a56cf1!2sINSTITUT%20SAINS%20%26%20TEKNOLOGI%20AKPRIND!5e0!3m2!1sid!2sid!4v1686070441913!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>'],
            ['key' => 'WEB_LOGO_WHITE', 'value' => 'logo-akprind.png'],
            ['key' => 'WEB_LOGO', 'value' => 'logo-akprind.png'],
            ['key' => 'WEB_FAVICON', 'value' => 'logo-akprind.png'],
            ['key' => 'HERO_TEXT_HEADER', 'value' => 'Sistem Pengaduan Online Bullying di IST Akprind Yogyakarta'],
            ['key' => 'HERO_TEXT_DESCRIPTION', 'value' => 'Membuka Suara: Mendorong Pelaporan Bullying dan Membangun Ruang Aman bagi Mahasiswa melalui Pendekatan Whistleblowing System dengan Website Setubully'],
            ['key' => 'FOOTER_IMAGE', 'value' => 'logo-akprind.png'],
            ['key' => 'FOOTER_TEXT_DASHBOARD', 'value' => 'IST AKPRIND YOGYAKARTA'],
            ['key' => 'FOOTER_IMAGE_DASHBOARD', 'value' => 'logo-akprind.png'],
        ]);
    }
}
