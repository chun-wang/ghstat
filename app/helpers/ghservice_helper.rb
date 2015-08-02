module GhserviceHelper
	# Provide authentication credentials
	Octokit.configure do |c|
	  c.login = 'scapewang'
	  c.password = 'w3232004'
	end

	class << self
		def users_in_orgs(orgs)
			users = Array.new();
			orgs.each do |organization|
				begin
					org = Octokit.org "#{organization}"
					org_rels = org.rels[:members].get
					users.concat get_datas_from_all_pages(org_rels)

				rescue Exception => e
					puts e
				end
			end
			return slayers_to_hash(users)
		end

		def get_datas_from_all_pages(slayerResp)
			datas = slayerResp.data
			while slayerResp.rels[:next]
				slayerResp = slayerResp.rels[:next].get
				datas.concat slayerResp.data
			end

			return datas
		end

		def slayers_to_hash(array_data)
			array_data.each_index do |index|
				array_data[index] = array_data[index].to_hash
			end
		end
		
	end

end
