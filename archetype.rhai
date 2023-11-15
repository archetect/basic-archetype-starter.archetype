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

context += prompt("Git Repo:", "git_repo", #{
  placeholder: "http://github.com/your-name/your-project",
  optional: true,
});

render(Directory("contents"), context);

