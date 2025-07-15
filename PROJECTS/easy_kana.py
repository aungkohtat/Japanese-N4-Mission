import random

# 10 easiest Katakana words
words = {
    "コーヒー": "coffee",
    "ペン": "pen",
    "テレビ": "TV",
    "ノート": "notebook",
    "デスク": "desk",
    "バナナ": "banana",
    "タクシー": "taxi",
    "カメラ": "camera", 
    "レモン": "lemon",
    "アイス": "ice cream"
}

print("🌟 Easy Katakana Quiz 🌟")
print("Type the English meaning:")

score = 0

for word in random.sample(list(words), 5):  # Ask 5 random questions
    answer = words[word]
    guess = input(f"\n{word} → ")
    
    if guess.lower() == answer.lower():
        print("✅ Correct!")
        score += 1
    else:
        print(f"❌ It's '{answer}'")

print(f"\nYour score: {score}/5")
