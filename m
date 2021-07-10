Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB64KUSDQMGQEQZ3TWVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E45993C2E4D
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 04:27:08 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id s14-20020a056a00194eb02903245e1dd027sf7548003pfk.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 19:27:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625884027; cv=pass;
        d=google.com; s=arc-20160816;
        b=VQQ/QXpV8zhPhNGT41HlKdUu8PegD6zYI7y7jZeuNbbGuiX0HroXckRL74/d4oRaYw
         OI467vV7zUnJgnGfEeR42S2E+Bm83PmKVHnxWrbxIW2QNtB8CsW0h3mA+2v9JvKQYp2w
         f4fS4OGlhxc11gRddfMAEiIDV1fi5Q0ncGb6wb9OEEjThJyqjzKWcDo1p4G7Uvf1NO75
         AwfkShUFcYz++kiKh68Jqd4R/hfXhytTY9wnvFoRNdTcwinc9Cqmy3aw6o//VYW4DXep
         iWZM9aENhuX9nCzEU7rtgGJnIMQ3M6RRd5ZZFxA4jTzPoSnBcj+GiGotNUQDkbPAnmek
         NU/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eypxy6UXQL0iuAQ7DZltiHQHIhsSncv0dFsEiBf+oGI=;
        b=HSGQp+9V7sKkpTt9MoEcVYCG0xDgq+QBDBcWpADF8DRPYCqs+ZRj6ilim1ntzemF3b
         Vxyyl6EPe/mA85bMizhGhARFUeyjgU0YKBbzg4e7CFG00YAMp/WTIa03ART8oE2uYWah
         cKFPv2/OFZrUtw8eCO4562i3xywOxeoFwoY/QncN4lbQMBrwPxDBLmknbi0mSWFUS4fR
         tPLbGv5Zensv6UQ0xMuAygJyK3OI+7xCX6cjx4tOX8ee+Ci2Wmlpey4IxO+21KQjb4wU
         QbK/qQWKZx5Y9vtxUb4K08YN22HpF5F4yGIADP5tGkr+UAqnxas3UGSGEM/PsvxNM8i2
         fB+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FLTOOvOf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eypxy6UXQL0iuAQ7DZltiHQHIhsSncv0dFsEiBf+oGI=;
        b=hfA4se+SJhWQcn0882ucetkt56HCaWFqbkCiJ4iQvmTP508QKoGI2MBEdSDVj6xoLr
         AonY75Vxv9Y5J16E70Ch7nLjt826thjdC7A+0EWIvh70ZHbfhhdV3AMIRmR/7fx5QZl2
         eMnspOrhCbskgQjRlU6hM7WycAtUnvawm22MJhfPzDDS5KJ3dDUh/lVjjz+TuDWP4nzv
         9Va8GS74zffJ6B1D72WR2/GemauhVdzE9xfQhqdkM0fw17SlxjoVeXLUT6/INIHBB5jn
         crG2z2sf9Zrn0ZixhcEyk9CUt2rjKmEw9CgzDCmZSf7NlEIGJVj3shDSYkp9bTQJkxAl
         br9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eypxy6UXQL0iuAQ7DZltiHQHIhsSncv0dFsEiBf+oGI=;
        b=CpTBr8MkhfOF4spOpfGzB3tzLN34mHXylcTRI+zVEGKrstz5pdL87r/jd8zjaZBmDs
         lA5O16Z5ZJ8KNFwrP9ZbAME74brwd8VxHfbAQE70iruoDKID0Qe6lM2V/RYVUH9s/2Qw
         1v58AksuznyySF9vtpQVclLQbITCeQI6ydtCYaOgnzKriszQo/HIeIhX5T+HV+DBDEhW
         zPud456GvUClln+IyuLKXxcndw2CoEyKjvW6qgtAzGuPAzU0ItbpxNRU3xC3+Efe+LLh
         HLv8wfloEK+9b7A0t4609WMTBD1iMmzmMwMVMF0SxgGZtiTkWNs++X89zrpuXLDI2ma4
         n1VA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xqsj43umG6QKcZpMBeJ5SZ2pYTzL0cqB8Xz1Mxq6lju9Ragaq
	+eCMpiYlXhc9h8pziGCDV98=
X-Google-Smtp-Source: ABdhPJzEJ6ubQy3LZh4aBzlQCHvRrxAeyWqTuAX97QksyWWw0tzpQ9hUif6/TAfXJ5yu3AVvOsU/vQ==
X-Received: by 2002:a63:5d52:: with SMTP id o18mr41502638pgm.440.1625884027623;
        Fri, 09 Jul 2021 19:27:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2302:: with SMTP id h2ls3875424pfh.6.gmail; Fri, 09
 Jul 2021 19:27:07 -0700 (PDT)
X-Received: by 2002:a63:af07:: with SMTP id w7mr42076095pge.287.1625884026923;
        Fri, 09 Jul 2021 19:27:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625884026; cv=none;
        d=google.com; s=arc-20160816;
        b=D7UnlFsPg6UDTiw7WlkfKbq8XchgUwk5CUExZR822TPFxVMbvxxTnI5j4WuPFlDfNv
         P1KarHjXV7UpjdlXQmWeXYG3izUR/3Wvpgp4zjuoABnxrmPez5sma/99MmqStp6Woksv
         sUZpVcJP20ENo2Ag1FkQ5NZqDeAyxEM37rJspydEFWZw0CfVU7iIrgb6JnbmMsuH0Drj
         sh2rp+6j/BEZZ9ITKZLFRmjHu0vJMaH9r52Gow6vOGw7JlYh8awDKbYkRC/G6ByeJ0+L
         rT7wzjyZBNtxr0x3wSKPBo1AhmYRxlPWXQ+IpjuiW9Kee02j4rQP5epoOngSX47VTr1Z
         rNuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=66gMy5gWuZ96dKx0DN315J2Q4OVwPVeC6ngfJ/S5a2c=;
        b=pgO9j4/yNW5YoQh6Ql9Ut/MnSpHA44yrpIQPh0YyA2sIS/egc3X5o8v2WeIDbmfUnY
         zrdpkSLaNTAMasibsMF5o2FUu8tb9uswnu9blrS1RiSb+Mx5riRcd6DqFJ4lcmIgkS7Y
         zB4RjE3FYNWvxFuGSYWHNKbGiCbvR44ViP4SaBNc6p2TQUZw76DaU3eCdVO9dvf7TTPE
         jzcI0rgum4RpgabOOYYIxChA3gavDwma47OO0leiEP7Dn6S6RP6jaulfmIcTYGYtwRZp
         KypjoifT4KQnH0JRN7Ve+ZLHoDiIaQ8PzCC9KJ2hwy5LjM4DOGIu5hAIKZo857lmkwtC
         H01g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FLTOOvOf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x4si721897pjn.2.2021.07.09.19.27.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:27:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A546B613D9;
	Sat, 10 Jul 2021 02:27:04 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 93/93] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
Date: Fri,  9 Jul 2021 22:24:27 -0400
Message-Id: <20210710022428.3169839-93-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710022428.3169839-1-sashal@kernel.org>
References: <20210710022428.3169839-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FLTOOvOf;       spf=pass
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
index 189149de77a9..9ba951e3a6c2 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -23,6 +23,12 @@
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
@@ -55,6 +61,17 @@
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
index 555ab0fddbef..4cf524ccab43 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -137,6 +137,12 @@
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
index ac3fa37a84f9..2a1c202baa1f 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -205,7 +205,7 @@ struct ftrace_likely_data {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210710022428.3169839-93-sashal%40kernel.org.
