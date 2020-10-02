Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBON335QKGQE5PV3V4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 62206281E17
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 00:15:35 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id x1sf3211038ybi.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 15:15:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601676934; cv=pass;
        d=google.com; s=arc-20160816;
        b=rM04fi0an7Jh6H36Kc+QK3snWwWgCrt6GNms4PvPALo9Eot8o6g+H+URTdvhNnSfQI
         K0nAHGVnhOW+awxKcKJak7Z1HO/74OAhPmPoMMNmXgKLnWKMG1ZUc03tiZldlhSWg50n
         0L0H1buADx2CwOZc4hZYUfCd8XmZDEuWv44iRm4V4daxNGelW24Kqf8eICnHagsFvjg8
         lePEhtYLxzJ7zWvO4dPH3zW+j+/4CxPw1o8EkYlB1/YnISLhUzQFE+79OF8+tIX4NwgV
         5LP44f9xXi4DDIw7iw5/3ZIfDl526CpI3Yj8jarLD2AhoYE0h5FoQ2cBBGoL6wdT3fAn
         mBgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aIg6y52Cr2wiYV8UQ/z0snDk/9tB45TzXJCpAY0KGXw=;
        b=FP5berulQz+ay/R5Jf7dMzdfQ2lFqFLPnwPrWZowZALaNSOVLVfbv0kPZRcKFYi/VX
         WBmFpLhyhLRyf4YJWiiXaQfoxs3oWuImPhr8yph98Xn4+WIVryWdxWgrGZxecvoIh6+d
         fCWlGJB69py40jd8W7pKe0HQYA7CmGGWKNEj98cuv9IyNV14sZpa5RRYbH4JQlADH5eZ
         b0+9FqeJujdoYsF1fcgUzBA+GydPQPb1cTSu1PYHShA1KqgiB/q3in1H8Wd8pgwncqt1
         EIshzas/ZQl3D7rXw0VA16qeKKzD/9eana56oPBjNSEr0VsBaZVbShXJv+IP9Fw1smMq
         jK/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DQVnedVC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aIg6y52Cr2wiYV8UQ/z0snDk/9tB45TzXJCpAY0KGXw=;
        b=rzmLIOQSEngb/iyCIb9syFAgnkAmThSwO2z1wrGq6VpnRa8CBrumWpdyWnr/y3OCFO
         b9xkXkERQB1DW2oIzhLL9x4MNHWzDXlvPrhcB4wtQhOwssJPJqW+7KTpYZkpk6UDF4KY
         pt0V//hDSpUDvQ/LPsH/KiOMyblpsIT3LOEhk+Vx2EBfdpN7BiEE/6nZRjEFDJJu97T9
         9knI01lYRyfUFawuYtsqUl7eeKK9LCF49Chmy2ARcOS0jJQ+DAC4zVsZV8ry0e18YTsY
         dmemNSRypGFtQSAQnm8uSVlKqzMQ3Ih5S9QoCLlFhPvcldgvUiVygWzgDKsdIT1b+Kce
         dVIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aIg6y52Cr2wiYV8UQ/z0snDk/9tB45TzXJCpAY0KGXw=;
        b=b6EmwbnLWXska8PaViVEZpniBTLJSyYmBLi6b7Y/XpRcBC6DEV9vEFlGHJ24QdMcyi
         gpV0LYdXO9TpwQPbV5bF7jfee0N/nZQzBEMsfZmiunVo2wfoQ6K9Yu5vHBxhO6ZZz56M
         MQmUocGpnyFq1HUzMXAIAiDZKL7NAjg3sn9MdZtI7baFm3Txd8ShTo4GD0s0kCMTfInM
         e3KrIGmn8pFBfIdnrIQOqHMCQSflUxQReEKrDH6l6TXocD6jxLfyb+YcetBlpCEj3UD2
         KtRfPMwSpY/lYkpsZMLF8oW899L9a4aOvma0BJBbbCzOTy9PhT97MeMZ92OuDAiAhpj4
         4JfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zCuyEfA6zpJh5BojW0crLlJoxikyLgk/Qju1s2fDH5QkwCgBz
	Vnwct+cZtn4w9lIzdK6zhIU=
X-Google-Smtp-Source: ABdhPJzXngcm8KivrcwDnZ6FdGaANh5TGt37wjfaG2KDJ8rKTGySeTpNAPI64J+JISg4XwxByzMrxQ==
X-Received: by 2002:a25:6994:: with SMTP id e142mr5486821ybc.470.1601676934083;
        Fri, 02 Oct 2020 15:15:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:511:: with SMTP id x17ls1218561ybs.11.gmail; Fri,
 02 Oct 2020 15:15:33 -0700 (PDT)
X-Received: by 2002:a25:e785:: with SMTP id e127mr6070646ybh.447.1601676933630;
        Fri, 02 Oct 2020 15:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601676933; cv=none;
        d=google.com; s=arc-20160816;
        b=yzYqm9CaMwI2EHupINthJtfkT9viXSYWA+PDLEtto7CxYtlE649H66KxksM5kd65fa
         EhxeuFK09JXLkI2IMI+WKTNFsLFMfhilNWYrC3+nAAVAhffpe6M2Vfk1nO0FEM4AZYPV
         kXUeLG4/Ou43yxfHCcNEEneNQJJsRNjE7aaEg7HZwBsYP1dmUCC9pSmEGMmnWMx8tvKu
         GSQ0qlZwI4ToajBXkuBAp7Fv3Qcr2aebdocvWz6PDCdAsiAwi/YllCeIDfmqa8p9LXCQ
         /IYgj4ySCxLIPjDvNfv24gsSa0/p7UxMH6Ol2OYIRC35udONkue7spneIL0RpwLkYSsi
         c9pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lFN4zJJOAxPrUtWe6T2NWxoPvGYNWmt8xiSR4tEk7Xo=;
        b=VjhvGe2VTA4VNvpIz5hzKjqet4stKNUk2TGFl1CVdAH2XKNZdWiDRr1ZM9lFP8pm1h
         gyxg3F1dxPCNHlM56evKBQ84z5oI538AQxDv5lNnEj/IJMAQ5TwFFC7cQyPc/29OQwLZ
         Dza05JA5k3MalWNuJMgIZncFayQelPufTcaa0HAVUWJ85jyjqOI7gOiFgSRI7wX1vN8J
         fm9HaRVGpl3erlsKASg+BHszR8PFrfqF9dN0UlKV/s97nD2qhJTbsvTOAvZJ+Tw/h8Mg
         ZVtXseBJ+ttrm/Pj9uRbrneCkuacrR0tlCxOhQSBIZfnQY6nmnjgDc7SDjcSH9Watu84
         YGLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DQVnedVC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id s69si193433ybc.4.2020.10.02.15.15.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 15:15:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id t7so1869041pjd.3
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 15:15:33 -0700 (PDT)
X-Received: by 2002:a17:90a:9505:: with SMTP id t5mr4886210pjo.121.1601676932889;
        Fri, 02 Oct 2020 15:15:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id fz22sm2557221pjb.46.2020.10.02.15.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 15:15:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] ubsan: Force -Wno-maybe-uninitialized only for GCC
Date: Fri,  2 Oct 2020 15:15:26 -0700
Message-Id: <20201002221527.177500-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201002221527.177500-1-keescook@chromium.org>
References: <20201002221527.177500-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DQVnedVC;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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

Clang handles 'maybe-uninitialized' better in the face of using UBSAN,
so do not make this universally disabled for UBSAN builds.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.ubsan      | 6 ++++++
 scripts/Makefile.ubsan | 6 +++---
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index aeb2cdea0b94..1fc07f936e06 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -36,6 +36,12 @@ config UBSAN_KCOV_BROKEN
 	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
 	  in newer releases.
 
+config UBSAN_DISABLE_MAYBE_UNINITIALIZED
+	def_bool CC_IS_GCC
+	help
+	  -fsanitize=* options makes GCC less smart than usual and
+	  increases the number of 'maybe-uninitialized' false-positives.
+
 config CC_HAS_UBSAN_BOUNDS
 	def_bool $(cc-option,-fsanitize=bounds)
 
diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
index 72862da47baf..c5ef6bac09d4 100644
--- a/scripts/Makefile.ubsan
+++ b/scripts/Makefile.ubsan
@@ -1,8 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
 
-# -fsanitize=* options makes GCC less smart than usual and
-# increases the number of 'maybe-uninitialized' false-positives.
-ubsan-cflags-$(CONFIG_UBSAN) += $(call cc-disable-warning, maybe-uninitialized)
+# The "maybe-uninitialized" warning can be very noisy.
+ubsan-cflags-$(CONFIG_UBSAN_DISABLE_MAYBE_UNINITIALIZED) += \
+						$(call cc-disable-warning, maybe-uninitialized)
 
 # Enable available and selected UBSAN features.
 ubsan-cflags-$(CONFIG_UBSAN_ALIGNMENT)		+= -fsanitize=alignment
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002221527.177500-4-keescook%40chromium.org.
