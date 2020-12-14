Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBWHM3T7AKGQERSLO3SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 183492D9588
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 10:54:33 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id k128sf6491608wme.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 01:54:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607939672; cv=pass;
        d=google.com; s=arc-20160816;
        b=q92qtiPLsgGmXvSnjyVF7eyd5F9QMY9sRUNHgMhjIlkJCdG6YF+fqkEDOeGZeUpM2w
         w9rMCrZbL3YS5AU7Mdbbv4yBVStAmzELTitXJvpu+NqwTwDhWYJzedzJF+3pmG/Tg0Kb
         xtnl5Uw3JQQWqUkR4NtUJ4yjC4WLNvySHV38nfSg/pMGF7e3CkYUN+tezO6hHKAWYPrd
         LzL8FZ5eCBo/f7smV1+mRCRt1m2qBq51I5vFdgO22q02KMW+u5yGHadfZ/1+V7VHyeK4
         AnHu2layr5yGBD6aekRnUZEFMEbWqct1oWqj4TDhF3YBrBi7QkuWDvWDO8kWFWRe9z/2
         gpTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=CxiaKq+a2mzJyxRsVJ8odzwExTDmE03gK65NFacdB/M=;
        b=e37O1cDuc/maOfjC9xPnhVZuhu1cXpUBzVsYr+69iH2RZUOA9qeDvWY/IFNwPCrIO0
         9zdXlCekyxo/+YaIFsLyFowinzXLx0Y8JA6gvIhfNMGEjmtAaN1aGaV4iJZ+ThI001xY
         UHatAwmJta8fWbBTAVy44o159Qo32EKSwTayc1PVoi1AiMKwzRJQOX3W/Hxu+h1H22hm
         D6+PS2YbVLykDm+JIL7jawtGZyJoNJeaxje9qQMTnt2FN4W3QLnx7gIEtby7g81fM/ag
         6pHNODcrJrcx0a1QufxueCtu3uE9t8vNJHkzrmdAekHm1vmKfHOUUPnzoU7hSjM/AtyM
         mpwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pA2b4V26;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CxiaKq+a2mzJyxRsVJ8odzwExTDmE03gK65NFacdB/M=;
        b=RUcZhnj5w4mM7GSr4/PcbvgKiSLv6EHzM6mRefGARIXP8HCmmvX0e1OJGE47TIZPWa
         x7nzYsYywiBgXxhXVE0B6hLyVDi3dDjvhSg0dPk9jxpY6Q5+LjmGHPxP8GiMcRTr95D1
         3oELNgcUAgHOnHn3HQkB/nxBy7Ta4ZscwhjQdW2SGPqKbWXzJ+/5c/40NRTIaOZeREK3
         g6hTi7K8DKtHnuKWgULKYonMS/zUgGN/0A4FqhiMvg2c6O9K2nDtiNooIFupsd+N11fj
         ABfXIcOyNH8wYF54wVBcF2udhJTTaF+lyOJFvORKVhervr1w/YZ8AiPIsRLO9n/EwcuA
         ce7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CxiaKq+a2mzJyxRsVJ8odzwExTDmE03gK65NFacdB/M=;
        b=UjKWxd3dut4L2FXq1z0hDeyNGYfTv/KjNNqiE04Zl2GOSHUaMNJ0KLa1+iVmgfkg9L
         LEtpTQ4WOFfwluVj9Cjfw1LqRk4mWHb9YoPBYtxxwYsIVj+lLaqIroXmhJX5m6imjGtd
         2+/BdZIH0209dHscUoRF3nINHhkKY3uikbN7MSUOOVJ5E9x6lKZRfvzygstNJsVVwyrF
         pHDHUsxpHamyC+OUqXRUzQj1IP7yhZSm8Jc4WvVOliHF+cI5eo5D5bJiMI2hmLG8u2wW
         XwPM6dGwvljEAjzT9uih7g5prVSM0ltTa2607Nv+rNrbe+e/knI6/eLzciQwzv7Tv3OV
         7suw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CxiaKq+a2mzJyxRsVJ8odzwExTDmE03gK65NFacdB/M=;
        b=RwUuod/ai+SbZkjh4AhMZDzVZcoXHfnY4kQKFm4rZ71Eo9lzazRvoIX4pfrhvo4FnM
         S/CQSNJEcENnBsP9byTErWB6/kPTuX/7FLOMLcjIIyNU1REwjsWv1UdykOh8/3GeXqIu
         teYzTHbF8DPhnPpvcx5ccfAXXffemQh5N/KGOkFkpIcSRPPcXkEO7V0tFsQVKqrV3noS
         k1mGEJnshQeZsBE8rmcpKh7ZLENgyzN5vvDja/KUefE4S8n7BWT/q+ChOcelj02i0+Z1
         tgS/2jfHZ/VR0yQgsKNfSAMoHl/J1vvlEtrB6zB1CTwXizFx7Hy0epLg2djGVlG4H0WC
         d9fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533H+OfsihE7gYVsgLCQZDMbGIdO868EcYusYfmKyLKb00k30nmn
	dKc87mTdZ51YpwAjfyp5zl0=
X-Google-Smtp-Source: ABdhPJyOx6FfFqS84xlif9Dm42/UcAmImyGGT4yX+1Q3hQhyISXbi4w2g/O+vRLp7GDRhjPIenAr1w==
X-Received: by 2002:adf:fa86:: with SMTP id h6mr27686096wrr.103.1607939672775;
        Mon, 14 Dec 2020 01:54:32 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls12322263wrn.2.gmail; Mon, 14
 Dec 2020 01:54:31 -0800 (PST)
X-Received: by 2002:adf:a4cc:: with SMTP id h12mr25889746wrb.391.1607939671913;
        Mon, 14 Dec 2020 01:54:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607939671; cv=none;
        d=google.com; s=arc-20160816;
        b=Qx+wlRYX4qpodvu7mHhzX6059Sn+3dxKeHe/wJIQPfbwTpMr02GVgTSxCuVAAlOkzI
         rw8pqOZ4xkBsBb3xt84WNZPUteDzYSxNqMEm7F6xY1Ny3BBv0dXiYL6c/dBbynKTsMbC
         sSbVGwr2oGGhUz92j2MmDN+nrBPCC1wkI+bWaTHJOxT5mptpMjkUH1AZRXWyaUqef+lI
         QPUqPoRBNl1IMVOp6W1/VbgHVIE+id73DH1B7TSeBtdwjTGiTF6a8GsRxM3suBX9R9jC
         Zo1oyE3iFgRFXlwZFkqlzbk8vTEMbBm1omd/jC8HYIeYd+omleEbKkqX5Akot7S4sbMn
         NJoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=+TLqkNu+h8gO95ZaplkB/B/fxqrw+QmRfatUThxlnac=;
        b=espMvitLCky6uEFEsDONZJT5hW/6i1XqNIHh/m2kAwJTbPi+KyDTwPp6jtj1AtoMzD
         kG9eoZnRX+ylFbrGYVjBO9nErvuzCKk5m4PXE3t6GFsdR2UedcFDa9D+YG2UjAInBS4O
         TN7AQwfDV/RxZhGIqLojbEXqi4mb/qfatftLn3Ug1QeVw2T+EqEjPdUpp6ROre1OCscL
         LvDq0NG0zVFfmMO4EWxgaarBW5DTXhWRg4mCwMks+1n0EoMaCmIfChs5Ou8FqiGnuu5l
         RgHGgxlUum3o42ksn5VSsC93NF9MHW3J5IcHisZLVx4afDvCaepy3kVO6AfnAqgpVZDy
         d5wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pA2b4V26;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id z188si182072wmc.1.2020.12.14.01.54.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 01:54:31 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id g20so21725465ejb.1
        for <clang-built-linux@googlegroups.com>; Mon, 14 Dec 2020 01:54:31 -0800 (PST)
X-Received: by 2002:a17:906:7687:: with SMTP id o7mr22009036ejm.209.1607939671569;
        Mon, 14 Dec 2020 01:54:31 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2dd4:5300:de8:a057:1d20:a710])
        by smtp.gmail.com with ESMTPSA id d14sm16140932edn.31.2020.12.14.01.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Dec 2020 01:54:30 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Jens Axboe <axboe@kernel.dk>,
	linux-block@vger.kernel.org
Cc: Christoph Hellwig <hch@lst.de>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-scsi@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH v2] scsi: sd: remove obsolete variable in sd_remove()
Date: Mon, 14 Dec 2020 10:54:24 +0100
Message-Id: <20201214095424.12479-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pA2b4V26;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Commit 140ea3bbf39a ("sd: use __register_blkdev to avoid a modprobe for an
unregistered dev_t") removed blk_register_region(devt, ...) in sd_remove()
and since then, devt is unused in sd_remove().

Hence, make W=1 warns:

  drivers/scsi/sd.c:3516:8:
      warning: variable 'devt' set but not used [-Wunused-but-set-variable]

Simply remove this obsolete variable.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201113, next-20201211

The patch was submitted for inclusion in scsi:

  https://lore.kernel.org/lkml/20201116070035.11870-1-lukas.bulwahn@gmail.com/

v1 -> v2:

Christoph and Nathan reviewed, and I added the tags here.
Martin asked the patch to go through block.

Jens, can you please pick this minor non-urgent clean-up patch?

 drivers/scsi/sd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index 679c2c025047..21675a98620d 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -3510,10 +3510,8 @@ static int sd_probe(struct device *dev)
 static int sd_remove(struct device *dev)
 {
 	struct scsi_disk *sdkp;
-	dev_t devt;
 
 	sdkp = dev_get_drvdata(dev);
-	devt = disk_devt(sdkp->disk);
 	scsi_autopm_get_device(sdkp->device);
 
 	async_synchronize_full_domain(&scsi_sd_pm_domain);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201214095424.12479-1-lukas.bulwahn%40gmail.com.
