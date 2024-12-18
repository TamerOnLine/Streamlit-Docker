import streamlit as st
import pandas as pd
import numpy as np

# Set up the app interface
st.title("My First Streamlit App 🎉")

# User input
name = st.text_input("What's your name?", "Tamer")

# Display welcome message
if name:
    st.write(f"Hello, {name}! 👋")

# Add a slider
age = st.slider("How old are you?", min_value=1, max_value=100, value=25)
st.write(f"Your age is {age} years.")

# Add a button
if st.button("Click here"):
    st.success("Button clicked successfully! 🎉")



