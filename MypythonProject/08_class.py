import random

#class
class Person:
    def __init__(self, firstname, lastname, health, status):
        " initialize attributes to be used in/available for all \
        class methods in this class, and for class Objects created \
        by this class."

        self.firstname = firstname
        self.lastname = lastname
        self.health = health
        self.status = status

    def introduce(self):
        "All people introduce themselves"
        print("Hi, I'm {} {}.".format(self.firstname, self.lastname))

    def emote(self):
        emotion = random.randrange(1,3)
        if emotion == 1:
            print("{} is happy today".format(self.firstname))
        elif emotion == 2:
            print("{} is sad right now".format(self.firstname))

    def status_change(self):
        if self.health == 100:
            print("{} is totally healthy!".format(self.firstname))

        elif self.health >=76:
            print("{} is a little tired today.".format(self.firstname))

        elif self.health >= 51:
            print("{} feels unwell.".format(self.firstname))

        elif self.health >= 40:
            print("{} goes to the doctor".format(self.firstname))

        else:
            print("{} is unconscious.".format(self.firstname))



Maria = Person("Maria", "Gutierrez", 95, status=True)
Rey = Person("Rey", "Jones", 68, status=False)
Lee = Person("Lee", "Williams", 42, status=True)

# print("{} is my friend? {}".format(Maria.firstname, Maria.status))
# print("{} is my friend? {}".format(Rey.firstname, Rey.status))
#
# Maria.introduce()
# Rey.introduce()
# Lee.introduce()


Maria.emote()
Rey.emote()
Lee.emote()


# Maria.status_change()
# Rey.status_change()
# Lee.status_change()