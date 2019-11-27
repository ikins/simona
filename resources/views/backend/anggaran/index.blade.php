@extends('layout.backend')

@section('extra-css')

@endsection

@section('content')
  <main role="main" class="container-fluid">

      <div class="my-3 p-3 bg-white rounded shadow-sm">
        <h6 class="border-bottom border-gray pb-2 mb-0">Anggaran</h1>
        <form class="form">
                          <div class="box-body">
                            <div class="row">
                              <div class="col-md-2">
                                <div class="form-group">
                                  <label for="inputEmail3">Unit Organisasi</label>
                                  <select class="form-control">
                                      <option>--Pilih Unit Organisasi--</option>
                                  </select>
                                </div>
                              </div>
                              <div class="col-md-2">
                                <div class="form-group">
                                  <label for="inputEmail3">Kotama</label>
                                  <select class="form-control">
                                      <option>--Pilih Kotama--</option>
                                  </select>
                                </div>
                              </div>
                              <div class="col-md-2">
                                <div class="form-group">
                                  <label for="inputEmail3">Satuan Kerja</label>
                                  <select class="form-control">
                                      <option>--Pilih Satuan Kerja--</option>
                                  </select>                        
                                </div>
                              </div>
                              <div class="col-md-2">
                                <div class="form-group">
                                  <label for="inputEmail3">Program</label>
                                  <input type="text" class="form-control" id="inputEmail3" placeholder="Program">
                                </div>
                              </div>
                              <div class="col-md-2">
                                <div class="form-group">
                                  <label for="inputEmail3">Versi DIPA</label>
                                  <input type="text" class="form-control" id="inputEmail3" placeholder="Versi DIPA">
                                </div>
                              </div>
                              <div class="col-md-1 padding-top-25">
                                <button type="submit" class="btn btn-info btn-block"> Cari </button>
                              </div>
                              <div class="col-md-1 padding-top-25">
                                <button type="submit" class="btn btn-info btn-block"> Reset </button>
                              </div>
                            </div>
                            
                            
                            
                          </div>
                        </form>
      	</div>

		<table class="table">
                <thead class="thead-dark">
                      <tr>
                        <th class="text-center">PROGRAM/KEGIATAN/OUTPUT/SUBOUPUT<br>KOMPONEN/SUBKOMPONEN/AKUN/DETIL</th>
                        <th class="text-center">VOLUME</th>
                        <th class="text-center">SATUAN</th>
                        <th class="text-center">HARGA SATUAN</th>
                        <th class="text-center">JUMLAH</th>
                        <th class="text-center">PILIHAN</th>
                      </tr>
                      <tr>
                        <th>(1)</th>
                        <th>(2)</th>
                        <th>(3)</th>
                        <th>(4)</th>
                        <th>(5)</th>
                        <th>(6)</th>
                      </tr>
                      </thead>
                      <tbody>
                      <tr>
                        <td>012.22.14 - Program Dukungan Kesiapan Matra Darat</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>70.041.220.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a> 
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;1444 - Penyelenggaraan Intelejen dan Pengamanan Matra Darat</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>1.933.789.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1444.001 - "Intelejen dan Pengamanan Matra Darat [Baseline]"</td>
                        <td>12.00</td>
                        <td>Laporan</td>
                        <td></td>
                        <td>1.059.206.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1444.001.001 - Intelejen dan Pengamanan</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>1.059.206.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;003 - Dukungan Operasional Pertahanan dan Keamanan</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>66.344.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B - Kegiatan Pengamanan</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>16.000.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5212111 - Belanja Barang Operasional Lainnya</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>588.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <a href="{{ URL('cms/rincian-anggaran-detail') }}">Kegiatan Pengamanan</a></td>
                        <td>19.00</td>
                        <td>GIAT</td>
                        <td>15.000</td>
                        <td class="progress-bar-custom progress-bar-green" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 20%">16.000.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5212112 - Belanja Barang Operasional Lainnya</td>
                        <td>28.00</td>
                        <td></td>
                        <td></td>
                        <td>1.316.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr id="anggaran-terlambat">
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <a href="{{ URL('cms/rincian-anggaran-detail') }}">P4GN</a></td>
                        <td>19.00</td>
                        <td>GIAT</td>
                        <td>15.000</td>
                        <td class="progress-bar-custom progress-bar-green" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 20%">16.000.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;1451 - Pemeliharaan/Perawatan Non Alutsista</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>1.933.789.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1451.001 - Materil Non Alutsista yang Terpelihara [Baseline]</td>
                        <td>12.00</td>
                        <td>Laporan</td>
                        <td></td>
                        <td>1.059.206.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1451.001.004 - Pemeliharaan Alzi </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>1.059.206.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;003 - Dukungan Operasional Pertahanan dan Keamanan</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>66.344.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A - Pemeliharaan Alzi</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>16.000.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5212111 - Belanja Barang Operasional Lainnya</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>588.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <a href="{{ URL('cms/rincian-anggaran-detail') }}">Kegiatan Pengamanan</a></td>
                        <td>19.00</td>
                        <td>GIAT</td>
                        <td>15.000</td>
                        <td class="progress-bar-custom progress-bar-green" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 20%">16.000.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5212112 - Belanja Barang Operasional Lainnya</td>
                        <td>28.00</td>
                        <td></td>
                        <td></td>
                        <td>1.316.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      <tr id="anggaran-terlambat">
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- <a href="{{ URL('cms/rincian-anggaran-detail') }}">P4GN</a></td>
                        <td>19.00</td>
                        <td>GIAT</td>
                        <td>15.000</td>
                        <td class="progress-bar-custom progress-bar-green" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 20%">16.000.000</td>
                        <td>
                          <a href="{{ URL('cms/edit-realisasi-anggaran') }}">Edit</a> | <a href="#">Delete</a> | <a href="{{ URL('cms/rincian-anggaran-detail') }}">Riwayat</a>
                        </td>
                      </tr>
                      
        
                    </tbody>
                  </table>

    </main>
@endsection

@section('extra-js')
<script>
 
</script>
@endsection