vlog -work work Waveform_Mod_Teste4.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Mod_Teste4_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
