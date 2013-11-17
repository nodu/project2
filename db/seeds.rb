Registrant.destroy_all
User.destroy_all
Gift.destroy_all
Avatar.destroy_all
Message.destroy_all

Registrant.create([
	{
		# id: SecureRandom.urlsafe_base64,
		email: "bill@me.com",
		expires_at: Time.now + 4.hours
		},
		{
			# id: SecureRandom.urlsafe_base64,
			email: "bob@me.com",
			expires_at: Time.now + 4.hours
			},
			{
				# id: SecureRandom.urlsafe_base64,
				email: "biff@me.com",
				expires_at: Time.now + 4.hours
			}

			])

users = User.create([
	{
		# id: SecureRandom.urlsafe_base64,
		name: "cab",
		email: "cab@me.com",
		password: "123",
		password_confirmation: "123"
		},
		{
			# id: SecureRandom.urlsafe_base64,
			name: "name",
			email: "name@me.com",
			password: "123",
			password_confirmation: "123"
			},
			{
				# id: SecureRandom.urlsafe_base64,
				name: "cad",
				email: "cad@me.com",
				password: "123",
				password_confirmation: "123"
				}


				])

gifts = Gift.create([
	{
		# id: SecureRandom.urlsafe_base64,
		title: "Pen Set",
		description: "Pen set I got, but don't want. It writes, I think.",
		category: "stationary",
		user: users[0]
		},
		{
			# id: SecureRandom.urlsafe_base64,
		title: "Tea Set",
		description: "English Tea set",
		category: "kitchen",
		user: users[0]
		},
		{
		# id: SecureRandom.urlsafe_base64,
		title: "Clown Mask",
		description: "Fucking creepy clown mask, who the hell gives this as a gift?!",
		category: "other",
		user: users[1]
		},
			{
		# id: SecureRandom.urlsafe_base64,
		title: "Deer Head",
		description: "I like shootin' but this dear head is evil.",
		category: "other",
		user: users[1]
		},
		{
		# id: SecureRandom.urlsafe_base64,
		title: "Flower print dinnerware",
		description: "Dinnerware with pink flowers.",
		category: "kitchen",
		user: users[2]
		},
		{
		# id: SecureRandom.urlsafe_base64,
		title: "Green Handbag",
		description: "This handbag goes with none of my clothes, it's nice tho.",
		category: "clothes",
		user: users[2]
		},
		{
		title: "Veggie Brush",
		description: "Here is a veggie brush.",
		category: "kitchen",
		user: users[2]
		}


				])
Avatar.create([
	{
		image: File.open(File.join(Rails.root, '/public/uploads/avatar/image/528042169d6dec8ddc00001d/pen-set.jpg')),
		gift: gifts[0]
	},
	{
		image: File.open(File.join(Rails.root, '/public/uploads/avatar/image/528042279d6dec2bb5000021/tea-set.jpg')),
		gift: gifts[1]
	},
	{
		image: File.open(File.join(Rails.root, '/public/uploads/avatar/image/5280409f9d6deca8f900000d/clown-mask.jpeg')),
		gift: gifts[2]
	},
	{
		image: File.open(File.join(Rails.root, '/public/uploads/avatar/image/528040b69d6dec6929000011/deerhead.jpg')),
		gift: gifts[3]
	},
	{
		image: File.open(File.join(Rails.root, '/public/uploads/avatar/image/528040dd9d6dec8057000015/flower-print-plate.jpeg')),
		gift: gifts[4]
	},
	{
		image: File.open(File.join(Rails.root, '/public/uploads/avatar/image/5280420a9d6dec4623000019/green-handbag.jpeg')),
		gift: gifts[5]
	},
	{
		image: File.open(File.join(Rails.root, '/public/uploads/avatar/image/528042359d6dec9e9b000025/veggie-brush.jpg')),
		gift: gifts[6]
	}
	])


Message.create([
{
	message: "hey #{gifts[0].user.name}, I'm #{users[1].name} and I want your Pen Set, do you want any of my shit?",
	gift: gifts[0],
	sent_from: users[1].id,
	user: users[0]
},
{
	message: "Hi #{gifts[2].user.name}, I'm #{users[2].name} I want your Clown Mask",
	gift: gifts[2],
	sent_from: users[2].id,
	user: users[1]
},
{
	message: "hey #{gifts[6].user.name}, I'm #{users[1].name} and I want your veggie-brush, want to trade?",
	gift: gifts[6],
	sent_from: users[1].id,
	user: users[0]
},
{
	message: "Hi #{gifts[2].user.name}, I'm #{users[0].name} I want your Clown Mask",
	gift: gifts[2],
	sent_from: users[0].id,
	user: users[2]
}



	])
