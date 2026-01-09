{
  inputs,
  outputs,
  vars,
  ...
}: {
  imports = [
    ../../system
    ./hardware-configuration.nix
    ../../system/optional/vm.nix
  ];
}
