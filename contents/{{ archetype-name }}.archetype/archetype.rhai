let context = #{};

context += prompt("Project Name:", "project-name", #{
  cases: [
    CasedValue(KebabCase), 
  ], 
});

context += prompt("Greeting:", "greeting", #{
  defaults_with: "Hello, World!",
  help: "Cliche greeting",
});

context += prompt("Git Repo:", "git_repo", #{
  placeholder: "http://github.com/your-name/your-project",
  optional: true,
});

render(Directory("contents"), context)

