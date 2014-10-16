worlds["survival"] = "/data/world"
outputdir = "/www"
texturepath = "/app/client.jar"

renders["survivalday"] = {
    "world": "survival",
    "title": "Survival Day",
    "rendermode": smooth_lighting,
    "dimension": "overworld",
}

renders["survivalnight"] = {
    "world": "survival",
    "title": "Survival Night",
    "rendermode": smooth_night,
    "dimension": "overworld",
}

renders["survivalnether"] = {
    "world": "survival",
    "title": "Survival Nether",
    "rendermode": nether_smooth_lighting,
    "dimension": "nether",
}
