module Main where

import Check.Runner.Browser exposing (..)
import Check.Investigator exposing (..)
import Check exposing (..)
import Html exposing (Html)

trueIsTrue : Claim
trueIsTrue =
    claim
        "True is True"
    `true`
        always True
    `for`
        bool

main : Html
main =
    display (quickCheck trueIsTrue)
