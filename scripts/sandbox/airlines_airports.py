import os
import sys
import pandas as pd
from flightradar24 import Api

def main():
    
    # Git Folder Base Name
    base_folder = os.path.dirname(sys.path[0])

    # Create API Instance
    fr_api = Api()

    # Dict with all API methods
    dict_api = {
            'airline' : 'fr_api.get_airlines()',
            'airport' : 'fr_api.get_airports()'
        }

    # Looping Over Dictionary To Evaluate Each Method
    for key in dict_api:
        print(key)
        data = eval(dict_api[key])
        data_list = pd.DataFrame(data)['rows'].tolist()
        df = pd.DataFrame(data_list)
        df.to_csv(f'{base_folder}/data/{key}.csv')

if __name__ == "__main__":
    main()