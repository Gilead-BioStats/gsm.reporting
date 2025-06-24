# gsm.reporting 1.1.2

This patch release addresses changes to an `.rda` object updated in `gsm.core` v1.1.3.

# gsm.reporting 1.1.1

This patch release adds a section about incorporating historical data into the reporting data model, and updates tests to comply with new gsm.core sample data.

# gsm.reporting 1.1.0

This minor release adds the capability to calculate the change of user-specified metrics from the previous snapshot date. The primary use case of this function is to check for changes in the metrics when determining if continued flags should be actioned.

Edits have been made to the Results.yaml to support this functionality when longitudinal data is provided.

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
