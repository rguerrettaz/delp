Topic.create(name: "Food")

Category.create(topic_id: 1, name: "Pizza")
Category.create(topic_id: 1, name: "Mexican")
Category.create(topic_id: 1, name: "Chinese")
Category.create(topic_id: 1, name: "Sushi")
Category.create(topic_id: 1, name: "Burgers")
Category.create(topic_id: 1, name: "Sandwiches")
Category.create(topic_id: 1, name: "Ethnic Eats")
Category.create(topic_id: 1, name: "Other")



Restaurant.create(name: "pasilla", address: "359 Kearny St", phone: "(415) 989-8077", hours: "Mon-Fri 10 am - 8 pm", price_range: 1 )
Restaurant.create(name: "chipotle", address: "211 Sutter St", phone: "(415) 590-4199", hours: "Mon-Sun 11 am - 10 pm", price_range: 1, website: "http://www.chipotle.com/" )

Cohort.create(name: "Sea Lions")
Cohort.create(name: "Banana Slugs")
Cohort.create(name: "Golden Bears")
Cohort.create(name: "Fiery Skippers")