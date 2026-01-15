---
description: Rapid logging for food, symptoms, cycle, and workouts with automatic timestamping.
usage: /log <data>
---

# /log

## Usage
`> /log Ate 2 eggs and sourdough toast.`
`> /log Period started today.`
`> /log Woke up at 7am feeling rested.`

## Execution Steps

### Step 1: Get Truth (System Time)
1.  **Run Shell Command**:
    ```bash
    date +"%Y-%m-%d %H:%M"
    ```
2.  Capture the output. This is the **System Timestamp**.

### Step 2: Analyze & Categorize
1.  **Backdating Check**:
    - Look at the user's input for time references (e.g., "at noon", "yesterday", "at 7am").
    - If found, adjust the **System Timestamp** to match the user's intent.
    - If not found, use the **System Timestamp** exactly as is.

2.  **Categorize**:
    - **Nutrition**: Food, drink, supplements.
    - **Cycle**: Menstruation, ovulation signs, spotting.
    - **Symptom**: Pain, mood, energy levels, digestion.
    - **Sleep**: Wake time, quality, dreams.
    - **Activity**: Workouts, walking, movement.

### Step 3: Cycle Context
1.  Read the project's memory to find the "Current Cycle Day".
2.  **Reset Rule**:
    - If the log indicates "Period started" or "Day 1", RESET the "Current Cycle Day" to **1** in the memory file.

### Step 4: Append to Memory
1.  Locate (or create) `daily_log.md` in the active project memory folder.
2.  Append a new line in this exact format:
    ```text
    [TIMESTAMP] | [CATEGORY] | [USER INPUT]
    ```

### Step 5: Response
1.  **Validate**: Confirm the log was saved.
2.  **Contextualize (Optional)**:
    - If it is a **Symptom**, check the last 24h of logs for potential causes (e.g., poor sleep, specific foods).
    - If it is **Cycle** related, mention the biological phase (e.g., "Day 1 - Estrogen and Progesterone are at their lowest").
    - Keep it short. Do not lecture.

## Example Responses

**Standard:**
> "Logged [Nutrition] at 12:30 PM."

**With Insight:**
> "Logged [Symptom]. Note: This headache coincides with the caffeine withdrawal you noted yesterday."

**Cycle Reset:**
> "Logged [Cycle]. Cycle Day 1 started. Prioritize rest and iron-rich foods today."
