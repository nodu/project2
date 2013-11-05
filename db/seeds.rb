Registrant.destroy_all
User.destroy_all
Gift.destroy_all

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

users = User.create([
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
				}


				])

Gift.create([
	{
		id: SecureRandom.urlsafe_base64,
		title: "Pen Set",
		description: "Pen set I got, but don't want. It writes, I think.",
		category: "stationary",
		picture: "/path/to/pen_img.jpg",
		user: users[0]
		},
		{
			id: SecureRandom.urlsafe_base64,
		title: "Tea Set",
		description: "English Tea set",
		category: "kitchen",
		picture: "/path/to/tea_img.jpg",
		user: users[0]
		},
		{
		id: SecureRandom.urlsafe_base64,
		title: "Clown Mask",
		description: "Fucking creepy clown mask, who the hell gives this as a gift?!",
		category: "other",
		picture: "/path/to/clown_img.jpg",
		user: users[1]
		},
			{
		id: SecureRandom.urlsafe_base64,
		title: "Deer Head",
		description: "I like shootin' but this dear head is evil.",
		category: "other",
		picture: "/path/to/deer_img.jpg",
		user: users[1]
		},
		{
		id: SecureRandom.urlsafe_base64,
		title: "Flower print dinnerware",
		description: "Dinnerware with pink flowers.",
		category: "kitchen",
		picture: "/path/to/dinnerware_img.jpg",
		user: users[2]
		},
		{
		id: SecureRandom.urlsafe_base64,
		title: "Green Handbag",
		description: "This handbag goes with none of my clothes, it's nice tho.",
		category: "clothes",
		picture: "/path/to/bag_img.jpg",
		user: users[2]
		}

				])