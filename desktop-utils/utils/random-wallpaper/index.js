const redditApiImageGetter = require('reddit-api-image-getter')
const exec = require('child_process').exec

const getRandom = (list) => list[Math.floor(Math.random() * list.length)]

const subreddits = [
    'earthporn',
    'wallpapers',
    'wallpaper',
    'wallpaper',
    'beachporn',
    'cityporn',
]

const subreddit = getRandom(subreddits)

const getter = new redditApiImageGetter()
getter.getHotImagesOfSubReddit(subreddit).then(function (result) {
    const image = getRandom(result)
    exec(`wget ${image.url} -O ${__dirname}/wallpaper.png`, function (error, stdout, stderr) {
        if (error !== null) {
            console.log("Error downloading file: " + error)
        }
    })
}).catch(function (error) {
    console.log(error)
})
