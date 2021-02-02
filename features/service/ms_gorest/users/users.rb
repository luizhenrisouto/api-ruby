module Users
  class Rest
    include HTTParty

    base_uri URL[AMBIENTE]['ms-gorest'] + ENDPOINT['users']
    def users_name_get(params)
      response = self.class.get("?name=#{params['name']}",
                                headers: {
                                    'Content-Type' => 'application/json',
                                })
      response
    end

    def users_id_get
      response = self.class.get("/#{$id_user}/posts",
                                headers: {
                                    'Content-Type' => 'application/json',
                                })
      response
    end
  end
end
