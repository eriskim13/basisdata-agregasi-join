SELECT tempatlahir, MIN(nilai)
FROM siswa GROUP BY tempatlahir;

SELECT tempatlahir, MAX(nilai)
FROM siswa GROUP BY tempatlahir;

SELECT tempatlahir, MIN(nilai) AS nilai_terendah,
MAX(nilai) AS nilai_tertinggi
FROM siswa GROUP BY tempatlahir;

SELECT tempatlahir, COUNT(tempatlahir)
FROM siswa GROUP BY (tempatlahir);

SELECT jk, AVG(nilai) AS rata_rata
FROM siswa GROUP BY(jk);

SELECT jk, SUM(nilai) AS jumlah_nilai
FROM siswa GROUP BY(jk);

SELECT siswa.*,pinjambuku.*
FROM siswa
JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT siswa.*,pinjambuku.*
FROM siswa
RIGHT JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT siswa.*,pinjambuku.*
FROM siswa
LEFT JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT siswa.*,pinjambuku.* 
FROM siswa LEFT JOIN pinjambuku 
ON siswa.nis=pinjambuku.nis 
WHERE pinjambuku.nis IS NULL;

