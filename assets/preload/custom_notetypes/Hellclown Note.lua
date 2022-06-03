function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Hellclown Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Hellclown Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'mechanics/FIRENOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'mechanics/FIREnoteSplashes'); --Change texture
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = purple FIREs, 1 = blue FIREs , 2 = green FIREs, 3 = red FIREs
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	--Check if the note is a Hellclown Note
	if noteType == 'Hellclown Note' then
		playSound('burnSound', 1);
		characterPlayAnim('gf', 'scared', true);
		setProperty('health', getProperty('health') - 0.3); --Harm the player if hit
	end 
end
