# Entity-Relationship Diagramming

An **Entity Relationship Diagram (ERD)** is a visual database design representation.

An ERD usually depicts database entities and relationships, including relationship descriptions and cardinalities. To maximize information representation, an ERD may also depict attributes, indices like primary and foreign keys, as well as datatypes.

Data professionals create an ERD when planning, designing, or communicating on a high-level the architecture of one or more database schemata. An ERD also serves as an educational resource and time-saving reference guide.

## Notation

There is more than one acceptable way to draw an ERD, in terms of the symbols used.

One example style of notation is "Crow's Foot," as illustrated below:

![a picture with different varieties of rectangle for depicting entities, and lines with different ending symbols for depicting relationships ](/resources/images/conceptdrawdotcom-crows-feet-erd-notation-symbols.png)

### Entities

Represent each entity as a rectangle.
  Write the name of the entity in the rectangle.

### Attributes

Within the rectangle of each entity, include a vertical list of attribute names.

Optionally use abbreviations or symbols to indicate which attributes comprise a primary key ("pk") or foreign key ("fk").

Optionally use words or symbols to indicate the datatype of each attribute.

### Relationships

Represent each relationship as a line connecting two entities, or in some cases a line connecting an entity to itself.
 For each relationship direction, label the line with a text box relationship description.

#### Relationship Cardinality

To denote relationship cardinality,
  use `1` to represent "one",
  and either `m` or <code>&infin;</code> (infinity sign) or `-<` (crow's foot) to represent "many".

Mark cardinality for each relationship direction.

#### Relationship Optionality

If there is an opportunity to denote relationship optionality
 without obfuscating the diagram,
 add a leading `0` or `O` next to the cardinality mark for any optional relationships,
 and a leading `|` next to the cardinality mark for any non-optional relationships.

 Mark optionality for each relationship direction.

## Tools

You may use word-processing, spreadsheet, presentation, or diagramming software to produce digital ERDs:

 + MS Word or Google Docs or Pages
 + MS Excel or Google Sheets or Numbers
 + MS PowerPoint or Google Slides or Keynote
 + [MS Visio](https://products.office.com/en-us/Visio/microsoft-visio-2013-plans-and-pricing-compare-visio-options?WT.mc_id=PS_Google_O365SMB_ms%20visio&WT.srch=1)
 or [Lucidchart](https://www.lucidchart.com)
  or [ERDPlus](https://erdplus.com/#/)

Alternatively, you may use special software to auto-generate digital ERDs based on the defined properties of an existing database:

 + MS Access
 + [Rails ERD](https://github.com/voormedia/rails-erd) (requires Graphviz)
 + [Django Extensions](http://django-extensions.readthedocs.org/en/latest/graph_models.html?highlight=graph) (requires Graphviz)

<hr>

Additional resources:
 + https://www.lucidchart.com/pages/ER-diagram-symbols-and-meaning
 + http://rails-erd.rubyforge.org/gallery.html#notations
 + http://www.codeproject.com/Articles/878359/Data-modelling-using-ERD-with-Crow-Foot-Notation
 + https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model#Cardinalities
 + http://www.conceptdraw.com/solution-park/diagramming-ERD
