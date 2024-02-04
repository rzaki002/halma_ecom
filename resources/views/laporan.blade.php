<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Halma Grafika</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="{{ asset('hope-ui/assets/images/halma8logo.png') }}" />

    <!-- Library / Plugin Css Build -->
    <link rel="stylesheet" href="{{ asset('hope-ui/assets/css/core/libs.min.css') }}" />

    <!-- Aos Animation Css -->
    <link rel="stylesheet" href="{{ asset('hope-ui/assets/vendor/aos/dist/aos.css') }}" />

    <!-- Hope Ui Design System Css -->
    <link rel="stylesheet" href="{{ asset('hope-ui/assets/css/hope-ui.min.css?v=2.0.0') }}" />

    <!-- Custom Css -->
    <link rel="stylesheet" href="{{ asset('hope-ui/assets/css/custom.min.css?v=2.0.0') }}" />

    <!-- Dark Css -->
    <link rel="stylesheet" href="{{ asset('hope-ui/assets/css/dark.min.css') }}" />

    <!-- Customizer Css -->
    <link rel="stylesheet" href="{{ asset('hope-ui/assets/css/customizer.min.css') }}" />

    <!-- RTL Css -->
    <link rel="stylesheet" href="{{ asset('hope-ui/assets/css/rtl.min.css') }}" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
    <style>
        /* Gaya tombol */
        .btn {
            /* display: block;
            padding: 10px;
            background-color: #007bff; */
            color: #fff;
            border: none;
            cursor: pointer;
        }

        /* Menyembunyikan tombol saat mode cetak */
        @media print {
            .btn{
                display: none;
            }
            #filterDateLabel {
            display: none;
        }
        #filterDate{
            display: none;
        }
        }
    </style>

</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-lg-12 margin-tb">
                <div class="pull-left pt-5">
                    
                </div>
                <div class="pull-right mb-2 ">
                    <button  class="btn btn-danger" id="printButton">Export PDF</button> 
                    {{-- <button class="btn btn-danger" onclick="exportToPDF()">Export PDF</button> --}}
                    <button class="btn btn-success" onclick="exportToCSV()">Export Excel</button>
    
                </div>
                <div class="form-group">
                    <label for="filterDate"></label>
            <input type="month" class="form-control" id="filterDate">
                </div>
            </div>
        </div>

        <div class="card">
            <div class="logo-normal p-2 mb-3 mt-3 ">
                <img src="{{ asset('halma-fe/assets/images/logo/halma8logo.png') }}" width="50px" alt="">
                <img src="{{ asset('halma-fe/assets/images/logo/halmagrafika.png') }}" width="50px" alt="">
            </div>
            <div class="table-responsive">
    <table id="myTable" class="table table-striped">
        <tr>
            <th>Nama</th>
            <th>Tanggal</th>
            <th>QTY</th>
            <th>Harga</th>
            <th>Total</th>
          </tr>
        <?php $total = 0 ; ?>
        @foreach ($data as  $d)
        <tr>
            <td>{{$d->produk?->nama}}</td>
            <td>{{$d->created_at}}</td>
            <td>{{$d->qty}}</td>
            <td>{{$d->harga}}</td>
            <td>{{$d->harga * $d->qty}}</td>
        </tr>
            <?php $total = $total + ($d->harga * $d->qty) ?>
        @endforeach
        <tr>
            <td></td>
            <td></td>
            <td>Total</td>
            <td>{{$total}}</td>
        </tr>
    
        
    </table>
            </div>
        </div>
    </div>
    <script>
          const printButton = document.getElementById('printButton');
        
          printButton.addEventListener('click', () => {
              window.print();
          });
        //  function exportToPDF() {
        //      var doc = new jsPDF();

        //      var table = document.getElementById("myTable");
        //     var rows = table.getElementsByTagName("tr");
            
        //      var data = [];
        //      for (var i = 0; i < rows.length; i++) {
        //         var cells = rows[i].getElementsByTagName("td");
        //         var rowData = [];
        //          for (var j = 0; j < cells.length; j++) {
        //              rowData.push(cells[j].innerText);
        //          }
        //          data.push(rowData);
        //      }

        //      doc.autoTable({
        //          head: [["Nama", "QTY", "Harga", "Total"]],
        //          body: data,
        //      });

        //      doc.save("Laporan Penjualan Halma Grafika.pdf");
        //  }
    </script>
    <script>
        function downloadCSV(csv, filename) {
            var csvFile;
            var downloadLink;
    
            csvFile = new Blob([csv], { type: "text/csv" });
            downloadLink = document.createElement("a");
            downloadLink.download = filename;
            downloadLink.href = window.URL.createObjectURL(csvFile);
            downloadLink.style.display = "none";
            document.body.appendChild(downloadLink);
            downloadLink.click();
        }
    
        function exportToCSV() {
            var table = document.getElementById("myTable");
            var rows = table.getElementsByTagName("tr");
            var csv = "";
    
            for (var i = 0; i < rows.length; i++) {
                var cells = rows[i].getElementsByTagName("td");
                var rowCSV = [];
                for (var j = 0; j < cells.length; j++) {
                    rowCSV.push(cells[j].innerText);
                }
                csv += rowCSV.join(",") + "\n";
            }
    
            var filename = "Halma Grafika.csv";
            downloadCSV(csv, filename);
        }
        function filterTableByDate() {
            const filterDate = document.getElementById('filterDate').value;
            const rows = document.querySelectorAll('#myTable tr');

            rows.forEach(row => {
                const dateCell = row.querySelector('td:nth-child(2)'); // Ubah selector ini sesuai dengan kolom yang berisi tanggal
                if (dateCell) {
                    const rowDate = dateCell.textContent.trim(); // Ubah ini sesuai dengan format tanggal pada laporan Anda
                    const shouldShow = rowDate.startsWith(filterDate);

                    row.style.display = shouldShow ? '' : 'none';
                }
            });
        }

        // Tambahkan event listener ke input tanggal
        const filterDateInput = document.getElementById('filterDate');
        filterDateInput.addEventListener('change', filterTableByDate);
    </script>
    
</body>
</html>
