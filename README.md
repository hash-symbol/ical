# Solar & DST Events Calendar

`.ics` calendars combining solstice/equinox and Daylight Saving Time events,
generated per US timezone.

## Subscribe

Each timezone gets its own file, named `solar-dst-events-{abbr}.ics` (e.g.
`solar-dst-events-pst.ics` for `America/Los_Angeles`). Point your calendar
app at the raw file for your zone:

```
https://raw.githubusercontent.com/hash-symbol/ical/main/solar-dst-events-{abbr}.ics
```

Or, for apps that support live-updating webcal subscriptions rather than a
one-time import (recommended - the feed is regenerated monthly, a plain
import won't pick up future changes):

```
webcal://raw.githubusercontent.com/hash-symbol/ical/main/solar-dst-events-{abbr}.ics
```

- **Apple Calendar**: File > New Calendar Subscription, paste the `webcal://`
  URL.
- **Google Calendar**: Other calendars (+) > From URL, paste either URL.
- **Outlook**: Add calendar > Subscribe from web, paste either URL.

Not sure of the exact URL for a zone? Run `php generate-ics.php --get-url
{abbr}` (see CLI Usage below) rather than building it by hand.

## Available zones

| Zone | abbr | Timezone |
|---|---|---|
| New York | `est` | `America/New_York` |
| Chicago | `cst` | `America/Chicago` |
| Denver | `mst` | `America/Denver` |
| Los Angeles | `pst` | `America/Los_Angeles` |
| Anchorage | `akst` | `America/Anchorage` |
| Honolulu | `hst` | `Pacific/Honolulu` |

Honolulu doesn't observe DST, so its file only ever contains solstice/
equinox events - if it's ever missing, that's expected, not a broken run.

## CLI usage

```
php generate-ics.php
```
Regenerate every configured zone, write each zone's `.ics` locally, then
commit + push all written files as one commit. This is the mode cron runs.

```
php generate-ics.php --get-url {abbr}
```
Print the raw.githubusercontent.com URL for one zone's `.ics` file and
exit - does not regenerate or push anything.

```
php generate-ics.php --help
```
Show usage, the currently configured zones, and exit codes.

## What's in it

| Event | When | Alarm | Color |
|---|---|---|---|
| ☀️ Summer Solstice | Exact calculated instant | At the moment | gold |
| ❄️ Winter Solstice | Exact calculated instant | At the moment | steelblue |
| 🌷 March Equinox | Exact calculated instant | At the moment | lightpink |
| 🍂 September Equinox | Exact calculated instant | At the moment | chocolate |
| ⏩ DST Starts | 2:00 AM (nominal, legally-defined moment) | None | orangered |
| ⏪ DST Ends | 2:00 AM (nominal, legally-defined moment) | None | mediumseagreen |

Each solstice/equinox event's description includes the exact local
clock time it occurs (in that zone), an estimated length of daylight that
day (using that zone's configured latitude), and a link to the relevant
Wikipedia article. Each DST event's description includes the actual
before/after timezone abbreviation and UTC offset (e.g. "PST (UTC-08:00)
becomes PDT (UTC-07:00)").

## License

GNU General Public License v2
