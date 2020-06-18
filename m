Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXMEVP3QKGQEDE3FMNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6B91FDD2A
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:24:46 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id r12sf1917484oom.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:24:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443486; cv=pass;
        d=google.com; s=arc-20160816;
        b=SGPATU+ouaZJedz+2il+rwwolXr4GM5mdaVwbjf1g3U6jbBRbqS0I2FxTPNkAuYrCP
         SZg+1WbpRtREeTpIpeU6v0b9zWwo2uCYx/tcAKwqoD3An9I4Vnx0TwdBgG0m3mfKJ5QB
         /tTlay/1o7MkXzICH2YA+5h2QEoRXt3JrBu8wUZExazinCLCJqQmtkVjNhyushJCF3LD
         JOn7YGtRIbdazM2MMFBgmNAai2jzUbBL2P0gf1Lxe22g1MLiK3NjZl0IEkMyeWkJTFSF
         j9i8h3d7j6rqBn4eog8NiK3BU8yNFBqARLmRD1/RCkUndnvWH2uwyDswqQ063cUS2s8L
         dgEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=shnYZE+mLrbd8GvNPi0ASTCpTxak34t9dZGshjda2BI=;
        b=o4/db/p6xq9b/F1wkPfIs3Im2LRZFssXVywy71vYlPmBDNGAb9BVgr7Ho6o9OrcleX
         vrBXz8Op+a1WVv2pQx99NldE3a/OyXC+KfOhs5bblEFnGjJzUCpasSKeEWjpoiH7CjWO
         +86eNVsgtKsdSWoMnhJOn1PDH6YvpZdRti7v0ZdoFuzVWzt1R0UgR4o7+xdZmlbjYn/t
         KMIdGDgE+oNyoXCxzpD2+tw0SVysJxNQwn3PAHiB6yyoKSe8B53YRx4ankwtCwDbIOLX
         pOO9e1H8Vkfd0s0O3/+xkzwcimez/J8UvuY1+/BeWtN2wRO32tSq9aHmr8k8QoYCm+Dh
         ZnPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="RV2Oo/Tx";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=shnYZE+mLrbd8GvNPi0ASTCpTxak34t9dZGshjda2BI=;
        b=cnNxGHLqjX8falg8wjMK+MGNYDya/KiDXiewqeIeGn3jZSWqSKAsFjmxbhPrur7boH
         bUfY7N97NoLAh0jR+LRRuRWKdBJyIN5px0H98Yv3CY3b5FFDGlYoLDVRZjTr8Fl6fuIO
         ETwBqg51skilcQlRX552BP99OaqW9FaF0QQrPbo2mALacGer/Mtve/F0naw1L22fiGln
         1eluxfJt/bbR1bYuBT9u6qsxT8ZYVG6ptY7J5cZFkWuUWacmry+O7JtpLVPccAilM/o8
         +8OH9E91ZQHaH/Ex9awXW6Y6J2x/JjHewcq5JNtKDRXOL+g0eM519p3dsJHGmk4VNvxS
         IJjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=shnYZE+mLrbd8GvNPi0ASTCpTxak34t9dZGshjda2BI=;
        b=bpzF8wNEJaE+uuHx3xy6cV32tUo3JMUNVIlaQu+PgkWff7wGPCMxNnRkHMF/pV9vHm
         2McI93ttiXV4kBbrOKgAM6HHFyC8v0zm/PqbF+tih1UjdpzI68gl0gnQHlW2c7fE9W/5
         rq88oBVIoSXdVL9bIvx3VaIdO+pNZH7ZcbG4oUYNAr1UsDTyoL06Opb7nRe+yDt0w4qC
         ABRdqgNHkh/UcGm0ZSJsVUrojeHnk3xcqQmKLyL03NJRrkiApuH0QVK5uuANZBNK0hHx
         2f5TgC2a2w222S3QA7Zf4yxNdgbvg3vXiNaL1M1m43i7LRXVzbecVBeZotWoj2ocAj65
         psZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gQ2yKdidY2MP5wWK3GpwV364i0mN++BqLEevAYII7MEYRNq5v
	mwKJAY5xuDyzpBLss70IC6A=
X-Google-Smtp-Source: ABdhPJxv42sdXTSKdjJX1A3er2pS/QVlhe0ujFCvYSzFDDdErIQIC0MxmobkGIvVsuU73DixhrOR5A==
X-Received: by 2002:a05:6808:8ce:: with SMTP id k14mr1133726oij.141.1592443485884;
        Wed, 17 Jun 2020 18:24:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls819240oif.10.gmail; Wed, 17
 Jun 2020 18:24:45 -0700 (PDT)
X-Received: by 2002:aca:4c15:: with SMTP id z21mr1226220oia.85.1592443485522;
        Wed, 17 Jun 2020 18:24:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443485; cv=none;
        d=google.com; s=arc-20160816;
        b=CO7ISoVHBoEQwDHgFcj8Vf53O+5F8nzb4kGo/tY60yhD2chlpdqE50H/fWlQUn9GLx
         kc7i0Hfe5UzsSW1kDaF+zBAzLszqiGpyTn+LKHnCzZagYCCgLrtHEKs7EdpA1NmANrO8
         bdzuyNZH3bj1H1CIVMBvafXaZY+JUJLXv6pTtCArLEq/WAMsyjpraREH+tyzAwp0AoEp
         6AmvX8+skIt8h/SXsmcdCDRPal9kQHK6QgBIs3QuAtMDT9tWiQxnY06xVVMkymODvP52
         adG9T/X1tgDQQy/Qf1hsPFwfZoR42BBi3/QrkU4L9Oq6srxRXLQZRPMpOqbcXnmKC6ca
         PStw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=w78PXgLa8iunO//PxBAC69wait0v/qvM2p+aIdrc66o=;
        b=KsNCbAhhPXAZW5QRJdKoJCbJE7s+vG33BaaTOGxO1bPiZ63S2GyaONXsKG08rKOD9y
         NAZycYjCppniR09PFRmsiPRn2qVESp2C0t6QwwwvxTcJGFHhbIvW4KrIRWADTZBMDXRa
         Ls4btkzA8rnO4jaJIQb3DLgEltbuKYUISPLyyy/IczTfagMzOsLCjC4QnnRcBZCoe6BT
         UyESb1Me4ZxLrMn3N4XbmsNkUuWTeomgHwRfNdFT4YfcPO0tmCleBV833v+E0YpmvyYh
         JROtui19fBcAUXOHKI3Agh7dLZ6ueQZwpuc0nzjsAc0dg70e+2gMMBAJXQM+f/+cRTeu
         M8DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="RV2Oo/Tx";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l9si67681oig.0.2020.06.17.18.24.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:24:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CE68C214DB;
	Thu, 18 Jun 2020 01:24:43 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 113/172] USB: gadget: udc: s3c2410_udc: Remove pointless NULL check in s3c2410_udc_nuke
Date: Wed, 17 Jun 2020 21:21:19 -0400
Message-Id: <20200618012218.607130-113-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="RV2Oo/Tx";       spf=pass
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
index 8bf5ad7a59ad..6cc63e317aba 100644
--- a/drivers/usb/gadget/udc/s3c2410_udc.c
+++ b/drivers/usb/gadget/udc/s3c2410_udc.c
@@ -264,10 +264,6 @@ static void s3c2410_udc_done(struct s3c2410_ep *ep,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012218.607130-113-sashal%40kernel.org.
