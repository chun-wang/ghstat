class GhserviceController < ApplicationController
	def users
		org = params[:organization] || 'github'

		user_list = GhserviceHelper::users_in_orgs [org]

		orgs = Organization.all()
		puts "organizations:"+orgs.first.name

		respond_to do |format|
			format.json { render :json => user_list.to_json }
		  	format.xml { render :xml => user_list.to_xml }
		  	format.any { render :text => "WTF" }
		end
	end
end
