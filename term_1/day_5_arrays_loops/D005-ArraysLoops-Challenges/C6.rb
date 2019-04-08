### Challenge 6 - Hard
### Simple Name Cypher
# This app will take the user's name and provide an encrypted version of it.
# Steps:
#
# Prompt the user for their name. If the user's name is shorter than 4 characters, tell them to put in a longer name.
# Ask the user if they want to encrypt or decrypt.
# =>    Encryption will jumble the name.
# =>    Decryption will unjumble the name.
#
# For encryption:
# Display a progress bar and either "ENCRYPTING..." or "DECRYPTING..." on the screen.
#       -- Note that this isn't a functional progress bar. The computer processes this too quickly -- we want to delay the app a little bit, & make it look like it takes a while to save the user's name.
# Using ASCII or text art, make the progress bar go from empty to full over time.
# eg. ENCRYPTING... [_________]
# =>  ENCRYPTING... [===______]
# Nothing else should be on the screen while that progress bar is filling up - just one progress bar.
#
# Once the progress bar is done, start actually encrypting or decrypting the name.
# The cypher is this: swap the first and last 2 letters of the name.
# For example, "jessica" should be encrypted as "cassije"
#          and "cassije" should be decrypted as "jessica"
# Display the user's encrypted or decrypted name.
