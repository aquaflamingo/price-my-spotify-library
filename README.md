# Price My Spotify Library
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

Do you like streaming and purchasing music ?

Ever wonder how much your entire Spotify library would cost for you to purchase? No? Well you still can !

## Usage
1. Clone the repository
2. Create a Spotify API Key: https://developer.spotify.com/documentation/web-api/
3. Add your `SPOTIFY_CLIENT_ID` and `SPOTIFY_CLIENT_SECRET` to a `.env` file and `source .env` (alternatively you can just run the script with these variables set in the environment).
```
# .env
export SPOTIFY_CLIENT_ID=123
export SPOTIFY_CLIENT_SECRET=456
```
4. Run the script
```bash
ruby -W0 main.rb --user your_username
```
5. Print!

## Example:
```
Hello spotifyusername!

Your Spotify library is composed of:

115 playlists
3053 tracks

If you wanted to purchase your entire Spotify library, it would cost around: 3022.47 USD.

+----------------------------------------------+--------------------+
| Playlist                                     | Cost               |
+----------------------------------------------+--------------------+
| essential techno dubbing 🦒                  | 99.0               |
| lofi house laundry mat 🧺🦓                  | 99.0               |
| interstellar jungle experience 🌓            | 72.27              |
| sweaty lofi house driftin                    | 10.89              |
| sadboi lofi house                            | 14.85              |
| sunset on the mykonos coast 🦑               | 79.2               |
| the concrete  jungle dnb 🎋                  | 78.21              |
| nuhouse soul train 🚂                        | 29.7               |
| glitter disco house box                      | 99.0               |
| intergalatic house dubbing 🐈                | 67.32              |
| the german whip 🏎                            | 7.92               |
| deep squatting house 👟                      | 99.0               |
| Jackin house cats 🐱                         | 60.39              |
| KRAMER'S LEFTFIELD HOUSE  🧰                 | 46.53              |
| NEIGE BLANCHE 🌌                             | 26.73              |
 # etcetera..
```

## LICENESE
This repository is licensed under [MIT Open Source](https://opensource.org/licenses/MIT)
