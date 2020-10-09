Return-Path: <clang-built-linux+bncBC2ORX645YPRB3EYQL6AKGQEETTAJSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDD0288E22
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:38 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id y10sf6634710plp.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260077; cv=pass;
        d=google.com; s=arc-20160816;
        b=tRoJG+0wxx4rfXg5COp9YP7rEo5O+kupS+46ei3yEszKxBPFnDg1D9k/OSm8PAmcww
         pODg8UzGQ0OD3JJp54v6fPGz/dgf+Pis53J9ChDTz3hxjs0KrqeUfwadv/rjy49ZeOTd
         WrdcspbmT4pU+NX8HAZFrExMUYAJ65M7xPyhDqwP82i8uECOdyhs4qmFxHUzyFheikkz
         Xq7zQiIOU2UdmeA7BbZkcB9t1KuQrucdbF5ZDzn54/4fm1cTUYlNvNL1A6nF8qu+IsSx
         zmydG04aoHKMYIESFjaHuz9+61EOxhtopS8MZF0rxHmZLJ1fB0lQV1crszkfQVdziavh
         zPSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=3EliTpoqCP8lXJjXOqHM6JkDEc0o6yDjP76Jrc8iQt0=;
        b=NIx8th4pw/+DeZgAcW/C8JXz7KYrlZAjGhS5FNJGsjPRyC+FsFIXhCI4V6I2ro2uZ9
         iTnt8e4bAmmnme7pmqzaj+KzeYgefmLos+ZmY2/pGtYU0Y8icdQ3DBVpkcLnsZKPgSEL
         9bvOaCKrvp/UOXajKon1FmcV2XJx78NinapSNDv4HkQukQZnVoT8aZsRxieYJSx2FHps
         Evs/U4d+fgaWLBnrh5Bw5vEjDDVrSE2hr5Si9smAipKbqu2/gR7Kl5TzyNVJ2KglMGFV
         xWGQPGEpwv9kEMaRQ1nDq+hVUjaE81h53fK++fvtY0Q/E4TySHAG2PREHkMecFyWgEj1
         e1dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RzNTfPVY;
       spf=pass (google.com: domain of 3biyaxwwkaik5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3bIyAXwwKAIk5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3EliTpoqCP8lXJjXOqHM6JkDEc0o6yDjP76Jrc8iQt0=;
        b=sbQTnjYF/098KW9lOtw7rokv70dDovFhdKRkOuN6PMp9RCxq1UhxB9uIOd8/m+XT58
         lXjoQ1n/fPeoFuOzRvarx/ew7dFHY1u3ba1Mf6Hi4bycGMmXlbsFUxJWDGj1CXsdPZbV
         mcj25UbGfOeav27nNEwPVVeqiITq9dEo/keBuzdKa0zVzfVx5tSDsCm4fsEzEHgLk9lh
         eZzvyMF8UTbauEKaP7XkMrPOg0QnBZ3qQF9aVj48OwiBoCiQBgn/XJ3TWybAGaVYjCWE
         ZgT2kfGSHUIrzvZmHBSBasyb7daCfyolImTSCppN+eHcvjYHW70ZONfF3ji6SQlCpwEh
         wPzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3EliTpoqCP8lXJjXOqHM6JkDEc0o6yDjP76Jrc8iQt0=;
        b=ZyWvpdZD2AsQQsv0mBAitv9ZOiTFxLoxNE3peUCm0+lQVj3UcAS0eCx75HVY9fX8XW
         p+q3AxzirD0wT45VWlRi6SZepLqqdBxXzfYnnk7sP/T6Po/sNDpQCfMEPLXaVyJTX2pT
         2N5Rxrd/kIMSTHST/i6pXf62FIY37oFz3rcEe/AoSAolF0Zoi9OfUZ8BOyqnHQYiGo3T
         Hml8/Qgr9sYHjNvruaPomAv2AWvBCYRXjTFj46gz0hA2EQzD3EFMZsu4PG5yspK/LcZ+
         oNu9aRU1ZNNnbKcmcM9cfMdrb19bwwIRn6HufSB/v8wFxSx45KyzUshtoy25A5xJNvEd
         18jw==
X-Gm-Message-State: AOAM532II5t69yFldhhSB0WUhFrWYjKNL27Y+fupBwK7p5qstJtCsvk4
	DY1m9Ym9x52v7bRHtX84jeI=
X-Google-Smtp-Source: ABdhPJzSjKljaevrUGoP64VkqHhXn2oDWRHYSTcMD1dpslXhQPiFwe9Xlh3VWq/YnZU0stDm9kfUDw==
X-Received: by 2002:a17:90a:7c03:: with SMTP id v3mr5360219pjf.233.1602260077037;
        Fri, 09 Oct 2020 09:14:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc0c:: with SMTP id w12ls5055073pjr.2.gmail; Fri, 09
 Oct 2020 09:14:36 -0700 (PDT)
X-Received: by 2002:a17:902:b70a:b029:d2:6391:a80f with SMTP id d10-20020a170902b70ab02900d26391a80fmr12896704pls.0.1602260076452;
        Fri, 09 Oct 2020 09:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260076; cv=none;
        d=google.com; s=arc-20160816;
        b=EuX18XYhg01Ty9f24l7sJCR2p/3oYYwLYL9MpsPos3c6tOsKcubHZMi0nwRJTny0lG
         9AFSQMoTmhFsPwoIHgK2KQu1i1agib0ZG4g+bAqYUz8qFMHA1+FosQ8W1G6MVJyMiNWX
         GfaXdSa2DE+PatEKyDkAiktNSHSAjYwlmC8q7UxEAYqqeON5L3vNGNPhhRS2Zl+ggdZy
         ynFkIV/n+A2NtiLH7429rMbMUCXQKPiIkX/SF0gugBAf0mI9cet8aR28KyBT0IPk7eLX
         KADKhnhZSLRwxwWaK0ReOy3oHJbFchVkUvjdLZZFuu5+75yBzGx9fvl1vAffE3Va4Xny
         Ybkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=s78GraQfKANUm9dTCmVzo29Dpzl6ui3oK0KuklmHT+M=;
        b=tFwBsbMQqvjhjvxKThdEtJy3LJvLY086Xy8NdpuxUroyQuwBlXE4IVRZAu6K3F4xCI
         A5DvZK51X+wKZUcclUcU+5Zqha2tou8LOv2TNIlmdxlbbB9/qW0FjzS9A1oy4T/sh+ku
         mk2Zu73zIEmJNPo+ViHVX/xIjHT2d17v/KW6IHFZwkPfjtCAVx/XMU3ZLCIhojdhq3fN
         2ILdTBVmuSJekyOc70c99JYICDkx030ypBI29Qxwlb8KKZnoeoS7OE0Wl7bWS9aMzrkT
         j4uHZF126yTtpgs3Q8iCLEg537mFGjhiOn75qc3tMEtu331C7jKzji+zlU844VS435H9
         ao8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RzNTfPVY;
       spf=pass (google.com: domain of 3biyaxwwkaik5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3bIyAXwwKAIk5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id i4si995722pjj.2.2020.10.09.09.14.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3biyaxwwkaik5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id g24so7130175pfo.1
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:36 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a63:c017:: with SMTP id
 h23mr760549pgg.420.1602260076066; Fri, 09 Oct 2020 09:14:36 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:37 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-29-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 28/29] x86, cpu: disable LTO for cpu.c
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RzNTfPVY;       spf=pass
 (google.com: domain of 3biyaxwwkaik5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3bIyAXwwKAIk5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Clang incorrectly inlines functions with differing stack protector
attributes, which breaks __restore_processor_state() that relies on
stack protector being disabled. This change disables LTO for cpu.c
to work aroung the bug.

Link: https://bugs.llvm.org/show_bug.cgi?id=47479
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/power/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
index 6907b523e856..5f711a441623 100644
--- a/arch/x86/power/Makefile
+++ b/arch/x86/power/Makefile
@@ -5,5 +5,9 @@ OBJECT_FILES_NON_STANDARD_hibernate_asm_$(BITS).o := y
 # itself be stack-protected
 CFLAGS_cpu.o	:= -fno-stack-protector
 
+# Clang may incorrectly inline functions with stack protector enabled into
+# __restore_processor_state(): https://bugs.llvm.org/show_bug.cgi?id=47479
+CFLAGS_REMOVE_cpu.o := $(CC_FLAGS_LTO)
+
 obj-$(CONFIG_PM_SLEEP)		+= cpu.o
 obj-$(CONFIG_HIBERNATION)	+= hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-29-samitolvanen%40google.com.
