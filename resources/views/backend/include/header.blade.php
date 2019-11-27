<nav class="navbar navbar-expand-md navbar-dark bg-dark">

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="{{ url('/cms/kemhan/dashboard') }}">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ url('/cms/kemhan/anggaran') }}">Anggaran</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Rencana Penarikan Dana (RPD)</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Revisi Anggaran</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Realisasi Anggaran</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Laporan</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="#">Laporan Perkembangan Pengadaan Barang dan Jasa</a>
              <a class="dropdown-item" href="#">Laporan Perkembangan Pembangunan dan Pengembangan Fasilitas</a>
              <a class="dropdown-item" href="#">Laporan Realisasi Anggaran</a>
              <a class="dropdown-item" href="#">Laporan Realisasi Anggaran Pendapatan Tingkat Eselon I</a>
              <a class="dropdown-item" href="#">Laporan Realisasi Anggaran Pendapatan Tingkat Eselon I Menurut Wilayah Satuan Kerja</a>
              <a class="dropdown-item" href="#">Laporan Realisasi Anggaran Belanja Menurut Wilayah/Satuan Kerja Tingkat Eselon I</a>
              <a class="dropdown-item" href="#">Laporan Realisasi Anggaran Belanja Menurut Jenis Belanja / Akun Tingkat Eselon I</a>
              <a class="dropdown-item" href="#">Laporan Realisasi Anggaran Belanja Menurut Sumber Dana Program Kegiatan Tingkat Eselon I</a>
              <a class="dropdown-item" href="#">Laporan Realisasi RPD</a>
              <a class="dropdown-item" href="#">Laporan Pelaksanaan Anggaran Belanja Pegawai</a>
              <a class="dropdown-item" href="#">Laporan Pelaksanaan Anggaran Belanja Barang</a>
              <a class="dropdown-item" href="#">Laporan Pelaksanaan Anggaran Belanja Modal</a>
              <a class="dropdown-item" href="#">Laporan Pelaksanaan Barang dan Jasa</a>
              <a class="dropdown-item" href="#">Laporan Pelaksanaan Perkembangan Kegiatan Prioritas</a>
              <a class="dropdown-item" href="#">Laporan Pelaksanaan Perkembangan Pembangunan dan Fasilitas</a>
              <a class="dropdown-item" href="#">Laporan Pelaksanaan Anggaran Perjenis Belanja</a>
              <a class="dropdown-item" href="#">Laporan Penerimaan Hibah dalam Negeri</a>
              <a class="dropdown-item" href="#">Laporan Pendapatan Negara</a>
              <a class="dropdown-item" href="#">Laporan Anggaran Pemeliharaan</a>
              <a class="dropdown-item" href="#">Laporan Anggaran Alutsista</a>
              <a class="dropdown-item" href="#">Laporan Anggaran MEF</a>
              <a class="dropdown-item" href="#">Laporan Anggaran Perbatasan</a>
              <a class="dropdown-item" href="#">Laporan Anggaran Pinjaman</a>
              <a class="dropdown-item" href="#">Laporan Anggaran Prioritas</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">RAK</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="#">Jenis Barang</a>
            </div>
          </li>
        </ul>
        <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Master Data</a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="#">Setting Global</a>
              <a class="dropdown-item" href="#">Tahun Anggaran</a>
              <a class="dropdown-item" href="#">Anggaran</a>
              <a class="dropdown-item" href="#">Wilayah</a>
              <a class="dropdown-item" href="#">Dipa</a>
              <a class="dropdown-item" href="#">Kode Bagian</a>
              <a class="dropdown-item" href="#">Kode Intern</a>
              <a class="dropdown-item" href="#">Kode Akun</a>
              <a class="dropdown-item" href="#">Kode Pos</a>
              <a class="dropdown-item" href="#">Realisasi</a>
            </div>
          </li>
        </ul>
        <a class="btn btn-bd-download d-none d-lg-inline-block mb-3 mb-md-0 ml-md-3" href="{{ url('/cms/kemhan/logout') }}">Logout</a>
      </div>
    </nav>