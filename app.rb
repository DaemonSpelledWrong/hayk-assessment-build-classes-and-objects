# frozen_string_literal: true

require 'pry'
# class for building a building
class Building
  attr_accessor :name, :number_of_tenants
  attr_reader :address
  @@all = []

  def initialize(name, number_of_tenants, address, number_of_floors)
    @name = name
    @number_of_tenants = number_of_tenants
    @address = address
    @number_of_floors = number_of_floors
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_tenants
    (@@all.reduce(0) { |total, building| total += building.number_of_tenants }.to_f / @@all.length).round
  end

  def name_address
    @name
    @address
  end

  def tenants_per_floor
    @number_of_tenants / @number_of_floors
  end
end

apartment_complex = Building.new('Lakeshore', 69, '2268 Woodview', 10)
puts apartment_complex.tenants_per_floor

new_structure = Building.new('TBD', 0, '404 Error', 17)
puts new_structure.name_address

poop_castle = Building.new('Shitty Palace', 420, 'Get Better At Naming', 200)
puts poop_castle.address

puts Building.average_tenants
