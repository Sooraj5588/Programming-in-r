import matplotlib.pyplot as plt 
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier,plot_tree
from sklearn.metrics import ConfusionMatrixDisplay, classification_report,accuracy_score, confusion_matrix

x,y=load_iris(return_X_y=True)
x_train,x_test,y_train,y_test=train_test_split(x,y,test_size=0.2,random_state=42)
model=DecisionTreeClassifier()
model.fit(x_train,y_train)
y_pred=model.predict(x_test)

print("Accuracy is: ",accuracy_score(y_test,y_pred))
print("classification report: \n",classification_report(y_test,y_pred))
ConfusionMatrixDisplay.from_predictions(y_test, y_pred)
plt.xlabel("predicted labels")
plt.ylabel("True labels")
plt.title("Confusion Matrix")
plt.show()

plt.figure(figsize=(18,6))
plot_tree(model, filled=True)
plt.xlabel("Decision tree rules")
plt.ylabel("Tree depth ")
plt.title("Decision Tree Visualization")
plt.show()
