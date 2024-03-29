--[[
    vRP 2.0 Base Scripts
    Copyright C 2018~2019  Dione B. ~ A.K.A: @StrykeONE

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

fx_version 'cerulean'
games {'gta5'}
name 'Boilerplate for vRP 2.0'
description 'Example Extension for vRP 2.0'
author 'Dione B.'
version '1.0.0'



client_scripts{
	"@vrp/lib/utils.lua",
	"client_vrp.lua"
}
server_scripts{ 
	"@vrp/lib/utils.lua",
	"server_vrp.lua"
}
files{
	"client/cl.lua"
}
