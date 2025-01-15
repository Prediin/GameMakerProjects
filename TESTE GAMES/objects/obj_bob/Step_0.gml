//ove = movomento
// -1,+1
var move = -keyboard_check(vk_left)+keyboard_check(vk_right)

//velocidade horizontal = movimento * velocidade
//parado = 0
hsp=move*spd
//colizão
//se voce for_encostar/colidir
if place_meeting(x+hsp,y,obj_chao)
{
	//enquanto vc !NÃO estiver_tocando
	while !place_meeting(x+sign(hsp),y,obj_chao)
	{
		//sign = sinal
		// -3=-1,+3=+1 (ele so checa e trasforma o numero em positivo,negativo ou neutro)
		x+=sign(hsp)
		//x = -1, 0, +1
	}
	//zerando variavel
	hsp = 0
}
//x volta a se -3, 0, +3
x+=hsp

if place_meeting(x,y+vsp,obj_chao)
{
	
	while !place_meeting(x,y+sign(vsp),obj_chao)

	{
		y+=sign(vsp)
	
	}
	
	vsp = 0
}

y+=vsp

//pulo

if place_meeting(x,y+1,obj_chao)
{
	
	pulos=4

}
else
{
	vsp+=grav 
}
if keyboard_check_pressed(vk_space) && pulos>0
{
	vsp=jspd 
	pulos-=1
}


