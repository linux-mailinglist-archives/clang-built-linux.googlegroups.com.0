Return-Path: <clang-built-linux+bncBC2ORX645YPRBCFA5TWQKGQEIPW2CMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD62EB526
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:05 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id a1sf5019907pfn.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540424; cv=pass;
        d=google.com; s=arc-20160816;
        b=jMLRth5S1uAxT1K6F6dD9PHOH3SwH9lcaz74foBl5tjOPjrZgnqWffOCnVPf/apFGU
         WRMVbhxP2xbwj0UH6gEEWMk7UskHm4RxLf4Q4VLQvCQtNIhbLe1pyucgULNTRt9o0YJO
         Uo6h40aPtv/5Ud1hnRwynOxdBTJvCTqbIa0mkTe/D5aHCzni5ByLkazZHe007qUADmg0
         Q2yNpIbZQW2T+3wWBEcbyY1jEebkeBKnW1ycMc8gGnWUCJ2X1Ciq8mKVouqFDIvl0Piv
         63drZVCdhMXRMApSsNUvPQE7XaRKFrxMq5tKWYxXfu4C/CtfaJUZ0hTMjABnj7LHvA1m
         ScOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=1YJohq7QXS67kVZ/okMBXA0HUzoOopF7veY6BN+nkT4=;
        b=I7tVKiHXu1cD+1OSBvb2QiauIlaK79/FVbL/z/ZhJQR6AMa4nEI6FskN66316FjPbU
         A47YvWEEUKy4w6iT95euj3tHYubdRRE2im52GWI8UMAKDp6XQatmyIteHYAfXOlYDf/+
         SXgP5BzeTO3R8OwU2O97BjBt+Q53COQtAzDEeCysOPNVA4L6BlwtzT0qARqX8d2K3g0w
         B049uqHARo3GdAW4u+euJ4zU3Xx+suIwf7FBZx+vImLmT3wpUH0cW+Mh1JaKXB8c7Y+/
         NvXaoBR00WIE0x1ZJSIjvHF74CB/5M6tPuHtrXsxTIyCCvO5Zx39/sM0y9AZWoFmIUng
         A+5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L6nedrmE;
       spf=pass (google.com: domain of 3bhc7xqwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3BhC7XQwKAAczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1YJohq7QXS67kVZ/okMBXA0HUzoOopF7veY6BN+nkT4=;
        b=ptAjum9QFb7WbdjYrsZd4NnqfJbyY6lDiJvhDFtoeaia64dhLPzTRcPc/oheZ79yUA
         /+AFfVXpgvENGcGF0wibHXjzbIucjvKrT6nTEH3DSBYoj3tX0dreorEiFTeFgPPtC3HM
         4GNxfQZA6hA1PYhd5r/M4BywzPXYhMcnzJCPGDZiQIgltETKFiwpOt21dBlfXfwoHuCB
         AkeOlXc1cgp0V/CcmDPawEuIiMgW14Uuu7oktj2WtIBid0ta87OCtrFQPhYiPvmBZ2Tn
         NI1ZsDd7NuXATf/vZTiWyB5GIwCQs8J+riwx3J+whqNzW7FCyLbxk3Q3ECIurNpG8m0d
         2PGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1YJohq7QXS67kVZ/okMBXA0HUzoOopF7veY6BN+nkT4=;
        b=ErHL6D1FnFUtgvOh8LOFk+gvJZukatlMQiONpT84hE3NSsKqqfx4AE2EJOOzOAnlJW
         G5vwq6w4RuV+0YvAz6IOhmcItFPbFGfoSDjG76CC0gY2QX+LpgOApvtrC2D/ZlWwFbxI
         enAx2Rwt2fTOG0dbonsF6DV+mn7WdqhwTQ7f3WiYdoYeoEZ7eOCJSZqgvFcXLsXkpe7n
         +EKBzTLj/yZfqSJTQjtmL78vjMogcpF+QHCTxk/FduB9g63jM02jeKNzJWqorUwtlCRk
         vyizaG3L3hAWSDMnkvyUDMnV0ucNPDaBsqVDmyXP/FPFzIArWGOGQ/G4Y3NmUQJpFHS1
         oa0w==
X-Gm-Message-State: APjAAAXSzR6BixQW3OxZylzt7gxo7wkOn4TZsiTJwbOGiJZHKPIXzxKf
	R5xzgBc5AriEv9ai4cphkZs=
X-Google-Smtp-Source: APXvYqykrCzacM8Z+BvdnJVTUe19xdyoqwfwESku5wJa672EJymvcI6HCJzS66SiMMGkqqhIXcyOVA==
X-Received: by 2002:a17:902:409:: with SMTP id 9mr7798445ple.25.1572540424184;
        Thu, 31 Oct 2019 09:47:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3687:: with SMTP id d129ls923871pfa.13.gmail; Thu, 31
 Oct 2019 09:47:03 -0700 (PDT)
X-Received: by 2002:a63:950c:: with SMTP id p12mr8109801pgd.238.1572540423735;
        Thu, 31 Oct 2019 09:47:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540423; cv=none;
        d=google.com; s=arc-20160816;
        b=oFIxq3ffcz/ddfh9OuMTP4Wn6X4zN3A7yaVE2dyeGLlRU42s8Eqw4/nfu1OlHF/oaj
         0vgL9ie9k/eD2xNa+HifMzAimoVCPdcV4y6qRD4SPIcLxU1R/eSaYkpkBFN/8htsjttH
         XmWYCDEYs8rTeQFqK0wHlHu2lJvCGQu84NKIyPDxFrmKjugA7wfr0ql1EkA8SN0MGh81
         k0GxF9aMSMyuenpCetw3Gp1QESdbgDc5zms3yRj0G5K2is/Y6vT5VXH+M9JtCvKWjOxR
         CNijnnDIAbw66LDL7w+q2ZWAHVUQEvtvrSbNtMp5Tn5eUCpIQ2g/6X4/zFEBmY5lHXdk
         XSoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ISQCDuiClH+Ob0sv0IF5h/3w79WcDO0VBPNi/N63ddM=;
        b=CH3MiQjH8+H3dH/ZX2P8VjmqBD52CghhTZGRWt421rfXzbUFhoGNTaY6Dwdlf1bXuK
         +mhRdGzVjWjlgxAvOZOZLe1NU8mWj6T+XGae5FXyyFQ0yNXs4oaCCCcFsmXq58VaIAhy
         JfDWEXxEsKiMRnO2D5/2gz/CNtTg5CB8B8T9q7SlUNiEG689oGJ/hvIimpCMHfH62FnH
         0jnRRj+x/ajmYw4uKJF+NerRXDIHm/gqVcopDx722lYiLnp/XzNXbAaHYkp2zsYoKIId
         d88KLeKcVG3Rz4hRPf2Vc4vv1GQtSOLHYu4AAxww7K3eztDtG+O2zNXpbyhnSi4Dys5X
         tH8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L6nedrmE;
       spf=pass (google.com: domain of 3bhc7xqwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3BhC7XQwKAAczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc4a.google.com (mail-yw1-xc4a.google.com. [2607:f8b0:4864:20::c4a])
        by gmr-mx.google.com with ESMTPS id b17si288587plz.1.2019.10.31.09.47.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bhc7xqwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::c4a as permitted sender) client-ip=2607:f8b0:4864:20::c4a;
Received: by mail-yw1-xc4a.google.com with SMTP id m36so4876499ywh.7
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:03 -0700 (PDT)
X-Received: by 2002:a0d:e987:: with SMTP id s129mr5018878ywe.111.1572540422670;
 Thu, 31 Oct 2019 09:47:02 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:27 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 07/17] scs: add support for stack usage debugging
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L6nedrmE;       spf=pass
 (google.com: domain of 3bhc7xqwkaaczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::c4a as permitted sender) smtp.mailfrom=3BhC7XQwKAAczhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 7780fc4e29ac..67c43af627d1 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -167,6 +167,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(tsk);
+	uintptr_t s = (uintptr_t)p;
+
+	while (p < end && *p)
+		p++;
+
+	return (uintptr_t)p - s;
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
+		pr_info("%s: highest shadow stack usage %lu bytes\n",
+			__func__, used);
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
 	return *scs_magic(tsk) != SCS_END_MAGIC;
@@ -181,6 +219,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-8-samitolvanen%40google.com.
