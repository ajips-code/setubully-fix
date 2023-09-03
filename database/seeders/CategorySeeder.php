<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::insert([
            ["name" => "Cyberbullying","image" => "https://images.unsplash.com/photo-1614064548237-096f735f344f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80", "slug" => "cyberbullying", "description" => "<p>Laporkan langsung bentuk tindakan bullying yang dilakukan melalui media sosial, pesan teks, atau platform digital lainnya. Cyberbullying dapat melibatkan penghinaan, penyebaran rumor, pelecehan secara online, atau pencemaran nama baik melalui komentar negatif atau gambar yang merendahkan.</p>"],
            ["name" => "Verbal Bullying","image" => "https://images.unsplash.com/photo-1546957222-39a2f31d3644?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80", "slug" => "verbal-bullying", "description" => "<p>Laporkan hal yang melibatkan penghinaan, ejekan, penghinaan, atau pengucilan secara lisan. Ini bisa terjadi dalam percakapan sehari-hari, di kelas, atau dalam kelompok sosial. Contohnya termasuk mengolok-olok penampilan fisik, cerdas, latar belakang etnis, atau agama seseorang.</p>"],
            ["name" => "Bullying Fisik","image" => "https://images.unsplash.com/photo-1633638451889-85f809fc926f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80", "slug" => "bullying-fisik", "description" => "<p>Laporkanlah Tindakan yang melibatkan penggunaan kekerasan fisik atau ancaman fisik untuk menyakiti atau mengintimidasi seseorang. Ini bisa berupa pukulan, tendangan, dorongan, atau ancaman menggunakan kekuatan fisik.</p>"],
            ["name" => "Bullying Emosional","image" => "https://plus.unsplash.com/premium_photo-1683141256844-9b6a7b00eddd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80", "slug" => "bullying-emosional", "description" => "<p>Segera beri kabar apabila ada bentuk bullying yang melibatkan penghinaan, pengabaian, isolasi, atau pengucilan yang bertujuan untuk merendahkan atau merusak keadaan emosional seseorang. Ini bisa termasuk mengabaikan seseorang, menyebabkan rasa malu atau cemas, atau membuat seseorang merasa tidak berharga.</p>"],
            ["name" => "Bullying Seksual","image" => "https://images.unsplash.com/photo-1646317136848-4e527abe6e6a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80", "slug" => "bullying-seksual", "description" => "<p>Laporkan langsung apabila mendapati pelaku atau korban yang melibatkan perilaku tidak diinginkan atau tidak pantas yang bersifat seksual, termasuk pelecehan seksual, komentar yang tidak senonoh, atau ancaman untuk memperoleh layanan seksual melalui penekanan atau pemerasan.</p>"],
        ]);
    }
}
