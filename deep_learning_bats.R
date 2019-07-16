knitr::opts_chunk$set(echo = TRUE)

original_dataset_dir<-("all_image/train")
base_dir<-("all_image/small")

train_dir <- file.path(base_dir, "train")
validation_dir <- file.path(base_dir, "validation")
test_dir <- file.path(base_dir, "test")

train_bat_dir <- file.path(train_dir, "bat")

train_no_bat_dir <- file.path(train_dir, "no_bat")

validation_bat_dir <- file.path(validation_dir, "bat")

validation_no_bat_dir <- file.path(validation_dir, "no_bat")

test_bat_dir <- file.path(test_dir, "bat")

test_no_bat_dir <- file.path(test_dir, "no_bat")

library(keras)
conv_base <- application_vgg16(
  weights = "imagenet",
  include_top = FALSE,
  input_shape = c(150, 150, 3)#comment this out so that we can use images of different size
)

unfreeze_weights(conv_base, from = "block3_conv1")

model <- keras_model_sequential() %>% 
  conv_base %>% 
  layer_flatten() %>% 
  layer_dense(units = 256, activation = "relu") %>% 
  #layer_batch_normalization()%>%
  #layer_dropout(0.5) %>%
  
  layer_dense(units = 1, activation = "sigmoid")

train_datagen = image_data_generator(
  rescale = 1/255,
  rotation_range = 40,
  width_shift_range = 0.2,
  height_shift_range = 0.2,
  shear_range = 0.2,
  zoom_range = 0.2,
  horizontal_flip = TRUE,
  fill_mode = "nearest"
  
)
test_datagen <- image_data_generator(rescale = 1)
train_generator <- flow_images_from_directory(
  train_dir,
  train_datagen,
  target_size = c(150, 150),
  batch_size = 20,
  class_mode = "binary"
)
validation_generator <- flow_images_from_directory(
  validation_dir,
  test_datagen,
  target_size = c(150, 150),
  batch_size = 20,
  class_mode = "binary"
)

model %>% compile(
  loss = "binary_crossentropy",
  optimizer = optimizer_rmsprop(lr = 1e-5),
  metrics = c("accuracy")
)
history <- model %>% fit_generator(
  train_generator,
  steps_per_epoch = 100,
  epochs =20,
  validation_data = validation_generator,
  validation_steps = 50
)
save_model_hdf5(model,"deep_learning_bats.h5")
