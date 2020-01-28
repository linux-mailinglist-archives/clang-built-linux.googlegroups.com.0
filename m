Return-Path: <clang-built-linux+bncBC2ORX645YPRBUEEYLYQKGQEBYPXCCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E19BB14C035
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 19:49:53 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id e66sf11354945ywf.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 10:49:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580237392; cv=pass;
        d=google.com; s=arc-20160816;
        b=EDzyjlCacHY88zka3mp8wDd25XJk0yhBreszTmmLvA097AgFJFhuBTDTZDTgP3lr4l
         jkScurjX0Iz8RB+sgc/GmmagEWE+HVGVGLqezbVf6/4WY3UP4sxXJQThDHAqyAq5t4Q/
         ht8BBpbEq8g4kVUM61qEbGdCqlSHcwtom/KIMZ/bV2p2hTYEBMF7YLgMvfq8/wYsmpzm
         cjrySFs1Ewx7Bw3z+j6dMxdHIxqrZv/8ep7v4eXsvXNNJdEL+LuJHIJ03yr6ZlGa8/fe
         +hxz8wEuBx1tBR4eJ/5ydEb6EOROyoAInhPSEv5QVPx1baU4+bkvMSgroXKq/N/ikO70
         QPjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6UGohC4gHx0LM03xrmXnOXUijLr+NGimTxpNVZrZrZU=;
        b=LXCn6oJ07Iraf54N9j7dPnBttS9v7Rvco3AmzYyQwp2MTJ5X63Lg+1hbYrRtPUAdGD
         FGWuRV7eNCrDeWN5Pb0ys7XC1gDCM6s80o28yoyknlM34Lntk89Eu8q9BpncIxt/TmL4
         8pu8r+L0q04DrNUzlOVjRWQEkDK5cxlI9ee7UJHNNuYm4XG/njW8KVzuOn6AuZcx9+LF
         bJLBg+05w1+GUOqjdbRNFJmilLlEhxDj81kXIGzIEjSrMq1ps82sxO8DBcr2I46c6rCI
         gjem+nAP/T7HXfimNOEFKuWagF0rW9OTSvHksf04x5hS/z4HDEaPyErQtfWNi/TaPjqe
         c/DQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WKzYD9qR;
       spf=pass (google.com: domain of 3t4iwxgwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3T4IwXgwKAA46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6UGohC4gHx0LM03xrmXnOXUijLr+NGimTxpNVZrZrZU=;
        b=YuLQPy/7SyP8/Yh/dHavizDimrVmIuRQuxXzHFiOBBBST5atLjzJYlWCz+apmMuyUb
         /0t0o7imawTnouD60Sn12yR3ImG3n3bAehc0xUIp3bD+qyyFxSATNB7yjppHWRWgUQwl
         2IOy5WEEE4TNhQ0mn5d+rVjRkxnTkqJMAxCQSAsxXCzdkyb7IZDzlbUsiG+b5D27K3G2
         hF91KQ3MoiGrzyEj/ElqPSjoy2tVxEWL6AvteuRNHQ4YSM7Kj+mXZ21BY0qQlAFGpcmo
         Vy7x45oQb0rR0BFjZpax2oHkWncxUJb8i7y0d5d4IMl1vWnAtKPvNlC1mSRn5SLP+RUC
         ZWDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6UGohC4gHx0LM03xrmXnOXUijLr+NGimTxpNVZrZrZU=;
        b=kJMoKzOtygr1JLwRGg+sioDlLj1WNXjIgiTLcVpwH1SNJ5PzEYPnnpHtgVaKs79DuN
         slJ8Zx+TsjjsMR7InkOqM9GtVS4CV2S1Z9E0eQOMlrEZ6Pmf2PsDT2Nal9FwvcXzNirl
         uzVrBsRcr8bSFBcAHOG78vUz5O0jwciWXkbHEFmH+PdQfzNs/zMTz6C3hjQUTVC69zRA
         dCIBZVrAoWP8uaqTeVHw5Jua6WQ8+ZIldMhWXAXlDT/YN2tCyKnjbKlNbi3GZ/qi4m4z
         wPg43aMm3JHO0/G+OYyg4yIKsEPnNVDPDyStuppHJ3A+MqsU52lrz+j3upNQ20IS+VxM
         ANTw==
X-Gm-Message-State: APjAAAU9xQkaagXF6y8mTsgESK8sjF+YMcZYwSZw0Xt8vOxbT7sRiGUp
	cIq5RFDK/TPNoHqRywX8IBk=
X-Google-Smtp-Source: APXvYqxkc84jhkE85ltKZJRojb2Fucs3zKBcQPWMBjRFbs7ZM0cCGrkM5TnFE06tKZ47Y9D39vuEuw==
X-Received: by 2002:a81:6d42:: with SMTP id i63mr18489528ywc.164.1580237392738;
        Tue, 28 Jan 2020 10:49:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cc05:: with SMTP id o5ls2916552ywd.1.gmail; Tue, 28 Jan
 2020 10:49:52 -0800 (PST)
X-Received: by 2002:a81:98f:: with SMTP id 137mr12564862ywj.151.1580237392379;
        Tue, 28 Jan 2020 10:49:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580237392; cv=none;
        d=google.com; s=arc-20160816;
        b=bEK518F3qnpv6X6z7NkODAl1b0HnS7U106dpLv8CmvXiS5FX55NaviWhRsd6k/Sroc
         W/60bUOY+tckpveqwQqWCcJveoJ5rFGuUI5jeKeWYuB8mpKzeXh0mujJaawX0NzuVBaz
         8Hi9aXYx81nrR7r+OrexBZnyzczSUD4FsV/ofMEEmTgBRdt2nLLVefdZEcL8M3Q72hwi
         paT9d8JipE6ENrulkDgHelym53eNWURITAaHnvp3kdrxtjqHX0vHXnLFQO+t6IG39bwY
         2q19uobig+Ky0jyNGIHEB9eelGYbp4eLvdmJIHeCgAssUvztqYQhSVq6Hm2ZuOPZ/JnI
         D9rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=3z69QiWDrqEiuvPmX+boefS4xCQlVDQqcKUHkZHcYiM=;
        b=hdp7YaBM8F393J4UxGAcPKeh6KBNQFyurfwPHW7tAMmx75laXhFGxldJLreg4ppSSL
         03o7rHI0JteYfd8YpKXwkXtFyyQngns1fojmWbwa/WsrlNNXs0Mg3WgzREbnwrRIc8uQ
         OkR2XyiuteGTCJT7RJMXMROyWAjS4P61Ui7ZNYotEQdsY0t4U7QtkY7DYdXkid7fq8eK
         edvT/Aoxia6PA9qm3uf0Ti60APHREEvbNRwmruU5KAH1+zz9i7nZF5+s0zfpqFUeh0jy
         KKh/nkZ+JgdOK6r0pZwlWpzxbsEQqrKnVRJPzGvj3LZ9y1kiBOf2SfufV6PVrX3j39zB
         fGyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WKzYD9qR;
       spf=pass (google.com: domain of 3t4iwxgwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3T4IwXgwKAA46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id 144si994315ybe.3.2020.01.28.10.49.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 10:49:52 -0800 (PST)
Received-SPF: pass (google.com: domain of 3t4iwxgwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id k8so1857054pjs.9
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 10:49:52 -0800 (PST)
X-Received: by 2002:a65:64c6:: with SMTP id t6mr25413296pgv.392.1580237391528;
 Tue, 28 Jan 2020 10:49:51 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:28 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 05/11] arm64: reserve x18 from general allocation with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WKzYD9qR;       spf=pass
 (google.com: domain of 3t4iwxgwkaa46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3T4IwXgwKAA46o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
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

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index dca1a97751ab..ab26b448faa9 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -65,6 +65,10 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128184934.77625-6-samitolvanen%40google.com.
