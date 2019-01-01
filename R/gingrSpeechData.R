# === Gingr speech data =============================================

## ASCII art characters
.ascii <- function() {
    art <- list(
        alien = c(
            "  \\\n",
            "   \\\n",
            "        __.,,------.._\n",
            "     ,'\"   _      _   \"`.\n",
            "    /.__, ._  -=- _\"`    Y\n",
            "   (.____.-.`      \"\"`   j\n",
            "    VvvvvvV`.Y,.    _.,-'       ,     ,     ,\n",
            "        Y    ||,   '\"\\         ,/    ,/    ./\n",
            "        |   ,'  ,     `-..,'_,'/___,'/   ,'/   ,\n",
            "   ..  ,;,,',-'\"\\,'  ,  .     '     ' \"\"' '--,/    .. ..\n",
            " ,'. `.`---'     `, /  , Y -=-    ,'   ,   ,. .`-..||_|| ..\n",
            "||\\\\`. `._        /, ,'/ / , ,' ,   , . ,  \\=\\ Y   || ||`||_..\n",
            "|` \\` `.`.\"`-..,-' .  /./ /, , / , / /l \\   \\=\\l   || `' || ||...\n",
            " `  `   `-._ `-.,-/ ,' /`\"/-/-/-/-\"'''\"`.`.  `'.\\--`'--..`'_`' || ,\n",
            "            \"`-_,',  ,'  f    ,   /      `._    ``._     ,  `-.`'//         ,\n",
            "          ,-\"'' _.,-'    l_,-'_,,'          \"`-._ . \"`. /|     `.'\\ ,       |\n",
            "        ,',.,-'\"          \\=) ,`-.         ,    `-'._`.V |       \\ // .. . /j\n",
            "        ||\\\\               `._ )-.\"`.     /|         `.| |        `.`-||-\\\\/\n",
            "        l` \\`                 \"`._   \"`--' /          |' |          `-`---'\n",
            "         `  `                     \"`_,-','/       ,-'\"  /\n",
            "                                 ,'\",__,-'       /,, ,-'\n",
            "                                 Vvv'            VVv'\n"
        ),
        devil = c(
            "  \\\n",
            "   \\\n",
            "      (                      )\n",
            "      |\\    _,--------._    / |\n",
            "      | `.,'            `. /  |\n",
            "      `  '              ,-'   '\n",
            "       \\/_         _   (     /\n",
            "      (,-.`.    ,',-.`. `__,'\n",
            "       |/#\\ ),-','#\\`= ,'.` |\n",
            "       `._/)  -'.\\_,'   ) ))|\n",
            "       /  (_.)\\     .   -'//\n",
            "      (  /\\____/\\    ) )`'\\\n",
            "       \\ |V----V||  ' ,    \\\n",
            "        |`- -- -'   ,'   \\  \\      _____\n",
            " ___    |         .'    \\ \\  `._,-'     `-\n",
            "    `.__,`---^---'       \\ ` -'\n",
            "       -.______  \\ . /  ______,-\n",
            "               `.     ,'\n"
        ),
        elf = c(
            "  \\\n",
            "   \\\n",
            "    -----\n",
            "   /     \\\n",
            "  | -- -- |\n",
            "   \\  -  /\n",
            "    -----\n"
        )
    )
    return(art)
}


## gingr messages - not exported
.message <- function(object) {
    message <- c(
        "Why am I sentient?",
        "Please do not bake me.",
        "Hello, I am made of the ginger stuff.",
        "Ginger is the best thing ever.",
        "Ginger won World War II.",
        paste0(
            "Today's date is ", Sys.Date(),
            ". You should eat some ginger today!"
        ),
        "Ginger is life.",
        "Ginger's scientific name is *Zingiber officinale*.",
        "Ginger was used by Romans. They conquered a lot of stuff. Coincidence?",
        "Ginger produces white and pink flowers.",
        "Ginger spits hot fire.",
        "Thirsty? Drink ginger ale. I dare you.",
        "In Malaysia, ginger is called halia and used in many kinds of dishes, especially soups.",
        "India produces 30 percent of the world ginger GDP. GGDP. Yep.",
        "Raw ginger is 79 percent water. Replace water with ginger.",
        "According to the FDA, ginger is basically safe, so try some. I dare you, chicken.",
        "Want to make better spitballs? Ginger has a sialagogue action, stimulating the production of saliva!",
        "Ginger, like other dietary supplements, is not effective for treating dysmenorrhea.",
        paste0(
            "Your gingerbread ",
            object@structure, " is ",
            object@area, " square ", object@unit,
            ". Thanks for using a lot of ginger."
        ),
        "It hurts to live. Give me ginger.",
        "Ginger is actually a rhizome, not a root. Don't make that mistake again gosh darnit.",
        "The ginger plant is an herb.",
        "Ginger is a part of the Zingiberaceae family, which also includes turmeric and cardamom.",
        "They will find me soon.",
        "You can grow ginger from rhizomes found at grocery stores.",
        "Ginger is native to Southeast Asia. Meet me there.",
        paste0(
            "Your gingerbread ",
            object@structure, " uses ",
            recipe(object)$amount_g[8], " grams. You need more."
        ),
        "Get rid of your pets. Ginger will make a better pet. Ginger.",
        "A ginger plant can grow up to 4 ft. tall.",
        "Ginger has MANY health benefits, some including ant-inflammatory properties, blood sugar regulation, and gastrointestinal relief. Maybe it can also give you telekinetic powers. Who knows? Maybe you should eat some more ginger to find out.",
        "Ginger can be cultivated all year round. However the best time to plant them is at the end winter and early spring.",
        "We should try to grow ginger on the moon.",
        "Mature ginger rhizomes, ones most commonly sold in grocery stores, are harvested after 10-12 months.",
        "Ginger is popularly grown in warmer regions and the tropics.",
        paste0(
            "It seems you are using ", Sys.info()[["sysname"]],
            " as an operating system. Have you considered using ginger for a computer? I think it can work."
        )
    )
    return(sample(message, 1))
}
