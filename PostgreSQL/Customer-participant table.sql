SELECT customer, participant, count(participant)
INTO customer_participant_training_data
FROM merged_training_data mtd
GROUP BY customer, participant
ORDER BY count(participant) DESC;