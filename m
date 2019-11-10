Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOPUTXXAKGQE74YLLTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AF7F62F9
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:47:22 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id w11sf8456095otq.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:47:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573354041; cv=pass;
        d=google.com; s=arc-20160816;
        b=wzfcdkW3SDv2NQZ8wxqzXGQcJnbGBbwsAKZu01aAdf/ys4LxB6HBIFTznRTkEFoVH1
         MobnKZbTceAIzHOlQguCC2KD24AT0jaEpJ7NLbB/T/SErWwX+uiG/484UYAnaQn9+6yh
         SP/LI1iNbYXXs2FAXEVc4eREtIGIcpFiwJxK5pUszX4xZJc4WoBdxKhIco1iksX5KEK1
         znupepXtOiwoXKZ3p2sO9ZT0b0nTf5lawd/bgvGlYg+XKV9OL9gIA9mmMSlt7657QVBL
         uqNhjE6GUpTRO522rXK2KSdo8/Eklx11aPquUFq3E0kSOOeQTIm2cZJslXFO2+xY14t1
         Y9Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IqEHjr5YeTX9Cq7XjvsPnzmSESbn5EqmofYLLb3bnrY=;
        b=G9YDuei6PAQrCgQOCzWbH8q2qqJsmob1ieg/OwFmZk2XDrhFUUgMKsOJ8j9/Pj4ebz
         MN88gXNCb6tWHwTVJPNI3fCpPQGQ5QD6os9jCp54Fc13f0uzP4ahX0qWdvaZ1R737EU2
         jinN/xiOaQRufIZwfTRV2StIeS7scjK0o2GHWGODZg8KWXQDvKDd1ZsdyjXZcTS5ByL6
         r2kRgbwyffX/0Carml3eSNOfcHWO30NCjixdujvjieszCNU587T/DvxF8Vem9MQXVSx2
         uPDmdDQ/3Oa2u9yvPluZQXsQW5M/iy1vTHyOpMMX0mcsputLaiHkFArVCOw0ka1bLYJU
         9XTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=im9s+0uQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IqEHjr5YeTX9Cq7XjvsPnzmSESbn5EqmofYLLb3bnrY=;
        b=Vu0FHub4A+QWYY5l+z9ZpsRDi8mOnRfyQ4Qqlxi3myTnJpVevwdMo5yxMWVswb/Trs
         FLIm1gBGescMGeY9vzRuTfJCOqMaczujvBSQW4xcYh1chbjrlgB5e9g3M9sXMgi9wxjR
         /KtqH5mJ+Amsel5iywIJzVBtTdRS23wP2c/ZSJVMJKnQi1IroEVOlWp5vuOq/71vmQ9s
         ieC1S1UpfMZmn8ZRm3LOpvGQiQgJeQKshVSCUWrWNtAGpBwBTI9KseCma/jkfU3nGjRz
         FQ4lnZvZIz1cjIUNEpFvVuT1dvAI/zn5rfuzy8buza6BR2Ryd+DoWTgw2+OIR2Se3XqE
         rnKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IqEHjr5YeTX9Cq7XjvsPnzmSESbn5EqmofYLLb3bnrY=;
        b=WQ+KWqwo9hP0n3ThVxgzCNS9K6J2sqA5Dz9LHWRRZlKOlSiBWjOOxLR4kK/fC4KklW
         GidT75EIgO5mKIjUpEcnUTawXDE8uNTjx7YQAMOzDezWlfjZXyLiBIcjaHqAjNkUmErI
         LL6KqdEPi/9Ow/12MqWYfa3Wdrd03XHhP28ma2D4oFKILHYiPXHaJYQDtVEpyzLDrx9P
         yyxT2qK40N1nTWZRlauZxHsKeECBfBctQgt+w5MsA2zvSJr2p0jKp35fX5W5Mbz1JZYu
         fK6m3ipUvzY/w5kFNNzjHoKi7X22OXYzuWxwWDRTbhnEQrpe73e4xdIzI77kKzSBzaqw
         b2Ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWvkqnw/CBxfeOB5/U6oAthwFA1rPNerhNB/ViSGjqVtElObUs1
	VZiKqPlkCDwThjYXmJIa2js=
X-Google-Smtp-Source: APXvYqyACTsvgqsMuht6lPYQQufQ1Eh+DqG33JXwNfME1FznVv8dXAgh+C1PjFqIoNAweR6wj3saHw==
X-Received: by 2002:a05:6808:14:: with SMTP id u20mr9715262oic.49.1573354041198;
        Sat, 09 Nov 2019 18:47:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c490:: with SMTP id u138ls343629oif.6.gmail; Sat, 09 Nov
 2019 18:47:20 -0800 (PST)
X-Received: by 2002:aca:6543:: with SMTP id j3mr17986367oiw.65.1573354040745;
        Sat, 09 Nov 2019 18:47:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573354040; cv=none;
        d=google.com; s=arc-20160816;
        b=QVvjpST/jS9kmDvWYb5uWpnVjvx0poO35cJ2PNtKby2YEaFfuFlYh9KsTNqoxM23q2
         mZHuUOka9MvY18gI5xFZb9KVUd16z7h+sfJzBBdAGVQnSQHIEnn3Dm5LKj8DFs7EY1iW
         jl2eTPwYv9Q3EMezXkFB2iEbaZlVR/4G4+w64Hf21J2fD7iNz0m4WSGei9Unt3kAJMP+
         b92vF+uLntffzxNCZkGWnmJg2FvIyJ/yNi0KYs3CiAwHsSrUb8lHG1TWaB3JUIpTyWFG
         r7Mxd9n404oHAGy5oSJCuqo0u45wap0OLuKAIpBV/fZhfpgpCjxzuc25dDTx5DjpL0R+
         nYZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iX0O0KkSqdipUJoSuo1u1/ALMXUzDbEV5kDtrkxBPN0=;
        b=XmFsjTDV7fqBGj5UVU7LFm/xWl0VpOMEXCbrjWTwUOr5iVS1JzjSiczaAA06Ppb3e9
         tIBK92OZIcfFresUcmSqnpTKSCjlaOIEeQU89us6EjF3DQS9YBkHoIABVbAtzjq5YLMG
         31CLqO1m0PFHNIBGviWnxm/iGXF/XKjzoinqTM8WzxLSLnKn+Oqw/yl4D32cDfbNhs5z
         lJXjHtSvU4nn9Gi1wOig3sh5hI/Ke+N5aJtrsC7ID++Jss8BYhIdoq/frxOelb07sGIw
         nG7EiM2KgJj7xjPXlxA3rzapcblRBwDBWnuGH/El36jy9Mro7+kZmlZcyqevHBtoB8B/
         9RQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=im9s+0uQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j190si598476oib.0.2019.11.09.18.47.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:47:20 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F281B2085B;
	Sun, 10 Nov 2019 02:47:18 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Hans Verkuil <hans.verkuil@cisco.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 052/109] media: davinci: Fix implicit enum conversion warning
Date: Sat,  9 Nov 2019 21:44:44 -0500
Message-Id: <20191110024541.31567-52-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024541.31567-1-sashal@kernel.org>
References: <20191110024541.31567-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=im9s+0uQ;       spf=pass
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

[ Upstream commit 4158757395b300b6eb308fc20b96d1d231484413 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/media/platform/davinci/vpbe_display.c:524:24: warning: implicit
conversion from enumeration type 'enum osd_v_exp_ratio' to different
enumeration type 'enum osd_h_exp_ratio' [-Wenum-conversion]
                        layer_info->h_exp = V_EXP_6_OVER_5;
                                          ~ ^~~~~~~~~~~~~~
1 warning generated.

This appears to be a copy and paste error judging from the couple of
lines directly above this statement and the way that height is handled
in the if block above this one.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/davinci/vpbe_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/davinci/vpbe_display.c b/drivers/media/platform/davinci/vpbe_display.c
index 13d027031ff04..82b06cc48bd16 100644
--- a/drivers/media/platform/davinci/vpbe_display.c
+++ b/drivers/media/platform/davinci/vpbe_display.c
@@ -518,7 +518,7 @@ vpbe_disp_calculate_scale_factor(struct vpbe_display *disp_dev,
 		else if (v_scale == 4)
 			layer_info->v_zoom = ZOOM_X4;
 		if (v_exp)
-			layer_info->h_exp = V_EXP_6_OVER_5;
+			layer_info->v_exp = V_EXP_6_OVER_5;
 	} else {
 		/* no scaling, only cropping. Set display area to crop area */
 		cfg->ysize = expected_ysize;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024541.31567-52-sashal%40kernel.org.
