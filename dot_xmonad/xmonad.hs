import XMonad
import XMonad.Util.SpawnOnce

myBorderWidth :: Dimension
myBorderWidth = 2

myTerminal :: String
myTerminal = "alacritty"

myStartupHook :: X ()
myStartupHook = do
    spawnOnce "picom"

main = xmonad $ def
    { borderWidth = myBorderWidth
    , modMask = mod4Mask
    , startupHook = myStartupHook
    , terminal = myTerminal }

