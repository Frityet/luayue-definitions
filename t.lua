---@class Test
local Test = {}

---@class Test.Sub
Test.Sub = {}

Test.Sub.r = "4"


package.path = ""
local gui = require('yue.gui')

local window = gui.Window.create {}

function window:onclose()
    gui.MessageLoop.quit()
end

local container = gui.Container.create()
container:setstyle {
    padding = 10,
    width = 256,
    height = 128,
}

do
    container:addchildview(gui.Label.create "Testing")

    local slider = gui.Slider.create()
    slider:setstyle {
        padding = 10,
        ["margin-top"] = 10
    }
    local progbar = gui.ProgressBar.create()
    progbar:setstyle {
        padding = 10
    }

    function slider:onvaluechange()
        progbar:setvalue(self:getvalue())
    end

    container:addchildview(slider)
    container:addchildview(progbar)
end
window:setcontentsize(container:getpreferredsize())
window:setcontentview(container)


window:center()
window:activate()

gui.MessageLoop.run()

