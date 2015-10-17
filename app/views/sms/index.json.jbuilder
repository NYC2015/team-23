json.array!(@sms) do |sm|
  json.extract! sm, :id, :from, :to, :body, :user_id
  json.url sm_url(sm, format: :json)
end
