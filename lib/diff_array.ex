defmodule DiffArray do
  @dcomodule """
    2つのファイルの差分を比較するモジュール
  """

  @doc """
    カンマ区切りの2つの文字列ファイルを読み取って、差分をファイルに出力する
  """
  def write(path, a1, a2) do
    File.write!(path, diff(a1, a2))
  end


  @doc """
    改行区切りの2つの文字列ファイルを読み取って、差分文字列を返す
  """
  def diff(a1, a2) do
    # 2ファイル読んで配列にして差分を取る
    Enum.join((File.read!(a1) |> String.split("\n")) -- (File.read!(a2) |> String.split("\n")), "\n")
  end
end
