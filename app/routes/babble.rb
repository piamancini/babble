Babble::Engine.routes.draw do
  get    "/topics"                                   => "topics#index"
  post   "/topics"                                   => "topics#create"
  get    "/topics/default"                           => "topics#default"
  get    "/topics/:id"                               => "topics#show"
  post   "/topics/:id"                               => "topics#update"
  delete "/topics/:id"                               => "topics#destroy"
  get    "/topics/:id/read/:post_number"             => "topics#read"
  get    "/topics/:id/posts/:post_number/:order"     => "topics#posts"
  post   "/topics/:id/post"                          => "topics#create_post"
  post   "/topics/:id/post/:post_id"                 => "topics#update_post"
  delete "/topics/:id/destroy/:post_id"              => "topics#destroy_post"
  get    "/topics/:id/groups"                        => "topics#groups"
  post   "/topics/:id/presence"                      => "topics#presence"
end