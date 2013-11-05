Registrant.destroy_all
User.destroy_all

Registrant.create([
	{
		id: SecureRandom.urlsafe_base64,
		email: "bill@me.com",
		expires_at: Time.now + 4.hours
		},
		{
			id: SecureRandom.urlsafe_base64,
			email: "bob@me.com",
			expires_at: Time.now + 4.hours
			},
			{
				id: SecureRandom.urlsafe_base64,
				email: "biff@me.com",
				expires_at: Time.now + 4.hours
			}

			])

User.create([
	{
		id: SecureRandom.urlsafe_base64,
		name: "cab",
		email: "cab@me.com",
		password: "123",
		password_confirmation: "123"
		},
		{
			id: SecureRandom.urlsafe_base64,
			name: "name",
			email: "name@me.com",
			password: "123",
			password_confirmation: "123"
			},
			{
				id: SecureRandom.urlsafe_base64,
				name: "cad",
				email: "cad@me.com",
				password: "123",
				password_confirmation: "123"
				},


				])