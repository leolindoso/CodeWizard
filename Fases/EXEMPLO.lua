--[[PRA DERROTAR O OGRO, SEU ELEMENTO TEM Q SER O OPOSTO DO ELEMENTO DA ARMADURA DO INIMIGO
	FOGO - AGUA
	RAIO - TERRA
	
	--VOCE TERÁ QUE CORRIGIR OS CODIGOS QUE APARECERÃO PARA, A PARTIR DE UMA LOGICA CORRETA, DERROTAR O INIMIGO
	--OS CODIGOS PODERÃO APRESENTAR ERROS DE LOGICA, SINTAXE E/OU SEMANTICA.

]]--



if mago_fogo and ogro_agua then
	inimigo_morto = true
end

if not mago_agua and ogro_fogo then
	inimigo_morto = true
end	





--FASE1
	--TEM Q SER ASSIM
	if mago_fogo and ogro_agua then
		inimigo_morto = true
	end

	--COMO VAI ESTAR
	if not mago_fogo and ogro_agua then
		inimigo_morto = true
	end

--FASE2
	--TEM Q SER ASSIM
	if mago_agua and ogro_fogo then
		inimigo_morto = true
	end

	--COMO VAI ESTAR
	if mago_agua and not ogro_fogo then
		inimigo_morto = true
	end

--FASE3
	--TEM Q SER ASSIM
	if mago_raio and ogro_terra then
		inimigo_morto = true
	end
	--COMO VAI ESTAR
	if mago_raio and ogro_terra do 
		inimigo_morto == true
	end

--FASE4
	--TEM Q SER ASSIM
	while mago_agua and ogro_fogo do
		inimigo_morto = true
		if inimigo_morto then
			mago_agua = false
		end
	end

	--COMO VAI ESTAR
	while mago_agua and ogro_fogo do
		inimigo_morto = true
		if inimigo_morto then
			mago_agua = false
	end