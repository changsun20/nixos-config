{
  inputs,
  outputs,
  vars,
  ...
}: {
  imports = [
    ../../base/base.nix
    ../../base/vm.nix
    ./hardware-configuration.nix
  ];
}
