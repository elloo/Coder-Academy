### Challenge 4 - Medium
### XKCD Password Generator
# This terminal app should generate a nice, memorable password based on the logic shown in this webcomic: https://xkcd.com/936/
# So, our app must combine four random words to create passwords.
# The user should be able to do this forever until they are happy with the generated password.
# The password should contain capital letters on every word and a random number at the end of the password.
# Here's some arrays to start you off:

words = ["correct", "horse", "battery", "staple", "turtle", "blue", "noisy", "hungry", "extra", "speedy", "coding", "website", "banana", "seal", "zebra", "flag"]


# Extension twist: Let the user choose which of the four chosen words to re-generate.
# eg. if the password is "CorrectHorseBatteryStaple123" and the user enters "regenerate 4"
#     then the password becomes "CorrectHorseBatteryFlag123"
