#!/usr/bin/env python3
# PROJECTS/quiz.py - Basic Japanese Character Quiz

import random

# Hiragana-Katakana pairs (romaji → [hiragana, katakana])
chars = {
    'a': ['あ', 'ア'],
    'i': ['い', 'イ'],
    'u': ['う', 'ウ'],
    'e': ['え', 'エ'],
    'o': ['お', 'オ'],
    'ka': ['か', 'カ'],
    'ki': ['き', 'キ'],
    'ku': ['く', 'ク'],
    'ke': ['け', 'ケ'],
    'ko': ['こ', 'コ']
}

def run_quiz():
    score = 0
    total = 10  # Number of questions
    
    print("✨ Hiragana/Katakana Quiz ✨\nAnswer with romaji (e.g. 'ka'). Type 'quit' to exit.\n")
    
    for _ in range(total):
        romaji, (hiragana, katakana) = random.choice(list(chars.items()))
        char = random.choice([hiragana, katakana])  # Randomly pick hiragana or katakana
    
        answer = input(f"{char} → ").strip().lower()
        
        if answer == 'quit':
            break
        if answer == romaji:
            print("✅ Correct!")
            score += 1
        else:
            print(f"❌ Wrong! It's '{romaji}'")
    
    print(f"\nScore: {score}/{total}")

if __name__ == "__main__":
    run_quiz()
