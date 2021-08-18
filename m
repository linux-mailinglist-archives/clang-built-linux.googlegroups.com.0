Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQOK6KEAMGQER63RZSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 244BC3EFB99
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:26 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id v21-20020a05620a0a9500b003d5c1e2f277sf185539qkg.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267265; cv=pass;
        d=google.com; s=arc-20160816;
        b=qqaptPo04ibnvN0V7xYWj7nyY7oJOiioPvowwdvSV0bjVWsm/K8G1ijdcvbwPS2kF5
         vUVsJplSxVGPBP8CCpSq39mXqKGMb+akRJkxqsqJ8qQ/CTMsz8NeMa43LoY4UIukrlM+
         rEEMD+TYQxkVKdMJ7Yy3RiNSugO4EiOJ5GxwBjod2zIWaNf+1/t2pZOgMNZHK/T9Smqk
         Z28NT+BMimwXjJawui+3f6ixuZZqEoVGz6hD8NRMoJ+unKqVUeinbe5l4ErNWL6tZA/j
         dO66ggpvE7CJw+HaLxr3hN3wIpFsZ+Rs2GQChHZBUIbKuEibCkknzg3yJlbjMuG27YfN
         fazw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QDQ2CSkJekKv6hv9TTP8K/ExsR6vQMPb4qIqSgJPe0o=;
        b=NqSqpKVWx3ogw6Ru3ODMrGuNJpNoOnMztTGRZTOFTfo9wiSLEDDKLBiZrzVkB5qwQM
         qXz9K6sA5AjO4CRrycAOpPLhJrec+sXMPGgSdmycAgBvlKxuz/lXxZqHRlBjeZsCuptX
         /cfgKWfuZbUoEllZHeSPfZp0+r8DuXXuwz5A0Jn4jxK7HOUXcWd0fL2zlSSiG6Jmh9kf
         4YsUNnHLn+Nsix9hcH2QazxNrEziX0mtysfZxHMp5Uwpq+RfaJ/2Xfi8KjLALDFgyGm9
         qZadDNJdEDM5CYOHn29Tp61npvUCbKjtpCuVUsGuM8qLoAVe/ZMTBbnSGHuf855eQ8Kk
         V4Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="XzrlZ/y5";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QDQ2CSkJekKv6hv9TTP8K/ExsR6vQMPb4qIqSgJPe0o=;
        b=KlkRimgTGOB8IE9ePz7Bu2huy9GnAMAxBkHEBMDpp54Y/upRkfB1yEfAxK0gzZIWCj
         jZZSvB7wVlT3X3Y4xKKKjh8R3zyctalYzuifdsKRDtArGFR3kgCOsoIrq7qzyAfIMIjk
         /2ySYSe7HtrjYFHDGDarWrAlIoaJG5VP/at5Vw4yR+GS2Dpb44krEE4q7N9FrzzYqZOK
         /7+eeNkH8qbgFUSbrtNivtmCdrOTZsYjI6ukCBVg6IyIQ+6I9uADr83vqLmm5Fso7sN7
         3FeZGC01nUkYvlRjj2Qgm9a7MwxdTLxEUedh8/RrnVAl1odcx426BnPQ/wxu4jhvdgN9
         6yEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QDQ2CSkJekKv6hv9TTP8K/ExsR6vQMPb4qIqSgJPe0o=;
        b=EufY+5U5u3+jKeIbCuTJBO7u58VRTqI/dD5gZLFU6OqnRF57QvK9hdLh3Z5SMD1WeR
         kyJiouX3DeY+yjp+OCwxARCZ6/iwW7/I9e910NOyvqjakYPY7a/wtTaUKZdgXF6vp77w
         rmqBHV1v+NUAFmSVd1jhElLqs/n2w0e/boBIjPgk6d32I4uVrrQ2ij2BJqfXNt2ladBO
         znMq7D4Y83BVu0jafPk3T/ufF/zi9LBllAQauCZw9cLlv7gSWs2Dnmls/QAQMqOaKV1K
         8LVAIO3XxSzTEvpZDtXTYFGj50vG743+1G1mWK4KzSBbkwKEWZXKPkNecdyYZEkcYHpX
         Hn3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LUdGzXy/WdBTj9RuPbEiUrH68TmnHy2/zxwc66gy1lTafpOed
	ydLcuxL1MlOZ6SuZhdnpPQA=
X-Google-Smtp-Source: ABdhPJyGTAB+8DWgirAvYQAtFrgyUTxX8idBz5pc1DAV2A8LM2wXL1JFysH/RIYftBkvjoXOj6Jr0w==
X-Received: by 2002:ac8:1249:: with SMTP id g9mr6456608qtj.292.1629267265274;
        Tue, 17 Aug 2021 23:14:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6191:: with SMTP id v139ls780787qkb.2.gmail; Tue, 17 Aug
 2021 23:14:24 -0700 (PDT)
X-Received: by 2002:a37:4452:: with SMTP id r79mr7932986qka.70.1629267264837;
        Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267264; cv=none;
        d=google.com; s=arc-20160816;
        b=ye7RT1HKyBiiS7WQMtGSiKTy9aFRELayprkzOPKLlE/c7qPGllaj39PorSxEvQ5yUH
         B+L30dS6VK1MuyqC0kA3zwTtGZYM/uu9/2GLQhtXsow0UUDBqT/E+bCA1uzyCbF31IDx
         AOsDCfcTgNjDZJjsbvAZ4ag6dceW4eRFk9+hfFJojeQIqGYnT+OxJOaGZTpBn/8EGjAG
         WV0Xa1CROuv8uZHNYT63pGzbccOeX68dMsGoE67loP4/cTykXLzhriulmSlB2+ZFsXqx
         3IrBgwB/fXGoJ3C9Cs7QKtarxapk0oCJslYN+zvejPxOx2W8S37DLUVwnqc9bKu4Oqo1
         w6rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CRODLTs8x0Qtm/Ptv5tWUChhln5VJpkNvKJjBk8/td0=;
        b=0MyLvTMOddlQyJP6QlRdnoOSspVhz395sbOdlwy+yP0yl8fatuvqbqGKJv5jsuPqvc
         KlkvfptXbTjLKK8ZMrI08yrKQ+p/e1z26fWIaLsYEh1NcCRqAJE5F8RGjrfxTLue+wUi
         c0WLf90UH2jzlFWVu6MP+53AVIS4qHgmeXcB9FJyJfDqHEVqWOoJOV8bEUWqPRULfr1o
         HRIpyCHCJ3jlEZFnaoZRX8wSFoybNyjIWTzdJKbux8AaeYQXv1ziGlzzLtq78oHrsYQf
         CZmMnIUVsEEPQKLMjgQG6i1HihJL+dRMN/6zyg0G68zIy+q1BoY9m6g2InsYoR+9jl8n
         axJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="XzrlZ/y5";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id n78si254025qkn.1.2021.08.17.23.14.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so8260291pjr.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
X-Received: by 2002:a17:90a:9f93:: with SMTP id o19mr7581672pjp.166.1629267264063;
        Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j13sm5326102pgp.29.2021.08.17.23.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Will Deacon <will@kernel.org>,
	Marco Elver <elver@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	Andy Lutomirski <luto@kernel.org>,
	Oleg Nesterov <oleg@redhat.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 25/63] compiler_types.h: Remove __compiletime_object_size()
Date: Tue, 17 Aug 2021 23:04:55 -0700
Message-Id: <20210818060533.3569517-26-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2922; h=from:subject; bh=MDjEPu+0JYKYu2Xmf51UoTuGhtFMUlaN8gkl0rN2LiE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMjfBwoewCUYNgCuB0jumG0NCJivrA+YgTkE1KH MccXxVSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIwAKCRCJcvTf3G3AJm3mEA C1cBGrrgs2la3rIyvrEHW+BRoF9MD1FEFa9+24jUy+7EhTKj5KuskH2wadAz6TmifU9D+cLgGgfC/n amHBb++ivEXxSJhc4y91umgpxGq1S8LFyrlOWOgZqtGNwFOE4L+A6hPQOzVfQqImZrKbUsXQiOTxQF 7grjdlvdZoEFDWPebAGQTCgPQNbtVYVKWoz7N0rUF0q+U6KKngVHIiryXSBI7/jo7JX1xs7kwTa5yb j5ABB3DV0p5m3h+eGdK/o4dtNK3lb7ccrpoMB2vKnfDPiunmk9/NFQdWQDhhPGB20LOuYWqb2DMI5F 8ra6j3oQzxzlnAmyDYk0Ooa7tUqhfIXEiH7BoEFHO1Labygo8HuW7nnfy2MT+oXLprIG0my4K40djX 27uS65O8HaTRBABOICKEnhMZCAjtBXHZrTzmpy/IjAFCLLdhJ/jhsknAVr4PuO4MNgfpjTce+yDc2f q9P+f7KqhEZTR5/XfPySXV6MEI82XEMO1yyRrSeCAUKNaSpY90jIcOl+jIvBSF1AlFB5Heg/LRjEc5 2Rgx7CjVAVaOJW15x45Insq5iN40SQ3HKQy3SVHVdQwKifffNqMWgk4LPRATYF7inKbMWmxUlWu57e y9Y+fqktoIPFyiL5IUhAbNoDS4ngHbm3l04H/saAMuvQX3Z78YJ6a+2ACeqw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="XzrlZ/y5";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
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

Since all compilers support __builtin_object_size(), and there is only
one user of __compiletime_object_size, remove it to avoid the needless
indirection. This lets Clang reason about check_copy_size() correctly.

Link: https://github.com/ClangBuiltLinux/linux/issues/1179
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marco Elver <elver@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Sami Tolvanen <samitolvanen@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Oleg Nesterov <oleg@redhat.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/compiler-gcc.h   | 2 --
 include/linux/compiler_types.h | 4 ----
 include/linux/thread_info.h    | 2 +-
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index cb9217fc60af..01985821944b 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -41,8 +41,6 @@
 
 #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
 
-#define __compiletime_object_size(obj) __builtin_object_size(obj, 0)
-
 #define __compiletime_warning(message) __attribute__((__warning__(message)))
 #define __compiletime_error(message) __attribute__((__error__(message)))
 
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index e4ea86fc584d..c43308b0a9a9 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -290,10 +290,6 @@ struct ftrace_likely_data {
 	(sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
 	 sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
 
-/* Compile time object size, -1 for unknown */
-#ifndef __compiletime_object_size
-# define __compiletime_object_size(obj) -1
-#endif
 #ifndef __compiletime_warning
 # define __compiletime_warning(message)
 #endif
diff --git a/include/linux/thread_info.h b/include/linux/thread_info.h
index 0999f6317978..ad0c4e041030 100644
--- a/include/linux/thread_info.h
+++ b/include/linux/thread_info.h
@@ -203,7 +203,7 @@ static inline void copy_overflow(int size, unsigned long count)
 static __always_inline __must_check bool
 check_copy_size(const void *addr, size_t bytes, bool is_source)
 {
-	int sz = __compiletime_object_size(addr);
+	int sz = __builtin_object_size(addr, 0);
 	if (unlikely(sz >= 0 && sz < bytes)) {
 		if (!__builtin_constant_p(bytes))
 			copy_overflow(sz, bytes);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-26-keescook%40chromium.org.
