export const getCars = () => {
        fetch('getCars.php').then((res) => {
            console.log(res);
        });
};

export default getCars;