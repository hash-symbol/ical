# Solar & DST Events Calendar

An `.ics` file combining solstice/equinox and Daylight Saving Time events.

## Subscribe

Point your calendar app at the raw file:

```
https://raw.githubusercontent.com/hash-symbol/ical/main/solar-dst-events.ics
```

Or, for apps that support live-updating webcal subscriptions rather than a
one-time import (recommended - the feed is regenerated monthly, a plain
import won't pick up future changes):

```
webcal://raw.githubusercontent.com/hash-symbol/ical/main/solar-dst-events.ics
```

- **Apple Calendar**: File > New Calendar Subscription, paste the `webcal://`
  URL.
- **Google Calendar**: Other calendars (+) > From URL, paste either URL.
- **Outlook**: Add calendar > Subscribe from web, paste either URL.

## What's in it

| Event | When | Alarm | Color |
|---|---|---|---|
| ☀️ Summer Solstice | Exact calculated instant | At the moment | gold |
| ❄️ Winter Solstice | Exact calculated instant | At the moment | steelblue |
| 🌸 March Equinox | Exact calculated instant | At the moment | lightpink |
| 🍁 September Equinox | Exact calculated instant | At the moment | chocolate |
| ⏩ DST Starts | 2:00 AM (nominal, legally-defined moment) | None | orangered |
| ⏪ DST Ends | 2:00 AM (nominal, legally-defined moment) | None | mediumseagreen |

Each solstice/equinox event's description includes the exact local
clock time it occurs, an estimated length of daylight that day, and a link
to the relevant Wikipedia article. Each DST event's description includes
the actual before/after timezone abbreviation and UTC offset (e.g. "PST
(UTC-08:00) becomes PDT (UTC-07:00)").

Solstice/equinox timestamps are calculated directly (Meeus algorithm, not
looked up) and are accurate to the second. DST transitions come from PHP's
own `DateTimeZone::getTransitions()`, so they reflect whatever the server's
tzdata says - if a country changes its DST rules, this updates automatically
next time tzdata is updated on the host, no code change needed.

## License

GNU General Public License v2
