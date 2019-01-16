#CICD - Cloud Config

`gradle wrapper --gradle-version 3.3`

Run the following to get an ssh key.
`ssh-keygen -m PEM -t rsa -b 4096 -C "your.email@address.com"`

The id_rsa file *MUST* have the words 'RSA' in the title. Other values there *WILL NOT WORK*.
`-----BEGIN RSA PRIVATE KEY-----`