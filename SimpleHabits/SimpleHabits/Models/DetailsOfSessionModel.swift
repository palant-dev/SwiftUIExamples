//
//  DetailsOfSession.swift
//  SimpleHabits
//
//  Created by Antonio Palomba on 09/10/23.
//

import SwiftUI

struct DetailsOfSessionModel {
    let title: String
    let categoryName: String
    let numberOfPlays: Int
    let description: String
    let listOfRecordings: [String]

    static let example: DetailsOfSessionModel = DetailsOfSessionModel(
        title: "Antonio's Starter",
        categoryName: "Meditation",
        numberOfPlays: 229849,
        description: "Embark on a transformative voyage with Erik and unlock the power of mindfulness, tailored just for you. Embrace serenity, cultivate joy, and find your truest self in every breath. Download now and begin your journey to a more centered, mindful you!",
        listOfRecordings: ["Morning Meditation for Clarity",
                           "Guided Body Scan for Relaxation",
                           "Stress Relief Breathing Exercise",
                           "Evening Wind Down for Peaceful Sleep",
                           "Focus and Productivity Booster",
                           "Self-Compassion and Gratitude Session",
                           "Deep Relaxation with Nature Sounds",
                           "Mindful Eating Practice",
                           "Visualization for Manifestation",
                           "Loving-Kindness Meditation",
                           "Gentle Yoga and Stretching Routine",
                           "Mindful Walking in Nature",
                           "Creative Visualization for Inspiration"])
}
