let
  # Server host key
  sweet = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIank03t/Gc89uS2S59mEsnmdeyU968UAOnq5a+0wkSI";

  # User key (Bruno's Mac)
  user = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDIV5Qm4GI6LtCqa+rNFdHarosrEsqAk7Yv3VPXXtDCjK951aFx+zTkXYC132clLQClL8lRMYJHy+jyFkTRocMg8gVf17B/OOiP/DpiE6kqh5F2GdAdk0NdmpgUEGEQHdIfRzU1q11C7MW3stn2Q3ApZoi5Owh6n7mKkxFn8c9gRt7TpkDh5KU2uce1Qzu8btEZxkCUs2kxzMMsqJdvpPetI8mS+fkc5a+Rufcp5htRwEQ3t+QqbAZUcJi4rlrJouAem35xLJCUlFS7CZAXGSYBDdUmcvHkGAHuXaZFY7VxBomj7kscWZKrMYcw286ZgU9NYYQJjgZAu6pJi7hJus2lD6/Jm+lqYsWuL7oe9RLOCnNqDzxj+bnucHFYmNGD9+ahTCSy5UMJJb1R3WERp8wLSEDS2xZamZP68kfRQpyDPy4T9IbwzrzEuGRDJ1vpukpX/P41IsCu3ZhsCbMKoC2EK17eWxo91M6QWqJICSjpJmtxsZHbPMhyr3SMI4k4GFHOIwCGRkxoZNppwguA9rCLj4HHr9qtUTPtf/XLdeWJLAYT4BxTZSgVxFkOfBXpdLTVtJzUDpoz3o95Zbx6GJXN1rEZmhRGqcGxU6SPV4uQovpxvXc5NN9dpGSqEZ88FdgbLSU7XapNhEifYq7gXYze6NCLD1jyhVAZs2lfrWMBOQ==";

  all = [ sweet user ];
in
{
  # Shared secrets
  "hashedUserPassword.age".publicKeys = all;
  "sambaPassword.age".publicKeys = all;
  "cloudflareDnsApiCredentials.age".publicKeys = all;
  "cloudflareFirewallApiKey.age".publicKeys = all;
  "tailscaleAuthKey.age".publicKeys = all;
  "resticBackblazeEnv.age".publicKeys = all;
  "tgNotifyCredentials.age".publicKeys = all;
  "gitIncludes.age".publicKeys = all;
  "frpToken.age".publicKeys = all;
  "smtpPassword.age".publicKeys = all;
  "bwSession.age".publicKeys = all;

  # Sweet machine secrets
  "wireguardCredentials.age".publicKeys = all;
  "borgBackupKey.age".publicKeys = all;
  "keycloakDbPasswordFile.age".publicKeys = all;
  "keycloakCloudflared.age".publicKeys = all;
  "adiosBotToken.age".publicKeys = all;
  "borgBackupSSHKey.age".publicKeys = all;
  "paperlessWebdav.age".publicKeys = all;
  "slskdEnvironmentFile.age".publicKeys = all;
  "paperlessPassword.age".publicKeys = all;
  "nextcloudCloudflared.age".publicKeys = all;
  "navidromeCloudflared.age".publicKeys = all;
  "navidromeEnv.age".publicKeys = all;
  "nextcloudAdminPassword.age".publicKeys = all;
  "vaultwardenCloudflared.age".publicKeys = all;
  "microbinCloudflared.age".publicKeys = all;
  "minifluxAdminPassword.age".publicKeys = all;
  "minifluxCloudflared.age".publicKeys = all;
  "duckDNSDomain.age".publicKeys = all;
  "duckDNSToken.age".publicKeys = all;
  "withings2intervals.age".publicKeys = all;
  "withings2intervals_authcode.age".publicKeys = all;
  "resticPassword.age".publicKeys = all;
  "oauth2ProxyEnvFile.age".publicKeys = all;
}
