class WeaponSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :heros
end
