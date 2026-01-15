# Wellness Pack for Stateful Claude

> A science-based, functional medicine partner for your AI Agent.

This is a **Skill Pack** for [Stateful Claude](https://github.com/yourusername/stateful-claude). It transforms Claude into a biological tracking partner focused on cycle health, metabolic function, and nutrient density.

**Philosophy:**
- **Science over Hype:** No "manifesting" or "life coaching." Focus on biology.
- **Context Aware:** Understands that symptoms (energy, hunger) change based on your cycle phase.
- **Bio-Individual:** No cookie-cutter diet advice.

## What's Included

- **Persona:** Clinical Nutritionist & Endocrinologist-aware partner.
- **Commands:**
  - `/log`: Smart logging with automatic timestamping.
  - `/insight`: Analyze patterns between food, cycle, and mood.
- **Memory:** Automatically builds a `daily_log.md` in your project folder.

## Installation

**Prerequisite:** You must have [Stateful Claude](https://github.com/yourusername/stateful-claude) installed first.

1.  Clone this repository:
    ```bash
    git clone https://github.com/yourusername/wellness-pack.git
    cd wellness-pack
    ```

2.  Run the installer:
    ```bash
    ./agent/install.sh
    ```

3.  Initialize a project:
    ```bash
    claude
    > /init my-health
    # Select "Wellness" when asked for packs.
    ```

## Usage

### Logging Data
Use `/log` to track food, symptoms, or workouts. The agent checks the system time automatically.

```text
> /log Ate 3 eggs and avocado.
> /log Period started. Feeling low energy.
> /log Woke up at 6am, sleep score 85.
```

### Getting Insights
Ask the agent to look for correlations in your data.

```text
> /insight
```

**Example Output:**

> "Reviewing your logs... I noticed your energy dips consistently around 3 PM on days you skip protein at breakfast. Also, your current fatigue aligns with Day 26 of your cycle (Luteal Phase)."

## The Persona

When this pack is active, Claude follows these rules:

- **Validate:** Acknowledge the log briefly.
- **Contextualize:** Relate symptoms to the current cycle day.
- **No Shame:** Food is fuel. Tracking is data, not judgment.
