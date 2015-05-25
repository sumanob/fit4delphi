# Introduction #

Fit library is available as BPL. It makes it available for Delphi and Borland C++ Builder applications. It was compiled with Delphi 2006, but it should works with any Delphi starting with version 7.


# Details #

  * All fixture names are converted to Delphi convention with _T_ at the beginning, e.g. ActionFixture is TActionFixture.
  * All custom fixtures definitions needs to be surrounded by {$METHODINFO ON} and {$METHODINFO OFF}
  * Fields used in fixture needs to be defined as _published_
  * Custom fixture needs to be registered in _initialization_ section:
```
initialization
  RegisterClass(TBrowser);

finalization
  UnRegisterClass(TBrowser);
```
  * Custom fixtures needs to be packed into BPLs
  * Path to Fit.BPL and custom fixures BPLs needs to be provided on Wiki page:
```
!path c:\source\fitnesse\DelphiFit\bin\*.bpl
!define COMMAND_PATTERN {c:\source\fitnesse\DelphiFit\bin\FitServer.exe -v %p}
```
  * Data are stored internally using Variant type
  * Based on Fit 20070619
  * Using RTTI helper functions written by David Glassborow (http://davidglassborow.blogspot.com/2006/05/class-rtti.html)
  * Using Regular Expression library written by Andrey V. Sorokin (http://anso.da.ru/)
  * Some parts in code are not fully implemented and are marked with _TODO_ marker
  * Some parts are not implemented at all e.g. _decorators_