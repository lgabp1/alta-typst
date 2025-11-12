#import "alta-typst.typ": alta, term, skill, styled-link, name, target, icon
#import "lalib.typ": place_at

#alta(
  name: "John Smith",
  links: (
    (name: "email", link: "mailto:contact@example.com"),
    (name: "website", link: "https://example.com/", display: "example.com"),
    (name: "github", link: "https://github.com/example", display: "/example"),
    (name: "linkedin", link: "https://www.linkedin.com/in/example", display: "/example"),
  ),
  tagline: [
    Catch phrase / description #lorem(30)
  ],
  context [
    == Experience

    === Company 1 \
    #name[Job, description]
    #term[01.2000 --- 02.2001][Paris, France]

    - #lorem(15)
    - #lorem(10)
    - #lorem(24)

    == Education

    === University 1 \
    #name[Degree]
    #term[01.2000 --- 02.2001][Paris, France]

    - #lorem(15)
    - #lorem(10)
    - #lorem(24)

    === University 2 \
    #name[Degree]
    #term[01.2000 --- 02.2001][Paris, France]

    - #lorem(15)
    - #lorem(10)
    - #lorem(24)

    === University 3 \
    #name[Degree]
    #term[01.2000 --- 02.2001][Paris, France]

    - #lorem(15)
    - #lorem(10)
    - #lorem(24)


    #if target() == "paged" {
      colbreak(weak: true)
    }

    == Highlighted Projects

    #grid(columns: (1fr, auto),[=== #link("https://example.org")[example.org]], text(9pt, [#icon("calendar") summer 2011]))

    #lorem(15)

    == Technical Skills

    === Programming
    - #lorem(4)
    - #lorem(4)
    - #lorem(4)
    - #lorem(4)
    - _Frameworks familiar with:_
       #lorem(6)

    === 3D modelling softwares

    - SolidWorks, Fusion 360
    
    == Soft Skills

    - #lorem(4)
    - #lorem(4)
    - #lorem(4)
    - #lorem(4)
    
  ] +
  
  place(
      bottom,
      clearance: 70pt,
      float: true,
      scope: "parent",
      [
        #grid(
          columns: (1.2fr, 0.9fr, 1fr),
          gutter: 15pt,
          [
            == Languages
              - French -- Native
              - English -- Full working proficiency
          ],
          [
            == Hobbies
              - #lorem(4)
              - #lorem(4)
          ],
          [
          ]
        )
        #let _radius = 160pt
        #place(
          bottom + right,
          [
            #box(clip: true, stroke: 2pt + rgb("#3E0C87"), radius: _radius,
            width: _radius, height: _radius,
            image("photo.jpg", width: _radius))
          ]
        )
      ]
    )
)
