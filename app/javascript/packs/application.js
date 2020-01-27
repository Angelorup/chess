

const onClick = () => {
    const select = document.querySelectorAll(".white");
    select.forEach(white => {
        white.addEventListener('click', (e) => {
            console.log('hi');
        })
    })
}
onClick();
// console.log('hi');
import "bootstrap";
