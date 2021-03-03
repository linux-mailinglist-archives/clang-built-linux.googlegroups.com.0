Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBLNN76AQMGQEHNEGNZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC2E32B9E7
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 19:34:23 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id u8sf744005ooe.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 10:34:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614796462; cv=pass;
        d=google.com; s=arc-20160816;
        b=sF6QvFWqspb8XjHW3vUK/fEKnKC+lRukZyp1LRFNMcTotB5q9MPzxKKW3OwQ9CNASl
         w7Mxp+YrjTIs5ipforRhufnm3b2Tn/BZllkMBY7V68QD8WYm2eGFfBgaVTcygStnw/iy
         hvbFli71FgTbYUs+i7a9mXEgfLHENWAK4m5aAfV2h6rIVwMa1mQQeaCtRzX1r9IA03JM
         FA6ThuIHJ439w9/eKzHN/+jcUxtlYaRIvT8ykPHK0ZXmricsy2/cBRQU9sjFlzF5af8y
         LbiCIXWUeuuzwgxIQDgkR8VK1aFmV4Nd0fXwOpoM+xLmAaef1jqxVjri/UFpS35KwaFy
         AGCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=VwWOSpGaUxeEpN8v1k9ep8nocRRb1xPwMCNrHc7bJec=;
        b=ah1IFPAuM5ySCXA4jk+WUsr3/QIB4ambVCsCXBC/7Dnw08I4nd47g8zVazUjWd3jt7
         o1U2mJgopJVRLrVVivVdDshv1JMdaL0qdr+Klx9rGWyFl3SIcDkopcOmWzh/z9fHkCVA
         nFKJnwHE4hOQ0F3DO1LDWF/Ykp1g5pR3P6ldj7OG4U2B42uO68So/+RlgBIlmuW3TTMX
         Kp567UMQzVKCLHH18FeLFyplmslKAqLS8c3OqPLZ8GdKX25zKUVo+3yv/mfx/Bqjk+R9
         ijrQTUC94oEtvz2wiqTwqAiWQUVrsfSp8oQxxWyezv6lJUWVW0FELRJYJAa40NOOjKAn
         BLZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=nlmwcihY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VwWOSpGaUxeEpN8v1k9ep8nocRRb1xPwMCNrHc7bJec=;
        b=S5k63oG1Vl7oy9VPyCnILRnJIQ+lXOFO7/TGNpU1nmHTkhO1l4lEd03CrA8L1PSzzp
         WIf/bb2zpgC3WAiMsGhTLmvHjiuLyFAK7Ox7v8dfI8SsLZoirvsXYat/aswmMOeOKvYs
         CFbMRF1X4srBu+XDPMU5qEgpztN0rQH4ZJIqaU5Wz/6LjhH4l0FCsH18dASMCFTa7bTu
         +tP2D3xoi78rMHKhfZdiu1DJf8Yk3a+WrAP0I47D1VJSwRIMhEnofi+VI+IX/x3EGrY7
         mtMnLtdQliV23bFAoZGMKXdSCKhU5di874v48xqLlA6uZZfx9BFZWhIWB3Uaf9J6s5fi
         8k0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VwWOSpGaUxeEpN8v1k9ep8nocRRb1xPwMCNrHc7bJec=;
        b=hurGPSgysozYbCREEDDAS5dfGzK45SB7GUGmMqtlLGV8N9WVThWANpeHiG9ObRsZsq
         tO0Zn/AK7Jf1MR4qGUbIwVath5zrXVwKOmTLTTMj7QH7pw92gMAuAdXZqC5obA9P00ie
         mbM6RKS6vXGx6S6G9JOSvNRxS+xanWaVs6evyEAcJCuXZygbw7mx3KPKb1BgbhQlncx0
         nirkiGkPL7nXqK9d1XFDHpn9DuwkIKu0eqy7oICsEKrhPYj2ORMK67yUrTF8XGNVXKO8
         hJMrcNEJ9YsMdVc9mLsiF4y/L17wc4NvJqRREOjOmDAdhOiTBsgNyYsOouRzHmZMvPxO
         h9Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DWYqbDh+I4rTPcH+Lp/p5UcOmXBuw/kxVtOH1uwAZ3jton566
	ZtFBTPZXzgDU9PRia51ZwyA=
X-Google-Smtp-Source: ABdhPJwcUDj4Lpom5a4EV/Ak0veP4RNlQQX+U7SWBZvqKrFKTvL4Bbk6tlwTjlpeBay4QuA0Vfwhmw==
X-Received: by 2002:a9d:5510:: with SMTP id l16mr322849oth.67.1614796461912;
        Wed, 03 Mar 2021 10:34:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d755:: with SMTP id o82ls850092oig.2.gmail; Wed, 03 Mar
 2021 10:34:21 -0800 (PST)
X-Received: by 2002:aca:d405:: with SMTP id l5mr125700oig.43.1614796461523;
        Wed, 03 Mar 2021 10:34:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614796461; cv=none;
        d=google.com; s=arc-20160816;
        b=QxKO4HIwVjVtSoyGi3hWUo2yRbnbe+M53hY+mo4q2X5dUSEEpbgUfM3Ycqh+znNukd
         Lmcarsiz0hpJDS6HqN+/qP/Wx2t+H9kb8gKsVutN/1FVVBbE95JgxITJNEjn4sTsNcgX
         iKqM7L+8iWgiSnnreNGLJkfuQS3WAi/hFBjjI13BIUB5E64assQi70bmkfL1Xp+5TWwk
         aXubzjjTNLjsPkzJsZr5yCwZ4jx+GsMMAOB4GnuqPZ3rCxAX92KjwxBmRf3QzE4pIsWE
         5K8i2I7kFpJQJWOVzbVxJiy9aaD28V9DL22iZRN50xRjUwk7AYeAnHd6oznx4agMS5ag
         cGnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=15Gw1OMyTCRaFX0xouVnd9dK3+GD/W8zTLjDYa/3v+4=;
        b=bzdfDwGMhTyqJ6t4cjLvmPMOeMOpuoQuU+EWr46x9PoLw3hv9A7JXdbBBoSPTea1aU
         qMOpPIlW5B04vGp5LJ8mKRA+tozh8Bcv6a+j8vAe9St2+agLm7DM5lYYCH6d4vBN8HkJ
         JKOiMtAZDc/XISNP8XVUt+O/+Fe6i1sD1lKL8dXAH8NoNZ9pWgqAYhtiXwkHHe0YcKNu
         rw4Y2SF62uwkY3O8iZLr3aZ3P2c206AuyRG8Au+PWsLkyGOqHmzmSu7PnF91EBgeW2G1
         C+iBa3UbR9zn50CCiJQubZO3alYIxA4Z2W98pXc87Liww/0XmyOD8iLNS89qW1JN2lyR
         DMNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=nlmwcihY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id c24si1458449otd.0.2021.03.03.10.34.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 10:34:21 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from localhost.localdomain (122-103-140-163.kyoto.fdn.vectant.ne.jp [122.103.140.163]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 123IXcJf023524;
	Thu, 4 Mar 2021 03:33:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 123IXcJf023524
X-Nifty-SrcIP: [122.103.140.163]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com,
        Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] kbuild: dwarf: use AS_VERSION instead of test_dwarf5_support.sh
Date: Thu,  4 Mar 2021 03:33:33 +0900
Message-Id: <20210303183333.46543-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210303183333.46543-1-masahiroy@kernel.org>
References: <20210303183333.46543-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=nlmwcihY;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The test code in scripts/test_dwarf5_support.sh is somewhat difficult
to understand, but after all, we want to check binutils >= 2.35.2

From the former discussion, the requrement for generating DRAWF v5 from
C code is as follows:

 - gcc + binutils as     -> requires gcc 5.0+ (but 7.0+ for full support)
 - clang + binutils as   -> requires binutils 2.35.2+
 - clang + integrated as -> OK

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 lib/Kconfig.debug              | 3 +--
 scripts/test_dwarf5_support.sh | 8 --------
 2 files changed, 1 insertion(+), 10 deletions(-)
 delete mode 100755 scripts/test_dwarf5_support.sh

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 2779c29d9981..f3337a38925d 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -284,8 +284,7 @@ config DEBUG_INFO_DWARF4
 
 config DEBUG_INFO_DWARF5
 	bool "Generate DWARF Version 5 debuginfo"
-	depends on GCC_VERSION >= 50000 || CC_IS_CLANG
-	depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
+	depends on GCC_VERSION >= 50000 || (CC_IS_CLANG && AS_IS_GNU && AS_VERSION >= 23502) || (CC_IS_CLANG && AS_IS_LLVM)
 	depends on !DEBUG_INFO_BTF
 	help
 	  Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5.0+ (gcc
diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
deleted file mode 100755
index c46e2456b47a..000000000000
--- a/scripts/test_dwarf5_support.sh
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-# SPDX-License-Identifier: GPL-2.0
-
-# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
-# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
-# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611
-echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
-  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /dev/null -
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210303183333.46543-4-masahiroy%40kernel.org.
