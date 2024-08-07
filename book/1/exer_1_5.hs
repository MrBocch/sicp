
p = p
test x y = if x == 0 then
                "0" else
                y

main = putStrLn (test 1 p)

-- because haskell is lazy
-- evaluated then test will
-- return 0 and not get stuck
-- trying to evaluate p
