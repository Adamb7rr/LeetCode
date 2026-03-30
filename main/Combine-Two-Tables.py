1import pandas as pd
2
3def combine_two_tables(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
4    new_df = person.merge(address[["state", "city", "personId"]], how='left', on= 'personId')
5    new_df.drop(['personId'], axis=1, inplace=True)
6    return new_df