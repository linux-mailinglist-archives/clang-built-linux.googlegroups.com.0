Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKOZWSDAMGQEBHB27OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAF43AD5EB
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 01:30:50 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id x4-20020a3763040000b02903ab95237c25sf7082932qkb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 16:30:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624059049; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ILYrsqkLSWmljJn0JzwqXQdE1I316zHb2b1KUgsl0osnOI6/eeT1i4SzZaO3rAXch
         DHYRMmDSJ72nS1/5wOFPqSbRESEczYupEuSKYqViJy//pJDBfEFBFt2eYuvZruwWJ2hD
         HpF+lAoRh7kJHsrIzTDZs9k7EBMjROUvX4bs0QNrRBSk9Z3Fm+jaTyS+10sgmA2uXxsR
         U6rMUTnCKdgtMy26Aue73TfmkLFitn6K4FrQwjxV3pJEvrZq/l/+6tvR67gDoRNySVVS
         eoGRefQy6uLB3oTL87RPtytblZVkKCON2K0VYSrLtPqhVzN3TXJAjqJIX69jXAkeNddm
         14zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=B5u+isSmQrbhtgykMNcwftmtqbOe8d+7TxNOJt7mZG8=;
        b=YrMTkKc69yWc7PhVoAB+Lo0DAKWHlM1aEs1aWRTjg4zXN5R9wLt6Kjizq6+YF5qmCQ
         Fjv5j/ixRZbARC3T8jpwvBaVwTAG10Mq65kCariLtH8RctvR+DGJlbyM6hpNYiFA1BP1
         hYH//idszH33ZYxrSF96nec9yGo13wtJy/sI7kjJxID1IQgYnhhCDc/VLwz0LImwYA41
         CdJG0B1+Y7ZFbIBoyB1mWlz5w5BV2db0g7Rs3J1R1OLNcBhRxyHMy+ZvWUB0tXOycU4s
         XhLQRx4OlD2w/rmv5KkeYT2rvHtpWTlwdcPNp3gSGLKfH2vLB/qA4hzlMoM39FkKUuV3
         5Bmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xv1vHb+6;
       spf=pass (google.com: domain of 3qcznyawkaemsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3qCzNYAwKAEMsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B5u+isSmQrbhtgykMNcwftmtqbOe8d+7TxNOJt7mZG8=;
        b=mMCePAv0taTcgXMButXKnTOXf8vlU4zcm58SXiMFfhQz0swYNbBIFF86LtH/1fndRK
         V2bCGBqwzxvQR011gM5ppHGlSZTPyBcqt29jb9sewZ1rhDbz8E6AwiFRadp6jkqkia1X
         sJOkSbEBq40hWa8KoiiQzalZvZPiGN0AT0hE6y9bUkSqVpyBx1vkDnRbH1RSGXdvt+uV
         Z0CqxSvQROy3YxSaTbt5tdoCVot7CNlomb32t1nrMU9G3pEvx02iDYevJMReVzGvqr7G
         QUGtSSbj6x9sdMeQ6WByVG6vFIKPniuvgsdHI9fkMyPe6+WSZHfM9Ad4kuFeyvrbHGhf
         t+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B5u+isSmQrbhtgykMNcwftmtqbOe8d+7TxNOJt7mZG8=;
        b=MYT908LhffShTB8LhYtxwN/fdGw2SRtaSy4moTG47wHlECEXQD2kUma+Q4KFnV24TP
         317befMsgdb+VGbArRJxrC6IawmNxt3xjh/L0zrYHUyo+ezXg4iOg6ARJAXIzWki3QwF
         ten2fYTZM3i+FJXijAtvCK10Ab2FFYL0pWfSH7iu/sWxImAdVI8ODWe7Cq1DKwZUmn9f
         h/AZIfuOQ+mildqhPEFBiAZXECC9Dv7XsszSeNRTXKOs+EKd4YzI0TPEvDPN4ppiZii+
         239pRPPdd03PqGu/KF4KKIuG9umtAVnbQe4KalwgG0LrtHKX+TQ+XDUZZjC6mJ6THwJj
         t9rQ==
X-Gm-Message-State: AOAM533uV8he5P5k1VeZG8EwokQwdqa398u8RrV8F3IwtWvWOQP1ROyc
	wmOJAVypzP7PHAQCLaFngns=
X-Google-Smtp-Source: ABdhPJxswSSbAIHx6bHy/h3fcJYGABmRr5guAK/SMHDZBT2K9zHLXIYokIwkEyRVw/fYHfVNQHxHhQ==
X-Received: by 2002:a05:620a:5f3:: with SMTP id z19mr9915026qkg.301.1624059049665;
        Fri, 18 Jun 2021 16:30:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a3d2:: with SMTP id m201ls6300656qke.0.gmail; Fri, 18
 Jun 2021 16:30:49 -0700 (PDT)
X-Received: by 2002:a37:468b:: with SMTP id t133mr12172107qka.244.1624059049255;
        Fri, 18 Jun 2021 16:30:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624059049; cv=none;
        d=google.com; s=arc-20160816;
        b=bziPocDso+6Az/HceDxYUKlliEJPW58vb41EYIkOAhGeDE6jPcwAafM3Jz6vWTebN1
         uWdktaC5F3F61v0sTNTBTLyY2I73us9z0hdNI1e26/JT1D1qV0g4WBujKlMmCityWnwN
         nOv2yMwd/OGHcvnJzWwYCeycBLeF5jCdU7F+9qrw2BZq8aqVw4ew1O1DuG2H+t004RWl
         CYDsc/sRIPsVGOFelYLpVocyn52dKIMpopTt3YMo4NT/1W4uCzeiN2V0eQ8MNnHrJL0s
         UH+bbE/s8hf2jv4w9+DxKb97zQgOehB79vqIbBUv4nR/ht+SLon6Vg1II637NUANQ3vo
         cCWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=K5IKvJejgNpA3AFkHBDCXpqjsqKJvtxs1XINxFL+/80=;
        b=GRHz+hebA7Qc4cCBa7p2Y0LXhzVYVk8hBU8a1/aISp5osEAv0ySB0xgn5z+BIdCWAF
         HsJyF/lFZY2hrobmTC9lBJbNoMQBuOOEHEDFD5trl6b5ChfqlDDu/1VY/2/Ej6VEFvqs
         QqdW3yGwKDZg28G+zCQr/i2c0evv8wHZfx9KvvjEofgOUO5g0aCOZuV9FrFaYalqESgD
         4z/Gh7qyprw7Ul0RqG3JdYZW4zh6kRJCsoSdK1diLNfamKKfpEXgH6gWrbf4B99icTkx
         g1giXLLh9bFxP8+23b6Nwa2g/Ci7ZVsaW9pL1zltlrekdI24RLhUdEdvkJNaqqX2/aVI
         yhiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xv1vHb+6;
       spf=pass (google.com: domain of 3qcznyawkaemsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3qCzNYAwKAEMsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id m6si142396qkg.2.2021.06.18.16.30.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 16:30:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qcznyawkaemsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id x4-20020a3763040000b02903ab95237c25so7082904qkb.0
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 16:30:49 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:7c41:e84c:8fcb:6664])
 (user=ndesaulniers job=sendgmr) by 2002:a25:d257:: with SMTP id
 j84mr16278281ybg.404.1624059048916; Fri, 18 Jun 2021 16:30:48 -0700 (PDT)
Date: Fri, 18 Jun 2021 16:30:23 -0700
In-Reply-To: <20210618233023.1360185-1-ndesaulniers@google.com>
Message-Id: <20210618233023.1360185-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
Subject: [PATCH 2/2] Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV
 and PGO
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	x86@kernel.org, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com, 
	linux-toolchains@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xv1vHb+6;       spf=pass
 (google.com: domain of 3qcznyawkaemsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3qCzNYAwKAEMsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

We don't want compiler instrumentation to touch noinstr functions, which
are annotated with the no_profile function attribute. Add a Kconfig test
for this and make PGO and GCOV depend on it.

Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 init/Kconfig        | 3 +++
 kernel/gcov/Kconfig | 1 +
 kernel/pgo/Kconfig  | 3 ++-
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/init/Kconfig b/init/Kconfig
index 1ea12c64e4c9..540f862b40c6 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -83,6 +83,9 @@ config TOOLS_SUPPORT_RELR
 config CC_HAS_ASM_INLINE
 	def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
 
+config CC_HAS_NO_PROFILE_FN_ATTR
+	def_bool $(success,echo '__attribute__((no_profile)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
+
 config CONSTRUCTORS
 	bool
 
diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
index 58f87a3092f3..19facd4289cd 100644
--- a/kernel/gcov/Kconfig
+++ b/kernel/gcov/Kconfig
@@ -5,6 +5,7 @@ config GCOV_KERNEL
 	bool "Enable gcov-based kernel profiling"
 	depends on DEBUG_FS
 	depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
+	depends on !X86 || (X86 && CC_HAS_NO_PROFILE_FN_ATTR)
 	select CONSTRUCTORS
 	default n
 	help
diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
index d2053df1111c..26f75ac4c6c1 100644
--- a/kernel/pgo/Kconfig
+++ b/kernel/pgo/Kconfig
@@ -8,7 +8,8 @@ config PGO_CLANG
 	bool "Enable clang's PGO-based kernel profiling"
 	depends on DEBUG_FS
 	depends on ARCH_SUPPORTS_PGO_CLANG
-	depends on CC_IS_CLANG && CLANG_VERSION >= 120000
+	depends on CC_IS_CLANG
+	depends on CC_HAS_NO_PROFILE_FN_ATTR
 	help
 	  This option enables clang's PGO (Profile Guided Optimization) based
 	  code profiling to better optimize the kernel.
-- 
2.32.0.288.g62a8d224e6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210618233023.1360185-3-ndesaulniers%40google.com.
