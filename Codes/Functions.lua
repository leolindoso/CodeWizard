function LoadImagens()
-----CARREGA IMAGENS GENERICAS -----
	tuto1 = love.graphics.newImage("Imagens/TUTO_1.png")
	tuto2 = love.graphics.newImage("Imagens/TUTO_2.png")
	BG = love.graphics.newImage("Imagens/BG.png")
	som_on = love.graphics.newImage("Imagens/speaker.png")
	som_off = love.graphics.newImage("Imagens/speaker_off.png")

-----CARREGA ANIMAÇÕES-----
	local anim = require "anim8"
	explosao = love.graphics.newImage("Imagens/Explosion.png")
	local g_exp = anim.newGrid(128, 128, explosao:getWidth(), explosao:getHeight() )
	animation_explosion = anim.newAnimation(g_exp('1-1',1, '1-2',2, '1-3',3,'1-4',4), 0.1)
	
	mago_fogo = love.graphics.newImage( "Imagens/Mago_Idle_Nada.png")
	local g_nada = anim.newGrid( 640, 640, mago_fogo:getWidth(), mago_fogo:getHeight() )
	animation_Mago_Fogo = anim.newAnimation( g_nada( '1-1', 1, '1-1', 2, '1-1', 3, '1-1', 4,'1-1', 5, '1-1', 6, '1-1', 7, '1-1', 8), 0.07)

	mago_agua = love.graphics.newImage( "Imagens/Mago_Idle_Agua.png")
	local g_nada = anim.newGrid( 640, 640, mago_fogo:getWidth(), mago_fogo:getHeight() )
	animation_Mago_Agua = anim.newAnimation( g_nada( '1-1', 1, '1-1', 2, '1-1', 3, '1-1', 4,'1-1', 5, '1-1', 6, '1-1', 7, '1-1', 8), 0.07)

	mago_terra = love.graphics.newImage( "Imagens/Mago_Idle_Terra.png")
	local g_nada = anim.newGrid( 640, 640, mago_fogo:getWidth(), mago_fogo:getHeight() )
	animation_Mago_Terra = anim.newAnimation( g_nada( '1-1', 1, '1-1', 2, '1-1', 3, '1-1', 4,'1-1', 5, '1-1', 6, '1-1', 7, '1-1', 8), 0.07)

	mago_raio = love.graphics.newImage( "Imagens/Mago_Idle_Raio.png")
	local g_nada = anim.newGrid( 640, 640, mago_fogo:getWidth(), mago_fogo:getHeight() )
	animation_Mago_Raio = anim.newAnimation( g_nada( '1-1', 1, '1-1', 2, '1-1', 3, '1-1', 4,'1-1', 5, '1-1', 6, '1-1', 7, '1-1', 8), 0.07)

	ogro_agua = love.graphics.newImage( "Imagens/Ogro_Idle_Agua.png")
	local g_nada = anim.newGrid( 640, 640, mago_fogo:getWidth(), mago_fogo:getHeight() )
	animation_ogro_Agua = anim.newAnimation( g_nada( '1-1', 1, '1-1', 2, '1-1', 3, '1-1', 4,'1-1', 5, '1-1', 6, '1-1', 7, '1-1', 8), 0.07)

	ogro_terra = love.graphics.newImage( "Imagens/Ogro_Idle_Terra.png")
	local g_nada = anim.newGrid( 640, 640, mago_fogo:getWidth(), mago_fogo:getHeight() )
	animation_ogro_Terra = anim.newAnimation( g_nada( '1-1', 1, '1-1', 2, '1-1', 3, '1-1', 4,'1-1', 5, '1-1', 6, '1-1', 7, '1-1', 8), 0.07)

	ogro_fogo = love.graphics.newImage( "Imagens/Ogro_Idle_Fogo.png")
	local g_nada = anim.newGrid( 640, 640, mago_fogo:getWidth(), mago_fogo:getHeight() )
	animation_ogro_Fogo = anim.newAnimation( g_nada( '1-1', 1, '1-1', 2, '1-1', 3, '1-1', 4,'1-1', 5, '1-1', 6, '1-1', 7, '1-1', 8), 0.07)

	ogro_raio = love.graphics.newImage( "Imagens/Ogro_Idle_Raio.png")
	local g_nada = anim.newGrid( 640, 640, mago_fogo:getWidth(), mago_fogo:getHeight() )
	animation_ogro_Raio = anim.newAnimation( g_nada( '1-1', 1, '1-1', 2, '1-1', 3, '1-1', 4,'1-1', 5, '1-1', 6, '1-1', 7, '1-1', 8), 0.07)
end
-----CARREGA FONTES-----
function LoadFonts()
	main_font = love.graphics.newFont("Fonts/Code2.ttf", 14)
	menu_font = love.graphics.newFont("Fonts/Code2.ttf", 50)
	tempo_font = love.graphics.newFont("Fonts/Alarme.ttf", 58)
end

function LoadFiles()
	fase1, size = love.filesystem.read("Fases/Fase1.lua")
	fase2, size = love.filesystem.read("Fases/Fase2.lua")
	fase3, size = love.filesystem.read("Fases/Fase3.lua")
	fase4, size = love.filesystem.read("Fases/Fase4.lua")
	tutorial = love.filesystem.read("Fases/TUTORIAL.txt")
end
-----TEXTOS E RESPOSTAS-----
function LoadTexts()
	text1 = "DIGITE: "
    text = ""
    text2 = ""
    text3 = ""
    text4 = ""

 	resp_Fase1 = "inimigo_morto = true"
 	resp_Fase1_1 = "inimigo_morto=true"
 	resp_Fase2 = "if mago_fogo and ogro_agua then"
 	resp_Fase3 = "else"
 	resp_Fase3_1 = "elseif not mago_agua then"
 	resp_Fase4 = "if not(not mago_terra) and (ogro_raio or (not ogro_terra)) then"
 	resp_Fase4_1 = "if mago_terra and (ogro_raio or (not ogro_terra)) then"
end
-----CARREGA SONS-----
function LoadSounds()
	music = love.audio.newSource("Music/Skyrim Theme.mp3")
	sword = love.audio.newSource("Music/Sword.mp3")
	magic = love.audio.newSource("Music/Magic.mp3")
	music:setLooping(true)
	music:play()
end
-----DIGITA-----
function love.textinput(t)

	local utf8 = require("utf8")
    if STATUS == 1 then
   		text = text .. t
	end

    if STATUS == 2 then
    	text2 = text2 .. t
    end

    if STATUS == 3 then
    	text3 = text3 .. t
    end

    if STATUS == 4 then
    	text4 = text4 .. t
    end
end
-----HABILITA O ATO DE APAGAR-----
function love.keypressed(key)
	local utf8 = require("utf8")
    if key == "backspace" and STATUS == 1 then
        -- get the byte offset to the last UTF-8 character in the string.
        local byteoffset = utf8.offset(text, -1)
        
 
        if byteoffset then
            -- remove the last UTF-8 character.
            -- string.sub operates on bytes rather than UTF-8 characters, so we couldn't do string.sub(text, 1, -2).
            text = string.sub(text, 1, byteoffset - 1)
        end
    end
        
        
    if key == "backspace" and STATUS == 2 then
    	local byteoffset2 = utf8.offset(text2, -1)

    	if byteoffset2 then
        	text2 = string.sub(text2, 1, byteoffset2 - 1)
        end
    end

    if key == "backspace" and STATUS == 3 then
    	local byteoffset3 = utf8.offset(text3, -1)

    	if byteoffset3 then
        	text3 = string.sub(text3, 1, byteoffset3 - 1)
        end
    end

     if key == "backspace" and STATUS == 4 then
    	local byteoffset4 = utf8.offset(text4, -1)

    	if byteoffset4 then
        	text4 = string.sub(text4, 1, byteoffset4 - 1)
        end
    end
end
-----RODA AS ANIMAÇOES-----
function AnimationUpdate(dt)
	animation_Mago_Fogo:update(dt)
	animation_ogro_Terra:update(dt)
	animation_ogro_Agua:update(dt)
	animation_ogro_Fogo:update(dt)
	animation_ogro_Raio:update(dt)
	animation_explosion:update(dt)
	animation_Mago_Raio:update(dt)
	animation_Mago_Agua:update(dt)
	animation_Mago_Terra:update(dt)
end
-----DA UM CERTO ATRASO PRA ROLAR AS ANIMAÇÕES E OS SONS DE VITORIA-----
function Acerto(dt)
	if acertou then 
		acertou_delay = acertou_delay - 1*dt
		magic:play()
		if acertou_delay <= 0 then
			acertou = false
			acertou_delay = 1
			STATUS = STATUS + 1
		end
	end
end
-----DA UM CERTO ATRASO PRA ROLAR AS ANIMAÇÕES E OS SONS DE DERROTA-----
function Derrota(dt)
	if perdeu then 
		sword:play()
		perdeu_delay = perdeu_delay - 1*dt
		if perdeu_delay <= 0 then
			perdeu = false
			perdeu_delay = 1
			STATUS = 0
		end
	end
end
-----VERIFICA SE A RESPOSTA DADA ESTÁ CERTA E DÁ OS COMANDOS PRA CASO ESTEJA CERTA OU ERRADA-----
function Respostas()
	if (text == resp_Fase1 or text == resp_Fase1_1) and love.keyboard.isDown("return") then
		--STATUS = 2
		animation_explosion:draw( explosao, 50, 200, 0, 2, 2, 48, 0 )
		acertou = true
		tempo = 31
		
	elseif (text ~= resp_Fase1 or text ~= resp_Fase1_1) and love.keyboard.isDown("return") and text ~= "" then
		text = ""
		love.timer.sleep(0.2)
		tempo = tempo - 5
	end

	if text2 == resp_Fase2 and love.keyboard.isDown("return") then
		--STATUS = 2
		animation_explosion:draw( explosao, 50, 200, 0, 2, 2, 48, 0 )
		acertou = true
		tempo = 26
		
	elseif text2 ~= resp_Fase2 and love.keyboard.isDown("return") and text2 ~= "" then
		text2 = ""
		love.timer.sleep(0.2)
		tempo = tempo - 5
	end

	if (text3 == resp_Fase3 or text3 == resp_Fase3_1) and love.keyboard.isDown("return") then
		--STATUS = 2
		animation_explosion:draw( explosao, 50, 200, 0, 2, 2, 48, 0 )
		acertou = true
		tempo = 41
		
	elseif (text3 ~= resp_Fase3 or text3 ~= resp_Fase3_1) and love.keyboard.isDown("return") and text3 ~= "" then
		text3 = ""
		love.timer.sleep(0.2)
		tempo = tempo - 5
	end

	if (text4 == resp_Fase4 or text4 == resp_Fase4_1) and love.keyboard.isDown("return") then
		--STATUS = 2
		animation_explosion:draw( explosao, 50, 200, 0, 2, 2, 48, 0 )
		acertou = true
		tempo = 31
		
	elseif (text4 ~= resp_Fase4 or text4 ~= resp_Fase4_1) and love.keyboard.isDown("return") and text4 ~= "" then
		text4 = ""
		love.timer.sleep(0.2)
		tempo = tempo - 5
	end
end
-----DESENHA AS FASES-----
function Fases()
	--TUTORIAL
	if STATUS == 100 then
		love.graphics.setFont(menu_font)
		animation_Mago_Fogo:draw( mago_fogo, 50, 200, 0, 1, 1, 48, 0)
		love.graphics.print("TUTORIAL", 400,25)
		love.graphics.print("VOLTAR", 600,600)
		love.graphics.setFont(main_font)
		love.graphics.print(tutorial,450,265)
		love.graphics.draw(tuto1,100,125)
		love.graphics.print("CODIGO ERRO",150,230)
		love.graphics.draw(tuto2,600,135)
		love.graphics.print("CODIGO RESPOSTA",650,230)
		if som_ligado then
			love.graphics.draw(som_on,1150,50,0,0.4,0.4)
		else
			love.graphics.draw(som_off,1150,50,0,0.4,0.4)
		end
		mouseClick()
	end
	--MENU
	if STATUS == 0 then
		text = ""
		tempo = 30
		love.graphics.setFont(menu_font)
		animation_Mago_Fogo:draw( mago_fogo, 50, 200, 0, 1, 1, 48, 0)
		love.graphics.print("PLAY", 600,300)
		love.graphics.print("TUTORIAL", 600,400)
		love.graphics.print("QUIT", 600,500)
		love.graphics.print("CODE WIZARD", 400,100)
		love.graphics.setFont(main_font)
		if som_ligado then
			love.graphics.draw(som_on,1150,50,0,0.4,0.4)
		else
			love.graphics.draw(som_off,1150,50,0,0.4,0.4)
		end
		mouseClick()		
	end
	-- PRIMEIRA FASE
	if STATUS == 1 then
		text2 = ""
		love.graphics.setFont(main_font)
		love.graphics.setColor(255,255,255)
		love.graphics.draw(BG,0,0)
		animation_Mago_Fogo:draw( mago_raio, 50, 200, 0, 1, 1, 48, 0 )
		animation_ogro_Terra:draw(ogro_terra,750,50, 0, 0.7,0.7, 48,0)
		love.graphics.print(fase1,330,240)
		love.graphics.setColor(0,100,100,200)
		love.graphics.rectangle("fill",150,550,1000,100)
		love.graphics.setColor(255,255,255)
		love.graphics.printf(text1, 280, 600, love.graphics.getWidth())
		love.graphics.printf(text, 400, 600, love.graphics.getWidth())
		love.graphics.setFont(menu_font)
		love.graphics.print("MENU", 50,50)
		love.graphics.setFont(tempo_font)
		love.graphics.print("00:" .. math.floor(tempo), 600,50)
		if som_ligado then
			love.graphics.draw(som_on,1150,50,0,0.4,0.4)
		else
			love.graphics.draw(som_off,1150,50,0,0.4,0.4)
		end
		mouseClick()
		if acertou then
			animation_explosion:draw( explosao, 850, 200, 0, 2, 2, 48, 0 )
		end
		if perdeu then
			animation_explosion:draw( explosao, 250, 400, 0, 2, 2, 48, 0 )
			love.graphics.setFont(menu_font)
			love.graphics.print('GAME OVER',150,300,0,2)
		end
	end
	--SEGUNDA FASE
	if STATUS == 2 then
		text = ""
		love.graphics.setFont(main_font)
		love.graphics.setColor(255,255,255)
		love.graphics.draw(BG,0,0)
		animation_Mago_Fogo:draw( mago_fogo, 50, 200, 0, 1, 1, 48, 0 )
		animation_ogro_Agua:draw(ogro_agua,750,50, 0, 0.7,0.7, 48,0)
		love.graphics.print(fase2,330,240)
		love.graphics.setColor(0,100,100,200)
		love.graphics.rectangle("fill",150,550,1000,100)
		love.graphics.setColor(255,255,255)
		love.graphics.printf(text1, 280, 600, love.graphics.getWidth())
		love.graphics.printf(text2, 400, 600, love.graphics.getWidth())
		love.graphics.setFont(tempo_font)
		love.graphics.print("00:" .. math.floor(tempo), 600,50)
		love.graphics.setFont(menu_font)
		love.graphics.print("MENU", 50,50)
		if som_ligado then
			love.graphics.draw(som_on,1150,50,0,0.4,0.4)
		else
			love.graphics.draw(som_off,1150,50,0,0.4,0.4)
		end
		mouseClick()
		if acertou then
			animation_explosion:draw( explosao, 850, 200, 0, 2, 2, 48, 0 )
		end
		if perdeu then
			animation_explosion:draw( explosao, 250, 400, 0, 2, 2, 48, 0 )
			love.graphics.setFont(menu_font)
			love.graphics.print('GAME OVER',150,300,0,2)
		end
	end
	-- TERCEIRA FASE
	if STATUS == 3 then
		text2 = ""
		love.graphics.setFont(main_font)
		love.graphics.setColor(255,255,255)
		love.graphics.draw(BG,0,0)
		animation_Mago_Fogo:draw( mago_agua, 50, 200, 0, 1, 1, 48, 0 )
		animation_ogro_Agua:draw(ogro_fogo,750,50, 0, 0.7,0.7, 48,0)
		love.graphics.print(fase3,430,240)
		love.graphics.setColor(0,100,100,200)
		love.graphics.rectangle("fill",150,550,1000,100)
		love.graphics.setColor(255,255,255)
		love.graphics.printf(text1, 280, 600, love.graphics.getWidth())
		love.graphics.printf(text3, 400, 600, love.graphics.getWidth())
		love.graphics.setFont(menu_font)
		love.graphics.print("MENU", 50,50)
		love.graphics.setFont(tempo_font)
		love.graphics.print("00:" .. math.floor(tempo), 600,50)
		if som_ligado then
			love.graphics.draw(som_on,1150,50,0,0.4,0.4)
		else
			love.graphics.draw(som_off,1150,50,0,0.4,0.4)
		end
		mouseClick()
		if acertou then
			animation_explosion:draw( explosao, 850, 200, 0, 2, 2, 48, 0 )
		end
		if perdeu then
			animation_explosion:draw( explosao, 250, 400, 0, 2, 2, 48, 0 )
			love.graphics.setFont(menu_font)
			love.graphics.print('GAME OVER',150,300,0,2)
		end
	end
	-- QUARTA FASE
	if STATUS == 4 then
		text3 = ""
		love.graphics.setFont(main_font)
		love.graphics.setColor(255,255,255)
		love.graphics.draw(BG,0,0)
		animation_Mago_Fogo:draw( mago_terra, 50, 200, 0, 1, 1, 48, 0 )
		animation_ogro_Agua:draw(ogro_raio,750,50, 0, 0.7,0.7, 48,0)
		love.graphics.print(fase4,130,240)
		love.graphics.setColor(0,100,100,200)
		love.graphics.rectangle("fill",150,550,1000,100)
		love.graphics.setColor(255,255,255)
		love.graphics.printf(text1, 280, 600, love.graphics.getWidth())
		love.graphics.printf(text4, 400, 600, love.graphics.getWidth())
		love.graphics.setFont(menu_font)
		love.graphics.print("MENU", 50,50)
		love.graphics.setFont(tempo_font)
		love.graphics.print("00:" .. math.floor(tempo), 600,50)
		if som_ligado then
			love.graphics.draw(som_on,1150,50,0,0.4,0.4)
		else
			love.graphics.draw(som_off,1150,50,0,0.4,0.4)
		end
		mouseClick()
		if acertou then
			animation_explosion:draw( explosao, 850, 200, 0, 2, 2, 48, 0 )
		
		end
		if perdeu then
			text4 =  ""
			animation_explosion:draw( explosao, 250, 400, 0, 2, 2, 48, 0 )
			love.graphics.setFont(menu_font)
			love.graphics.print('GAME OVER',150,300,0,2)
		end
	end

	if STATUS == 5 then
			
		love.graphics.setFont(menu_font)
		animation_Mago_Fogo:draw( mago_fogo, 450, -100, 0, 1, 1, 320, 0)
		animation_Mago_Agua:draw( mago_agua, 150, -100, 0, 1, 1, 320, 0)
		animation_Mago_Raio:draw( mago_raio, 790, -100, 0, 1, 1, 320, 0)
		animation_Mago_Terra:draw( mago_terra,1090, -100, 0, 1, 1, 320, 0)
		love.graphics.print("PARABENS!", 400,400)
		love.graphics.setFont(main_font)
		love.graphics.print("VOCE TERMINOU O CODE WIZARD! ESPERO QUE TENHA SE DIVERTIDO!", 200,500)
		love.graphics.print("-LINDOSO", 930,550)
		love.graphics.setFont(menu_font)
		love.graphics.print("MENU", 500,600)
		if som_ligado then
			love.graphics.draw(som_on,1150,50,0,0.4,0.4)
		else
			love.graphics.draw(som_off,1150,50,0,0.4,0.4)
		end
		mouseClick()

	end
end
----- DEFINE O TAMANHO DA JANELA-----
function setWin()
	love.graphics.setBackgroundColor(0,150,250)
	love.window.setMode(1280,720)
	-- body
end
----- FUNÇÕES DE CLICK DO MOUSE-----
function mouseClick()
	Mx,My = love.mouse.getPosition()
	if STATUS == 0 then
		if Mx > 600 and Mx < 825 and My > 300 and My < 365  then
			if love.mouse.isDown("1") then
				STATUS = 1
			end
		end
		if Mx > 600 and Mx < 1025 and My > 400 and My < 465  then
			if love.mouse.isDown("1") then
				STATUS = 100
			end
		end
		if Mx > 600 and Mx < 825 and My > 500 and My < 565  then
			if love.mouse.isDown("1") then
				love.event.quit()
			end
		end
	end

	if STATUS == 100 then	
		if Mx > 600 and Mx < 925 and My > 600 and My < 665  then
			if love.mouse.isDown("1") then
				STATUS = 0
			end

		end

	end
	if som_ligado then
		if Mx > 1150 and Mx < 1240 and My > 50 and My < 150  then
			if love.mouse.isDown("1") then
				music:stop()
				som_ligado = false
				love.timer.sleep(0.2)
			end

		end
	else 
		if Mx > 1150 and Mx < 1240 and My > 50 and My < 150  then
			if love.mouse.isDown("1") then
				music:play()
				som_ligado = true
				love.timer.sleep(0.2)

			end

		end
	end

	if Mx > 50 and Mx < 270 and My > 50 and My < 115  then
		if love.mouse.isDown("1") then
			STATUS = 0
		end

	end


	if STATUS == 5 then	
		if Mx > 500 and Mx < 725 and My > 600 and My < 665  then
			if love.mouse.isDown("1") then
				STATUS = 0
			end

		end

	end
	-- body
end
----- DEFINE O QUE ACONTECE QUANDO O TEMPO ACABA-----
function Timing(dt)
	if math.floor(tempo) <= 0 then
		--STATUS = 0
		perdeu = true
		text = ""
		tempo = 30
	end
	-- body
end
