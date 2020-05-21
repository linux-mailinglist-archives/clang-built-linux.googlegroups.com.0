Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBIU5TL3AKGQER7BMAMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC8E1DCF77
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:27 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id s188sf5266099pgc.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070946; cv=pass;
        d=google.com; s=arc-20160816;
        b=NCHrzJCXLIswuPnWBwJb6l7+tPh/bRfvCVI6UlCOirhzh60Y1/Pi5EIKMXNALoMM6h
         bhPlN+fO4MRfbjMgP1PDi/VVY5/pUDsZXfNOWECmNxRxDQEqw8n51a5lgyB0Br774jIn
         wFd6Pt2Zyp7hrxP78oLjrpDEkr/UsZ8TU35CIk3YwssJQNGL/jcQaz7X1hmRNW67UORz
         WvzHsY7ujXhiJJ9Cf26MqjCZRFgpGK28ZGtvMypx9OAJgcmVZsILysU489mhGzrYxYMV
         iGf9QzJedm0qKQOfaiBaPuRfV/GwWwEgWaAGD5hNmK90umdz3pYqunxMDUNngYkDJbZS
         j5Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=i59B6kxaUe9TFXYtES65mbYJgsPPeRLgfaA/g2/94Kg=;
        b=WXQAxJiEYFg//O0cVtC/I6e3+G2+k2A8FIIay91FUq7LwtQnRKTBIAF+lbc4BIBLeM
         wuQsPcfPeAxKfq6+HqqbJb5S881msUhI80daB8NbSM6CyILHwt33YkA8mwvdqs8I2GMu
         am6mvdoOk/WHms2jifBnO6aJIPTDyn7HCtuxrY+OtJiKAcY/ml1ekY2uX3sZP8HmOnaQ
         Tk/FDu8YdpC+8sihdS6SlJsnJqzRH5tSQlSeKIIr2o6HzO6r3pqxuyPkYi+b1UMwf8vO
         X/eb10aHPEPX6ITPD/Y98o4UYY8idnSjaUSbY0Y336CP4fB0epd9sekxE24RhsmB4NIv
         /7JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jEt1Ln1f;
       spf=pass (google.com: domain of 3oi7gxgukedm3ak3g5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3oI7GXgUKEdM3AK3G5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i59B6kxaUe9TFXYtES65mbYJgsPPeRLgfaA/g2/94Kg=;
        b=XFRc6D7Z9VuX2FPyVM5A85Oq45x1cGQqiB7pAEemxEIEbZZjdwxkor6VF43U17pJkp
         XVWayXZnOUH53vqaAa2nTFpxYNTXJg5s3GsT5V88ERakPoKIiEUPB9REmQ8RVjeEJA1+
         +9zLZiiVHyq2uj8xrCYUrzEyLx7nEqVOQ8c3XdSv4hSuELRLOabMUenllmEh86RMLSb+
         ZaYPa6DmBSrikRxYcs932xbh4OQhaXjYBUCVdflZy6RbhvMcjpPJhxwZGgRuIDiwAJ4l
         hd7z5VSzwgOYqDqC26iWPjwUCqvHLM+FrDJOBFTW9IteCnTbEWFvTbc85/n1f8PpfrAi
         mhaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i59B6kxaUe9TFXYtES65mbYJgsPPeRLgfaA/g2/94Kg=;
        b=rV7huWscbhYo5w+IE9RxDsMwGtSFlY6TR6TN98E54wBrjPitJ6BV43xyYzleDhPLSx
         khqtErJrITiDjMWEe/56KsKEq68zIbSSHxyvmFsD4ZeAhnyfssve9gdViHxPx+0rDByT
         ZcyTcax++KY9w/KG6itSN6zOR2Xxn4VOXhFX8smiNe5JEV5MINWrsI1GJ23wKJdZHtR3
         lQuM8ERDZL0fOGOCp2DY99PH1Kk7ypaOtVdk4oTTNhRoBScPpyTNlOQ2Mp6Hvm3ie0+5
         2slgaBfWjEYCxhcU74qHlYAPlLskhHLiK72p22n5t5ySYOHR0wtZEir/Wc7AF8VUK0Wq
         sxDg==
X-Gm-Message-State: AOAM5338/USV/iNI4KmZaeljKaOdUISQr5nneSumWnvygw4X7EhuTiw5
	ZF1tXQ+kd0TXwMGuK5rzoMg=
X-Google-Smtp-Source: ABdhPJxp2hEFEUhU00SRoxPabUu0S95RP6MkP5B9DhsbLYymtGO1u8nMyQf7CJb0sYhF+JNiMwPiAw==
X-Received: by 2002:a63:fc1b:: with SMTP id j27mr9537262pgi.251.1590070946168;
        Thu, 21 May 2020 07:22:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4c02:: with SMTP id na2ls1239965pjb.0.gmail; Thu, 21
 May 2020 07:22:25 -0700 (PDT)
X-Received: by 2002:a17:90a:c385:: with SMTP id h5mr11757927pjt.147.1590070945706;
        Thu, 21 May 2020 07:22:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070945; cv=none;
        d=google.com; s=arc-20160816;
        b=EOkCu82WSG/zq5j4j418UopEk4KiyPqB0wJLe2nNCwq7Dp+djysjjKwpZXv5PVJPS2
         TmbkdlnlfGAw260+D9td/GMrsBjCwwQdWRu2/VFYxvtmCiaweGUu9PnUUxI4OF0ixHQC
         bzpFGDFhqXGg9uDrPpj2p7vPUMJxGBmsBHoeIZk5Qp7Hob+2LzOJMxYsTdG/bDeBbOwd
         uDR0vYvGHXTuNBIP8Y6Z6tEXkpNKQN0BhkJl6zB0koB6x3Oax9lklBKXGVa4lzqz1+66
         cZHjMuFVw8Z6SztwWtKYELBedetKchJR5M/s1bUxnU/jsRexp+fW8brFCSJwqGpznILX
         dOGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=KOSbRYBxnt/X3aB2qnjtMZzC3fbLoIePjEhBC+KEIRw=;
        b=bds8TjeVr5yBNN2oG0N28gCL3igsdvMEUhg1jPwAc4tTCxKKnyqHSMo0VZGgkIzCA9
         Ck2x/b7zyHR2UwRl7Q5kRCvB6kZLS41qRMQHTZhJZyXDxFD6eYBkybveM9f58ODP9Q6Y
         4zlBLlkh1QEA46x3Ps0tQOArV7LRdO4hCJTMLdV616mg+l2dQGhX/GpKyks4NxdvkGSJ
         lqtKnXW9md9trQpy6H1a43T2dqSwdM1+3z0LN/ps6ieS3CXVrlJr0oZrHHAfORiTKWVf
         5WA43ltHFtAy/TFnXK91WvdaYmSQbpTTbIDm3bs+/m70bUY61B5RXy8CyQMSvhdoH36B
         fbUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jEt1Ln1f;
       spf=pass (google.com: domain of 3oi7gxgukedm3ak3g5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3oI7GXgUKEdM3AK3G5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id s12si530132pfh.5.2020.05.21.07.22.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oi7gxgukedm3ak3g5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id v1so5457497ybo.23
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:25 -0700 (PDT)
X-Received: by 2002:a25:b103:: with SMTP id g3mr15635243ybj.88.1590070944895;
 Thu, 21 May 2020 07:22:24 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:38 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-3-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 02/11] kcsan: Avoid inserting __tsan_func_entry/exit
 if possible
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
 header.i=@google.com header.s=20161025 header.b=jEt1Ln1f;       spf=pass
 (google.com: domain of 3oi7gxgukedm3ak3g5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3oI7GXgUKEdM3AK3G5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--elver.bounces.google.com;
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

To avoid inserting  __tsan_func_{entry,exit}, add option if supported by
compiler. Currently only Clang can be told to not emit calls to these
functions. It is safe to not emit these, since KCSAN does not rely on
them.

Note that, if we disable __tsan_func_{entry,exit}(), we need to disable
tail-call optimization in sanitized compilation units, as otherwise we
may skip frames in the stack trace; in particular when the tail called
function is one of the KCSAN's runtime functions, and a report is
generated, might we miss the function where the actual access occurred.
Since __tsan_func_{entry,exit}() insertion effectively disabled
tail-call optimization, there should be no observable change. [This was
caught and confirmed with kcsan-test & UNWINDER_ORC.]

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Marco Elver <elver@google.com>
---
 scripts/Makefile.kcsan | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile.kcsan b/scripts/Makefile.kcsan
index caf1111a28ae..20337a7ecf54 100644
--- a/scripts/Makefile.kcsan
+++ b/scripts/Makefile.kcsan
@@ -1,6 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0
 ifdef CONFIG_KCSAN
 
-CFLAGS_KCSAN := -fsanitize=thread
+# GCC and Clang accept backend options differently. Do not wrap in cc-option,
+# because Clang accepts "--param" even if it is unused.
+ifdef CONFIG_CC_IS_CLANG
+cc-param = -mllvm -$(1)
+else
+cc-param = --param -$(1)
+endif
+
+CFLAGS_KCSAN := -fsanitize=thread \
+	$(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=0) -fno-optimize-sibling-calls)
 
 endif # CONFIG_KCSAN
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-3-elver%40google.com.
