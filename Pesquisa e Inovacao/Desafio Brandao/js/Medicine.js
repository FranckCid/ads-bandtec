function Medicine(med) {
    const { name, from, to, hour, days } = med
    return `
            <article class="med container" onclick='app.remove("${med.name}")'>
                <header class="med-figure">
                    <img src="img/pills.png" alt="pílula" class='w-100'>
                </header>
                <main class='med-content'>
                    <h1 class='med-title'>${name}</h1>
                    <div class="med-desc">
                        <div class="med-days_week">
                            <table>
                                <thead>
                                    <th class='day-uncheck'>d</th>
                                    <th class='day-uncheck'>s</th>
                                    <th class='day-uncheck'>t</th>
                                    <th class='day-uncheck'>q</th>
                                    <th class='day-uncheck'>q</th>
                                    <th class='day-uncheck'>s</th>
                                    <th class='day-uncheck'>s</th>
                                </thead>
                                <tbody>
                                    ${Object.values(days).map(d => 
                                        `<td><input type="checkbox" ${d ? 'checked' : ''} disabled></td>`
                                    ).join('')}
                                </tbody>
                            </table>
                        </div>
                        <div class="med-date">
                            ${from} • ${to}
                        </div>
                        <span class="med-hours">
                            ${hour}
                        </span>
                    </div>
                </main>
            </article>
        `
}