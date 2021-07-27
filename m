Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRXPQGEAMGQELM2MWSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4073D811A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:55 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id t15-20020a17090ad14fb0290176eb5a6cf3sf692628pjw.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420614; cv=pass;
        d=google.com; s=arc-20160816;
        b=hAKBvsR7hC9fKR00SjVh+7WAwznMESVIHSAV8IubOXqR33bXa0p1aEY+Lbc773g9cl
         9E+S/OWHi3ADJAObIyc12LvCSiNeWNZpWVIUuaxd0J6p67W7grzIO/W/j/BiPH3cTxFv
         Wnj2Ns+OmooNiCyhCZXZBzhRcvjT29G5OZnX5Qlt9tNsFjOBS+ejbtm31YdG4qNhbXVN
         lh31AOIH0QiYuOSz2m/DuL5n1CB5DK46gI2UUtIFSHr9zCRk0neCdkpiItrjB9w+ru9f
         hl8oVeVisWzHZSGov0PkxxRVqGNCwFaZSyQZVlf6X1llzckXNsndio4XoTUvNbuXXD9p
         YghA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dFryhFR9luFkkkJ/Uzb8Ck8HDJhYfkomh0l+3D8aunQ=;
        b=su4m8IzKH31/R/aVdjC1FVp2zYAKpRD29fYdDlAhnoHa1MtY7FE/4XnAshkvzBt/cR
         NpetOWFobOyCkhbTs/glVt2yBYlnrApsdwlC0GQV3MR2h0l8JqK1QR2/q/EDLUeYfyfe
         Aa6+hdczYdhN3oB9tVkIQXtals5FHG6gfz/4VxDv9dd0jBr7y0uucPzlNFQsaU/hemuV
         vEXtjbNMLQu+hau1v2VwIxPuCDXqWoiPjnXmvQ15SKOAg4j2+qlYIbh+A7AiYZO0+4e6
         Md0Rwp0tNJYOXkbaHQWp3hjWrtNx8/vDMELjDlHqtQETbLbJ/KIVmZVFAc/eFDCMw3jb
         gKmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="m4YGoh/P";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dFryhFR9luFkkkJ/Uzb8Ck8HDJhYfkomh0l+3D8aunQ=;
        b=DkJIzx8b+CMgk9/77wa7GMWgywyK8DnDDIWj7+U2bzd4tB7dWxIqLSMACiHCMoJ8qh
         /Cq7A25qDQNdCQqNjrybmhkhWWaoHKwPx2lABw1ry/78n2syDiiiUjEKszH/66tJPeRV
         OlBk+YsAVZu5Dn5ReAIfsqmov2hUVYB3b1SPDZOIESbzO5s0hnd6av0YdhzZQApwh6qM
         ySjM5N/n/JlKTl/B+n1RabJGZ13uXYPjn793S0SLoLAjwsE8ldeweYhkcFyJUQ1V/sdM
         n761CODsLei+w4QSOZB4r0r9tiUD0xJqW5RAuGWS39nvjHMT/sFi8AFzhpZNK+5/IbHm
         N8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dFryhFR9luFkkkJ/Uzb8Ck8HDJhYfkomh0l+3D8aunQ=;
        b=SRsoLE56bJzVhftmJtA9Zuca1nRV0cCTzKA/9Y0Oyb9WjlccqJWOHAqgrl4Vr9Og+U
         4azQtmooqUz4V/ZTIUWwZQDvF1yxKJ61DwDQERN8Mv1OJRYW9rRd22Y2F4S6o8pv3k5O
         JiEJu3zREtm1818B2SmN8VBNlni1SpsYUDdvHjqhd9Jm7k6sJH+yB4Oj6uTU8m0Rba6r
         CXWSc3rEb4WGGPMJEeopnCoUviJrHykgTXkzWMAnD49z8zB+OlIx7BpocHbYtjjw+Z2p
         AQ8ZTwGD7snO5OmzOXRRk0PrbQzxYHp2dxjX1aHYT/Ahi/MxpXqqFmkOhTQwNy02UUkd
         mg7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530U4IYiiSk0aqIVJb0hggUKpGv/xQ3NFSx9KQW++YxkhIK1FIwl
	fqgcP4N/EwBMoW/wzknFTWI=
X-Google-Smtp-Source: ABdhPJyHR4GJr9Af31L6MFcsIDG2Q7Tj0GEd7I1L/5NZQpkuaUFOfqN96LGWp8sSIM0yjzS3tbVkyw==
X-Received: by 2002:a17:902:8bc3:b029:124:919f:6213 with SMTP id r3-20020a1709028bc3b0290124919f6213mr20777045plo.51.1627420614246;
        Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a38c:: with SMTP id x12ls4645pla.6.gmail; Tue, 27
 Jul 2021 14:16:53 -0700 (PDT)
X-Received: by 2002:a17:903:2289:b029:12c:5642:c4df with SMTP id b9-20020a1709032289b029012c5642c4dfmr1458736plh.23.1627420613662;
        Tue, 27 Jul 2021 14:16:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420613; cv=none;
        d=google.com; s=arc-20160816;
        b=lYJVs1kHu+G6+ARYzKdghqAvNwsgYeE8ov0rrHu21AeONM3soyVfv8M3w8lpkPC+hk
         0b61B57qy+qLmA2SLVCTb1dJ7rbf3YXj+ahm8yIVlTVaXWNl7YnpGF9lqogi+xlssIyX
         NbMlzn5nIEq1kSScXtszSEfeUt0YW/h6y3GfunBCndlD7vr2Fmwh7SZj2UHd0UVN+59h
         6B5w1oUk9ZwaWH9tnGn2CPppQc/PJtcPrlkDTd54v9GhaBQSAfRKMwSoR60+K+BxJ8QA
         D5PeavpmOKCM0UAxnwTsh6WT4eWiGQLZJRRVPXJlDwvv82ZkEhcUwSHAk2XylzE/nZnq
         NkpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=25sRwmW5CNRat3e6IvuHGLhvZkVof8m0C579IfALAdI=;
        b=uDCd24ZwpxUZG95khOFBZWJrXheADZ+DzHJTBswUKNfhQEKQQQe0rMWiZS5M73WipY
         vhbMXDmjdBAhv+rzbGlwYt7Ci2UypmZtqBwqRKNycbV/WAiGqGvQTS7VqkQ3oC9lx6tH
         2756xVmVxEyfRrN9TrbvuIKKCn8ELcYyFMCm4HqciwS9FugNWM59lfAq4o5/6ABQrDhU
         RF1UR8EuCs+gxlsfb/fMDY7PMMCPJARTliI2QpnkJKw4V8DdSXUk2HSgW6ghWgVRJIda
         +6OxG3W+KzB6rmWzfZmkU0beGJwEp+xN52OY7UKDJ5+ssTF03K6YmZOz6Hk+frcpUudL
         sozw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="m4YGoh/P";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id v7si279937pfu.0.2021.07.27.14.16.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id d1so79111pll.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:53 -0700 (PDT)
X-Received: by 2002:a65:6118:: with SMTP id z24mr25262434pgu.325.1627420613440;
        Tue, 27 Jul 2021 14:16:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d6sm4820202pgq.88.2021.07.27.14.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 35/64] fortify: Detect struct member overflows in memmove() at compile-time
Date: Tue, 27 Jul 2021 13:58:26 -0700
Message-Id: <20210727205855.411487-36-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3921; h=from:subject; bh=JPEM6DOHRS2oe2a1K9Mco8cbthiXTkdHcDm8bzIdvDM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOIEjRLBnznqeqc0ATaynhwVRI6QziDo5Tbtcjp u3qp3HeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziAAKCRCJcvTf3G3AJrXKD/ 94GyBKZP5zi92YuEpTiW8hf7nEaF+eTLr5/G5tuNyw/8MMBbAPfHaLhXNhTanfvzpp8TPnNigqBzZN m9iZqfI8yZpLaxppQ9Oue/gSMjkVQ8Z6PwaJgYlsEoo9aYJFd6VLIBMq+5hMmYof9dHNVShSVBOjhQ yqOcoEc/vuV6Gn5m8fVUDpSXzFzI0W83yF6EaqJA4jnkvtCRFWrRx24aruLDQ3COq+F96/K+19poxN 9tXuCQtyWluR2GeGK3aqbCsdd9JsJ6csueQv36meVfK6nUUn4SFf1Gckjs7/NYsRHY0HfKFPEEApNR SdEADkgOZDVu2ihgyc9U/vYjlu+NmXrU+GI19763ZRZILtYs4UiDc3hHccbLOaGc7q4aGj095zy2M5 LT2zvzlHJs1L5Nz9jeCVcNhAY1cRNCMGhEqTLl22Bu8v1n/vrjbB4RFcjdhpNEBdErfv7mIzJ1Vr6T tgaFmScPBEF5DbvMEmTlR+21ZFYURngdg0XOO3SecQMHrTygR5y+cK0fGJFWhMT9JbMn8c9T7xRRuQ /Bzsd+0RDz2WQoOImzblcsio31vDsh/sOB8v+lpGof3ke96PD98VcfZfUSfI4QCK+lMSWiMHdsCrpu zqGA8h8aFNOzCl5HT2jwHjibZd3aIc3rEWNjtQZbIIjLIJihjZjelQ3pbFKQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="m4YGoh/P";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632
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

As done for memcpy(), also update memmove() to use the same tightened
compile-time checks under CONFIG_FORTIFY_SOURCE.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/misc.c               |  3 ++-
 arch/x86/lib/memcpy_32.c                      |  1 +
 include/linux/fortify-string.h                | 21 ++++---------------
 .../read_overflow2_field-memmove.c            |  5 +++++
 .../write_overflow_field-memmove.c            |  5 +++++
 5 files changed, 17 insertions(+), 18 deletions(-)
 create mode 100644 lib/test_fortify/read_overflow2_field-memmove.c
 create mode 100644 lib/test_fortify/write_overflow_field-memmove.c

diff --git a/arch/x86/boot/compressed/misc.c b/arch/x86/boot/compressed/misc.c
index 743f13ea25c1..83ff4354970e 100644
--- a/arch/x86/boot/compressed/misc.c
+++ b/arch/x86/boot/compressed/misc.c
@@ -34,10 +34,11 @@
  * try to define their own functions if these are not defined as macros.
  */
 #define memzero(s, n)	memset((s), 0, (n))
+#ifndef memmove
 #define memmove		memmove
-
 /* Functions used by the included decompressor code below. */
 void *memmove(void *dest, const void *src, size_t n);
+#endif
 
 /*
  * This is set up by the setup-routine at boot-time
diff --git a/arch/x86/lib/memcpy_32.c b/arch/x86/lib/memcpy_32.c
index e565d1c9019e..f19b7fd07f04 100644
--- a/arch/x86/lib/memcpy_32.c
+++ b/arch/x86/lib/memcpy_32.c
@@ -4,6 +4,7 @@
 
 #undef memcpy
 #undef memset
+#undef memmove
 
 __visible void *memcpy(void *to, const void *from, size_t n)
 {
diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index 5e79e626172b..2ffa5224aaac 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -284,22 +284,10 @@ __FORTIFY_INLINE void fortify_memcpy_chk(__kernel_size_t size,
 		__builtin_object_size(p, 0), __builtin_object_size(q, 0), \
 		__builtin_object_size(p, 1), __builtin_object_size(q, 1), \
 		memcpy)
-
-__FORTIFY_INLINE void *memmove(void *p, const void *q, __kernel_size_t size)
-{
-	size_t p_size = __builtin_object_size(p, 0);
-	size_t q_size = __builtin_object_size(q, 0);
-
-	if (__builtin_constant_p(size)) {
-		if (p_size < size)
-			__write_overflow();
-		if (q_size < size)
-			__read_overflow2();
-	}
-	if (p_size < size || q_size < size)
-		fortify_panic(__func__);
-	return __underlying_memmove(p, q, size);
-}
+#define memmove(p, q, s)  __fortify_memcpy_chk(p, q, s,			\
+		__builtin_object_size(p, 0), __builtin_object_size(q, 0), \
+		__builtin_object_size(p, 1), __builtin_object_size(q, 1), \
+		memmove)
 
 extern void *__real_memscan(void *, int, __kernel_size_t) __RENAME(memscan);
 __FORTIFY_INLINE void *memscan(void *p, int c, __kernel_size_t size)
@@ -385,7 +373,6 @@ __FORTIFY_INLINE char *strcpy(char *p, const char *q)
 /* Don't use these outside the FORITFY_SOURCE implementation */
 #undef __underlying_memchr
 #undef __underlying_memcmp
-#undef __underlying_memmove
 #undef __underlying_memset
 #undef __underlying_strcat
 #undef __underlying_strcpy
diff --git a/lib/test_fortify/read_overflow2_field-memmove.c b/lib/test_fortify/read_overflow2_field-memmove.c
new file mode 100644
index 000000000000..6cc2724c8f62
--- /dev/null
+++ b/lib/test_fortify/read_overflow2_field-memmove.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memmove(large, instance.buf, sizeof(instance.buf) + 1)
+
+#include "test_fortify.h"
diff --git a/lib/test_fortify/write_overflow_field-memmove.c b/lib/test_fortify/write_overflow_field-memmove.c
new file mode 100644
index 000000000000..377fcf9bb2fd
--- /dev/null
+++ b/lib/test_fortify/write_overflow_field-memmove.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memmove(instance.buf, large, sizeof(instance.buf) + 1)
+
+#include "test_fortify.h"
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-36-keescook%40chromium.org.
