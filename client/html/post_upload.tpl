<div id='post-upload'>
    <form>
        <div class='dropper-container'></div>

        <div class='control-strip'>
            <input type='submit' value='Upload all' class='submit'/>

            <span class='skip-duplicates'>
                <%= ctx.makeCheckbox({
                    text: 'Skip duplicate',
                    name: 'skip-duplicates',
                    checked: false,
                }) %>
            </span>

            <span class='always-upload-similar'>
                <%= ctx.makeCheckbox({
                    text: 'Force upload similar',
                    name: 'always-upload-similar',
                    checked: false,
                }) %>
            </span>

            <span class='pause-remain-on-error'>
                <%= ctx.makeCheckbox({
                    text: 'Pause on error',
                    name: 'pause-remain-on-error',
                    checked: true,
                }) %>
            </span>

            <span class='upload-all-anonymously'>
                <%= ctx.makeCheckbox({
                    text: 'Upload anonymously',
                    name: 'upload-all-anonymously',
                    checked: false,
                }) %>
            </span>

            <% if (ctx.enableSafety) { %>
                <div class='all-safety safety'>
                    <% for (let safety of ['safe', 'sketchy', 'unsafe']) { %>
                        <%= ctx.makeRadio({
                            name: 'all-safety',
                            value: safety,
                            text: safety[0].toUpperCase() + safety.substr(1),
                            selectedValue: 'safe'
                        }) %>
                    <% } %>
                </div>
            <% } %>

            <input type='button' value='Cancel' class='cancel'/>
        </div>

        <div class='messages'></div>

        <ul class='uploadables-container'></ul>
    </form>
</div>
