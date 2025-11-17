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
    title: "A novel approach to dmenu",
    author: "@paperbenni",
    institution: "instantOS",
  ),
  config-common(show-notes-on-second-screen: none),
)

#title-slide()

== Advantages

- Faster
- More features
- Prettier

= What's wrong with dmenu?

== Problems

- X11
- XWayland
- Very weird codebase

== X11

Has Problems
- On its way out #footnote[wether you like it or not]
- Many people unable to use it
- Legacy jank

#pause

However
#pause
- Stable
- Battle tested

== Wayland

Wayland has problems
- Many missing features
- Applications are not portable
- Some people are unable to use it

#pause
However
#pause

It is nice if you don't need the missing features. 
Sway is nice. 

== Terminal

Terminal emulators are a solved problem
- Kitty and Ghostty are really stable and work well
- fzf is what dmenu wishes it was

---
#focus-slide[
#idea[Terminal as dmenu]
]

== Problems to solve

- Terminals take a long time to start
- How do I get stuff into the terminal?
- How do I get stuff out of the terminal?

#focus-slide[
  I solved those #emoji.face.party
]

#focus-slide[
  Introducing... #pause`ins menu`
]

== Features

- Runs within a terminal
- Runs within a GUI

#idea[
Does not reinvent the wheel: Heavy lifting being done by fzf and kitty
]

