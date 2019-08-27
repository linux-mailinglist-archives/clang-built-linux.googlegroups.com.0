Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXNKS3VQKGQEFFW2PLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id B23A09F44C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:41:02 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id o21sf221305pgd.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 13:41:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566938461; cv=pass;
        d=google.com; s=arc-20160816;
        b=APDtfR9VPoA+WKnnK9ZmbF8fnwbwLABlOsHzgQLKP2EljJvXfI0h5pxR6ZgR3oxgXO
         xjVLDTxP8RuvTsiewpxkMzORvRTcOYExcLKds9NEa+dVFbwThp+9bCOftOKbS/yIqlBo
         W7i1qEp91hUQD6K1/TvPgR1Byoy94LPo+LhYG4qePfwcCEj1j1VniDPu2Ph9FeLFFD24
         RuYGtbcDDj0KLpZ0vHonFPWEIqwxW6/0ig5nEM008Rb6UxJlemV2/dV64af2G/nCanzB
         7OcerAgmqIfP8r6yOQLnleaoJby8AcXQC+v0kZsKz4x2Fe3Ryn7vrguN4uHuo1DhW0jD
         WM/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nhAGttv9N7Y35M4CADkMo9lnOCKQiZ68gVk3zgqAizA=;
        b=qZMcT4btX/+lk3VUvM9BcfVVWG91FKnb9yI8sT0LxmWYm63IVdy1aaJIURPsVuGqe+
         xE/84SqKjVqFhQT0vJdJcMncjkC613m66YcGMoJWdLSOM3GKoC7FQXw7poZdgyi9Kjg+
         msR2MoOxh/oF99UiPbh+7MonSP2ELdLx+FKYXCXQqysfnkacRCszsuWFGR5NQiGEmuUm
         qckDBbfTMteRH4d+NtvFRIWEsVI2tiZWVXFfH7TADTumq1+ZvrBn9Kv/f8gksbESESxL
         U1X0/uEDuTzGlJyLS4lrnzw9CnhQC6dxclNqLYv4jajPDQ9FWjT/s9HRVQ5w2sZWuvX/
         f6wQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X9bA6RYW;
       spf=pass (google.com: domain of 3xjvlxqwkaa82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3XJVlXQwKAA82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nhAGttv9N7Y35M4CADkMo9lnOCKQiZ68gVk3zgqAizA=;
        b=Tx+Z0Sh2+DhmrBRIdzAgm1btP2m+lM2hirKdK1XzFJQqhnMIae08/m1O+Vk9iHIorq
         FeEG3d0dsVf9VDwAyHwiBxlMkg+aA8Ki2KXY2ITvWJttMrGn06d1zyYm0Qvq+8XZ0mCa
         vxrBYhJNAPJ1hk2coMBOk+tD1kgHRYJbmDHqso/9dUVsElY9yzvYfr6v3vOCe0k9Mcxe
         v+YlvhB4UDI9w3Sigj3eBmoD8kZEV+t6Vu+lvkc/8myBxDc5/MV9JguCQeKA0adwBt39
         kntK3PQz0cHr164l/Dgn62fxSGKeJ2vW83M0k3crx8+3QVYHIHnN1RoWzcohdLcaQL0z
         8NjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nhAGttv9N7Y35M4CADkMo9lnOCKQiZ68gVk3zgqAizA=;
        b=o04dQFzcf/xoVKjSPjDoA5NFOC34l9CFCg3YRSSmSh1bRtdijC2iTeiJozpVqtu73c
         x1NIbi3mcHldeyMXLYCkL8PvcoRSgWrJvrAHkTXUeEYIt32VlyriHHEqJabY879QySQ4
         8M6TBjWTiXpIkNpxZbHFKyP8dw2gDGD4FdnrEJ0Ael9Y212CtRwHA2aa9zXm/IbDlh6T
         7oHCB9zQtyaKyxRYKGmg9fxPJq51EBMkLLd49QzW1bWvK8sJAdgFGCFfXrGTWsrMu6bs
         +3wYnO8lydCKW85XR9B3tbKByj0z/uA3lO4L03tMEcS2CWDgJdbFapexw09AqPkDKXEU
         38hA==
X-Gm-Message-State: APjAAAWvpRRyKhAlL7VA00kO3WG1f302M3hWqNk/tieqRloTxkIz2iK2
	tnDH1+eAmC7tJWL88Eb3REU=
X-Google-Smtp-Source: APXvYqwzxoHKIaA3uns2AgGdwdnEaKux75S/HPPVBry9uNAki5Ng5XFh6zmeKwvjAezCvtgUc4thog==
X-Received: by 2002:a17:90a:cb89:: with SMTP id a9mr597402pju.93.1566938461429;
        Tue, 27 Aug 2019 13:41:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e589:: with SMTP id cl9ls69681plb.2.gmail; Tue, 27
 Aug 2019 13:41:01 -0700 (PDT)
X-Received: by 2002:a17:902:85:: with SMTP id a5mr826142pla.213.1566938461121;
        Tue, 27 Aug 2019 13:41:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566938461; cv=none;
        d=google.com; s=arc-20160816;
        b=PU4JYywscPK50eHK7rMMFB0skZHoQpvYJw4vZ7s1vVQ+L0cyNBpKPE2WMJ3gfYLgnK
         w4JA9Ql8xIjZixqaJkjwf2Rha6WPvoyh/Ii9xBy7hQWUfQPz4hch2GgzHF4hAaW3IF5N
         2n9+oPsJWZpyI5BuIWpZaexOaq30515ESX4VwOforHo5MXRM5zd6r/6pxAvI3OyKOVtc
         Me87VSbMzVB+Wj8MiBZq05x9lc/HzjkpupvYRZ09JSZt4okP7upX+HrM2T/ncbcYyswj
         H3ZxUpfYBz5O0kkr+nLWZFrxpmERRhKx5GT9OdH6vs6ifqUfiecGkYdRbJlS0Nt1J5Xl
         4Sbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=c85yaSBCcgJs92ECoOpY1wTN4fvezGR1R2LzkXxYTJA=;
        b=vOdQRdAS3jpExYt7IdxOxxkWQYjHRfimBomey9tJsoJTYv2oajX7Xs3f4TmitMBqTl
         e/rm2MXJsiA+V8WpYhfVEvjLqxepi4frZf0eVLC8+kFSf7aDZph7UqTmQczpvElDfHwX
         uRsu9DfzHbE0sRCw8pdsu+OUfVqGlRo+gKqOMJPHF3qemDpgXKiLX6wkiwEl0ZiGp8bp
         CHoaxXmT81oLnH3k44T70v2J1H8pTR92njk6rsoKlZ7RGkBQ9q26N7giu2KyiLrNOi8K
         t4GnQN21zf+7CyaygVE4CYsFTvjFOHoOAAp6Oty2APWb3ocnVMzVGPUexv8/gQZH1pBE
         m6vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X9bA6RYW;
       spf=pass (google.com: domain of 3xjvlxqwkaa82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3XJVlXQwKAA82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id a18si18548pjo.1.2019.08.27.13.41.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 13:41:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xjvlxqwkaa82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id k20so217300pgg.15
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 13:41:01 -0700 (PDT)
X-Received: by 2002:a65:6815:: with SMTP id l21mr312139pgt.146.1566938460536;
 Tue, 27 Aug 2019 13:41:00 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:40:05 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
Message-Id: <20190827204007.201890-13-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 12/14] include/linux: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=X9bA6RYW;       spf=pass
 (google.com: domain of 3xjvlxqwkaa82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3XJVlXQwKAA82st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Acked-by: Will Deacon <will@kernel.org>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/cache.h       | 6 +++---
 include/linux/cpu.h         | 2 +-
 include/linux/export.h      | 2 +-
 include/linux/init_task.h   | 4 ++--
 include/linux/interrupt.h   | 5 ++---
 include/linux/sched/debug.h | 2 +-
 include/linux/srcutree.h    | 2 +-
 7 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/include/linux/cache.h b/include/linux/cache.h
index 750621e41d1c..3f4df9eef1e1 100644
--- a/include/linux/cache.h
+++ b/include/linux/cache.h
@@ -28,7 +28,7 @@
  * but may get written to during init, so can't live in .rodata (via "const").
  */
 #ifndef __ro_after_init
-#define __ro_after_init __attribute__((__section__(".data..ro_after_init")))
+#define __ro_after_init __section(.data..ro_after_init)
 #endif
 
 #ifndef ____cacheline_aligned
@@ -45,8 +45,8 @@
 
 #ifndef __cacheline_aligned
 #define __cacheline_aligned					\
-  __attribute__((__aligned__(SMP_CACHE_BYTES),			\
-		 __section__(".data..cacheline_aligned")))
+	__aligned(SMP_CACHE_BYTES)				\
+	__section(.data..cacheline_aligned)
 #endif /* __cacheline_aligned */
 
 #ifndef __cacheline_aligned_in_smp
diff --git a/include/linux/cpu.h b/include/linux/cpu.h
index fcb1386bb0d4..186bbd79d6ce 100644
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -166,7 +166,7 @@ void cpu_startup_entry(enum cpuhp_state state);
 void cpu_idle_poll_ctrl(bool enable);
 
 /* Attach to any functions which should be considered cpuidle. */
-#define __cpuidle	__attribute__((__section__(".cpuidle.text")))
+#define __cpuidle	__section(.cpuidle.text)
 
 bool cpu_in_idle(unsigned long pc);
 
diff --git a/include/linux/export.h b/include/linux/export.h
index fd8711ed9ac4..808c1a0c2ef9 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -104,7 +104,7 @@ struct kernel_symbol {
  * discarded in the final link stage.
  */
 #define __ksym_marker(sym)	\
-	static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
+	static int __ksym_marker_##sym[0] __section(.discard.ksym) __used
 
 #define __EXPORT_SYMBOL(sym, sec)				\
 	__ksym_marker(sym);					\
diff --git a/include/linux/init_task.h b/include/linux/init_task.h
index 6049baa5b8bc..50139505da34 100644
--- a/include/linux/init_task.h
+++ b/include/linux/init_task.h
@@ -51,12 +51,12 @@ extern struct cred init_cred;
 
 /* Attach to the init_task data structure for proper alignment */
 #ifdef CONFIG_ARCH_TASK_STRUCT_ON_STACK
-#define __init_task_data __attribute__((__section__(".data..init_task")))
+#define __init_task_data __section(.data..init_task)
 #else
 #define __init_task_data /**/
 #endif
 
 /* Attach to the thread_info data structure for proper alignment */
-#define __init_thread_info __attribute__((__section__(".data..init_thread_info")))
+#define __init_thread_info __section(.data..init_thread_info)
 
 #endif
diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
index 5b8328a99b2a..29debfe4dd0f 100644
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -741,8 +741,7 @@ extern int arch_early_irq_init(void);
 /*
  * We want to know which function is an entrypoint of a hardirq or a softirq.
  */
-#define __irq_entry		 __attribute__((__section__(".irqentry.text")))
-#define __softirq_entry  \
-	__attribute__((__section__(".softirqentry.text")))
+#define __irq_entry	__section(.irqentry.text)
+#define __softirq_entry	__section(.softirqentry.text)
 
 #endif
diff --git a/include/linux/sched/debug.h b/include/linux/sched/debug.h
index 95fb9e025247..e17b66221fdd 100644
--- a/include/linux/sched/debug.h
+++ b/include/linux/sched/debug.h
@@ -42,7 +42,7 @@ extern void proc_sched_set_task(struct task_struct *p);
 #endif
 
 /* Attach to any functions which should be ignored in wchan output. */
-#define __sched		__attribute__((__section__(".sched.text")))
+#define __sched		__section(.sched.text)
 
 /* Linker adds these: start and end of __sched functions */
 extern char __sched_text_start[], __sched_text_end[];
diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
index 9cfcc8a756ae..9de652f4e1bd 100644
--- a/include/linux/srcutree.h
+++ b/include/linux/srcutree.h
@@ -124,7 +124,7 @@ struct srcu_struct {
 # define __DEFINE_SRCU(name, is_static)					\
 	is_static struct srcu_struct name;				\
 	struct srcu_struct * const __srcu_struct_##name			\
-		__section("___srcu_struct_ptrs") = &name
+		__section(___srcu_struct_ptrs) = &name
 #else
 # define __DEFINE_SRCU(name, is_static)					\
 	static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);	\
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827204007.201890-13-ndesaulniers%40google.com.
