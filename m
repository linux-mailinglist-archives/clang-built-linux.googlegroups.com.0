Return-Path: <clang-built-linux+bncBC2ORX645YPRBN5FVPXQKGQEP43VPXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 787DC1158FF
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:16 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id e15sf5842627ioh.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670455; cv=pass;
        d=google.com; s=arc-20160816;
        b=bF5YEFiXveFpgFo5+scBmh8Gzz7gtz1aXPx8LpvH1XccubTmQ2P9Ipxb3aXReC9fYt
         zCceC5XP7RA2l/2UnopeSxycdagL+IrIso+h/Jo+p3KMdl7T4YlUIdhB3Ftso5grp3wk
         +ap7xTOA3UaeymyTmWUtOq4zoriHpv75nOOg3jp270BE8DLMCl6UF94GI2a4tlpsa5Rn
         bNdW3RIdVpIJ9WDcrO0H+oF7I6ITKvjt/C6OLBCKVGBIN0096HAPsE7h13zKmgXSJJYP
         Egxzll6NzEuBkAKG02o+p1kaWAIkpLGeg0Gmep7lYl+tHyjINXqTSuAARcBu7uoNFXWE
         9saA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=jehusbmUWbwPo7hVoNatDCpuS0uQrtPm1125lwRqKU8=;
        b=P/eBx2Ut2+7AGAoh1pDNM9IE5h9mBm0smt4iFGhHa6GkPgao2gjdzLvX4yu84Lkl20
         bvTioulrnC6ejQOB3jLGKIJ+JhGybBqp8JEedO4k7oPLUYwbnv8oWhGOebzFlGFnpdIW
         2lWrUZ/5vofdgQLmiGUKcgunQ35or9pCSkl4I8YZTgsvCLx80ZXzlzEr4wq0pUrXlaKf
         Eprn4sleRTFbI2FMCzF2IsjR2rBXaMOyuUeSeISUdGQqsvi+uOPgPgAwWJ1qvldlh+8A
         nYIlL3ZPSak1grRUW6QhIKz5FqzL9zX3lwsyKHlrzJSpA0urCfztbBqbQN/QXw1wr4Yr
         sjzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SXuPCZw5;
       spf=pass (google.com: domain of 3ttlqxqwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ttLqXQwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jehusbmUWbwPo7hVoNatDCpuS0uQrtPm1125lwRqKU8=;
        b=dnVhn8Z1/0xl2Mdn40EeuY9tvtAPYlwse/tmq0KBA6FRqT/yg8t/RyRMymcNATtStp
         u8+UzwfupOIzNDd2xIIn8IH2dWhgzmY49ziuJojvuKwj8309Cgs+JePJuux34OjtETUb
         ByNXkqe9ZHNJaiM/O47US+WYygRBAarUWmn/ahnxlH9WgnfeBQ0+VHYQfvZdqmZGZ7d6
         3D1zNLsotI1WGostkbt0OrH44aci46w2c0Y8uB8iD+TRZzLGf4jFToAQvXb4WI3oLOmf
         KpH9lT8Oazd6WCinJ3/wBPkNpS8ybBkAMj6PpGlGxJLD+oW4x0fV80LrIDonag6x6+MR
         oHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jehusbmUWbwPo7hVoNatDCpuS0uQrtPm1125lwRqKU8=;
        b=Ooqgm6U1ojnbc0qAoGsJ6TmTfGyc9Ola97ZWaT7eFzlPhwCJPtDJGNoktyqjNCTU6D
         tnPC5RAYqP25OLEZnwXQEjNBSj/K/UpirbLqIJXRJVDjjTrDdd1QbvdTdLUs4gf0u2CP
         1bgSQsvAnF2/oA3SXPMpFzqCr/kNPToTR47DSKZeQgwV2paS+kU8BQyb37ibg3BhIb4K
         iDC1Bg98X8CqJu4LcPAvr8+eD2fmSLqTkAMdkiiZlpDKt/6ad0GOm1n//4XXAaO0/P/t
         jD+LYywFfEDvZgO1ceDvM0gERv7byodZoetf8D8X/VKraPbcf9+jduMYdIV6bylgOBHM
         LqaA==
X-Gm-Message-State: APjAAAUkwW4uqVtsDBBsT84KA/EiddK9vstnfq22py6CZx1T8zkFBStB
	HxLWtj4AZ5wYDIoICwyRirQ=
X-Google-Smtp-Source: APXvYqxqAlBKnNYgs/s0cWkPbr8OjRgFL8mH7D3vgIjlCLedZIXE0XUDjhbr6XMMYvmJdDZvw8jjeg==
X-Received: by 2002:a02:2909:: with SMTP id p9mr16057302jap.59.1575670455246;
        Fri, 06 Dec 2019 14:14:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:85c7:: with SMTP id d65ls647990jai.2.gmail; Fri, 06 Dec
 2019 14:14:14 -0800 (PST)
X-Received: by 2002:a05:6638:72c:: with SMTP id j12mr16411708jad.136.1575670454756;
        Fri, 06 Dec 2019 14:14:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670454; cv=none;
        d=google.com; s=arc-20160816;
        b=RSaIuoRoB5Fe0org4UeVxr6378WpA9mPsZbxh2ZT7MHQpsKEZjBTz/dJzmQAs4/wKf
         Bx5D7HLZLYwMrNyu92wkaEa52bvmpEGkjWY2+giMN8HA0DpQCKcQZxD4S8sRM5f/H/h0
         6yK+kc7cmbcbotoGpHzdXZROl9s2/AW71DJ6nklIMVKFztIe8C/P32RlRQRLxhDn8r9e
         A2W6LHv94wjRYqEN+OBNvlGGESGuH/qv6CuHNZ80NL89tXG8/bNMl/xRt4sSkvNz6uka
         7WlzvFThdU2MI4XRN2XJWSf/nQCIK8J6iQDbOYRcXKl5uMgjWuRTX9661gGjs0tXN1RF
         H9RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=dSkqIg9MhTEqSRuUPD+wLwf3dmJwcSH5rhdG+lQGY0Y=;
        b=OiZmUJgntNIwcdLaAZPpXx8OSGMz+d8QjvWbt+LU2pejGFVPXvHodWWx03tdP7R+7d
         9+9e8oysFjI/DSuHhK1zDenMePbyzVovUgbEJhUGt3FIJDaQ0NLzK3Ys/e3hBBkS4aVN
         p+CoOlOISue4TU20980VaVK3Rqr5qMxJICKJyBySDFkv4a/ncrZKA3F9Bi3QgmLBaG+/
         S82ycuScGbptaVGaFaQj36UGO625s5RIJnlhOheKD1e1Zd7RLmfJ3d/4vuAds4QKnleQ
         OQvQpr16r0AVOf+JYj/Uc5ZkPkiM1GeUBnl3PHqhWVk94g5MzrxFDoa7khFwI0elKBUo
         iGHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SXuPCZw5;
       spf=pass (google.com: domain of 3ttlqxqwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ttLqXQwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id g12si684760iok.4.2019.12.06.14.14.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:14 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ttlqxqwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 13so4803544pfj.4
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:14 -0800 (PST)
X-Received: by 2002:a63:4b52:: with SMTP id k18mr5960727pgl.371.1575670454000;
 Fri, 06 Dec 2019 14:14:14 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:43 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 07/15] scs: add support for stack usage debugging
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=SXuPCZw5;       spf=pass
 (google.com: domain of 3ttlqxqwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ttLqXQwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
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

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
also prints out the highest shadow stack usage per process.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 5245e992c692..ad74d13f2c0f 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -184,6 +184,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(p);
+	unsigned long s = (unsigned long)p;
+
+	while (p < end && READ_ONCE_NOCHECK(*p))
+		p++;
+
+	return (unsigned long)p - s;
+}
+
+static void scs_check_usage(struct task_struct *tsk)
+{
+	static DEFINE_SPINLOCK(lock);
+	static unsigned long highest;
+	unsigned long used = scs_used(tsk);
+
+	if (used <= highest)
+		return;
+
+	spin_lock(&lock);
+
+	if (used > highest) {
+		pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
+			tsk->comm, task_pid_nr(tsk), used);
+		highest = used;
+	}
+
+	spin_unlock(&lock);
+}
+#else
+static inline void scs_check_usage(struct task_struct *tsk)
+{
+}
+#endif
+
 bool scs_corrupted(struct task_struct *tsk)
 {
 	unsigned long *magic = scs_magic(__scs_base(tsk));
@@ -200,6 +238,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-8-samitolvanen%40google.com.
