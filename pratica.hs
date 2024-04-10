import Data.Char

type Aluno = (Integer, [Char], Double)
type Curso = [Aluno]

insereAluno :: Aluno -> Curso -> Curso
insereAluno x [] = [x]
insereAluno x (h:t) = if x == h then (h:t) else h : insereAluno x t 

--[(34,"dfjh",2.4), (67,"hgug",5.8)]

converte :: [Char] -> [Char]
converte [] = []
converte (h:t) = toUpper h : converte t

converteTupla :: [Char] -> ([Char],[Char])
converteTupla x = (x,converte x)

retornaPos :: [Int] -> Int -> Int -> Int
retornaPos [] _ _ = 0
retornaPos (h:t) x p = if h == x then p else retornaPos t x p+1

maior :: [Int] -> Int
maior [x] = x
maior (h:t) = if h > maior t then h else maior t

posMaior :: [Int] -> (Int,Int)
posMaior x = (maior x ,retornaPos(x (maior x) 1))

removePos :: [Int] -> Int -> [Int]
removePos (h:t) p = if p == 1 then t else h : removePos t (p-1)

