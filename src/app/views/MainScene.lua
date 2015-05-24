
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

function MainScene:onCreate()
    -- add background image
    display.newSprite("MainSceneBg.jpg")
        :move(display.center)
        :addTo(self)

    -- add play button
    local playButton = cc.MenuItemImage:create("PlayButton.png", "PlayButton.png")
        :onClicked(function()
            self:getApp():enterScene("PlayScene")
        end)
    cc.Menu:create(playButton)
        :move(display.cx, display.cy - 200)
        :addTo(self)

    local msg = HelloWorld_pb.HelloWorld()
    msg.id = 10
    msg.str = "HelloWorld this is a prototest bbbbbbbbb"
    msg.opt = 100000000

    local str = msg:SerializeToString()

    local msg2 = HelloWorld_pb.HelloWorld()
    msg2:ParseFromString(str)
    print(msg2.id)
    print(msg2.str)
    print(msg2.opt)
    print("100*********************1000")
end

return MainScene
