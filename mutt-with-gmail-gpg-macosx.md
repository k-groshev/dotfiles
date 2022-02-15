# Mutt (or NeoMutt) with Gmail and GPG on Mac OS X

This note describes how to set up the [Mutt](http://www.mutt.org/) or
[NeoMutt](https://neomutt.org/) email client on Mac OS X to work for Gmail
and GnuPG.

## Software versions
The software versions used in this note are:

- macOS Catalina (version 10.15.4)
- Mutt 1.13.5 (installed with `brew install mutt`) or NeoMutt 20200320
(installed with `brew install neomutt`)
- gpg (GnuPG) 2.2.20, libcrypt 1.8.5 (installed with `brew install gnupg`)

In the rest of the document, we will use Mutt as an example. The
configurations for Mutt and NeoMutt are identical.

## Configure Gmail
Sign in with the Google/Gmail account, and follow the instructions provided
in Google support page [Sign in using App Passwords](gpg (GnuPG) 2.2.20 to
obtain an app password dedicated for Mutt). You will need to first enable
"2-step authentication" for your Google account if it has not been done.
Select the app and devices as "Mail" and "Mac", respectively. Write down the
generated app password for Mutt configuration later.

## Configure Mutt

1. Create directory `.mutt` in your home directory, and the following files in
`~/.mutt/`: `muttrc`, `gpg.rc`, `app-password.gpg`.
2. GPG encrypt the app password setting, and save the encrypted text in file
`~/.mutt/app-password.gpg`, as follows

   ```bash
   gpg --recipient <username>@gmail.com --encrypt --armor > app-password.gpg
   ```
   In console window, manually enter the following information (`^D` is the key combination `Ctrl-d`)
  
   ```bash
   set imap_pass = <app password>
   set smtp_pass = <app password>
   ^D
   ```
3. Configure GPG setting. Add the following content in `~/.mutt/gpg.rc`

   ```text
   # MUTT GPG configuration
   
   # Use GPGME
   set crypt_use_gpgme = yes
   
    # Don't sign, so I'm not legally liable to what I say in encrypted email
   set crypt_autosign = no
   # Encrypt replies to PGP emails by default
   set crypt_replyencrypt = yes
   
   # Timeout
   set pgp_timeout = 1800
   ```
4. Configure Mutt's main configuration file. Add the following content to
`~/.mutt/muttrc`

   ```text
   # Load configurations
   source ~/.mutt/gpg.rc
   
   # Load gpg encrypted IMAP and SMTP app passwords
   source "gpg --decrypt ~/.mutt/app-password.gpg |"
   
   # For a full list a configuration variables, see
   # https://muttmua.gitlab.io/mutt/manual-dev.html#variables

   # Use a fake hostname so Message-ID header does not leak info
   set hostname = fake-hostname
   set realname = "Real Name"
   set from = <username>@gmail.com
   set use_from = yes
   set envelope_from = yes
  
   set folder = "imaps://imap.gmail.com:993"
   set smtp_url = "smtps://<username>@smtp.gmail.com:465/
   set smtp_authenticators = 'gssapi:login'
   set imap_user = <username>@gmail.com
   set spoolfile = "+INBOX"
   set trash = "+Trash"

   # SSL hardening
   set ssl_force_tls = yes
   set ssl_starttls = yes
   set ssl_use_sslv2 = no
   set ssl_use_sslv3 = no
   set ssl_use_tlsv1 = no
   set ssl_use_tlsv1_1 = no
   set ssl_use_tlsv1_2 = yes
   set ssl_use_tlsv1_3 = yes
   set ssl_verify_dates = yes
   set ssl_verify_host = yes
   set ssl_usesystemcerts = yes

   # html email
   set mailcap_path = ~/.mutt/mailcap
   auto_view text/html  # view html automatically
   alternative_order text/plain text/enriched text/html # save html for last
   
   # G to get mail
   bind index G imap-fetch-mail
   set editor = "vim"
   set charset = "utf-8"
   set record = ''
   ```