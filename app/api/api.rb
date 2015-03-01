class API < Grape::API
  format :json
  default_format :json
  prefix "api"
  version "v1", using: :path

  resource 'toilets' do
    get do
      Toilet.all 
    end
  end
end
