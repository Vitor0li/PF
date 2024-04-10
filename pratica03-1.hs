module Main (main) where

main :: IO ()
main = do putStr "Digite uma frase: "
          palavra <- getLine
          if palavra == (reverse palavra)
         	then  putStrLOn "e palindrome" 
         	else putStrLn "nao e palindrome"
