class CasesController < ApplicationController

  require 'highrise.rb'
  
  
  Highrise::Base.site = 'https://noodleeducation.highrisehq.com'
  Highrise::Base.user = '8d4952b0a4b585ac1140b5fc2c358aa8'
  Highrise::Base.format = :xml
  def index
    @tasks = Highrise::Task.find(:all)
    @people = Highrise::Person.find(:all)
    @chores = Highrise::Kase.find(:all, :order => :created_at)
    @chores.sort!{|a,b| a.created_at <=> b.created_at}
  end
end

