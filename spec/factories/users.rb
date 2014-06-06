FactoryGirl.define do

	factory(:user) do
		email "testuser@test.com"
		password "ironyard"
		password_confirmation 