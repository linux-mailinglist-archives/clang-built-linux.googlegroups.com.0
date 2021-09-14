Return-Path: <clang-built-linux+bncBC2ORX645YPRBUHHQOFAMGQEQBHLVXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A38C40B78D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:13 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id x19-20020a05620a099300b003f64d79cbbasf718885qkx.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646672; cv=pass;
        d=google.com; s=arc-20160816;
        b=sGi+w8tKOtFL5JIUQcbwuX8XlIPbXw8XinIpB8jJGCwSKC8Vk0ZNKa/JH8tR2gh0ph
         GGKF5ofWcJh+8NFlB0+7n11Kh+TGHwkoire6apgyd/PU0sU6QaMbCAQCxssOE2Dp7z3+
         3YVaIRO9pcscOq8Pk5Y3PnAF4B3m4L3fWUf0O7DGIgXip9YutBFF1A7WoxZThaJknKX4
         0+u1xseP5+S67XiJTrTc5hIeoJtL6U27XktqHbCkzgtKfZaQlZV4/znCgm0utS5LQ3vD
         HVmpiKed8ic6UPu14Wv5S8wd93HHsZZv7jzinCx7rvW5JjGy4UD22vuvkf0eCKfjBNhe
         ZNbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=RnvNU1EKQMxGcKwVCC49Y05XQmNHul5nN/DgFAQqc9M=;
        b=xAlAXngA9JSbeDznjsWkC4QkFgXqQPKJFcq4sCmcQl26bQEqPnvsTg6taXv0aDr2Ey
         DA2EYZ58Whq2nuP4S2qdRDOIVGKTBv/zbMnyf4RlxkXGG5nCdCyMYH6hUybrMTBn0wqq
         ujruq6KpgbhSjVWNR4+qpxQ6/LxtLyp090wL28eYonaOglvCgagKg7bZYw8vijK2SI8w
         PzxFI4Xkgel8t2muGthKV+bWI9lT2g1kT78Ly6BQBK/1sDbyIL35ICEKkuQjUcGqq7KZ
         4AiN+oGG85TLbbTcCBYiJ3VW2rOJNOo1yhJCItDAruNTxxk1B/XcuinqPsV8OpBn+F6p
         nrIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=rRw1wY8x;
       spf=pass (google.com: domain of 3z_nayqwkamo8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3z_NAYQwKAMo8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RnvNU1EKQMxGcKwVCC49Y05XQmNHul5nN/DgFAQqc9M=;
        b=nqCv4fi9rBNap2iVfNDv5v5DfSqwYaCQfmEywC9H26mcrqCF9O5MtDf7G+dcawFJuz
         DKsfixHz4rZFST3QPNgKcftgJ0IaWOtzsz1xP3FR31EOFsDBDW6cp/HJkXJ8j+BVHU2H
         3jWD3DDMeuq15uJ9uJdMwEjpojhAHrGADN/7wA4g1UQCHlh83rdcUw81FNkPb5rRLBpD
         FDUgODPzcVt/dveSsNe3aUyR7UPX8iaKCV+FPUem9VVHfjdz2h+EmTIbV6ahRjmT0kEW
         eUKZYKYjjnl1MHEPEmSIsps4I0FDkUWBiv2NNqW3ThdT+c8Jb5VB5Te/y0Kxhtq2/UpY
         U6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RnvNU1EKQMxGcKwVCC49Y05XQmNHul5nN/DgFAQqc9M=;
        b=n0AdqhTRm9++2v6l7C32hFcKXwmtoNvq1qlUlmf18ALOz8mLVcufOb/hrm2DpAmtop
         HEXIx0TEnYMGYUsRhVEF7F9BgYtsDfgd/5Xx8JIPli/GRzX2ikRJiN8ewosTb4nPBcJN
         r6D+9R+Nbp/KHMrYT25z4QhR+ksk+7R5ZzJiqFXHm8hwEz2E091lvyFvKjdpsfII2rNR
         8M1Oo7yehLvKoDVvjLN+yE17TtfSnK+toO/WC1P4UvVWvU5EW6puzLhxuygfRanrZZbv
         aHw9y+34FdHWWZTfYQh4i6Um3vDTvnAQ/oq78uxZcQSXaKjve9AsyUZp2fGX6QJHy6nh
         InUw==
X-Gm-Message-State: AOAM530xc4G98sk4Qn0KlVwwemyD8r1PUdeW208XOIpubgkSEaLO5WqD
	HF7/aNl2Bk9UZEFvd2TnR64=
X-Google-Smtp-Source: ABdhPJw/DQN3+O2g/4kNb40haSXGNoMAhwQ3nGJOg87XS2ZwdzFD+97XNh7Sfdz8jLWzOsfmbaH2eg==
X-Received: by 2002:ac8:ccb:: with SMTP id o11mr6410272qti.240.1631646672138;
        Tue, 14 Sep 2021 12:11:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1a13:: with SMTP id bk19ls7954462qkb.3.gmail; Tue,
 14 Sep 2021 12:11:11 -0700 (PDT)
X-Received: by 2002:a05:620a:95e:: with SMTP id w30mr6781664qkw.157.1631646671604;
        Tue, 14 Sep 2021 12:11:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646671; cv=none;
        d=google.com; s=arc-20160816;
        b=DdL95KEON8f4D/y8K1wojdqvnCjO8wrqmhKd5Dc4NbbwGZIEx39g2+0Y/UbYDUQQyC
         HgWCfd8CJY9YKnGwvZIr/SHfGp0lWBLC9LpM/FiZA7keiJIjsCCXXWbm5EkvWuX0NL8Z
         OhLWP934vn+qqj+xEEhYCwxpXPlXhnGjMuQ2Bi65CLO4nodaanpBdFDmiHpX+mma2Xjk
         Z3OxPFomCCfmnab3B5JKFo7V6pmy0c19IjSBCAeCHinLI0gTch1Hhptwca/Pqs3ksZiv
         qgbp8VZ+15LBQGvADL82Wu851A+myn+jW7Gx22RVOb5mguEPEDr81ZJL5bPTlESgQXQI
         NVWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5q55M6RvtBEJ7bIEFnF7x+P56Y4KPBvG/74gMuSxay0=;
        b=ESEIbcg0IdnBKFZGm54l27nNiJiBvY+MYjOm7lL0ToJwrCuriiQ6AV3R0wR0wWb1TA
         cf1zXeDkNZa1cHsWTlqigHX6u5HeG1Jud2xajre6cFQxjixSLoe8Cb1JhopJJpIt6sVn
         sf/x4Zx5RlHF0osSrpCDAH0s7IIEuT/jQHO6uouQRx+iFvos2KSSxnb6M2+PLoMsHg0E
         ZnlNFqLy0Y5eO0rGC3+wzOdtMYCV9MozfV1AQhdhn4Vt+eNQ1VNh8GeSzeTP3sRa4EVt
         4w9LWnISLhHRRjz4ku8YCnobPQ7lBfecIb0R0mNy3kGD0f+gPNBIjUOPyYqZ48CkMi8F
         Y7yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=rRw1wY8x;
       spf=pass (google.com: domain of 3z_nayqwkamo8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3z_NAYQwKAMo8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id 6si1154901qkh.3.2021.09.14.12.11.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3z_nayqwkamo8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id h9-20020a05621413a900b0037a2d3eaf8fso778889qvz.8
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:11 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:2d1:: with SMTP id
 g17mr6884704qvu.63.1631646671398; Tue, 14 Sep 2021 12:11:11 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:39 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 10/16] x86/extable: Mark handlers __cficanonical
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=rRw1wY8x;       spf=pass
 (google.com: domain of 3z_nayqwkamo8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3z_NAYQwKAMo8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
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

Exception tables are populated in assembly code, but the handlers are
called in fixup_exception, which trips indirect call checking with
CONFIG_CFI_CLANG. Mark the handlers __cficanonical to allow addresses
taken in assembly to pass CFI checking.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/mm/extable.c | 64 ++++++++++++++++++++++++-------------------
 1 file changed, 36 insertions(+), 28 deletions(-)

diff --git a/arch/x86/mm/extable.c b/arch/x86/mm/extable.c
index e1664e9f969c..d16912dcbb4e 100644
--- a/arch/x86/mm/extable.c
+++ b/arch/x86/mm/extable.c
@@ -24,16 +24,18 @@ ex_fixup_handler(const struct exception_table_entry *x)
 	return (ex_handler_t)((unsigned long)&x->handler + x->handler);
 }
 
-__visible bool ex_handler_default(const struct exception_table_entry *fixup,
-				  struct pt_regs *regs, int trapnr,
-				  unsigned long error_code,
-				  unsigned long fault_addr)
+__visible __cficanonical
+bool ex_handler_default(const struct exception_table_entry *fixup,
+			struct pt_regs *regs, int trapnr,
+			unsigned long error_code,
+			unsigned long fault_addr)
 {
 	regs->ip = ex_fixup_addr(fixup);
 	return true;
 }
 EXPORT_SYMBOL(ex_handler_default);
 
+__visible __cficanonical
 __visible bool ex_handler_fault(const struct exception_table_entry *fixup,
 				struct pt_regs *regs, int trapnr,
 				unsigned long error_code,
@@ -55,10 +57,11 @@ EXPORT_SYMBOL_GPL(ex_handler_fault);
  * of vulnerability by restoring from the initial state (essentially, zeroing
  * out all the FPU registers) if we can't restore from the task's FPU state.
  */
-__visible bool ex_handler_fprestore(const struct exception_table_entry *fixup,
-				    struct pt_regs *regs, int trapnr,
-				    unsigned long error_code,
-				    unsigned long fault_addr)
+__visible __cficanonical
+bool ex_handler_fprestore(const struct exception_table_entry *fixup,
+			  struct pt_regs *regs, int trapnr,
+			  unsigned long error_code,
+			  unsigned long fault_addr)
 {
 	regs->ip = ex_fixup_addr(fixup);
 
@@ -70,10 +73,11 @@ __visible bool ex_handler_fprestore(const struct exception_table_entry *fixup,
 }
 EXPORT_SYMBOL_GPL(ex_handler_fprestore);
 
-__visible bool ex_handler_uaccess(const struct exception_table_entry *fixup,
-				  struct pt_regs *regs, int trapnr,
-				  unsigned long error_code,
-				  unsigned long fault_addr)
+__visible __cficanonical
+bool ex_handler_uaccess(const struct exception_table_entry *fixup,
+			struct pt_regs *regs, int trapnr,
+			unsigned long error_code,
+			unsigned long fault_addr)
 {
 	WARN_ONCE(trapnr == X86_TRAP_GP, "General protection fault in user access. Non-canonical address?");
 	regs->ip = ex_fixup_addr(fixup);
@@ -81,10 +85,11 @@ __visible bool ex_handler_uaccess(const struct exception_table_entry *fixup,
 }
 EXPORT_SYMBOL(ex_handler_uaccess);
 
-__visible bool ex_handler_copy(const struct exception_table_entry *fixup,
-			       struct pt_regs *regs, int trapnr,
-			       unsigned long error_code,
-			       unsigned long fault_addr)
+__visible __cficanonical
+bool ex_handler_copy(const struct exception_table_entry *fixup,
+		     struct pt_regs *regs, int trapnr,
+		     unsigned long error_code,
+		     unsigned long fault_addr)
 {
 	WARN_ONCE(trapnr == X86_TRAP_GP, "General protection fault in user access. Non-canonical address?");
 	regs->ip = ex_fixup_addr(fixup);
@@ -93,10 +98,11 @@ __visible bool ex_handler_copy(const struct exception_table_entry *fixup,
 }
 EXPORT_SYMBOL(ex_handler_copy);
 
-__visible bool ex_handler_rdmsr_unsafe(const struct exception_table_entry *fixup,
-				       struct pt_regs *regs, int trapnr,
-				       unsigned long error_code,
-				       unsigned long fault_addr)
+__visible __cficanonical
+bool ex_handler_rdmsr_unsafe(const struct exception_table_entry *fixup,
+			     struct pt_regs *regs, int trapnr,
+			     unsigned long error_code,
+			     unsigned long fault_addr)
 {
 	if (pr_warn_once("unchecked MSR access error: RDMSR from 0x%x at rIP: 0x%lx (%pS)\n",
 			 (unsigned int)regs->cx, regs->ip, (void *)regs->ip))
@@ -110,10 +116,11 @@ __visible bool ex_handler_rdmsr_unsafe(const struct exception_table_entry *fixup
 }
 EXPORT_SYMBOL(ex_handler_rdmsr_unsafe);
 
-__visible bool ex_handler_wrmsr_unsafe(const struct exception_table_entry *fixup,
-				       struct pt_regs *regs, int trapnr,
-				       unsigned long error_code,
-				       unsigned long fault_addr)
+__visible __cficanonical
+bool ex_handler_wrmsr_unsafe(const struct exception_table_entry *fixup,
+			     struct pt_regs *regs, int trapnr,
+			     unsigned long error_code,
+			     unsigned long fault_addr)
 {
 	if (pr_warn_once("unchecked MSR access error: WRMSR to 0x%x (tried to write 0x%08x%08x) at rIP: 0x%lx (%pS)\n",
 			 (unsigned int)regs->cx, (unsigned int)regs->dx,
@@ -126,10 +133,11 @@ __visible bool ex_handler_wrmsr_unsafe(const struct exception_table_entry *fixup
 }
 EXPORT_SYMBOL(ex_handler_wrmsr_unsafe);
 
-__visible bool ex_handler_clear_fs(const struct exception_table_entry *fixup,
-				   struct pt_regs *regs, int trapnr,
-				   unsigned long error_code,
-				   unsigned long fault_addr)
+__visible __cficanonical
+bool ex_handler_clear_fs(const struct exception_table_entry *fixup,
+			 struct pt_regs *regs, int trapnr,
+			 unsigned long error_code,
+			 unsigned long fault_addr)
 {
 	if (static_cpu_has(X86_BUG_NULL_SEG))
 		asm volatile ("mov %0, %%fs" : : "rm" (__USER_DS));
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-11-samitolvanen%40google.com.
