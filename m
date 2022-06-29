Return-Path: <clang-built-linux+bncBCH67JWTV4DBBUFH6KKQMGQE6WAYBVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x39.google.com (mail-oa1-x39.google.com [IPv6:2001:4860:4864:20::39])
	by mail.lfdr.de (Postfix) with ESMTPS id 459B356083E
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:57 +0200 (CEST)
Received: by mail-oa1-x39.google.com with SMTP id 586e51a60fabf-101ce3522e7sf10900102fac.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525776; cv=pass;
        d=google.com; s=arc-20160816;
        b=XDXXQ6J9vrfa8dGZUBYFV5LY7MlMezdtGO4sBV+ahyz2AikvUXFgvcavkX/Rqun9s4
         n5wSqXDoA0Wjs6WxFUp8ft775ZmrxwoBlq61o2I/kAlMUB96hYeMd1Stqzq5SXXvxlYS
         Jb8Qq0aoLrYFgIf0Xz6FjUaObV00dV8KDMk5+Al63nm0TDTfBuOHY8h7zkJoaEYtv3sv
         Ol5XAuB5b/POM80PFWtzSQSHPrtLAtok11BfAgfkjky8ccRS4eyFRpCntBvGmOaOeZFI
         oyObZgUGnf99UOYJLIg+mAOKFfWXK59qFbLsPwW9jrGZcKUbeuvetr08PPgLRiPXuquz
         UjWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=wIua6n21N4XOMpQbRpRnJbZ1RfEwnmsBG+BhGozk+k8=;
        b=a9vRqAL4HaAr0xbc+MKmpapuvHwzFvl7XSUd6CVOsAf/9mZbZG9P5X9BgEAMsQvaad
         IpDw5iJkiX+Zml+ElrVcNsy+rI0yyeC3Pu4wF37KW/S/0a6Q2hwI/ziCCzpUvywD2g/6
         lOzzBTTTu81GBucOVn4RWhlNmbCq+/eYr3CpI4q+ekpglFySvQtGqvtXHBZgpUae1NIl
         TGudcqUFQEtrHNoFO6v/pZ+uU+tIr2BhPqdfA1vAvch7Oz5y5PQDLf3Vsa1gePQxOWuM
         TpMe0M8iXDrtP97IbsQenS/hWlkxThb63oO5+VjZyo9ozrIdPXWUUWF0mXxsS4FkSvz/
         LfWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=VU0EOBT1;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wIua6n21N4XOMpQbRpRnJbZ1RfEwnmsBG+BhGozk+k8=;
        b=gupv4htYXLep1e/gjG5zCMPnIpqY5819v43zG0jj3GXo4yUN377BW5hKKvygiYhNqY
         j19mCYaqBw47XsDKveQts8QbkxVHH45gNsvX5Y/ofbZLJn5zxOka6ekvclnGiASpzVs8
         3tyy0om5FarY62aLPen70oF/II4jIBQxtWN+LsMygtUGaSBrTjGCMbpe7Sm04TIdMKAk
         pRiWcifLqpKjtIFYecvUshU7LWYgBgRgRDgMPco9D+CW7xT55CWud/jibnC7Z9DRn7k8
         XXJWhnHtH8PNX3waOC4qOFOsrrPokHg4vnwiAa3RFFNs/W8GIHs2mp2dLQZ/exy62qpm
         CJdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wIua6n21N4XOMpQbRpRnJbZ1RfEwnmsBG+BhGozk+k8=;
        b=HV87317/8sKxoZsPzqNR52X5wfZC4Bap0j3J3I0oOWmiXlLvO9NcAm3mCcdbqB6El9
         vOPwinT9FW3pxbQMgCDSAq4Gn2mm618gaxM44B/jZI6QPtOMYeAWVWsUzzlTQuUL0GYi
         kXIhMIvTqGRdoclCG99FpmbNBL9fv2JO6IKpn4IMDDFeDMLa9noAmEE87jquNR2Yu0pV
         t20JPfOv5LpG+yZo0+xB9dU6KkG7ghhOFE1Kp4Ta4c/a9kK0dtd1hUEpLUhydFf7bXsY
         ahtWLNHopHzY0EQmmvnEgyI0gU450hNYFIYDDcaeJWpvnoLl4ok75DORlBj864PNx4nl
         H14w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wIua6n21N4XOMpQbRpRnJbZ1RfEwnmsBG+BhGozk+k8=;
        b=4HyPh0yq4aphdGjQSDKZjcyojLDmdOqtJ5T+mkzusiSgCmvdrCuGKr4/o8mylS/6sV
         jmKje78/FjXjqSxSXC24yQUPwcL+ex30g7aq7TgNzMVI3JKrX3B10A4GeIYoT3ZGFe8g
         n0XmiDK0T6qU3rcQjQGwXcNiDxyJOhSnhstfTSPvmBFjhoik1/jqS5EAbAygfLbD+our
         o5N8iq+CGTLjWQ0GgaKwJdn5jd1XN6nfl/6KUaZh44bdV2kip4cn97n7u06ZIGB9Z8N5
         uHhGd+mK22IAs1gehW0GzVfkV9KEvMOsAMhx//KueVzMAHXmLy6FD1loDo1TIBNlJP6h
         urfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora9p5L+GOUg2er/KAHWdlr0P5re+Dp83koRWzJDyPwYOUW2fDqYM
	EUCPI6ue0eNdw/fwvRH1PLc=
X-Google-Smtp-Source: AGRyM1suPW85tXppM2iD/yKzpQkusxOtKT+22FSiyzvbBEMuClDM1khQga43NPccfpeIXQ9AWEaV0g==
X-Received: by 2002:a05:6808:1307:b0:335:ab74:6d0d with SMTP id y7-20020a056808130700b00335ab746d0dmr2696970oiv.74.1656525776123;
        Wed, 29 Jun 2022 11:02:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:d90b:b0:101:f67e:a34b with SMTP id
 gq11-20020a056870d90b00b00101f67ea34bls10531846oab.3.gmail; Wed, 29 Jun 2022
 11:02:55 -0700 (PDT)
X-Received: by 2002:a05:6870:3325:b0:101:cfab:1f2 with SMTP id x37-20020a056870332500b00101cfab01f2mr2843368oae.64.1656525775741;
        Wed, 29 Jun 2022 11:02:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525775; cv=none;
        d=google.com; s=arc-20160816;
        b=nIAj56QpjppuWsZB+JzPdlFqUC/na0hW2tBRBpZD1P7fdUNo/5OUWuF5Wehv00hEXp
         CpFETh2FFqUTE7HGzmitgmG0KRN7ECXcznKjT3lbSDdyURr+WKOKHQZLsHLdqJEoMMcn
         JLAyQfMWIaqlvYO8lpzDrCmlaJWDnV1e6YCfvF90Chbf+/laHqvWHZYDADXSUzjVQux1
         zC4PY8NqYGhVTisl740fOPQDWJuCJX/Xi+GtuZRexdIfSACR7CiiAFV1AdwPLR8MBtQv
         urXecvZmK5LulkfJtxmXznDHaqA70Esousw+Hater/WKvPwu0gP1D8iG/NfsteYj7gJc
         wJcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kuD86jFb3TKSdkqqVpxORZ+r2W1//QrNCvfuXjuJX7I=;
        b=DkWh4ggcX9um6ibAGswcQkxB9td+zD9m9oX8WJFhrn3J1Iv7P583l1jjPk2p9g+y/m
         JFdNxi4sVYKp8yWFKpfHSgkEswZ2R9l9wkc+FiTXOdjcCo69p7pni7k88XsycOwgdnZq
         wH0uHBJsp92Dn5L0AxZfGkKgVem/Mju5T4vaT9TSLy3YHSPBDPEdF4eECDnXQgYEhQDB
         8QXmxAh6qxIbDgCrCdczvLT5hMQ+C9Qdth1y38EhtjHhSz0U7IJj9n8zs+2Gm1Zio5ws
         UobdYI/BhE4CnnrESAXyGdHVHtwlZVgkEj1wnE7KpQINr3gY4LXu2P34FfmTSwM/sWW1
         ktbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=VU0EOBT1;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id u6-20020a056870304600b00101fb24d062si2217591oau.3.2022.06.29.11.02.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id m14-20020a17090a668e00b001ee6ece8368so185893pjj.3
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:55 -0700 (PDT)
X-Received: by 2002:a17:902:e852:b0:16a:67d7:c427 with SMTP id t18-20020a170902e85200b0016a67d7c427mr10174423plg.154.1656525775301;
        Wed, 29 Jun 2022 11:02:55 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:54 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Jian Cai <jiancai@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Stefan Agner <stefan@agner.ch>,
	Nicolas Pitre <nico@fluxnic.net>,
	Andre Przywara <andre.przywara@arm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jian Cai <caij2003@gmail.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT),
	linux-kernel@vger.kernel.org (open list),
	linux-crypto@vger.kernel.org (open list:CRYPTO API),
	linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT),
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH stable 5.4 09/11] ARM: 9029/1: Make iwmmxt.S support Clang's integrated assembler
Date: Wed, 29 Jun 2022 11:02:25 -0700
Message-Id: <20220629180227.3408104-10-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=VU0EOBT1;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1031
 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Jian Cai <jiancai@google.com>

commit 3c9f5708b7aed6a963e2aefccbd1854802de163e upstream

This patch replaces 6 IWMMXT instructions Clang's integrated assembler
does not support in iwmmxt.S using macros, while making sure GNU
assembler still emit the same instructions. This should be easier than
providing full IWMMXT support in Clang.  This is one of the last bits of
kernel code that could be compiled but not assembled with clang. Once
all of it works with IAS, we no longer need to special-case 32-bit Arm
in Kbuild, or turn off CONFIG_IWMMXT when build-testing.

"Intel Wireless MMX Technology - Developer Guide - August, 2002" should
be referenced for the encoding schemes of these extensions.

Link: https://github.com/ClangBuiltLinux/linux/issues/975

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Jian Cai <jiancai@google.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/kernel/iwmmxt.S | 89 ++++++++++++++++++++--------------------
 arch/arm/kernel/iwmmxt.h | 47 +++++++++++++++++++++
 2 files changed, 92 insertions(+), 44 deletions(-)
 create mode 100644 arch/arm/kernel/iwmmxt.h

diff --git a/arch/arm/kernel/iwmmxt.S b/arch/arm/kernel/iwmmxt.S
index 0dcae787b004..d2b4ac06e4ed 100644
--- a/arch/arm/kernel/iwmmxt.S
+++ b/arch/arm/kernel/iwmmxt.S
@@ -16,6 +16,7 @@
 #include <asm/thread_info.h>
 #include <asm/asm-offsets.h>
 #include <asm/assembler.h>
+#include "iwmmxt.h"
 
 #if defined(CONFIG_CPU_PJ4) || defined(CONFIG_CPU_PJ4B)
 #define PJ4(code...)		code
@@ -113,33 +114,33 @@ concan_save:
 
 concan_dump:
 
-	wstrw	wCSSF, [r1, #MMX_WCSSF]
-	wstrw	wCASF, [r1, #MMX_WCASF]
-	wstrw	wCGR0, [r1, #MMX_WCGR0]
-	wstrw	wCGR1, [r1, #MMX_WCGR1]
-	wstrw	wCGR2, [r1, #MMX_WCGR2]
-	wstrw	wCGR3, [r1, #MMX_WCGR3]
+	wstrw	wCSSF, r1, MMX_WCSSF
+	wstrw	wCASF, r1, MMX_WCASF
+	wstrw	wCGR0, r1, MMX_WCGR0
+	wstrw	wCGR1, r1, MMX_WCGR1
+	wstrw	wCGR2, r1, MMX_WCGR2
+	wstrw	wCGR3, r1, MMX_WCGR3
 
 1:	@ MUP? wRn
 	tst	r2, #0x2
 	beq	2f
 
-	wstrd	wR0,  [r1, #MMX_WR0]
-	wstrd	wR1,  [r1, #MMX_WR1]
-	wstrd	wR2,  [r1, #MMX_WR2]
-	wstrd	wR3,  [r1, #MMX_WR3]
-	wstrd	wR4,  [r1, #MMX_WR4]
-	wstrd	wR5,  [r1, #MMX_WR5]
-	wstrd	wR6,  [r1, #MMX_WR6]
-	wstrd	wR7,  [r1, #MMX_WR7]
-	wstrd	wR8,  [r1, #MMX_WR8]
-	wstrd	wR9,  [r1, #MMX_WR9]
-	wstrd	wR10, [r1, #MMX_WR10]
-	wstrd	wR11, [r1, #MMX_WR11]
-	wstrd	wR12, [r1, #MMX_WR12]
-	wstrd	wR13, [r1, #MMX_WR13]
-	wstrd	wR14, [r1, #MMX_WR14]
-	wstrd	wR15, [r1, #MMX_WR15]
+	wstrd	wR0,  r1, MMX_WR0
+	wstrd	wR1,  r1, MMX_WR1
+	wstrd	wR2,  r1, MMX_WR2
+	wstrd	wR3,  r1, MMX_WR3
+	wstrd	wR4,  r1, MMX_WR4
+	wstrd	wR5,  r1, MMX_WR5
+	wstrd	wR6,  r1, MMX_WR6
+	wstrd	wR7,  r1, MMX_WR7
+	wstrd	wR8,  r1, MMX_WR8
+	wstrd	wR9,  r1, MMX_WR9
+	wstrd	wR10, r1, MMX_WR10
+	wstrd	wR11, r1, MMX_WR11
+	wstrd	wR12, r1, MMX_WR12
+	wstrd	wR13, r1, MMX_WR13
+	wstrd	wR14, r1, MMX_WR14
+	wstrd	wR15, r1, MMX_WR15
 
 2:	teq	r0, #0				@ anything to load?
 	reteq	lr				@ if not, return
@@ -147,30 +148,30 @@ concan_dump:
 concan_load:
 
 	@ Load wRn
-	wldrd	wR0,  [r0, #MMX_WR0]
-	wldrd	wR1,  [r0, #MMX_WR1]
-	wldrd	wR2,  [r0, #MMX_WR2]
-	wldrd	wR3,  [r0, #MMX_WR3]
-	wldrd	wR4,  [r0, #MMX_WR4]
-	wldrd	wR5,  [r0, #MMX_WR5]
-	wldrd	wR6,  [r0, #MMX_WR6]
-	wldrd	wR7,  [r0, #MMX_WR7]
-	wldrd	wR8,  [r0, #MMX_WR8]
-	wldrd	wR9,  [r0, #MMX_WR9]
-	wldrd	wR10, [r0, #MMX_WR10]
-	wldrd	wR11, [r0, #MMX_WR11]
-	wldrd	wR12, [r0, #MMX_WR12]
-	wldrd	wR13, [r0, #MMX_WR13]
-	wldrd	wR14, [r0, #MMX_WR14]
-	wldrd	wR15, [r0, #MMX_WR15]
+	wldrd	wR0,  r0, MMX_WR0
+	wldrd	wR1,  r0, MMX_WR1
+	wldrd	wR2,  r0, MMX_WR2
+	wldrd	wR3,  r0, MMX_WR3
+	wldrd	wR4,  r0, MMX_WR4
+	wldrd	wR5,  r0, MMX_WR5
+	wldrd	wR6,  r0, MMX_WR6
+	wldrd	wR7,  r0, MMX_WR7
+	wldrd	wR8,  r0, MMX_WR8
+	wldrd	wR9,  r0, MMX_WR9
+	wldrd	wR10, r0, MMX_WR10
+	wldrd	wR11, r0, MMX_WR11
+	wldrd	wR12, r0, MMX_WR12
+	wldrd	wR13, r0, MMX_WR13
+	wldrd	wR14, r0, MMX_WR14
+	wldrd	wR15, r0, MMX_WR15
 
 	@ Load wCx
-	wldrw	wCSSF, [r0, #MMX_WCSSF]
-	wldrw	wCASF, [r0, #MMX_WCASF]
-	wldrw	wCGR0, [r0, #MMX_WCGR0]
-	wldrw	wCGR1, [r0, #MMX_WCGR1]
-	wldrw	wCGR2, [r0, #MMX_WCGR2]
-	wldrw	wCGR3, [r0, #MMX_WCGR3]
+	wldrw	wCSSF, r0, MMX_WCSSF
+	wldrw	wCASF, r0, MMX_WCASF
+	wldrw	wCGR0, r0, MMX_WCGR0
+	wldrw	wCGR1, r0, MMX_WCGR1
+	wldrw	wCGR2, r0, MMX_WCGR2
+	wldrw	wCGR3, r0, MMX_WCGR3
 
 	@ clear CUP/MUP (only if r1 != 0)
 	teq	r1, #0
diff --git a/arch/arm/kernel/iwmmxt.h b/arch/arm/kernel/iwmmxt.h
new file mode 100644
index 000000000000..fb627286f5bb
--- /dev/null
+++ b/arch/arm/kernel/iwmmxt.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __IWMMXT_H__
+#define __IWMMXT_H__
+
+.irp b, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
+.set .LwR\b, \b
+.set .Lr\b, \b
+.endr
+
+.set .LwCSSF, 0x2
+.set .LwCASF, 0x3
+.set .LwCGR0, 0x8
+.set .LwCGR1, 0x9
+.set .LwCGR2, 0xa
+.set .LwCGR3, 0xb
+
+.macro wldrd, reg:req, base:req, offset:req
+.inst 0xedd00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+.macro wldrw, reg:req, base:req, offset:req
+.inst 0xfd900100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+.macro wstrd, reg:req, base:req, offset:req
+.inst 0xedc00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+.macro wstrw, reg:req, base:req, offset:req
+.inst 0xfd800100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+#ifdef __clang__
+
+#define wCon c1
+
+.macro tmrc, dest:req, control:req
+mrc p1, 0, \dest, \control, c0, 0
+.endm
+
+.macro tmcr, control:req, src:req
+mcr p1, 0, \src, \control, c0, 0
+.endm
+#endif
+
+#endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-10-f.fainelli%40gmail.com.
