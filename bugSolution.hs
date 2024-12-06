The safe approach uses pattern matching to check for the empty list case or utilizes the `maybe` function for more concise error handling. Here's an example using pattern matching:

```haskell
safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x

main :: IO ()
main = do
  let emptyList = []
  let nonEmptyList = [1, 2, 3]
  print (safeHead emptyList) -- Output: Nothing
  print (safeHead nonEmptyList) -- Output: Just 1
```
Alternatively, using `maybe`:

```haskell
safeHeadMaybe :: [a] -> Maybe a
safeHeadMaybe xs = maybe Nothing Just (listToMaybe xs)

main :: IO ()
main = do
  let emptyList = []
  let nonEmptyList = [1, 2, 3]
  print (safeHeadMaybe emptyList) -- Output: Nothing
  print (safeHeadMaybe nonEmptyList) -- Output: Just 1
```
This prevents runtime crashes by gracefully handling empty lists.