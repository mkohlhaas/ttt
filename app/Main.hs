module Main where

data Three = One | Two | Three
  deriving (Eq, Ord, Enum, Bounded)

data TicTacToe a = TicTacToe { board :: Three -> Three -> a }

emptyBoard :: TicTacToe (Maybe Bool)
emptyBoard = TicTacToe $ const $ const Nothing

main :: IO ()
main = putStrLn "Hello, Haskell!"
