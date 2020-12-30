Return-Path: <clang-built-linux+bncBAABBDWAWL7QKGQE4CL2DBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C772E7A83
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 16:43:11 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id h4sf15634611ilq.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 07:43:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609342990; cv=pass;
        d=google.com; s=arc-20160816;
        b=ioLjmcnPSiCn4vROzk1rCzJiaRYwHXHMWwApJzWMXMY4RKWtH5+/KZvP7Q0CS2Era7
         mhYmv9O8E98G/h0ux3tOCE8LJrQ48BzPYFB1UDEgG0Qbm8UkVtt7iUSv2BNySrC+QYqe
         sQe5EA/pQqT3anWC6RMUkV4dpaO8ltC147lGNZ/LwpBTQcNarz6A2gEgYaQVWLruP3vq
         BkVY4Z9nscgi8AF/0pmTV13T10ZruWl7XRzzqauVIWBJWrg9TpF30NiLjiaOMZZI9dnU
         Cz/mvnEeDUgl7mgITDlMGfNhNbwFcyrTCQmPfmnTEaRe/pb8Qjpe1C4IC+cnj1fgtGYN
         GtWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=fIGFuhmAPw64AvULkBZsx84KMsBLutIeUuEeGA47J0E=;
        b=0oSq1BGRRpIUyxxDIm+cpop8s6gkuHsHITYDgg9VeKUmVeHuxVvEvRgj2XFD7Cextu
         H8UmK7pjZnllvmZlHjASFGwjvRXBZ1hb2edMsi38UfkAIP7JCxznyKWMCzD6j2KKVv5+
         oftqDB75WrCWEgRzRZDoUM0uqalG6SsSeg66fW924oEcrt2XG1sSlHL+zIa4nnGDPuGO
         WozVKy1R5YVE3Lqhx+CAj1T4q7zquXGgNCCKHr1D40+sc2L/5r5ND57FbV6SaO9W6Kyv
         ztbzc1mWeZSHjC7IdmJwUQxCq2wWYq88pvocaRfxUwPVGBsbhTOlbBlZytQzxVeJRVKh
         ODZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bKxeAX1e;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fIGFuhmAPw64AvULkBZsx84KMsBLutIeUuEeGA47J0E=;
        b=Oep7pbVtaKDHvYZJx4GDXw6vvnqU7QR8ejCAMlIzPjZYvcrWv9lNwlBI2MWDJXJE93
         bQHCIk/ZgX320usqOrVHRPw3TM8noDv2x1tZIt597G2DRPXfgAGMVk6IlJHMncGxPDVk
         yYd4EWCV/heMnY2myi/wh6ZOy9Oe2tOvPdrloVbG6IhEIwmv334R+CLvlK/CxudGJ5Kc
         IuatNNNhUngYpdGP7YKeRbded2lAlec9C5EZs+DMJ3r3zU/da2o/UxG7jaCnBR+gNY5O
         aHyweER7M8C5xP76advWB6OU9tCofDkkBm3ZO+HyiPLIoZvJ9s6Zuz6lD/3NQmPiQglU
         nF+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fIGFuhmAPw64AvULkBZsx84KMsBLutIeUuEeGA47J0E=;
        b=n5+Evr0WDWmYN4bN8w4Sq44rPL+F2xOOcBf8IhQABhyQrDI34Bgc2KAjHIwoByONx6
         qIlHsrfRQLE71GvBkzWQLdCoO68NX2tbq8wcWEmdql3YQrMbrA0gX71ec7FxVOb2h7lK
         +5zK2Zsy/IvtKtFSb2BuCJhSTK44eeEMc402+hfQgRBv1mDWGp6K4rQFT5SO/qJq6zHb
         rvIqbx71d8LfJRFDDwbp/LZSaLBV/NHlF32CFFktwwJYv/RCx/B/tT0axAgCS6b/yq/G
         h9NBafw8WXnYJzUEbBbwPDa2euBveYZ9vp27r3bDhoMkSUBuFHf14S4Yc+Rwp6+OsCjL
         +6EQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YdNjlnIm7viVKU+XunL130FoXm1UwRYnLaP/pDjd7PIGQidTD
	NVqXYTF6tTZq3fuSKxHb9qA=
X-Google-Smtp-Source: ABdhPJyvVEnNNjRtEvwGpffx8Hq2Sr/0HXcCuSFdwuZhihdbn9MGosu4HxjhPO7OzVqqN/qWgQAk9g==
X-Received: by 2002:a92:d4c4:: with SMTP id o4mr51271012ilm.28.1609342990716;
        Wed, 30 Dec 2020 07:43:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9844:: with SMTP id l65ls16587633ili.3.gmail; Wed, 30
 Dec 2020 07:43:10 -0800 (PST)
X-Received: by 2002:a05:6e02:152f:: with SMTP id i15mr51530342ilu.104.1609342990315;
        Wed, 30 Dec 2020 07:43:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609342990; cv=none;
        d=google.com; s=arc-20160816;
        b=XjbVKzTjClJd4e+/EafYwrtXI4ZCljqOkqkgpnyrRgeSaH7/eRNSn6NVEdc10K1rWO
         iWJ5D2KGD3tlwbFxqUP+xyT1e79jwthdDIuMc0kgT4xyaBKbPj0yun3M9n3GAF0iumY/
         iA8WPW9RDygZExG4VYogQ7p8myl0O/aL0CgK20yLI2SNrDBKiKPVXJvmYow2Gk7HRh+K
         IPufX0CXq+eDWAd0anrZpEwHuGTP6nYR7AKykEzVGA5UR9teHUX9fgcaI5RbuybK1dwQ
         yRX6lyGGv4kcJDMrqFfzWuGYLsacp7MlciWqQ38ZbemG3Oyds/errSS7JsfIFXtglMY4
         6aSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2h+gRDaCJNFLv8MigIVfkxtYktsryplrHq/gfBLKcV8=;
        b=IE+j7XsVfA2Iepg1hM+rAAxia9dF/HPSv9K1cNsRxVYQHbbptdYpTwdYGH0qIuq4Ut
         1VxlQq6m+GQ3qQ4PeU9FSAnJxGMWVyn8+32wFOyqbFn9MDS2VTK3raS9uVNVZhijB08N
         MoOtKoORyqbwAwLqpAchkjGaCN49eohaLYdQoJWiuZJMn7bUprNoFI7yr9VS6prT4Hql
         dbil7p/sKwnkzfAQ8Ed3oSk890OmX0Fiu7YdY6FO14DRlMfauBCdqcRWbeeUte7JVwp0
         PEPPBOtG6SjCOmKWRiLmmE5dmKwXNx/QbRI0dY/DBv7awTLqN0el7t9091eZA2OgaNpQ
         cLnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bKxeAX1e;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j4si3962863ilr.2.2020.12.30.07.43.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Dec 2020 07:43:10 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CDD1F20725;
	Wed, 30 Dec 2020 15:43:07 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Nicolas Pitre <npitre@baylibre.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-i3c@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] i3c/master/mipi-i3c-hci: re-fix __maybe_unused attribute
Date: Wed, 30 Dec 2020 16:42:50 +0100
Message-Id: <20201230154304.598900-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bKxeAX1e;       spf=pass
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

clang warns because the added __maybe_unused attribute is in
the wrong place:

drivers/i3c/master/mipi-i3c-hci/core.c:780:21: error: attribute declaration must precede definition [-Werror,-Wignored-attributes]
static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
                    ^
include/linux/compiler_attributes.h:267:56: note: expanded

Fixes: 95393f3e07ab ("i3c/master/mipi-i3c-hci: quiet maybe-unused variable warning")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/i3c/master/mipi-i3c-hci/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i3c/master/mipi-i3c-hci/core.c b/drivers/i3c/master/mipi-i3c-hci/core.c
index 500abd27fb22..1b73647cc3b1 100644
--- a/drivers/i3c/master/mipi-i3c-hci/core.c
+++ b/drivers/i3c/master/mipi-i3c-hci/core.c
@@ -777,7 +777,7 @@ static int i3c_hci_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
+static const __maybe_unused struct of_device_id i3c_hci_of_match[] = {
 	{ .compatible = "mipi-i3c-hci", },
 	{},
 };
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201230154304.598900-1-arnd%40kernel.org.
