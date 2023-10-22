// The 'leo_workshop' program.
program leo_workshop.aleo {
    record Score {
        owner: address,
        val: u32,
    }
    transition mint(x: u32) -> Score {
        let y: u32 = x * x * x + x + 5u32;
        assert_eq(y, 35u32);
        return Score {
            owner: self.caller,
            val: 100u32,
        };
    }

    transition transfer(score: Score, to: address, val: u32) -> (Score, Score) {
        let sender: Score = Score {
            owner: self.caller,
            val,
        };
        let recipient: Score = Score {
            owner: to,
            val: score.val - val,
        };
        return (sender, recipient);
    }
}
