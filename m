Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWUHVP3QKGQEDIREOYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 3301D1FDE1D
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:31:08 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id w8sf2782738plq.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:31:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443867; cv=pass;
        d=google.com; s=arc-20160816;
        b=IbdsExfGTUCVskvNoDgykYKl3i6zGSWN0z8KK/ylXNf7Ta4AkY1+LwRiAW7Qihr3dd
         r1SNYpSGuBeaRcPfUHDlp46F6JMEQVjHuNBswKOuD+OkL98fG7E425iafR8fBndWp1Pc
         sf4zx+6eoOkVuIUF++1jclbUwc45MSQ8XMcnFfMlA0VNjky9DQjErekUUiwT4ti0cHsw
         4tfm1m5f0THVTzHlsE6twtuxd8LzZryQbgI9G4eiEVnN/e/vugnwmVsxNzz5sUpEFF2o
         bXYJkayVvEFgtngIjHmoipeSMC48z3rnKdkyowVTd2zv3dHL2UVvYG8lD5i8dLZ8kAEH
         lqkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Kd79Lh8Ti97IMaKjV2XBuG7ChmKCgjVppioEv8RNLmA=;
        b=SUMmtvXY50Kr5Z7xsx1y5n53Z+2SjhTk7zIrB+HIgE8qMM5s+np7ZWA0oC9IaV/mZ+
         Yg//4XgTemMTHTbF+DvMwt0k2kKnlX/gil3Ko+7wd3t10O9Gy91J3OLzV2i1nOd1kqKH
         2pTjoxLWdUO+9RnFwSJKU+XB81zqy6XAQ6zPDyp3I1M5YkVRTnY19tIfx593337o/zRL
         NJvMRKra6fb9Yxj3y8ifG3mCax4aYqUVYsQ0SPb66PWwRK8GEqDVDVntPDAbhYGIlfs7
         aCZm8c1gJQXiV6BOPZw1O7Rnvwi5o7IvwWDPfMUbGb2h18ePune1ePgZVOYsmBDcsZs6
         dwMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tF22iKoh;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kd79Lh8Ti97IMaKjV2XBuG7ChmKCgjVppioEv8RNLmA=;
        b=SSLxKNzDhWWZgjuHounbwejZFE1B45qElVz8XOM+RxYQRJJhR/3oxTolORd2xcTmOD
         mReiswoypbm9LzBo0bvp50wzVYSum5cxFIs4+3l851qGgCdrd8yWY7B0y10fJ5+GtB29
         efR30uLWochMBiTqteUONIfJ5rzdsUcHwl4AA3DGa5bJnCOEmzwhC/SYUV7uNPGXvCLl
         U5MqZWt16vGCdiAHXUxvqE23ert64xmfP8KEvMho9joMvXODjT5Sea7EUOriWRoRMc20
         yInTZ8dklp/zJsgBI8+Kcw/ZcDJgVN6o2DPgVC5Hhnf4hYwOQKVLg/WiZkXNuEYXosho
         ysvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kd79Lh8Ti97IMaKjV2XBuG7ChmKCgjVppioEv8RNLmA=;
        b=F6HbmnQKF9cj1Xif/iL/Jl6/4OQ4IdLbI42ZSVax6TdRvKfe5PJ0MfmzTl5bTy7rgM
         rpXCc5F3MeCK36EE/43vY2CvIvv/HwBAioO21zwpbib8Ag4FE9yEHAXI/v3ran2LqMMh
         y1/z+Elo8qMnpeAFOdSxrRUu/kJYTrYMOXGMsvofA5fSurJtNAfAOPRyl215/piIOXrR
         SGx+8CHnrsKFr64SzMbGNgqncbAptqJCNYCXv0CosUSHg1rJkGvZh4XYOI6YcTBqHtCJ
         vK5UkVGSVWCte6od0bD25YpncTDlbhmCaiqmv545kGJYjVyWBmkM8DkZGoae/sDEQlmm
         wZaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pcMq25hPa5AXVm3r5ROcbtfUFRA6kpAyMH0geSQCtdmomzUPa
	Ke847K+Ao9huaOjjHlSBaLI=
X-Google-Smtp-Source: ABdhPJwxKRvamvzcJTPbQUbks3DiY5HJ7kLz6BqNShr+GXFa6/PYjSqUjS2acKKvDMIa85GjrI3UrA==
X-Received: by 2002:a63:4e64:: with SMTP id o36mr1419377pgl.101.1592443866868;
        Wed, 17 Jun 2020 18:31:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c910:: with SMTP id o16ls1071209pgg.4.gmail; Wed, 17 Jun
 2020 18:31:06 -0700 (PDT)
X-Received: by 2002:a63:5915:: with SMTP id n21mr1381604pgb.323.1592443866458;
        Wed, 17 Jun 2020 18:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443866; cv=none;
        d=google.com; s=arc-20160816;
        b=HfXTDjY1dMa1x0CS5IyJCObJY1EwS0wNVj556p6fw6tu1j8A7YhxPj/ipHuArwlBeb
         r/WVSZYSxxNUJOGBLWJ2BUKRrbLYxYAYJfi+THcpjODjOWNOVJsPwQA7R6pRzplx3p9x
         Oetv8LpFHEwRhEsFIAc9KHfCgAhN0S2wt5EnildKBFPYjhBb40oGVzQgOohSVZg+pYhs
         Et1EzV56273wkQfZVAf1NHuJ1KUkh80YltUTGLfTdzYexoIoKg4WiOigC6kqP4Ys98Dx
         WFBGKVzq0ddE8Av2/xgNoU/42QJkXc/zj+HOCvkrh0qqfmr0P9UvH2aNQCt64x1GC55Q
         /L7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gnY+XQkwOHC2Tq9NZ0iDsBbN0+z7op0yMoJqBGYqWkw=;
        b=Yzl8Ppq2YxRJyZMp9KU/v8Yn14e2xORpFZmkORcjGtXX/vvTUwUBTv93zLFn/YQNrD
         rC2WnA5+Wws7JtQlo0uV07Yh6R6ftrHwsfIyrWWxfxQyCHmwNlEcNBAIrcSrr8NaUheo
         24HFaWP/nNw+GOOKOaSjmL/RLbWp/uF1OcPYGPv1W39zzz/oB9nh3h75YMryHCHbCFsM
         qN9yCrJpHTOnmHAg3lzl1G8HI/TkRZpQh/2ON6gT3+f1zP/5ghhcGWi5SlIWiPrjg0ER
         EL3NMSO9T8K45zItJ6NaZHUj60jGnM9cZR1QRvcH+8uVMoDlhtGCoo74KSSruP929DUs
         8xYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tF22iKoh;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q194si122032pfq.4.2020.06.17.18.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4A64422255;
	Thu, 18 Jun 2020 01:31:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	kbuild test robot <lkp@intel.com>,
	Felipe Balbi <balbi@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 47/60] USB: gadget: udc: s3c2410_udc: Remove pointless NULL check in s3c2410_udc_nuke
Date: Wed, 17 Jun 2020 21:29:51 -0400
Message-Id: <20200618013004.610532-47-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618013004.610532-1-sashal@kernel.org>
References: <20200618013004.610532-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tF22iKoh;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 7a0fbcf7c308920bc6116b3a5fb21c8cc5fec128 ]

Clang warns:

drivers/usb/gadget/udc/s3c2410_udc.c:255:11: warning: comparison of
address of 'ep->queue' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (&ep->queue == NULL)
             ~~~~^~~~~    ~~~~
1 warning generated.

It is not wrong, queue is not a pointer so if ep is not NULL, the
address of queue cannot be NULL. No other driver does a check like this
and this check has been around since the driver was first introduced,
presumably with no issues so it does not seem like this check should be
something else. Just remove it.

Commit afe956c577b2d ("kbuild: Enable -Wtautological-compare") exposed
this but it is not the root cause of the warning.

Fixes: 3fc154b6b8134 ("USB Gadget driver for Samsung s3c2410 ARM SoC")
Link: https://github.com/ClangBuiltLinux/linux/issues/1004
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Felipe Balbi <balbi@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/gadget/udc/s3c2410_udc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/usb/gadget/udc/s3c2410_udc.c b/drivers/usb/gadget/udc/s3c2410_udc.c
index eb3571ee59e3..08153a48704b 100644
--- a/drivers/usb/gadget/udc/s3c2410_udc.c
+++ b/drivers/usb/gadget/udc/s3c2410_udc.c
@@ -269,10 +269,6 @@ static void s3c2410_udc_done(struct s3c2410_ep *ep,
 static void s3c2410_udc_nuke(struct s3c2410_udc *udc,
 		struct s3c2410_ep *ep, int status)
 {
-	/* Sanity check */
-	if (&ep->queue == NULL)
-		return;
-
 	while (!list_empty(&ep->queue)) {
 		struct s3c2410_request *req;
 		req = list_entry(ep->queue.next, struct s3c2410_request,
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618013004.610532-47-sashal%40kernel.org.
