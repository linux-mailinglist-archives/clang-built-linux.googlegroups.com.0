Return-Path: <clang-built-linux+bncBCH67JWTV4DBBS5H6KKQMGQEJS7253A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7F456083B
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:52 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id i67-20020a252246000000b0066c5c387c1bsf13239614ybi.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525771; cv=pass;
        d=google.com; s=arc-20160816;
        b=AYcXXXxZsZgUsbJb3vsp3osL4zyKjdhtk5JxvLhPAbCBgc2ONJJTfFw9JMD+5WLp0F
         TWDuNJG30EfnB2kid9bA5LEw3SMS7q8Gcom4Nbz+TUjB/CPHjjIWU5q+Fmizb7+NyWdd
         zNpopGq6b1h2EYSB6jCnzjlHKbTKFG7vgaMML27Y2xpqTVXMDKXiSh38MH/aXKwSfz4G
         /3zxXkRzNu50WSRW3C0injFSguyq523To6CGKIAHhIsZm6uFegKqrhsWy8ZPRC5eh7A7
         7vCQW/xM0xYVkE8hF3Bnt04p5v6F3wddpLg6GrDmDnwxKOb1sGEP0bf7vEzuWjF+CcS1
         oslA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=nC68Un5duB/p4bqnrQeEknFhXS6QfP7zlYaxFpt/2BE=;
        b=z9kDfdDQeMiA12Uv6uGwtnHGygH0Y0Q6VcMl64559rUQNbydw+v7PrWt4v4s+rbKML
         O6j8rtNu/G9YsM9nQxmHhWMfN7+9QCQoJwwkS0eTejG+JCiJ/DSfoZ7XN4RWg9rmMzta
         7IOJn0nbzOIeJZn7hi+KIlOiuWwyqAasBQ3duhCsBKIBmkiC26ioR5Uaf4rnya2FAfwN
         bmR40my2jOk/kD0qvVJa0Pk10Mzh1NyKKf0nBkoz0I6JMEpRxXUOunk5WfDawiGcXPuz
         8wvkvbXNrfqXwq06BiWJf9y49+yGwMXrt4R48jRiYx9dCQo3O/cfjgBu4FjL6LlbSBZW
         sUTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=XN0yOxDi;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nC68Un5duB/p4bqnrQeEknFhXS6QfP7zlYaxFpt/2BE=;
        b=U2pg+5cxPtwJ3w6MWTWvXzTN9YFwqtMHl7iVFHbMXC/Nwxyah7a/MK34cKrW/oHbRl
         oFpJKTLQCY9rTPDq0n3fsvCd2ne6JQyqNaSjLwKuVCXPiSYChjKd1T7wkNtJlLFE9x2x
         zuGdRPA8WlOv6/sVhtVXrBGwzS4L/YmeusGAnbF9oWVLS1UZz5L2HRU9MuQiQwpr+8p3
         WZQekFdeWIFCUy2VgenkxkpTIkJOni2bjoLp+T+3ACNpBICWrRTcOzOmO22yUdenGRr1
         dosMI7UNjASTPClCb5K7TzABI1iuNgWPNNq66PXT7EVwKr7lkDFGAU2KmRjTNMYEBXF1
         jUfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nC68Un5duB/p4bqnrQeEknFhXS6QfP7zlYaxFpt/2BE=;
        b=ChD3Ua0jCzerqzV/PARB8gSE2uS4bRGSvS+I/l7Q3bbqulEvMXjIZZSwdtr3YPQFFe
         kkCiB/HtX/H0A12Xw1+RLV/Emt09w+A9D9ieeUrdWf7TiR0fEAVNkVotCru2pW+oANg9
         aq56lCQl4znirrKiHuygTS7jUUUeFrnUNNzqfvvZXnhFBt/QTp7Sz3RH3jHdUuwfxlp5
         NTtcDe9vlxAqU/MM5gnJbpbfZ+Q0dGS3BEocV3GjlomuQMspI6MiPQfBtILzhhnJHyUy
         zLoXta7fwADt+bQE/vC3x9og6I230W2ocrHlAkdLSDCNt6Lm3GHfasidpW9DNEJv/EVv
         lCQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nC68Un5duB/p4bqnrQeEknFhXS6QfP7zlYaxFpt/2BE=;
        b=WwBV4N2KCd1cvh7YCR1iHRZDdXCJnXWqnhvvcCCPpfc0KPFADzi4rPUJLigs2nvJ9I
         kcWXa5OWCDg7lcOZX917voDgNYIQg89TukqBTLSjgjCTdW0ecjkQkXcsnlm+4vZJKXBx
         E91w9KD+Jp5fM6x5YlR94pqGrulGDBHxrJvQhKWvT7JP9qU2kxqlEGz9QxKWGsaNpBih
         CHlHvmeJwx6NVEkESRRdbDpNnVJCYmwcA2fKRbniZ24BIOzvY7cdnsTeL559arHkzuie
         xwfFWutC2qSTCej6bsBJI/TwwKgpWbxJQwfArOPgWuOrVFOFECbBk7AqiAxyEehw4t6T
         piGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora/Tn8dZpgLfL6omAJLse1RDnFxrazYeK/rCOkBhk2MXlkzYf6Nq
	pc3r77dyveXbthjV7FKTQsU=
X-Google-Smtp-Source: AGRyM1vsC/SjEqNPUqhPtPi9Et+YCm5oGqwZ8/pr0xuBPMM0gQHFhQPJOy1x7MLaZ94WYWbGN44lWQ==
X-Received: by 2002:a25:d14a:0:b0:669:aee9:f259 with SMTP id i71-20020a25d14a000000b00669aee9f259mr4802630ybg.484.1656525771279;
        Wed, 29 Jun 2022 11:02:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9b0e:0:b0:317:7fe0:b30 with SMTP id s14-20020a819b0e000000b003177fe00b30ls17207846ywg.4.gmail;
 Wed, 29 Jun 2022 11:02:50 -0700 (PDT)
X-Received: by 2002:a81:5883:0:b0:317:8d33:fdc7 with SMTP id m125-20020a815883000000b003178d33fdc7mr5249790ywb.182.1656525770656;
        Wed, 29 Jun 2022 11:02:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525770; cv=none;
        d=google.com; s=arc-20160816;
        b=YCxVpmeEkXGcxNRcmE6b0supmDSjSIvsUsDaxSTPmv5AIjCn2J46f5akKNSSSj97cp
         jlpCi7QJ4epw2UDczFjqIKr3QgoOtGomKL/iNSgz2HJBTtN8hX29CM9Ux0tuT5nVklRr
         QW+Y9PSqzskKpwoHNLZZy8HW3h0wwT7gDneaVwclZw1FgkaoaBWdL8WKFaNDlav7oevm
         dMBZLJpWbcON0O9mS+E7xyG0rvVyv6lMATnN/brv+S0rDAKI7QxERejg9pRflI0ximRc
         9EkRUlLml6gMNrI0CfvIG0QqunPOoMWeTE8dFHbX/Ppha465Gte2QFSBX5qhZIEpfH2w
         Nwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=v7ukqFCopneTF5JM48kXBrgpkylAdniy/lC4BeYwuWQ=;
        b=s3cV26gkDQIDPrKHemNuH8YnZ7wrZNrl8ZCHvng7BcNka6PUDS+ab9g0G1Sc3Tnscn
         iaV8eRY8B+B2qkxgUfzTAZnGcusPzryCdRUNYjKhbJho2tCDeG6F1GH2Tj2bN2DQbix8
         wgT26NUjE/AknKNXU1FRCbgU9GNPpeAYlRKi7myjKIKa7vYvplIepLWtPXEDgfPZm/sh
         LsqLpBG408s835LtZ+vdnQLTgvKYvP4kvGbPDNFmlW5iOW+J47sN1RJlBAgV+zMvYmit
         yP6RFIFIPmsq26Ix0eJ+UtyYjCftBQEAGL74w3BQuJbqooYhMyR6ttgDM0iwlx+8j76U
         0BPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=XN0yOxDi;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id k3-20020a813d03000000b0031b749ae5b3si619634ywa.0.2022.06.29.11.02.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id bo5so15831758pfb.4
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:50 -0700 (PDT)
X-Received: by 2002:a05:6a00:1f0b:b0:525:4214:c087 with SMTP id be11-20020a056a001f0b00b005254214c087mr11598139pfb.0.1656525769718;
        Wed, 29 Jun 2022 11:02:49 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:49 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	Ard Biesheuvel <ardb@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	Fangrui Song <maskray@google.com>,
	Jian Cai <jiancai@google.com>,
	Peter Smith <peter.smith@linaro.org>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
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
Subject: [PATCH stable 5.4 06/11] ARM: 8933/1: replace Sun/Solaris style flag on section directive
Date: Wed, 29 Jun 2022 11:02:22 -0700
Message-Id: <20220629180227.3408104-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=XN0yOxDi;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::430
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

From: Nick Desaulniers <ndesaulniers@google.com>

commit 790756c7e0229dedc83bf058ac69633045b1000e upstream

It looks like a section directive was using "Solaris style" to declare
the section flags. Replace this with the GNU style so that Clang's
integrated assembler can assemble this directive.

The modified instances were identified via:
$ ag \.section | grep #

Link: https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_chapter/as_7.html#SEC119
Link: https://github.com/ClangBuiltLinux/linux/issues/744
Link: https://bugs.llvm.org/show_bug.cgi?id=43759
Link: https://reviews.llvm.org/D69296

Acked-by: Nicolas Pitre <nico@fluxnic.net>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Jian Cai <jiancai@google.com>
Suggested-by: Peter Smith <peter.smith@linaro.org>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/bootp/init.S            | 2 +-
 arch/arm/boot/compressed/big-endian.S | 2 +-
 arch/arm/boot/compressed/head.S       | 2 +-
 arch/arm/boot/compressed/piggy.S      | 2 +-
 arch/arm/mm/proc-arm1020.S            | 2 +-
 arch/arm/mm/proc-arm1020e.S           | 2 +-
 arch/arm/mm/proc-arm1022.S            | 2 +-
 arch/arm/mm/proc-arm1026.S            | 2 +-
 arch/arm/mm/proc-arm720.S             | 2 +-
 arch/arm/mm/proc-arm740.S             | 2 +-
 arch/arm/mm/proc-arm7tdmi.S           | 2 +-
 arch/arm/mm/proc-arm920.S             | 2 +-
 arch/arm/mm/proc-arm922.S             | 2 +-
 arch/arm/mm/proc-arm925.S             | 2 +-
 arch/arm/mm/proc-arm926.S             | 2 +-
 arch/arm/mm/proc-arm940.S             | 2 +-
 arch/arm/mm/proc-arm946.S             | 2 +-
 arch/arm/mm/proc-arm9tdmi.S           | 2 +-
 arch/arm/mm/proc-fa526.S              | 2 +-
 arch/arm/mm/proc-feroceon.S           | 2 +-
 arch/arm/mm/proc-mohawk.S             | 2 +-
 arch/arm/mm/proc-sa110.S              | 2 +-
 arch/arm/mm/proc-sa1100.S             | 2 +-
 arch/arm/mm/proc-v6.S                 | 2 +-
 arch/arm/mm/proc-v7.S                 | 2 +-
 arch/arm/mm/proc-v7m.S                | 4 ++--
 arch/arm/mm/proc-xsc3.S               | 2 +-
 arch/arm/mm/proc-xscale.S             | 2 +-
 28 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boot/bootp/init.S b/arch/arm/boot/bootp/init.S
index 5c476bd2b4ce..b562da2f7040 100644
--- a/arch/arm/boot/bootp/init.S
+++ b/arch/arm/boot/bootp/init.S
@@ -13,7 +13,7 @@
  *  size immediately following the kernel, we could build this into
  *  a binary blob, and concatenate the zImage using the cat command.
  */
-		.section .start,#alloc,#execinstr
+		.section .start, "ax"
 		.type	_start, #function
 		.globl	_start
 
diff --git a/arch/arm/boot/compressed/big-endian.S b/arch/arm/boot/compressed/big-endian.S
index 88e2a88d324b..0e092c36da2f 100644
--- a/arch/arm/boot/compressed/big-endian.S
+++ b/arch/arm/boot/compressed/big-endian.S
@@ -6,7 +6,7 @@
  *  Author: Nicolas Pitre
  */
 
-	.section ".start", #alloc, #execinstr
+	.section ".start", "ax"
 
 	mrc	p15, 0, r0, c1, c0, 0	@ read control reg
 	orr	r0, r0, #(1 << 7)	@ enable big endian mode
diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
index 0a2410adc25b..cdaf94027d3b 100644
--- a/arch/arm/boot/compressed/head.S
+++ b/arch/arm/boot/compressed/head.S
@@ -140,7 +140,7 @@
 #endif
 		.endm
 
-		.section ".start", #alloc, #execinstr
+		.section ".start", "ax"
 /*
  * sort out different calling conventions
  */
diff --git a/arch/arm/boot/compressed/piggy.S b/arch/arm/boot/compressed/piggy.S
index 0284f84dcf38..27577644ee72 100644
--- a/arch/arm/boot/compressed/piggy.S
+++ b/arch/arm/boot/compressed/piggy.S
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-	.section .piggydata,#alloc
+	.section .piggydata, "a"
 	.globl	input_data
 input_data:
 	.incbin	"arch/arm/boot/compressed/piggy_data"
diff --git a/arch/arm/mm/proc-arm1020.S b/arch/arm/mm/proc-arm1020.S
index 4fa5371bc662..2785da387c91 100644
--- a/arch/arm/mm/proc-arm1020.S
+++ b/arch/arm/mm/proc-arm1020.S
@@ -491,7 +491,7 @@ cpu_arm1020_name:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm1020_proc_info,#object
 __arm1020_proc_info:
diff --git a/arch/arm/mm/proc-arm1020e.S b/arch/arm/mm/proc-arm1020e.S
index 5d8a8339e09a..e9ea237ed785 100644
--- a/arch/arm/mm/proc-arm1020e.S
+++ b/arch/arm/mm/proc-arm1020e.S
@@ -449,7 +449,7 @@ arm1020e_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm1020e_proc_info,#object
 __arm1020e_proc_info:
diff --git a/arch/arm/mm/proc-arm1022.S b/arch/arm/mm/proc-arm1022.S
index b3dd95c345e4..920c279e7879 100644
--- a/arch/arm/mm/proc-arm1022.S
+++ b/arch/arm/mm/proc-arm1022.S
@@ -443,7 +443,7 @@ arm1022_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm1022_proc_info,#object
 __arm1022_proc_info:
diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
index ac5afde12f35..10e21012380b 100644
--- a/arch/arm/mm/proc-arm1026.S
+++ b/arch/arm/mm/proc-arm1026.S
@@ -437,7 +437,7 @@ arm1026_crval:
 	string	cpu_arm1026_name, "ARM1026EJ-S"
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm1026_proc_info,#object
 __arm1026_proc_info:
diff --git a/arch/arm/mm/proc-arm720.S b/arch/arm/mm/proc-arm720.S
index c99d24363f32..39361e196d61 100644
--- a/arch/arm/mm/proc-arm720.S
+++ b/arch/arm/mm/proc-arm720.S
@@ -172,7 +172,7 @@ arm720_crval:
  * See <asm/procinfo.h> for a definition of this structure.
  */
 	
-		.section ".proc.info.init", #alloc
+		.section ".proc.info.init", "a"
 
 .macro arm720_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cpu_flush:req
 		.type	__\name\()_proc_info,#object
diff --git a/arch/arm/mm/proc-arm740.S b/arch/arm/mm/proc-arm740.S
index 1b4a3838393f..1a94bbf6e53f 100644
--- a/arch/arm/mm/proc-arm740.S
+++ b/arch/arm/mm/proc-arm740.S
@@ -128,7 +128,7 @@ __arm740_setup:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 	.type	__arm740_proc_info,#object
 __arm740_proc_info:
 	.long	0x41807400
diff --git a/arch/arm/mm/proc-arm7tdmi.S b/arch/arm/mm/proc-arm7tdmi.S
index 17a4687065c7..52b66cf0259e 100644
--- a/arch/arm/mm/proc-arm7tdmi.S
+++ b/arch/arm/mm/proc-arm7tdmi.S
@@ -72,7 +72,7 @@ __arm7tdmi_setup:
 
 		.align
 
-		.section ".proc.info.init", #alloc
+		.section ".proc.info.init", "a"
 
 .macro arm7tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, \
 	extra_hwcaps=0
diff --git a/arch/arm/mm/proc-arm920.S b/arch/arm/mm/proc-arm920.S
index 298c76b47749..31ac8acc34dc 100644
--- a/arch/arm/mm/proc-arm920.S
+++ b/arch/arm/mm/proc-arm920.S
@@ -434,7 +434,7 @@ arm920_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm920_proc_info,#object
 __arm920_proc_info:
diff --git a/arch/arm/mm/proc-arm922.S b/arch/arm/mm/proc-arm922.S
index 824be3a0bc23..ca2c7ca8af21 100644
--- a/arch/arm/mm/proc-arm922.S
+++ b/arch/arm/mm/proc-arm922.S
@@ -412,7 +412,7 @@ arm922_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm922_proc_info,#object
 __arm922_proc_info:
diff --git a/arch/arm/mm/proc-arm925.S b/arch/arm/mm/proc-arm925.S
index d40cff8f102c..a381a0c9f109 100644
--- a/arch/arm/mm/proc-arm925.S
+++ b/arch/arm/mm/proc-arm925.S
@@ -477,7 +477,7 @@ arm925_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro arm925_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache
 	.type	__\name\()_proc_info,#object
diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
index f3cd08f353f0..3188ab2bac61 100644
--- a/arch/arm/mm/proc-arm926.S
+++ b/arch/arm/mm/proc-arm926.S
@@ -460,7 +460,7 @@ arm926_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm926_proc_info,#object
 __arm926_proc_info:
diff --git a/arch/arm/mm/proc-arm940.S b/arch/arm/mm/proc-arm940.S
index 1c26d991386d..4b8a00220cc9 100644
--- a/arch/arm/mm/proc-arm940.S
+++ b/arch/arm/mm/proc-arm940.S
@@ -340,7 +340,7 @@ __arm940_setup:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__arm940_proc_info,#object
 __arm940_proc_info:
diff --git a/arch/arm/mm/proc-arm946.S b/arch/arm/mm/proc-arm946.S
index 2dc1c75a4fd4..555becf9c758 100644
--- a/arch/arm/mm/proc-arm946.S
+++ b/arch/arm/mm/proc-arm946.S
@@ -395,7 +395,7 @@ __arm946_setup:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 	.type	__arm946_proc_info,#object
 __arm946_proc_info:
 	.long	0x41009460
diff --git a/arch/arm/mm/proc-arm9tdmi.S b/arch/arm/mm/proc-arm9tdmi.S
index 913c06e590af..ef517530130b 100644
--- a/arch/arm/mm/proc-arm9tdmi.S
+++ b/arch/arm/mm/proc-arm9tdmi.S
@@ -66,7 +66,7 @@ __arm9tdmi_setup:
 
 		.align
 
-		.section ".proc.info.init", #alloc
+		.section ".proc.info.init", "a"
 
 .macro arm9tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
 		.type	__\name\()_proc_info, #object
diff --git a/arch/arm/mm/proc-fa526.S b/arch/arm/mm/proc-fa526.S
index 8120b6f4dbb8..dddf833fe000 100644
--- a/arch/arm/mm/proc-fa526.S
+++ b/arch/arm/mm/proc-fa526.S
@@ -185,7 +185,7 @@ fa526_cr1_set:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__fa526_proc_info,#object
 __fa526_proc_info:
diff --git a/arch/arm/mm/proc-feroceon.S b/arch/arm/mm/proc-feroceon.S
index bb6dc34d42a3..b12b76bc8d30 100644
--- a/arch/arm/mm/proc-feroceon.S
+++ b/arch/arm/mm/proc-feroceon.S
@@ -571,7 +571,7 @@ feroceon_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro feroceon_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache:req
 	.type	__\name\()_proc_info,#object
diff --git a/arch/arm/mm/proc-mohawk.S b/arch/arm/mm/proc-mohawk.S
index f08308578885..d47d6c5cee63 100644
--- a/arch/arm/mm/proc-mohawk.S
+++ b/arch/arm/mm/proc-mohawk.S
@@ -416,7 +416,7 @@ mohawk_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__88sv331x_proc_info,#object
 __88sv331x_proc_info:
diff --git a/arch/arm/mm/proc-sa110.S b/arch/arm/mm/proc-sa110.S
index d5bc5d702563..baba503ba816 100644
--- a/arch/arm/mm/proc-sa110.S
+++ b/arch/arm/mm/proc-sa110.S
@@ -196,7 +196,7 @@ sa110_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	.type	__sa110_proc_info,#object
 __sa110_proc_info:
diff --git a/arch/arm/mm/proc-sa1100.S b/arch/arm/mm/proc-sa1100.S
index be7b611c76c7..75ebacc8e4e5 100644
--- a/arch/arm/mm/proc-sa1100.S
+++ b/arch/arm/mm/proc-sa1100.S
@@ -239,7 +239,7 @@ sa1100_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro sa1100_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
 	.type	__\name\()_proc_info,#object
diff --git a/arch/arm/mm/proc-v6.S b/arch/arm/mm/proc-v6.S
index c1c85eb3484f..1dd0d5ca27da 100644
--- a/arch/arm/mm/proc-v6.S
+++ b/arch/arm/mm/proc-v6.S
@@ -261,7 +261,7 @@ v6_crval:
 	string	cpu_elf_name, "v6"
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	/*
 	 * Match any ARMv6 processor core.
diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index c4e8006a1a8c..48e0ef6f0dcc 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -644,7 +644,7 @@ __v7_setup_stack:
 	string	cpu_elf_name, "v7"
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 	/*
 	 * Standard v7 proc info content
diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
index 1a49d503eafc..84459c1d31b8 100644
--- a/arch/arm/mm/proc-v7m.S
+++ b/arch/arm/mm/proc-v7m.S
@@ -93,7 +93,7 @@ ENTRY(cpu_cm7_proc_fin)
 	ret	lr
 ENDPROC(cpu_cm7_proc_fin)
 
-	.section ".init.text", #alloc, #execinstr
+	.section ".init.text", "ax"
 
 __v7m_cm7_setup:
 	mov	r8, #(V7M_SCB_CCR_DC | V7M_SCB_CCR_IC| V7M_SCB_CCR_BP)
@@ -177,7 +177,7 @@ ENDPROC(__v7m_setup)
 	string cpu_elf_name "v7m"
 	string cpu_v7m_name "ARMv7-M"
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro __v7m_proc name, initfunc, cache_fns = nop_cache_fns, hwcaps = 0,  proc_fns = v7m_processor_functions
 	.long	0			/* proc_info_list.__cpu_mm_mmu_flags */
diff --git a/arch/arm/mm/proc-xsc3.S b/arch/arm/mm/proc-xsc3.S
index 1ac0fbbe9f12..42eaecc43cfe 100644
--- a/arch/arm/mm/proc-xsc3.S
+++ b/arch/arm/mm/proc-xsc3.S
@@ -496,7 +496,7 @@ xsc3_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro xsc3_proc_info name:req, cpu_val:req, cpu_mask:req
 	.type	__\name\()_proc_info,#object
diff --git a/arch/arm/mm/proc-xscale.S b/arch/arm/mm/proc-xscale.S
index bdb2b7749b03..18ac5a1f8922 100644
--- a/arch/arm/mm/proc-xscale.S
+++ b/arch/arm/mm/proc-xscale.S
@@ -610,7 +610,7 @@ xscale_crval:
 
 	.align
 
-	.section ".proc.info.init", #alloc
+	.section ".proc.info.init", "a"
 
 .macro xscale_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache
 	.type	__\name\()_proc_info,#object
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-7-f.fainelli%40gmail.com.
