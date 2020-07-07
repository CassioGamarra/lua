-- Crie um programa LUA que leia um vetor de valores numéricos e imprima a média aritmética e o total dos valores do vetor

local vetor = { 28, 27, 19, 23, 21}

if getn(vetor) == 0 then
	print("Vetor vazio!")
elseif getn(vetor) == 1  then
	print("O vetor possui apenas um valor, logo a média e soma são: "..vetor[1])
else
    local total = 0
    local i
    for i = 1, getn(vetor) do
        total = total + vetor[i]
    end
    print("Média: "..(total/getn(vetor)))
    print("Total: "..total)
end
