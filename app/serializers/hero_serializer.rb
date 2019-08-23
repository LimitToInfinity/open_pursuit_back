class HeroSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :weapon, :hero_attributes

  attribute :powers do |hero|
    hero.powers.map do |power|
      PowerSerializer.new(power)
    end
  end

end
