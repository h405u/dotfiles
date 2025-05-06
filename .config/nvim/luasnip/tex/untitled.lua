-- Return snippet tables
return {
  s({ trig = ",lra", snippetType = "autosnippet" }, {
    t("\\Leftrightarrow"),
  }),
  s({ trig = ",fr", snippetType = "autosnippet" }, fmt([[\mathfrak{<>}]], { i(1) }, { delimiters = "<>" })),
  s({ trig = ",cal", snippetType = "autosnippet" }, fmt([[\mathcal{<>}]], { i(1) }, { delimiters = "<>" })),
  s({ trig = ",ov", snippetType = "autosnippet" }, fmt([[\overline{<>}]], { i(1) }, { delimiters = "<>" })),
  s({ trig = ",rm", snippetType = "autosnippet" }, fmt([[\mathrm{<>}]], { i(1) }, { delimiters = "<>" })),
  s(
    { trig = ",ref", snippetType = "autosnippet" },
    fmt(
      [[
    \begin{reference}{<>}{<>}
      <>
    \end{reference}
    ]],
      { i(1), i(2), i(3) },
      { delimiters = "<>" }
    )
  ),
  s(
    { trig = ",ex", snippetType = "autosnippet" },
    fmt(
      [[
    \begin{exercise}{<>}
      <>
    \end{exercise}

    <>
    ]],
      { i(1), i(2, "Question to fill in."), i(3, "\\textcolor{red}{to do}") },
      { delimiters = "<>" }
    )
  ),
  s({ trig = ",bb", snippetType = "autosnippet" }, fmt([[\mathbb{<>}]], { i(1) }, { delimiters = "<>" })),
}
