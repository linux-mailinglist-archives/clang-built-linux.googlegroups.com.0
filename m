Return-Path: <clang-built-linux+bncBC2ORX645YPRBDFA5TWQKGQEU4G57OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CAFEB528
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:10 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id r13sf4279944pls.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540428; cv=pass;
        d=google.com; s=arc-20160816;
        b=OdQ7Gu73wAJIhFtiIGV5vA1A146OE/G4I26yJ97QXwQbvMRAytNLzZ/7lv0hGP6gPJ
         9SsuxYbz8FAfrv7HaUI1ss9AsdFpWurSYk59FPmUHQcnIhW0qcUP2pNOdql9aEq0VnPU
         6EIx7llBnJXEb3GhIrpOq3g5UjtTAtakmx+jD5Y6i1yUxHFgqDRUt8sP6zGJgQHxD+zS
         yzL1gd2i3Gm5v/Va5DJwXrbI+/HdLnRuiabDU9zFTjxX+mvkk0EQlvPlmHMs1WAYfIUf
         zgzsn8Xk/w4cB9+T8438ZQ5S+URezZSbSOyGUALY/Lp7XcDGBB0mw7X2/+bd6HK8BKr+
         ZgPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/Ir7oVNrhdjgzZ19k3lqwzEVn4sCAsYunC+Ep9pxt+k=;
        b=C1pJieGz4nVuCEFB4jLrWT4WmpcSHEjfV4RJUVCCuwgrqA2EkNn1vFlxZOAZ1ldZXZ
         VXjq3/numobD9LEkUlsNpmcI+RAOFdnS7ZcEq4lcuqueoO/VxEDTrNP8EI5nSlFfz8mu
         qDigFKOniUvZ4WvIyUzrqs80M/TL0gJtshaF6orFH6FMkfXf5cMPO2z/+2pzG9XDi0K3
         mMmqLxiU8tW4c0yiyQhtaupcKdBK9mWLIjjIwrSW0I6Pzn/a+oZSUOBmVXyVghb3k7Kv
         bENFtobp3ytsaGBmNKaCLWuXiX0Guk1SN5PCswOPjQmpnDKj+RwSlYY2FBOER41b3t8c
         ekCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q6nZNOFX;
       spf=pass (google.com: domain of 3cxc7xqwkaaw4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3CxC7XQwKAAw4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Ir7oVNrhdjgzZ19k3lqwzEVn4sCAsYunC+Ep9pxt+k=;
        b=dzvk05syz5en9n99IGWWkvnaEN7v/CABnCvmto98ZLSvdNCeNag6PSGFTLkY24oSxO
         tLWhTb8/kO6074VKtcJX0b/maNdzA7XOC5JHoBmyNqZUP9yR25RL9p9UbpumXgZWlMaa
         j76hA09AcXFucTuQHKIDzcFQf0OsttaZZmu/T79vqY5+0xVQxMHt0VFJ2bVVd28Cnc/J
         upaJUdklUhQWCcUOOnwFxqGP/wpiF3qYpG3zhnxaV5CN0+G3DttHC8IOYYvvHNf/QR+k
         WYn9Kkzzoul2CTNFsaTXA07QA4FYGj0qp5Wc9TlPZsZpyBE9Ui+vmrE7reCSR8hufqyG
         /1kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Ir7oVNrhdjgzZ19k3lqwzEVn4sCAsYunC+Ep9pxt+k=;
        b=KBCAWb2sGMMJ1XNnv6axiSBDjTdnJeErfsNdgWO/fWqX6EWQqOHfWBF+DX4t1V8yTM
         I0rlslqOYCajPU725nd3MKDU7BBT4mvNZK3vOBWzQet9GBea6MY/jXCq+4/wPN0zFJ3m
         9XLxlMr5aMD/Sa4QwljXsEIql+QgoeUsddJkAct7K6WrvPnGAqsAU86sd6p3BqamX7y0
         7myQ+G/p2J9UUo02ZrOoWvmjb39t8lpUDh2rG1xE1Cpke6rwni4jktpo8f1eRiDuToI+
         58wOO45MAScwll7Wkpz5s+MSztwwhbWXiN1yrbvs1DwpbAHDFM4Nam8RFTnwRDzYLHgP
         8qkw==
X-Gm-Message-State: APjAAAWY0/OvGXaJd8/X+Kh/KfEuZYe7+zj7tDyoPAehIaY5DO/OzDWj
	rDoQMgQTr2fL6HH1CYWr2fs=
X-Google-Smtp-Source: APXvYqzJdOhXBFEnQrU76I7GcRP99M7RKCOEZc1qaVyxC/pShW9K+oTP6wYgl6KqoJTJzI6tT3qNvw==
X-Received: by 2002:a17:90a:338f:: with SMTP id n15mr417324pjb.6.1572540428797;
        Thu, 31 Oct 2019 09:47:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:62da:: with SMTP id m26ls877042pgv.10.gmail; Thu, 31 Oct
 2019 09:47:08 -0700 (PDT)
X-Received: by 2002:a63:4c57:: with SMTP id m23mr7998533pgl.207.1572540428299;
        Thu, 31 Oct 2019 09:47:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540428; cv=none;
        d=google.com; s=arc-20160816;
        b=adnHa0Uj2BjFWXCmviOlZR63Srw7m+kxaMJog7WAxZUPHpJEWzNIKjxyJeUn8gkHLV
         suLfwUCq4ZTcFDSd5NcYDnBxtmWOg1b8s3EQ+viyW07Ku1G+KqPEqJUvEJp0wcs115u9
         Z01aKO107zVbpit+7Gugg+5PIYB6G9xdkC7u6PcgyxcZnYYQO+fXqreEqXEmx9Lmken7
         awc3QjcJqn1PKpMn7OQU/v/ftkCB/f2YNuNc7JWR1qC90Yn0JNtjFwFQs/BLQu8bFrk6
         CTHQhtwkMfXRJQOyG1NnXIoy4FVQNRqlC8PJG5sD5GJlfsGucbdfhFgZF5BAA1PFQ71I
         VSow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=K9E/B478ig/3FT/HPhGFdlo0v28kyi4gF0t5BJVte+4=;
        b=okQJGjzQ6L1HAKHVcgwc2IFJgke1SCBg65IPVIzEul8cS+uyQVb6iwNh9o+O8+mWbf
         ps5/6xGuYLwyBNLyxrSvcvOYZlS697CpiD2imOitULc3Y/Jx4q5vStJ1iZgr987nMgYJ
         /LQIlQVzcZ2SnSYrlxW0QC5NLoG9jGtF/inPQJo3uVnPbTeTkrLJ1I5525wrTPd0xG7l
         N7xUI8YBCxhm23r4P1JYw5KghftRwWuoxsEwAfOKriF+USCd6SOyuve2t6gL9IVkV3OB
         gr5Sbp0p2jyc7IAAbxPCrDjRgxa86RQ4F5w8nVWCxySx0bLrXm+6UO25O6BZUOor/UQf
         MQEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q6nZNOFX;
       spf=pass (google.com: domain of 3cxc7xqwkaaw4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3CxC7XQwKAAw4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id c11si387819pjn.3.2019.10.31.09.47.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cxc7xqwkaaw4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id o3so2461172pgb.16
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:08 -0700 (PDT)
X-Received: by 2002:a63:e145:: with SMTP id h5mr7826628pgk.447.1572540427770;
 Thu, 31 Oct 2019 09:47:07 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:29 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 09/17] arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
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
 header.i=@google.com header.s=20161025 header.b=Q6nZNOFX;       spf=pass
 (google.com: domain of 3cxc7xqwkaaw4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3CxC7XQwKAAw4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
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

This allows CONFIG_KRETPROBES to be disabled without disabling
kprobes entirely.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/probes/kprobes.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c4452827419b..98230ae979ca 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
 	return (void *)orig_ret_address;
 }
 
+#ifdef CONFIG_KRETPROBES
 void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
 				      struct pt_regs *regs)
 {
@@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
 {
 	return 0;
 }
+#endif
 
 int __init arch_init_kprobes(void)
 {
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-10-samitolvanen%40google.com.
