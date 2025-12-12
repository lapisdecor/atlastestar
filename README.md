# atlastestar
Flatpak example of a Nim app using atlas and Owlkettle

# To compile:
clone the repository and do

atlas use owlkettle

flatpak-builder --force-clean --user --install-deps-from=flathub --repo=repo --install builddir com.gatochalupa.atlastestar.yml


