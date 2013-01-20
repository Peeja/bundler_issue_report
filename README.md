# BundlerIssueReport

The Bundler team asks that users report [certain information][ISSUES.md] when
they file an issue.  There's a lot of it.  It's kind of a pain to gather.
This does it all in one command.

[ISSUES.md]: https://github.com/Peeja/pair_exchange/commit/bb6da645656c7be8c8a752eed4990e8541565eda


## Installation

    $ gem install bundler_issue_report

## Usage

    $ cd project_where_i_see_an_issue
    $ bundler_issue_report | pbcopy # (on a Mac)

or

    $ bundler_issue_report > report.txt

Then paste the report into a new gist and link to it in your issue.
