Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBGGDTH3AKGQEI5KPR2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4191DCBC9
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:10:17 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id j70sf5458292pje.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:10:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059416; cv=pass;
        d=google.com; s=arc-20160816;
        b=sK3KUal+GuQG7OQSw/MejAahZr25xYhaLIsV+0YabcL6U4oEs7aWqKpUVskVbg0BqH
         dx2e/95A4y7tIa9PWXeKEDrQgtMfR774nLy0K4YO5g0IeezhTPjq62jH4zYINIcFZpF5
         0/5edArShnLAEp5J2LT705ccM6jW/SL51ScbbCNLUORcoy9SAD82w0Vna99wW8PsHfBw
         pEg6foaWY2knhoDH5MMGA8I+FWtdAhafGylzzLHnQuDcf8Bu5cwK6U91ItWKw1iyr0Kd
         gCE92/X9d+H2KqRzhCuy1JZg+X2fAAg3BWgD9j+tow/9LLWB6zUQqYrkwiw/+alCQPl6
         L94A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=p4/q9l1g25geGgKDCMW19OZN8DxDpal6xTeGlZPxtos=;
        b=NOAURhNDTLlZ15eulBJe7+DHsqIHqQ5E6QiqrQ0PetK+zmLgFzKRjDryJqyTy8u+l3
         W9osMzVfduV2d11OC8Ie3gmeM8glZ4QlnzPorDLYHgaTSX6rECBFKKFLe6eJJRQ6yhv5
         +WwvG+XpfR8vqVexmo0N81ZqZAnqA/+gTIMwme92VN96tBu3CyLPm+s8aoM0AHo14l/x
         9wIPZDq4ndF7iGwJ4lh1OoIeWPJa/jyYev56C76uXOVDMrOnV3iLUVJsnpg9WU5olGBZ
         eXPCixL8tFq5jD38abRpO8zVQdkfOo/CEkio851KaASuy+CqckOlaWpcyhzdNWQm008u
         vrRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qNkmtlLU;
       spf=pass (google.com: domain of 3l2hgxgukexaszjsfuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3l2HGXgUKEXASZjSfUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p4/q9l1g25geGgKDCMW19OZN8DxDpal6xTeGlZPxtos=;
        b=YwVaKYGIYQmZVOOTHrH7XQdWMxa0Vf9Czk5tW7B0Tu0hZu/2z0a2Cb1/XZbXZ5k3/p
         vYW+DMItfNisyL7APcUwLfydnucizkkAD1IBRW1w5U4NgY3o55+6u+eP+J6NvmExVofM
         I6Xwdi2HKw95bupm7RgQcGpaxv+XSJi++idAbwRnDYnEHafknoDxt/mKDCpCfKL06+Tu
         EahXHe/ZnQE+sWIRPf02IeHkMMa8WXmNJpze/W54SnJcSyw7Oh1BTowl18IS5G5Caz/2
         2uLuIHWT8EsUWWn+F9I+elHJ/2r1c5vZCsrSincORoghJ2iRYvVrJPXN+g/21eGiJM4o
         5uKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p4/q9l1g25geGgKDCMW19OZN8DxDpal6xTeGlZPxtos=;
        b=CY5DJccTbfr4PYCxaSx3kX1hVsEJso5P9zvoMsKThoeFWKPU5PlRxWlz/yGJm4Rb9d
         SnKdaytns78AEma+ImgmUFFc+icEboLyzktl5CFet1IYtZb2tShYGwpOcBgr9wB4Swf7
         t3eqx3E8uE3+kInfShbjet6Gelodb9QGITJZIDph9zfx5DLHeQLK/lK/p0v+CmgKMb25
         YEoTlnd/no9MmnFQ5b9Y+zIbhjEIq+t+UmhyrD4WRgcj4AV5HdkVAMe7+N2uB4DBRCPK
         jSC6pwFD0KpBRWP1n9fXxz8nL7jZ9PL/x2Idit5ZU5EPWFdPIKvU96BK0Hd0UQS+JCWL
         nI8g==
X-Gm-Message-State: AOAM5317kG7IQYj4rnyhXhrqEMlCCie+MilwN8jvQpVXIDHxrfI5nMHL
	S/Dtali9WTsYIPV9l/RYzjE=
X-Google-Smtp-Source: ABdhPJxWmT/2uqvAFi/NEt18MkU0gV6F1phLImjKJ/ecV6l5HjDNV3vbBcRL/WmEuYCN6i8IOzv7NQ==
X-Received: by 2002:a65:4bc6:: with SMTP id p6mr8293570pgr.20.1590059416191;
        Thu, 21 May 2020 04:10:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1703:: with SMTP id 3ls584705pfx.8.gmail; Thu, 21 May
 2020 04:10:15 -0700 (PDT)
X-Received: by 2002:a62:2f45:: with SMTP id v66mr9374824pfv.45.1590059415741;
        Thu, 21 May 2020 04:10:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059415; cv=none;
        d=google.com; s=arc-20160816;
        b=OIZse71SyMSVsV2Tjw4b4CsaS4qlSluqmROJeaCtv7hNcDU1AzlXb6CjrkQkHlzesa
         qi1DXU4KbXxII6feFHu105/Eq/+19PoJ8q+BMgfWFEd7nfvERFkTdsKcF1UJCXebp7qA
         Ye+ZqQ4JpYDMwqSuWhq4+otTtOsJn2nuncSMP1MAz9oXRWPs73N9nN571mZ/uOAIx0+n
         Y+qrJtg7ZxSGKT7ZAxsHKcFfMryqCZzrvBnftOMZw2NNsfbnEHh3BxtWc4ZTE4soxGc6
         j/SywO/mH88tzNHiGPBHDXRgy4KEJbBba0ZVq36kMvJ8EerAoTuj9eydA0Vsff30EX+O
         Oc0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Mg9xxMrsMAxLq6dAWJl0xfMkvPwKVEQaVFcZauCDO10=;
        b=D8B5DLqDZnoIxB1kYGc1Iuwfyo4Z8mj6wmtxLHLvxS7qG3hxXRL9xgWBBiNw1//2d3
         NgUxSXPg9IsUIMk7EWi8qz3cUMshmTs0ImjqPkWzzBG5PvreP6ks6vWzPcT80ZdrTBTt
         uTFWI7Idk/PY7ob8XsOkPPSZHcw8lT7f5TistiZA90BqV48o0pfwOuiM7aEeYWvxIIal
         G9ZJxlIfPFBpH0fdpf67zyNQROAaLk6+DNAN8bH2+FLNAda1nO5TTFtfyHMgb8eXQp5T
         t0W9GuO4p3vQ9JkJTNM9nHKuIAFi+bb0ZR++dAt7qlU3SIkifbwoVEy7QLUenqqUYfcX
         VuUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qNkmtlLU;
       spf=pass (google.com: domain of 3l2hgxgukexaszjsfuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3l2HGXgUKEXASZjSfUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y7si447491pjv.0.2020.05.21.04.10.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:10:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3l2hgxgukexaszjsfuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id r18so4893038ybg.10
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:10:15 -0700 (PDT)
X-Received: by 2002:a25:392:: with SMTP id 140mr15229297ybd.507.1590059415347;
 Thu, 21 May 2020 04:10:15 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:54 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-12-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 11/11] compiler_types.h, kasan: Use
 __SANITIZE_ADDRESS__ instead of CONFIG_KASAN to decide inlining
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qNkmtlLU;       spf=pass
 (google.com: domain of 3l2hgxgukexaszjsfuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3l2HGXgUKEXASZjSfUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

Like is done for KCSAN, for KASAN we should also use __always_inline in
compilation units that have instrumentation disabled
(KASAN_SANITIZE_foo.o := n). Adds common documentation for KASAN and
KCSAN explaining the attribute.

Signed-off-by: Marco Elver <elver@google.com>
---
 include/linux/compiler_types.h | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index b190a12e7089..5faf68eae204 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -167,7 +167,14 @@ struct ftrace_likely_data {
  */
 #define noinline_for_stack noinline
 
-#ifdef CONFIG_KASAN
+/*
+ * Sanitizer helper attributes: Because using __always_inline and
+ * __no_sanitize_* conflict, provide helper attributes that will either expand
+ * to __no_sanitize_* in compilation units where instrumentation is enabled
+ * (__SANITIZE_*__), or __always_inline in compilation units without
+ * instrumentation (__SANITIZE_*__ undefined).
+ */
+#ifdef __SANITIZE_ADDRESS__
 /*
  * We can't declare function 'inline' because __no_sanitize_address conflicts
  * with inlining. Attempt to inline it may cause a build failure.
@@ -182,10 +189,6 @@ struct ftrace_likely_data {
 
 #define __no_kcsan __no_sanitize_thread
 #ifdef __SANITIZE_THREAD__
-/*
- * Rely on __SANITIZE_THREAD__ instead of CONFIG_KCSAN, to avoid not inlining in
- * compilation units where instrumentation is disabled.
- */
 # define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
 # define __no_sanitize_or_inline __no_kcsan_or_inline
 #else
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-12-elver%40google.com.
