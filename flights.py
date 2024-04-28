import pandas as pd
from opensky_api import OpenSkyApi

def main():

    # Create API Instance
    api = OpenSkyApi()

    data = api.get_flights_from_interval(1714161255, 1714164855)
    df = pd.DataFrame(data)[0][0]
    print(df)

    track = api.get_track_by_aircraft("3c4b26")
    print(track)


if __name__ == "__main__":
    main()
