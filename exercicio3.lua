 -- Crie um programa LUA que leia um vetor de valores numéricos e popule dois outros vetores um 
 --contendo os pares e o outro os ímpares. Ao final imprima cada um dos vetores um no seguinte formado: n1, n2, n3, ...
 
vetor = {10,82,4,77,101,-5,33,-45} --Vetor como global
 
if getn(vetor) == 0 then
   print("Vetor vazio!")
elseif getn(vetor) == 1 then
   print("Vetor possuí só um valor")
else
    local vetorPar = {}
    local vetorImpar = {}
    local i 
    for i = 1, getn(vetor) do
        if frac(vetor[i]/2) == 0 then --pega o "resto" da divisão por 2, p/ verificar se é par ou impar
           vetorPar[i] = vetor[i]
        else
            vetorImpar[i] = vetor[i]
        end
    end
    print("Pares: ")
    for i = 1, getn(vetorPar) do
        print(vetorPar[i])
    end
    print("Impares: ")
    local impares = "";
    
    for i = 1, getn(vetorImpar) do
        if vetorImpar[i] ~= nil then
           impares = impares..vetor[i]
           if i < getn(vetorImpar)then
              impares = impares..", "
           end
        end
    end
    print(impares)
end
