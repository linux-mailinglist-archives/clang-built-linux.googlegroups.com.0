Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTNF6L2AKGQEWVRUEWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 657DA1AFCFB
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 20:05:02 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id x5sf7800790qkn.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 11:05:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587319501; cv=pass;
        d=google.com; s=arc-20160816;
        b=kXsHEcE2wa165MpKMtetc2M5MxcQnaIVJ3KjaH3ss0kFS6SA56iphwIK9b1zFS0NbG
         UAR4p8BwrWIipfzoNnU3ZUmcaElnx1jbsp5djeEONyBx0rd0q1t6GrKXPRPeOyJ+qIUU
         gvw6b/8qNnfHbIgo6fPrITbW+Skl8PlASOwdBWd665y1cGYxabmltJOL+Jr5fCk15RUM
         K7V0zKAqBV/ldxtBJgOKmqOtxR1bLlN3LTWAeodNhwMZzHPdwdTZc4KRq75AT2ei8pSX
         NooTVc1X4V3hOoFx57eB/7eyhJjm4sIH1kdcHLJKiOQiRnfjFBRJUjbvZMnubMbPXO7a
         c6sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=sUXAIJVPSJuvX/fy5czKRCpL/g5U4jeHTwQ0+H6tKZ0=;
        b=hAHMlgLZHPR8n0CD4Z6P2c78dD/d/AHV4VmXTaf1DB6kmeWFuZJtfxJmprKSbbEynW
         Dd9Xj4irMg6NoRb6Dei9tYVyMKODVrXUlFmkGeHHnaOZGEwN0Oe7p0+o8lKkfPf0gSuP
         egUX6ZVvKlOQw+W4Y3V9P2YOnVQyJZwawX0MA0CBNFbnlXzu0/yo4Qj8IFoZHdFv95vl
         qk10RndIQg/d+DDmqo/KBFj7Lbi/d43ujSadRIhx4eM73oCvLWPULU8P8QcV2MsZXwY9
         dyEQveByplMXftgfKPScXE/pGAHEzayGlv3dkIWrOjLy625R5gZ+vzJpHeTQbCQHexRG
         b+PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=azl4wDkC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sUXAIJVPSJuvX/fy5czKRCpL/g5U4jeHTwQ0+H6tKZ0=;
        b=iYmC+EQfV856ptuxFcSlIaw2ZaLzaV6uXqwalE8D7riGZ+8BXCpoQgkbXxzPPZxmmf
         XFT4nqxCgqu6w48Zib/ERYaEQJmLaTuymqxL1Zc1MNOXH3QrH9aHdI85E+A2cMy0Aryb
         DfT7JgxjEGEbq6QsbhouAZx7r/YhYMVnCrOmf1v7DheL7PIGPgxRQIqsE5uSpVJU2+b2
         4/3hY3+b0AWkPu4n8eHXcBzvD9+MH+r+doQNxhwJAN1zyOazD9GSe1oHbouIPT+/MnVU
         XPgFEUhAo4sKORivz1J+lFcxLV3WvdLMwkOPi6o3hbB7COxFvrLzGaXxIcRWvzkziw+T
         pEcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sUXAIJVPSJuvX/fy5czKRCpL/g5U4jeHTwQ0+H6tKZ0=;
        b=A3gOgIcLDShVhlEEyikZf7wIo435Rcy3MPgaxPsyucDhKRauajVjcAZoTLjbfL5uhI
         b3uedtbCwuPaqabazS8oiTUfIyIovmkJi0xKkLHoRbhqFSBGvAZSquRLCTvt5qrMwKR+
         2mhc0p9ISVOwTlbuBlM8QHwFlirDK30IesDFViTI/7wfwL0vhnGSTdtWChHnmQFjlJe6
         nRssYcrM8jrszTxEftrhFqdAt/CqxU44WFOmuS8Pa5h1J7xyOlmlWXEkPRiAZqrOS8Vk
         BsPkcYdo0jicmrTWnJrFd8rMwDZcpEBfLqCdr02k/E0rgBXzFKiFml2XNHQUsuA24091
         cUYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sUXAIJVPSJuvX/fy5czKRCpL/g5U4jeHTwQ0+H6tKZ0=;
        b=OWMDv3utQTPXFXdyO5vza9hY2lgKavQ/AD3VX1cs1KCSgcnLo6cFxoA0up/gV+UlhT
         SAv9gd02wqkbyG02+SNp4GzJ+k43qoBOGQAkYz9SzN1eiKkS9RQNIiruCCEZLySgZWyk
         qrTmliiVUMWQHCGEQMB1SaeuEose2TouOvpTY7hi/0Es2CrC2Z8HxmvBvy9FBTPTKNXW
         tylIQBxPPGJWT/qg/sPSdPTTJgMeGU6O0jVbI2mDk+RGoLiWPbRBC/Rzhg3PpolXbTE4
         mSZhktD9YeIhG/nR522LsYBzeIDbz3EwLsoWuCjseda5bWZ3c/POqMnk9nynu8Pibjg1
         XS4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZkaX7ZiZL/kVomepaRIXEEh9XHuF+9y+ZzVNL7yb5AgXBBoUvq
	nsboiORgQXQNPc/OBP4zsr0=
X-Google-Smtp-Source: APiQypL/fB0WijzWz+PBoPoIxCmn7GhQkAZ2WRGVSq8qpN4Bo9K/3QCu+z40WcbHR3FJVfWSdeZXcw==
X-Received: by 2002:a37:a490:: with SMTP id n138mr12190427qke.106.1587319501286;
        Sun, 19 Apr 2020 11:05:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:468d:: with SMTP id g13ls4290274qto.11.gmail; Sun, 19
 Apr 2020 11:05:00 -0700 (PDT)
X-Received: by 2002:ac8:4757:: with SMTP id k23mr12467427qtp.206.1587319500858;
        Sun, 19 Apr 2020 11:05:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587319500; cv=none;
        d=google.com; s=arc-20160816;
        b=D5iEdgGP+O4OHE9kDQE+iuWWabKtA7NvBO1fp01bZ00DtGxMFlSl8lkvJhZeYcOrne
         q3dQ+ibGF5c9D+l0ePwGZf6sPScK6ro3/8EQUJMxwRI/hnlF6IAOsyi5WBjO6hECDnT3
         vmKSWNXnxeecdNbhjzXAOt5BVvem8ofDoUMWSvH2xr8VKNntEvJ6AzNdDwKIcdhHvaYW
         m4TPX9nujTaREQEPtW0UWHsKL7veLHjTvOHdLxFVOEJw0Z36ES6B2hnDVMs5idL+0zPz
         V15rlBu1Km/YJQaPe8JDjxRbjIJ/GFwE62lxFC/6m1dlyX+OvVt8QOsBgFdpwhVtxy1X
         rTbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vR4OoJO7KozFHQiJz0C5ZTDf3DqjOZtDT398xwIxeeI=;
        b=aF3HuDNrCG2ZE6MV5K10hdpU8ZLLHe6LazyRpsjQ0qZl7c4VDQw6BY8IvdKbubme4G
         WA6xVpVUpsNB68Sd/eonDT/2NdlPbS+yVnYAbXc7POeSAXsfpEFO1jfrOoyGLD6FzmMk
         hFJOLeikwkCdjsUCAtkKV0XILNaCYesALwDgKnH7Eh2Km2DbVJ9ceOROD//S1ajx//YL
         wy06FBZBuINEuCj2tK2138+kEvdYe04DqdqpeahVMpiuw29FEAZye1Eh2yRZO0Lcr+03
         bpoUS5km783aac9O/Imy3Tc6JttdXYrwcTyqRAS+SZs+WG1nf1WdagEBfKF4gGWK97le
         sp5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=azl4wDkC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id l23si1393521qkl.0.2020.04.19.11.05.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 11:05:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id e20so6081381otl.2
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 11:05:00 -0700 (PDT)
X-Received: by 2002:a9d:3c8:: with SMTP id f66mr6551784otf.368.1587319500354;
        Sun, 19 Apr 2020 11:05:00 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id t10sm3720075oou.38.2020.04.19.11.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 11:05:00 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 2/2] MIPS: VDSO: Do not disable VDSO when linking with ld.lld
Date: Sun, 19 Apr 2020 11:04:45 -0700
Message-Id: <20200419180445.26722-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200419180445.26722-1-natechancellor@gmail.com>
References: <20200419180445.26722-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=azl4wDkC;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Currently, when linking with ld.lld, this warning pops up:

    arch/mips/vdso/Makefile:70: MIPS VDSO requires binutils >= 2.25

ld-ifversion calls ld-version, which calls scripts/ld-version.sh, which
is specific to GNU ld. ld.lld has a completely different versioning
scheme (as it follows LLVM's versioning) and it does not have the issue
mentioned in the comment above this block so it should not be subjected
to this check.

With this patch, the VDSO successfully links and shows P_MIPS_PC32 in
vgettimeofday.o.

$ llvm-objdump -Dr arch/mips/vdso/vgettimeofday.o | grep R_MIPS_PC32
			00000024:  R_MIPS_PC32	_start
			000000b0:  R_MIPS_PC32	_start
			000002bc:  R_MIPS_PC32	_start
			0000036c:  R_MIPS_PC32	_start
			00000468:  R_MIPS_PC32	_start

Link: https://github.com/ClangBuiltLinux/linux/issues/785
Link: https://github.com/llvm/llvm-project/commit/e364e2e9ce50c12eb2bf093560e1a1a8544d455a
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/vdso/Makefile | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index d7fe8408603e..f99e583d14a1 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -65,9 +65,11 @@ DISABLE_VDSO := n
 # the comments on that file.
 #
 ifndef CONFIG_CPU_MIPSR6
-  ifeq ($(call ld-ifversion, -lt, 225000000, y),y)
-    $(warning MIPS VDSO requires binutils >= 2.25)
-    DISABLE_VDSO := y
+  ifndef CONFIG_LD_IS_LLD
+    ifeq ($(call ld-ifversion, -lt, 225000000, y),y)
+      $(warning MIPS VDSO requires binutils >= 2.25)
+      DISABLE_VDSO := y
+    endif
   endif
 endif
 
-- 
2.26.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419180445.26722-2-natechancellor%40gmail.com.
