local cBRATMExample = class("cBRATMExample", vRP.Extension)





function cBRATMExample:__construct()
  vRP.Extension.__construct(self)
	async( function()
    	vRP:prepare("vRP/getBalance",[[QUERY]])
    	vRP:prepare("vRP/UpdateBalance",[[QUERY]])
  	end)
end


-- ATM Event Example
RegisterServerEvent('ATM:GetBalance')
AddEventHandler('ATM:GetBalance', function()
	local user = vRP.users_by_source[source]
	if user ~= nil then
		CashCustom = vRP:query('vRP/getBalance', {id = user.id})
	end
end)
-- ATM Event Example
RegisterServerEvent('ATM:UpdateBalance')
AddEventHandler('ATM:UpdateBalance', function(amount)
	local user = vRP.users_by_source[source]
	if user ~= nil then
		vRP:execute("vRP/UpdateBalance", {amount = amount, user_id = user.id})
	end
end)



cBRATMExample.tunnel = {}
-- ATM Func Example
function cBRATMExample.tunnel:GetBalance()
	local user = vRP.users_by_source[source]
	if user ~= nil then
		CashOnBank = user:getBank()
		CashOnWallet = user:getWallet()
		CashCustom = vRP:query('vRP/getBalance', {id = user.id})
	end	
end

vRP:registerExtension(cBRATMExample)
