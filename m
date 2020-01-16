Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSFPQLYQKGQENR2UQXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1935113E3F1
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:05:14 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id a2sf16555711ill.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:05:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194313; cv=pass;
        d=google.com; s=arc-20160816;
        b=AnDDkN1Rtq8Ihj5in5HobkR7UONQ11fK5vr5WTSgyGQdDywtXQlH9UJSSJo/+x36Z3
         g4zw5eYrhMNSr+YF0OcG5lHYWRBlmyUkgv1mlfgUj6O+WyqBE1sNPfFf1k0po/aYaZ6E
         EPvAEpTF/UEwCfsGNKYBOv4wNR1XBOBimMBQcJfuGlf9PSo77P/1w5NjWh5Kl9tU+AkS
         aNJnjEAfttejpGCPP7/DwsFZgw+JA3UDNg2DZhYsUxqkmBaJIN4IyhCSZM+7MnZTDGvx
         fITmiI6gwsvRGZXe4hJB49EWJVdT0iPgxmhPCFOoGo7pfIFVDkrrJ1gwy56eYGSdSSco
         VwGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=pHdg0Qh64N4GNzh1w2qSm6p4jCKSLXX7705C/IUOe/Q=;
        b=mDvb/jtbjaQiUEnvOfFtrbEiaz1VnCfBQicXI2V1jWt0vxo4Hftowd8u8pTQJ2ZjwY
         5EZGn22Dj1AVNxt0VunKBCbrxmIv+cFjVgxmhQm7iYx+kP7uxCilQIoazXFsiLkI5SiS
         pXGrIETc5IlMWBT3J1DUa+0ZrR5XTSaXQDjq8kYxfkeqzImMDzADFKvO6mFoohIxxRjl
         hj5IuLEd0mndlu/6m9jwByX6AC+YmCPUO3P8lqOyKGzzyk0iwIh2RhmRtEq1pVKhsFyn
         TiUR3X0XD9SngCTDS86HU27m6UJXfSZLl3cKtB2Mty9+cgyo2s7AFCIBkR2fD5oJpKMK
         UL/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ND1YA85D;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pHdg0Qh64N4GNzh1w2qSm6p4jCKSLXX7705C/IUOe/Q=;
        b=IWaUv0XwnQCd1K/Nq8Eh8Zv4W448syKKzJWaEZaHKpu046nX8wAgDpwpuzsb4kL0sp
         c/g8F4c2oWTUhqOivNzkte44rLfHCB/5s733p3o6VEi5DFxVIrK0aQhVH7+nBpIu+Cz2
         2Phqv2om+ttHPzR7w2k33aqpqZNah6x3MkHqqIWlIb8Z/teY77XMr7Pkdlwxf791S42e
         WmzkAuG8w3nSBE+wZZuGuOJD9S+uV6Me3763DhEP2sbNzdrchFUP7pckoJ83v4SQVqhw
         /+GxFJx7njpsQ4O6rTBuhjIqTteBEBMD+jU76NmcpwzWjJFNpM3XdnnoYyHrpfNHMC/J
         NWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pHdg0Qh64N4GNzh1w2qSm6p4jCKSLXX7705C/IUOe/Q=;
        b=bRjpVwSqoY0Homtzcsmkk6X198KvmOiIbwL8bVpm0VTbFWZm0OF825ugP+Q+NTm4w4
         lq1Uffk3P0zWLs/krTUe6XaCE1CIhZAVGJBNjAbQFupsr+Zls+pzM5bem+lvTsr1u+Lo
         CRRyP3p6blKBkpo7iftddZ0/79rTklEoSJ00P9jBgfe1HiX+laoM04jbxOlvDX8sEUkF
         AP/p+mJ1u95h++cDWeZ97p893RD7G5GSRfejzkm/JxZt1/Gg1/e3kRHnwP7ONp2whbhU
         qhVSsQJEdabD5bZi3X1QJjoichFZ6F4/ZibEzVo5EfWU0ABJYtYqQi5KObdkWbI7s812
         XhGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWMNQjdOpxfpx/cXeoTSgan0qfOlfy5av4KYVo0yqag3p+6UwIx
	+06tUEj/7sKWIMqWEKydn20=
X-Google-Smtp-Source: APXvYqzieA0DeDv+ewqarz3uR+Z/tHisoZgzvjZ0jAp5eU+owArAx3eDF82RmCg6EChiJu1AR36Nkw==
X-Received: by 2002:a02:13ca:: with SMTP id 193mr30116586jaz.54.1579194312939;
        Thu, 16 Jan 2020 09:05:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5c56:: with SMTP id q83ls4062405ilb.0.gmail; Thu, 16 Jan
 2020 09:05:12 -0800 (PST)
X-Received: by 2002:a92:89c2:: with SMTP id w63mr4324655ilk.252.1579194312570;
        Thu, 16 Jan 2020 09:05:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194312; cv=none;
        d=google.com; s=arc-20160816;
        b=1FOD6aAIfXOK17TYNPPUpMcS90cGG9WFF6rOcejINhcEuQg1w4Ogn+qOqxrU1ldBpY
         3IAZHuEEprS2O76cHb3OsxNNA/pE/vQbkWz3vHlfIqWuctWhap9ddZgecGYt+NGkyqfv
         G2fVQ3sZSAT8g5RUPARgJhE7p9L/6Xvl/PGtGAVGrYBMT90s8zrnAfrb0jIt/6D2TSSC
         Xi942sU7fJBsmbH87sMVgYeYIxOz63GcRe0NKFi2k7FaUP4arpr9L6rAI9fyEXzpkeKa
         K2+sJdYyj1lBFvkN8nZ4KFpZkk1y5yU6tYVGeKi/hQ0U9hPD6Pq7mZVzHIgXeTt+HlcI
         T1Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=04YyKl6p+ax/KPeqo2YKXWjff6K+Qxq7oRryttajzQo=;
        b=018Dq3xmkKh/EDkOpN7GffFrCtrlfd95W+HC10tI9hpORc6EEN1rWj6DcPQaLRE4Yf
         UBvEpKZMEPX6reaRBlZNEQrGi32UP1CDUWikArDs7klGDnkH9hkn3MMfr2tOaU4G3Vrm
         xTwEd8YFEhSiIdgJ5llRe7UiAC3EbZ5U6iwimQB/NwmTzUNlZfXM9D702M5IxS9etnrB
         nXsC0OqDVR0OQaW9oyOu5srP6CbU9jRzHCP6yAmBvTnVvy+pYSj+dAApF6fKkwvGkV3E
         9syf10dGwu4vokKk9AdtxTutsmxuLZf+nTc43UmHjU0tB8mwPfmYkElaOAQKdN73GG4E
         yO3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ND1YA85D;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b16si667714ion.0.2020.01.16.09.05.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:05:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C9B522077B;
	Thu, 16 Jan 2020 17:05:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Lad Prabhakar <prabhakar.csengg@gmail.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 264/671] media: davinci-isif: avoid uninitialized variable use
Date: Thu, 16 Jan 2020 11:58:22 -0500
Message-Id: <20200116170509.12787-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ND1YA85D;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 0e633f97162c1c74c68e2eb20bbd9259dce87cd9 ]

clang warns about a possible variable use that gcc never
complained about:

drivers/media/platform/davinci/isif.c:982:32: error: variable 'frame_size' is uninitialized when used here
      [-Werror,-Wuninitialized]
                dm365_vpss_set_pg_frame_size(frame_size);
                                             ^~~~~~~~~~
drivers/media/platform/davinci/isif.c:887:2: note: variable 'frame_size' is declared here
        struct vpss_pg_frame_size frame_size;
        ^
1 error generated.

There is no initialization for this variable at all, and there
has never been one in the mainline kernel, so we really should
not put that stack data into an mmio register.

On the other hand, I suspect that gcc checks the condition
more closely and notices that the global
isif_cfg.bayer.config_params.test_pat_gen flag is initialized
to zero and never written to from any code path, so anything
depending on it can be eliminated.

To shut up the clang warning, just remove the dead code manually,
it has probably never been used because any attempt to do so
would have resulted in undefined behavior.

Fixes: 63e3ab142fa3 ("V4L/DVB: V4L - vpfe capture - source for ISIF driver on DM365")

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Lad Prabhakar <prabhakar.csengg@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/davinci/isif.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/media/platform/davinci/isif.c b/drivers/media/platform/davinci/isif.c
index 340f8218f54d..80fa60a4c448 100644
--- a/drivers/media/platform/davinci/isif.c
+++ b/drivers/media/platform/davinci/isif.c
@@ -884,9 +884,7 @@ static int isif_set_hw_if_params(struct vpfe_hw_if_param *params)
 static int isif_config_ycbcr(void)
 {
 	struct isif_ycbcr_config *params = &isif_cfg.ycbcr;
-	struct vpss_pg_frame_size frame_size;
 	u32 modeset = 0, ccdcfg = 0;
-	struct vpss_sync_pol sync;
 
 	dev_dbg(isif_cfg.dev, "\nStarting isif_config_ycbcr...");
 
@@ -974,13 +972,6 @@ static int isif_config_ycbcr(void)
 		/* two fields are interleaved in memory */
 		regw(0x00000249, SDOFST);
 
-	/* Setup test pattern if enabled */
-	if (isif_cfg.bayer.config_params.test_pat_gen) {
-		sync.ccdpg_hdpol = params->hd_pol;
-		sync.ccdpg_vdpol = params->vd_pol;
-		dm365_vpss_set_sync_pol(sync);
-		dm365_vpss_set_pg_frame_size(frame_size);
-	}
 	return 0;
 }
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-1-sashal%40kernel.org.
