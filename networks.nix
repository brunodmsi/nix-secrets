# Network configuration - update with your actual network details
{
  homelab.networks = {
    local = {
      lan = {
        id = 1;
        cidr.v4 = "192.168.1.1";
        interface = "lan0";
        reservations = {
          sweet = {
            MACAddress = "00:00:00:00:00:00";
            Address = "192.168.1.100";
          };
        };
      };
    };
  };
}
