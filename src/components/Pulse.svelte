<script>
    export let color = "purple";
    export let infinite = true;

    export const triggerAnimation = () => {
        if (!infinite) {
            const className = "pulse-" + color + "-once";
            let elements = document.getElementsByClassName("pulse");
            for (let element of elements) {
                element.classList.remove(className);
                void element.offsetWidth;
                element.classList.add(className);

                element.addEventListener(
                    "animationend",
                    function () {
                        element.classList.remove("pulse-once");
                    },
                    { once: true },
                );
            }
        }
    };
</script>

<div class="absolute-container">
    <div class="pulse-container">
        <div
            class="pulse pulse-big
            {infinite ? 'pulse-' + color + '-infinite' : ''}"
        ></div>
        <div
            class="pulse pulse-small
            {infinite ? 'pulse-' + color + '-infinite' : ''}"
        ></div>
    </div>
</div>

<style>
    .absolute-container {
        position: absolute;
    }

    .pulse-container {
        position: relative;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .pulse {
        position: absolute;
        z-index: 5;
        background: transparent;
        border-radius: 50%;
        margin: 10px;
    }

    .pulse-small {
        height: 10vh;
        width: 10vh;
    }

    .pulse-big {
        height: 20vh;
        width: 20vh;
        animation-delay: 0.05s;
    }

    .pulse-green-infinite {
        animation: pulse-green 1s infinite;
    }

    .pulse-green-once {
        animation: pulse-green 1s forwards;
    }

    .pulse-red-infinite {
        animation: pulse-red 1s infinite;
    }

    .pulse-red-once {
        animation: pulse-red 1s forwards;
    }

    .pulse-purple-infinite {
        animation: pulse-purple 1s infinite;
    }

    .pulse-purple-once {
        animation: pulse-purple 1s forwards;
    }

    @keyframes pulse-green {
        0% {
            box-shadow: 0 0 0 0 rgba(5, 179, 40, 0.7);
        }

        70% {
            box-shadow: 0 0 0 10vh rgba(51, 217, 178, 0);
        }

        100% {
            box-shadow: 0 0 0 0 rgba(51, 217, 178, 0);
        }
    }

    @keyframes pulse-red {
        0% {
            box-shadow: 0 0 0 0 rgba(216, 1, 1, 0.7);
        }

        70% {
            box-shadow: 0 0 0 10vh rgba(51, 217, 178, 0);
        }

        100% {
            box-shadow: 0 0 0 0 rgba(51, 217, 178, 0);
        }
    }

    @keyframes pulse-purple {
        0% {
            box-shadow: 0 0 0 0 rgba(171, 14, 218, 0.7);
        }

        70% {
            box-shadow: 0 0 0 10vh rgba(51, 217, 178, 0);
        }

        100% {
            box-shadow: 0 0 0 0 rgba(51, 217, 178, 0);
        }
    }
</style>
