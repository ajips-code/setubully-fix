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
            ["name" => "Cyberbullying","image" => "cyberbullying.jpg", "slug" => "cyberbullying", "description" => "<p>Laporkan langsung bentuk tindakan bullying yang dilakukan melalui media sosial, pesan teks, atau platform digital lainnya. Cyberbullying dapat melibatkan penghinaan, penyebaran rumor, pelecehan secara online, atau pencemaran nama baik melalui komentar negatif atau gambar yang merendahkan.</p>"],
            ["name" => "Verbal Bullying","image" => "verbal-bullying.png", "slug" => "verbal-bullying", "description" => "<p>Laporkan hal yang melibatkan penghinaan, ejekan, penghinaan, atau pengucilan secara lisan. Ini bisa terjadi dalam percakapan sehari-hari, di kelas, atau dalam kelompok sosial. Contohnya termasuk mengolok-olok penampilan fisik, cerdas, latar belakang etnis, atau agama seseorang.</p>"],
            ["name" => "Bullying Fisik","image" => "bullying-fisik.jpg", "slug" => "bullying-fisik", "description" => "<p>Laporkanlah Tindakan yang melibatkan penggunaan kekerasan fisik atau ancaman fisik untuk menyakiti atau mengintimidasi seseorang. Ini bisa berupa pukulan, tendangan, dorongan, atau ancaman menggunakan kekuatan fisik.</p>"],
            ["name" => "Bullying Emosional","image" => "bullying-emosional.jpeg", "slug" => "bullying-emosional", "description" => "<p>Segera beri kabar apabila ada bentuk bullying yang melibatkan penghinaan, pengabaian, isolasi, atau pengucilan yang bertujuan untuk merendahkan atau merusak keadaan emosional seseorang. Ini bisa termasuk mengabaikan seseorang, menyebabkan rasa malu atau cemas, atau membuat seseorang merasa tidak berharga.</p>"],
            ["name" => "Bullying Seksual","image" => "bullying-seksual.jpg", "slug" => "bullying-seksual", "description" => "<p>Laporkan langsung apabila mendapati pelaku atau korban yang melibatkan perilaku tidak diinginkan atau tidak pantas yang bersifat seksual, termasuk pelecehan seksual, komentar yang tidak senonoh, atau ancaman untuk memperoleh layanan seksual melalui penekanan atau pemerasan.</p>"],
        ]);
    }
}
