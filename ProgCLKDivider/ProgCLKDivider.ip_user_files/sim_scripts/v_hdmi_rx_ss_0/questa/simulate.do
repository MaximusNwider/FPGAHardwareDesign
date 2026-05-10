onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib v_hdmi_rx_ss_0_opt

do {wave.do}

view wave
view structure
view signals

do {v_hdmi_rx_ss_0.udo}

run -all

quit -force
