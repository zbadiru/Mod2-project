# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PersonalTrainer.destroy_all
Routine.destroy_all
Exercise.destroy_all

PersonalTrainer.create([
    {
        name: 'Suarez',
        age: 24,
        expirience: 'I have a dregree in nutricion, i actually a have some clients that are working with me and have noticed the difference with my routines'
    },
    {
        name: 'Pablo',
        age: 20,
        expirience: 'I dont have much expirience but i have a degree in nutricion.'
    }
])

Routine.create([
    {
        name: 'Chest-day-1',
        personal_trainer_id: 1,
        exercise_id:1,
        repetitions: 3
    },
    {
        name: 'Chest-day-2',
        personal_trainer_id: 2,
        repetitions: 2,
        exercise_id:2
    }
])

Exercise.create([
    {
        name: "press-up"
    },
    {
        name: "decline"
    }
])