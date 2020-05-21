Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBA6DTH3AKGQE5UG4U7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AA11DCBB3
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:09:56 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id v5sf2052575oif.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:09:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059396; cv=pass;
        d=google.com; s=arc-20160816;
        b=oNxgb9cLuQnDwtBG1dg77XQlRA3URD1TiGQN+JQYfl5VmhGqa4XSir4FPtf51fANlD
         laNdKBqtvG2GNAYpGJGAufP2i5BPyktNvqnBBKQ9nnFDuHV+dl50+wUh/v1ihRN6A7nn
         x1seGqOk2pedk1yq8R1CCohr/VnpDJ9OLYNN/kWVdmd3RYOg7YWOo8hW62bjiztSyj/u
         3adjhwwpsnGbF8OkzMlumw4tRK5Fwo3d+RBw1yqqGImEGAXsRs45IWJda9NCATn8tLXg
         q2bfmgXuGPLqHZ4V96VHdDQrAHiKlshsXbhY4i02V22QUkrcb/QYMsrURgmva96wjPUe
         nd4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=whw8JfLVzWb5vSPtnYXm7jDJGAWC0eg4m6UWQAzbM9U=;
        b=Qgqejlr/KrpCTE8TArJv5n+LPbytMz1+LlDcW5djFf2wLlyQsrc7XFUnobndiZ7Qhy
         Jj2MYVTrpDZrhajqz8XhThTA9ksf3NDvyhVVCi8qsYf5bLAG29NSx6jdMLETXpAyd1ft
         AHORrUzuDDJLv9BTFa4NwZymVBB4bfA5PrawQk0gZWr/rYLf84mRl6khNdj05Vdqs44r
         s7GXGhFcF+supbMuD2CPcptIK9BHSAHNBsbNfgFDl4BhuwAnBwWQzRj+Ma5OZ8YDfhpM
         JKLD9FsbZypeVwIfe69dIzl0cicAj0oZhMB41xnPBBfHDnyMkYxeVEv6WXt+4/GGhGwa
         d95w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aQ5u9oAY;
       spf=pass (google.com: domain of 3gmhgxgukevs7eo7k9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gmHGXgUKEVs7EO7K9HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=whw8JfLVzWb5vSPtnYXm7jDJGAWC0eg4m6UWQAzbM9U=;
        b=YtwIyjmfb7aEhrXXNlvFSEGoq4UTXCaVlkvPNHKWdBnLhHs7XfoD+JkfCyldzFzll9
         YjSoLeiqy+qREsf6PMJc/qbWS3ptLaIYrqOirbiJSeTfsV4TtdO3zRy0r4mUuOGfwXUK
         RwoSOSAJIJ5CHwixpRygR9ZOrKKrFJa4ILUVrLi7OPPlFIeI+AEeQhPhgi8UoEWrmYpS
         VtRKJROvuS3gcSoU84dX8swAMC14RjQcll2k6EvQmC3ZztbaIIOTPOzPg7S9+aWp4Dbc
         cDAqPNahXwDuzaT730GbIHjcn2bY/cfCg7/4xzt0YKEiH6MFSOil4IJNuzfHFloShbMX
         ujhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=whw8JfLVzWb5vSPtnYXm7jDJGAWC0eg4m6UWQAzbM9U=;
        b=LLKMAi2iwZnF2+9Xj97qQSmIWQ6n1lxQ5Bkt2x5m7CeAu5YdOoC5oQKQ16EfxF7ZlM
         oqNig+C/l4UADZPJA+TMIjywzwqF4rOVL5dLL/kPpGxPvvyAMJ86obZzHWaKQmMOu9K1
         EoFZW5PNX9NEwL2IN1AkX7kWWa8OL/VjDGAaSK43pUAOL69rsHHxIcKcfGzjLVJTkHge
         5Or85hv49BYRV0XuYAt+Bci/0aOSnPkdnZGQvUWNlGBwhn7yFGN8MLSuIyHpDgrf+X79
         XI7HOKYQctjHqaQHAtkH6s3Kx3LGDhCU12dfl6E5UueZgzNgzMftf79E7RKFvPHqCMaP
         6MwQ==
X-Gm-Message-State: AOAM530coSwC3w9U/Akf4UBbfgwbfqoXQqM/9AYOKe78mpXyGKBM07oY
	v01JgBKSs5cO5QqmDOWZBEM=
X-Google-Smtp-Source: ABdhPJyqk/0Recmx7hCVukRJaaB15ss1hkjkczXDL0lVN1rC2PpE5mbQlW8V9GvmlRXtY2vA3eK9NQ==
X-Received: by 2002:a9d:5d13:: with SMTP id b19mr7052155oti.151.1590059395851;
        Thu, 21 May 2020 04:09:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:731a:: with SMTP id e26ls390890otk.3.gmail; Thu, 21 May
 2020 04:09:55 -0700 (PDT)
X-Received: by 2002:a9d:2dc1:: with SMTP id g59mr6746286otb.288.1590059395489;
        Thu, 21 May 2020 04:09:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059395; cv=none;
        d=google.com; s=arc-20160816;
        b=JAG1gmNc1Z0m3HZaayWC0naT/9Iou0/+v2yovOCIoRjkpna6R2MXNHT8bGTfT3eYE4
         MitTnkwALQti3mzlK08EfM+EXjfR8fp4UlUV9p+kW/+QFc9rB766XH+X0Uqy0hBeg5Ir
         AunwSXOfojvcJy36YodLZMvMgRagbsOOABVqpY7jN0q1kd7br64OqmyxPnPvcKilR0ug
         zKT2Ilh+EYcWgdaC/flxrCJbnO/kQHU3S+fMqs1qWMbXbkS6jjF84ZpRFSYZxWhJs2Up
         zjLBHyn9P1u2k2/Zj+ETA15vHDllq8flGD0wLYjl5eSWImpS8GCYHp76/6h1o8+0yHRT
         YOvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=COp0SyeTFByf68VoAMfHccz/8jBHCco/jZeKm/gYFRA=;
        b=tcFsOE5qeA4k5utZidUQqXdXuUeV83k5ZmwrJc7cRJMp8yuwhHvbNv+pt4UyCyyTWH
         BrlI6ER1xluNDi5IeUrpmb6ugQc50ggp8U5IwJGyFqTggzkLZ5/Wn6cvJHZY+F/t7t7O
         5+PAF2ix34hIvZeCbzf/l5t077pUn/9DAxmkeZvb8iCkAXLj7tK1uwl5QP2tuyoCisA2
         Y/9Cvpxs+OM94EH1Y9CtM9j+3JTn6nkUJIY4nYPfzVviPx3GG3tnSGGkhfXQxze72ikH
         8hiUCIejD4C0gubyZRNVwGQanE6kTCIYvUHEfo1Mv+ziu0WQYr8fxebS0PxzMZ0rra1X
         PmyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aQ5u9oAY;
       spf=pass (google.com: domain of 3gmhgxgukevs7eo7k9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gmHGXgUKEVs7EO7K9HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id p28si615830ota.3.2020.05.21.04.09.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:09:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gmhgxgukevs7eo7k9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id b82so6975194qkg.22
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:09:55 -0700 (PDT)
X-Received: by 2002:a05:6214:1594:: with SMTP id m20mr693518qvw.110.1590059394941;
 Thu, 21 May 2020 04:09:54 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:45 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-3-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 02/11] kcsan: Avoid inserting __tsan_func_entry/exit
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
 header.i=@google.com header.s=20161025 header.b=aQ5u9oAY;       spf=pass
 (google.com: domain of 3gmhgxgukevs7eo7k9hh9e7.5hf5e3g9-4nbem-ebgnq9hh9e79khnil.5hf@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gmHGXgUKEVs7EO7K9HH9E7.5HF5E3G9-4NBEM-EBGNQ9HH9E79KHNIL.5HF@flex--elver.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-3-elver%40google.com.
