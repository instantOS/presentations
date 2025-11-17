#import "@preview/fletcher:0.5.8" as fletcher: node, diagram, edge
#import "@preview/fontawesome:0.6.0": *

#import "@preview/touying:0.6.1": *
#import "@preview/gentle-clues:1.2.0": *
#import themes.university: *

#import "@preview/cetz:0.4.2"
#import "@preview/prequery:0.2.0"

#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))
#let fletcher-diagram = touying-reducer.with(reduce: fletcher.diagram, cover: fletcher.hide)

#show: university-theme.with(
  lang-database: "en",
  aspect-ratio: "16-9",
  footer-c: self => {
    h(1fr)
    context utils.slide-counter.display()
    h(1fr)
  },
  config-info(
    title: "mytitle",
    author: "@paperbenni",
    institution: "instantOS",
  ),
  config-common(show-notes-on-second-screen: none),
)

#title-slide()

# A




