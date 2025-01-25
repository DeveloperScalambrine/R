y_true <- c('dog', 'cat', 'cat', 'cat', 'dog', 'dog')  # Value True
y_pred <- c('dog','cat','cat','cat','dog','dog')  # Value predicted

confusion_matrix <- confusionMatrix(factor(y_pred), factor(y_true))
# values of matrix confusion
confusion_matrix

# using a library ggplot for visualization of results
ggplot(as.data.frame(confusion_matrix$table), aes(Prediction, Reference))
    geom_tile(aes(fill = Freq))
    geom_text(aes(label = Freq))
    scale_fill_gradient(low = "white", high = "steelblue")
    theme_bw() 
    ggtitle("Matrix of Confusion")

