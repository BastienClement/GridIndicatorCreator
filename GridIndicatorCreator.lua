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

local _, GIC = ...

local GridFrame = Grid:GetModule("GridFrame");

local GridIndicatorCreator = GridFrame:NewModule("GridIndicatorCreator")
GIC.GridIndicatorCreator   = GridIndicatorCreator

GridIndicatorCreator.SharedMedia     = LibStub("LibSharedMedia-3.0")
GridIndicatorCreator.SmoothStatusBar = LibStub("LibSmoothStatusBar-1.0", true)

local settings

GridIndicatorCreator.defaultDB = {
	GridIndicatorCreator = {
		
	}
}

Grid.options.args["GridIndicatorCreator"] = {
	type = "group",
	name = "Indicator Creator",
	desc = "Manage additional indicators",
	order = 2,
	args = {
	}
}

-------------------------------------------------------------------------------

function GridIndicatorCreator:OnInitialize()
	GridFrame:RegisterModule("GridIndicatorCreator", self)
	
	hooksecurefunc(GridFrame, "InitializeFrame", self.InitializeFrame)
	hooksecurefunc(GridFrame, "UpdateOptionsForIndicator", self.UpdateOptionsForIndicator)
	
	hooksecurefunc(GridFrame.prototype, "SetIndicator", self.SetIndicator)
	hooksecurefunc(GridFrame.prototype, "ClearIndicator", self.ClearIndicator)
	
	settings = GridIndicatorCreator.db.profile.GridIndicatorCreator
end

function GridIndicatorCreator:OnEnable()
end

function GridIndicatorCreator:OnDisable()
end

function GridIndicatorCreator:Reset()
end

function GridIndicatorCreator:InitializeFrame(frame)
	-- NYI
end

function GridIndicatorCreator:UpdateOptionsForIndicator(indicator, name, order)
	local menu = Grid.options.args.GridIndicator.args
	-- NYI
end

function GridIndicatorCreator:SetIndicator(indicator, color, text, value, maxValue, texture, start, duration, stacks)
	-- NYI
end

function GridIndicatorCreator:ClearIndicator(indicator)
	-- NYI
end
