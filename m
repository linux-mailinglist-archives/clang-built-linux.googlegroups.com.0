Return-Path: <clang-built-linux+bncBC2ORX645YPRBQO36LWQKGQEEEXYVVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CF9ECAFA
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:19 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id n5sf6862681otq.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646337; cv=pass;
        d=google.com; s=arc-20160816;
        b=BOfj3nouVFApAl8/yOYayadrcLqX2cjXf/YfItnQfiH+xzky8uLn15wFfryXLSVM8F
         klLnSHEHpw8X6Zsr+NFB6Pp87whntaazid3MxP+PxFv0mgryL9+UkV1SUAKzze9szKDL
         6NIrOdVfWaD+MAujhlGZRevWchDl2tdWxBmU/rXvlZNLfo4winpCJUr/q8e5snvelg/d
         A5Lbif0iZemxcgf1bsVxNNwRnQ/aDL/j4fE5333zVsXHluJfUlj8Bx9f84GJ/J1ZxTZb
         L4615uv+ZVmeRL91Oj5LrxYMs+NN2CbGwT5gb/9sLOsV7xZ4L8C0zQFwQCy/+0XKAsAH
         s4GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=FPm0/RwfDLQfPPs+Wb0NTNafvIPYK7DIOkzgaD23/GA=;
        b=KAW058cUtd3QdrjDov9yuxbAexH61CU/DZTkA5+Ctee7OQNpSuMKLUAICDDsZxx7io
         rHY6Ru/b1+UvvUiwITBSm4FyT5CkcUlalHmm3Ufq2MGRyF99KunMo+Ljjq17gEUe9/TF
         lcQOvlK39v3mNUyCww34m0QBJoUTQcC4UvQJQ4Ya2sNkNIUi6Zl7A9dqwIauutdLZ8JP
         e64eTI53eAyLBQs0qBJ1FYybM523DbtAntLdduo9Pc7j9yWIHUIt17LK6Mzm0Cpj/fUB
         m7cczIBpEbh6ilyyqUskF3pt9mB1wVqmeo5Xy1JA6Nq0P2swdIU5D2qSQDqIn6cf8ywW
         QlBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VqPASQjK;
       spf=pass (google.com: domain of 3wk28xqwkaamvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3wK28XQwKAAMvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FPm0/RwfDLQfPPs+Wb0NTNafvIPYK7DIOkzgaD23/GA=;
        b=R5zLypJDl35m1Q20+WQiB+55d75ZaHVniMjappUcKf8M+CQH6nUa2NP6XoCxviHRKp
         oUbVUAcBcj4eA/7r9LTE9qE2pLGa7vJzNvOpjRyJ1e5uvIwb8wgBadRE/12jDlbdbm+q
         kuIuxP/0MBA+Q6AxoCliHpHhV5ds+Nnt7vfR8RcAXi5h0pOn9M5PzwPcs698y5HH6aId
         /w8VEdKHU70/jz9qU1edWJTlG2+dfBE98HwEjSCZ/IB3Ibg69YxVjNV2QEG6AyFI70cK
         8++k8c/b7M4aAq3H6UDDY2H9JL55u8i7+C4Utc7aevlqhsxBsQGSIEzlVZkZW2LXHhlM
         4STg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FPm0/RwfDLQfPPs+Wb0NTNafvIPYK7DIOkzgaD23/GA=;
        b=M3Td8peQSilkXhZF9W5iXT4HDJYsnJpHVPCPnjawk9vQfBJPRwKq9PQetg2sREe9tf
         8cz9kkFBAy1Pomz1cQontr5fHlTqodR653B71pD9n0Yd/6BcNvMw+qFASN1wVvjDw5UB
         PtpIvoRugwN2kXDUOGTnkPfJso5naRJ5BOpudrGP4G/omlWjlBexTyVowGQ4EWWYL1u1
         QUBLIC/oN4CJfFbTdoe9oljerWhXNX814iFOSn30bsfTxfFjWEcprGcgVb2x6HgPR5nC
         yX5pPho0tkx7OH3F4x1aE4fAful8sqbs7cFnmn9G3lHIWspQZwUlmTO4QzUdgStW2TBe
         ychA==
X-Gm-Message-State: APjAAAWbNzfmkeiZIKic1oCfUrkbrOn9JkLCjkQNZLVZ7MRaCp21R5J1
	tzMHkdevS07gdMXUmIERR+A=
X-Google-Smtp-Source: APXvYqzLBLsOiKXTVYUchaMVJJiBx48GJyFFgyGw/BpRPonMJg5OM7ewx3hrh9b33O6Ycjbltg+DCA==
X-Received: by 2002:aca:180e:: with SMTP id h14mr4609061oih.142.1572646337476;
        Fri, 01 Nov 2019 15:12:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5f09:: with SMTP id f9ls1912374oti.13.gmail; Fri, 01 Nov
 2019 15:12:17 -0700 (PDT)
X-Received: by 2002:a05:6830:1f2f:: with SMTP id e15mr1602823oth.148.1572646337176;
        Fri, 01 Nov 2019 15:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646337; cv=none;
        d=google.com; s=arc-20160816;
        b=HthbI9Aj2LOJaGpKyBnGZzlDhOrqxLn7++2U9kGx46NkArWVHQE9RvWd3T4Ka4AptF
         SL5MMGC/fhmrpadB1lkj/1NrhSeOC8tSBEMUMHR4pmM8QgZ1XTOcI+8rkQmYAQmUFMm8
         ZSZO6M2BEbxl9MGyeFftX8ROc+Ss5KILjWntIEKz05WKYS2bbIGQ/zV78RtDTxupfWtg
         yPn+aINfG8gIu0sC3gq6WOVsvU+of3ulnEQJ0AToconhVV5zYbio7LZJivhX1TA2K0Hv
         TJ3QS7UsKLxZsncVQIjNJP/SfwjhGkoanBh9beii+Ge5+yW6SfFbikkHT4ffunB2WWXW
         6Y0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=lxookr95uMT9sOw8S1HRxQFBJ0wSUMPDNTYBScBbdzA=;
        b=gUKQ6zijXOfpQQ+g6ivLw/lSUYlnnTGLdPG2wiSWDIjt378YoAWPHaZT9fT49ba8BF
         fS9wQZFzQIfTvmv1Mz622J0MsU0L/4/3tGVieQKZL97XbU5SL3nEjWi85Im+8FJgYwY0
         tMsYzMBZczC9QFxzcKk+TnLaxrxxFTLsTS9ChGWxSQspeFvNzkeRPgBZ6i7z3kZJtN+t
         63ea2r7E+/7hOzdNfMsSCYx6LzJJbjhF4BTxJtNjX4JN+mS9EQh6J3Yc5Cn6bHYV6krd
         X2+tPpRplVDkzYFuRyetlUbBExsBsX8fMfqvwLQ7kmxf5q0XJvITHd9whDIz1K6ATJRz
         4R8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VqPASQjK;
       spf=pass (google.com: domain of 3wk28xqwkaamvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3wK28XQwKAAMvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id e2si417479otr.5.2019.11.01.15.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wk28xqwkaamvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id u21so8416947pfm.22
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:17 -0700 (PDT)
X-Received: by 2002:a63:d306:: with SMTP id b6mr15679209pgg.338.1572646336234;
 Fri, 01 Nov 2019 15:12:16 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:41 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 08/17] kprobes: fix compilation without CONFIG_KRETPROBES
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VqPASQjK;       spf=pass
 (google.com: domain of 3wk28xqwkaamvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3wK28XQwKAAMvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
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

kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
even if CONFIG_KRETPROBES is not selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 kernel/kprobes.c | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/kernel/kprobes.c b/kernel/kprobes.c
index 53534aa258a6..b5e20a4669b8 100644
--- a/kernel/kprobes.c
+++ b/kernel/kprobes.c
@@ -1829,6 +1829,25 @@ unsigned long __weak arch_deref_entry_point(void *entry)
 	return (unsigned long)entry;
 }
 
+bool __weak arch_kprobe_on_func_entry(unsigned long offset)
+{
+	return !offset;
+}
+
+bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
+{
+	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
+
+	if (IS_ERR(kp_addr))
+		return false;
+
+	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
+						!arch_kprobe_on_func_entry(offset))
+		return false;
+
+	return true;
+}
+
 #ifdef CONFIG_KRETPROBES
 /*
  * This kprobe pre_handler is registered with every kretprobe. When probe
@@ -1885,25 +1904,6 @@ static int pre_handler_kretprobe(struct kprobe *p, struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(pre_handler_kretprobe);
 
-bool __weak arch_kprobe_on_func_entry(unsigned long offset)
-{
-	return !offset;
-}
-
-bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
-{
-	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
-
-	if (IS_ERR(kp_addr))
-		return false;
-
-	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
-						!arch_kprobe_on_func_entry(offset))
-		return false;
-
-	return true;
-}
-
 int register_kretprobe(struct kretprobe *rp)
 {
 	int ret = 0;
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-9-samitolvanen%40google.com.
