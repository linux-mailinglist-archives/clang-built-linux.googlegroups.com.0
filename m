Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP57Y7VAKGQEIM7EVAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C2C8A9FD
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:53:04 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id q26sf98106112qtr.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:53:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646783; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qj1dPVMfp19TcbSL1rkn99KbWDuCWPudeJdh6nm+a6eU0KIHCCA06GeswonMOzWbGV
         aDnUwi3YQvik20msPjk5DgAZSESlJ6PpMgqpgfCL1T1ghM8El6qP5yhGOARAhvbq5ado
         UGZjIXZQlqMc2JhSbAU8GiHRzMYn7cWWayULlAvncqts+MKl3mcYAnj/L0WkbnWbV4mM
         fP/tiX8yH9jhh33h+mcz13M71fQD/pFwlcsraKeddtD6mhjNcLKQNVjWifIEL5lQVHa/
         uvd55lSfErzw5ZrcACewIXLND3YTK7zygRA3II9MnVrzObDpjqfTZMZJ8FoVJIvMoT7f
         p9/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=I7aBnHfQg7g+QX2shxmXUlqKluHi09Yo4tQQhbHNhd8=;
        b=bMJwBl00634BGrEUUClzIu9T72aAl4l/Ye7YTW2H5Ee4r1lyTImCBV+hh11pef8iBx
         Rrni4xtlfK72AzrINSsLZ2gJ7C45FpFXvyZ/6wNOYH3Q81qrAeb39oXthAUne4eYyWkT
         8jZWqBAdUfyiozHlbj05xXmO/qCpnSoDMv9/ZMHWooIb/DKtN9eu/JAMo0kvNm05UxnO
         k2YYYmjFj7EM/MVqt1OyhERK9wysH0uNBUcFtquxAZ54BFjP1RXksnM2aXrEhODA4Ban
         qkcJqvK5rslQxoQ5q6uUBaW5MC8xCmEs/3QIpapXUGBagMua3mGBY9vXrXiMkfpMcpDL
         eQvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=trJf4uh3;
       spf=pass (google.com: domain of 3vt9rxqwkaluiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3vt9RXQwKALUiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I7aBnHfQg7g+QX2shxmXUlqKluHi09Yo4tQQhbHNhd8=;
        b=m7zqXcvbre5csnRCmppxh4CJb4v2nF8zGE6drU7Nk43K6xtL8GHjI4s9tkFs0vKkJL
         AUhAQjHOh9/y2kSSyRwXRp8B+wIBYWBu5c0+8XM5uki/Ucn649Adp2Vggmy50ic26dY7
         t1VSn9FZ6dDQfLKQ0QKav8Pa5pEPN1UDkhctML+268+TJpbrbbv90PAw/DcCyyKeRm9S
         H+MIo4c42PH0kckABYN4FKmW6DEYgtdtDawMxeXuE/OfOe3OH6+/W9WWffUtP/CzXGtX
         gGRADDGLpfuyDZSa3AxkJPjcldLG/6vOZTl37ZFEl8MPHX+MVICjbLEhDT6Cnw0gKg7d
         qBTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I7aBnHfQg7g+QX2shxmXUlqKluHi09Yo4tQQhbHNhd8=;
        b=Yl3w7n/bKBn+NI70DhtJZNx11At4HRb0qiqcVJUh4+zk/Zx0pmv3+t0SFmoYS3D4oN
         nwClcPkhkPhiHXikvXWTv6Uu/CsttxL4MiDVH1Eb9yAer5MLHJojj/AakfD+xbP9s32b
         H18sTvp/z/5apsXzc5k7JAwXshYgSIrqljwDoWpgflOGy7ffJprbA1uYY7LdOiWeB7Ux
         tfVo/6lrYOJ4fEUIyEJ1X0y9W47ew3lByeum20Fu/gh7G/IDqnkSz6YlseXuTl2DRqiz
         JIeid5b9gGmWXVke0yrOqP+eiLwAAQc8Vflfe5bYLMx/OQfC2sthy9Oomn2UPdiJNjh9
         mH5g==
X-Gm-Message-State: APjAAAWHVwRcOHT+Ow1D4BmCiLT50UxzPV0TmU+cYO1uT+nDheun9Wvw
	NCFGipaoVHY8Cyzd9KvC+wc=
X-Google-Smtp-Source: APXvYqygKYMTCb2wcKU8Y4kyjGOfVNWBnzfuKxOvvVEbrwzkn/uPo0edYsr2w1df0hnolFE6Y9pbOQ==
X-Received: by 2002:a0c:d1d3:: with SMTP id k19mr3073354qvh.6.1565646783438;
        Mon, 12 Aug 2019 14:53:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:540b:: with SMTP id f11ls6176604qvt.0.gmail; Mon, 12 Aug
 2019 14:53:03 -0700 (PDT)
X-Received: by 2002:a0c:e790:: with SMTP id x16mr31851193qvn.120.1565646783225;
        Mon, 12 Aug 2019 14:53:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646783; cv=none;
        d=google.com; s=arc-20160816;
        b=V0MsibBv3Cr9ykurcor4n4IGHnvxw+FrDCJKK7Sw1R3/Eknb/k5ofxJYqb7zRJtwUP
         6CnArM+XE8SLHcDMQBZ+RWjGjRsJTiVjnBlKv+2TX1wx3ULToU9a6Agq/b/HYk70LyXE
         ux5V+ixyl13LlqKfd01H0hCdLWdwO5Ti1iZPKLC4roSuhE07nxYxrVPD2jLhPOgLuTsm
         TzglhdjWzhKeZUNClUqnNX5Ho+RG998NZ7vFwiKqNe5wJTKDodgbDORQolyp7nZMmidK
         T+Qvwzgq4BKJ9uQbg487juJb5EvQ7trElORoqdhIu4QA+MGf8YTMfaViyOtJ4/2D9hkh
         Os5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=BvdjllFJec+jnIcbVyaNPdSiqXqeyTxUF0Oq2y0JBBs=;
        b=hXtljvB++GdYj94mEgZ5p5ESfy/JEJKbDaXZJspE+hbMSYxhe37devSnPstv0osI6Q
         mup8mKJacQ9It8L9amQWK35V6lkxWFHOWmcyhs35I74S4tSXldAIN4LcrJ71OmKncyhs
         J1zEPDbRTlTnxsyM8lIIQPx04m/lvj0y5OjR9mDmSzpPreNq/yAqT8QbQQmn6tOEAp8n
         pSmOo8HYbkvcknbmATRL7QckVuQ5uPoFgPBVihVcksdLq9ATZhpECI/MkPtxQUkOThGG
         D90C1odcxF9qQw+hQ9w5Enmj/v1SK8kqISxgKuqqcK1SzIepBiRSNtWC2/45OUrd4wew
         jNcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=trJf4uh3;
       spf=pass (google.com: domain of 3vt9rxqwkaluiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3vt9RXQwKALUiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id w2si965621qth.4.2019.08.12.14.53.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:53:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vt9rxqwkaluiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e69so9348087ybc.11
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:53:03 -0700 (PDT)
X-Received: by 2002:a81:4858:: with SMTP id v85mr13462571ywa.370.1565646782523;
 Mon, 12 Aug 2019 14:53:02 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:47 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-14-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 14/16] include/linux: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Lai Jiangshan <jiangshanlai@gmail.com>, "Paul E. McKenney" <paulmck@linux.ibm.com>, 
	Josh Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, Nicholas Piggin <npiggin@gmail.com>, Jiri Kosina <jkosina@suse.cz>, 
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Hans Liljestrand <ishkamiel@gmail.com>, Elena Reshetova <elena.reshetova@intel.com>, 
	David Windsor <dwindsor@gmail.com>, Marc Zyngier <maz@kernel.org>, Ming Lei <ming.lei@redhat.com>, 
	Dou Liyang <douliyangs@gmail.com>, Julien Thierry <julien.thierry.kdev@gmail.com>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Jens Axboe <axboe@kernel.dk>, 
	linux-kernel@vger.kernel.org, linux-sparse@vger.kernel.org, 
	rcu@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=trJf4uh3;       spf=pass
 (google.com: domain of 3vt9rxqwkaluiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3vt9RXQwKALUiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
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

Link: https://github.com/ClangBuiltLinux/linux/issues/619
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/cache.h       | 6 +++---
 include/linux/compiler.h    | 8 ++++----
 include/linux/cpu.h         | 2 +-
 include/linux/export.h      | 2 +-
 include/linux/init_task.h   | 4 ++--
 include/linux/interrupt.h   | 5 ++---
 include/linux/sched/debug.h | 2 +-
 include/linux/srcutree.h    | 2 +-
 8 files changed, 15 insertions(+), 16 deletions(-)

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
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index f0fd5636fddb..5e88e7e33abe 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -24,7 +24,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 			long ______r;					\
 			static struct ftrace_likely_data		\
 				__aligned(4)				\
-				__section("_ftrace_annotated_branch")	\
+				__section(_ftrace_annotated_branch)	\
 				______f = {				\
 				.data.func = __func__,			\
 				.data.file = __FILE__,			\
@@ -60,7 +60,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 #define __trace_if_value(cond) ({			\
 	static struct ftrace_branch_data		\
 		__aligned(4)				\
-		__section("_ftrace_branch")		\
+		__section(_ftrace_branch)		\
 		__if_trace = {				\
 			.func = __func__,		\
 			.file = __FILE__,		\
@@ -118,7 +118,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 	".popsection\n\t"
 
 /* Annotate a C jump table to allow objtool to follow the code flow */
-#define __annotate_jump_table __section(".rodata..c_jump_table")
+#define __annotate_jump_table __section(.rodata..c_jump_table)
 
 #else
 #define annotate_reachable()
@@ -298,7 +298,7 @@ unsigned long read_word_at_a_time(const void *addr)
  * visible to the compiler.
  */
 #define __ADDRESSABLE(sym) \
-	static void * __section(".discard.addressable") __used \
+	static void * __section(.discard.addressable) __used \
 		__PASTE(__addressable_##sym, __LINE__) = (void *)&sym;
 
 /**
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
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-14-ndesaulniers%40google.com.
