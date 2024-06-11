<?php ;
    require_once('db-connect.php'); 
    $countries_qry = $conn->query("SELECT * FROM `countries` order by `name` asc");
    $countries = $countries_qry->fetch_all(MYSQLI_ASSOC);
    $countries_json = json_encode($countries);
    ?>
     
    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mx-auto">
        <div class="card rounded-0 shadow mb-3">
            <div class="card-header rounded-0">
                <div class="card-title"><b>Using JavaScript</b></div>
            </div>
            <div class="card-body rounded-0">
                <div class="container-fluid">
                    <div class="mb-3">
                        <label class="fw-light text-body">Populating Select Options: Example #2</label>
                        <select class="form-select rounded-0" name="select2" id="select2"></select>
                    </div>
                </div>
            </div>
        </div>
    </div>
     
    <script>
    var countries = '<?= $countries_json ?>';
    var pjs_countries = JSON.parse(countries);
     
    const select2 = document.getElementById('select2')
    /**
     * Populating Select Field : Example #2 (PURE JS)
     */
    Object.keys(pjs_countries).map(function(k){
        var option = document.createElement('option')
        option.setAttribute('value', pjs_countries[k].id)
        option.innerText = pjs_countries[k].name
        select2.appendChild(option)
    })
    // set default Selected
    select2.value = Math.floor(Math.random() * (pjs_countries.length - 1 ) + 1)
    </script>
    <?php $conn->close(); ?>