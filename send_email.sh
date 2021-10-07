#! /bin/bash

# In order to send emails, first the mark: 
#           Allow less secure apps at the google account must be ON
#           Then the file /etc/ssmtp/ssmtp.conf must be edited:

echo "The /etc/ssmtp/ssmtp.conf file must contain:"
echo "root=yourEmailAddress@gmail.com"
echo "mailhub=smtp.gmail.com:587        # this is for google accounts :-)"
echo "AuthUser=your EmailAddress@gmail.com"
echo "AuthPass=yourSuperSecurePassword"
echo "UseSTARTTLS=yes    or maybe UseTLS=YES"
echo
echo "To send emails, type:    ssmtp xxxxxxxxxx@gmail.com"
echo "To: thereceiveremailaddress@gmail.com"
echo "From: thesenderemailaddress@gmail.com"
echo "Cc: anotherreceiveremailaddress@gmail.com"
echo "Subject: The subject of the message"
echo "The body of the message."

