----[[DEVELOPER SETTING]]----
Owner = "LiteAbyssMerchant"
--[[==================]]--
emotebait = "EROR 404"
bait_name = "EROR 404"
emoterod = "EROR 404"
namarod = "EROR 404"

if fitur_multiplebot == true then
    for key, bot in pairs(bot) do
        if string.upper(bot.Bot_Name) == string.upper(getBot().name) then
            if fitur_world_bait_terpisah == true then
                world_bait = bot.World_Bait
                sleep(10)
                id_world_bait = bot.Id_Door_Bait
                sleep(10)
                Pos_Bait = tonumber(bot.Pos_Block_Bait)
                sleep(10)
            end
            if fitur_world_Drop_terpisah == true then
                world_drop = bot.World_Item
                sleep(10)
                id_door_spot_fishing = bot.Id_Door_Item
                sleep(10)
                id_spot_fishing = tonumber(bot.Pos_Block_Item)
                sleep(10)
            end
            if fitur_world_mancing_terpisah == true then
                world_mancing = bot.World_Fishing
                sleep(10)
                id_spot_mancing = bot.Id_Door_Fishing
                sleep(10)
                id_pos_spot_mancing = tonumber(bot.Pos_Block_fishing)
                sleep(10)
            end
            if fitur_world_droproles_terpisah == true then
                world_drop_roles = bot.World_Roles
                sleep(10)
                id_door_spot_roles = bott.Id_Door_Roles
                sleep(10)
                id_pos_world_roles = tonumber(bot.Pos_Block_Roles)
                sleep(10)
            end
            if fitur_world_dropdeco_terpisah == true then
                world_drop_deco = bot.World_Deco
                sleep(10)
                id_door_spot_deco = bot.Id_Door_Deco
                sleep(10)
                id_pos_world_deco = bot.Pos_Block_Deco
                sleep(10)
            end
            if fitur_bait_terpisah == true then
                Id_Bait = tonumber(bot.Bait_Id)
                sleep(10)
            end
            if fitur_rod_terpisah == true then
                Id_Rod = tonumber(bot.rod_id)
            end
        end
    end
end

if Id_Bait == 5528 then
    trash_list = {5574,5552,5548}
    list_barang_fishing = {3584,8968,5618,5624,5528,5614,8252,5616}
    emotebait = "<:megapellet:1063035461322416199>"
    bait_name = "**Mega-Pellet Bait**"
elseif Id_Bait == 5526 then
    trash_list = {5580,5538,5542,8254}
    list_barang_fishing = {3584,5622,5620,5612,5526}
    emotebait = "<:glowinglure:1063042152986329148>"
    bait_name = "**Uranium Glowing Lure**"
elseif Id_Bait == 2914 then
    trash_list = {3000,3038,3034}
    list_barang_fishing = {3012,846,344,8964,3028}
    emotebait = "<:wormbait:1054329197679628369>"
    bait_name = "**Wiggly Worm**"
elseif Id_Bait == 3012 then
    trash_list = {3000,3030,3038,3036}
    list_barang_fishing = {846,444,8966,3028,3022,3014}
    emotebait = "<:shinybait:1055667674190975058>"
    bait_name = "**Shiny Flashy Thing**"
elseif Id_Bait == 3014 then
    trash_list = {3000,3030,3026,3038,3032}
    list_barang_fishing = {8964,8256,344,1542,1520,846,444,3016}
    emotebait = "<:salmonbait:1055667672479703070>"
    bait_name = "**Salmon Eggs**"
elseif Id_Bait == 3016  then
    trash_list = {3026,3032,3038,3037}
    list_barang_fishing = {444,1522,8256,8964,3184,1542,3018,344,10566,10786}
    emotebait = "<:flybait:1055667670290276382>"
    bait_name = "**Fishing Fly**"
elseif Id_Bait == 3018  then
    trash_list = {3036,3034,3032,3024,4958}
    list_barang_fishing = {8966,344,1522,3022,3810,3448,3008,3184,3020}
    emotebait = "<:shrimpbait:1055667668100845668>"
    bait_name = "**Shrimp Lure**" 
end

if Id_Rod == 2912 then
    emoterod = "<:fishingrod:1062522840768839681>"
    namarod = "Fishing Rod"
elseif Id_Rod == 3008 then
    emoterod = "<:EZrod:1056402540108980224>"
    namarod = "E-Z Fishing Rod"
elseif Id_Rod == 3010 then
    emoterod = "<:licorice:1062522825782603938>"
    namarod = "Licorice Rod"
elseif Id_Rod == 3100 then
    emoterod = "<:licorice:1062522825782603938>"
    namarod = "Cursed Fishing Rod"
elseif Id_Rod == 5740 then
    emoterod = "<:cursedrod:1062522832623521892>"
    namarod = "Magical Rainbow Fishing Rod"
elseif Id_Rod == 10262 then
    emoterod = "<:thanksgivingrod:1062522818358673458>"
    namarod = "Thanksgiving Dinner Fishing Rod"
end

Title           = "<:tackle:1056879797420175390> AUTO FISHING BY KONOHAIDSHOP"
function powershell(logs)
    local script = [[
        $webHookUrl = ']].. Webhook_Link ..[['
        $date = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId(  (Get-Date), 'SE Asia Standard Time')
        $cpu = (Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average).Average
        $ram = (Get-Counter '\Memory\Available MBytes').CounterSamples.CookedValue
        [System.Collections.ArrayList]$embedArray = @()
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $title        = ']] .. Title .. [['
        $pesan        = ']].. logs ..[['
        $color        = Get-Random -Minimum 0 -Maximum 16777215
        $user         = ']] .. Title .. [['
        $thumbUrl     = ']] .. Thumbnail_Url .. [['
        $fieldArray   = @(
            @{
                name = "<:megaphone:1054555216772612157> **Information**"
                value = "$pesan"
                inline = "false"
            }
            @{
                name = "]]..emotebait..[[ Fishing bait"
                value = "]]..emotebait..[[ ]]..bait_name..[["
                inline = "true"
            }
            @{
                name = "]]..emoterod..[[ Fishing Rod"
                value = "]]..emoterod..[[ | ]]..namarod..[["
                inline = "true"
            }
            @{
                name = "<:clocks:1062319354001235988> Bot Time"
                value = "]]..BotTime()..[["
                inline = "true"
            }
            @{
                name = "<:drill:1062318662754770944> / <:detonator:1062318658803740724> Deto/Drill"
                value = "**]]..string.upper(tostring(fitur_auto_drilldeto))..[[**"
                inline = "true"
            }
            @{
                name = "<:TreeDeco:1054329454886920262> Tree Deco"
                value = "**]]..string.upper(tostring(fitur_treedeco))..[[**"
                inline = "true"
            }
            @{
                name = "<:aqua:1055383249720983562> Roles"
                value = "**]] ..string.upper(tostring(fitur_roles))..[[**"
                inline = "true"
            }
            @{
                name = "<:kalender:1055662742951968859> Date"
                value = "$date "
                inline = "true"
            }
            @{
                name = "<:budyedit:1054555975140515870> SC Developer"
                value = "ReGeneral#3787"
                inline = "true"
            }
            @{
                name = "<:Retro:1055663203490734191> Device Information"
                value = "<:Aliencomputer:1055663490104303677> CPU : $cpu% `n<:Aliencomputer:1055663490104303677> RAM : $ram MB "
                inline = "true"
            }
        ) 
        $thumbnailObject = [PSCustomObject]@{
            url = $thumbUrl
        }
        $embedObject = [PSCustomObject]@{
        username    = $user
        title       = $title
        fields      = $fieldArray
        color       = $color
        thumbnail   = $thumbnailObject
        }
        $embedArray.Add($embedObject)
        $payload = [PSCustomObject]@{
            embeds = $embedArray
        }
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
        ]]
    local pipe = io.popen("powershell -WindowStyle Hidden -ExecutionPolicy Bypass -command -", "w")
    pipe:write(script)
    pipe:close()
end

function BotTime()
    Bot_Times = os.time() - Bot_Time
    Hourb = tostring(math.floor(Bot_Times / 3600))
    Minuteb = tostring(math.floor((Bot_Times % 3600) / 60))
    Secondb = tostring(math.floor((Bot_Times % 3600) % 60))
    Timeb = tostring(Hourb.." Hourse "..Minuteb.." Minute "..Secondb.." Second ")
    return Timeb
end

function WorldTime()
    Farm_Times = os.time() - Farm_Time
    Hourw = tostring(math.floor(Farm_Times / 3600))
    Minutew = tostring(math.floor((Farm_Times % 3600) / 60))
    Secondw = tostring(math.floor((Farm_Times % 3600) % 60))
    Timew = tostring(Hourw.."h:"..Minutew.."m:"..Secondw.."s")
    return Timew
end


function Jumlah_Player()
    return #getPlayers() + 1
end

function CheckFossil()
    local counts = 0
    for _,tile in pairs(getTiles()) do
        if tile.fg == 3918 then
            counts = counts + 1
        end
    end
    return counts
end

function cek_wear()
    ::balik::
    sleep(1000)
    if findClothes(Id_Rod) == true then
        sleep(1000)
        say"ROD TERPAKAI"
        return
    elseif findClothes(Id_Rod) == false then
        say"ROD TIDAK TERPAKAI"
        sleep(1000)
        wear(Id_Rod)
        sleep(1000)
        goto balik
    end
end

function gs(id)
    count = 0
    for _, object in pairs(getObjects()) do
        if object.id == id then
            count = count + object.count
        end
    end
    return count
end


-----[[Function utama autoFishing]]-----
function balik()
    sleep(1000)
    sendPacket(3,"action|join_request\nname|"..world_mancing.."|"..id_spot_mancing.."\ninvitedWorld|0")
    sleep(3000)
    for _, tile in pairs(getTiles()) do
        if tile.bg == id_pos_spot_mancing or tile.fg == id_pos_spot_mancing then
            findPath(tile.x,tile.y)
            sleep(2000)
            break
        end
    end
    startFishing(Id_Bait)
    sleep(1000)
    webhook_balikmancing()
end

function droplist_barang_fishing()
    sleep(2000)
    sendPacket(3,"action|join_request\nname|"..world_drop.."|"..id_door_spot_fishing.."\ninvitedWorld|0")
    sleep(4000)
    collectSet(false)
    for i, barang in pairs(list_barang_fishing) do
        while barang[i] ~= 0 do
            for _, tile in pairs(getTiles()) do
                if tile.bg == id_spot_fishing or tile.fg == id_spot_fishing then
                    findPath(tile.x-1,tile.y)
                    sleep(1000)
                    drop(barang)
                    if findItem(barang[i]) ~= 0 then
                        while findItem(barang[i]) ~= 0 do
                            move(0,-1)
                            drop(barang)
                        end
                    end
                end
            end
        end
    end
    if Id_Bait == 2914 then
        webhook_dropwiggly()
        sleep(10000)
    elseif Id_Bait == 3012 then
        webhook_dropshiny()
        sleep(10000)
    elseif Id_Bait == 3014 then
        webhook_dropsalmon()
        sleep(10000)
    elseif Id_Bait == 3016 then
        webhook_dropfly()
        sleep(10000)
    elseif Id_Bait == 3018 then
        webhook_dropshrimp()
        sleep(10000)
    elseif Id_Bait == 5528 then
        webhook_dropmegapellet()
        sleep(1000)
    elseif Id_Bait == 5526 then
        webhook_dropuranium()
        sleep(1000)
    end
end

function dropdeco()
    local treedeco = 3204
    collectSet(false)
    sleep(2000)
    sendPacket(3,"action|join_request\nname|"..world_drop_deco.."|"..id_door_spot_deco.."\ninvitedWorld|0")
    sleep(4000)
    while findItem(treedeco) ~= 0 do
        for _, tile in pairs(getTiles()) do
            if tile.bg == id_pos_world_deco or tile.fg == id_pos_world_deco then
                findPath(tile.x-1,tile.y)
                if findItem(treedeco) ~= 0 then
                    sleep(500)
                    drop(treedeco)
                    if findItem(treedeco) == 0 then
                        deco_dropped = deco_dropped + findItem(treedeco)
                        sleep(20)
                        break
                    elseif findItem(treedeco) ~= 0 then
                        while findItem(treedeco) ~= 0 do
                            move(1,0)
                            drop(treedeco)
                        end     
                    end
                elseif findItem(treedeco) == 0 then
                    say("Tree deco is zero, reconfigurating the script")
                    sleep(1000)
                end
            end
        end
    end
end

function droproles()
    local list_barang_roles = {6986,6988,6990,6992,6994,6998,7002}
    sleep(2000)
    sendPacket(3,"action|join_request\nname|"..world_drop_roles.."|"..id_door_spot_roles.."\ninvitedWorld|0")
    sleep(4000)
    collectSet(false)
    for index, barang in pairs(list_barang_roles) do
        while barang[index] ~= 0 do
            for _, tile in pairs(getTiles()) do
                if tile.bg == id_pos_world_roles or tile.fg == id_pos_world_roles then
                    findPath(tile.x-1,tile.y)
                    sleep(1000)
                    drop(barang)
                    sleep(500)
                    if findItem(barang[index]) == 0 then
                        break
                    elseif findItem(barang[index]) ~= 0 then
                        while findItem(barang[index]) ~= 0 do
                            move(1,0)
                            drop(barang)
                        end
                    end
                end
            end
        end
    end
end


------[[AMBIL FUNCTION]]
function ambilbait()
    sleep(2000)
    sendPacket(3,"action|join_request\nname|"..world_bait.."|"..id_world_bait.."\ninvitedWorld|0")
    sleep(4000)
    collectSet(true,2)
    if fitur_take_bait == 2 then
        while findItem(Bait_Id) <= 200 do
            for _, objk in pairs(getObjects()) do
                if objk.id == Id_Bait then
                    findPath(round(objk.x/32),math.floor(objk.y/32))
                    sleep(1000)
                    if findItem(Id_Bait) == 200 or objk.count == 0 then 
                        collectSet(false)
                        break
                    end
                    if findItem(Id_Bait) <= batas_bait and objk.count == 0 then
                        webhook_erorsc()
                        sleep(500)
                        removeBot(getBot().name)
                    end
                end
            end
        end
    elseif fitur_take_bait == 1 then
        while findItem(Bait_Id) <= 200 do
            for _, tile in pairs(getTiles()) do
                if tile.bg == Pos_Bait or tile.fg == Pos_Bait then
                    sleep(100)
                    findPath(tile.x,tile.y)
                    sleep(2000)
                    if findItem(Bait_Id) ~= 200 and objek.count ~= 0 then
                        break
                    elseif findItem(Bait_Id) <= batas_bait and gs(Bait_Id) == 0 then
                        webhook_erorsc()
                        sleep(2000)
                        removeBot(getBot.name)
                    end
                end
            end
        end
    elseif fitur_take_bait == 3 then
        local vending = 2978
        while findItem(Id_Bait) < batas_bait do
            for _, tile in pairs(getTiles()) do
                if tile.fg == vending or tile.bg == vending then
                    if tile.data == Id_Bait then
                        findPath(tile.x,tile.y)
                        sleep(1000)
                        wrench(0,0)
                        sleep(500)
                        sendPacket(2,"action|dialog_return\ndialog_name|vending\ntilex|"..math.floor(getBot().x/32).."|\ntiley|"..math.floor(getBot().y/32).."\nbuttonClicked|pullstock\n\nsetprice|0\nchk_peritem|0\nchkperlock|1")
                    end
                    if findItem(Id_Bait) == 200 then
                        break
                    end
                end
            end
        end
    end
end


function trashfish()
    for i, trash in pairs(trash_list) do
        if findItem(trash) >= Trash_Limit then
            sendPacket(2,"action|trash\n|itemID|"..trash)
            sleep(2000)
            sendPacket(2,"action|dialog_return\ndialog_name|trash_item\nitemID|"..trash.."|\ncount|"..findItem(trash))
            sleep(1000)
        end
    end
end

function join()
    sendPacket(3,"action|join_request\nname|"..world_mancing.."\ninvitedWorld|0")
    sleep(2000)
end

function checkawal()
    cek_wear()
    if fitur_roles == true then
        for index, barang in pairs(list_barang_roles) do
            if findItem(list_barang_roles[index]) >= batas_jumlah_roles then
                sleep(1000)
                droproles()
                sleep(1000)
                webhook_droproles()
                sleep(1000)
                balik()
            end
        end
    end
    for index, barangfish in pairs(list_barang_fishing) do
        if findItem(list_barang_fishing[index]) >= batas_barang_fishing then
            sleep(1000)
            droplist_barang_fishing()
            sleep(1000)
            balik()
        end
    end
    if fitur_treedeco == true then
        if findItem(treedeco) >= batas_jumlah_treedeco then
            sleep(1000)
            dropdeco()
            sleep(1000)
            webhook_dropdeco()
            sleep(1000)
            balik()
        end
    end
    if findItem(Id_Bait) >= batas_bait then
        balik()
        sleep(1000)
    elseif findItem(Id_Bait) < batas_bait then
        sleep(1000)
        ambilbait()
        sleep(1000)
        webhook_ambilbait()
        sleep(1000)
        balik()
    end
    sleep(1000)
    utama()
end
-----[[Variable Pendukung]]-----
deco_dropped = 0
Bot_Time = os.time()
waktuberikutnya = os.time()
-----[[FUnction lock owner]]-----
function cekow()
    local start = false
    for _,player in pairs(getPlayers()) do
        if string.upper(player.name) == string.upper(Owner) then
            start = true
            say("`4Owner Founded")
            sleep(1000)
            if start == true then
                sleep(1000)
                say"Persiapan awal"
                collectSet(false)
                sleep(math.random(3000))
                checkawal()
            end
        end
    end
end

function getArgs(str)
    local args={}
    for i in str:gmatch('[^%s]+') do
        args[#args+1]=i
    end
    return args
end

-----[[HOOK OWNER]]-----
function cmds(v)
    if v[0]=="OnConsoleMessage" then
        name=v[1]:match('<`.[^`]+'):sub(4)
        text=v[1]:match('`$[^`]+'):sub(3)
        if text and text:sub(1,1)=='!' then
            if Owner then
                if name~=Owner then
                    return
                end
            end
            text=getArgs(text:sub(2))
            if text[1]=="start" then
                sleep(1000)
                cekow()
            elseif text[1]=="bait" then
                say("Using "..bait_name.."")
            elseif text[1] == "roles" then
                say("roles feature is"..string.upper(tostring(fitur_roles)).."")
            elseif text[1] == "bpbait" then
                say("Bait in backpack is "..findItem(Id_Bait).."")
            end
        end
    end
end

----[[LIBRARY WEBHOOK]]---
function webhook_konek()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().." \n\0\n <:megaphone:1054555216772612157> | Information : Bot connected....\n\0\n")
    sleep(250)
end

function webhook_diskonek()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:megaphone:1054555216772612157> | Information : Bot disconnected...\n\0\n")
    sleep(250)
end

function webhook_ercon()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.."\n\0\n <:megaphone:1054555216772612157> | Information : Bot time out, Eror Connection....\n\0\n")
    sleep(250)
end

function webhook_loginfail()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n\0\n <:megaphone:1054555216772612157> | Information : Login failed, Retrying...\n\0\n")
    sleep(250)
end

function webhook_failcaptcha()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.."\n\0\n <:megaphone:1054555216772612157> | Information : Solving Captcha Failed, Reconnect....\n\0\n")
    sleep(250)
end

function webhook_mulai()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:fosilrock:1054554265001136148> | Fossil : "..CheckFossil().."\n "..emotebait.." | Bot Bait : "..findItem(Id_Bait).."\n\0\n <:megaphone:1054555216772612157> | Information : Script Dimulai....\n\0\n")
    sleep(250)
end

function webhook_erorsc()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:fosilrock:1054554265001136148> | Fossil : "..CheckFossil().."\n "..emotebait.." | Bot Bait : "..findItem(Id_Bait).."\n\0\n <:megaphone:1054555216772612157> | Information : Fatal Eror, Repairing....\n\0\n")
    sleep(250)
end

function webhook_dropdeco()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:TreeDeco:1054329454886920262> | Tree Decoration : "..findItem(treedeco).."\n <:TreeDeco:1054329454886920262> | Tree Decoration Dropped : "..deco_dropped.."\n <:TreeDeco:1054329454886920262> | Tree Decoration Total : "..gs(treedeco).."\n\0\n <:megaphone:1054555216772612157> | Information : Droping Tree decoration....\n\0\n")
    sleep(250)
end

function webhook_ambilbait()
    sleep(250)
    powershell("\0\n <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n "..emotebait.." | Bot Bait : "..findItem(Id_Bait).."\n "..emotebait.." | Bait in World : "..gs(Id_Bait).." \n\0\n <:megaphone:1054555216772612157> | Information : Taking bait.....\n\0\n")
    sleep(250)
end

function webhook_balikmancing()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:fosilrock:1054554265001136148> | Fossil : "..CheckFossil().."\n "..emotebait.." | Bot Bait : "..findItem(Id_Bait).."\n\0\n <:megaphone:1054555216772612157> | Information : Continuing fishing.....\n\0\n")
    sleep(250)
end

function webhook_dropwiggly()
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().." \n <:fosilrock:1054554265001136148> | Fossil : "..CheckFossil().." \n <:wormbait:1054329197679628369> | Bot Bait : "..findItem(Id_Bait).."\n <:TreeDeco:1054329454886920262> | Tree Decoration : "..findItem(treedeco).."\n\0\n <:shinybait:1055667674190975058> | Shinny Flashy Thingy : "..gs(3012).."\n <:fishnet:1056389692934869013> | Fishnet Stocking : "..gs(344).."\n <:fishlanding:1056390555279577158> | Fish Landing Platform : "..gs(8964).."\n <:perch:1056391136320696390> | Perch : "..gs(3028).."\n <:Seaweed:1056391815068139580> | Seaweed : "..gs(846).."\n\0\n <:megaphone:1054555216772612157> | Information : Droping fishing item....\n\0\n")
end

function webhook_dropshiny()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:Seaweed:1056391815068139580> | **Seaweed :** **"..gs(846).."\n <:fishbowl:1056393864644132934> | **Fishbowl :** **"..gs(444).."\n <:Stollfish:1056399743607119872> | **Fishing Stool :** **"..gs(8966).."**\n <:perch:1056391136320696390> | **Perch :** **"..gs(3028).."\n <:eel:1056400591452123166> | **Electric Eel :** **"..gs(3022).."**\n <:salmonbait:1055667672479703070> | Salmon Egg : "..gs(3014).."\n\0\n <:megaphone:1054555216772612157> | Information : Droping fishing item....\n\0\n")
    sleep(250)
end

function webhook_dropsalmon()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:flybait:1055667670290276382> | Fishing Fly : "..gs(3016).."\n <:fishnet:1056389692934869013> | Fishnet Stocking : "..gs(344).."\n <:fishlanding:1056390555279577158> | Fish Landing Platform : "..gs(8964).."\n <:gshark:1056394489968721992> | Great White Shark : "..gs(1520).."\n <:trout:1056394492019744788> | Battle Trout : "..gs(1542).."\n <:lantern:1056394494112698438> | Sea Lantern : "..gs(8256).."\n <:Seaweed:1056391815068139580> | Seaweed : "..gs(846).."\n <:fishbowl:1056393864644132934> | Fishbowl : "..gs(444).."\n\0\n <:megaphone:1054555216772612157> | Information : Droping fishing item....\n\0\n")
    sleep(250)
end

function webhook_dropfly()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:shrimpbait:1055667668100845668> | Shrimp Lure : "..gs(3018).."\n <:trout:1056394492019744788> | Battle Trout : "..gs(1542).."\n <:jellyfish:1056397717624070144> | Jellyfish : "..gs(1522).."\n <:fishlanding:1056390555279577158> | Fish Landing Platform : "..gs(8964).."\n <:lantern:1056394494112698438> | Sea Lantern : "..gs(8256).."\n <:shielddfragment:1056398414310539315> | Shield Fragment : "..gs(3184).."\n <:trout:1056394492019744788> | Battle Trout : "..gs(1542).."\n <:fishnet:1056389692934869013> | Fishnet Stocking : "..gs(344).."\n\0\n <:megaphone:1054555216772612157> | Information : Droping fishing item....\n\0\n")
    sleep(250)
end

function webhook_dropshrimp()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:Stollfish:1056399743607119872> | Fishing Stool : "..gs(8966).."\n <:fishnet:1056389692934869013> | Fishnet Stocking : "..gs(344).."\n <:jellyfish:1056397717624070144> | Jellyfish : "..gs(1522).."\n <:eel:1056400591452123166> | Electric Eel : "..gs(3022).."\n <:wallmount:1056401087386632282> | Fish Wall Mount : "..gs(3810).."\n <:Lobster:1056402004034981908> | Lobster Trap : "..gs(3448).."\n <:EZrod:1056402540108980224> | E-Z Rod : "..gs(3008).."\n <:shielddfragment:1056398414310539315> | Shield Fragment : "..gs(3184).."\n\0\n <:megaphone:1054555216772612157> | Information : Droping fishing item....\n\0\n")
    sleep(250)
end

function webhook_dropmegapellet()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:coolbox:1063055843114897408> | Cooler Box : "..gs(8968).."\n <:davychest:1063055838857662505> | Davy Jones Chest : "..gs(5618).."\n <:fancywall:1063055836504674394> | Fancy Fishh Wall Mount : "..gs(5624).." <:icecrush:1063055830724907098> | Ice Crust Block : "..gs(5602).."\n <:pufferblock:1063055826903912508> | Puffer Fish Block : "..gs(5614).."\n <:urchin:1063055821417742466> | Sea Urchin : "..gs(8252).."\n <:queenshell:1063055817751928873> | Queen Conch Shell "..gs(5616).."\n <:cavecrystal:1063055833056940083> | Aqua Cave Crystal "..gs(3584).."\n\0\n <:megaphone:1054555216772612157> | **Information** : Droping fishing item....\n\0\n")
    sleep(250)
end

function webhook_dropuranium()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:copper:1063061771352543293> | Chooper Block : "..gs(8254).."\n <:radsign:1063061765463748608> | Radiation Sign : "..gs(5622).."\n <:radblock:1063061769314119731> | Radiation Block : "..gs(5620).."\n <:beardtenta:1063061761076498472> | Tentacle Beard : "..gs(5612).."\n <:cavecrystal:1063055833056940083> | Aqua Cave Crystal : "..gs(3584).."\n\0\n  <:megaphone:1054555216772612157> | **Information** : Droping fishing item....\n\0\n")
    sleep(250)
end

function webhook_droproles()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().."\n\0\n <:aqua:1055383249720983562> | Aquamarine Stone : "..gs(6986).."\n <:Ooze:1056405259418878062> | Primordial Ooze : "..gs(6988).."\n <:SeaSponge:1056405224639701035> | Sea Sponge : "..gs(6992).."\n <:OilSlick:1056405222618058772> | Oil Slick : "..gs(7158).."\n <:Navalmine:1056405220592205894> | Naval Mine : "..gs(6994).."\n <:mint:1056405218079805551> | Mint : "..gs(6998).."\n <:quantumstar:1056405216167202888> | Quantum Starfish : "..gs(7002).."\n\0\n <:megaphone:1054555216772612157> | Information : Droping Roles item....\n\0\n")
    sleep(250)
end

function webhook_suspend()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().." \n\0\n <:megaphone:1054555216772612157> | Information : Bot **SUSPENDED**....\n\0\n")
    sleep(250)
end

function webhook_banned()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().." \n\0\n <:megaphone:1054555216772612157> | Information : Bot **BANNED**....\n\0\n")
    sleep(250)
end

function webhook_cursed()
    sleep(250)
    powershell(" <:ExcellentGT:970324153003552769> | Bot Name : "..getBot().name.." \n <:monitorgt:986523288383680512> | Bot Status : "..getBot().status.." \n <:globe:1054553519790772296> | Curent World : "..getBot().world.." \n <:budyedit:1054555975140515870> | Player in World : "..Jumlah_Player().." \n\0\n <:megaphone:1054555216772612157> | Information : Bot **CURSED**....\n\0\n")
    sleep(250)
end

----[[FUNGSI PENDUKUNG]]----
function checktrash()
    if trashoption == true then
        trashfish()
    end
end

function checkdeco()
    if fitur_treedeco == true then
        if findItem(treedeco) >= batas_jumlah_treedeco then
            sleep(500)
            stopFishing()
            sleep(100)
            dropdeco()
            sleep(100)
            webhook_dropdeco()
            balik()
        end
    end
end

function checkbait()
    if findItem(Id_Bait) < batas_bait then
        sleep(100)
        stopFishing()
        sleep(100)
        ambilbait()
        sleep(500)
        webhook_ambilbait()
        balik()
    end
end

function checkbarangfish()
    for index, barangfish in pairs(list_barang_fishing) do
        if findItem(list_barang_fishing[index]) >= batas_barang_fishing then
            stopFishing()
            sleep(100)
            droplist_barang_fishing()
            balik()
        end
    end
end

function checkroles()
    if fitur_roles == true then
        for index, barangroles in pairs(list_barang_roles) do
            if findItem(list_barang_roles[index]) >= batas_jumlah_roles then
                sleep(100)
                stopFishing()
                sleep(100)
                droproles()
                webhook_droproles()
                balik()
            end
        end
    end
end

function checkiceandura()
    if fitur_auto_drilldeto == true then
        local ice_crush = 5602
        local uranium_block = 4658
        local hand_drill = 5522
        local detonator = 5524
        for _, tile in pairs(getTiles()) do
            if tile.fg == ice_crush and getTile(math.floor(getBot().x/32)+1,math.floor(getBot().y/32)+1).fg == ice_crush and tile.flag == 1 then 
                sleep(500)
                place(hand_drill,1,1)
                goto endice
            elseif tile.fg == ice_crush and getTile(math.floor(getBot().x/32)-1,math.floor(getBot().y/32)+1).fg == ice_crush and tile.flag == 1 then
                sleep(500)
                place(hand_drill,-1,1)
                goto endice
            elseif tile.fg == uranium_block and getTile(math.floor(getBot().x/32)+1,math.floor(getBot().y/32)+1).fg == uranium_block and tile.flag == 1 then 
                sleep(500)
                place(detonator,1,1)
                goto endice
            elseif tile.fg == uranium_block and getTile(math.floor(getBot().x/32)-1,math.floor(getBot().y/32)+1).fg == uranium_block and tile.flag == 1 then 
                sleep(500)
                place(detonator,-1,1)
                goto endice
            end
        end
    end
    ::endice::
end

function counterspecialrod()
    if Id_Rod == 3100 then
        local growg = string.upper(getBot().world)
        if "GROWGANOTH" in growg then
            repeat 
                balik()
                sleep(5000)
            until getBot().world == world_mancing
        elseif getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).fg == 6 or getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).bg  == 6 then
            while getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).fg == 6 or getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).bg  == 6 do
                balik()
                sleep(3000)
            end
        end
    elseif Id_Rod == 5740
        if getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).fg == 6 or getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).bg  == 6 then
            while getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).fg == 6 or getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).bg  == 6 do
                balik()
                sleep(3000)
            end
        end
    end
end


function usefood()
    if auto_food == true and os.time() == waktuberikutnya then
        waktuberikutnya = os.time() + delayuse_food
        useitem(foodbuff,0,0)
    end
end


function mainfishing()
    usefood()
    counterspecialrod()
    checktrash()
    checkdeco()
    checkbait()
    checkbarangfish()
    checkroles()
    checkiceandura()
end

function safefailure()
    if getBot().status ~= "online" then -- check the current status
        if getBot().status == "offline" then -- if offline then send webhook and start loop
            webhook_diskonek()
            local count = 0
            if getBot().status == "suspended" then
                webhook_suspend()
                removeBot(getBot().name)
                return
            elseif getBot().status == "temporary banned" then
                webhook_banned()
                removeBot(getBot().name)
                return
            elseif getBot().world == "HELL" then
                webhook_cursed()
                removeBot(getBot().name)
                return
            end
            while getBot().status == "offline" do -- if bot status still offline, it will repeatedly check current bot status
                connect()
                sleep(7000)
                count = count + 1
                if getBot().status == "online" then -- if bot status is online then, sending webhook that the bot is connected, and then break the loop
                    webhook_konek()
                    balik()
                    break
                
                elseif count == 12 and getBot().status == "offline" then -- if bot status still offline after 12 loop, then sending webhook massage that the bot is eror and being terminated
                    webhook_ercon()
                    removeBot(getBot().name)
                
                elseif getBot().status == "login fail" then -- if bot status is login fail, trying to reconnect it under infinite loop until the bot status is online. after it is online, it will break the loop and then go the next instruction
                    webhook_loginfail()
                    while getBot().status == "login fail" do
                        repeat
                            connect()
                            sleep(10000) 
                        until getBot().status == "online"
                    end
                    if getBot().status == "online" then -- if bot is online after the infinite loop, it will send webhook msg and then back to the original position with balik() function
                        webhook_konek()
                        balik()
                    end
                end
            end
        elseif getBot().status == "login fail" then -- additional safe failure, if the login fail it will repeat connect function until the bot status is online
            webhook_loginfail()
            while getBot().status == "login fail" do
                repeat
                    connect()
                    sleep(10000) 
                until getBot().status == "online"
            end
            if getBot().status == "online" then
                webhook_konek()
                balik()
            end
        end
    end
    if getBot().captcha == "Couldn't solve" then
        webhook_failcaptcha()
        repeat 
            disconnect()
            sleep(5000)
            connect()
            sleep(15000)
        until getBot().captcha ~= "Couldn't solve"
        if getBot().status == "online" then
            sleep(2000)
            webhook_konek()
            balik()
        end
    end
    if getBot().status == "online" and getBot().world == "EXIT" then
        webhook_erorsc()
        sleep(500)
        balik()
        if getBot().status == "online" and getBot().world ~= "EXIT" then 
            webhook_balikmancing()
        end
    end
    if getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).fg == 6 or getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).bg  == 6 then
        sleep(500)
        webhook_erorsc()
        sleep(500)
        balik()
    end
    if getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).fg ~= Pos_Block_fishing or getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).bg ~= Pos_Block_fishing then
        while getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).fg ~= Pos_Block_fishing or getTile(math.floor(getBot().x)/32,math.floor(getBot().y)/32).bg ~= Pos_Block_fishing do
            balik()
            sleep(3000)
        end
    end
end

function utama()
    while true do
        safefailure()
        mainfishing()
    end
end

function autoaddbot()
    if fitur_auto_addbot == true then
        if fitur_proxy == true then
            for _, v in pairs(ListBot) do
                addBot(v.username, v.password, ListProxy_num[v.proxy_num])
                sleep(DelayLogin * 1000)
            end
        elseif fitur_proxy == false then
            for _, v in pairs(ListBot) do
                addBot(v.username, v.password)
                sleep(DelayLogin * 1000)
            end
        end
    end
end

function check_status_autobot()
    if getBot().status ~= "online" then
        local count = 0
        if getBot().status == "suspended" then
            webhook_suspend()
            removeBot(getBot().name)
            return
        elseif getBot().status == "temporary banned" then
            webhook_banned()
            removeBot(getBot().name)
            return
        elseif getBot().world == "HELL" then
            webhook_cursed()
            removeBot(getBot().name)
            return
        end
        if getBot().status == "offline" then
            while getBot().status == "offline" do
                connect()
                sleep(15000)
                count = count + 1
                if count == 3 and getBot().status == "offline" then
                    sleep(1000)
                    webhook_ercon()
                    sleep(1000)
                    removeBot(getBot().name)
                    return
                end
            end
        elseif getBot().status == "login fail" then
            while getBot().status == "login fail" do
                connect()
                sleep(7000)
            end
        end
    end
end

-----[[LIBRARY ITEM FISHING DARI BAIT]]-----

-----[[EXECUTE]]----
sleep(1000)
addHook("cmds", cmds)
sleep(1000)
autoaddbot()
sleep(2000)
check_status_autobot()
if getBot().status == "online" then
    join()
    sleep(2000)
    stopFishing()
    sleep(1000)
    say("Sc By ReGeneral")
    webhook_mulai()
end
