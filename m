Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBKE5TL3AKGQEGS5WH3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 926CC1DCF7E
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:33 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id u190sf2929560vke.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070952; cv=pass;
        d=google.com; s=arc-20160816;
        b=lxUM9B2I2o5CmV/DeRoqYuJILnsGGzlM2fvQNXyftOEJ0QuNnfN1u0a7hkKEXJ1jAB
         4xP2poScCX2CqDRea1d3QM87ekTn/o5BvpZBxSRKjmF6K7APh5K5S6VHfX5tmsAIEi+p
         cJOJxlA86exvEqV00gSxSQyGRKLICOD08B+QNnSj9/K0c9brWhr0tR6GbQgfgR/siMQt
         UGJw+03eyGPYzSEEJVMH5BOawclkVKZoJndH16Hoi2F9fOhaeNLfznAofj+DLlVwDFcY
         O3ZDXJyk2zzL0b7wouNCVdmwNmDXK2AH/xT3ocCRf3L8CaOnb+CVTSshb+XTbX7BzHb4
         +tWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Rcq8wxGR1ZqxLGcqr6RPwxw1gFH1Z+YHHXHEdhWZnHU=;
        b=tqBKbK6nULaIOYDGvHjErIqprEKd/lTGEa3NW7gqxyVBgs7swPDu4/oZh00MjlacMq
         Rux73WJv5WoTUA1z+rUcYFEDz00I59M5oYXd+X9ee5nJcouxUoAc3Wh5uqXlJolub9wt
         GYeh/fjeqPB23XFHw83YQkbgpSKQ0Ut6YcQkHXO6EXrwOEmQH8yvll2Z8cydv0RwMRPe
         SM/c2Iq0xKJTWOYJ76LH6aj/s+AoC4Z/glThqFiTCqy8rTMDdh4c072AJAm+6tt3Wsb2
         BXs2dWA0vP+opR1Hce4Yffzo2gtj+hPiZaOHLE5pM2uZIbI4iAVwX2aNcqvRj5orqC51
         BwbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="axxi3Qx/";
       spf=pass (google.com: domain of 3p47gxgukedoahranckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3p47GXgUKEdoAHRANCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rcq8wxGR1ZqxLGcqr6RPwxw1gFH1Z+YHHXHEdhWZnHU=;
        b=ropdBSTqS7L4jhzWcojirKfbulAEgWTZ17MQepzPAj2gzWWV9s+HBgRUH5VZ58bJm8
         M5TmaGr2gjWgTVZDmGI3rVLzr6JgPv/9rdR2/JbUTgtplLaCKJR6eB8YoHCagnAL/Lj5
         TtQTNaV4a7K3lJzJ42UW8npOMkviCDC0A+jQVZXqY5VqxFjx67bRO6hYurrxwARINrUR
         h83vd7WaBp3vB3HOD5RP59oP2h5Z1SQKidd2NM/FH5ejbxa2d0MMYib5JXCUEnR3O58L
         g3lOxuH0fipOSLIh2BybGcgzdNH/fSo1bIYB9IPgg5VAuvJ//yUFnYw4mxbq4beH+SB8
         mY6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rcq8wxGR1ZqxLGcqr6RPwxw1gFH1Z+YHHXHEdhWZnHU=;
        b=orMchs4736KwkTHvrThTg1pV/TZLgMxLAF9E9ElQfgvEWyvPPuEJWmJ7lNWTygwBFI
         tdqpP8+rPLDk2TL9wzlJhpfbOjzafFWIUWd5FmsERcSEt01g864XF5wjDVWt4M7y1lq2
         dYyNptPy8pEE/bblAgD5Vqm/sm1+ERg3FiDrVfC0Vm/DqAR8LBFDB1zoVIpJu6+68R9Q
         3dBMdnl5ji0CVLlW/DmohNfNc7XC6vKwI2zLjz81/UyVD569uMsJcRLOpZZbH+hFH1Qo
         /rGfO7idDKT9x3zvzNns3OnMszNmnn9aT5pc0OzyMJeQ9R6oO4vdvrnYw3kBOpDcv9hR
         TgIQ==
X-Gm-Message-State: AOAM530zzC2w6r7RGlUSc0SvL20wXDtSl5mJCVMmuPVWT8aA0UTUbdSv
	p7gnlpBQ2d9J09CxNzfnPkw=
X-Google-Smtp-Source: ABdhPJzeeOeuL+CHS2fwN/ASjpI+sq0txtdfMSB0lujNp1Zz46ybvzN61Tyie0iPWzc8+fQU6gICbg==
X-Received: by 2002:a67:310e:: with SMTP id x14mr7190970vsx.237.1590070952677;
        Thu, 21 May 2020 07:22:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:386:: with SMTP id 6ls154763uau.11.gmail; Thu, 21 May
 2020 07:22:32 -0700 (PDT)
X-Received: by 2002:ab0:2f5:: with SMTP id 108mr7558976uah.122.1590070952240;
        Thu, 21 May 2020 07:22:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070952; cv=none;
        d=google.com; s=arc-20160816;
        b=QjwZ38WpRRcXhUA99+LODWB2B2fH/UXo82XrVgZgWMrFzX7JRYoupGitbf9xKB8zzd
         R4umu4G+/Cw1gJMlUMOwuGtj6E1HszJ+O82J2Y0w/f+Qn7JFFwyYpx5DaK9/sXZbmxTj
         4GOlyrsaTDpEOphBSpDyG1qZLfXd5tqajiZ9CvuhQ1gicVuqzdJtJmimKwoGmA4dAkXT
         IivKGjM6LgfidVXbso/NPM2teowbuZ6appxORH2+ac1ii6g6wYIN34XfXS1xhXbPoJkH
         4+y8ZFyzrUATUaBB3Z0CylEQ7tU5qT4dnSdj7SGjvm/FTk5sD/g4AP77DDWaWS5tFyoi
         ckQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=H2uRSUohXbn7nWhU1m6/8O/OIPFFeT1jA5i34XsZ7o0=;
        b=ocnvw1jVxa/ecYXlHF2gOlw+NToAQun+h5QaIYueRzoW/unrkG5jg0iaZOzjJ9Q9tR
         OEh3l9buWBUbvgkXNDQ9zinOMBwJbDyEkHO9PQyVR4X8Z5eQrPrs0fQQ68yVoY1Fm7yB
         AUE4NXos0uIaZI6s4QEErkfZcGRdinLZyjCKde/Le6UZs41lcpTX8oLolVdlDmgWOA3M
         swKw897hLyhp1svyqF3XcgMnObcjI7guMTo/4+5VXCfwLGRshWJzFb6Xxbd65HhSSSho
         qop7r3XVt86k+ckytIeMFY0OeQm0zWMqRtSqj4gKWDqwcEp81o6TLBlHB3a3SsRVzHQm
         XXlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="axxi3Qx/";
       spf=pass (google.com: domain of 3p47gxgukedoahranckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3p47GXgUKEdoAHRANCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id d84si173029vsc.0.2020.05.21.07.22.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3p47gxgukedoahranckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k15so5500496ybt.4
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:32 -0700 (PDT)
X-Received: by 2002:a25:3610:: with SMTP id d16mr15626055yba.222.1590070951790;
 Thu, 21 May 2020 07:22:31 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:41 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-6-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 05/11] kcsan: Remove 'noinline' from __no_kcsan_or_inline
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
 header.i=@google.com header.s=20161025 header.b="axxi3Qx/";       spf=pass
 (google.com: domain of 3p47gxgukedoahranckkcha.8ki8h6jc-7qehp-hejqtckkchacnkqlo.8ki@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3p47GXgUKEdoAHRANCKKCHA.8KI8H6JC-7QEHP-HEJQTCKKCHACNKQLO.8KI@flex--elver.bounces.google.com;
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

Some compilers incorrectly inline small __no_kcsan functions, which then
results in instrumenting the accesses. For this reason, the 'noinline'
attribute was added to __no_kcsan_or_inline. All known versions of GCC
are affected by this. Supported version of Clang are unaffected, and
never inlines a no_sanitize function.

However, the attribute 'noinline' in __no_kcsan_or_inline causes
unexpected code generation in functions that are __no_kcsan and call a
__no_kcsan_or_inline function.

In certain situations it is expected that the __no_kcsan_or_inline
function is actually inlined by the __no_kcsan function, and *no* calls
are emitted. By removing the 'noinline' attribute we give the compiler
the ability to inline and generate the expected code in __no_kcsan
functions.

Link: https://lkml.kernel.org/r/CANpmjNNOpJk0tprXKB_deiNAv_UmmORf1-2uajLhnLWQQ1hvoA@mail.gmail.com
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Marco Elver <elver@google.com>
---
 include/linux/compiler.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index e24cc3a2bc3e..17c98b215572 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -276,11 +276,9 @@ do {									\
 #ifdef __SANITIZE_THREAD__
 /*
  * Rely on __SANITIZE_THREAD__ instead of CONFIG_KCSAN, to avoid not inlining in
- * compilation units where instrumentation is disabled. The attribute 'noinline'
- * is required for older compilers, where implicit inlining of very small
- * functions renders __no_sanitize_thread ineffective.
+ * compilation units where instrumentation is disabled.
  */
-# define __no_kcsan_or_inline __no_kcsan noinline notrace __maybe_unused
+# define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
 # define __no_sanitize_or_inline __no_kcsan_or_inline
 #else
 # define __no_kcsan_or_inline __always_inline
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-6-elver%40google.com.
