--[[
	Copyright (c) 2013 Bastien Clément

	Permission is hereby granted, free of charge, to any person obtaining a
	copy of this software and associated documentation files (the
	"Software"), to deal in the Software without restriction, including
	without limitation the rights to use, copy, modify, merge, publish,
	distribute, sublicense, and/or sell copies of the Software, and to
	permit persons to whom the Software is furnished to do so, subject to
	the following conditions:

	The above copyright notice and this permission notice shall be included
	in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
	OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
	MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
	IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
	CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
	TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
	SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]

if not Grid or not LibStub then
	return
end

local _, GIS = ...

local GridFrame = Grid:GetModule("GridFrame");

local GridIndicatorStudio = GridFrame:NewModule("GridIndicatorStudio")
GIS.GridIndicatorStudio   = GridIndicatorStudio

GridIndicatorStudio.SharedMedia     = LibStub("LibSharedMedia-3.0")
GridIndicatorStudio.SmoothStatusBar = LibStub("LibSmoothStatusBar-1.0", true)

local settings

GridIndicatorStudio.defaultDB = {
	GridIndicatorStudio = {
		
	}
}

Grid.options.args["GridIndicatorStudio"] = {
	type = "group",
	name = "Indicator Studio",
	desc = "Manage additional indicators",
	order = 2,
	args = {
	}
}

-------------------------------------------------------------------------------

function GridIndicatorStudio:OnInitialize()
	GridFrame:RegisterModule("GridIndicatorStudio", self)
	
	hooksecurefunc(GridFrame, "InitializeFrame", self.InitializeFrame)
	hooksecurefunc(GridFrame, "UpdateOptionsForIndicator", self.UpdateOptionsForIndicator)
	
	hooksecurefunc(GridFrame.prototype, "SetIndicator", self.SetIndicator)
	hooksecurefunc(GridFrame.prototype, "ClearIndicator", self.ClearIndicator)
	
	settings = GridIndicatorStudio.db.profile.GridIndicatorStudio
end

function GridIndicatorStudio:OnEnable()
end

function GridIndicatorStudio:OnDisable()
end

function GridIndicatorStudio:Reset()
end

function GridIndicatorStudio:InitializeFrame(frame)
	-- NYI
end

function GridIndicatorStudio:UpdateOptionsForIndicator(indicator, name, order)
	local menu = Grid.options.args.GridIndicator.args
	-- NYI
end

function GridIndicatorStudio:SetIndicator(indicator, color, text, value, maxValue, texture, start, duration, stacks)
	-- NYI
end

function GridIndicatorStudio:ClearIndicator(indicator)
	-- NYI
end
