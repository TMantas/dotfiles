--------------------------------------------------------------------------------
-- Global Config
--------------------------------------------------------------------------------

hyper = {"cmd", "alt", "ctrl"}
lilHyper = {"ctrl", "alt"}

hs.hotkey.bind(hyper, 'r', hs.reload)

hs.hotkey.bind(hyper, 'return' , function()
    ToggleApp('Kitty')
end)

hs.hotkey.bind(hyper, 'p' , function()
    ToggleApp('Spotify')
end)

hs.hotkey.bind(hyper, 'o' , function()
    ToggleApp('Discord')
end)

hs.hotkey.bind(hyper, 'k' , function()
    ToggleApp('Skype')
end)

hs.hotkey.bind(hyper, 'l' , function()
    ToggleApp('TablePlus')
end)

hs.hotkey.bind(hyper, '-' , function()
    ToggleApp('Firefox')
end)

hs.hotkey.bind(hyper, '\\' , function()
    ToggleApp('WebStorm')
end)

-- Toggle the App between hide and show
function ToggleApp(_app)
    frontApp = hs.application.frontmostApplication()
    if frontApp:title() == _app then
        frontApp:hide()
    else
        hs.application.launchOrFocus(_app)
    end
  end

-- Fullscreen
hs.hotkey.bind(hyper, 'f', function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    win:toggleFullScreen()
  end
end)

hs.hotkey.bind(lilHyper, "up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(lilHyper, "down", function()
  -- size focused window to left half of display
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 4)
  f.y = max.y + (max.h / 4)
  f.w = max.w / 1.5
  f.h = max.h / 1.5
  win:setFrame(f)
end)


hs.hotkey.bind(lilHyper, "left", function()
  -- size focused window to left half of display
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(lilHyper, "right", function()
  -- size focused window to right half of display
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

function MoveApp(direction)
    if hs.window.focusedWindow() then
        local win = hs.window.focusedWindow()
        local screen = win:screen()
        if #hs.screen.allScreens() > 1 then
            if win:isFullScreen() then
                win:setFullScreen(false)

                if direction == "east" then
                    win:moveOneScreenEast()
                else
                    win:moveOneScreenWest()
                end

                hs.timer.doAfter(0.6,function()
                    win:setFullScreen(true)
                end)
            else
                if direction == "east" then
                    win:moveOneScreenEast()
                else
                    win:moveOneScreenWest()
                end
            end
        else
            hs.alert.show("Only one monitor")
        end
    else
        hs.alert.show("No active window")
    end
end

hs.hotkey.bind(hyper, "right", function()
  MoveApp("east")
end)

hs.hotkey.bind(hyper, "left", function()
  MoveApp("west")
end)


