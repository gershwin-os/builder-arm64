# builder-arm64

This Dockerfile creates a GitHub package utilized by GitHub Actions to build the Gershwin Library, System, Applications, and ISO. It streamlines the installation of GNUstep's tools-make and other dependencies, ensuring they do not need to be reinstalled each time a workflow is initiated.

Notes:

    * Purpose: This Dockerfile is designed specifically for GitHub Actions workflows targeting Gershwin development and builds.
    * Dependencies: GNUstep's tools-make and other required packages are pre-installed for efficiency.