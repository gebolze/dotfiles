import XMonad
import XMonad.Util.SpawnOnce

myBorderWidth :: Dimension
myBorderWidth = 2

myTerminal :: String
myTerminal = "alacritty"

myStartupHook :: X ()
myStartupHook = do
    spawnOnce "picom"
    spawnOnce "feh --no-fehbg --bg-fill ~/.config/wallpapers/neon-samurai-cyberpunk.jpg ~/.config/wallpapers/digital_art_sunset.png"

main = xmonad $ def
    { borderWidth = myBorderWidth
    , modMask = mod4Mask
    , startupHook = myStartupHook
    , terminal = myTerminal }

