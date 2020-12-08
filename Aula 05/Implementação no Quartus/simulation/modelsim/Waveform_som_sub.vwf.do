vlog -work work Waveform_som_sub.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.somador_subtrator_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
