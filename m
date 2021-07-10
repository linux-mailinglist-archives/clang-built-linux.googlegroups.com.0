Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBW4JUSDQMGQEODXDKRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1BA3C2D9E
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 04:24:28 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id 44-20020a9f23af0000b029029b5b9c0118sf4561612uao.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 19:24:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625883867; cv=pass;
        d=google.com; s=arc-20160816;
        b=G4Ngwx+8C3s7WYqMyUREC47zCIUqPjHc207zD0XS0iLMFtzY34cAyxcAFUICMmaAG5
         3hn2XTwEdd8ndX3EBxh8AOlV/JD0uVRCSeqdQ05saCxsAVWFmEpSZOnBZjqM8I7p9yAh
         uN3ME351JAVENkuizF9nRE15pFJKfUe/PdR5VAAlA3ibbqO0QTzYd3XMoHpZDVRvn6Kd
         1PnpCC5P1kOJQxHDz98VIxTqTijFaUSt0epUGFgtkv2dMKIaS14eQ2YdURq10BQCH/vK
         5UrZqN4/ti85Y6T61QJZ4wCxWDc/DqALuj09Znq6s0VqqcMIeNXdGhsiCrURRjiPbGnR
         B5WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RBLig8l9/nC6kFeYD7t7PASu/cJuUEyeA3l9bR9dANw=;
        b=XOEXD9MSeSogmJZ9pr6shpldpAd9KLYQ+01dUM2jUN5guVnRExGXPJl/JFHW5RVwXi
         m7bp/tDrRTARWf5ZnWNgmyLW2XXDc8c1PcG0ya2BnMRneffQWzywiZRW+ZxZUT+45skC
         qsB20wmFNco7ha3l5TRu5pIVe1T7n+F9r7SZs2m/2gpZY1+NBDD9LzvFuT9Tg8HDDYGC
         fvBMha56y5f12Zn3OFFl5CZQGz+dIRoQYZZF+0agy+Qom2MIUNhmzHvjkpVMZvDR7cZ3
         fOLP6DzivoJoipGQsuRz5vngQrzlhWbmrPC/YN/zzeBupgrdVSzdUmZmTuvGBoRbT0ZA
         uEUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n7svH8CB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RBLig8l9/nC6kFeYD7t7PASu/cJuUEyeA3l9bR9dANw=;
        b=rYqcDue8HAUs42cv+XKP/ogBN/NiVnf3xO0nU+RULuOrFcXr+V7sG8WfVeudyirlZr
         P6WT4y01ZYVINA383ZHB2o2E4Pk/YZeThJ7GQdXZNFHbL2oB5SJTVtqqLAmE4A6uas0v
         aN9U4SWa259FT5HCsBg7CaKzhVlVmL+p71vX2VjQg5HF+wlUNdkKITgrnphK06bNxC/X
         xVme2jX7xCdeFl5dXIo0cJaRveX4sTnHRt/X9dh131fPjj+onx2UGJnrcxoCgITFe/+m
         7Wmc6XpAjnNU4AvH2MZOXyuDnJsd6lTRCJW7vVJ+E2ReXfiliD1FLYg8Avz7NqBGHe05
         KMjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RBLig8l9/nC6kFeYD7t7PASu/cJuUEyeA3l9bR9dANw=;
        b=iFisaLqajEcOQdBHjeaj7WyvSerrlB0DY+LEKYZFWlXbnfDxJuI8YANqj5r1iSeZP0
         /zvHgg0U4of59Q8fr8+jMsG3kC2BEba6xZXk9e3p9l1fY0GLSM+cz/E0SNEhNVJxpoXs
         BxI1BP9J70yzm+2UkB7VOqBROK653VoCw89VtVAhC4W6dvfybuheDlR9cORzutsLwsXd
         H/GZxzk75ra7cdyIlZHyyuVzqMQHzn4v9+vFuLYclSQJ/xzlVLPgEayThdkglUJxj+sf
         /RsO9ust94nJXwkNQqouv3TJBxtYGLS3eAmXY0lAkvh0tO3OGMFl05+WpBlADy8a2+0W
         rsgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ppi0xbUoW4OFTDD2Vw3a/rogVH3Am01fvPBjHk2rRUXnwtVns
	dd6k9Iyc2PM5mf6tmdPAo+Q=
X-Google-Smtp-Source: ABdhPJzydLFuoblitFTPmVNfpzUhsiuzSduoo/6ArGvwPDQb3HN41fpec2rwEOvisT7EM1u9oSKSaw==
X-Received: by 2002:a1f:cec1:: with SMTP id e184mr35717238vkg.12.1625883867165;
        Fri, 09 Jul 2021 19:24:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c88e:: with SMTP id v14ls2303864vsk.0.gmail; Fri, 09 Jul
 2021 19:24:26 -0700 (PDT)
X-Received: by 2002:a05:6102:2131:: with SMTP id f17mr20904824vsg.1.1625883866624;
        Fri, 09 Jul 2021 19:24:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625883866; cv=none;
        d=google.com; s=arc-20160816;
        b=lJs4bg6bAVDlFEyMRQBEk5HCHfx1eB2dPy1mA0ew1tpKpFoOUEX5uunihaHbJFjkIz
         FFxAxRBCDrp6UhYo7zyF66LghYfsWJBHU1chMDUQ/z194EvEZieJYFmYnL67rQ5HrxPV
         HHWVD9ZawB+ZJzEHNVPw69w3+KHvS6mat1Akh2AjNL8fvNj6QYgDyE/ou5Gdooyg0k/y
         FY8ccQjokNTNNIUpp0nIFuL3/eUfafNJryM06dBd7a3lKRyxpF1r9Lq7e0ELXAU+xwn3
         hAXdM2HhAIowWRnuO9qopKi8K6f7RTA/901LplaF1zhBLrKWqmvrAarzWmQCPO691v6B
         1hyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pAnOCRZTWvXIodLg9fb8plqxaN7lJNXcDtYnYSpGcNk=;
        b=aBHhbVpAdy9Ng9nIwn3BmIjHDZozB+Huoj25ubuKrmPBo2ptd4X9JVQHbQCXYUAzKV
         YtQDMlUIagypXGM3gR8468dlOTXlFnKnEnuR3TjR3o44LeOeBrbdbvmVdbKDIms8tW7I
         seCnw3G06N1fIcsCRoONr9jETqn5PHdlhuRUjTPY6c5AsD3VCSYUXaTEgBBlR107BEzU
         0Vv4e7drs1NOTnr6UADm3RjcE75tSeAjNO2Zjy1ry+7CEhZGvQShGkr7IMRviqSriiSb
         6jBOV8NmBaxtxcV2xj5Pb3P0UteKk2N4QCUefDXZEXkKHSHGk85QAUMkCgdspTtO2Pzz
         2nLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n7svH8CB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d6si864217vsf.0.2021.07.09.19.24.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:24:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 93F43613CC;
	Sat, 10 Jul 2021 02:24:23 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Marco Elver <elver@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Will Deacon <will@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Dmitry Vyukov <dvyukov@google.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 104/104] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
Date: Fri,  9 Jul 2021 22:21:56 -0400
Message-Id: <20210710022156.3168825-104-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710022156.3168825-1-sashal@kernel.org>
References: <20210710022156.3168825-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=n7svH8CB;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Marco Elver <elver@google.com>

[ Upstream commit 540540d06e9d9b3769b46d88def90f7e7c002322 ]

Until now no compiler supported an attribute to disable coverage
instrumentation as used by KCOV.

To work around this limitation on x86, noinstr functions have their
coverage instrumentation turned into nops by objtool.  However, this
solution doesn't scale automatically to other architectures, such as
arm64, which are migrating to use the generic entry code.

Clang [1] and GCC [2] have added support for the attribute recently.
[1] https://github.com/llvm/llvm-project/commit/280333021e9550d80f5c1152a34e33e81df1e178
[2] https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=cec4d4a6782c9bd8d071839c50a239c49caca689
The changes will appear in Clang 13 and GCC 12.

Add __no_sanitize_coverage for both compilers, and add it to noinstr.

Note: In the Clang case, __has_feature(coverage_sanitizer) is only true if
the feature is enabled, and therefore we do not require an additional
defined(CONFIG_KCOV) (like in the GCC case where __has_attribute(..) is
always true) to avoid adding redundant attributes to functions if KCOV is
off.  That being said, compilers that support the attribute will not
generate errors/warnings if the attribute is redundantly used; however,
where possible let's avoid it as it reduces preprocessed code size and
associated compile-time overheads.

[elver@google.com: Implement __has_feature(coverage_sanitizer) in Clang]
  Link: https://lkml.kernel.org/r/20210527162655.3246381-1-elver@google.com
[elver@google.com: add comment explaining __has_feature() in Clang]
  Link: https://lkml.kernel.org/r/20210527194448.3470080-1-elver@google.com

Link: https://lkml.kernel.org/r/20210525175819.699786-1-elver@google.com
Signed-off-by: Marco Elver <elver@google.com>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/compiler-clang.h | 17 +++++++++++++++++
 include/linux/compiler-gcc.h   |  6 ++++++
 include/linux/compiler_types.h |  2 +-
 3 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index d217c382b02d..4d87b36dbc8c 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -13,6 +13,12 @@
 /* all clang versions usable with the kernel support KASAN ABI version 5 */
 #define KASAN_ABI_VERSION 5
 
+/*
+ * Note: Checking __has_feature(*_sanitizer) is only true if the feature is
+ * enabled. Therefore it is not required to additionally check defined(CONFIG_*)
+ * to avoid adding redundant attributes in other configurations.
+ */
+
 #if __has_feature(address_sanitizer) || __has_feature(hwaddress_sanitizer)
 /* Emulate GCC's __SANITIZE_ADDRESS__ flag */
 #define __SANITIZE_ADDRESS__
@@ -45,6 +51,17 @@
 #define __no_sanitize_undefined
 #endif
 
+/*
+ * Support for __has_feature(coverage_sanitizer) was added in Clang 13 together
+ * with no_sanitize("coverage"). Prior versions of Clang support coverage
+ * instrumentation, but cannot be queried for support by the preprocessor.
+ */
+#if __has_feature(coverage_sanitizer)
+#define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
+#else
+#define __no_sanitize_coverage
+#endif
+
 /*
  * Not all versions of clang implement the type-generic versions
  * of the builtin overflow checkers. Fortunately, clang implements
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 48750243db4c..c6ab0dcb9c0c 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -126,6 +126,12 @@
 #define __no_sanitize_undefined
 #endif
 
+#if defined(CONFIG_KCOV) && __has_attribute(__no_sanitize_coverage__)
+#define __no_sanitize_coverage __attribute__((no_sanitize_coverage))
+#else
+#define __no_sanitize_coverage
+#endif
+
 #if GCC_VERSION >= 50100
 #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
 #endif
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index e5dd5a4ae946..652217da3b7c 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -210,7 +210,7 @@ struct ftrace_likely_data {
 /* Section for code which can't be instrumented at all */
 #define noinstr								\
 	noinline notrace __attribute((__section__(".noinstr.text")))	\
-	__no_kcsan __no_sanitize_address
+	__no_kcsan __no_sanitize_address __no_sanitize_coverage
 
 #endif /* __KERNEL__ */
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210710022156.3168825-104-sashal%40kernel.org.
