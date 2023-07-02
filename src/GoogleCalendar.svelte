<script>
    let days = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"];
    let events = [["11:00", "lõuna"], ["13:00", "lõuna2"], ["15:00", "lõuna3"]]
</script>

<div class="calendar-container">
    {#each days as day}
        <div class="calendar-day">
            <div class="calendar-day-title">{day}</div>
            <div>
                
                {#each events as event}
                    <div class="calendar-day-event">{event[0]}{event[1]}</div>
                {/each}
            </div>
        </div>
    {/each}
</div>

<style>
    .calendar-container {
        width: 100%;
        height: 24rem;

        box-sizing: border-box;
        padding: 0.5rem;

        display: flex;

        background-image: url("/field-fog-bg.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }
    .calendar-day {
        height: 100%;
        width: 15%;

        box-sizing: border-box;
        padding: 0.5rem;
        border-left: 0.5px solid white;
        border-right: 0.5px solid white;
    }

    .calendar-day-title {
        height: 10%;
        text-align: center;
        font-size: 1.2rem;
    }
</style>
