#### Name

Yi-Chin Tseng

#### Email

sunnyyctseng@gmail.com

#### Provide a brief overview of the broader scientific and research objectives relevant to this opportunity. Please include both shorter-term (8 to 12 month) and long term impact goals and potential outputs.

For my NG Explorer project, I deployed autonomous recording units (ARUs) across 24 sites in two national parks in Lithuania, both avian diversity hotspots, spanning habitats from wetland to mature forest, sand dune, and a cormorant colony. The project's goal is to understand which bird communities each habitat supports and how their activity varies across the day and season.

I'd like to invite the student team to build a dashboard that visualizes BirdNET-detected species data, showing which species dominate a given site and time, with the ability to filter by date range to see seasonal variation and by species to see diel (time-of-day) activity patterns at a chosen site.

Short-term impact (8–12 months): A working dashboard prototype will let me and collaborators quickly examine diel activity patterns for individual species and see which species community each habitat supports — both currently require slow, manual review of detection tables.

Long-term impact: Monitoring at these 24 sites is ongoing, and a year-round dataset will continue to accumulate. As new data comes in, the dashboard can extend beyond diel patterns to show full seasonal and year-round activity trends, and how the bird community each site supports shifts across seasons.


#### What type of data have you collected?

Acoustics

#### How large are the dataset(s)

The data was collected using 34 total ARU units across 24 sites (12 in Žuvintas Biosphere Reserve, 12 in Curonian Spit National Park), with 10 of the 24 sites carrying a paired setup of two device types (AudioMoth + SongMeter Mini) to allow device-performance comparison. All units ran May–July 2025 (3 months) on a 24-hour schedule, using two sampling regimes (1 min on / 3 min off, and 1 min on / 1 min off depending on device type).

This yields approximately 16,000 hours of audio, stored in uncompressed .wav format, totaling approximately 6 TB.


#### Describe the minimum viable product (MVP) that you would like to be developed within 14 weeks. Include how it will support your project and its intended use. Successful applications set realistic expectations for what can be achieved on a short timeline while delivering meaningful value to the Explorer.

The MVP is a dashboard for visualizing BirdNET-detected bird species across sites, time of day, and season.

Core deliverable (14-week target):

- A filter panel allowing users to select species (all or a specific one), BirdNET confidence threshold, time-of-day range, and date range
- An interactive site map (the 24-site layout across both reserves) — clicking a site filters the dashboard to that site alone; a default view aggregates across all sites
- A species composition panel showing the dominant species (by detection count) at the selected site/time/date filter — top 10 species by default, with an option to view all
One activity-pattern visualization: a raster/heatmap plot with day-of-year on the x-axis and hour-of-day on the y-axis, with fill darkness representing detection density — this is the core output for spotting diel and seasonal patterns at a glance

Stretch goals (if time allows):

- Companion line-chart views of the same data: a seasonal-activity curve (detections by day of year) and a diel-activity curve (detections by hour of day)
- Overlaying diel-activity curves for two species at the same site, to visually compare how they partition the acoustic space
- Allow species-specific (rather than one universal) BirdNET confidence thresholds



#### Describe the expected inputs and outputs of the proposed technology. For example: Input: What specific data will be analyzed, and what devices were used to capture it? Output: What outcomes or results are anticipated from the technology?

- Input: Raw acoustic data collected via AudioMoth and SongMeter Mini ARUs (~16,000 hours, ~6 TB), plus existing BirdNET v2.4 detection output already generated from this dataset. The team will build the pipeline connecting raw audio and/or existing BirdNET output to a filterable, structured dataset the dashboard can query.

- Outout: An interactive dashboard summarizing species community composition per site and displaying diel and seasonal activity patterns, filterable by species, site, confidence threshold, time of day, and date range.



#### Do you have data annotations (labeled data) or additional metadata to support data analysis?

All audio data has already been processed through BirdNET v2.4. This detection output (or the underlying raw audio) is available to the team. No manually annotated/labeled data is required for this project.


#### In which region, country, and biome was the data collected from? If submitting more than one location, ensure both datasets have similar characteristics to reduce complexity.

Lithuania, specifically Žuvintas Biosphere Reserve (12 sites) and Curonian Spit National Park (12 sites). Both sites used a standardized acoustic protocol to ensure compatibility across the combined dataset.



#### What time zone will you be in during the collaboration period? This information is for scheduling purposes only.

Pacific Time

#### How sensitive is your data?

Not sensitive

#### What expertise are you and/or your team able to contribute to the project?

- Subject-matter experts who can verify outputs during the project duration
- Data scientist(s)

#### Optional: Outline potential future improvements to the technology that could enhance its value in achieving your exploration goals.

The first step toward my exploration goal is establishing who is present in each habitat (bird community composition) and when they are active (diel and seasonal patterns). A natural next step would be comparing diel activity of the same species across different sites, or between co-occurring species at the same site, to investigate species interactions and acoustic niche partitioning.


#### Optional: Have you or a member of your team ever used an AI platform before? If so, please elaborate.

Yes. I completed my PhD in bioacoustics and have used AI-based detection algorithms, particularly BirdNET, extensively throughout my research. I have a strong background in R programming and data science.


#### Optional: Add any additional information you wish to provide the National Geographic Exploration Technology Lab when making this decision?

BirdNET has become an increasingly central tool in bioacoustic monitoring. I'm open to whatever technology stack best fits the student team's skills and the project's needs — but if a Shiny- or Quarto-based build is feasible, it could plug directly into my open-source R package, birdnetTools, extending the dashboard's value to the broader BirdNET user community beyond this project alone. As a developer of that package, I see strong potential for this dashboard to become a general-purpose data exploration aid for BirdNET users generally, not just for this dataset.
