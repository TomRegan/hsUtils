{-
Copyright 2015 Tom Regan
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-}

{- |
   Module      : Main
   Copyright   : Copyright (C) 2015 Tom Regan
   License     : Apache-2.0
   Maintainer  : Tom Regan <code.tom.regan@gmail.com>
-}

module Cat where

import System.Environment

cat :: IO ()
cat = do
        (filename:_) <- getArgs
        Cat.read filename

read :: String -> IO ()
read n = do
         f <- readFile n
         putStr f
