Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBHGHZD6QKGQE3QT2S4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id D48F02B3D6B
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 08:00:44 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id h9sf8566562wmf.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 23:00:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605510044; cv=pass;
        d=google.com; s=arc-20160816;
        b=fswdPOUHlVU0dDYZQ3ubAn0Q8Xz0nL6D8klkhnMsr93LviGMEJWJmsci2UZP1BRq/Z
         fc0x8XfRfjtQxNMToLX5PBkoWO7SaoZUlLPMJrMZQ5WsHqcvOaMLaXZKg4wbO2FTVl3c
         M+Q2vYT5zoxm3cE5Ab+ipRbW4tfJxcNmfGLRAaiWvC/B5v726o3SYfpODn7nlJTtT6xe
         geFCf0X26wiiQryIYfm1H0cH9MebQsEx6ZXhkZwzW5/JCw3ZjTobV+mNjqcfPPlES/El
         4mSLUIwbEKdaParyUSb3ZzFn+7AHNH1KiQLt1RqDVKT2+724lQtTqTwdEkdlXNL5cmY5
         JgCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=FWlV8jDsKIG+4RI/SzLw2XgoKH2Wdwu1NC1ty4TpfvU=;
        b=OYtOUwqV2rb2uBV6JY1m/S6LMyyzLC5JFqzjqC2kssgkw5sNsPQ2E4VyY7tyEv5rmL
         +YtXAZSUOl+cKcJRPjTteYvAPErQarU6A2A5jQDT7qxpzobnoI8uSsmGrOzRKiJTnO+k
         4kQb8V02RzRy1A+CICOA1tYZ1TosbBDR5PyQElvSmNE7ox5NRh3Sg97sVZ+cdaO/RWau
         6lgb8cpvNbjazRCBJlBV/kjReNHRndoxysHMcEwVCozSF8tXvII/w/baisECc0Q6VbP2
         yUn+kPk0CycxGolECz8+T4HS7KB7r80msZhVuud/a5gzTeqp5mqgBLdBMfERof4CL/t0
         aDqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mT6a5U26;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FWlV8jDsKIG+4RI/SzLw2XgoKH2Wdwu1NC1ty4TpfvU=;
        b=jDcG6f3uyUfrUuvqQN06V0EC2+NeSnsKsrC7NE8c2QcvhyzUKc8zz9u5crkIuUk67e
         c3v25cmdxAbTuFObSSfeH8UhQznZ3K1Yrm4jhOLEWUqR4ZRO8Xdfd77gbC0BxxKIDpDF
         8JD2dA55iXdg0m+Cmf5H6ngi2AcRsjZBwjtpxIJ8nfDfEiWTKvyVvH/HJaf4pEZ1oVeF
         4dhN34icYHEtLlw9Qhlb0/YgLJGRlR/IOjKSdoMIlkYZoNivGqBt/aehTb4GzpJtNK+5
         nlr39EyfB0/Hg7IE7bjBiEI14rodHi3OYI3bHMe4xrVthiZgcNZvJkHjhFa2htzHbmkt
         Dwlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FWlV8jDsKIG+4RI/SzLw2XgoKH2Wdwu1NC1ty4TpfvU=;
        b=aWG+VT2YAleG6fLGQkONEORgxitog7JOJQEJ0gba1Ij6aYzWFg/Kk0Ck38nywCupv2
         o4B3odZWwzzuXxTADthogaFglyvL927oxdDFV0swNOnLY23qz5xmH/gGfSga/EGPBmip
         NaoEjb4w8UePFo+Ck49CI1NGi0I0VelSU8oXDS79CsPqqvWz+RaBfW0liMLc8xWsnzmr
         fCWF1xS6vk6kr2RWQpyuQi983KWOQOQOYqNiy+kECN9VIxHDVcMJWikj1hHLmos6zONp
         QKGaFF4v+F8dREpwvT/bm0+D3igNaOeBy0jCEKX/MuXMo6Pp7VA/4WlVt/piJb0LFFK0
         2ckw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FWlV8jDsKIG+4RI/SzLw2XgoKH2Wdwu1NC1ty4TpfvU=;
        b=VC3nFjuCSqasAt5bbJEWtSUcfi9l+jNcktFE7gPGJvW0Q5mosBYwuJ6cLyY+LqAetO
         lYyJfv5ezwOTPtB2vOmh9A0XRYS2vC+NEtR0gkI2FlWZMOIuaGef0iUP55WPlY7pXNFZ
         mdU/PaCR7AHF2mmtkWGTc6PJdiVEbhbWFXcnGWVseWDtY4qpB+USs771+VTz/YYwelJ8
         YJMoYaNGLlv4zAAVAmhEKCACnLWE+pI92r4PlVxXEiVW8L2jion/dFJMBjMneSSEh27K
         vwt2M1/+QK1lz0Dor8bkYrYUw8jxjqxkTc5sNSWVinjVqjpO6yKY4HIldIw8kjD4qKXJ
         jhMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oqprrDwHDZsMUXEQPSSZlA0hhn/+0uK1lRTPM7w5GGJjr/aUR
	4z5pfKGg7fcNrvM0dElUFWc=
X-Google-Smtp-Source: ABdhPJwGz0OER+YaF5FIs/6+Lo5X5RU5PrV4vjlRkAtl/NmO6DSu6MQ8f9jod5YyJKMLvEAlg9gNJw==
X-Received: by 2002:a7b:c772:: with SMTP id x18mr14715220wmk.185.1605510044602;
        Sun, 15 Nov 2020 23:00:44 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cf33:: with SMTP id m19ls6082316wmg.1.gmail; Sun, 15 Nov
 2020 23:00:43 -0800 (PST)
X-Received: by 2002:a1c:7c03:: with SMTP id x3mr4358001wmc.181.1605510043765;
        Sun, 15 Nov 2020 23:00:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605510043; cv=none;
        d=google.com; s=arc-20160816;
        b=MsEE+nUcySXTpB0ZhkDpE677h4s95AiHD9X+0Msc4igeqq1dHlQZQUKBr3Bdr0/r2f
         lXPAMlo9/cupWXal+UOSYX/ZnTiZrSk/5VYNsRrl6apkc51UUL+BuLt/znTBqFS6a8Bv
         fGP1F6iFIEauwzFNi91UyUlsYZuGdPNVjl8YlHHKAnVslAe06TYsAdUBX+R99FuytkUx
         nmNO8GG1c0oLYIgeUHjQYqUQr0cWA1ElTqCs6ihngtTqRfblZ/r0zEDSwHP3fXe2U4F8
         s3Yo4Ll2I3NSQlw/1+ZFYa7AUgo5l+lf79rLqhS4s/t7tt2SJqCj100THHPM+YSvpl7f
         20kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/WS+PJRE2OGyeY6RdUzMuAsaLGec+mJ+W+Kppo7JUTk=;
        b=EUEBWGyi69gf1L2LLcT5TwMWBC65bfGFhGH8HhUMeDOrDZEr6UGomcc33Aiqieln4Y
         Tw0k8zEAzPLAYzcpnoDdC1FyY21NZDcnuRhU8D1aMbKLXYGpGISPIGQ0t5mMOV94478P
         PCl50sxCr3gvuFvjLwSiNdDoBLzRM329/MkAy2nXc6D+JMTk1jvc/HpmjYeOvpyNoOPT
         w3jaxQ4jDRfWRfmuh28wBoei9V+va2Jr7TWTJMBnIb7jo55kLyUw9pc3qD/rUfVJuADB
         mN6FsFHFW7kDNAq8x2ZHe+auv0PwPR54nSvQfWidtMKLPUilcZSoSfMsVtUUIBJA//RV
         POPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mT6a5U26;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id w65si26823wmg.1.2020.11.15.23.00.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 23:00:43 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id h2so22722432wmm.0
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 23:00:43 -0800 (PST)
X-Received: by 2002:a7b:c1ce:: with SMTP id a14mr13996360wmj.126.1605510043378;
        Sun, 15 Nov 2020 23:00:43 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2de6:ad00:939:47a9:70b9:fe5b])
        by smtp.gmail.com with ESMTPSA id o63sm18676667wmo.2.2020.11.15.23.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2020 23:00:42 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Christoph Hellwig <hch@lst.de>,
	Hannes Reinecke <hare@suse.de>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	"James E . J . Bottomley" <jejb@linux.ibm.com>,
	linux-scsi@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] scsi: sd: remove obsolete variable in sd_remove()
Date: Mon, 16 Nov 2020 08:00:35 +0100
Message-Id: <20201116070035.11870-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mT6a5U26;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::343
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

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201113

Christoph, Hannes, please ack.

Martin, James, please pick this minor non-urgent clean-up patch.

 drivers/scsi/sd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index 106a9cda0eb7..82d0cb97b758 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -3513,10 +3513,8 @@ static int sd_probe(struct device *dev)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116070035.11870-1-lukas.bulwahn%40gmail.com.
