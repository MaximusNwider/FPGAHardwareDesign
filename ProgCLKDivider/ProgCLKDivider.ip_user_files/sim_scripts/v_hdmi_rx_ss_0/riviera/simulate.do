onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+v_hdmi_rx_ss_0 -L xilinx_vip -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.v_hdmi_rx_ss_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {v_hdmi_rx_ss_0.udo}

run -all

endsim

quit -force
