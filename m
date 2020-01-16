Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBKNZQLYQKGQEDHP4H3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF4413E771
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:26:02 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id 7sf8402900ybp.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:26:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195561; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZV/JK+gCDWbsAHo586pL9scDFoW5qIQyo6MhErAqXmG1QutyYOBMzcigluxftxhwKg
         brbzi5U+US3iIhgn4tUvo+ka+muleBBnCjtpEbBVB/br1XmIUXzH0M2g6WSVLisA2rBf
         UvzdCGhgMm5gZmJLA1NGTFyFjWaGeF4YPKs+tLdrCcLcAwIJfjHQYcm98XH///OA4qjD
         35fdzZi5kucRYDhxJYpVlc9Kk7x6JAqhVok3gylMcRwhwfiVbbtvU5LweuFawszX2rck
         Dh+T9Y1uC2gdLzE4tlrzx3DPCuYnHHUp9vC+7bL/+Jpdp6GMq/aCr884zCGe12Kem10G
         vPOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5L4+BX+0Keb3xNA9jNKggnQyOOckkTrojsQU2EXgQ3Q=;
        b=p30xWE2SX1s465HTXVjGo25kCNkmGjaiujYGstPfFHMuCaFxb8b5ZDDE0XjC4S1xta
         rJKIv3AbiSGsP5/6qzyTvtEEDlsyku8miZ4sNvS6Suz6TOWnoWJ6d3jgqDzImTdQMDwU
         1RIBkn/yDV8181PGhaCFMyyOoEwmSuupEo1V2F7fUnHx8hJdTqLYFMp9b2/WMZcEmGQr
         8RSXhfjSFrxyWewvaJ1MkvVKz95TESNpwPLNsUXwoFsMelZT33XTQ15Yi1+osqlTuO0U
         ZVoa4zC8FuagFVf+ZjRYovGkyXmeqY7qd2XvKL240MhaIGOA9ai6SkzbYdKnO0OBLwet
         D/EQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mfXxWskc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5L4+BX+0Keb3xNA9jNKggnQyOOckkTrojsQU2EXgQ3Q=;
        b=OQjzFYpBXPQQeNcEQlOb2oebz4zAOl7Ti6URK0TaywepjnOIPTxpKjF6SdsSTD+pOy
         OZPJ9UdrDz2rRh7iPk/b0SeWJurI32p+T/vUMDiYxjMSRBe5ObdkwBNgrZ8DJk/kvGbV
         npFxiQ4z/5+T1DPiu1RTLUdUDdem5+Q1fXXRIUrDhJE5PjmNzg9xh9OtjcIzb3zZLYIG
         C1vILegFHcXV4XR462bHxUmjYKz/qBiZX4OakdpolJZeh/lLqpVCODHDmn9jNKu+kKmA
         x/lTrS3b2BGDLJKZlzth14LK8yU2dZQI4maIY3YzML/PDhKLsbw4lbpE1h6E/AXp9cZm
         ausw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5L4+BX+0Keb3xNA9jNKggnQyOOckkTrojsQU2EXgQ3Q=;
        b=tB8N+CQZKUC+bCPwxa8RoS2vCjSyrQnXsb+K6HuZn6CqrZfLzkHwPB7vlxgDoHRcE7
         6MtbS6TuK0fqtozd0evaBrgjucRf4ZuRb3hm0R0pz234A5JHAl0EYxHsQS7eW5GaJiaR
         kBTuo5jzPWeEVmeuoY1jtBz9/qiAhUOlZi+jPfAl4XzoEUjTtMc7/qRW3KtpUlpaxW8N
         DPH1FjqNp8QbnSWuITYcOGhT0LLzCT1L3kf3C74Td2Kh2tGhVFu40uacVYYSI/ozQY8l
         01h3WCGSg3ThK01QnsKzO5SqE1gqFcKk2DJ4Qbe6rQn9s28Ik3viD7APbR7Rs7LxgJ90
         MfdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUPNa3+AsvdYAi0qy8APvSgqjbGBme6lh+qTikrfvCyU3pSeGuK
	xr0BzOHgSMDRLat7MBE8Ya0=
X-Google-Smtp-Source: APXvYqxs+2Y17wz0E4dT8DrDYr8lYZ+wr3rCSVu1UDpLYayhqbSMKGD4bGTyMF0bSXY5oBi4QOGR1w==
X-Received: by 2002:a81:89c4:: with SMTP id z187mr27396024ywf.83.1579195561190;
        Thu, 16 Jan 2020 09:26:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d447:: with SMTP id m68ls2282098ybf.6.gmail; Thu, 16 Jan
 2020 09:26:00 -0800 (PST)
X-Received: by 2002:a25:d2c6:: with SMTP id j189mr27345675ybg.374.1579195560744;
        Thu, 16 Jan 2020 09:26:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195560; cv=none;
        d=google.com; s=arc-20160816;
        b=1IHWABWhOqMVu/7dpJHYSH9QAMNo+/6YHLxtZTc9Raqz3I53hvvTc+S0jYCp08PBys
         pX+a339zlfXpzv3teGN2khHnlqceIt16m7cRbDJvJQ9tMj8MgQG0EYWmLflnZa+X5jvc
         iY+BPyIaLPhwKBYD9vQjrsBhAMJlmlPEO/itHdej4lK6zA69JvIJPD+zxOAN87LqIxPE
         60dPGMHePuioTuXrpxJg0BmMaAEvT4C21fVcBuXfm1O22K3W0ycjqX6RBUYO3HKWo2mn
         dlAyXysZRly6f8Kp+/BU3xDKXJEzdW+oiJlKkOzcQVddw9sA8kGGgSqrZgPl48VsMRXY
         sPNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+NjUEbOuuv8dXKR1KH8WH43lNzILX8w2wXaAmgElpjk=;
        b=TwLB+JuZyIy7i7z9C/BmkhVfPbKsYozOpNHlcLk6Mg3/wUW8W2uJ6yMberZ+/OZDUe
         38v7eJGIDGOOgU5kf23VNrOOwP4YhrytEEKv5gJtWNHaQSMxWC/KtUoPL3Cau29KV7B0
         8pfbQcBOtomcwfwuof9KHWV10104HeejGSJyuCOybWSRIoYr2/E/vaFSplJOOEep65Xe
         op6pYLGDgv2shci5yanU8wqkFEU+Q37sxdQc+fkjdo3uYNgT8OdYnlDX9GIHdXP2aGLj
         SBgzV3rk1Zh0azl4WvjGVUki+0C+lMwetJmHcFI/8zCuEO182VMXlOAkKUUzqQvnpx08
         SfPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mfXxWskc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p15si983478ybl.5.2020.01.16.09.26.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:26:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C1D3C246AF;
	Thu, 16 Jan 2020 17:25:58 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 147/371] media: davinci-isif: avoid uninitialized variable use
Date: Thu, 16 Jan 2020 12:20:19 -0500
Message-Id: <20200116172403.18149-90-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mfXxWskc;       spf=pass
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
index 90d0f13283ae..12065ad1ac45 100644
--- a/drivers/media/platform/davinci/isif.c
+++ b/drivers/media/platform/davinci/isif.c
@@ -886,9 +886,7 @@ static int isif_set_hw_if_params(struct vpfe_hw_if_param *params)
 static int isif_config_ycbcr(void)
 {
 	struct isif_ycbcr_config *params = &isif_cfg.ycbcr;
-	struct vpss_pg_frame_size frame_size;
 	u32 modeset = 0, ccdcfg = 0;
-	struct vpss_sync_pol sync;
 
 	dev_dbg(isif_cfg.dev, "\nStarting isif_config_ycbcr...");
 
@@ -976,13 +974,6 @@ static int isif_config_ycbcr(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-90-sashal%40kernel.org.
