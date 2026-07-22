return {
  s({ trig = ",lra", snippetType = "autosnippet" }, {
    t("\\leftrightarrow"),
  }),
  s({ trig = ",Lra", snippetType = "autosnippet" }, {
    t("\\Leftrightarrow"),
  }),
  s({ trig = ",La", snippetType = "autosnippet" }, {
    t("\\Leftarrow"),
  }),
  s({ trig = ",Ra", snippetType = "autosnippet" }, {
    t("\\Rightarrow"),
  }),
  s({ trig = ",fr", snippetType = "autosnippet" }, {
    t("\\mathfrak "),
  }),
  s({ trig = ",bb", snippetType = "autosnippet" }, {
    t("\\mathbb "),
  }),
  s({ trig = ",kb", snippetType = "autosnippet" }, {
    t("\\mathtt{KB}"),
  }),
  s({ trig = ",ca", snippetType = "autosnippet" }, {
    t("\\mathcal "),
  }),
  s({ trig = ",ran", snippetType = "autosnippet" }, {
    t("\\operatorname{range}"),
  }),
  s({ trig = ",-", snippetType = "autosnippet" }, {
    t("\\setminus "),
  }),
  s({ trig = ",ov", snippetType = "autosnippet" }, fmt([[\overline{<>}]], { i(1) }, { delimiters = "<>" })),
  s({ trig = ",rm", snippetType = "autosnippet" }, fmt([[\mathrm{<>}]], { i(1) }, { delimiters = "<>" })),
  s({ trig = ",bf", snippetType = "autosnippet" }, fmt([[\mathbf{<>}]], { i(1) }, { delimiters = "<>" })),
  s({ trig = ",an", snippetType = "autosnippet" }, fmt([[\langle <>\rangle]], { i(1) }, { delimiters = "<>" })),
  s({ trig = ",V", snippetType = "autosnippet" }, fmt("\\Var\\!\\left[<>\\right]", { i(1) }, { delimiters = "<>" })),
  s({ trig = ",C", snippetType = "autosnippet" }, fmt([[\Cov\!\left(<>\right)]], { i(1) }, { delimiters = "<>" })),
  s({ trig = ",sd", snippetType = "autosnippet" }, fmt("\\sigma\\!\\left[<>\\right]", { i(1) }, { delimiters = "<>" })),
  s(
    { trig = ",E", snippetType = "autosnippet" },
    fmt("\\mathbb E\\!\\left[<>\\right]", { i(1) }, { delimiters = "<>" })
  ),
  s({ trig = ",P", snippetType = "autosnippet" }, fmt([[\Pr\!\left(<>\right)]], { i(1) }, { delimiters = "<>" })),
  s(
    { trig = ",pr", snippetType = "autosnippet" },
    fmt(
      [[
    \begin{proof}
      <>
    \end{proof}
    ]],
      { i(1) },
      { delimiters = "<>" }
    )
  ),
}
