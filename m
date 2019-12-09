Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2G6XLXQKGQE7PN275A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3CF117776
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 21:32:42 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id t3sf11543359ioj.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 12:32:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575923560; cv=pass;
        d=google.com; s=arc-20160816;
        b=DLT9RG0dGO9Gylu94GXq5FvSuYgaXBocMQNN+ZLyzuAHjzqn28amlF0KA1jXGQovts
         exBsilRwmAs3nCs/Zm2NI+/ttl2eEnuWieEzT6DJUdfazBSqQTtvpert71lJbgx/AHkV
         nePbwjnrsAC3tnIwL6n7WKMVF5nKEUXK5MNjAjN9Xg7C79QkGxYCOAzLQ6yX2sKGnixF
         wyzfiYyUhBcGn/6cyRObqLpRLaLGgTOvz6izVaLxi+XRBgFrQzGVBmTPKq4utaGvc1Zi
         tAAX42FpNWtCx8C26Sg43KtpviQ2xUrWp64cRbPh6yUvoOGF3+9UdGipfL34bnEDC3pP
         i2Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=oQrQ2XNOlcJfTq557JSHX1S9FGYWXXrRoZqTTsYWEh8=;
        b=wBy12JMFCKFk/cl/7QNrtvEIhb3a3/gz2hyzroUpY6juxuj52FeOu87FVC4FSa6nvc
         1ahv5SrDjqt/ovFoKJYBFoziqa2gS/Cg/x70JW8b7cKULnXagPx2waiL/2VNE/Gh+vVC
         MkTQdOPUAakzaD7TMWIn5hX+vc6nQ/vGf4IzjwOMLls9HOQIwCgeW7v18CxD5SOaxvvY
         gDoSky4IX8gYwzGrizHgB1VnWXB6X7hxhgOdcEbpp3PxdVdAJa8bYDY07HwY8wfkjDcC
         I7fLgMOvdYCiuEzKk7TThmQyupzjtV1ltcV2kToQF0gUzZEXU2FGZlpMRcEzCcOAyViy
         NxDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ii5EIKHB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oQrQ2XNOlcJfTq557JSHX1S9FGYWXXrRoZqTTsYWEh8=;
        b=UDKSwlL3RRFTMCZCkrlGtQRUw7yoAFGvi1m5+yoWO0yF9KZFd+tqd5HakkajN1UG/H
         mznrSSa5ya7oQzlmXKSBh7oH0y/neDoCX3OJ+JACkP/lRjbLPfYViGyqBJKEc+TLiy9o
         a+ZR53swizXsIjlZ6VVR4blIWYpFFQhQRDmPzzTgKRHm4T5VHtUevavt76jdK2XJeuYb
         jqTXLtevOAzIqdJBhqAYd4x1nZl9ogUyGK8K7NiCXhFUMoATfeQ/XRMkschdhtHmue+e
         DhFGnmMbqfvBagvyE3hikTbE7LTDh6D+V2igtnUCxaEzDmycFk8CGRe3cUjUYlhFzY7g
         ii9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oQrQ2XNOlcJfTq557JSHX1S9FGYWXXrRoZqTTsYWEh8=;
        b=LnRlvdCv+DR1d2a18c+AOrvHlKrL5HmsX++fCRUArR8iLCmIsDfDsNU+jeJSqlbY0k
         3PuxuyprwsQocLBPj9791Neh2ABq28B9yRxVgPyMXsl79wsN5UXunV0v9th888aPn2UT
         g9RqxTwo6x3RZdooLD5IfqEOsJIW+AaRj6yNZmT26IpSKpOMlUip8WueVtFD1fd9+9UZ
         jlosuvd56vdrx6i291NmyieeSgnhhfrSNpWmBYBXimmjZQaYd2+WfEh768vKbUrWIumO
         eawb+e67zKdxcEcG4KHxPIxFZFlCEw0OsLnPlw8VDScc6LjXXJa8YttRV5Lcknd6I4+G
         +ewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oQrQ2XNOlcJfTq557JSHX1S9FGYWXXrRoZqTTsYWEh8=;
        b=LJqop7lfJKHMPR1sFQwhMwwt1dcowHZ4kzqiFItBpUwakjBafhGxuKES+tbv6kO4BM
         jduDjXHQlIvo/vyyZNbeqE3iFxJvhqLB4+f7yV5EG7gormnnNujASxXi3VBk9sPGq/CC
         088mna6oJBTHCqDu0X/FXts2RnTe0LrJhI/81Z2Pd2FV8xxzKR/aoez5bd5P8Copoj4P
         V/yfAXIfP++Rq2kQ49M+j5eAh5EicvZQ2BPQJWyNjafbhPZSaVM7ouZFIL1Tl3jOOF2N
         1DJdkW/EvROXUOGPCkgrp/DolVRh4YACMqBMQ4H8qAvA1Ud/bj8XMQgUEKok1Uy1wjTo
         OWHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW4qVkBBva2d06e50x03OrYxI1e0js2vHcEgrInJwkJcOHZapFC
	xV6HSmsk5SksBW2eZDnLh/I=
X-Google-Smtp-Source: APXvYqy7R7GbpW6t6m/Tk6MsqqwwfxQqlzUhoc24stem8YKdkA0NCkgZHSezhqe2nHYukUncj06TOw==
X-Received: by 2002:a92:844b:: with SMTP id l72mr30117934ild.262.1575923560804;
        Mon, 09 Dec 2019 12:32:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce86:: with SMTP id r6ls2497248ilo.13.gmail; Mon, 09 Dec
 2019 12:32:40 -0800 (PST)
X-Received: by 2002:a92:1a0a:: with SMTP id a10mr28330121ila.295.1575923560506;
        Mon, 09 Dec 2019 12:32:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575923560; cv=none;
        d=google.com; s=arc-20160816;
        b=TT1ObBGbpLmEM2XBN+8sCzFRVWlhrc50sYurKMNUibuAnAk0XTYCSDcUY+UrelDOkC
         1cndt5UiUalxQI7JppnHqqIl4Gq/8XEERJyyK9UICTom7nTe6KFn8if/9R6GFnN9kYHj
         aPAxe6hwjLuCM5/FqUXT2R/lAD3abAOWE5j+w4ixfY7xURUgpGgdX3iAY00bONwEC9KQ
         fLkwcuKLpTCkp7MtHVE579TUISpch5mJ91Lqau2bW1oC2i86jhNUkZphb2nxN0JO1/sC
         OjfM2j9Lx165stlj3NwdepfAMlfeSulelYQjQrVULf0NQ/y3iBe7H84CCej4q2PlJ0G3
         XQ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QcDMXx7JLbsJ2UCoZNJKLtfB+ZkWm+OkWxKRuqwbsNs=;
        b=VvBqvkBgv4qpjwSF4r7jzj0kb+Q1N9bQVA3a6czF3CtJp204kX+Hr2B1fiqu6lW2f1
         MKWwyVrOON/6f2kgduxwP3ZT9pI0IlKHl370jVkFWtZN+hdqKwqA1RGwQL5fP2fyZqVF
         C89r5xs199MYLlxe3Any6DyQJV3fM77YSaCjJKoJgiUuYj/hwolvyYi86CeO6W3D2Nk/
         NTesOECpNmq00c4WMskZbS1q+2tDmzdV0HCiiKrNj5QpMlM5dYSJByUdSsBJI+XMHpxd
         yYD2/1aqfEJgUyIpCaFW0fO351Xj7jbfGGNYEpd7OQwU33SkaR3tyV8rdqXE8D06rbRp
         t0ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ii5EIKHB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id z20si66350ill.5.2019.12.09.12.32.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 12:32:40 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id v10so7586501oiv.12
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 12:32:40 -0800 (PST)
X-Received: by 2002:aca:570f:: with SMTP id l15mr917514oib.120.1575923559992;
        Mon, 09 Dec 2019 12:32:39 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id f3sm368332oto.57.2019.12.09.12.32.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 12:32:39 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm: msm: mdp4: Adjust indentation in mdp4_dsi_encoder_enable
Date: Mon,  9 Dec 2019 13:32:30 -0700
Message-Id: <20191209203230.1593-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ii5EIKHB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c:124:3: warning:
misleading indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
         mdp4_crtc_set_config(encoder->crtc,
         ^
../drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c:121:2: note:
previous statement is here
        if (mdp4_dsi_encoder->enabled)
        ^

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: 776638e73a19 ("drm/msm/dsi: Add a mdp4 encoder for DSI")
Link: https://github.com/ClangBuiltLinux/linux/issues/792
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c
index 772f0753ed38..aaf2f26f8505 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c
@@ -121,7 +121,7 @@ static void mdp4_dsi_encoder_enable(struct drm_encoder *encoder)
 	if (mdp4_dsi_encoder->enabled)
 		return;
 
-	 mdp4_crtc_set_config(encoder->crtc,
+	mdp4_crtc_set_config(encoder->crtc,
 			MDP4_DMA_CONFIG_PACK_ALIGN_MSB |
 			MDP4_DMA_CONFIG_DEFLKR_EN |
 			MDP4_DMA_CONFIG_DITHER_EN |
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209203230.1593-1-natechancellor%40gmail.com.
