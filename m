Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB64A5WDQMGQEPYVF7PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 454453D42CA
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 00:19:41 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id p7-20020a17090a6807b0290175eac3b1c8sf4401923pjj.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 15:19:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627078780; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTaKPXqv0v8p8aYRXSV0ZWJ+k31okwvPjWxR/AM8RySu4ZBaYsP8lcKeOCgyKA6mPl
         QXnJprPzHKFodx0y/J5uzo9Wo08WuwK771P4zlXq7S4DP4vkXq74nJiRZOLMtKsCamUw
         t0gO8ciotDKQbCc7x98FimcSfkf8UO3YjyKvZSZuNxiDblit1c7uJcllg5tYH4jc3XF6
         qYx7SFggWfJZPYSKn81mxjITU5xynXsJyv/6z1WTRmSFlpiNJOFATsRhVfcDyq+ICJXw
         aX5UzNMUbaDTGwOY2uxRM3SlQ8HKTQDyEmv+d+VNWe00Q7UD3dpkGHW7FMqmEPdquJft
         8xxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FmWvNRZ68p2v/TFJTiweQ94eI0HN6217ic/il84mUMw=;
        b=t7T9GJLeWW6spLYY1JViOCTm4bFhJSIedDPtnJcPB+E7ZTsrt+C02pCivPL+fptRqS
         3qHMFY1u0EIuqm4yVKxqaluYBJMsUTivm+2uRL0YNo9vdyR4EEWcfDQSPfN9VFCPBzbg
         OkXAFeD+Y8WraGmw7/eu2sZOE+FMPJVoz01Bdv0kxdGHtq6iDsgjh017LRiKXVX8Sezc
         dBEJo1xEqBMxZi3EDsgfiA0twl6U9T5vcb78huLjmV986bWSw0/B37FCtbcymmkEhzuu
         GDsmurhiayzvTNKWXMDWoE2rdIV5ePyulPvbGk6hDtKGqPsVXuSjEUw8o4dDMis7PKkw
         7YCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MdmgAbLi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FmWvNRZ68p2v/TFJTiweQ94eI0HN6217ic/il84mUMw=;
        b=GX6WfcCFvinkucMwPCZDIeHJmFKq0yqi2ySHe7cXTM1lfYFcTlroKsd9p93mfbDJpb
         cDhPqMdFgGNWQUNoaQpo4nLabfYBEA6KGPV6J2mSmkvhiXyLlXs8yqE9Dog0fY5QPmpM
         dnngBOJEpRxUEAyf4IPh5QN+aebksDwdHJYt4Dw4aunDoZCs7XirSg0JlmAYBeuxC1J+
         skRYTTx9G3xdIzIS94I+wmDuxE4UIuGwkReq/eYSAzb5wFk0rnB8Mho3GUFWvMhB/wK3
         H9VIoypTIVZfKHdGhj8QghHC48T2nXA3Ad+oH7TVZ0CBKs5Gm+eWvq/IZGxhhNLmGjy3
         Y7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FmWvNRZ68p2v/TFJTiweQ94eI0HN6217ic/il84mUMw=;
        b=pSTRjLJ/LGtipr9/m8ksLF5WKyiXyJ4aGb4uZmXMhAwRQK4/NOsgcbqB5UOl8THLxj
         HNRdnKnTc7jnYUoAwCN7G2W6aBkGoFLxUPIJ8ul/v1qiCLSU3u3SXVTGqwDyygIGa9JU
         /pvJZXNnssr9bboLLuB4x1trPWdekfE1grf3QVy+GkwPu6gQbYIj/upzfAhtjvSblyF2
         I2BDCGlXq7hHhZjWEfKb2crxrrC49brwVsf3sNqmBeamJBnHCSZ2qdB/9q4dzj8yqXmP
         zh/4ye/048pjkWuSQ3I/80D4WB4ic/gn+KBR66D9quDlpfoZ3WS+xFrhpcxkqgcJkU6O
         S1fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oWR+khkE/Z52kQil2UGQLes1/VeyZ0tZMDmwKzjlNBF0PMlXu
	OopMZ4Ex8K0l/r10/bBNb9k=
X-Google-Smtp-Source: ABdhPJyfOwsJ3+S5IuSoTGp/OiBTEVyWiWbpc/rWhE1MlCrAVIhJTm8uIH9Okziq6z6zzuiSdmrjvg==
X-Received: by 2002:a17:90a:9484:: with SMTP id s4mr15901700pjo.231.1627078779946;
        Fri, 23 Jul 2021 15:19:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:564d:: with SMTP id g13ls5396985pgm.1.gmail; Fri, 23 Jul
 2021 15:19:39 -0700 (PDT)
X-Received: by 2002:a63:fc06:: with SMTP id j6mr6496530pgi.193.1627078779424;
        Fri, 23 Jul 2021 15:19:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627078779; cv=none;
        d=google.com; s=arc-20160816;
        b=Ej1veW53FDT7J/eiCzH3WHSyfOBz3LEF+v2hO9Z0OatM2I3cLg4q1NT3hu0KU4nK3R
         MpNWh4vJ+FYW0DL2KSZ4L0oFfxnJotDdEGmVgky5XO9RPZqx+msNp0nJporHZYGBPtpN
         g/upJshLg1XzB+k3NBv6/tL+fVp4N4ZJ/6xGy8mMUhpknvu3Pq+Q3/05LmmmiaheWeRL
         /oUtbQ4RKyS9QYqDvG6uIQJY+GkjKF2IxzU/nDpxw0eKdhEkIlJFIcLTDgr+KXWFic9K
         A09r0Cs7+dMb0w2B65yB1ItQWfBUapc4CKJzHOaGYC0EuLzduH6cRSdbREcGFYVacOim
         /3jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T8DwI8fnRArZqHUblKXlj4bT7xhIFIuBs/B+X1cQdyw=;
        b=MUEehjcn/VgLedDVsZXTA9jcpSNRzuZQeLYTbFGoN9jQUl4uJu+4jNA0Kf28jKqZrT
         cPczXo8lst0xNyI97Xyaku3B50cZ5KINMAqC2ciJ9ye2EIRvuYXEzr/zReFfhhmzVOzw
         CnGvVuRknhibXlJVbDtt02yD8DpyCkzLlf2lmKHZPnXU8m9WY1PtAYJ6ZWHpt2Kdk/AZ
         2YajMI55/ARCgt3b40b3rXFdPvXvfe4Pop3LKc+w58Qp5IYUKGkxV1QHR5rqHvawv9PS
         Ch681cQZacZbzZhV2wJJcnMG77RdL3mJ2vgYNULq0HWCcW/G1gETE1v1Qu1l7wi7PLNo
         Issg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MdmgAbLi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id r7si3360968pjp.0.2021.07.23.15.19.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jul 2021 15:19:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id hg12-20020a17090b300cb02901736d9d2218so5649736pjb.1
        for <clang-built-linux@googlegroups.com>; Fri, 23 Jul 2021 15:19:39 -0700 (PDT)
X-Received: by 2002:a63:ef44:: with SMTP id c4mr6675167pgk.162.1627078779266;
        Fri, 23 Jul 2021 15:19:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l65sm27825208pgl.32.2021.07.23.15.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 15:19:37 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	stable@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 1/3] lib/test_stackinit: Fix static initializer test
Date: Fri, 23 Jul 2021 15:19:31 -0700
Message-Id: <20210723221933.3431999-2-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210723221933.3431999-1-keescook@chromium.org>
References: <20210723221933.3431999-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2019; h=from:subject; bh=aRRyyNpJICHvBcmxWEK59jlinDlwFKz/j7t+tY2LYcM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBg+0B0tjjRQRC2yzCBaDP86WMV114a/Nqov1cxgJHH oJBUUZ2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYPtAdAAKCRCJcvTf3G3AJo2nEA CNcTtttQLSsbw4XgcOL4h+v/fRWOTBERUnZcZiXN/yjwqlEUmuhjdvEaRvCP8jNzHu8Dej65BvsJOV 7p9glRjTnOjCElxjXiVR876xW6U+7EcuEk1LOcIztZlKomjPiATMfRya0hXY4oXtXNuPxMk04t28W4 bB/kQBArrUlerB+dt5CHdhizLzPKegfXIHxRO1392dX8zwsnmNtieShoTaCky25OMkeRu5hkeiw6Sg MtM2VO2eNPj68LlYsOHnC+qtKYvV0h8h0MQF1HZ6dyb32VYdCnIO6optbIeIEfuIXStlIXjjEJNgff FHTZUn/ZnvoKvT237o5uABnl79Ipd+8AICohXJh2r6aSEC5nwFucd7WFxeC+j8SuXxI5d+9Uw3euGB csDlS6DJdWJyWZEXhFMnM0O+DpySmqx67T6xg0UuDdsK531gJf2YYaG+s8+qSkYHddcI6CEotCqumA d2Pw4pNhfLaIQKTJ+e/Xm9rM51O8p4FbFYgy9En3I+oZvzoc9HnUdoCMWO3hMZLDoQvRMvEOqOZBeq Ehs+JZFx7w+pwQFxgiQ8lGR/rSMBdLaRiNn+Tt/dInRyPXnt18jivIPexPjqsgnlwnO5+dgn2dgHwD +J4XZUMrXFxf6Zo9lfhC2B6L+AKPfy7VqKzrKFOPeA+qUjYvY8uN3MVs+FRQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MdmgAbLi;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
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

The static initializer test got accidentally converted to a dynamic
initializer. Fix this and retain the giant padding hole without using
an aligned struct member.

Fixes: 50ceaa95ea09 ("lib: Introduce test_stackinit module")
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: stable@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/test_stackinit.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/lib/test_stackinit.c b/lib/test_stackinit.c
index f93b1e145ada..16b1d3a3a497 100644
--- a/lib/test_stackinit.c
+++ b/lib/test_stackinit.c
@@ -67,10 +67,10 @@ static bool range_contains(char *haystack_start, size_t haystack_size,
 #define INIT_STRUCT_none		/**/
 #define INIT_STRUCT_zero		= { }
 #define INIT_STRUCT_static_partial	= { .two = 0, }
-#define INIT_STRUCT_static_all		= { .one = arg->one,		\
-					    .two = arg->two,		\
-					    .three = arg->three,	\
-					    .four = arg->four,		\
+#define INIT_STRUCT_static_all		= { .one = 0,			\
+					    .two = 0,			\
+					    .three = 0,			\
+					    .four = 0,			\
 					}
 #define INIT_STRUCT_dynamic_partial	= { .two = arg->two, }
 #define INIT_STRUCT_dynamic_all		= { .one = arg->one,		\
@@ -84,8 +84,7 @@ static bool range_contains(char *haystack_start, size_t haystack_size,
 					var.one = 0;			\
 					var.two = 0;			\
 					var.three = 0;			\
-					memset(&var.four, 0,		\
-					       sizeof(var.four))
+					var.four = 0
 
 /*
  * @name: unique string name for the test
@@ -210,18 +209,13 @@ struct test_small_hole {
 	unsigned long four;
 };
 
-/* Try to trigger unhandled padding in a structure. */
-struct test_aligned {
-	u32 internal1;
-	u64 internal2;
-} __aligned(64);
-
+/* Trigger unhandled padding in a structure. */
 struct test_big_hole {
 	u8 one;
 	u8 two;
 	u8 three;
 	/* 61 byte padding hole here. */
-	struct test_aligned four;
+	u8 four __aligned(64);
 } __aligned(64);
 
 struct test_trailing_hole {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210723221933.3431999-2-keescook%40chromium.org.
