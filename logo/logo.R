library(hexSticker)
library(showtext)
library(here)
font_add_google("Gochi Hand", "gochi")
## Automatically use showtext to render text for future devices
showtext_auto()
#imgurl <- system.file("figures/hex.jpg", package="hexSticker")


sticker(here("logo","virus.jpeg"), package="DISC",
        p_color="#f7fcb9",
        p_size=8, s_x=1, s_y=.8, s_width=.8, s_height=3,
        h_fill = "#004529",
        filename=here("logo", "hexsticker.png"),
        h_color="#feb24c")

