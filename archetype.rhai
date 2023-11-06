let context = #{};

context.archetect_version = archetect::version();

context += prompt("Archetype Name:", "archetype-name", #{
  cases: [
    CasedValue(KebabCase), 
  ], 
});

context += prompt("Description:", "description");

context += prompt("Author:", "author_full", #{
  placeholder: "Your Name <your.name@domain.com>",
  help: "Author Name and Email",
});

render(Directory("contents"), context);

