<style>
  #map {
    position: relative;
    height: 70%;
    width: 100%;
    margin-top: 5px;
    margin-bottom: 5px;
    margin-right: 0px;
    margin-left: 0px;
  }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<?php //echo"<pre>"; print_r($persebaran_anak); die(); ?>

<script type="text/javascript">
    $(function() {   
    var data_persebaran_alumni = <?php Print($persebaran_alumni); ?>;
    var data = [
        {
            // Aceh
            "hc-key": "id-ac",
            "value": data_persebaran_alumni[0]
        },
        {
            // Sumatera Utara
            "hc-key": "id-su",
            "value": data_persebaran_alumni[1]
        },
        {
            // Sumatera Barat
            "hc-key": "id-sb",
            "value": data_persebaran_alumni[2]
        },
        {
            // Riau
            "hc-key": "id-ri",
            "value": data_persebaran_alumni[3]
        },
        {
            // Kepulauan Riau
            "hc-key": "id-kr",
            "value": data_persebaran_alumni[4]
        },
        {
            // Jambi
            "hc-key": "id-ja",
            "value": data_persebaran_alumni[5]
        },
        {
            // Bengkulu
            "hc-key": "id-be",
            "value": data_persebaran_alumni[6]
        },
        {
            // Sumatera Selatan
            "hc-key": "id-sl",
            "value": data_persebaran_alumni[7]
        },
        {
            // Bangka Belitung
            "hc-key": "id-bb",
            "value": data_persebaran_alumni[8]
        },
        {
            // Lampung
            "hc-key": "id-1024",
            "value": data_persebaran_alumni[9]
        },
        {
            // Banten
            "hc-key": "id-bt",
            "value": data_persebaran_alumni[10]
        },
        {
            // Jakarta
            "hc-key": "id-jk",
            "value": data_persebaran_alumni[11]
        },
        {
            // Jawa Barat
            "hc-key": "id-jr",
            "value": data_persebaran_alumni[12]
        },
        {
            // Jawa Tengah
            "hc-key": "id-jt",
            "value": data_persebaran_alumni[13]
        },
        {
            // Jawa Timur
            "hc-key": "id-ji",
            "value": data_persebaran_alumni[14]
        },
        {
            // Yogyakarta
            "hc-key": "id-yo",
            "value": data_persebaran_alumni[15]
        },
        {
            // Bali
            "hc-key": "id-ba",
            "value": data_persebaran_alumni[16]
        },
        {
            // Nusa Tenggara Barat
            "hc-key": "id-nb",
            "value": data_persebaran_alumni[17]
        },
        {
            // Nusa Tenggara Timur
            "hc-key": "id-nt",
            "value": data_persebaran_alumni[18]
        },
        {
            // Kalimantan Barat
            "hc-key": "id-kb",
            "value": data_persebaran_alumni[19]
        },
        {
            // Kalimantan Timur
            "hc-key": "id-ki",
            "value": data_persebaran_alumni[20]
        },
        {
            // Kalimantan Tengah
            "hc-key": "id-kt",
            "value": data_persebaran_alumni[21]
        },
        {
            // Kalimantan Selatan
            "hc-key": "id-ks",
            "value": data_persebaran_alumni[22]
        },
        {
            // Sulawesi Utara
            "hc-key": "id-sw",
            "value": data_persebaran_alumni[23]
        },
        {
            // Sulawesi Tengah
            "hc-key": "id-st",
            "value": data_persebaran_alumni[24]
        },
        {
            // Gorontalo
            "hc-key": "id-go",
            "value": data_persebaran_alumni[25]
        },
        {
            // Sulawesi Barat
            "hc-key": "id-sr",
            "value": data_persebaran_alumni[26]
        },
        
        {
            // Sulawesi Selatan
            "hc-key": "id-se",
            "value": data_persebaran_alumni[27]
        },
         {
            "hc-key": "id-sg",
            "value": data_persebaran_alumni[28]
        },
        {
            // Maluku Utara
            "hc-key": "id-la",
            "value": data_persebaran_alumni[29]
        },
        {
            // Maluku
            "hc-key": "id-ma",
            "value": data_persebaran_alumni[30]
        },
        {
            // Papua Barat
            "hc-key": "id-ib",
            "value": data_persebaran_alumni[31]
        }, 
        {
            // Papua Barat
            "hc-key": "id-pa",
            "value": data_persebaran_alumni[32]
        }
    ];

    // Initiate the chart
    $('#map').highcharts('Map', {

        legend: {
            title: {
                text: 'Jumlah alumni'
            },
            align: 'left',
            verticalAlign: 'bottom',
            floating: true,
            layout: 'vertical',
            valueDecimals: 0,
            backgroundColor: 'rgba(255,255,255,0.9)',
            padding: 12,
            itemMarginTop: 0,
            itemMarginBottom: 0,
            symbolRadius: 0,
            symbolHeight: 14,
            symbolWidth: 24
        },
        colorAxis: {
            dataClasses: [{
                to: 5,
                color: 'rgba(19,64,117,0.05)'
            }, {
                from: 5,
                to: 10,
                color: 'rgba(19,64,117,0.2)'
            }, {
                from: 10,
                to: 15,
                color: 'rgba(19,64,117,0.4)'
            }, {
                from: 15,
                to: 20,
                color: 'rgba(19,64,117,0.5)'
            }, {
                from: 20,
                to: 50,
                color: 'rgba(19,64,117,0.6)'
            }, {
                from: 50,
                to: 100,
                color: 'rgba(19,64,117,0.8)'
            }, {
                from: 100,
                color: 'rgba(19,64,117,1)'
            }]
        },

        title : {
            text : 'Jumlah Alumni SMA 2 Balige di Indonesia'
        },

        mapNavigation: {
            enabled: true,
            buttonOptions: {
                verticalAlign: 'top'
            }
        },
        series : [{
            data : data,
            mapData: Highcharts.maps['countries/id/id-all'],
            joinBy: 'hc-key',
            name: 'Jumlah Alumni',
            states: {
                hover: {
                    color: '#BADA55'
                }
            },
            dataLabels: {
                enabled: true,
                format: '{point.name}'
            },
            tooltip: {
                    valueSuffix: ' Alumni'
                }
        }]
    });
});
</script>

@extends('front/templates/index')

@section('content')
<div class="col-md-9">
    <section class="wrapper portfolio-page">
            <!-- GRID -->
                <center>
                    <div id="map"></div>
                </center>
    </section>
</div>
@stop