import numpy as np
from flask import Flask, request, jsonify, render_template
import pickle

app = Flask(__name__)
model = pickle.load(open('logistic_regression_model.pkl', 'rb'))

@app.route('/')
def home():
    return render_template('index_logistic_regression.html')

@app.route('/predict',methods=['POST'])
def predict():

    int_features = [float(x) for x in request.form.values()]
    final_features = [np.array(int_features)]
    prediction = model.predict(final_features)

    output = round(prediction[0], 2)

    if output == 0:
        disease_result = "You have significant heart disease"
    else:
        disease_result = "You are perfectly fine"
    return render_template('index_logistic_regression.html', prediction_text='{}'.format(disease_result))


if __name__ == "__main__":
    #app.run(debug=True)
    app.run(host='0.0.0.0',port=8080)
