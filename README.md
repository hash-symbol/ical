# Solar & DST Events Calendar

The year's big astronomical moments and clock changes in your calendar:
the solstices, the equinoxes, and the start and end of Daylight Saving Time.
Subscribe once and your calendar keeps itself up to date.

There's one calendar per time zone. The moment of a solstice or equinox is the
same everywhere on Earth, but each calendar shows it in your local time and
estimates that day's daylight for a city in your zone. DST changes follow your
zone's own rules.

## Subscribing

1. Find the `.ics` file for your zone in this repo (see [Zones](#zones)) and
   open it.
2. Click **Raw** and copy the address from your browser's address bar. It will
   start with `https://raw.githubusercontent.com/`.
3. Add it to your calendar app as a subscription.

Subscribe instead of importing. An import is a one-time snapshot, while a
subscription lets your calendar check back for changes. Most apps are happy
with the `https://` address you copied. Apple Calendar wants the same address
starting with `webcal://` instead, so just swap the prefix:

```
https://raw.githubusercontent.com/hash-symbol/ical/main/<your-zone-file>
webcal://raw.githubusercontent.com/hash-symbol/ical/main/<your-zone-file>
```

- **Apple Calendar:** File > New Calendar Subscription, paste the `webcal://`
  address.
- **Google Calendar:** Other calendars (+) > From URL, paste the `https://`
  address. Google refreshes subscribed calendars on its own schedule, so
  changes can take many hours to show up.
- **Outlook:** Add calendar > Subscribe from web, paste the `https://`
  address.

Pick the calendar for the zone you live closest to. The DST dates come from
that zone's rules, and the events are set to 2:00 AM by whatever clock your
calendar app is using, so another zone's calendar can show clock changes that
don't apply to you.

## What's on the calendar

| Event | When | Alarm | Color |
|---|---|---|---|
| ☀️ Summer Solstice | The exact calculated moment | At that moment | gold |
| ❄️ Winter Solstice | The exact calculated moment | At that moment | steelblue |
| 🌷 March Equinox | The exact calculated moment | At that moment | lightpink |
| 🍂 September Equinox | The exact calculated moment | At that moment | chocolate |
| ⏩ DST Starts | 2:00 AM, when clocks jump forward | None | orangered |
| ⏪ DST Ends | 2:00 AM, when clocks fall back | None | mediumseagreen |

Each solstice or equinox event tells you the exact local clock time it happens,
a rough estimate of how much daylight that day gets (worked out from the
latitude of your zone's city), and links to the Wikipedia article for the
event. Each DST event spells out what's changing, for example "PST (UTC-08:00)
becomes PDT (UTC-07:00)".

## How fresh it is

The calendars are refreshed every month and look a few years ahead.

## Good to know

- **The math is calculated, not looked up.** Solstice and equinox moments come
  from published astronomical algorithms (Jean Meeus's), and DST rules come
  from the standard time zone database. The daylight figure is an estimate, so
  treat it as approximate.
- **Descriptions are written for the Northern Hemisphere.** "Summer solstice"
  means the June, with the longest day of the year.
- **Colors are a bonus.** Each event carries a color (not every calendar
  app honors it. If yours doesn't, everything else still works).
- **Don't want the pings?** Solstice and equinox events have an alarm at the
  moment they happen. If you'd rather not get notified, turn off notifications
  for this calendar in your app.

## License

GNU General Public License v2
