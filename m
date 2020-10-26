Return-Path: <clang-built-linux+bncBAABB4GM3T6AKGQEXLHKJBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EA220299734
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 20:41:37 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id f12sf3178678oos.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 12:41:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603741297; cv=pass;
        d=google.com; s=arc-20160816;
        b=xXcsFX0aYlKXHjZyMB1kVHHcuCO1RRX4C7gn0bEdtjC1J2oyFiT9qPHQYX+mYJHmgb
         NdH3W/B2nocZt0t1MGIbsyG3kCLIBcXon/vt+nZikgL9SRkXyOSbLjXCxgKr7/sJbH3y
         jA0llKMXxpVw7l8Bt6atUD4jh7sVXrStNfCwd0p0aPzywTHplmZ4kkLM2qbXdme9gHMP
         WSAYTOQXlsiQdiWQvJbBbUfX2UYuF0Pt0E7i5+NwCJ4GvG9Nj/jOn1r0aJzNxM1oDSrz
         fEE2FtwQ2aepkMrj/eD7A08nHnsDbd8IXoDY7j4UlMiJsBzgEHKHgMH/p2uSgkXj9pYZ
         0lPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0r0Bn47pNq0R88CVXW8FgvyTrmMLCDULu2SGXysBNAU=;
        b=UwVzfcP9f1OTpVzn01nBWRntFG6D5nDjDD8vo2Wmqj3W4zUhy/aSpCEjolTfEWsE4m
         DVvtbK2F9rxOXHTIj1FRfcfAWLfWssv9z6od3V4LO7mUhMpCtm1NUZf4Ed0RkCFjybAl
         O/LerxxMCbXt6SJLHGNbDAOwJRfMth4Kt2kC6JpiAJpSqQ8ZeDh0pOZLLwK/eTNmcRqk
         qxckZbI+oAa9DWcUs4wltBvs9KnYwyBRBpCqcOhn7WBaqF8rQPvYlyjWYDr51CVg4whl
         /SY7fCdpxGS6i4V54HCXCmpBO8Dkg3UN733x2ObfrQ2X6cncvaMXfS7nVOa1yISmIUrf
         Ukyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=my0MbNi1;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0r0Bn47pNq0R88CVXW8FgvyTrmMLCDULu2SGXysBNAU=;
        b=WgEdxmF7zYXN79YtYAer2EFtYkV0a7rq18Nf3fuZOh/hXBxgfonmTP/V87cO8eed9E
         s0iSijSF7Sg3dis7nDtCXacePDCVftHmVB+hlPB1414ldOvvlmLShRuOy53eQ847YrMg
         6cfSEr5AYwP56AKS8xA1QCUn92NFkbOMt1gGAoaZSJ9AGUic1MKkW2zmdIQQJSgc0zkK
         DCBTxSd5LtjhOxP5ayyiuIpAwMn0bkhNDGAWrWvYkHCmpfovCUQ+Sco+/yeifXZTDUjG
         dQnTyD/k5i3fBvRfk7EgYzRzTf/zxZAeh4D+xj0UTt7hzMCoQWqUpG06R8upDokDoWwj
         VV2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0r0Bn47pNq0R88CVXW8FgvyTrmMLCDULu2SGXysBNAU=;
        b=jF6980YfNOpZ0/aopEAUAAHrgQU4Cxof7UGh7m8Khv+Cf1a7zPq/0fSKc1VMD9B+IG
         IgUtBi4mKYSyOfX0zjGR6rfnQOtidAUqHXGYmvpH8klOhUSROYIVt6AX7oKCQuGblP7A
         7AIQpyuN6CsekU5GDaaVKCQxDVYL1CVT7G9OuqW5rX5UWMep1uIavgvmZBwBEsmNoSY2
         Fod08gw96Ymjq266kT3lBssApzxDWjRbuot91WYDabD/Ww/Ga+qhpYXIEPWp+jKDi+kD
         z2wTQLoqA0Va4002kahKXQs8tTT5CCgDjbYbMDWYdMrKLjs1ICb8ZhEkN6zPutt2J7m9
         7+Lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QskkQO0btShj5x1wp/t+ZxzGL5B3UY6Ayo20SXqEnYjM3ixBP
	WoxcugUwsLqurhJ7EXeUJL0=
X-Google-Smtp-Source: ABdhPJzfFzYW1vBv730r3jplzVgCUMLiMaE9BEaCuDcretgtIqdgusvclTOu1kOVAxK6Gc35yloh/w==
X-Received: by 2002:a05:6830:154d:: with SMTP id l13mr16714112otp.61.1603741296939;
        Mon, 26 Oct 2020 12:41:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls2328079oie.2.gmail; Mon, 26 Oct
 2020 12:41:36 -0700 (PDT)
X-Received: by 2002:aca:cd8b:: with SMTP id d133mr15441950oig.136.1603741296666;
        Mon, 26 Oct 2020 12:41:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603741296; cv=none;
        d=google.com; s=arc-20160816;
        b=f+w/ID0cCVm4ut7d6jHVfIFDP5TU2ShAZ3DtQvdTKOKsfetS0h4m0CX6yiIyytJkc9
         tqNeWHSJkgeTPETocBaHGJQ44MSJXrqO6d7PZROn2+HTavfvac4cEy5jN9YUoQ8KiK6d
         E9UNBQvhrJTrJgcJPJ/CE4QMxDFzZtD7wKiMCNIbBwubXt7gPz4zj+nzpLdpEEO+dKQb
         K56WGb3Tn84zsttTUgcewJyUBR/nfl3ZcmHuvn5ZBquSZ0kSDOKJCSR3ZDXaq2GMWFIn
         F+DcMDrCeIMX6Rl+IQRL4ouaYkxHvpgvBnJNpYsb4b8153kYI8L5JW920HQGm7EXkTbm
         fsRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9QLJlqpRv2zCqA31diXRecrGKfDmgwqT1hg8QKO2c6c=;
        b=srpTS1ehfqkB+PTisXvhrHHHLrGlkBE3Ri4uXXPKzN4gu//8BrRSgyFvHrb6CqMdOC
         PvmQuJs4fxuY+LdYNl8xzSjGbHw0FGzDpFBp76/Xbuj9SA0UOxS4KhHCFdzkC1vdFnJc
         dlqC6OoSxSTEDg+mDB1mJVA0NdAkxeGYB8RzDqcoIzjAdCS3K8ZiB0VV34+7LAqgUcBp
         PbIS7S+fFMgwMb52NITWar9sojkHl+5ZJSjV67mRYjCihVuWJ8SRLBiTOIlewnK5rgQv
         i86CAUz8qEugUCQUd/3gEtBQsxMctV1YAR+xi25cYpjxDaZgrNNUjMvsP0abGhScfVG2
         rlFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=my0MbNi1;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si592648oih.1.2020.10.26.12.41.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 12:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D0CFD20760;
	Mon, 26 Oct 2020 19:41:30 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Markus Elfring <elfring@users.sourceforge.net>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 2/4] drm/imx: tve remove extraneous type qualifier
Date: Mon, 26 Oct 2020 20:41:02 +0100
Message-Id: <20201026194110.3817470-2-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201026194110.3817470-1-arnd@kernel.org>
References: <20201026194110.3817470-1-arnd@kernel.org>
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=my0MbNi1;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

clang warns about functions returning a 'const int' result:

drivers/gpu/drm/imx/imx-tve.c:487:8: warning: type qualifiers ignored on function return type [-Wignored-qualifiers]

Remove the extraneous 'const' qualifier here. I would guess that the
function was intended to be marked __attribute__((const)) instead,
but that would also be wrong since it call other functions without
that attribute.

Fixes: fcbc51e54d2a ("staging: drm/imx: Add support for Television Encoder (TVEv2)")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/imx/imx-tve.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/imx/imx-tve.c b/drivers/gpu/drm/imx/imx-tve.c
index ef3c25d87d87..2a8d2e32e7b4 100644
--- a/drivers/gpu/drm/imx/imx-tve.c
+++ b/drivers/gpu/drm/imx/imx-tve.c
@@ -484,7 +484,7 @@ static const char * const imx_tve_modes[] = {
 	[TVE_MODE_VGA] = "vga",
 };
 
-static const int of_get_tve_mode(struct device_node *np)
+static int of_get_tve_mode(struct device_node *np)
 {
 	const char *bm;
 	int ret, i;
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026194110.3817470-2-arnd%40kernel.org.
