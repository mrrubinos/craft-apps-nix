{
  mkCraftApp,
  fetchFromGitHub,
}:

mkCraftApp {
  pname = "designcraft";
  version = "0.13.0";
  hash = "sha256-QYtPzieihcoTXTLxlmJ+quXVHgbvFPteLsG06aqr1ds=";
  cargoHash = "sha256-R0ATPEwcXG/ufMsamau3jQ9Kytvn5ltj6Rbx1wT00oo=";
  description = "Lay out magazines, books and print documents";

  craftFonts = fetchFromGitHub {
    owner = "storytold";
    repo = "craft-fonts";
    rev = "a71c20e30af613287c504f7e685ca8fad77752bc";
    hash = "sha256-KTyWjbpGmgZI2L+tL+vY1qI3Lr+j/9bO3i+s566rdlk=";
  };
}
