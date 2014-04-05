local class = require 'lib/middleclass'

local PositionComponent = require 'lib/PositionComponent'
local VelocityComponent = require 'lib/VelocityComponent'

Player = class('Player')

function Player:initialize(canvas, x, y)
	self.canvas = canvas
	self.position = PositionComponent:new(x,y)
	self.velocity = VelocityComponent:new()
end

function Player:updateInputs( dt )
	self.velocity.x = 0
	self.velocity.y = 0

	if love.keyboard.isDown("right") then
		self.velocity.x = self.velocity.x + 500 
	end
	if love.keyboard.isDown("left") then
		self.velocity.x = self.velocity.x - 500 
	end
	if love.keyboard.isDown("up") then
		self.velocity.y = self.velocity.y - 500 
	end
	if love.keyboard.isDown("down") then
		self.velocity.y = self.velocity.y + 500 
	end

end


return Player