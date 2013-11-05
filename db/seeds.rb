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

id1 = SecureRandom.urlsafe_base64
id3 = SecureRandom.urlsafe_base64
id2 = SecureRandom.urlsafe_base64
User.create([
	{
		id: id1,
		name: "cab",
		email: "cab@me.com",
		password: "123",
		password_confirmation: "123"
		},
		{
			id: id2,
			name: "name",
			email: "name@me.com",
			password: "123",
			password_confirmation: "123"
			},
			{
				id: id3,
				name: "cad",
				email: "cad@me.com",
				password: "123",
				password_confirmation: "123"
				},


				])

Gift.create([
	{
		title: "Pen Set",
		description: "Pen set I got, but don't want. It writes, I think.",
		category: "stationary",
		picture: "/path/to/pen_img.jpg",
		user_id: id1
		},
		{
		title: "Clown Mask",
		description: "Fucking creepy clown mask, who the hell gives this as a gift?!",
		category: "other",
		picture: "/path/to/clown_img.jpg",
		user_id: id2
		},
		{
		title: "Flower print dinnerware",
		description: "Dinnerware with pink flowers.",
		category: "kitchen",
		picture: "/path/to/dinnerware_img.jpg",
		user_id: id3
		}

				])