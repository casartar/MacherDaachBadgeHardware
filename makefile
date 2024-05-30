PCB = Macher_Daach_Badge.kicad_pcb
KIPLOT_CFG = Macher_Daach_Badge.kiplot.yaml


pcb_files:
	kiplot -b $(PCB) -c $(KIPLOT_CFG) -v
