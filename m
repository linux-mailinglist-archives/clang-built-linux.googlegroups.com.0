Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBB4ERCEQMGQE2DIX65A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 956F83F3E62
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:36 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id s1-20020a17090a948100b001795fab0f86sf9544943pjo.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618695; cv=pass;
        d=google.com; s=arc-20160816;
        b=p89ZGgWbJZhz0QNW1lEikEDTqKgE9KzrnN7HAWulsqchOrXpFLyA4lqxDUguyTyU8N
         NmquHgaapvRXm4ZcBlIiiS37Z56p0QSqDh/JAWINy2kibGhY2PpTcRzcP/3z9/u7Y4mk
         OFFAD+/12SaDjexi7ws84cfjPkf4CjwzLszb/NLEQk17d/Io6jhrE9i1AdhkBror46LG
         OmW6zKm+UGA2SJZ22iAh6BU7yhQpK3VBNuCRJc+xt6dvr2JCRTeyW+5L/gVCHu7qttPq
         NNsSdY69R4nnL21CSVFhAFShR73lmV/jJFhOCR1IqrRkyRHvCJCIdESZyZTAa3HbAXd5
         /6Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eL+uZlRY4x8fDljDMhCeOUhAzSoOEkIbq4GtmSm3rKk=;
        b=SsF2BSQmz6P8/7fDS8wH/QGfAQ1QV/TD+JtP9QgmHB/5JTAMlOr0HyABvRW97JYAxl
         +mynn2oShNSnTvFeAzdaUwnHZiJBU99OA7xqg3IdWf+I4/lViNwp1FNTTiigOZh+jLOR
         OFYL5d6/vCoIw95zT8fmqnhTgZP2v0xCpCLarZ+le/RsjVJmLlJun3AbIFxRVCio5l/w
         p55CGMxl5wwk8DoQvT6w/REuCDfBRQ6UDHDV1wO9RCfCGFKVcBf1VYm5850liL1/RxgP
         q7+SE6hH7xQB1IP7bEJIY8TxXuCCMuNmvJc7o5344v4d1mqxhiSljcFp7FYh1XQB7MDU
         UksQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WpSZT+yz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eL+uZlRY4x8fDljDMhCeOUhAzSoOEkIbq4GtmSm3rKk=;
        b=dOQEr6XNvDcDWz6Hxu+3twheFcEt5d6imv1mgIrefhp0Gya5Q8Wb3wnZzn+w0jWdpv
         l2qx5eT+jMzUfaQmA8UTVpHO8dsIrqpL7oWb1DIYRLAaZagG1LUwGVjJO/ezqCIfnVo/
         Au6USsCfsMmFz8rdq7Po+xluZLi5LDMkWxnoNeCx+bd674cMyWKymPopAlDcBOj8pL+v
         gcpOiZdOWsR12N8SREUwPN+2wQVm5SmSlKkGiiWsGT7FrHhbJJPdI9ED58noOLmU52mb
         8K95PGGMaWF9QYkyJi8TLVEIhZvo8mPHcwugQF73tiOYAzma1bnx335PIpMPsQX1SA7N
         BsYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eL+uZlRY4x8fDljDMhCeOUhAzSoOEkIbq4GtmSm3rKk=;
        b=VP2r8B8H5p8oS2M4YtlPM+X5tblIVvvAti8ZbGfCnZ3PSvtETeZpgPX0uhmdzEmr9S
         QncBJnRSutsG5WLalDm81LOJJ3PS+mYmRaEZxdYNLocRDcIE969RI/10QObs2gZKTeXl
         Y7Bhc/LOy8wCqWJGWg1LI73FkWGDMMu6icc1WYiCyWrGbsyvOszE7tp5i6tUJI60La2c
         wB3kmmGZnRD0oJLLtmL3Kbygt+FWNnyu07GqOR3Nm1p4396YNULKu80Wkw+bnSD3EaU9
         bDU+hME2z1gIfTYE4Lrd+7N9P3GELYLLwjYbOHW74RG88C+8Cw6tVk0kXBHNkOqMg7Nf
         AIxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DuswMc41zHjQEXdfUt59HBGaCBJaFfAd0+4Yq1fOZDMbpV/7z
	aHsZlqOrfrvWqbye6IQWp2U=
X-Google-Smtp-Source: ABdhPJz3pymgpHhetqREcE2KieMT0Tfxm2jcj1WGK3btuEQ4UNcAhj9/I1C4zqV5660+mcol2uh61A==
X-Received: by 2002:a17:90a:d3ca:: with SMTP id d10mr13665718pjw.35.1629618695364;
        Sun, 22 Aug 2021 00:51:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8e41:: with SMTP id d1ls1405252pfr.8.gmail; Sun, 22 Aug
 2021 00:51:34 -0700 (PDT)
X-Received: by 2002:a63:211c:: with SMTP id h28mr26707957pgh.83.1629618694836;
        Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618694; cv=none;
        d=google.com; s=arc-20160816;
        b=aghXdRcvksxIN0U8NuzKJv6APTM7RLzgCUM5eJW50RwRzqTLzXNykW3qLcTReYI7SX
         7im40yjK7CRIsqudXjDD3OeT1ILRAZBZ45GsviXLaypbbf1kTdEND7jd5hsmiyyyicfr
         OO+ARpN1eRUUkmnz5AIc3gA2Wpwh2v+56E+B3rAriBmBBn9BoY18J3Ng5W0JuGXtodHb
         IiNcjFbNDcjrNza7pDlo9fp9ca2cdn7GNIxNKyUExt15M4hP+d/8FmdTv/8Qqb8v7cUX
         dqWMOXcYKX18RozcMHKHyqjOA+gyMJHuVxdvYzXTHbbuCUIBttRTzTJOiS6rZ5+HkAmG
         DuFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BfB3Cmd48Lw3NLo2MjDQrUdYMYAq078Tr/lLK7PF2Ag=;
        b=eY7tC/AT1YeoXDThIKyrbBN1m1A7L8NBZ87ZQEkVG/UhLuS4EKyaq/aodnJeY+GKXK
         NciwCTHb91ZnwgVTwpBvcPKpgHP5JmOzzz9C6a4DhRT0UE/Nx5oKbVXmdcc9tUG6wPVZ
         XQ4xgnxNyNqrKRZkE6sM9tlQknoOPzcw+JnTGj3VFOvginDlnOqk1jJxL9CSL4IxYXcx
         F7KuHeGhsPPKVm4B3gFM7iogC8Qo7LE1IyRCSG1m/kvRhom6F4XQNDKb7sg+nknYB7cC
         iyuKBpYCzIMqwzkMwWi1oA4YO6JnSU8sy8zUPc2wMRjE6mWyDbmdsvWt7gUIJ+x4UJaD
         BNbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WpSZT+yz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id o2si1268475pjj.1.2021.08.22.00.51.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id mq3so9965635pjb.5
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
X-Received: by 2002:a17:90a:7642:: with SMTP id s2mr11394217pjl.128.1629618694601;
        Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z12sm1547902pfe.79.2021.08.22.00.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 13/25] compiler_types.h: Remove __compiletime_object_size()
Date: Sun, 22 Aug 2021 00:51:10 -0700
Message-Id: <20210822075122.864511-14-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2324; h=from:subject; bh=D5YSORUmsx9ZlfCs+tSqi/CZpajcAvBSa1fzHW5hC6U=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH3mQdShenoA8GqVoEcJNbXyXj34Z55m75eTMc1 mv6GEjiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9wAKCRCJcvTf3G3AJoJRD/ 9QSglgyxVbQqmTx2NOrbeHh77uk5RWPYLHFf6ns+jNsTJ+ow1pQ9dk0XDk/P0uM3m5Rfss9NqadxJF MVFP4US/uGJrooGWaMIChdWImnRSs3D0d82TBTGbb44K0ScN6BhLur7Tpu6VKI4VcQoScI70PTQvKi REZQIUMGvPorwBmUfzZljjfitzvUstplSx02JcC5zqnvSylycjSVT/EZfSFuu/R/VlB/bCNyyRSs/h 2Fqtv37PwfWx1Gvci73CUKFXE04IP/ggsjG2aStDEZr69i+1hf4+7lYzjQXj5ovlb1zDQtL+4M9Ji0 oJLyeaEaFcAl1KgeD1zDrelT64tWw4G0y3DT2/OEohi4kGdjob7w22sUajJa5QtUGzK3AkItO0ckAM nK9EKhMaRFi7TwMoNfsXbsP4PoJVHMSM1pfm7Bg+XElJLMtTya2bxdtFxvKfl10LgNk1zvTtKPJ2yg 0FamEjd/2aciwAmW3JokAc4IR39xnT/6Qvh8WSfTO/sfs51LIdSWpgJhxYM09emhc+AzM1hFvMv2Ta abwMm9kBEmmqGFWqeQUWSN2pHW8TDkhvL3k3Xb3uFkULx7K6wDgOlBhXK9f2W55rbrRoZydPycWLjp ZFW2Mo/eeLeNjXKTeXx/N2SecQUSclhBoQJA9K9S802S5wZnyhYFFUVaHfRg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WpSZT+yz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
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
Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-14-keescook%40chromium.org.
