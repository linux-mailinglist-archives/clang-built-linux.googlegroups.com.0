Return-Path: <clang-built-linux+bncBC2ORX645YPRBEPZWHZAKGQE5VK3PDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id C80D1163813
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:08:50 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id g9sf1859875qvy.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:08:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070929; cv=pass;
        d=google.com; s=arc-20160816;
        b=JqhBuwcoj3cS/0THVNz8iS17Rol+gmdx06zackiW/aWLLhX5mHL+/OMMKJRKqMANjp
         PuHfbi92vPp0L9Eg6x790rY6wBAnY4BqlVynIUCahGTfKGvy/hfqHyYKjWrOT49H7oru
         tLtuXyGW35PwngS4EGR6NfOpz7Jl1l4dbnZEx4afJtL7PHurUvldH7MUGyzuZ7QsVq+g
         QEPq8S7eSMB8r6VGSYwy+OwskXxUIGStx2p7gPkolO4fDtZl9H+tU1mP2iLQgfuwppzr
         QvazDoWX9E8KdY1qfDB6mGw9PmzC6fgWQSMAeFSaNkqPveAJQLamrpv+b2GXycnT3+Ha
         8ENw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=mzmqcGJ66xamT9HFQWzK62HNjnJUtBAkcKMRcYdHNDk=;
        b=R1zq2L1EliGIsPqxp1MVbv8dcg5iGO4o7Ak7QlYuc5wB/M7Rdff65woazhRIsHjkFb
         ZiWR6rsKGwPTgaXIiHqQlIjQE23zGc8RPR8MuC7S7f5HBQwGz4UILoqHbC8MtY8igc3o
         pujmuqe/l9KdoTrjF+XkNNc11P7PfiRZ86Cm0D0sx9P60yxBeE/QFYe9ylgp2z8JmXdO
         FxmCp+ny5J/nCMuOZLtCgIsyqeqg7h6NxjIVCprhyO0VHygGgPN6orth5f56uaIwwRPQ
         PVSfeCi8PIe3Lf3uh2cK8YAlH0LfpwiB03Wrltme0D1AJfkNViFU9nXmxfrtnUWwBIl7
         x5xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b5n4a+qz;
       spf=pass (google.com: domain of 3khxmxgwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3kHxMXgwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mzmqcGJ66xamT9HFQWzK62HNjnJUtBAkcKMRcYdHNDk=;
        b=hnr2DJLrnzn6CH48OzydkwV93EICofllLUEKonvmU3ycYJx1GdyX98llZYQqH5vE4q
         VCu7UHfi7BJejUmMj+I9OvuxrBxBKgBBnvcXzbYg6s4Rl/VbnhH7SG5JZKI4qXrjvenu
         OW20axFYDcTpHGAElXpxQL9dYPTFLy8CCSN9nY6JxsrT1jYxdJaIzzCnn6EcKeCukeGk
         6QYswDC7Ri2JwRziEP6yU6kvxJn2gvWqxIm3dL4LXtU4RzEY9yGifbhva0kGvZ27iSHi
         dPcLlEB80duiktCAtnPe5SPMgA/6irnFFVD/idWW5W1BL5rGG0ucqPrvRUDBVM5JUQmM
         jH3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mzmqcGJ66xamT9HFQWzK62HNjnJUtBAkcKMRcYdHNDk=;
        b=aycCygNt8Y5CfkJlzm5n6NzRisg769iBm483ALKiNuzQcynnp+9XK8uVVmXvLq/MvN
         +0jZKXd325T+WUUQKSVRQvPVw4xa4NYYM5Y9V8KaI6UwRS5zLWu8HWn9EOybTQuD/GA9
         qg9J1wvNYVKXwK79cScM/X/TdRoAa1rsHlERrUWBedV021cGfDXLFEXDoJu75euqiTGC
         DnaXYcxg7K9oqzcNQFou7lFng81VkwzRDXisFtUkKSXL69oqduq9CfR3eijExakf41Pn
         136rIgprye5Ri5MR6EKKLpU4H2L6YVuIK6NHHOVKOvSczvweaxJi0HxJI5eodO2TNvTg
         sK1Q==
X-Gm-Message-State: APjAAAVMeIh9asiv/Lu9Q3wZDysE1NQ4Z67P0fjineypOoHmx86kXok9
	upF/wE4FGIA9DEyzy1Txs5Y=
X-Google-Smtp-Source: APXvYqzqzv8rss8+ATPowVQBSfKlPvy/K66ynoTxL+DXzmebrf48HY8eaLKVqs0UrrUlv+kh8zsAYw==
X-Received: by 2002:a0c:f6c8:: with SMTP id d8mr19309228qvo.234.1582070929446;
        Tue, 18 Feb 2020 16:08:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7583:: with SMTP id s3ls2074735qtq.7.gmail; Tue, 18 Feb
 2020 16:08:49 -0800 (PST)
X-Received: by 2002:aed:2be4:: with SMTP id e91mr20136761qtd.148.1582070929096;
        Tue, 18 Feb 2020 16:08:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070929; cv=none;
        d=google.com; s=arc-20160816;
        b=QWDTFNz9XboAmUYb+Y9CieqKVcs+Wrf5M6Z/QAo1uT/wc+9ARnpPMGx5wUj+VukpBa
         TIHgGKvUpQWyR3vv3AO2EjEcXl67MlY7aAiwizf5rdsHHi0XAXli1LhVSsAHe1KmAaP5
         8Qg0r65XbLVzROcEbmBAhqXs+texeUHBM/6+LpyBZ72p4mey/xOdSvFXepTwaYnF5zZr
         wJ5Tv1mnsWHQ2Qx3IQxIt4ImH7awAb1fsHcgeXQP0TfRStdQmnXbEyPz0ZP8UU0SSNaQ
         it8UAY5cudfmdJssW29JQDtXmsSg8K6NkmejeqLe7aBG4CUvyZhBuqb0/XNTPf9/QwWm
         aaNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=tR8HWR8eyR6LK2Q8Pau54PB7Q0F7v08515rGGzIGLyo=;
        b=TK35JB7x/tqTPQElQY8bJ9XAe4RNtSBVd2lMkrsU6RSeMRIFo0uRibScaLajYGejm2
         DnfBKvAw3+GiWNLgREWfk68KkHuX4h9VznWyv+OdAp4svZg8njAdRm423M6xEglyi08P
         Rpa2sOBwtRyowkYZIVXVqpvcWP6IhzARIZb8ACaai/4200kLeAo8nEniNsqYQ/JJkkUc
         M5BKHwVuH59223eX08wJSrol/AwUwUYMxQZwbrAbsIFTeDkYa5csNOSNhQ4BrY5lZCH1
         nRt2FTZWIe2TI6nz6YPnfhLJUcHJZuvmxDXg3cCeIuXJctNiS0PIEfkvCW0qKZKRH9ue
         QXyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b5n4a+qz;
       spf=pass (google.com: domain of 3khxmxgwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3kHxMXgwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id g23si12136qki.4.2020.02.18.16.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:08:49 -0800 (PST)
Received-SPF: pass (google.com: domain of 3khxmxgwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id x199so14293298pfc.10
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:08:49 -0800 (PST)
X-Received: by 2002:a63:3d44:: with SMTP id k65mr4554387pga.349.1582070928011;
 Tue, 18 Feb 2020 16:08:48 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:11 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 06/12] arm64: preserve x18 when CPU is suspended
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
 header.i=@google.com header.s=20161025 header.b=b5n4a+qz;       spf=pass
 (google.com: domain of 3khxmxgwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3kHxMXgwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/suspend.h |  2 +-
 arch/arm64/mm/proc.S             | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
index 8939c87c4dce..0cde2f473971 100644
--- a/arch/arm64/include/asm/suspend.h
+++ b/arch/arm64/include/asm/suspend.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_SUSPEND_H
 #define __ASM_SUSPEND_H
 
-#define NR_CTX_REGS 12
+#define NR_CTX_REGS 13
 #define NR_CALLEE_SAVED_REGS 12
 
 /*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index aafed6902411..7d37e3c70ff5 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -56,6 +56,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 SYM_FUNC_START(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -80,6 +82,11 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+	/*
+	 * Save x18 as it may be used as a platform register, e.g. by shadow
+	 * call stack.
+	 */
+	str	x18, [x0, #96]
 	ret
 SYM_FUNC_END(cpu_do_suspend)
 
@@ -96,6 +103,13 @@ SYM_FUNC_START(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+	/*
+	 * Restore x18, as it may be used as a platform register, and clear
+	 * the buffer to minimize the risk of exposure when used for shadow
+	 * call stack.
+	 */
+	ldr	x18, [x0, #96]
+	str	xzr, [x0, #96]
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-7-samitolvanen%40google.com.
