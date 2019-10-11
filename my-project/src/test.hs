module Test where -- have to declare this for Prelude to be able to load using :l test.hs
-- :l test.hs -> To run this in 
-- Need to start ghci from the dir where this file is located

main :: IO () -- IO to keep the effect of the function beyond its execution
-- Need it to print the output to the screen

hello :: String -- :: represents type, not required
hello = "Hello"

main = do -- Makes the code more readable, used to do a sequence of tasks, no required
  putStrLn ("Hello, " ++ "Waleed" ++ "!") -- Has to be inside the brackets so there is no only one argument to putStrLn
  putStr secondGreeting -- Doesn't insert a new line
  where secondGreeting = concat [hello, " ", world]

world :: String -- Can declare a func/var in the same file, in the lines after you first use it
world = "World" -- world is being used on line 14

-- Once loaded, we can call functions within this file from the repl by running main