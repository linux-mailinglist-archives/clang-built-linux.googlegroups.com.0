Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOONSL4QKGQEYRGC2WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 81135234E58
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:18 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id e22sf21547027pgl.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237497; cv=pass;
        d=google.com; s=arc-20160816;
        b=r6aTUKu/8NjnOInfvLS+4mbgmfbH/C3ChWacqx6zB53R+RJ33omUbvs6Eyku7z+M+v
         +W5/DyCgtZqz9alLearR0bMXPU6GKCqqsDWnMss7Fof5+Xh/d6E+BYjkExiWdTcZ6jtb
         fDHRP8v8RJNFHymxpJUNgqBqxuDEeDVQR/y0mPx2a/z4IGlQZANfQklbeaxPwo046Z5A
         bMvf6mG2t4CDog1g8ANPjz5amPspTC96HlNtRJp4BL/VJUGGtS8rf3yrapsm/8UbFknD
         oaddH/9wvMxIMD1inCwSksifGPF0TVMfQ2TWQL83QBwDQbwhSDSn6NZ9U4nzvF9hYeiy
         4HiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VSoVSdbCx5UobnTCqOOID9rGC4AAt0AYAqmJLeL4ssc=;
        b=chJuQLHeico43ZPNpE392u1mKpSG0urfDRCddYqMh/FldCpNzdQ4/1e8HLdUnF4dGA
         uLUz55oOkVHUxEh6h9nYxcX6m0bVLVs1Tx9LV0keox6twKm00q1TnjlUEwXCuaf+EUeY
         ntLau/MTHenipZwafbFfS1jZC6iiH8Bp3MLEgrYk8a61AHTN8LXtV38jX2/uEO8rTFmU
         Dwln7A75dG1Dia+UEQ7oY4zzc9TZkz9vC+UYQvK9k2H9p6szZ+CckdIcWTFCzwOCdD2b
         hVVCctVUSWGSewWIVCpuVVB1ZjuSVq5jVvl6+tn3Z/sYtIA3UR6/lmeksR0hBz4MEd28
         caBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gQ2kBPm9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VSoVSdbCx5UobnTCqOOID9rGC4AAt0AYAqmJLeL4ssc=;
        b=NcOQOAsCmDH7WCMSOVJTHkHYTD5xddSgGgo4k8M5/fOlmDoodAz+wR0kbkLRG0jL+V
         8KGM/VdjBdAQRTK2P9ccq+L3x+jzF7mfIF1Oq70SUwgHtAsKd3PBaqY+DB+Juvha4zJO
         glWEaUErUSdj0LAhMe9XUsTlu0KjdBQJQo2gg4L9gjhuerprfIZc0csaRqadt9LwSVxg
         1bA41J35PMeQC9eIqMCm8TJN8rP/vcRnGfT3fITi0sNjt7rXCDjM1ePC908prxvIt+Ej
         ibzjcJqdl22xN64Mnj3CD2JCfaCcvfX5zAsD5irigSg36igozlsSguwt2aihc0igiOWc
         AEeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VSoVSdbCx5UobnTCqOOID9rGC4AAt0AYAqmJLeL4ssc=;
        b=V/M/q72cKiK4xHN7ShdLXxgV0BbPvWtamdnFGCDfx6SiMzbnVa3P/kxqtuZOB7ZTzm
         yQS1d7idega02r73UgxrW6jcA2Rnl7h84webllOKbQuN/08EKuWHiRbLrPGU+HWdEPA5
         t/ko61xKEJQ+mrgBBE6GiEeWMzmCQq+AhvTIgg7JXncdfIep9W+3NvfgF+qQ/NA5PkHv
         RfrhMIIkADgbk4B7F8cepEdZT9LiTSjLrFRATotwNVwrwUFfE3NpVIj43j63llmmYb4G
         /2LfhNAUTfmmcr92ymqtHYTkYkbJiZgMRIuGzbxp51nyZ3zsUynP5fnUP5xn453Z0h+K
         A+2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bZP8anQXrZTr27wv2mwN7Obs12h93h7iAFGc4DteW/U/eqAn4
	PbaR+Jf6yn0Okr/FYSTC46I=
X-Google-Smtp-Source: ABdhPJwx/s6vFAaCKWUUz0Rk9fSKrzKddrj9YrZ9IVovkIaBbaAKyqInPhICoSYMPiUP1AMwT3M3aA==
X-Received: by 2002:a17:902:c286:: with SMTP id i6mr5473846pld.63.1596237497243;
        Fri, 31 Jul 2020 16:18:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c11:: with SMTP id s17ls3453734pfs.9.gmail; Fri, 31 Jul
 2020 16:18:16 -0700 (PDT)
X-Received: by 2002:a63:6c1:: with SMTP id 184mr5949569pgg.262.1596237496901;
        Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237496; cv=none;
        d=google.com; s=arc-20160816;
        b=wL5tk3nXepGr1F84stBkqYpLlrhrV3FgxzgI+WH+//xm7gzBBbXIwS48PCDgbAfRdY
         2PN57ENCuYnJ2AtQAfH6Af55fL2TikFqPW+DrE6TVAI3JBslUci6XVuqU32Fidg/axES
         W9ASo3n62an7EyfASVOQgt/Z+CkNX6NUnp9rUzR2KWR41WAi4uaZH8B4M6KhinFKyD5b
         46k7y2r6T3hIhqwioTQ6dqMggJG/asPmcnrEbdJtW3iSA+uOMUOXHjPgk17rGxsFoiZo
         +xoYv1JGdzRIu+U85Y54c3vdjjpsQIZOY4vLZXuxjOpL1pEWsEfuR8jGCJbFvs6Nr46A
         89BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dCXoZ6vwcRTLoMlYpWHYOqZEmN50vC99VSBByVG6tNg=;
        b=cSS4KIrtUStNOkDd2vTSOK9jOlDmf0Nlm6+2UpeKOuQWapnCr273Zen5D2mJ1oOvmL
         AvxILpP/HDLNjiNb1C13nhwJFvNaDLpgS2s1h6ihSbT8ZnjfW+sxDcB+3gdQFiX070gw
         tHEG24CnsgANJWXHKcKOaJtaaE31pA6JSYG9DwBDFgxbSVH7ZSQyYOmgul4u+SD7NttC
         H22vwYkgw6qkHigY6wKvVXo8/rlUM6VCJrVLAaIRbROQsskiN1zV9MGTQW+kPhQpzqfr
         3oVYfToEJ5iA1CEM8jG5HF6vUNp5PenneP2OLTPQX0GX/h4jC/knPMnOndjtdjU3TqUP
         /gbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gQ2kBPm9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w2si453052plq.3.2020.07.31.16.18.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 74so6926941pfx.13
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
X-Received: by 2002:a65:5c43:: with SMTP id v3mr5559806pgr.214.1596237496666;
        Fri, 31 Jul 2020 16:18:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z11sm10923285pfk.46.2020.07.31.16.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 17/36] arm64/build: Remove .eh_frame* sections due to unwind tables
Date: Fri, 31 Jul 2020 16:08:01 -0700
Message-Id: <20200731230820.1742553-18-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gQ2kBPm9;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Avoid .eh_frame* section generation by making sure both CFLAGS and AFLAGS
contain -fno-asychronous-unwind-tables and -fno-unwind-tables.

With all sources of .eh_frame now removed from the build, drop this
DISCARD so we can be alerted in the future if it returns unexpectedly
once orphan section warnings have been enabled.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile             | 5 ++++-
 arch/arm64/kernel/vmlinux.lds.S | 1 -
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 70f5905954dd..35de43c29873 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -47,13 +47,16 @@ endif
 
 KBUILD_CFLAGS	+= -mgeneral-regs-only	\
 		   $(compat_vdso) $(cc_has_k_constraint)
-KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
 KBUILD_AFLAGS	+= $(compat_vdso)
 
 KBUILD_CFLAGS	+= $(call cc-option,-mabi=lp64)
 KBUILD_AFLAGS	+= $(call cc-option,-mabi=lp64)
 
+# Avoid generating .eh_frame* sections.
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables -fno-unwind-tables
+KBUILD_AFLAGS	+= -fno-asynchronous-unwind-tables -fno-unwind-tables
+
 ifeq ($(CONFIG_STACKPROTECTOR_PER_TASK),y)
 prepare: stack_protector_prepare
 stack_protector_prepare: prepare0
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index df2916b25ee0..b29081d16a70 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -95,7 +95,6 @@ SECTIONS
 		*(.discard.*)
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
-		*(.eh_frame)
 	}
 
 	. = KIMAGE_VADDR + TEXT_OFFSET;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-18-keescook%40chromium.org.
