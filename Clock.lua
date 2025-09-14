local frame = CreateFrame("Frame", "Clock", UIParent)
frame:ClearAllPoints()
frame:SetWidth(115)
frame:SetHeight(25)
frame:SetPoint("CENTER", 0, -180)
frame.text = frame:CreateFontString("Status", "LOW", "GameFontNormal")
frame.text:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")
frame.text:ClearAllPoints()
frame.text:SetAllPoints(frame)
frame.text:SetPoint("CENTER", 0, 0)
frame.text:SetFontObject(GameFontWhite)
frame:SetScript("OnUpdate", function()
  this.text:SetText(date("%I:%M:%S %p"))
end)

frame:SetMovable(true)
frame:EnableMouse(true)
frame:SetScript("OnMouseDown", function(self, frame)
  if frame == "LeftButton" and IsControlKeyDown() then
    self:StartMoving()
  end
end)

frame:SetScript("OnMouseUp", function(self, frame)
  if frame == "LeftButton" then
    self:StopMovingOrSizing()
    self:SetUserPlaced(true)
  end
end)
