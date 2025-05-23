# gsm.reporting 1.0.2

This patch release updates the description file to incorporate min version for `gsm` packages.


# gsm.reporting v1.0.1

This patch release updates tests in order to align with the new package data from `gsm.core v1.1.0` 

# gsm.reporting v1.0.0

We are pleased to introduce the first major release of the `gsm.reporting` package, which powers the GSM reporting data model and orchestrates the workflows for generating reports within the GSM pipeline. This release marks a significant milestone, the release of a modularized ecosystem for the GSM pipeline.

## Key Updates:
- **Qualification Report GitHub Actions (GHA):**  
  A new GitHub Actions workflow has been integrated for generating qualification reports, streamlining the process and automating report generation for better efficiency.  
  [PR #12](https://github.com/Gilead-BioStats/gsm.reporting/pull/12)

- **Replacement of `clindata` with `gsm.datasim`:**  
  The outdated `clindata` data has been replaced with `gsm.datasim`, a more advanced and reliable module for data simulation.  
  [PR #13](https://github.com/Gilead-BioStats/gsm.reporting/pull/13)

- **Vignette Updates and Enhancements:**  
  Several changes have been made to improve the documentation, to ensure users can easily navigate the reporting workflows.  
  [PR #14](https://github.com/Gilead-BioStats/gsm.reporting/pull/14)


## Additional Changes:
- Various bug fixes have been implemented to improve the stability of the package.

For more details, please refer to the pull requests linked above.

Happy reporting!

# gsm.reporting v0.0.1

This initial release migrates the reporting data model functions, workflows and documentation from `{gsm}` to `{gsm.reporting}`.
