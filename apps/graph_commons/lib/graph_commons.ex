defmodule GraphCommons do
  #@root_dir Application.compile_env!(:graph_commons, :root_dir, )
  @root_dir Application.compile_env!(:graph_commons, :root_dir)
  def apps_dir(), do: @root_dir <> "/apps"
  def priv_dir(), do: @root_dir <> "/apps/graph_commons/priv"
  def scripts_dir(), do: priv_dir() <> "/scripts"
  def storage_dir(), do: priv_dir() <> "/storage"

  @type base_type :: :dgraph | :native | :property | :rdf | :tinker
  @type graph_type :: base_type()
  @type query_type :: base_type()

  @type file_test :: :dir? | :regular? | :exists?
end
