let
  # Server host key
  sweet = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIank03t/Gc89uS2S59mEsnmdeyU968UAOnq5a+0wkSI";

  # User key (Bruno's Mac)
  user = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDIV5Qm4GI6LtCqa+rNFdHarosrEsqAk7Yv3VPXXtDCjK951aFx+zTkXYC132clLQClL8lRMYJHy+jyFkTRocMg8gVf17B/OOiP/DpiE6kqh5F2GdAdk0NdmpgUEGEQHdIfRzU1q11C7MW3stn2Q3ApZoi5Owh6n7mKkxFn8c9gRt7TpkDh5KU2uce1Qzu8btEZxkCUs2kxzMMsqJdvpPetI8mS+fkc5a+Rufcp5htRwEQ3t+QqbAZUcJi4rlrJouAem35xLJCUlFS7CZAXGSYBDdUmcvHkGAHuXaZFY7VxBomj7kscWZKrMYcw286ZgU9NYYQJjgZAu6pJi7hJus2lD6/Jm+lqYsWuL7oe9RLOCnNqDzxj+bnucHFYmNGD9+ahTCSy5UMJJb1R3WERp8wLSEDS2xZamZP68kfRQpyDPy4T9IbwzrzEuGRDJ1vpukpX/P41IsCu3ZhsCbMKoC2EK17eWxo91M6QWqJICSjpJmtxsZHbPMhyr3SMI4k4GFHOIwCGRkxoZNppwguA9rCLj4HHr9qtUTPtf/XLdeWJLAYT4BxTZSgVxFkOfBXpdLTVtJzUDpoz3o95Zbx6GJXN1rEZmhRGqcGxU6SPV4uQovpxvXc5NN9dpGSqEZ88FdgbLSU7XapNhEifYq7gXYze6NCLD1jyhVAZs2lfrWMBOQ==";

  all = [ sweet user ];
in
{
  # Cloudflare
  "cloudflareDnsApiCredentials.age".publicKeys = all;
  "cloudflareTunnelToken.age".publicKeys = all;

  "minifluxAdminPassword.age".publicKeys = all;

  # VPN
  "mullvadWireguard.age".publicKeys = all;

  # Authelia
  "autheliaJwtSecret.age".publicKeys = all;
  "autheliaSessionSecret.age".publicKeys = all;
  "autheliaStorageEncryptionKey.age".publicKeys = all;
  "autheliaUsersFile.age".publicKeys = all;
  "autheliaOidcHmacSecret.age".publicKeys = all;
  "autheliaOidcIssuerPrivateKey.age".publicKeys = all;

  # Immich OAuth
  "immichOAuthClientSecret.age".publicKeys = all;
  "immichOAuthClientSecretHash.age".publicKeys = all;

  # User password
  "hashedUserPassword.age".publicKeys = all;

  # WhatsApp
  "whatsappAllowedSenders.age".publicKeys = all;

  # Jellyseerr
  "jellyseerrApiKey.age".publicKeys = all;

  # Jellyfin
  "jellyfinApiKey.age".publicKeys = all;

  # OpenFang
  "openfangApiKey.age".publicKeys = all;

  # Gemini (Car Scout Hand)
  "geminiApiKey.age".publicKeys = all;

  # Paperless
  "paperlessPassword.age".publicKeys = all;
  "paperlessApiKey.age".publicKeys = all;

  # Nextcloud
  "nextcloudAdminPassword.age".publicKeys = all;
  "nextcloudAppPassword.age".publicKeys = all;

  # Searcher
  "tavilyApiKey.age".publicKeys = all;

  # GitHub
  "githubToken.age".publicKeys = all;
}
