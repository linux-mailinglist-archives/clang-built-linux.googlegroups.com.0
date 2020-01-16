Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6GBQLYQKGQEBE5AUNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 094F813EA6F
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:44:26 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id m7sf8168912oim.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:44:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196665; cv=pass;
        d=google.com; s=arc-20160816;
        b=DF17fdEOvPXe+tYJSjrYf54HaUR9MxDsSsA8deMMG+roR+blUsqy4Ns0JMORa8aIK+
         hTl4mR1meHk+NgOuews+ROEdGKy3MikA174wxw89hud2YjAh/ZNjUQmCsrtOR4hvIo3P
         hL5AqTfUp1dsPIu/eON7p/RmxszF3UB46t8Fp23bNnsE79SHdbaZyN89xoWzQOW03yFm
         TJCLCMUE0+D/vvAt3XmSxapNbTVzZp1i0JjXdL0LQZ0CdgGts7BMgDV0qfZnEZYkvs+1
         sUdzVkZ9rOXbeEsVzKeR+tyJ/djsIexa5L5dTHOs9XoyVj96YmMBcHOrijmxns+dmPkc
         M17w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=xixwu4M1TdFZjEjlhsXnq+DC1y000HGo9QgwZHij23I=;
        b=Q5QueC2MUtwjdp8YmSU3j/g0foipl+HhbsFWj/XLGpt6NMcU9RPn4EIhR+Gu13Qw/n
         xx76D7swPsC36wWNSLTWUNferIXVHR9EdHgPS4FrPv8XlvfOcFpy32IMVuklc0sWvGiY
         BhitJoeyRgVRW3cHN8mKBXxM5WN+ilHdnxdWxs1WQHsKENqFMvl7U9wBHhnuoyFRPued
         G/xgt7/WhmDswUIpil6bhjHFUeSw5TvKETS7uI3iKBJt6DAQmWry2vL2mQc0+gd1yJ4z
         fBQug9OKGdvuUUkQceNhnZ3PQoDCluLuSac8YOFAOC0oMfGSPvnJBvMEn1vPPyv2cVZj
         QFWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Z/Obe6hg";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xixwu4M1TdFZjEjlhsXnq+DC1y000HGo9QgwZHij23I=;
        b=CWSCpi5XyPfoOkr/JxkNPI76zRdDP7XeN3e6+XfbPYvr9rH+32spYakyG57dajjU6h
         dMSwj3lsL47a9pFf8qWWrfmZHa0WW21AVaia0+U0FwEpbd+6T+XffuvoHXpmg/9iYO4R
         e3zNXCidRXqSBQdx8aCB/Q69UUjtL3gj4QoGpTZYEYEu19lN1EYgOpZ4d41JFi6bf/jF
         hIbrAg9ICsvmYFpgEYiLylrMZXKQOfz6Q2xqGe8aCd1LPwErUGw6XM2IrK8toisg6+UR
         IbtNX8Zw1VLk4nU2R9tNcEwHRtydRfk/WwN2KGEuzZIrVivoweinykPnFDFSCVMt0648
         fWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xixwu4M1TdFZjEjlhsXnq+DC1y000HGo9QgwZHij23I=;
        b=d9PvMfV84NnasNf1lSo7wpqDq3WTtlpB95FMt3zUL0OMGDW2Spsi2w1f485NIWu55E
         8h7fi57u1sVs5QxtERZ3P2dwzJBFE2kQJfaucYsDiq5aoxYtka2J5/yWrBI7xKTVnJPC
         LB0r1jc4C9EMaJA3NTSrZmanABUfxvX0LhScOK5j0DfeI975sbdwkFqvJnxIrSlMxZuH
         6kyWwtVE25+u1JrBk43Im4T3mPPekP8f7mGEGSBf4KiEr3FdBhv+FtpGNd8vxT3uEclQ
         PJPEUXcMdNZVi1UZsVwU1esrJ1BK1ok0dJSvu4QFDDTT1v5hpE7bWbDwA2/zTFje/JuI
         mc2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXts+BF/8pTWw7VM9mDF1962K/4RkQnMmvfTgA9VBRhpqXHQHne
	gXpRKba8FaDgjnCOqNGVxmw=
X-Google-Smtp-Source: APXvYqycb9xRiz3pHl/fQIhPuOU0bWwKmJf+tT5kWiZAzEYTURb+RLqNvD751MI6CKN1f3Zbcxqhog==
X-Received: by 2002:a9d:799a:: with SMTP id h26mr2878363otm.240.1579196664847;
        Thu, 16 Jan 2020 09:44:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:6103:: with SMTP id v3ls4088900oib.8.gmail; Thu, 16 Jan
 2020 09:44:24 -0800 (PST)
X-Received: by 2002:aca:f507:: with SMTP id t7mr186082oih.156.1579196664469;
        Thu, 16 Jan 2020 09:44:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196664; cv=none;
        d=google.com; s=arc-20160816;
        b=fRaMDE5SZrn2Jst1KgHsLta3EpkuLoVVO7rCXaVPaQIRNTdQwz3vUmt38bWkFdoyxz
         oigSdLM2ZOb8XIFNdnddiUNo055xeKcZHYghvnWdc/DrDDvVFFzFfWbhfWjR4OHcPYml
         DpYCYuEWbj4iiLah/2kR6GQlmMPUDV1wRzPU3uxcVV7CWn5roMPSCR2SFpsCgRVgi8QY
         xwrJi0lI6nkliex3Vj4Pd3TkKuAgM7uQuQEr2BIaOUhKlOhFFFsG9P5Rqnuu4PBfj5XE
         E/gGi+vqcoRt/sRALUAgBRhabF+apDq1iANZ2kxhDHm39bb9BF7VWDpROMQq7m4rMiJM
         9vvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RjzLeAgibMTsaMa4dYwRNJF7IgeaCKCa6hcLWyiT1xI=;
        b=m4nSYW7XVI/+r40Q2C//ltIslDOCltMhxhaz1a1ztKEgZznVJmFeGYzwUJzSWP1zWW
         dvDeU7OibE/2TfZyJicemf5UhOfz5pzlQS6L4iiMgYwN5V33UH26eIJGtBRMORMaD7dR
         R2/nJUQauBrjuOaq62zruNFXm93bKJRIIDckzsW7wgPPusT2BrZIBvm3Ghhcg8K2K7L7
         4duMz3kPqyhIuxi4pDwSBSq7QvjJlXKPMqipGCgBXYDE+s+KYNEQEpxyuhiyW1nGAdyc
         VqDCzm7/Uk2h/SZrXnQmjDVUuiXG0heegmhigCWJOXYe7IDLa5VGgpTQsFRqBshCOYYj
         qERw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Z/Obe6hg";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q188si724083oic.5.2020.01.16.09.44.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:44:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CC21024750;
	Thu, 16 Jan 2020 17:44:21 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 066/174] media: davinci-isif: avoid uninitialized variable use
Date: Thu, 16 Jan 2020 12:41:03 -0500
Message-Id: <20200116174251.24326-66-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116174251.24326-1-sashal@kernel.org>
References: <20200116174251.24326-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Z/Obe6hg";       spf=pass
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
index 78e37cf3470f..b51b875c5a61 100644
--- a/drivers/media/platform/davinci/isif.c
+++ b/drivers/media/platform/davinci/isif.c
@@ -890,9 +890,7 @@ static int isif_set_hw_if_params(struct vpfe_hw_if_param *params)
 static int isif_config_ycbcr(void)
 {
 	struct isif_ycbcr_config *params = &isif_cfg.ycbcr;
-	struct vpss_pg_frame_size frame_size;
 	u32 modeset = 0, ccdcfg = 0;
-	struct vpss_sync_pol sync;
 
 	dev_dbg(isif_cfg.dev, "\nStarting isif_config_ycbcr...");
 
@@ -980,13 +978,6 @@ static int isif_config_ycbcr(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174251.24326-66-sashal%40kernel.org.
