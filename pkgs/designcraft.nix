{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.7.1";
  hash = "sha256-9pCZ8SRT9EqIkz4i/EAGM0FJJSn/YzxC4zZhgwRx31E=";
  cargoHash = "sha256-d6hxHQk6weAlDp6BRHLsPc96eKnjLpJ7dHUjh2rM/o0=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "abb83316d96aa59c1cf64784289e378fe9fa5695";
    hash = "sha256-e+6HpOYoAFTh6mNfGBBw2njnBzcE8W8+Jybv1+dKOCA=";
  };
}
