Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUGG6KEAMGQECOABTOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 652E13EFABA
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:09 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id h186-20020a37b7c30000b02903b914d9e335sf1051750qkf.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266768; cv=pass;
        d=google.com; s=arc-20160816;
        b=AS2Go4TsB1YEwbhl4QZDWuX9vWHgAyUsrmbXg1ZeJ/u7CeydQxJe6m9uWRNzcbCVTr
         C4zK5eeDQtblGG1QVnUcZ0eW7fnQ+/IFBY3qV9hOQIWI6WNmMJSm8zPTzXnB0YEYl+Gh
         1+LgFTs2Wpd4Lm0t735q118SO37Sljkuga/SM1tYesiDrAdTXDF3Nw7/MByFUpHL5GU6
         loxPFjwfOKpv94TisT4/up7HR7iKxd7i/4u2S/HWEqNsaLoTs74zzRLJHAZ1OEPJpgtC
         EA224klkC5rPULWXhXSArJJiG0dr6XXhonffU0pJRKjuDjmVeHDa14XaILxy1AlDdGkT
         XTeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=75IAZvmAChqm2CVMZ2/xd5fulbSPfKppI7JlvqWC+Es=;
        b=S22qi2l+Y3lPyRHhsHia00W0JayNk65xqAHSc+wtfjgYtx3Ehj2My/8TkeIL2XWAQf
         wIokHwlzbrSjCK8zfAw8+cZfNUtAbaQkcaZtzxXQqf+tZKIqBNh3LxkFZvUdvQ4Wi6AZ
         rYGJRWZImaOPcT8vdlDK3QXHVBfyzhb7TBww5tQ0+6dgWVKS10jfwdaAHUrmXycte1CV
         oo5W419nP3W4sxC4RKC/HmUkblMVsWaZA8lefzS2nCkC604xV2tyF3SH2peKAXyUfzHy
         SZZLMGh2GPSPIi8EuyMpdQVcdFOex8JIpB9MG6IO8+GsK+/LHAL66UhwpsMkgUxi2OwG
         KR2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y4RaduW1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75IAZvmAChqm2CVMZ2/xd5fulbSPfKppI7JlvqWC+Es=;
        b=kLwRxk2ApVd3XeB19QgIpPU4GKAytxiKzXc9nKvH1OHN9RZdiKV22pUVPl5nV/zMjw
         pFX1XMv066w95THu46C8NUeoMuKEf4uOMB89l0pY82RdUkKzGyqsmbsJLwEQeZffPjnA
         UbUbaX5mXvomRu6GVMEikM5sBiy+pD7yaDNR++lPUSfiBQEq5cOgT8Pizd+y9+fuSqUL
         gph63kugybLHVP6D4Cnpgfpu+22v5R+8jnMW6t2PtFulUujzH7xnieLNdI2aLBjukcUM
         hFdikfAK3SGOHhfhaqb2OUw5tI7WjBe2gq+WdwHBX+atXhXcVFjmSQECXw8mKlTjF22r
         UOVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75IAZvmAChqm2CVMZ2/xd5fulbSPfKppI7JlvqWC+Es=;
        b=FGWGVIv17PP8RrAw/uz0vZHz3GuR6b4aLSgN3F0OWVnRocr+yEi5iCA/sSNi3zW3U7
         oGmJmWK7gv+ZKTuZ7eLsn9rpC1M0kQQAM6fM4hZvrfKi51SA8bZdpIHXNY+n55dZjM4u
         4jzYnbLn0n0xYDHgv04HUjqET9N6aY5Znu+7dcB6125n1qZe5Ears0mTNTsHGFfDeE9D
         rOGDRY1nwt1K59mp3EiqJvULsHZLz9naTig0Fks1rM6TmgsRQgFA9HojBF/bQkwQgdnm
         nGOX1DiuLa20b4hptSjXXKS4cXgKIoKD0YI5YNsC8UH3egQkv8d6VEiB8xyE+OfpEPig
         Egqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DTtJGz9UXsBwvZcHUEkTBzrs9yhaAnFfKvk1O81xyeogP/6hF
	yPQ6ueR51YSU5jjwiWwP9oc=
X-Google-Smtp-Source: ABdhPJwaFsUz551vpHHdHr7niHW54a2Kk06l4B/nMlqVSCt1FJrCxHqB7saWvZFtRgXmAz3SciOqJQ==
X-Received: by 2002:a0c:ff4b:: with SMTP id y11mr7380554qvt.50.1629266768596;
        Tue, 17 Aug 2021 23:06:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4118:: with SMTP id kc24ls320515qvb.11.gmail; Tue,
 17 Aug 2021 23:06:08 -0700 (PDT)
X-Received: by 2002:a0c:ff48:: with SMTP id y8mr7461348qvt.29.1629266768231;
        Tue, 17 Aug 2021 23:06:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266768; cv=none;
        d=google.com; s=arc-20160816;
        b=X+Q89qitYL5oSd9loMdbqA7VyiyUVeKHvCHqu/tb8L3hvMMQ0q3duXeveZf94ui8cu
         oQcGRml0NGihrw4TUg0VVrXfY2seJgq/QHxBqNrtt3QuX5nKTAiOAAugs8KnagbqLMYd
         8kL6SmK4Ls63ah5DLsKLEm/9Vz/dBwAEVq2zAXo7MoU9YCtVfMcKEthzPtC9rQQdoUCW
         pUFN3SKiGVPtifH0lgi+CY3DHARCXJu9OC96V8aE6wWngaK5EWvpIoEvSBC+0uOSGlPN
         qa8wVZVtG5LaP2tn2KUQz1dW5X+konEch5VEeh7dqIdRlUDggf0Whijx2hcAJltwGD0K
         2xgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WJrpMRxjlck/EUZE2DWpbaWpfbq9vwWWxHEHR5bnD5E=;
        b=FpIm6Ikm+cUnOk12tvkHkjO515KN/0GZUnboYdgrBS4NpfV6XbNt2ZSdTvALxTkaiU
         B9s1J6SgpbQy+w+UNRMOQcpBkT9UfPQJM7WaXmj2Iso6hELCMVaZ0bBU+lOH1m5TbJng
         /nOhBoSgQy3qR83JBKbix6/I36ClEvrGAX7Wx2/P5NAD058Sr35QmjW0wSJyqjT1PYu0
         7KJKo9wkhkj1d1De967SoAH/tt0NPDJ6G5kwPpxJN5tu8+/9+SZOANulXGJ4ZEKs+kk9
         ehrsVoeJul8ahpWzKQb/MZ0Xtia1I6Sw98FzdcL0dfYv5qr+MVkjyBnA7UMgBYvz0tdv
         QZAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y4RaduW1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id n2si305597qkg.5.2021.08.17.23.06.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id y23so1140227pgi.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:08 -0700 (PDT)
X-Received: by 2002:a62:dbc3:0:b029:3e0:ec4a:6e60 with SMTP id f186-20020a62dbc30000b02903e0ec4a6e60mr7438793pfg.25.1629266767474;
        Tue, 17 Aug 2021 23:06:07 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s5sm5498942pgp.81.2021.08.17.23.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 62/63] fortify: Detect struct member overflows in memset() at compile-time
Date: Tue, 17 Aug 2021 23:05:32 -0700
Message-Id: <20210818060533.3569517-63-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3657; h=from:subject; bh=x4SNp17MkJsMDii5dKL06SU0zDLItyjvjIE8yvAGOLw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMsuEVllcthHvVoZOOtiNzdZSQL+MVxm5lZYC08 cYuVeeiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjLAAKCRCJcvTf3G3AJhFJD/ 0YywcHnMj1c/NexxJTDTdAYqmtmTUD8x82Ns/wjrQAyODC3hv/6fd7/lXy7KLnBf3O7mSQRPo1siWq mi4sD6BTm3hIo3GuFOJ8CTfGgnxxwdN6j/TkfuxlpJSHWlG8CdQJaYNCYJgI7QT0k7mcvIcU0Yiu5/ YaVOOC0zQ85PA//3PbzguuPv50kBbxQ5bQSD5XS5ptljehOSJcCJ66K/cFUtnJoZrfF5m7naOzclM+ YSn8wlMr9aQqL6DEc6etgSVI2n22I9gcsWaObJAPYCut15PH0LnKu3TXUtF2oQy91xDTCZ0kCAuzqt 5poO59eUPNtjb6apuyTyI2sng4UXAVOqnFeKce+zQIoGAdIb5GjE13ffC5AAon3CmAbxRE5FUufUrx zUIYqjgohnwHn6YDtth4aIZB/W2kLG2W2q4TWuZjMxEaw0SVrnd4P2jJSHU8B8d1a6PkAs8epAq0gc D69QvVpSd/j5KuzMZUdDpOKxgIKUXFGXliJiDsu+4vuCdioBLapgoOTvVDBi1LirQl6lP45HoxFQ0b S64cenON/jFuSH9ZmumaJj1QScmPVkoNRRs09YB5f0juMR7C0bopH+EEmaqk++upwBm1nP/e/Dtxew r7vE625A/r6FGg4xIb9flyd3LdIf3HsRkH/Bt6+5XCnDvRxE/u5ev7V+yD8w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Y4RaduW1;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532
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

As done for memcpy(), also update memset() to use the same tightened
compile-time bounds checking under CONFIG_FORTIFY_SOURCE.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/fortify-string.h                | 54 ++++++++++++++++---
 .../write_overflow_field-memset.c             |  5 ++
 2 files changed, 51 insertions(+), 8 deletions(-)
 create mode 100644 lib/test_fortify/write_overflow_field-memset.c

diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index 0120d463ba33..7de4673dfe2c 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -198,17 +198,56 @@ __FORTIFY_INLINE char *strncat(char *p, const char *q, __kernel_size_t count)
 	return p;
 }
 
-__FORTIFY_INLINE void *memset(void *p, int c, __kernel_size_t size)
+__FORTIFY_INLINE void fortify_memset_chk(__kernel_size_t size,
+					 const size_t p_size,
+					 const size_t p_size_field)
 {
-	size_t p_size = __builtin_object_size(p, 0);
+	if (__builtin_constant_p(size)) {
+		/*
+		 * Length argument is a constant expression, so we
+		 * can perform compile-time bounds checking where
+		 * buffer sizes are known.
+		 */
 
-	if (__builtin_constant_p(size) && p_size < size)
-		__write_overflow();
-	if (p_size < size)
-		fortify_panic(__func__);
-	return __underlying_memset(p, c, size);
+		/* Error when size is larger than enclosing struct. */
+		if (p_size > p_size_field && p_size < size)
+			__write_overflow();
+
+		/* Warn when write size is larger than dest field. */
+		if (p_size_field < size)
+			__write_overflow_field(p_size_field, size);
+	}
+	/*
+	 * At this point, length argument may not be a constant expression,
+	 * so run-time bounds checking can be done where buffer sizes are
+	 * known. (This is not an "else" because the above checks may only
+	 * be compile-time warnings, and we want to still warn for run-time
+	 * overflows.)
+	 */
+
+	/*
+	 * Always stop accesses beyond the struct that contains the
+	 * field, when the buffer's remaining size is known.
+	 * (The -1 test is to optimize away checks where the buffer
+	 * lengths are unknown.)
+	 */
+	if (p_size != (size_t)(-1) && p_size < size)
+		fortify_panic("memset");
 }
 
+#define __fortify_memset_chk(p, c, size, p_size, p_size_field) ({	\
+	size_t __fortify_size = (size_t)(size);				\
+	fortify_memset_chk(__fortify_size, p_size, p_size_field),	\
+	__underlying_memset(p, c, __fortify_size);			\
+})
+
+/*
+ * __builtin_object_size() must be captured here to avoid evaluating argument
+ * side-effects further into the macro layers.
+ */
+#define memset(p, c, s) __fortify_memset_chk(p, c, s,			\
+		__builtin_object_size(p, 0), __builtin_object_size(p, 1))
+
 /*
  * To make sure the compiler can enforce protection against buffer overflows,
  * memcpy(), memmove(), and memset() must not be used beyond individual
@@ -399,7 +438,6 @@ __FORTIFY_INLINE char *strcpy(char *p, const char *q)
 /* Don't use these outside the FORITFY_SOURCE implementation */
 #undef __underlying_memchr
 #undef __underlying_memcmp
-#undef __underlying_memset
 #undef __underlying_strcat
 #undef __underlying_strcpy
 #undef __underlying_strlen
diff --git a/lib/test_fortify/write_overflow_field-memset.c b/lib/test_fortify/write_overflow_field-memset.c
new file mode 100644
index 000000000000..2331da26909e
--- /dev/null
+++ b/lib/test_fortify/write_overflow_field-memset.c
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#define TEST	\
+	memset(instance.buf, 0x42, sizeof(instance.buf) + 1)
+
+#include "test_fortify.h"
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-63-keescook%40chromium.org.
