Return-Path: <clang-built-linux+bncBAABB3WD46BAMGQEXXRHOFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 99297345E5A
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 13:41:19 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id i1sf1694246pgg.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 05:41:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616503278; cv=pass;
        d=google.com; s=arc-20160816;
        b=A1gbjgmFokQjYVyPWC9iJQTNHQO6LLsinjV/S4h/PVANvjMrYAOVRqkaHUIFE+iU/X
         pjVbRkWb71qImtQLwSSX2/alIZdQqaGdKf0qmo7ISLdrcef4+cAHscEhZulie79HUf6X
         bylRMi8122OOQnVEkvRXuyvD+ad5/9pg320c5hdv76SGSwnLby4KD9hq7G1WV4/f6kM4
         0bJpVlzav/I3XHteotB695UbuG578N6Xe8oSEjTpg/ke5vgKbBOmm8D2hYqVhxmfpCZu
         HZfCpzPQiXlJDFD6lWSvgCOvXBGERO243ZFI0AnTx3EkYFJepdGcnrKNSrmqxNewOAjM
         FiPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=q6rvOuePeWfF+F5OSsnJkcfhjhH25wHeKKjRy/ub8kY=;
        b=tRIHnBrrvv9CFSPV1kyoas2kNN4I8T18OmuOVkg5gobGJh7FgBIoMFWNFe8E4yadc6
         g66XrCZOzwZnuX33mKFKAwcUjZ5875pLWb+MBSr1ya0ou+PIxXPQen5o52hu/8rCoy91
         vbio/iY3GLOv/EwJWktl7TNEwkZDB2gAuY7AdmKRYBmt/d3i/9Nx2f5o57+IUoEUOn+v
         IFfKp+Aash0VyHDqM4V9QktCfzA2hYlvTAHcd/91jSWMVztD+XkZCJd2vSQwBJz4yslJ
         owYCUYhiC/sHAK645ZVjoNFgG3pgOwFSykdTTDw/D3tEcESE77wfg70J2tDQTArnQCBl
         hULw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Tz0RmbNA;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q6rvOuePeWfF+F5OSsnJkcfhjhH25wHeKKjRy/ub8kY=;
        b=Hz/3EoBDsrYI8lknm3hJEBIkICY7W8pbcOnUYIIetOsg9QI3g7FT/0OIdVAXapYGMe
         Sle6zGfKqXoAMr6nA1wPcfpLVoZRwP0weWg50s/A9y98FG0LTR96FdzBZL+PeA1rurgc
         bDGy7cZEypXxtXjR4D0Yw0mQHDdPfCmCqhCNC9ojAu8ntHARGfbB4lJq2Hl4WFkCkrvf
         HlgwaESuVv5qAe0qETgFjqf6CpYD5TwBHeln2EQ+LQaYlLiac0j/FstC8X2rUwCidSkf
         71ivosJ+a9Rl8tDnVKD3egYFA7GQ0x3W8Udooq00PUiGGhBlmUexts5pQnhIeehmWbCt
         exbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q6rvOuePeWfF+F5OSsnJkcfhjhH25wHeKKjRy/ub8kY=;
        b=TpOvS7m0RgH5SYmu1tokJJ0wO8jpSx3HjbHRHzpeDmLxNBRPvO8Y0XF8Fh6kchFV2q
         iLdpTJmtAzlu+pQhVo2Fgl1iWX6M1JOaAYQKIwazjKqQH/cgQvVqWeitIPROqmWDYUCa
         FafpfaaKlgtOU4LRr/yR76ZmUb2iGcxjhD22alavRRDFLk8Wvm1srOtfuVPoa6Tln/Ow
         odaZU09eCTfUJOdxiyFEnv4G055x65RGv1QineX33HF4VZdbVjaO9+o6G1c+LLcTw00v
         +tLCrB3iK5EL1Z1DL70Es8zOc1N/t99ogM0ErVFEh+bzV6vKFKcqsovqMWk67J2+fMFn
         9M9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322kLUPoYUHPZg5eI/BCgQgJKMUmNdISVNhekBg+Ed6sE1iBNDp
	3o7vTtQX0KPH/GWo9sjLAc4=
X-Google-Smtp-Source: ABdhPJz7Cg03ibTUH+jUHKeJMfZpjW8ai/hcSfPRLlghibg+yBydUGNVhB7dpedVnTijU3xuQlwaqw==
X-Received: by 2002:a63:484b:: with SMTP id x11mr3927797pgk.2.1616503278325;
        Tue, 23 Mar 2021 05:41:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7f10:: with SMTP id a16ls6802084pfd.7.gmail; Tue, 23 Mar
 2021 05:41:17 -0700 (PDT)
X-Received: by 2002:aa7:8f30:0:b029:20a:20d8:901a with SMTP id y16-20020aa78f300000b029020a20d8901amr4324733pfr.7.1616503277888;
        Tue, 23 Mar 2021 05:41:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616503277; cv=none;
        d=google.com; s=arc-20160816;
        b=nZKi2Hq7iY30IiFCaDfjCffTX6nhQEpQDV1gDZu7ce/6S/jDVus8hXASarayZ3JOjF
         mjbudZTByCp1aLVsy3vtjkSCrDhP6QYIRX89ruds7QwfO/zavljqCBfzzujuym8elanq
         asjbJqAKA28sK91HMj9Cpb88esu1j3rMOn4NFMm30MarWlvBH6YP/OZlSNHXQuXLT2jJ
         cPhrERyI2n4GHt/V3NX6E6I8c+lYgT7FSY4C/E1oebgP9hTTe+tIPix/wmieE01ZUgBi
         Ha8OWAhPEUpLRbr2gv1lMUlMwGfS17XzSOrXFKn7Re+L5+Cr2FSJM13oAArmu7nXpPmn
         CXMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=AigYVio8j3jcDJrytHMY3xAl7FXaX/MjBRD0+d6keVQ=;
        b=jI0QkM6z2Ih5266OY00rrinW+/eZSrRB6jODNo+j9Sh+V+TG7zAlYRBwgHPNgslPI3
         d8ElOPE0FMKoE4y9J4tIvBZj1D80JdjpCgRQO2Bqf6qdh/LVyNfzWFQhLeIPn/rVxsZH
         1l3l1tzg6zbzSHwR3A56yEMaqlnFHU/RwkPWCXN4LbvXFRW5cCiE8DxkGUiIMzcemDAV
         79I77qONY7A+DKqf3gcX+CIht2/fERJ8oqRd7wsCyax3Y2dFDFaGt6EHlj5M3QSLiMfU
         u1K8kGHa7rHDUtRYbiMA1DiVnVE2J53e2YMkatLXcykOM+74+Ae3NsK0IT5qYdIoz7FN
         JKag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Tz0RmbNA;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j6si99402pjg.0.2021.03.23.05.41.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 05:41:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A7790600CC;
	Tue, 23 Mar 2021 12:41:14 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Andrey Ryabinin <ryabinin.a.a@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@gmail.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Marco Elver <elver@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kbuild@vger.kernel.org,
	kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] kasan: fix hwasan build for gcc
Date: Tue, 23 Mar 2021 13:41:04 +0100
Message-Id: <20210323124112.1229772-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Tz0RmbNA;       spf=pass
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

gcc-11 adds support for -fsanitize=kernel-hwaddress, so it becomes
possible to enable CONFIG_KASAN_SW_TAGS.

Unfortunately this fails to build at the moment, because the
corresponding command line arguments use llvm specific syntax.

Change it to use the cc-param macro instead, which works on both
clang and gcc.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 scripts/Makefile.kasan | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
index 1e000cc2e7b4..0a2789783d1b 100644
--- a/scripts/Makefile.kasan
+++ b/scripts/Makefile.kasan
@@ -36,14 +36,14 @@ endif # CONFIG_KASAN_GENERIC
 ifdef CONFIG_KASAN_SW_TAGS
 
 ifdef CONFIG_KASAN_INLINE
-    instrumentation_flags := -mllvm -hwasan-mapping-offset=$(KASAN_SHADOW_OFFSET)
+    instrumentation_flags := $(call cc-param,hwasan-mapping-offset=$(KASAN_SHADOW_OFFSET))
 else
-    instrumentation_flags := -mllvm -hwasan-instrument-with-calls=1
+    instrumentation_flags := $(call cc-param,hwasan-instrument-with-calls=1)
 endif
 
 CFLAGS_KASAN := -fsanitize=kernel-hwaddress \
-		-mllvm -hwasan-instrument-stack=$(CONFIG_KASAN_STACK) \
-		-mllvm -hwasan-use-short-granules=0 \
+		$(call cc-param,hwasan-instrument-stack=$(CONFIG_KASAN_STACK)) \
+		$(call cc-param,hwasan-use-short-granules=0) \
 		$(instrumentation_flags)
 
 endif # CONFIG_KASAN_SW_TAGS
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323124112.1229772-1-arnd%40kernel.org.
