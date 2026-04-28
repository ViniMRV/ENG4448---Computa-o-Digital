cd C:/Users/aula2/Desktop/CompDig-20260311T121741Z-3-001/CompDig/Lab1/comparador_vivi_vini/ViviViniCompPlaca
if { [ catch { xload xmp ViviViniCompPlaca.xmp } result ] } {
  exit 10
}
xset intstyle default
save proj
exit 0
