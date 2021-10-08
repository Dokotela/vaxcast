# VaxCast Immunization Forecasting Service

## Starting All Over Again
- About 18 months ago (Spring 2020), I first wrote this vaccine forecasting program. I'm still pretty proud of it, but it definitely needs retooling, so that's what I'm going to do. I'm also going to try and take meticulous notes so that anyone who wants to can follow along.

- I'm going to start with some spreadsheets, and we'll dive into all that they mean later on. I've uploaded the Excel spreadsheets to Google Cloud, and that's where I'm going to pull the data from.

- The original of all of the spreadsheets can be found on the [CDC site here](https://www.cdc.gov/vaccines/programs/iis/cdsi.html). What you're looking for specifically is CdSi Logic Specification and Supporting Data about halfway down the page. Then there's a [Supporting Data link](https://www.cdc.gov/vaccines/programs/iis/downloads/supporting-data-4.16-508.zip).

- Inside the Supporting Data zip file (once extracted), is a folder with Excel Documents, another with XML documents, then some release notes and supporting documents. I have uploaded all of the Excel files to Google Drive because it makes it easier for me to pull the data from them. I'm going to use these files to generate my own JSON files because I don't particularly like working with XML.

- In general, adding new antigens, vaccines, anything should be able to be dynamically generated. The things that certainly may come up are observation codes, and possibly CVX codes (especially internationally). If they are updated, they will need to be added by hand to some of the supportive files.