require "Codes/Functions"

local utf8 = require("utf8")

function love.load()
	som_ligado = true
	tempo = 30
	acertou = false
	acertou_delay = 1
	perdeu = false
	perdeu_delay = 2
	STATUS = 0

    LoadSounds()
	LoadTexts()
 	LoadFiles()
	LoadFonts()
	LoadImagens()
	love.textinput()
	love.keypressed()
	setWin()
end

function love.update(dt)

	if STATUS > 0 and STATUS < 5 then
		tempo = tempo - (1*dt)
		Timing(dt)
	end
	--mouseClick() ta sendo chamada na função Fases()
	AnimationUpdate(dt)
	Acerto(dt)
	Derrota(dt)
	Respostas()
end

function love.draw()
	Fases()
end