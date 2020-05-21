Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBNU5TL3AKGQEMCVPHFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C08A01DCF8A
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:47 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id y10sf3201498otk.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070966; cv=pass;
        d=google.com; s=arc-20160816;
        b=M6JziAGXjwojS7m+O2TaLesDwvVL3W0njCw3CojCpLByrQuOMBVlSb8yTkfTpJd8Tw
         CqP3RxhqEawro1AuadBB4haQMzHuzxaLtSdehT1xRujSwpSePDYQzcvHgl6z8oc/qvBK
         5Yhc8kH/HR148BU9HEebIKcjA3wAyevQIWasRym05IXa4+o2vcGFG8cn8PoryBlTH/AE
         mlqeU8f2fmw8pZdIItrXbiXrpL+VRSZaK9ydpSUuugcYemhKhzqC0oxSR/CJVXehGyXX
         AL2mEvGI4Ful/3vYgTtFqKDFNsIMxxg0G5Gmgh5n6PMs1ulauHVNZtYnZh3rZU/aqYNE
         PLCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=fwBcl5b58y+oU78mB/s8Zb0APHhQQarPzUNfttInMIU=;
        b=YMRsNzu6RVzlG9pUTtlHcupIBL5+s8JAvCVQ0EPj1cHjYrHR8GFhUJiD5mRW9EF3gR
         GP0fVLE8Q863Jl/yM1V7gAGViM1EorVGOxBLOBY0S35M71MgZn3pxvos1zGevTMcPX5y
         2vqtlZR65MeuPyV6ca+R/nc564SQ+YMhybOY0buB7GSrs++zRAFtWlNUdWKrmEWADZai
         b8b4I0ktt08vVDV4MgR5jk/ByaYt7r/4lvJiPAIMMctHCkbiFoeaStDbHbVC0AVq13gj
         0nGXrS0YJhyOI6wWt/amFOGl7pMAT5DoQo13muU+ZBNH3FsHxS6wR+PJ6KfzZihzOQfb
         GScQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b48sod3H;
       spf=pass (google.com: domain of 3ty7gxgukeegovfobqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3tY7GXgUKEegOVfObQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fwBcl5b58y+oU78mB/s8Zb0APHhQQarPzUNfttInMIU=;
        b=iRYOzPDLq2tYRuMg6Y0hV18hAqaGmZlT1DwLmK3m8erY1o8VJakGZn1M5PDQLnA7mT
         Yg6BGZEPXyBy7sOB/QiLGXZXORFJgXzmZIqbEqZYKW/KJE2XFC46LyuR218SzOxJeYT3
         YhXHhwwQYcvlE+1czeyOu9tS/2zevX7eeBGtXeh/6ZCT9lTnSaWwCV7+UdgEt12GKX1t
         yVvEa5Mrmelr4LP28yk1AqA1kfAVVYaVKUZ5DqAkq9QgYyYFoH2eJepohinuaXSfI3KX
         63djdWTuYj0g4DoAu5dd2wU5/tc8xo8Rzjl2JNy+OsN/NNDZJmbO7Y8pRXIYg7/YYEBa
         YUBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fwBcl5b58y+oU78mB/s8Zb0APHhQQarPzUNfttInMIU=;
        b=rSZROHfrjcogleeUqYRQJv8RicJqsPQM5aMCeiYXsv9dwSiDPZN1Mu12tnV9TuelZ4
         kwcGUjI7x4PFk1i7KtWbKHjCTWuSkHc6rhly7Cc2XvkKHhFsaKt4M8MXwZma40tzcLDf
         JW+Y1m21p+PZgYFfV7miRuglD4hRNBf0P8lRnNIKtyybURvXezotOREN0Yk9TlK++v3O
         Pfq8lx4F5jT+p9weTZKiax3lmzai9n447PIu75ckhue22VvjuGlVIO1tcvEug/l1gFW+
         o5LoiK+iJEkPWs5VGfxkHbc2HC1vCFE3SLc4ilL3eXehQAOWviBtS5sisfzmBFh/9dvC
         IzbQ==
X-Gm-Message-State: AOAM531JbNlsg9QU060te2oSvYSrAXX7MhlQVMmbPxG2wU3IRBuv5VCb
	sVbKjoWBVHA0qNXCYET4mps=
X-Google-Smtp-Source: ABdhPJwfoOuc1pN6V4HlE3NQxjjFR+a+hOyIgIHPVZ3mdEl+WP4yfk0gWGMEWT+SRBFvZRUeugE/Sg==
X-Received: by 2002:aca:75d8:: with SMTP id q207mr6561025oic.165.1590070966753;
        Thu, 21 May 2020 07:22:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3147:: with SMTP id c7ls485456ots.7.gmail; Thu, 21
 May 2020 07:22:45 -0700 (PDT)
X-Received: by 2002:a9d:5a5:: with SMTP id 34mr7638561otd.196.1590070965670;
        Thu, 21 May 2020 07:22:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070965; cv=none;
        d=google.com; s=arc-20160816;
        b=MBFqc4PIrnUiDxols48rlMkyQ2KJqnElcyU4H2G5EU5bQqY6Nt6N5k5K4cj9/x6EV3
         K2WxJl0W0O8p17yfMjjvqAGaKcuDxQR7Ry9ODq9gvU4duLGLbgNZXMMsUDTv05fyPgqq
         GFaUXD80z49oN4VKZ/jreW3xCB8FhLKNeq98P1dEUOcZqUjPtCcyq5F1biHXFOqNPHvA
         3SQBbPalFsoG+Qc9ZTpe8CEzqSzZ8HGZL1RlzRGh+qOsFMotI71ThP7cKh8ODxdh5G0+
         5Hs/JAOydINCIVrD4PYzLwmU2NQHHwkagOJ+ZGUun4PWci3KTdoL9PEMA5lDepdZ1feX
         FhQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=LdWtxw6Vf28rU4H8/TQCyMB4NDqGcmdRqUmsRUyh1H4=;
        b=fG0KFQwYOk2VUEx8RTaojNc9V7eSb7L4wA9DMX6KDn0LxtZ1P9DjOuciaDLJibkcwW
         0/wqIh88cNOlpviAyScCRXsXN0gdCYo//RjjJzI05DyiaJ79K84fGTJ69gigRJrBHSvP
         cYjD/eQOhfknawVbEbsGOeCUeeM1oyjHshpjRTFEWTIzJAeKJY581MZcSfJSO9OW2lKU
         bteLrumEnXKNOacLVpJ+/1NxDGpMlVnIDeH4CKiYq6VutE1vKFBkRHSuKBpcxzhM5Suj
         CotgswWsrwvFmfgWIZo+QJmb4uxeN5nHZYqcLuu6Y32tjJFf8nWZZKWYYcoWrxkKDGOE
         qYeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b48sod3H;
       spf=pass (google.com: domain of 3ty7gxgukeegovfobqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3tY7GXgUKEegOVfObQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id k65si531830oib.2.2020.05.21.07.22.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ty7gxgukeegovfobqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id b22so7800640qto.17
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:45 -0700 (PDT)
X-Received: by 2002:ad4:4a8b:: with SMTP id h11mr10542388qvx.232.1590070965164;
 Thu, 21 May 2020 07:22:45 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:47 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-12-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 11/11] compiler_types.h, kasan: Use
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
 header.i=@google.com header.s=20161025 header.b=b48sod3H;       spf=pass
 (google.com: domain of 3ty7gxgukeegovfobqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3tY7GXgUKEegOVfObQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--elver.bounces.google.com;
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

Acked-by: Will Deacon <will@kernel.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-12-elver%40google.com.
