Return-Path: <clang-built-linux+bncBC2ORX645YPRBO4DTT2QKGQESXSMCBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED8E1BA988
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:01:01 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id 18sf17709895pfu.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:01:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003260; cv=pass;
        d=google.com; s=arc-20160816;
        b=AFjHHDZKax9xg8vPkUdUJHTqzb0ITidOFCMBhknjC+OJQJHTK7uIGqSPCaBDvlgUXe
         zsqxSp4sEvQwWI78hBuUR8yk/UFsdUr/O87LpUXjmZ7+3D7Wi88v6A9CciWEclX54DvW
         g9z/x6G2mk75nPvrC7vAQidA6ePGsWLOVlOY2DLNveYWUKPWcSCKECrvw6mFzBwhDjDI
         CIHvZgpCTRhF0WV1nTgJdY0HWcmicD0zH4qOt8zCXhJTukxjYFqbfhLX83J0lqmHsGPB
         lOKz1RhOpfkbMoTvy5K253Bjyt4JwWmGn+PMeQZEMgtl6EySBJx7N/vH1qLDUv2mDTqd
         K+2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=WZr2qHBpbkWSxDO1pq1WE6qZoBkiX4RMlNORyMAj7Gk=;
        b=zX6nxH+SL3Oy9XihVA1uKS0W9TrBIEl14aKYDq6vhFHzm5Jm4nzlx2RnABj0Lo6Dwt
         R8EZXubNmQzbDTAoQgLuKuxh1i/OKtB6t4Ptt75ZaTj0Fkk+m6amu2U4uHAbYKbzyLRB
         XPlTdE83W5tYez9S67fFA8BzNVjAmtYKtSlJYSi4LpybA+QT9ywbdXQUY4Ix6cAumuUJ
         akP8F94P2a5uTS0Ntg7LlyTcaGvXzbA5XDEUKDtzcN6Vc4KQJoaXosPOuy60byOSUsT8
         8/z6928MJl3pNgfwTaG+eH3qEogO1113nNvkAKivQejuxoB3UpRwDdReUR+cOibn/dpM
         0oQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CRokN2oO;
       spf=pass (google.com: domain of 3uggnxgwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ugGnXgwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WZr2qHBpbkWSxDO1pq1WE6qZoBkiX4RMlNORyMAj7Gk=;
        b=h2jQXU1zaXUu6x34YP6zlnL00WKTu3QF4BiW3gUODGBlVpJDwlWg0s4vMKlFYOWqsd
         ALKNH+dHjh2O8Mybt2Uk5nZNGeSnigYEEUr/7RipF9YIcdv9A7+gnRK30wHVPyBeg8K8
         uByq2qwzP5VtstdNQbfcsizAPkldDgyBDR+qx/g8ltSxfc/NdO/xfYdk2ieNkz6Y/dD9
         lVp1iJ5B4LIyDKD5Z0ufQWc85zzW9XeEWCeHHfuW6ZeaI1PMh4gTG5b/ONbTLH8O3wzA
         Np0t8AAyeavzVEYyOb3PFyRMDUeHku9+KdQnJOKt9S2VRYzwTHcx+p+vWU9A8n6d9A1b
         TbMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WZr2qHBpbkWSxDO1pq1WE6qZoBkiX4RMlNORyMAj7Gk=;
        b=MAFa/76cMqKVpKAo5wYhD2yTpBW3t4dLi9ihLQiO5gzTQ3OnkoFnj2ukopsEE+e7cW
         rrIbHM/uk7BLKTV7tRfMcW0buDgOZKIS4w+0+RtF3Z2n3oG4mMKbbDNpgQEfkrkDT9Up
         dZkaIQr2o8Jti5MSv8ian6mvj/EZTIaqxsVPbnq8FIcrcyTge7UtydAxyvg40u9SNNR9
         pgqJ+cCrOt/xxvRyacCzBZChVDGN781RyO0SzXaSCdcBZACiojFAoGakyyJqnfP1Mkrv
         cJ6ffZ3YOucyHCp8y5Cz87nykI1cK7Y2ybZbFdqD8fc3aE77ndvvh0HbdqSvODIrMJk3
         LIqw==
X-Gm-Message-State: AGi0PuaIX5467F+xVkApsgJ3Y1shAajgnnqoMD1bvpsGnIddjScfkC8r
	c2oeJZjJUJjSWQCInRQoUOY=
X-Google-Smtp-Source: APiQypIuB8Fw9gOuWtPxsrBgc3oJJo0h5cfpy1eZhdMrgID6VOa/vdHmyt1il3Mx47qtP/PU414x9w==
X-Received: by 2002:a63:7b05:: with SMTP id w5mr24354147pgc.220.1588003260009;
        Mon, 27 Apr 2020 09:01:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9117:: with SMTP id 23ls14585737pfh.0.gmail; Mon, 27 Apr
 2020 09:00:59 -0700 (PDT)
X-Received: by 2002:a63:e74b:: with SMTP id j11mr24217907pgk.145.1588003259400;
        Mon, 27 Apr 2020 09:00:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003259; cv=none;
        d=google.com; s=arc-20160816;
        b=G6lGGZqLlhD48FASSlAc5yhFcRi5q7eQLOqkQCTBNxD3ZvPbN6DCPBiJJnilWsKgwv
         ANo9MgZ2bEcInJjyUYioSgEL4U02APFx+JyDiiQd1AQDiGwE7N2SK/T5fdNaQWE5BFsF
         gLne+M3Fb55T9KakepiLBVjZkf7juH7c80Rhg+znQSwBJ8ZJQ2LKEybK7kuM30Mhar9T
         QWh7OHypWTUKEGV/pUSR89TNM72qGqFQuIQNJPTW6X4bHmqZprp77SZpA390PzwC3a39
         3Ys3YD88WTM2DxkIybWmdOhPRog3CtYhoml9Zapo7aJ24xN+HFWNn3x1HR75rqd4kB2N
         45yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=qkETA9PcFfLLgtHJjON9o2tnpUEMYOCdGfYROMcqbgY=;
        b=npywNJOlxlIbmTdjB4gzVwZJrcojPI5BVwfG4LfeA/9he8S+gHt6+NQapCZmnm1ikG
         8QTYaLpgS/pQ6zEISHAIIUyb69RZZjRRsMK15YW+Zsy76pgqe7u2JzvS2zm9OyiVbBHn
         MrzheJZ1hXpxLSsJRdKZ+piiQsZjV9dboAxuuTAYcunKGSWyRzjy90AWwu7QnrQm3XjO
         UzgRU+cmXfPcYFJrxwX7NnZuy7SrTmLI5LPx1U0PQ47MvSnOwQoRx3J6yNzIH/neWvjL
         N94hDI3VTRJcrKeMXxmL0SCZXAlcwqT4YNImjdcgAnL7TpJFQwBbaGqSC0nUkLd41luE
         W8UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CRokN2oO;
       spf=pass (google.com: domain of 3uggnxgwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ugGnXgwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id x5si517999pjo.0.2020.04.27.09.00.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uggnxgwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id t2so20785093ybq.11
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:59 -0700 (PDT)
X-Received: by 2002:a25:d14c:: with SMTP id i73mr9231289ybg.116.1588003258779;
 Mon, 27 Apr 2020 09:00:58 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:17 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 11/12] arm64: scs: add shadow stacks for SDEI
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
 header.i=@google.com header.s=20161025 header.b=CRokN2oO;       spf=pass
 (google.com: domain of 3uggnxgwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ugGnXgwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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
index 244268d5ae47..cb0516e6f963 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1049,13 +1049,16 @@ SYM_CODE_START(__sdei_asm_handler)
 
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
@@ -1065,6 +1068,15 @@ SYM_CODE_START(__sdei_asm_handler)
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
index acc6741d1a40..adc97f826fab 100644
--- a/arch/arm64/kernel/scs.c
+++ b/arch/arm64/kernel/scs.c
@@ -13,3 +13,8 @@
 	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
 
 DEFINE_SCS(irq_shadow_call_stack);
+
+#ifdef CONFIG_ARM_SDE_INTERFACE
+DEFINE_SCS(sdei_shadow_call_stack_normal);
+DEFINE_SCS(sdei_shadow_call_stack_critical);
+#endif
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-12-samitolvanen%40google.com.
