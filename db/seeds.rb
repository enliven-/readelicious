# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

books = Book.create([
                      {
                        title: 'The Alchemist',
                        image: File.open("/Users/viksitarora/Downloads/a3Yn0zv_700b.jpg", 'r')
                      },
                      {
                        title: 'The Magic of Thinking Big',
                        image: File.open("/Users/viksitarora/Downloads/a3Yn0zv_700b.jpg", 'r')
                      },
                      {
                        title: 'History of Science',
                        image: File.open("/Users/viksitarora/Downloads/a3Yn0zv_700b.jpg", 'r')
                      },
                      {
                        title: 'Make things',
                        image: File.open("/Users/viksitarora/Downloads/a3Yn0zv_700b.jpg", 'r')
                      }                      
                    ])


users = User.create([
                     {
                      first_name:   "Viksit",
                      last_name:    "Arora",
                      email:        "viksit@mit.edu",
                      password:     "barfoo",
                      password_confirmation: "barfoo"  
                     },
                    {
                      first_name:   "Bhushan",
                      last_name:    "Lodha",
                      email:        "bhushan@gmail.com",
                      password:     "foobar",
                      password_confirmation: "foobar"                   
                    }
                  ])

rls = ReadingList.create([
                          {
                            user: User.first
                          },
                          {
                            user: User.last
                          }
                        ])

rl_items = ReadingListItem.create([
                                    {
                                      reading_list: ReadingList.first,
                                      book:         Book.first
                                    },
                                    {
                                      reading_list: ReadingList.first,
                                      book:         Book.second
                                    },
                                    {
                                      reading_list: ReadingList.second,
                                      book:         Book.second
                                    },
                                    {
                                      reading_list: ReadingList.first,
                                      book:         Book.second
                                    },
                                  ])

