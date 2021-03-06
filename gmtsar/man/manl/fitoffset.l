.TH FITOFFSET l "04/10/98 \(co 1998 David Sandwell" "fitoffset.l 1.0" "SIOSAR Command"
.SH NAME
fitoffset \-  calculates 6 parameters needed to align slave image to master image
.SH SYNOPSIS
.B fitoffset
.I offset.dat [SNR]
.SH DESCRIPTION
The
.B fitoffset
command reads numerous estimates of pixel offset between master and slave images
and performs a least-squares adjustment to establish 6 parameters needed
for reprocessing the slave image using 
.B esarp 
so it will be in sub-pixel
alignment with the master image.  The optional SNR parameter will edit
offset estimates with SNR less than this value prior to the adjustment.
If no SNR value is provided then the program will run in an interactive mode.  Here 
is an example run:
.sp
.br
fitoffset offset.dat 50
.br
  stretch_r              =    -9.25792E-06
.br
  stretch_a              =     4.23417E-06
.br
  yshift                   =   653
.br
  sub_int_a              =    0.333923
.br
  xshift                   =   -3
.br
  sub_int_r              =    0.806506
.br
These parameters should be appended to the slave.PRM file.
.sp

.TP 10
.I offset.dat
file of offsets generated by running the program offset
.TP 10
.I SNR
optional signal-to-noise ratio for editing individual offsets prior to 
least-squares estimation of alignment parameters.
.SH FILES
.ta \w'/opt/gips/tables/cprofile    'u
/opt/gips/tables/cprofile	image header definition file
.SH SEE ALSO
.B offset(l) esarp(l)
.sp
.SH AUTHOR
Howard Zebker. Modified by David T. Sandwell.
.SH DIAGNOSTICS
no bugs yet!!
