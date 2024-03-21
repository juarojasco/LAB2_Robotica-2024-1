Function main
Motor On
Power Low
Accel 50, 50
Speed 50

Do
	Go Origen
	Wait 0.3
	Go EjeX
	Wait 0.3
	Go EjeY
	Wait 0.5
	
	Move Origen
	Wait 0.3
	Move EjeX
	Wait 0.3
	Move EjeY
	Wait 0.5
	
	paletizado_z
	paletizado_s
	paletizado_e
Loop
'Do
'	Go Origen :Z(700)
'	Go Origen
'	Go Origen :Z(700)
'	Wait 0.6
'	Go EjeX :Z(700)
'	Go EjeX
'	Go EjeX :Z(700)
'	Wait 0.5
'	Go EjeY :Z(700)
'	Go EjeY
'	Go EjeY :Z(700)
'	Wait 0.5
	
'Loop
Fend
Function paletizado_z
	#define estado_paletizado_z 11
	
	Pallet 1, Origen, EjeX, EjeY, 3, 3
	
	On estado_paletizado_z
	For i = 1 To 9
		Go Pallet(1, i) :Z(700)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(700)
	Next
	Off estado_paletizado_z
	
Fend
Function paletizado_s
	#define estado_paletizado_s 12
	
	Pallet 1, Origen, EjeX, EjeY, 3, 3
	
	On estado_paletizado_s
	For i = 1 To 3
		Go Pallet(1, i) :Z(700)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(700)
	Next
	For i = 1 To 4 Step -1
		Go Pallet(1, i) :Z(700)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(700)
	Next
	For i = 1 To 9
		Go Pallet(1, i) :Z(700)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(700)
	Next
	
	Off estado_paletizado_s
Fend
Function paletizado_e
	
	#define estado_paletizado_e 12
	
	Pallet Outside, 2, Origen, EjeX, EjeY, 3, 3
	
	On estado_paletizado_e
	For i = 1 To 4
		For j = 1 To 4
			Go Pallet(2, i, j) :Z(700)
			Go Pallet(2, i, j)
			Go Pallet(2, i, j) :Z(700)
		Next
	Next
	Off estado_paletizado_e
	
Fend
