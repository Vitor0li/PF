{-
1 a) Valida, tipo: [Char]
b) Valida, tipo: (Char,Char,Char)
c) Valida, tipo:[(Bool,Char)]
d) Valida, tipo: ([Bool],[Char])
e) Valida, tipo: [[a] -> [a]]

2 a)a funcao mostra o segundo elemento, que é a cabeça da cauda
B) a funcao recebe dois valores e os coloca em uma tupla
c) a funçao verifica se a lista é igual ao reverso da lista
-}

type Aluno = (Integer, [Char], Double)
type Curso = [Aluno]
-- [(4,"rhf",5.7),(7,"hfuj",8.6),(2,"dffidhs",4.8),(5,"fhdjhjf",6.3)]

notaAluno :: Aluno -> Double
notaAluno (_,_,x) = x

nomeAluno :: Aluno -> [Char]
nomeAluno (_,x,_) = x 

maiorNota :: Curso -> [Char]
maiorNota [a] = nomeAluno a
maiorNota (x1:x2:x) = if notaAluno x1 > notaAluno x2 then maiorNota (x1:x) else maiorNota (x2:x)  

