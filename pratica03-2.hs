produto :: IO ()
produto = do putStr "Digite um numero:"
             n1 <- getLine
             putStr "Digite um numero:"
             n2 <- getLine
             putStr "Digite um numero:"
             n3 <- getLine
             putStr "O produto dos numeros e: "
             putStrLn (show (read n1 * read n2 * read n3 * 1.0))

temperatura :: IO ()
temperatura = do putStr "Digite a temperatura em Fahrenheit: "
                 f <- getLine
                 putStr "Temperatura em Celsius: "
                 putStrLn (show ( (5 / 9) * (read f - 32)))

media :: Float -> Float -> Float -> Float
media a b c = (a + b + c) / 3

situacao :: IO ()
situacao = do putStr "Digite a primeira nota: "
              nota1 <- getLine
              putStr "Digite a segunda nota: "
              nota2 <- getLine
              putStr "Digite a terceira nota: "
              nota3 <- getLine
              if ((media (read nota1 read nota2 read nota3)) < 3.0 ) 
                 then putStrLn "Reprovado"
                 else if ((media (read nota1 read nota2 read nota3)) >= 3.0 && (media (read nota1 read nota2 read nota3)) < 7.0 )
                        then putStrLn "Exame Especial"
                        else putStrLn "Aprovado"      		


