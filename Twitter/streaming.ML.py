from slistener import SListener
import time, tweepy, sys

## authentication

consumer_key = '6XA00XU14bUIlqMvIkfCFTWof'
consumer_secret = 'W8Xg9s1c7lYhYoRdWjzqnelqsMTiAc0XwGeDjHxHpBakeq3jpa'
access_token = '2970397864-qaUIpJ1eKZXBwGY0cAD58rK7cyNNh5ShFJIB7RU'
access_token_secret = 'RdrhReirzqHhw8kTsaFTzCajGP1M88zdYYNP9JdtHwvLJ'

auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)

def main():
    tracks = ['machinelearning','machine learning','bigdata']
    prefix='_'.join(tracks)
    listen = SListener(api, prefix)
    stream = tweepy.Stream(auth, listen)

    print "Streaming started..."
    print tracks
    try: 
        stream.filter(track = tracks)
    except:
        print "error!"
        print stream.status_code		
        stream.disconnect()

if __name__ == '__main__':
    main()
