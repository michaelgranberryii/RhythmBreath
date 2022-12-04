//
//  MenuCards.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/10/21.
//

import Foundation

struct MenuCards {
    
    var descriptions : [CardInfo] = [
        CardInfo(breathingRhythmtext: "4-6",
                 breathingShortDescription: "Calm Mind - Sleep - Anxiety Free",
                 breathingLongDescription: "There are many methods of breathing intentionally and consciously and even courses. Choosing an efficient way of taking a breath is not only critical, as any breathwork technique will benefit you. But the benefits are to be expanded when selective measures are taken. Enter the 4-6 breathing technique.",
                 cardBackgroundColor: AppColors.darkred,
                 breathingRhythm: BreathingRhythm(inhaleCount: 4,
                                                  inhaleHoldCount: 0,
                                                  exhaleCount: 6,
                                                  exhaleHoldCount: 0)),
        
        CardInfo(breathingRhythmtext: "4-4",
                 breathingShortDescription: "Creative Mind - Energy - Awake",
                 breathingLongDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                 cardBackgroundColor: AppColors.pink,
                 breathingRhythm: BreathingRhythm(inhaleCount: 4,
                                                  inhaleHoldCount: 0,
                                                  exhaleCount: 4,
                                                  exhaleHoldCount: 0)),
        
        CardInfo(breathingRhythmtext: "4-1-7",
                 breathingShortDescription: "Creative Mind - Energy - Awake",
                 breathingLongDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                 cardBackgroundColor: AppColors.lightpurple,
                 breathingRhythm: BreathingRhythm(inhaleCount: 4,
                                                  inhaleHoldCount: 1,
                                                  exhaleCount: 7,
                                                  exhaleHoldCount: 0)),
        
        CardInfo(breathingRhythmtext: "4-4-4",
                 breathingShortDescription: "Creative Mind - Energy - Awake",
                 breathingLongDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                 cardBackgroundColor: AppColors.lightGreen,
                 breathingRhythm: BreathingRhythm(inhaleCount: 4,
                                                  inhaleHoldCount: 4,
                                                  exhaleCount: 4,
                                                  exhaleHoldCount: 0)),
        
        CardInfo(breathingRhythmtext: "4-4-4-4",
                 breathingShortDescription: "Creative Mind - Energy - Awake",
                 breathingLongDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                 cardBackgroundColor: AppColors.limeGreen,
                 breathingRhythm:BreathingRhythm(inhaleCount: 4,
                                                 inhaleHoldCount: 4,
                                                 exhaleCount: 4,
                                                 exhaleHoldCount: 4)),
        
        CardInfo(breathingRhythmtext: "4-2",
                 breathingShortDescription: "Reset Mind - Calming - Stress Free",
                 breathingLongDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                 cardBackgroundColor: AppColors.chillBlue,
                 breathingRhythm: BreathingRhythm(inhaleCount: 4,
                                                  inhaleHoldCount: 0,
                                                  exhaleCount: 2,
                                                  exhaleHoldCount: 0)),
        
        CardInfo(breathingRhythmtext: "4-7-8",
                 breathingShortDescription: "Clears Mind - Creative - Focus",
                 breathingLongDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                 cardBackgroundColor: AppColors.darkBlue,
                 breathingRhythm: BreathingRhythm(inhaleCount: 4,
                                                  inhaleHoldCount: 7,
                                                  exhaleCount: 8,
                                                  exhaleHoldCount: 0)),
        
        CardInfo(breathingRhythmtext: "Custom",
                 breathingShortDescription: "Creative - Your Own - Rhythm",
                 breathingLongDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                 cardBackgroundColor: AppColors.darkGreen,
                 breathingRhythm: BreathingRhythm(inhaleCount: 4,
                                                  inhaleHoldCount: 0,
                                                  exhaleCount: 6,
                                                  exhaleHoldCount: 0))
    ]
}

