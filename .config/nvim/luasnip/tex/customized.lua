return {
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
    \begin{exercise}
      <>
    \end{exercise}

    <>
    ]],
      { i(1, "Question to fill in."), i(2, "\\textcolor{red}{to do}") },
      { delimiters = "<>" }
    )
  ),
  s(
    { trig = ",pa", snippetType = "autosnippet" },
    fmt(
      [[
    \paper{<>}{<>}

    \bigskip
    \textit{<>}
    ]],
      { i(1), i(2), i(3) },
      { delimiters = "<>" }
    )
  ),
  s(
    { trig = ",setex", snippetType = "autosnippet" },
    fmt([[\setcounter{exercise}{<>}]], { i(1) }, { delimiters = "<>" })
  ),
  s({ trig = ",td", snippetType = "autosnippet" }, {
    t("\\textcolor{red}{to do}"),
  }),
  s({ trig = ";td", snippetType = "autosnippet" }, {
    t("% TODO: "),
  }),
}
