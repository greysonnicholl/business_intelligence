# Midwest Airbnb Listings: Data Dictionary

**Dataset:** `listings` table in `midwest_airbnb.db` (SQLite), 14,887 rows and 29 columns
**Source:** Inside Airbnb (https://insideairbnb.com/get-the-data/), the detailed `listings.csv.gz` file for each of three regions: Chicago (snapshot 2026-07-20), Columbus (snapshot 2026-07-23), and Twin Cities MSA (snapshot 2026-07-21). Column meanings follow Inside Airbnb's data dictionary and assumptions (https://insideairbnb.com/data-assumptions/).
**Course:** ISA 401, Miami University

> One row is one listing that showed a nightly price on the snapshot date; listings with no price were dropped. Empty cells are stored as SQL `NULL`.

---

## Field Definitions

| Field | Type | Description |
|---|---|---|
| `city` | text | Which Inside Airbnb region the listing came from: `Chicago` (7,439 rows), `Columbus` (2,587), or `Twin Cities` (4,861). The Twin Cities file covers the Minneapolis-St. Paul metro area, not just the two cities. |
| `snapshot_date` | text | Date Inside Airbnb compiled the file, stored as an ISO text string, not a date: `2026-07-20` for Chicago, `2026-07-23` for Columbus, `2026-07-21` for Twin Cities. Every row of a city shares the same value. |
| `id` | text | Airbnb's listing id. Unique across the table (14,887 distinct values). Stored as text even though it looks numeric, so compare it to a quoted string. |
| `name` | text | Listing title as shown on Airbnb (for example "Tiny Studio Apartment 94 Walk Score"). Never empty. |
| `price` | real | Nightly price in U.S. dollars on the snapshot date, with the dollar sign and commas removed. Ranges from 2.56 to 11,412; never `NULL` (rows without a price were dropped). |
| `room_type` | text | Airbnb's four listing categories: `Entire home/apt` (11,652 rows), `Private room` (2,951), `Hotel room` (246), or `Shared room` (38). |
| `host_id` | text | Airbnb's unique identifier for the host of the listing. |
| `host_name` | text | Name of the host associated with the listing. |
| `host_since` | text | Date when the host first joined Airbnb. |
| `host_is_superhost` | text | Indicates whether the host is a Superhost. |
| `neighbourhood` | text | The neighbourhood where the listing is located, determined by comparing the listing's coordinates with the city's neighbourhood definitions. Inside Airbnb does not use Airbnb's own neighbourhood names. |
| `latitude` | real | Geographic latitude of the listing. |
| `longitude` | real | Geographic longitude of the listing. |
| `property_type` | text | Type of property being offered by the listing, such as an apartment, house, or other category. |
| `accommodates` | integer | Maximum number of guests that the listing can accommodate. |
| `bedrooms` | real | Number of bedrooms in the listing. |
| `beds` | real | Number of beds in the listing. |
| `bathrooms_text` | text | Text describing the number and type of bathrooms in the listing. |
| `minimum_nights` | integer | Minimum number of nights that can be booked for the listing. |
| `availability_365` | integer | Number of days the listing is available for booking during the next 365 days. |
| `number_of_reviews` | integer | Total number of reviews that the listing has received. |
| `number_of_reviews_ltm` | integer | Number of reviews the listing has received in the last 12 months. |
| `first_review` | text | Date of the first review received for the listing. |
| `last_review` | text | Date of the most recent review received for the listing. |
| `review_scores_rating` | real | Overall review score for the listing based on guest reviews. |
| `reviews_per_month` | real | Average number of reviews received by the listing per month. |
| `instant_bookable` | text | Indicates whether the listing can be booked without requiring the host to approve the reservation. |
| `estimated_revenue_l365d` | real | Estimated revenue for the listing over the last 365 days. |
| `amenities_count` | integer | Number of amenities listed for the property. |

Continue the table for the remaining 23 columns (Assignment 05): `host_id`, `host_name`, `host_since`, `host_is_superhost`, `neighbourhood`, `latitude`, `longitude`, `property_type`, `accommodates`, `bedrooms`, `beds`, `bathrooms_text`, `minimum_nights`, `availability_365`, `number_of_reviews`, `number_of_reviews_ltm`, `first_review`, `last_review`, `review_scores_rating`, `reviews_per_month`, `instant_bookable`, `estimated_revenue_l365d`, `amenities_count`.

Two hints: `neighbourhood` is Inside Airbnb's `neighbourhood_cleansed` column, and `amenities_count` is not an Inside Airbnb column; it was computed for this course as the number of items in each listing's `amenities` list. Everything else keeps its Inside Airbnb name, so the data dictionary linked above explains it.
