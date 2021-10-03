module Main where

main = do
  print "Salve"
  print (square 2)
  print (tripleFst t)
  print (tripleSnd t)
  print (tripleTrd t)
  print (firstElement [1])
  print (firstElement [1,2])

square = \x -> x * x

sumDouble x y = 2 * (y + x) :: Integer

data Triple a b c = Triple a b c

t = Triple "1" 2 3.2

tripleFst (Triple a b c) = a
tripleSnd (Triple a b c) = b
tripleTrd (Triple a b c) = c

firstElement :: [a] -> Maybe a
firstElement [] = Nothing
firstElement (x:xs) = Just x

findElement :: (a -> Bool) -> [a] -> Maybe a
findElement p [] = Nothing
findElement p (x:xs) =
  if p x then Just x
  else findElement p xs

-- Recursive Data Types

data List a = Nil
  | Cons a ( List a )

listLen Nil = 0
listLen (Cons x xs) = 1 + listLen xs

-- Binary Trees

data BinaryTree a
  = Leaf a
  | Branch (BinaryTree a)     a      (BinaryTree a)
-- define: left child   - node value - right child

treeLen (Leaf x) = 1
treeLen (Branch left x right) =
  1 + treeLen left + treeLen right

-- Enum

data Color =
  Red
  | Green
  | Blue
  | CustomRBG Int Int Int

colorToRGB Red = (255,0,0)
colorToRGB Green = (0,255,0)
colorToRGB Blue = (0,0,255)
colorToRGB (CustomRBG r g b) = (r,g,b)
