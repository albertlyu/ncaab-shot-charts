class HomeController < ApplicationController
  def index
    @confs = Team.where("team_div = 'divia'").select(:team_conf).distinct.order("team_conf ASC")
  	@teams = Team.where("team_name != '' and team_div = 'divia'").order("team_name ASC")
  end
end
