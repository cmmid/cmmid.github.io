# OVERVIEW

The source for the [web page](https://cmmid.github.io/) advertising assorted [CMMID](https://cmmid.lshtm.ac.uk/) project work.

# Adding R Shiny Apps

To add a new interactive application to the [visualisations page](https://cmmid.github.io/visualisations.html):
 1. copy the template.md file in the `_shinyapp` directory to a new file name
 2. edit the `URL` in the `shinyurl: URL` line to match the url where the application is hosted (e.g., `https://cmmid-lshtm.shinyapps.io/SOMEAPP/`)
 3. edit the title; this must be valid YAML, so watch out for `:` in your title - can be addressed by quoting the whole entry
 4. **DON'T** edit the `---`s.
 5. if using the Github web editing interface, you can check the preview to ensure proper entry. Should see a table-like thing
 6. commit your changes
