-- Crie um programa LUA que leia um vetor de valores numéricos e imprima o maior e o menor elemento contidos no vetor

local vetor = {10,82,4,77,101,-5,33,-45}

if getn(vetor) == 0 then
   print("Vetor vazio!")
elseif getn(vetor) == 1 then
   print("Vetor possuí só um valor, logo, o maior e o menor são: "..vetor[1])
else
    local menor = vetor[1]
    local maior = vetor[1]
    local i
    for i = 1, getn(vetor) do
       if vetor[i] < menor then
          menor = vetor[i]
       end
       if vetor[i] > maior then
          maior = vetor[i]
       end
    end
    print("Maior: "..maior)
    print("Menor: "..menor)
end