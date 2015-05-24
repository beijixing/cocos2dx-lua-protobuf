
cc.FileUtils:getInstance():setPopupNotify(false)
cc.FileUtils:getInstance():addSearchPath("src/")
cc.FileUtils:getInstance():addSearchPath("res/")
cc.FileUtils:getInstance():addSearchPath("src/protobuf/")


require "config"
require("pb")
require("HelloWorld_pb")
require "cocos.init"

local function main()
   
    
    require("app.MyApp"):create():run()
    
    print("你麻痹啊2222")
end

local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    print(msg)
end
