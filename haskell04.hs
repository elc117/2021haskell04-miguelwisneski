-- Prática 04 de Haskell
-- Nome: Miguel Antonio Welter Wisneski

--1

faixaIdoso :: Int -> String
faixaIdoso idade
 |idade >= 60 && idade <= 64 = "IDO64"
 |idade >= 65 && idade <= 69 = "IDO69"
 |idade >= 70 && idade <= 74 = "IDO74"
 |idade >= 75 && idade <= 79 = "IDO64"
 |idade >= 80 = "IDO64"
 |otherwise = "ND"

--2

classificados :: [(String,Int)] -> [(String,Int,String)]
classificados lista = [(nome, idade, faixaIdoso idade) | (nome,idade) <- lista]


--3
classificados'' :: [(String, Int)] -> [(String, Int, String)]
classificados'' lista = map(\tup -> (fst tup, snd tup, faixaIdoso (snd tup))) lista
