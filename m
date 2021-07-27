Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB47YQGEAMGQE752OXUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F503D81DB
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:36:52 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id j16-20020a05683015d0b02904d6c4f8a8a3sf5767633otr.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:36:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627421811; cv=pass;
        d=google.com; s=arc-20160816;
        b=YIJW8AQSKs8txzqzeXX9u2Yi6LaUWXPrkkB0ewkEGnLtmanYlaZEkZpZ2Iehh3WpEx
         sZRKoiQYBgOc0SkCB8MSfEY5DcuQ8VSbhj5B9am/O/jbSCyG2IpmMS5DUaKggUoKZNuZ
         +qXyRqQ0GPJmH39TmzoGWgm0pKN8Q7nP8bPZgTTRNBhJ3B7l7Pb0lUqnwxPZZqRBLDYq
         TYUB9PgfTX1wPivyttkpc2srPIr0eqrv+X9K6uU8UZ6iW9kglOA9lyqwhc0Ag0AdS+UG
         Bmyas9Sj6hxfwBfYn033YAPUdUXLKgwT5UJt5xT0QXUZpjdsXuUnA4UgZU2agOsdcDko
         j5rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KVcTTvvPe8poCzqzIjyv7+FNiSRwUOP4/JABGFtTenU=;
        b=1E9EuB6817BHtWtgiQJmLmTh+AuYexwiMm6swy1o1lsUqSRM/6lhP9usg/TGIZ6RU4
         WTje39O2ddYQn8Ci51K8rJ/sr65F/aW2a4NSXuGviuVoPgu8bC27tKTRgvjI39crQKYm
         h1xuKvBJ6MacTziK8FV9+yo8ZufSjsKAtGYdPihyOAT/nSqX+5ScZ908m4d6Zd2rgSsJ
         g5mJg0dztCJoqf5DKl5kAQEYWwwT08lw6sCaOYjYIBOy2aUEUyHyExyfDoGLA5aK56qi
         u+N/iJCAJ/nEJ4d5K29VdBB7jJSNFiFWr+tWPPXOuLsmLCyBqENAyogt36xHGTbwr/Cm
         EMqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jixat3RP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KVcTTvvPe8poCzqzIjyv7+FNiSRwUOP4/JABGFtTenU=;
        b=Mn5V7ZOahUdAcxqJXzHOAnmuOJub0f86jlAkxQ20YVN8NsBUvpg6aRzy1wbO0vfRyk
         CAjGr+VKs5lmHaZbcWlm6RnSH9ZgzWhRdwZ80v8MaDXyFvZnhizL9Bv0n7QqcV7b4RBA
         5rTV0xOv4TILb2YGNRteO1X1I14AQUR0tWYxatEHPY5Pyg98nxpJH/7TRNFQ38WvtggV
         HD3fpgga6wpfNMUTz/dz3dZA7riLMZwLSXkoCqt57MbJPMSBOjynB9Kmry3zxp71JJnn
         ObiC+szz+9v6MJAyG0GwGSohSOcW+rxfcdkJrnORekduad0bttcMiTyiEnBCnpS/jxLJ
         R+ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KVcTTvvPe8poCzqzIjyv7+FNiSRwUOP4/JABGFtTenU=;
        b=Yot6WkGfoAz6gZNuSle8VdXFEps3kETC0tIkO+ix5v6dAC7PHR2geOaYtCjsQoNeFf
         F0AURqMD1etc4GFq+LxICs8MgdZzMXd67Yu+RgFNKn9IlhSTuUW1CbLHZM4Npzf4ABWK
         xB2/HeaTvBW2ayKpb5xcRGvSiPpRU+0YZtKbMLSzpWIXg3C/9R9Mj/aijACXyfWanC/j
         DhblKG5iwqgyupL50/R1dGxGhMfWkUqD+yD/NjCLphOQhL/mJXbkGEyJ0BFkzwt2sACM
         W0SmXG8/9GvvGWM1X5KLmgSkBlfdenmpgt7tqUZvwbOM8WGaL2X+kCmFKH6OiLr/tEtz
         2dfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324jC3c8oN/L8n7CXYHhhanDJpHVD99E59OAFdInuao9/3hBbKB
	ZIr0kHkv4UL0CAo1IsRvpz0=
X-Google-Smtp-Source: ABdhPJyvTVJ43rmYETzBoplA+aeLc2dyKpjnGEL+f4H+DSVc7N/WXc3Ns2xhxP5uIAZbLOvS6ldU3g==
X-Received: by 2002:a4a:8802:: with SMTP id d2mr14910301ooi.28.1627421811764;
        Tue, 27 Jul 2021 14:36:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:b84:: with SMTP id a4ls37756otv.9.gmail; Tue, 27
 Jul 2021 14:36:51 -0700 (PDT)
X-Received: by 2002:a9d:63d3:: with SMTP id e19mr5603793otl.147.1627421811445;
        Tue, 27 Jul 2021 14:36:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627421811; cv=none;
        d=google.com; s=arc-20160816;
        b=GIj11J9mFi5ko9PakxvLZVQ41JAd+KEXXqetDxaNVL+tASCuvy+0AGFAfS5tGn6i5q
         BC9dAdhoSw3TUJuT14/NXlXAqZ9GuEwhvzm9ju/Eb60sGhDwci3nF6+37BHtLtW9VyKP
         ih/SSJXfjtXdON7mBe0gvGiyYzL+MF7cEDvVlOaqUKJ6naqjpGgH7nK418AxuRocVISO
         UqW8wQK17R7M/HOWoYMMhyuzXrpXggIlbrN1VwTjXcixhHmSUsjFqcx9TUDrX+9cgVUE
         m3FZWc6vmlhNdMRFhd4fWJ14/ZW3vaiuneNZbUU2o1mZIDkESNqWvIMnQtdk6plXLJ57
         oW8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Gc78Dn8NNh7IeWRGDgsdS+K6425aXZKh7I0yDMS23WM=;
        b=meR4NFtuqx6gcwinwW1aaZ5z1Tj34Zo/nZFfKEzC5+7vMYJfQtKvT5zaTkHf1z4R3D
         CYFMC2dWugKW19XEvhZn6IRGcS8es0BjxMUoUajV0A+8JMjnLjE092TH7d4CtuuU6j0H
         XS9G2GJ29lWp5bN1/Mva26GhSLh0/G+0CyKB9doFiGyjAyO8YSrqhhTD3WluIyMkLsqG
         HcK2nmqpr11xYn2hsn6m37BK4sG5u77KGfDM0q59BJiIhHXTr+enjFTKOhx+E3JkHGI1
         jDu9rZfnSgZl3uWURSlYV81mAzjaYjRB5L7iOZo/ESGJJrGGGZIdbagm0iZlBh/63bzr
         Y7Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jixat3RP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id d15si311711oiw.0.2021.07.27.14.36.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:36:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id a4-20020a17090aa504b0290176a0d2b67aso6803241pjq.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:36:51 -0700 (PDT)
X-Received: by 2002:a63:4c53:: with SMTP id m19mr707522pgl.226.1627421810804;
        Tue, 27 Jul 2021 14:36:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k1sm5323404pga.70.2021.07.27.14.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:36:50 -0700 (PDT)
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
Subject: [PATCH 59/64] fortify: Detect struct member overflows in memset() at compile-time
Date: Tue, 27 Jul 2021 13:58:50 -0700
Message-Id: <20210727205855.411487-60-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3639; h=from:subject; bh=8zP6zQoAqqqGG8HMfjFP4w1KGnbp2hqGXaP0Hbd76y4=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHON3fO1CHh8uvdaQO6AN9FBZe6nYDGm5e9VLXU1 qyRUNQmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjQAKCRCJcvTf3G3AJqP1EA CVSH0wpqbxZ3IE5MoFsr86U7Yah0Hg+0c1Z0WseIk4zQvGBt5+jFc3XcFlXK0ePD9t1SEiUdtsmdTk f1ieawudX3fOXtTF+cENRebLnsBwHqJvcXhqWYybCiJZ5svrL/RhkKPjsZTl6p5Z09OONrfhkbCqOY ay2thxGsYWVYDMmGGQNm6DiY+eqdfIMpHIvddl9XbfH5zi6U1bthLezg2Y4qm0wOu/5ef45dfAvYyF oCnwD8HMnm/UEESuw5A1lfsDFrsjRjZvhke7e0iXTG1/CdsxQCbJdTGbmj/FbSwwxOIKvnAolZyJ1N Ytjm2RsjqaNYCBv3huLAScFJY0tonJLIjHFH/qNLF8HruT9cRTzhO1gRYqgMQ+klJaTJpljcvscTr/ V2vtj25ws/lTocXKXlKMHBDJvSYFfmuK5cOpt0DBPuNPdLyfE/QNCMFYDuE3D84/ghfuxMdMhh5IAD jcvjTg10ak7Kw9gd5dxLgqM3Jh3xlYuwUJ3NGRv3QnXsSMvCWQ4AA0SOp+ObPI+gAm9AdLedDedwyU jEhSXCZOIlnkATKds9+upOvmJWe7tDk7TJC9vK3pRhO7XoQV9FTH569mha1nU31WBCq88G6VlP5pfR MVMjAFcoVy2UbuarVe6jUsybzWsznx5I5wLnLraRpEfhYsvyhOtL0DVWQmVQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jixat3RP;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
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
index 2ffa5224aaac..718325331021 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -175,17 +175,56 @@ __FORTIFY_INLINE char *strncat(char *p, const char *q, __kernel_size_t count)
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
+			__write_overflow_field();
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
@@ -373,7 +412,6 @@ __FORTIFY_INLINE char *strcpy(char *p, const char *q)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-60-keescook%40chromium.org.
