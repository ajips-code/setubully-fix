@extends('layouts.main')

@section('content')

<div class="page-content">
    <section class="row">
        <div class="col-6 mb-3 header-about bg-home w-100 pb-5">
            <div class="container pt-2 pt-sm-5">
                <div class="row d-flex align-items-center text-sm-start text-center">
                    <div class="col-md-6 col-12 mt-5" style="z-index: 10">
                        <h1 class="text-white fw-bold">{!! config('web_config')['HERO_TEXT_HEADER'] !!}</h1>
                        <p class="text-white fs-4 pt-3 pt-sm-4 w-100 ">
                            {!! config('web_config')['HERO_TEXT_DESCRIPTION'] !!}
                        </p>
                    </div>
                    <div class="col text-center text-md-end mt-5 mt-sm-0">
                        <img src="{{ asset('images/cloud storage.png') }}" alt="illustrasi laptop" class="illust-home" width="70%">
                    </div>
                </div>
                <div class="poligon d-none d-md-block"></div>
            </div>
        </div>
        <div class="col-12">
            @if (session()->has('success'))
            <div class="w-100 mx-auto px-5">
                <div class="alert bg alert-dismissible show fade mt-4">
                    {{ session('success') }}
                    <button type="button" class="btn-close text-white" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </div>
            @endif
            <div class="container">
                <div class="garis"></div>
                <div class="row alur-lapor mt-5 d-flex text-center align-content-start">
                    <div class="col">
                        <div class="ellipse">
                            <img src="{{ asset('images/icon/edit-property.svg') }}" alt="icon" width="32">
                        </div>
                        <h5 class="mt-2">Tulis Laporan</h5>
                        <p class="d-md-block d-none">Tuliskan laporan kamu secara menyeluruh.</p>
                    </div>
                    <div class="col">
                        <div class="ellipse">
                            <img src="{{ asset('images/icon/in-progress.svg') }}" alt="icon" width="36">
                        </div>
                        <h5 class="mt-2">Proses Verifikasi</h5>
                        <p class="d-md-block d-none">Laporan kamu akan diverifikasi dan diteruskan.</p>
                    </div>
                    <div class="col">
                        <div class="ellipse">
                            <img src="{{ asset('images/icon/messaging.svg') }}" alt="icon" width="37">
                        </div>
                        <h5 class="mt-2">Tindak Lanjut</h5>
                        <p class="d-md-block d-none">Petugas akan menindak-lanjuti laporan kamu.</p>
                    </div>
                    <div class="col">
                        <div class="ellipse">
                            <img src="{{ asset('images/icon/chat-bubble.svg') }}" alt="icon" width="37">
                        </div>
                        <h5 class="mt-2">Dapat Tanggapan</h5>
                        <p class="d-md-block d-none">Laporan kamu akan di tanggapi oleh petugas.</p>
                    </div>
                    <div class="col">
                        <div class="ellipse">
                            <img src="{{ asset('images/icon/done.svg') }}" alt="icon" width="37">
                        </div>
                        <h5 class="mt-2">Selesai</h5>
                        <p class="d-md-block d-none">Selamat, laporan kamu sudah terselesaikan!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 text-center mt-5">
                    @can('student')
                    <a href="/dashboard/complaints/create" class="btn btn-lapor rounded-3 fw-bold">Buat
                        Laporan</a>
                    @endcan
                    @guest
                    <a href="/login" class="btn btn-lapor rounded-3 fw-bold">Buat
                        Laporan</a>
                    @endguest
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-12 jumlah-lapor mt-5 text-center">
                    <h3 class="text-white mt-4 fs-2">Jumlah Laporan</h3><br>
                    <p class="text-white fw-bold fs-1 mt-2"> {{ $complaintsCount }} </p><br>
                    <p class="text-white fw-bold fs-3 ">#JANGANTAKUTLAPOR!</p>
                </div>
            </div>
            <div class="container">
                <div class="row my-5">
                    <div class="col-12 mb-5">
                        <h2 class="text-center">Keuntungan Menggunakan {{ config('web_config')['WEB_TITLE'] }}</h2>
                    </div>
                    <div class="row card-keuntungan d-block d-md-flex justify-content-center text-center mx-auto">
                        <div class="col">
                            <div class="card ms-auto">
                                <div class="card-body">
                                    <div class="ellipse">
                                        <img src="../images/icon/privasi.svg" alt="icon" width="36" class="icon-keuntungan">
                                    </div>
                                    <h5 class="my-3">Privasi Terjaga</h5>
                                    <p>Aplikasi ini didesain untuk menjaga kerahasiaan informasi pribadi kamu. Dengan
                                        demikian, kamu dapat merasa tenang dan percaya diri saat menggunakan aplikasi
                                        ini, karena privasi kamu menjadi prioritas utama.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card mx-auto">
                                <div class="card-body">
                                    <div class="ellipse">
                                        <img src="../images/icon/keamanan.svg" alt="icon" width="35" class="icon-keuntungan">
                                    </div>
                                    <h5 class="my-3">Melapor dengan Aman</h5>
                                    <p>Setubully menyediakan pengalaman melapor yang aman dan terjamin. kamu dapat
                                        mengungkapkan berbagai permasalahan, pengalaman, atau pikiran tanpa khawatir
                                        tentang kebocoran identitas kamu.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card me-auto">
                                <div class="card-body">
                                    <div class="ellipse">
                                        <img src="../images/icon/tanggap.svg" alt="icon" width="36" class="icon-keuntungan">
                                    </div>
                                    <h5 class="my-3">Ditanggapi Secara Cepat</h5>
                                    <p>Laporan yang kamu buat akan cepat ditanggapi. Dengan demikian, kamu dapat
                                        merasa didengar dan
                                        mendapatkan tanggapan yang relevan terhadap keluhan, saran, atau masukan yang
                                        kamu berikan.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <!-- Tips & Informasi -->
        <div class="card-container">
            <h1>Tips & Informasi</h1>
            <hr class="container my-5">
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <div class="col">
                    <div class="card h-100">
                        <img src="/images/image 1.png" class="card-img-top" alt="apa itu bulyying">
                        <div class="card-body">
                            <h5 class="card-title">Memahami Apa Itu Bullying, Penyebab, dan Cara Mengatasinya</h5>
                            <p class="card-text">Bullying adalah pola perilaku, bukan insiden yang terjadi sekali-kali. Biasanya, pelaku bullying berasal dari status
                                sosial atau posisi kekuasaan yang lebih tinggi, seperti anak-anak yang lebih besar, lebih kuat, atau dianggap populer
                                sehingga dapat menyalahgunakan posisinya.</p>
                            <a href="https://www.cnbcindonesia.com/lifestyle/20220722152857-33-357801/memahami-apa-itu-bullying-penyebab-dan-cara-mengatasinya" class="card-link text-primary" target="_blank">Baca selengkapnya</a>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="/images/image 2.png" class="card-img-top" alt="pesan guru BK">
                        <div class="card-body">
                            <h5 class="card-title">Peran Dosen Psikolog atau BK untuk Mencegah Bullying di Lingkungan Kampus.</h5>
                            <p class="card-text">Salah satu tugasnya dalam mencegah perilaku bullying adalah dengan selalu
                                menanamkan nilai kebaikan moral pada
                                siswa. Selain itu, ia juga melakukan bimbingan klasikal menjelaskan tentang apa itu bullying,
                                bagaimana perilaku
                                bullying itu, sebab dan akibat yang timbul bila perilaku bullying terjadi seta cara mencegah dan melawan
                                bullying.
                            </p>
                            <a href="https://www.kompasiana.com/anggi63327/636481c64addee50b17ca6f2/peran-guru-bk-untuk-mencegah-bullying-di-sekolah" class="card-link text-primary" target="_blank">Baca selengkapnya</a>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="/images/image 3.png" class="card-img-top" alt="cara meningkatkan percaya diri">
                        <div class="card-body">
                            <h5 class="card-title">Cara Mudah Meningkatkan Rasa Percaya Diri.</h5>
                            <p class="card-text">Meningkatkan kepercayaan diri dapat membantu kamu menjalani kehidupan yang lebih
                                berkualitas. Percaya diri sangat
                                penting untuk aktivitas sehari-hari maupun profesional. Jika kamu memiliki rasa percaya diri, kamu lebih
                                dapat melakukan
                                segala sesuatunya sesuai dengan potensi dan punya keinginan untuk melakukan terbaik meski di bawah
                                tekanan.</p>
                            <a href="https://www.halodoc.com/artikel/cara-mudah-meningkatkan-rasa-percaya-diri" class="card-link text-primary">Baca selengkapnya</a>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="description">
        <div class="container">
            <div style="margin-top: 80px;" class="jumbotron text-center">
                <h1 class="display-4 mb-0 landing-title">Tips & Informasi
                    <img width="50px" src="https://user-images.githubusercontent.com/82244776/134434978-0f051c22-1e96-4a18-a706-d2e9e2e61d25.png" alt="">
                </h1>
                <hr class="container my-5">
                <h6 class="mt-2 landing-description">Bullying (dikenal sebagai “Penindasan/risak” dalam bahasa indonesia) merupakan segala bentuk penindasan atau kekerasan
                    yang dilakukan dengan sengaja oleh satu atau sekelompok orang yang lebih kuat atau berkuasa terhadap orang lain,
                    bertujuan untuk menyakiti secara terus menerus.</h6>
            </div>
        </div>
    </section>
    <section>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <img class="home-images sharing-image" alt="sharing-stories" src="/images/gambar8.png" style="width:270px;height:auto;">
            </div>
        </div>
    </section>
    <section class="stories">
        <div class="container">
            <div class="row text-center">
                <h6>Laporkan di Webite ini kemudian Konsultasi ke Dosen Psikolog atau kepada Orang Dewasa yang Bisa Dipercaya</h6>
                <h7 class="stories-description">
                    Cobalah untuk mengkomunikasikan bullying yang menimpamu atau orang di dekatmu kepada Dosen Psikolog atau orang dewasa yang menurutmu bisa dipercaya. Orang dewasa yang memiliki otoritas seperti orangtua atau guru biasanya memiliki cara yang lebih baik dalam menangani masalah seperti ini tanpa harus membahayakan si korban..</h7>
            </div>
        </div>
    </section>

    <section>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <img class="home-images sharing-image" alt="sharing-stories" src="/images/gambar4.png" style="width:270px;height:auto;">
            </div>
        </div>
    </section>
    <section class="stories">
        <div class="container">
            <div class="row text-center">
                <h6>Berlatih Menunjukkan Sikap Percaya Diri</h6>
                <h7 class="stories-description">Latih diri untuk bersikap percaya diri di depan umum. Latih diri untuk merespon segala tindakan pelaku bullying lewat perilakumu. 
                    Tunjukkan sikap percaya diri di depan mereka, meskipun pada awalnya kamu harus berpura-pura untuk melakukannya.</h7>
            </div>
        </div>
    </section>

    <!-- Video -->
    <div class="video-container">
        <h1>Video Tips</h1>
        <hr class="container my-4 d-flex">
        <section class="video">
            <div class="container-yt mt-5">
                <div class="row justify-content-center">
                    <iframe width="600px" height="500px" src="https://www.youtube.com/embed/TUougjjADUE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                    </iframe>
                </div>
            </div>
        </section>
    </div>
</div>

@endsection