# Generating and printing gpg key

gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
gpg --armor --export <id from line 2>

# Generating ssh key

ssh-keygen -t ed25519 -C <email>
