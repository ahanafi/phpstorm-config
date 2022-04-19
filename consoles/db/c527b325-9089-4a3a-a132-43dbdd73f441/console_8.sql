SELECT SUM(jumlah) AS jumlah
                        FROM pembayaran_piutang
                    JOIN (
                        SELECT DISTINCT id_sales, id_pelanggan FROM nota_penjualan
                        ) AS nota
                    ON nota.id_pelanggan = pembayaran_piutang.id_pelanggan
                    WHERE nota.id_sales = '3'