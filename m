Return-Path: <clang-built-linux+bncBC2ORX645YPRBPNO7H2AKGQEJMKPQKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D26C1B1B9F
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:27 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id q67sf10853377oia.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435326; cv=pass;
        d=google.com; s=arc-20160816;
        b=kGvj25XJgH6lokoJ8pm8lPDcygEBf//aMiTwl2vcXJPmdpdSZFAJWnHnePAPjZL6TF
         36h4tRyPD+oGxeJ0Nw1upIYN7bDaPTXozcLzgjteYWYhEoeZ/33YRL2eo3hYw8ONqy2V
         7n8tAgQZYHfX/KC7CIp6FXU0yAu5MeM2medgUZC9smebquG/MNegfuPUBkWV6xMqxr51
         32YLwbBQ0WwzUp4F66v4DJp46gsbs/tsbDVhgdMf6m6B8IpWIsCG5c/uY2FhTeRZBG1a
         U/+4i420qCTdaBQpqAyv+3NVUNLvXXnum2OP0fqmEyZLIaPUqh5oarLdZY+V/tGqKoAi
         DJNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=mBtFztJQcazH+XHwxHQmYO8z503gqZEiJET6RFds23E=;
        b=yc3gLHhlmZGnE7LPTztSypFrZXR4zM/bKYdLRyFQ1QhXEtX3dI72FySU/OlJplJCp5
         +TppjVmWk7qHk6h8+ydUuzLfm5xvkQJU1PREDIcVlwuYehUX2WI84fXggYeASiUFVpb6
         Ssz0V7RCr+kSflXkBMSDWvKogNONJwMPNqjAXM4LNG2mijGeJw4vY5frCTS6i2AGiZk/
         KYaV3ufvBbJoNU+vMDQ9hjPH9hm8yJvDw9TDWka9o5D92r6tGVuAy00jjTYk4G5R/k62
         3goD2w/D+Tfn3e+vVPrTdxEW0SfeVar2CD9yTrGT2qdnquK6+GIulsMh6wxK6cDIroXq
         sCbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q3Znj2JK;
       spf=pass (google.com: domain of 3pfeexgwkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3PFeeXgwKAF8P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mBtFztJQcazH+XHwxHQmYO8z503gqZEiJET6RFds23E=;
        b=H6pOljY3tGjfPG4uLAaWd21nghH3fPvb2I24Nimq8qTGST+dRjWY7HMVIqK3RZ3zmQ
         tFzFw4BYnregltCaAjjRY7hA/fRFOQY8Cgqhc/LIEJ747ZddQp46IfBBM1wprnW1eR1A
         EEcby/T9mP890BeP59c6KLMcbxjz5ddLF4gteMlnmyuKzM9pwGQC6e96oFIyp6YuYrcC
         fa7AMCJl3xjVX6U4LK18ycevLJ6rbYFGTeYInVezpP1pzUVHqGfmsiqtaTzlTtQ28diu
         XT1E2hyetePjE1us5BLE1i4Xi5UqRvCkPwtTFEkqGPQDi0V1JziiaqGyO0fdDTF1Ryse
         xHdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mBtFztJQcazH+XHwxHQmYO8z503gqZEiJET6RFds23E=;
        b=nUhlua9WTkOS8WXmHPq+tMzFbYjXOo7HcfiRlkVhmT5dXBCQC72qYuZyARh+WCupam
         nqZXmjYHkFeZ7uiQl5gXLcSQDEVVwk+PX3GgNqL+9XGWLso2SClccpQLgVcygr7yJv7Q
         5qyz+vBo1b0mGonFjwnz5FlamA79JEnTYTjEh9N8V+UlzbAKrlwjDTapoaHtCidRZJK9
         TpiVtTCDjkxXjmzpoSlQlpgfvBXTvuCnSMPtTAuk4Y5hrCPp6mcDqY6/6FJi58+FRxHy
         Zh7wbimJHl/HFkuZyOtYEi7FMTpGLXX5abo/VgQWzKufju7E1sKWNYehBJUcAQvg7om+
         Hb9w==
X-Gm-Message-State: AGi0PubXnaMMeJOlXCBGcA/AMQi4vCzKQ+OoYic910FnkMEwwB8XfNb7
	lHL47wq7CEUnNiRhelq/8J0=
X-Google-Smtp-Source: APiQypL35cGHTWYnPY0qYtshvbCwuBNgbmvsU03ZPugHfC5utqu8nndMLLKVUojtMSTJCFQB9CUMhA==
X-Received: by 2002:a05:6830:188:: with SMTP id q8mr5468739ota.152.1587435325256;
        Mon, 20 Apr 2020 19:15:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls3139583oif.3.gmail; Mon, 20
 Apr 2020 19:15:25 -0700 (PDT)
X-Received: by 2002:aca:3b82:: with SMTP id i124mr1691232oia.61.1587435324897;
        Mon, 20 Apr 2020 19:15:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435324; cv=none;
        d=google.com; s=arc-20160816;
        b=mY06euAjzAo919dQVQtn7HLRuvrkhP9+ytwShl0I1l8dkn+bemNpCg3OxwKbwy2c3p
         a+I7Hfb5709LVqQF2QgvE8ZHFH6SaQIqnU4Gg+U5wcwdBRVyJaiOkop4IFsZ9Ij77uSR
         yWlM9GCjiqY23ZY7na56e1BWlLcL6hPmgWG3L1Bc651QFkc4osThqjVbmvt3fQVR6H3s
         LW/bZFx8cVrJLG71HWw2vQKwfZj6udyjd3cPYtdfVTy+E0HneB7CFGJlOVrdwFQNOKFb
         jgpxImp0+OSHuWF37JFZ/wr6Vo5qvMnldirvmG0fPcwTHTjKVf1IaphZwJMTICz43Pwd
         WhfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=fmDIIvZxhD4Qz7j+wQz+cg0h7Uav/MFkAMZG+HSiNhc=;
        b=GOH+rQXO1q0uXCkrhpTVrmkK/V3wZRCYFdioreBpsm6PtmNgjfvmRzviA5edfBE3tV
         dRA+Pky3y+n+BeX6wpUeMAATRubbgdkcc3OlWrQbsofUUI8D5l5hfd2b0hdFYl1n00Ty
         SeSNReOWGlmg5KMWQFTqtafsLJ4vRIxDyL9tDarKHN2EDQHPC3GSpGu7ZiHogrOlfkE6
         1heYEpKqWN6WwISlFb9+onwSX4bxub8bFmBW9gAjJDutl6ETU4AvVukDrQa0InkPv3nr
         wOKjEV95VPKNw/uGN108R5PUEzoV631ssO8nrhq230TFoh8Plu8q7gNVuIu0nqxbNjuw
         yTJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q3Znj2JK;
       spf=pass (google.com: domain of 3pfeexgwkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3PFeeXgwKAF8P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id f139si120581oig.5.2020.04.20.19.15.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pfeexgwkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id e22so11695435pgm.22
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:24 -0700 (PDT)
X-Received: by 2002:a65:6859:: with SMTP id q25mr13037367pgt.437.1587435324149;
 Mon, 20 Apr 2020 19:15:24 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:52 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 11/12] arm64: scs: add shadow stacks for SDEI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q3Znj2JK;       spf=pass
 (google.com: domain of 3pfeexgwkaf8p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3PFeeXgwKAF8P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
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

This change adds per-CPU shadow call stacks for the SDEI handler.
Similarly to how the kernel stacks are handled, we add separate shadow
stacks for normal and critical events.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/entry.S | 14 +++++++++++++-
 arch/arm64/kernel/scs.c   |  5 +++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 14f0ff763b39..9f7be489d26d 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1058,13 +1058,16 @@ SYM_CODE_START(__sdei_asm_handler)
 
 	mov	x19, x1
 
+#if defined(CONFIG_VMAP_STACK) || defined(CONFIG_SHADOW_CALL_STACK)
+	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
+#endif
+
 #ifdef CONFIG_VMAP_STACK
 	/*
 	 * entry.S may have been using sp as a scratch register, find whether
 	 * this is a normal or critical event and switch to the appropriate
 	 * stack for this CPU.
 	 */
-	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
 	cbnz	w4, 1f
 	ldr_this_cpu dst=x5, sym=sdei_stack_normal_ptr, tmp=x6
 	b	2f
@@ -1074,6 +1077,15 @@ SYM_CODE_START(__sdei_asm_handler)
 	mov	sp, x5
 #endif
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Use a separate shadow call stack for normal and critical events */
+	cbnz	w4, 3f
+	adr_this_cpu dst=x18, sym=sdei_shadow_call_stack_normal, tmp=x6
+	b	4f
+3:	adr_this_cpu dst=x18, sym=sdei_shadow_call_stack_critical, tmp=x6
+4:
+#endif
+
 	/*
 	 * We may have interrupted userspace, or a guest, or exit-from or
 	 * return-to either of these. We can't trust sp_el0, restore it.
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
index 086ad97bba86..656262736eca 100644
--- a/arch/arm64/kernel/scs.c
+++ b/arch/arm64/kernel/scs.c
@@ -14,3 +14,8 @@
 		__aligned(SCS_SIZE)
 
 DEFINE_SCS(irq_shadow_call_stack);
+
+#ifdef CONFIG_ARM_SDE_INTERFACE
+DEFINE_SCS(sdei_shadow_call_stack_normal);
+DEFINE_SCS(sdei_shadow_call_stack_critical);
+#endif
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-12-samitolvanen%40google.com.
