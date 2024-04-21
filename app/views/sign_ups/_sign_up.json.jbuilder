json.extract! sign_up, :id, :date, :notes, :kid_id, :campain_id, :created_at, :updated_at
json.url call_url(sign_up, format: :json)
