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
| xxxxxxxxxxxxxxxxxxxxxxxxxx                   | 99.0               |
| xxxxxxxxxxxxxxxxxxxxxxxxx                    | 99.0               |
| xxxxxxxxxxxxxxxxxxxxxxxxxxx                  | 72.27              |
| xxxxxxxxxxxxxxxxxxxxxxxxxxx                  | 10.89              |
| xxxxxxxxxxxxxxxxxxxxxxxxxxx                  | 14.85              |
| xxxxxxxxxxxxxxxxxxxxxxxxxxx                  | 79.2               |
| xxxxxxxxxxxxxxxxxxxxxxxxxx                   | 78.21              |
 # etcetera..
```

## LICENESE
This repository is licensed under [MIT Open Source](https://opensource.org/licenses/MIT)
