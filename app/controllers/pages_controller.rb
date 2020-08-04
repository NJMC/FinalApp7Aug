class PagesController < ApplicationController

  def home
  end


  def user_profile
    @regional_profiles_cork = RegionalProfile.find_by_id(1)
    @regional_profiles_dublin = RegionalProfile.find_by_id(2)
    @regional_profiles_galway = RegionalProfile.find_by_id(3)
    @regional_profiles_waterford = RegionalProfile.find_by_id(4)
    @regional_profiles_limerick = RegionalProfile.find_by_id(5)
  end
  
  
  def regions
    @regional_profiles_cork = RegionalProfile.find_by_id(1)
    @regional_profiles_dublin = RegionalProfile.find_by_id(2)
    @regional_profiles_galway = RegionalProfile.find_by_id(3)
    @regional_profiles_waterford = RegionalProfile.find_by_id(4)
    @regional_profiles_limerick = RegionalProfile.find_by_id(5)
  end
  
end
