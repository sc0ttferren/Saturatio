local e=Instance.new('BindableFunction')
e.OnInvoke=function() setclipboard('https://discord.gg/Gsd6JdfhST') end
game.StarterGui:SetCore('SendNotification',{Title='Saturatio',Text='Thanks for using!',Icon='http://www.roblox.com/asset/?id=8941506186',Duration=5,Button1='discord.gg/Gsd6JdfhST',Callback=e})
local a=''
for i,v in ipairs({10972284553,10710676163,4522347649,5023687570,286090429,6708206173,3101667897}) do if game.PlaceId==v then a=game:HttpGet('https://raw.githubusercontent.com/sc0ttferren/Saturatio/main/'..tostring(game.PlaceId)..'/.lua') end end
loadstring(game:HttpGet('https://raw.githubusercontent.com/sc0ttferren/Saturatio/Universal/.lua')..a)()
