Return-Path: <clang-built-linux+bncBC7JPD5NQEBBB6O2U7VAKGQE4WDLHMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7640183AE0
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:13:30 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id v17sf48501717ybq.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:13:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565126009; cv=pass;
        d=google.com; s=arc-20160816;
        b=r2ZtvCv7IrlootPrjnoKtNM/jr3ZqarBN4v4NBCAm7jjDrimk46Fzb+igjKsPmhfJC
         IBAPkQyJkdDoFe9d8w7mlOcbvGCLOdkS5cyXjtlvMHJTQhM+H268F9gBjgypS1z1ds5h
         mJY4gCo6QRdzJ2LXYTTh9LTyUvBf7RUezv9d34tQDOdHyrT8T1005/UovnH6NFMRjoNV
         y7Fvr7GZFfBQc5xwDixH9C924fOLsV4tMwGO12SWwVrg9QxhQI3CmhW8Ax7MIbkL+Y1J
         kwS3agH5TtUZ+yPYR6qWJxCTZLpm4uhkPZk08zIEG3IipGnhG8Sl/H+5WQCGa6KTaXgi
         ZJcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=BU26r47aBlJwDyXpyt5Ae3IN1AWcIq09iQcdtGAoxH4=;
        b=ItE7I2sZvorQH7wl2PkRX0Dm+tb+OpBKXoTznvuZ/Y7zgr1sZubSynXX8ANzx8jEHG
         /lVG3FcUBruLdIubslM7xH8Q+QPkdGFtU0QXsvcvg6+QdL3IhHc3d83zBfMrSMnEjKO2
         2r8h7xx3PwSGBwMZBgeIp2vSK4M3itUtLj7RwiwC3sCh0/qKmcXEixYWAbIzq8EcZOlH
         0ZazetEjS0X02OvU69iQehNg5+VKUJp507AZl293isOPUscJ0gX0OPx20VsR6Wdxosa/
         dzGGnpDk2py3jfqmjAIPJJkzbNVAjlKvYrU5cqnw8UttPcmDZ7kjecsOcgBqXIHQg4f5
         KZdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dk1prkSl;
       spf=pass (google.com: domain of 3eo1jxqukewswqdltpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::c49 as permitted sender) smtp.mailfrom=3eO1JXQUKEWsWQdLTPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BU26r47aBlJwDyXpyt5Ae3IN1AWcIq09iQcdtGAoxH4=;
        b=YfrE4nC+W9cQ4hsNJsaw/0B5P6XtkAVbSmM3/Fkgou+LzFzea1YcD2UkL1M/Yb2WLb
         GYURVEUHAN9+gqEW2kppClegTeKOGDCwstoaZI2X+S+NPLnuh1yiHHNuq8Z3qG0DclIX
         KbeVSwd+imKwjneymrliuRhUYMNJeBb9qhiWnNL5vbESjEh8o8OhjIYju1nyM9CSLmkL
         teTx5+5fEezRaBMIFO+1MU6V9/jS8cOSFVbnK1iGvqaGiHcHFFFlzVXJz5eraW2u412W
         pEO7Xa5YpvBclzynpECxnyQpTpUjlAVO3ucAS0KSUvxfOr5aQ8pjHlTWCpsf56RPdzaE
         42Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BU26r47aBlJwDyXpyt5Ae3IN1AWcIq09iQcdtGAoxH4=;
        b=dcMPlMVcJp3DnMsu12qMwXF3bcpO81mYzIX3QWG3TGH8Kps5zE+poeA9/uNN05DhHP
         /9f6b0g+SpQFfEVBhBN7xW6u9dEqyCpcvMk/Yg0oNgaUICc1JCx0lUPPneFGdNzp6DgQ
         YKLLJF9U8/mlHSUBrpSu1Nx68+bMzq7gK3nZyNmEWNqAx7UAITJ0RueJRkwzXHdFsOfT
         tazXriomM1YMkWFkAb+dwrocq5xkQXUImQ/Wmetkr5KilllfYa1fQOC6FFTOPwmfHHFX
         nLlNlxUTf0gUOC+uJJHo8/tpXe5eXfG4HH4JWlR0XcLEdzOgDv24aR01Q4FPLeyNeRuV
         Gwwg==
X-Gm-Message-State: APjAAAWXjvjDukPWCnvxxYOovetR3r9Vo7GQv9ASlIK5AB9FmUM+mVKe
	H4RMVwiK56KTZCemuYBjoqg=
X-Google-Smtp-Source: APXvYqw8e01FsejFUCuNUz5pY+NkT26mTxvztJ9uBJAHFAEHotsg2Ck5ETEjH2iK1FRSU0n+SdnNvQ==
X-Received: by 2002:a81:9b0b:: with SMTP id s11mr3791018ywg.72.1565126009136;
        Tue, 06 Aug 2019 14:13:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dcd2:: with SMTP id y201ls11325649ybe.7.gmail; Tue, 06
 Aug 2019 14:13:28 -0700 (PDT)
X-Received: by 2002:a25:6ad7:: with SMTP id f206mr2276119ybc.71.1565126008902;
        Tue, 06 Aug 2019 14:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565126008; cv=none;
        d=google.com; s=arc-20160816;
        b=kGPQSwLo5W2/4vzWPB2JuC0/N4R/5tRZIVH18/5rmhsygphih0zi5ZDyL6kJ5Q7jBb
         IfBaEjgNe2HQ5hAxef8X0q7f77QYZURVap091ySOMKBoARGwbt7t3ZT24xsARO1pstai
         2YYRhfkYCNm/kJXwphDts8KApV6OtAJpNWvq/CqB1ieitipUU1lyX0Y+xRJMcbLoQBxd
         LfIylkaU1dScGiD0yPuLCxeTv+gZe3Y2Wr6Qw/Tv/ygAm4fYaNkUT2zjK3MsxwoRqTU0
         RNdJyh6U7t8T9iJIL5yRE9iB2oFch7uZa7jQzWNOLQKICSYiX+ihgsvJid5QEqhY7P+9
         0bUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=UVpUeXdaVWlLept+Hu3Wkl51XQasQpyZNFOpCvXTNnY=;
        b=knGd4beSnzGPSFfhO30hZV6LMJtSwP+HuWlkk6AySXOix/eOIRfSin7w8jcVGAgIyB
         4fxEOihfCunjisnuGJhkRV8acDp21IYDRCr+I+IPIXw43jddns5A6EyRwBvWlSKUwI1J
         rj8e0YIqH16MnvxZM7R7WiZ/nvhs9Np0SZjvMsJQyuZ3lg/KPpjbZa94PwH5neSZgtF9
         65S2jfG1lYDZL2wwI8ftXW05boIoXGlQFfRglNSzNrCA9j1vScABpPhB3bqHLuzO7+tn
         9+kwhDnDBjTCnAhLHeeOTzYrwjsp2CjyoZP9iwOulBZgdkpDjMULx1aAvi3kFRKIVXiZ
         yaOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dk1prkSl;
       spf=pass (google.com: domain of 3eo1jxqukewswqdltpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::c49 as permitted sender) smtp.mailfrom=3eO1JXQUKEWsWQdLTPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc49.google.com (mail-yw1-xc49.google.com. [2607:f8b0:4864:20::c49])
        by gmr-mx.google.com with ESMTPS id r134si624085ybc.4.2019.08.06.14.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:13:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3eo1jxqukewswqdltpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::c49 as permitted sender) client-ip=2607:f8b0:4864:20::c49;
Received: by mail-yw1-xc49.google.com with SMTP id x20so64973230ywg.23
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 14:13:28 -0700 (PDT)
X-Received: by 2002:a0d:d881:: with SMTP id a123mr3910898ywe.254.1565126008538;
 Tue, 06 Aug 2019 14:13:28 -0700 (PDT)
Date: Tue,  6 Aug 2019 14:10:47 -0700
In-Reply-To: <20190806211047.232709-1-nhuck@google.com>
Message-Id: <20190806211047.232709-2-nhuck@google.com>
Mime-Version: 1.0
References: <20190806211047.232709-1-nhuck@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [RFC PATCH 2/2] Add clang-tidy irq-balancing annotations for arm64
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: mark.rutland@arm.com
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Dk1prkSl;       spf=pass
 (google.com: domain of 3eo1jxqukewswqdltpxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::c49 as permitted sender) smtp.mailfrom=3eO1JXQUKEWsWQdLTPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

This patch is not intended to be merged.  It simply shows the scale of
the effort involved in applying annotations in the case of intentionally
unbalanced calls to local_irq_disable.

Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 arch/arm64/kernel/debug-monitors.c  | 1 +
 arch/arm64/kernel/machine_kexec.c   | 1 +
 arch/arm64/kernel/process.c         | 4 ++++
 arch/arm64/kernel/smp.c             | 1 +
 drivers/tty/sysrq.c                 | 1 +
 include/linux/compiler_attributes.h | 7 +++++++
 init/main.c                         | 1 +
 kernel/irq/handle.c                 | 1 +
 kernel/power/suspend.c              | 2 ++
 kernel/sched/core.c                 | 1 +
 kernel/sched/fair.c                 | 1 +
 kernel/sched/idle.c                 | 6 ++++++
 kernel/stop_machine.c               | 1 +
 mm/migrate.c                        | 1 +
 net/core/dev.c                      | 1 +
 15 files changed, 30 insertions(+)

diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index f8719bd30850..13552daeadd7 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -221,6 +221,7 @@ static int call_step_hook(struct pt_regs *regs, unsigned int esr)
 }
 NOKPROBE_SYMBOL(call_step_hook);
 
+__unbalanced_irq
 static void send_user_sigtrap(int si_code)
 {
 	struct pt_regs *regs = current_pt_regs();
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 0df8493624e0..7880c3d336d5 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -258,6 +258,7 @@ static void machine_kexec_mask_interrupts(void)
 /**
  * machine_crash_shutdown - shutdown non-crashing cpus and save registers
  */
+__unbalanced_irq
 void machine_crash_shutdown(struct pt_regs *regs)
 {
 	local_irq_disable();
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 9856395ccdb7..30cec11dc82b 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -111,6 +111,7 @@ void cpu_do_idle(void)
 /*
  * This is our default idle handler.
  */
+__unbalanced_irq
 void arch_cpu_idle(void)
 {
 	/*
@@ -149,6 +150,7 @@ void machine_shutdown(void)
  * activity (executing tasks, handling interrupts). smp_send_stop()
  * achieves this.
  */
+__unbalanced_irq
 void machine_halt(void)
 {
 	local_irq_disable();
@@ -162,6 +164,7 @@ void machine_halt(void)
  * achieves this. When the system power is turned off, it will take all CPUs
  * with it.
  */
+__unbalanced_irq
 void machine_power_off(void)
 {
 	local_irq_disable();
@@ -179,6 +182,7 @@ void machine_power_off(void)
  * executing pre-reset code, and using RAM that the primary CPU's code wishes
  * to use. Implementing such co-ordination would be essentially impossible.
  */
+__unbalanced_irq
 void machine_restart(char *cmd)
 {
 	/* Disable interrupts first */
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 6dcf9607d770..78da6f7b5bcd 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -852,6 +852,7 @@ static void ipi_cpu_stop(unsigned int cpu)
 static atomic_t waiting_for_crash_ipi = ATOMIC_INIT(0);
 #endif
 
+__unbalanced_irq
 static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
 {
 #ifdef CONFIG_KEXEC_CORE
diff --git a/drivers/tty/sysrq.c b/drivers/tty/sysrq.c
index 573b2055173c..53bac6cb39c3 100644
--- a/drivers/tty/sysrq.c
+++ b/drivers/tty/sysrq.c
@@ -146,6 +146,7 @@ static struct sysrq_key_op sysrq_crash_op = {
 	.enable_mask	= SYSRQ_ENABLE_DUMP,
 };
 
+__unbalanced_irq
 static void sysrq_handle_reboot(int key)
 {
 	lockdep_off();
diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 6b318efd8a74..e2aaff9a2017 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -253,4 +253,11 @@
  */
 #define __weak                          __attribute__((__weak__))
 
+
+#if __has_attribute(__annotate__)
+# define __unbalanced_irq               __attribute__((annotate("ignore_irq_balancing")))
+#else
+# define __unbalanced_irq
+#endif
+
 #endif /* __LINUX_COMPILER_ATTRIBUTES_H */
diff --git a/init/main.c b/init/main.c
index 66a196c5e4c3..360a2714afe3 100644
--- a/init/main.c
+++ b/init/main.c
@@ -902,6 +902,7 @@ static inline void do_trace_initcall_finish(initcall_t fn, int ret)
 }
 #endif /* !TRACEPOINTS_ENABLED */
 
+__unbalanced_irq
 int __init_or_module do_one_initcall(initcall_t fn)
 {
 	int count = preempt_count();
diff --git a/kernel/irq/handle.c b/kernel/irq/handle.c
index a4ace611f47f..a74309c071b7 100644
--- a/kernel/irq/handle.c
+++ b/kernel/irq/handle.c
@@ -134,6 +134,7 @@ void __irq_wake_thread(struct irq_desc *desc, struct irqaction *action)
 	wake_up_process(action->thread);
 }
 
+__unbalanced_irq
 irqreturn_t __handle_irq_event_percpu(struct irq_desc *desc, unsigned int *flags)
 {
 	irqreturn_t retval = IRQ_NONE;
diff --git a/kernel/power/suspend.c b/kernel/power/suspend.c
index 096211299c07..41bc4b9b4f0e 100644
--- a/kernel/power/suspend.c
+++ b/kernel/power/suspend.c
@@ -380,12 +380,14 @@ static int suspend_prepare(suspend_state_t state)
 }
 
 /* default implementation */
+__unbalanced_irq
 void __weak arch_suspend_disable_irqs(void)
 {
 	local_irq_disable();
 }
 
 /* default implementation */
+__unbalanced_irq
 void __weak arch_suspend_enable_irqs(void)
 {
 	local_irq_enable();
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 874c427742a9..465d4ef60e1a 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -3366,6 +3366,7 @@ pick_next_task(struct rq *rq, struct task_struct *prev, struct rq_flags *rf)
  *
  * WARNING: must be called with preemption disabled!
  */
+__unbalanced_irq
 static void __sched notrace __schedule(bool preempt)
 {
 	struct task_struct *prev, *next;
diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index f35930f5e528..9f147a2239ac 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -9334,6 +9334,7 @@ update_next_balance(struct sched_domain *sd, unsigned long *next_balance)
  * least 1 task to be running on each physical CPU where possible, and
  * avoids physical / logical imbalances.
  */
+__unbalanced_irq
 static int active_load_balance_cpu_stop(void *data)
 {
 	struct rq *busiest_rq = data;
diff --git a/kernel/sched/idle.c b/kernel/sched/idle.c
index 80940939b733..b2174f71f1aa 100644
--- a/kernel/sched/idle.c
+++ b/kernel/sched/idle.c
@@ -52,6 +52,7 @@ static int __init cpu_idle_nopoll_setup(char *__unused)
 __setup("hlt", cpu_idle_nopoll_setup);
 #endif
 
+__unbalanced_irq
 static noinline int __cpuidle cpu_idle_poll(void)
 {
 	rcu_idle_enter();
@@ -74,6 +75,7 @@ void __weak arch_cpu_idle_prepare(void) { }
 void __weak arch_cpu_idle_enter(void) { }
 void __weak arch_cpu_idle_exit(void) { }
 void __weak arch_cpu_idle_dead(void) { }
+__unbalanced_irq
 void __weak arch_cpu_idle(void)
 {
 	cpu_idle_force_poll = 1;
@@ -85,6 +87,7 @@ void __weak arch_cpu_idle(void)
  *
  * To use when the cpuidle framework cannot be used.
  */
+__unbalanced_irq
 void __cpuidle default_idle_call(void)
 {
 	if (current_clr_polling_and_test()) {
@@ -96,6 +99,7 @@ void __cpuidle default_idle_call(void)
 	}
 }
 
+__unbalanced_irq
 static int call_cpuidle(struct cpuidle_driver *drv, struct cpuidle_device *dev,
 		      int next_state)
 {
@@ -126,6 +130,7 @@ static int call_cpuidle(struct cpuidle_driver *drv, struct cpuidle_device *dev,
  * set, and it returns with polling set.  If it ever stops polling, it
  * must clear the polling bit.
  */
+__unbalanced_irq
 static void cpuidle_idle_call(void)
 {
 	struct cpuidle_device *dev = cpuidle_get_device();
@@ -222,6 +227,7 @@ static void cpuidle_idle_call(void)
  *
  * Called with polling cleared.
  */
+__unbalanced_irq
 static void do_idle(void)
 {
 	int cpu = smp_processor_id();
diff --git a/kernel/stop_machine.c b/kernel/stop_machine.c
index 2b5a6754646f..1ff5f63b5f85 100644
--- a/kernel/stop_machine.c
+++ b/kernel/stop_machine.c
@@ -178,6 +178,7 @@ static void ack_state(struct multi_stop_data *msdata)
 }
 
 /* This is the cpu_stop function which stops the CPU. */
+__unbalanced_irq
 static int multi_cpu_stop(void *data)
 {
 	struct multi_stop_data *msdata = data;
diff --git a/mm/migrate.c b/mm/migrate.c
index f2ecc2855a12..bf2fd8e2c0f4 100644
--- a/mm/migrate.c
+++ b/mm/migrate.c
@@ -396,6 +396,7 @@ static int expected_page_refs(struct address_space *mapping, struct page *page)
  * 2 for pages with a mapping
  * 3 for pages with a mapping and PagePrivate/PagePrivate2 set.
  */
+__unbalanced_irq
 int migrate_page_move_mapping(struct address_space *mapping,
 		struct page *newpage, struct page *page, enum migrate_mode mode,
 		int extra_count)
diff --git a/net/core/dev.c b/net/core/dev.c
index d6edd218babd..04906dc6bd00 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -5885,6 +5885,7 @@ static void net_rps_send_ipi(struct softnet_data *remsd)
  * net_rps_action_and_irq_enable sends any pending IPI's for rps.
  * Note: called with local irq disabled, but exits with local irq enabled.
  */
+__unbalanced_irq
 static void net_rps_action_and_irq_enable(struct softnet_data *sd)
 {
 #ifdef CONFIG_RPS
-- 
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806211047.232709-2-nhuck%40google.com.
