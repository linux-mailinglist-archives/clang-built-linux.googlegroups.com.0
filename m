Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDWE5P2QKGQE4NW6PKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7341CFCA0
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 19:51:11 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id m5sf6804384ioq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 10:51:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589305870; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y338mYkUJG0OLbdxcH8YseKLAyW8hXxa6KeBfwEV/CrUO/fOiIidGfjkwFnsXzowDI
         7zwQYGG7Z4bbtNyhPA1DOZYdm9+0oEci4VgA+0ZNNO0Q26vyud/ZtIlcXNqPxlDr2Nul
         4ZVCkvCHR1I3HGmgKwUVQ8IJhUCQkRksF5UOmdNmOBfSGYmoD+9S3NIlU1fI1usyIjka
         T1np19x0oaKm853KUqOfZhkR9BPJRvOS3dSyE1uw2rrRnAAQw7zyqvbZSEcgyb1v+hEK
         QOEJZQN5XkN7SKBObpXF1+aIoRQeO3cmH45ItcO0Q+UYT4W6HFlRMh+VXPNnJtva1v3c
         gEMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=s+tFxbLefax3JYoBPmLs3o2q5+ivhX87/dMmW2wQprw=;
        b=cvhhrYEBhPgRGuyQ0vSnwS+Q1Aqi/Vg3Egtakx4yfuuVp4FomCIQ4iAKf9i/yMaqX3
         iOZ8jgTi+XCO8CzyOaeDJRF7Q0rlSGDbgl20ID77dQ57GrifODshKVQFpqIc+WmjHJ6K
         Mo4LkUjNzTEYGOkW3lXccjXL3TPA+p3CM4xgFNl6mYoLuRSe2NvlHic7uPX7hm7ImqmT
         xJdPqCkh/6MwGlR7wN2kMaTeDK/XSNnoiYIoJ0DRnqy9NtYKbKtTVwlo7P+vVSBxM33M
         WpyItdmnNlrv9GaD/C69/SolPDG/X21lR3n5j0CE5p0+2WGL4jrp/+Y44pBWHm+aEpul
         3Gng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DQhVRRfC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s+tFxbLefax3JYoBPmLs3o2q5+ivhX87/dMmW2wQprw=;
        b=gfc0LbFek8pxKRhn3rbx7/z4RlcNeZuD9E8BphZWw/gZ14CTT9jghubDYpmc3db0eP
         8PVDhHwKqa9ITNEA3N1QxxvACGbemynDWDz0hPIUVEdnqX41awkZ5QUPYov0/fK/mxx9
         zP96QBxiFlCd1q8Hvazw9uLWb5iakvRcm6aTYGJOdFihY/Ruho6LaNFjv94xIVW3hj0C
         gUu3hHiHmtV4ulYTPB9O8OeLi3jwtZQo9Q6L6InAcvIEs//j9CjEelS2E5AysWJI/Nqy
         f9iv4xXEbVgjpueRfdAUYFBgg4ljDj6vOPNQWZXjZ8db32XMn/3Sw9tKFDqLXwoE81E0
         6lIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s+tFxbLefax3JYoBPmLs3o2q5+ivhX87/dMmW2wQprw=;
        b=cwsiFvcbVuTi9uYAimYDizRaMR7k6hKg0z1YMutB6ByQXeUYR5P9eI5+E2L7R8DvYe
         w30FinXWIBYBfJ5M8G20jQ9fiji6sPyAqu4n6U9WJZgN9sbnCC+Vu72UzGHC3oMg7GEI
         bgL9IfNCdqJmh+Lt1+D5EUViwcDIUsVnjcXw5fcCnjdr3Zeig6uKY47iAI/OtZ7WXoSg
         KYwAwownsTwXssv2jdtPaG9OF7ETjLImRZxqclB5obdmFwedE/Ehac1KZ5tX+u5ILsT2
         U4CJOYBguWqnK+PePRv+vEwrtaFV/pEETUyC1kCR45v1M9hOmzlDCTe5bjcFiZC9hG+X
         TTTA==
X-Gm-Message-State: AGi0PuZblp93dPqhW5NUS6SsoMOPo+CzNGWuaaQOvTsI9IIWTcv3fmAM
	dkJqlBs0nZfS+8WmozXZwx4=
X-Google-Smtp-Source: APiQypLuRnNP4pCPVMdPotBYB9lbqhN+2aJEG5SClyZSHzEvc29jy71pYNAEx1yw7j7r+lHPUd5BdQ==
X-Received: by 2002:a5d:9d51:: with SMTP id k17mr15216227iok.85.1589305870646;
        Tue, 12 May 2020 10:51:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9806:: with SMTP id s6ls1490852ioj.8.gmail; Tue, 12 May
 2020 10:51:10 -0700 (PDT)
X-Received: by 2002:a6b:720d:: with SMTP id n13mr7896099ioc.20.1589305870308;
        Tue, 12 May 2020 10:51:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589305870; cv=none;
        d=google.com; s=arc-20160816;
        b=m6Cmnazc530XrajGFM5n0+fdCQT9I+nTtSjUBTbnnLPwxO9wOSnu4TY3Ida1AoL+Uc
         m4q7v0ehj1lDnBVdfiMqVEfWg/ja4ZlTeTmjw6vHfXfxqGqb0znl80NNQ49kuLqkpSVM
         mAI3H/ECEopCDe7gBBvl924J1dJslfkob7XZMc1xEaPia6nho+bB2vlA0CWnSorwIAyT
         LqcdHFxhHATJxL8FzEtXGKyZVpdqyCgkfEw1k9TnxG1A9xkomlSz83kjHiWsnEiC8Oqe
         6lPUBa/lyWZYlZ2DdRhhIevxY6DZUA5tI9GEk6EBoIWcozEXHNeiUUyz57FZGk14R9vH
         m9xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1KRhSrHp7Z5b6SI10EPa7gHMHveHQjeRbIdxLBEYdcU=;
        b=iznFUBotxTnqb/nA/B/JvTqXWLZcwYTQ6asR6pjEyPJzUvRiaCK4MWrHaBslaWQeCN
         r5seK+QTzMebBQm4A4IY6T+8PW+A8zi7U1IAaj9XVSvXvx63LsVm+3Ob+S4pIeAG55Tr
         XUufBOOlMPkBLMZAhvj6rs5UU1eocMsTyAZZf2AZ+IaKq8shBRDlkk4orDJbDlEHm2ZU
         ZYK7QQF3E2D6anG9poirO2AfWtbUUeSm66+PIDU2nJpMWEHtWHfCQ0BDlb+9I9h/yKQh
         HH5zTDl/9cwjqPwVz69tmFDPOTkL4IMNWA3gLtOshc5xju4wTVoTwYg3jv9PnyhFKXfy
         Utlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DQhVRRfC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id k74si489160ila.1.2020.05.12.10.51.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 10:51:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id m7so5686109plt.5
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 10:51:10 -0700 (PDT)
X-Received: by 2002:a17:902:a401:: with SMTP id p1mr17712872plq.223.1589305869374;
 Tue, 12 May 2020 10:51:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200511204150.27858-6-will@kernel.org> <158929421918.390.4879623959521174170.tip-bot2@tip-bot2>
In-Reply-To: <158929421918.390.4879623959521174170.tip-bot2@tip-bot2>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 May 2020 10:50:56 -0700
Message-ID: <CAKwvOdmsRKiW49Djb+=C5E77YvE3tUGfa5a1fo-MwrMJPDb7XA@mail.gmail.com>
Subject: Fwd: [tip: locking/kcsan] compiler/gcc: Raise minimum GCC version for
 kernel builds to 4.8
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Stephen Hines <srhines@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DQhVRRfC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Minimum supported version of GCC is moving to 4.8.

---------- Forwarded message ---------
From: tip-bot2 for Will Deacon <tip-bot2@linutronix.de>
Date: Tue, May 12, 2020 at 7:37 AM
Subject: [tip: locking/kcsan] compiler/gcc: Raise minimum GCC version
for kernel builds to 4.8
To: <linux-tip-commits@vger.kernel.org>
Cc: Will Deacon <will@kernel.org>, Thomas Gleixner
<tglx@linutronix.de>, Masahiro Yamada <masahiroy@kernel.org>, Nick
Desaulniers <ndesaulniers@google.com>, Peter Zijlstra (Intel)
<peterz@infradead.org>, Arnd Bergmann <arnd@arndb.de>, x86
<x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>


The following commit has been merged into the locking/kcsan branch of tip:

Commit-ID:     62e13ab29e79d93a65fab5874e9c25ed4b3cec61
Gitweb:        https://git.kernel.org/tip/62e13ab29e79d93a65fab5874e9c25ed4b3cec61
Author:        Will Deacon <will@kernel.org>
AuthorDate:    Mon, 11 May 2020 21:41:37 +01:00
Committer:     Thomas Gleixner <tglx@linutronix.de>
CommitterDate: Tue, 12 May 2020 11:04:10 +02:00

compiler/gcc: Raise minimum GCC version for kernel builds to 4.8

It is very rare to see versions of GCC prior to 4.8 being used to build
the mainline kernel. These old compilers are also known to have codegen
issues which can lead to silent miscompilation:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145

Raise the minimum GCC version to 4.8 for building the kernel and remove
some tautological Kconfig dependencies as a consequence.

Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Link: https://lkml.kernel.org/r/20200511204150.27858-6-will@kernel.org

---
 Documentation/process/changes.rst |  2 +-
 arch/arm/crypto/Kconfig           | 12 ++++++------
 crypto/Kconfig                    |  1 -
 include/linux/compiler-gcc.h      |  5 ++---
 init/Kconfig                      |  1 -
 scripts/gcc-plugins/Kconfig       |  2 +-
 6 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/Documentation/process/changes.rst
b/Documentation/process/changes.rst
index 91c5ff8..5cfb54c 100644
--- a/Documentation/process/changes.rst
+++ b/Documentation/process/changes.rst
@@ -29,7 +29,7 @@ you probably needn't concern yourself with pcmciautils.
 ====================== ===============
========================================
         Program        Minimal version       Command to check the version
 ====================== ===============
========================================
-GNU C                  4.6              gcc --version
+GNU C                  4.8              gcc --version
 GNU make               3.81             make --version
 binutils               2.23             ld -v
 flex                   2.5.35           flex --version
diff --git a/arch/arm/crypto/Kconfig b/arch/arm/crypto/Kconfig
index 2674de6..c9bf2df 100644
--- a/arch/arm/crypto/Kconfig
+++ b/arch/arm/crypto/Kconfig
@@ -30,7 +30,7 @@ config CRYPTO_SHA1_ARM_NEON

 config CRYPTO_SHA1_ARM_CE
        tristate "SHA1 digest algorithm (ARM v8 Crypto Extensions)"
-       depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
+       depends on KERNEL_MODE_NEON
        select CRYPTO_SHA1_ARM
        select CRYPTO_HASH
        help
@@ -39,7 +39,7 @@ config CRYPTO_SHA1_ARM_CE

 config CRYPTO_SHA2_ARM_CE
        tristate "SHA-224/256 digest algorithm (ARM v8 Crypto Extensions)"
-       depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
+       depends on KERNEL_MODE_NEON
        select CRYPTO_SHA256_ARM
        select CRYPTO_HASH
        help
@@ -96,7 +96,7 @@ config CRYPTO_AES_ARM_BS

 config CRYPTO_AES_ARM_CE
        tristate "Accelerated AES using ARMv8 Crypto Extensions"
-       depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
+       depends on KERNEL_MODE_NEON
        select CRYPTO_SKCIPHER
        select CRYPTO_LIB_AES
        select CRYPTO_SIMD
@@ -106,7 +106,7 @@ config CRYPTO_AES_ARM_CE

 config CRYPTO_GHASH_ARM_CE
        tristate "PMULL-accelerated GHASH using NEON/ARMv8 Crypto Extensions"
-       depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
+       depends on KERNEL_MODE_NEON
        select CRYPTO_HASH
        select CRYPTO_CRYPTD
        select CRYPTO_GF128MUL
@@ -118,13 +118,13 @@ config CRYPTO_GHASH_ARM_CE

 config CRYPTO_CRCT10DIF_ARM_CE
        tristate "CRCT10DIF digest algorithm using PMULL instructions"
-       depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
+       depends on KERNEL_MODE_NEON
        depends on CRC_T10DIF
        select CRYPTO_HASH

 config CRYPTO_CRC32_ARM_CE
        tristate "CRC32(C) digest algorithm using CRC and/or PMULL instructions"
-       depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
+       depends on KERNEL_MODE_NEON
        depends on CRC32
        select CRYPTO_HASH

diff --git a/crypto/Kconfig b/crypto/Kconfig
index c24a474..34a8c5b 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -316,7 +316,6 @@ config CRYPTO_AEGIS128
 config CRYPTO_AEGIS128_SIMD
        bool "Support SIMD acceleration for AEGIS-128"
        depends on CRYPTO_AEGIS128 && ((ARM || ARM64) && KERNEL_MODE_NEON)
-       depends on !ARM || CC_IS_CLANG || GCC_VERSION >= 40800
        default y

 config CRYPTO_AEGIS128_AESNI_SSE2
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index cf294fa..7dd4e03 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -10,7 +10,8 @@
                     + __GNUC_MINOR__ * 100     \
                     + __GNUC_PATCHLEVEL__)

-#if GCC_VERSION < 40600
+/* https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145 */
+#if GCC_VERSION < 40800
 # error Sorry, your compiler is too old - please upgrade it.
 #endif

@@ -126,9 +127,7 @@
 #if defined(CONFIG_ARCH_USE_BUILTIN_BSWAP) && !defined(__CHECKER__)
 #define __HAVE_BUILTIN_BSWAP32__
 #define __HAVE_BUILTIN_BSWAP64__
-#if GCC_VERSION >= 40800
 #define __HAVE_BUILTIN_BSWAP16__
-#endif
 #endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP && !__CHECKER__ */

 #if GCC_VERSION >= 70000
diff --git a/init/Kconfig b/init/Kconfig
index 9e22ee8..035d38a 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -1285,7 +1285,6 @@ config LD_DEAD_CODE_DATA_ELIMINATION
        bool "Dead code and data elimination (EXPERIMENTAL)"
        depends on HAVE_LD_DEAD_CODE_DATA_ELIMINATION
        depends on EXPERT
-       depends on !(FUNCTION_TRACER && CC_IS_GCC && GCC_VERSION < 40800)
        depends on $(cc-option,-ffunction-sections -fdata-sections)
        depends on $(ld-option,--gc-sections)
        help
diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
index 013ba3a..ce0b99f 100644
--- a/scripts/gcc-plugins/Kconfig
+++ b/scripts/gcc-plugins/Kconfig
@@ -8,7 +8,7 @@ config HAVE_GCC_PLUGINS
 menuconfig GCC_PLUGINS
        bool "GCC plugins"
        depends on HAVE_GCC_PLUGINS
-       depends on CC_IS_GCC && GCC_VERSION >= 40800
+       depends on CC_IS_GCC
        depends on $(success,$(srctree)/scripts/gcc-plugin.sh $(CC))
        default y
        help


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmsRKiW49Djb%2B%3DC5E77YvE3tUGfa5a1fo-MwrMJPDb7XA%40mail.gmail.com.
