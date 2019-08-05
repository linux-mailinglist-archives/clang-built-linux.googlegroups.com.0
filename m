Return-Path: <clang-built-linux+bncBDY3NC743AGBBB6TULVAKGQET42FJ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1B88275E
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 00:11:20 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id j140sf36923850vke.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Aug 2019 15:11:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565043079; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rk04Yq1yTtKfqOMFJs92a1hIEpoZeFCszRjEQaTxZWR/PMGBmcfy63U4kWPMGSWZXD
         Q0otTTB+KuCG/pNHSmsHRTseiMntsWAF8hC1P06b8BR/XXe22fdmHdi3TANqB7cFBwhz
         SLoMhZR3PA5Qyh/VBJuyLK/YkPrO9OX8ScOQbCJpfD/UBFgEwsnPKRb6GNACGG74IkF2
         W5WdED+/aQMRMhU6hXmsKMG6ZxHpVnZtyqFJs5vbkO6PUrGTU/GvRkbo+rg0CCALAEzl
         /KliVy6LePT0c1XpnHe8jHGZkrxMFi0J/chYOVijy2aSHBn3gV9aO7LSIjVvQ490hdl1
         3erA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:date:cc:to
         :from:subject:message-id:sender:dkim-signature;
        bh=ov6+jacsPkAav3mUCrcKl+iTtFndkWojUZzpP5+z4Kg=;
        b=ElIFXfXhN4UDIBcSEzbkoAE4Bj7RjFSEbqbz9bI2jkEBbhAjPoJE8DoFiQdWMf/Y4y
         rUCytBsCwZRqeOQeZQKrd+DJEaKPAPWCvpM2JfFF5OH3hFodXS2bqfi9NUeTCzg2oRu0
         UK6IxXdw+Bbfol5J7rWG47+GL8P81Ci5JaySZxGeQf2fvzDnnydrYiem1Vvzlu4Nae4G
         04y9RlYFgaYFIVB5pxEXdjm5BlHJhwW+AFJ9EBDFr6vGJzgLQQeFQ1nS4uV/CZi/f7ew
         swshDtyWF/KLpJqRrEC4qC9kq7I4RrwWo6QT2yh5+9MLdGr+iTqxQHsQGddIeehfi66l
         46Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.185 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ov6+jacsPkAav3mUCrcKl+iTtFndkWojUZzpP5+z4Kg=;
        b=cRS3jq6ZbEVZaZweDE7WeCcc3x9cwz3c9kXfmkEikBEBQXWtEhB48Erk3tt7s1Bntc
         1Lp9c6RFgOp26gAQ80xkoJU3GNj8tS0L3x+qSzZtKTBGc08pZOAZM9XYuIo/6vZmvayD
         WqHhgYXxOPqPMJXcov1Nmf4hY5+rOqGaUcClxLRtkb/a5nHcIfThqYh//QRJoYQA/31V
         p2YijdacjZ/Kh9zmja/WY9MpYZSW3zdT60dku/68ZEVOx4vP/dhax67rWeUfr9+XiXmj
         mleOssLr9rjedBt0bNBlzIkFmWu7ofMmysbNhxI3qZXSMwUlUkecLRUo0FFClhpmsE5j
         5seQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ov6+jacsPkAav3mUCrcKl+iTtFndkWojUZzpP5+z4Kg=;
        b=Av72bwQnVBoQVJFC337CTCP8SItU7Mq9oZjfUY4uXHGrmVKuRZPVUnKoxwGtymnRvK
         gma2I6ZmKND03QDZaxghCnTCrL29KRPaZx/TzgSgklbZkuXmVrRrJKB74XFfUXGL7lj7
         bEsHfbIyLLm++RaKkdH6wkZ25kVlLGm2ixT2b0NZkx+BLja1oduAMhhcSWWVpG4pd4mG
         lxZrVZ/WQ6djFHUXPOmgR59KFuQJuSMXbaBm6TyeM0zIPw6lVQxw60ulqVqpnBiXYDd8
         SPCBRrNv3EVqjx+t5OXHJ1P7NzjiPTeMU5GP7u1BBERFVcW+tm9+Dr1DtOeaSYfhIj2Q
         lX5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZxiYGnsQMasnRj4kW5Nr5eraiITaXN54jDMCIOVkrgrBUe9gQ
	XYH6OssQEj6bY1GqpgnrTHM=
X-Google-Smtp-Source: APXvYqw02+ced2D8Dc8/JXaroCWBiDpp8vZZnzbZ5BQKJ5ka3fYNa19hGfzkSeYmL03bMN/izNrRFw==
X-Received: by 2002:a05:6102:1041:: with SMTP id h1mr365269vsq.153.1565043079163;
        Mon, 05 Aug 2019 15:11:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ad06:: with SMTP id t6ls10840573vsl.8.gmail; Mon, 05 Aug
 2019 15:11:18 -0700 (PDT)
X-Received: by 2002:a67:7dd8:: with SMTP id y207mr380077vsc.67.1565043078637;
        Mon, 05 Aug 2019 15:11:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565043078; cv=none;
        d=google.com; s=arc-20160816;
        b=w2pqoH6nT5XWN56RGJ9O55SdSItp8qdTS7Iovz0et2afbj6oyzgNh5AOiLB56v+soj
         4E5RqVg3U+T/AQx5mjIlTrncKrgQQHMrJ+wLBQ3fFjO3FBJp7YdBu010q8Jzi7h5hEZC
         2rYbLC4V59b/ExSgo7tWJHVrY3bkIL7CvMLTZzCJW/rQlLQHiLAPXls7/m7HgIxs1aSI
         h7kHQjX3YbazYe9LBCfWQgRyLo7ev1IaupWvikZcfZlyP6liB+jfrmu5fX6RNll81XPh
         sqx8NjOouMyp//+fJPP4by3uh/lMzro204ajYZjiUkQ1lwoToMCFCZ/cnadbuJgfpJNA
         0PZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id;
        bh=QgI5xqmzxbfcXO0Le7eTrPMUPUx6qMlr3uuA7Ok9Z6o=;
        b=BX5xB3c1XGjedOtxE7QxkpiK2vNqRnKkkGhBXFvZ9xfSmaXiWUIvaDGaywkdrFZ7Yz
         ANvf+MUWxZCsr0dcpkyc5NH56LYgO4XUMRivnXsw4ozCkk/z5aCvxAVAHOUcdc2ouqxD
         ikLBhTJTGWWK6EjJn7V7tvYBw2rah5uNTunmx7eslYacVlRR2JBV2Q0Zf0AAkydV72xa
         QYYJKB+yjcJAF6rd0y+m2wcykYCPNLts8sH6l7DDQ1zpGHlyAhFm6CGjsJKhsNMkDz9H
         y1+CyKaqRSodVLy+1TTYptsULhIWzlp1UeS7I20Qcb0aKOzkdhda17Uq8LNygqD5xITT
         iIbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.185 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0185.hostedemail.com. [216.40.44.185])
        by gmr-mx.google.com with ESMTPS id i9si5744449vsj.0.2019.08.05.15.11.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Aug 2019 15:11:18 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.185 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.185;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id E18A0180A76ED;
	Mon,  5 Aug 2019 22:11:17 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::,RULES_HIT:41:355:379:800:960:967:968:973:988:989:1260:1277:1311:1313:1314:1345:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2393:2525:2559:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3165:3352:3865:3866:3868:3870:3871:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:6119:7903:8660:9025:10004:10400:10848:11026:11232:11473:11658:11914:12043:12114:12296:12297:12438:12555:12679:12698:12737:12760:12895:13069:13148:13161:13229:13230:13255:13311:13357:13439:14093:14097:14181:14394:14581:14659:14721:21080:21451:21627:30054,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:27,LUA_SUMMARY:none
X-HE-Tag: cork84_b357bd4e5b2a
X-Filterd-Recvd-Size: 2630
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Mon,  5 Aug 2019 22:11:16 +0000 (UTC)
Message-ID: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
Subject: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML
	 <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Date: Mon, 05 Aug 2019 15:11:15 -0700
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.185 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

A compilation -Wimplicit-fallthrough warning was enabled by
commit a035d552a93b ("Makefile: Globally enable fall-through warning")

Even though clang 10.0.0 does not currently support this warning
without a patch, clang currently does not support a value for this
option.

Link: https://bugs.llvm.org/show_bug.cgi?id=39382

The gcc default for this warning is 3 so removing the =3 has no
effect for gcc and enables the warning for patched versions of clang.

Also remove the =3 from an existing use in a parisc Makefile:
arch/parisc/math-emu/Makefile

Signed-off-by: Joe Perches <joe@perches.com>
---
 Makefile                      | 2 +-
 arch/parisc/math-emu/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 5ee6f6889869..a3985421fd29 100644
--- a/Makefile
+++ b/Makefile
@@ -845,7 +845,7 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 KBUILD_CFLAGS += -Wdeclaration-after-statement
 
 # Warn about unmarked fall-throughs in switch statement.
-KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough=3,)
+KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
 
 # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
 KBUILD_CFLAGS += -Wvla
diff --git a/arch/parisc/math-emu/Makefile b/arch/parisc/math-emu/Makefile
index 55c1396580a4..3747a0cbd3b8 100644
--- a/arch/parisc/math-emu/Makefile
+++ b/arch/parisc/math-emu/Makefile
@@ -18,4 +18,4 @@ obj-y	 := frnd.o driver.o decode_exc.o fpudispatch.o denormal.o \
 # other very old or stripped-down PA-RISC CPUs -- not currently supported
 
 obj-$(CONFIG_MATH_EMULATION)	+= unimplemented-math-emulation.o
-CFLAGS_REMOVE_fpudispatch.o	= -Wimplicit-fallthrough=3
+CFLAGS_REMOVE_fpudispatch.o	= -Wimplicit-fallthrough


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c0005a09c89c20093ac699c97e7420331ec46b01.camel%40perches.com.
