local cBRATMExample = class("cBRATMExample", vRP.Extension)


function cBRATMExample:__construct()
    vRP.Extension.__construct(self)

end

function cBRATMExample:YourFunc()

end  

cBRATMExample.tunnel = {}

cBRATMExample.tunnel.YourFunc = cBRATMExample.YourFunc

vRP:registerExtension(cBRATMExample)

