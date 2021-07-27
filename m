Return-Path: <clang-built-linux+bncBDHYV67X5UKBBNPT72DQMGQEBTVGFZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BAA3D7088
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 09:45:58 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id l7-20020ac848c70000b0290252173fe79csf5943999qtr.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 00:45:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627371957; cv=pass;
        d=google.com; s=arc-20160816;
        b=ztm+dYyEgeM3oT3C4xiExedPaV/0Y6m5l48hLGrGeuk91j+EDpZy97DZW3nwwKVJUK
         iy3iU49Wf9MYLOqer13GNgIpc+gbeO4wrwL0YrPBUvc3DXmoIoertnSCRIMbNjt/HUi5
         jkoB/rfyDzcjf+uq6TMCAHpBIx6a4bj+3QMH2YSSbv2DtL+cVfw9Wzc/dm1XGFSvDiu/
         FxbC632PeEbSrIYgsCBnAlLOqtqsvEnrO6bkvrVYHf1qVZRpC2KVDXc9mwpoN15obxVJ
         /nLKo/Xuv1Svm4cQ/AyMIs9m3pjblfaj0e7DHGna9tRwh4RFQgs7FVI3pKUgZ1njccYz
         /qYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=4If6ztDvUbMP+TgfR4oaXWfSU5lXMG+r6oDDMJBZZqU=;
        b=Na2d/0LDKQVk++aNwEBOJxMiLEjgmp1rrMT2+vUJsfesdwkdpblk18r14wY1Kj3Wsb
         tLgq8QJC6VYQTQzYcFUjx3Flb52CGEQsPmtd6M89VKgAXPSiShecG0Ra0C5oHHUJGvfc
         EsnQKSH/T3dKlvAJdY0ey4XQNRxG/EBj25BnWeBUc7CFBhobpJTCIonywU2GCod5DZfN
         s71gyrcG42l7WPVTRc+xUnNe5n6lk5nNPT1p1erag9Fk2Eu2c1jTg7Eat55nmTHDPTr4
         HST+6kcPwXxCSfThDTWbq0jIyzfHFa7YwLg174vx0bRexmIICkvqGhyWmW86QQOTPG+/
         N4Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cheng-jui.wang@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=cheng-jui.wang@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4If6ztDvUbMP+TgfR4oaXWfSU5lXMG+r6oDDMJBZZqU=;
        b=DAajd6jihDLm2hgy1pqftLWm/+InjqHslm3/C3wtuVJIFDmETkorKSXz9G3bcqm+ZI
         7Tz4A2jplX2VdFK55vfBdTt+06L/z4w0fNU8dUsYJlaSnODFUkx0b3DYLW2NBcKGrAWE
         oid7uTc7DUSJgDHSbwCkuWV2mPB8HESojhwg+T8Z9asZMdc9KpPAWmayg8WGmD/MbKWn
         WNHJq9XsnbzKJofxTOyhprysRinwmbdnfOviDzZvK6/G4aZTIdNqEFnzx0Gcbp/EYyIy
         TVoeHgNYnqoTRSj3rO8/K6fE10vxU+ydq5sYfvNM14kRMZy5Q1smr5Ul/BS5t7u54oJ9
         Yk0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4If6ztDvUbMP+TgfR4oaXWfSU5lXMG+r6oDDMJBZZqU=;
        b=jLc+1ZQMVQPSUrZyBmfYtCTBfKRWJzIDn8A3dW/2Ge7vAKXImozK9des3byCsPeFqk
         FqiazNN4Vwg6MuwnI9exMsMEDKJzsMALdKyLC2VEyo9RS/LXQWMILZPQ3O+camNTFCMu
         EWj7jmXjCUjwMDexO6fVFPPRw92fbZjlLJh+5ji2K7rOQuZlPzTeApVCLPqTD0yafMBd
         fK4BX8k960uZ4EZSUnWZKs3ynV9WNN9d1UXKS0lyCPw32e8XUqHlSwdZJ8Tv7u6kg6ty
         wJ1OfN5sSaAzFzjLMMQmxoDP7+FPrLyZ8PMvBt3HhM5kLDf36JLjT6oBYnMcp0PSR37C
         1/8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZcmFvG67BHU3E0D08aDERV1yZ5Asv1m6WBg4iRcMH4oRYgErO
	OgLzZaJNpejVbaoysEi+Riw=
X-Google-Smtp-Source: ABdhPJwQIYUP1JgPVXHKVzJlNQcXI46Trn8rw9VTxm7jRqj30uQCUfBNfD3geyoZyFAWYV0r15Q9nw==
X-Received: by 2002:ae9:ed56:: with SMTP id c83mr20664990qkg.101.1627371957519;
        Tue, 27 Jul 2021 00:45:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:72c5:: with SMTP id o5ls10037180qtp.6.gmail; Tue, 27 Jul
 2021 00:45:57 -0700 (PDT)
X-Received: by 2002:ac8:6a06:: with SMTP id t6mr18478198qtr.378.1627371957079;
        Tue, 27 Jul 2021 00:45:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627371957; cv=none;
        d=google.com; s=arc-20160816;
        b=iyXGOHQboYrDyHHZswBu2g6RWYwzF3rY9l1NzAKqzN3tNor3ZaDuEt9QDRPg6mnRYI
         R5BGRFccrUPZnmyRtsWnh7iPhaOyGkSkOYMBtJnhriZkzG3DLQcIlGFThMLLXQT64Y0i
         7JkjbtdHkwsSJKIrELR0HMv1qMnYKnyu6SM66o7yL4SV6C6aTMuwgtvCBCFQNW+UVB8U
         uFm44Fm21hsSeBX6FzP7mqinaTCVh7+tqWmWd5f354mt8N8lCt8iuLxVD2ed8ipSkBwG
         GiedasnbuEyYP6Yl1CXHr8TqnytyvyOurpflyCWGf2Y4FMDV6DF3DMzwslgJXC7Jiz1L
         GJSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=z6B7qfAC9iMgLDAZ0YZlHy9xrWSx9oUcIjDvonuFoNc=;
        b=wIxocGQk1NOFrV3U+Du51kEjj+kPeMnggOtxKxcIeg5J0O7AE+nwbS7BMVteHxUidK
         qzyjIITy4iFA6yWGx8RrpevBC5Yf69MXCpdhLYFgOEidbTEAmD8tYNMLDBxr/tW26V4D
         z3I18g7qYsDEKbTnoDPDAXePkPsMOooGNgrslwuTbFr3aAcixBUpx9Jc4rpS4nsiQ7CT
         Ro5hg9AHs/PNME8nOKaEbOeaXpsEftb4L0TP0h47jT27p83dCKpT6IFqWn6pW/kj+2NR
         Au+KzvA9cIShoVDkDr++EuSKdF4dFKyQAWgyF8CpXbY5NRDRJEu9zr0/0lOWinp6W6sL
         cYGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cheng-jui.wang@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=cheng-jui.wang@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id d11si5990qtd.0.2021.07.27.00.45.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 00:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of cheng-jui.wang@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 87635f62e5434238bf905967941fe625-20210727
X-UUID: 87635f62e5434238bf905967941fe625-20210727
Received: from mtkcas07.mediatek.inc [(172.21.101.84)] by mailgw01.mediatek.com
	(envelope-from <cheng-jui.wang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 297846516; Tue, 27 Jul 2021 15:45:50 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 27 Jul 2021 15:45:49 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 27 Jul 2021 15:45:49 +0800
From: Cheng Jui Wang <cheng-jui.wang@mediatek.com>
To: <rcu@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<clang-built-linux@googlegroups.com>
CC: <paulmck@kernel.org>, <josh@joshtriplett.org>, <rostedt@goodmis.org>,
	<mathieu.desnoyers@efficios.com>, <jiangshanlai@gmail.com>,
	<joel@joelfernandes.org>, <matthias.bgg@gmail.com>, <nathan@kernel.org>,
	<ndesaulniers@google.com>, <wsd_upstream@mediatek.com>,
	<eason-yh.lin@mediatek.com>, Cheng Jui Wang <cheng-jui.wang@mediatek.com>
Subject: [PATCH] rcu: Add missing unlock in rcu_print_task_stall
Date: Tue, 27 Jul 2021 15:45:42 +0800
Message-ID: <20210727074542.25095-1-cheng-jui.wang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_002_1815489618.2078721404"
X-Original-Sender: Cheng-Jui.Wang@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cheng-jui.wang@mediatek.com designates 60.244.123.138
 as permitted sender) smtp.mailfrom=cheng-jui.wang@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

--__=_Part_Boundary_002_1815489618.2078721404
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
We encouterd a deadlock with following lockdep warning. The
rcu_print_task_stall is supposed to release rnp-&gt;lock, but may just
return without unlock.

	if (!rcu_preempt_blocked_readers_cgp(rnp))
		return 0;

Add missing unlock before return to fix it.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
WARNING: possible recursive locking detected
5.10.43
--------------------------------------------
swapper/7/0 is trying to acquire lock:
ffffffc01268c018 (rcu_node_0){-.-.}-{2:2}, at: rcu_dump_cpu_stacks+0x94/0x1=
38

but task is already holding lock:
ffffffc01268c018 (rcu_node_0){-.-.}-{2:2}, at: check_cpu_stall+0x34c/0x6f8

other info that might help us debug this:
 Possible unsafe locking scenario:

       CPU0
       ----
  lock(rcu_node_0);
  lock(rcu_node_0);

 *** DEADLOCK ***

 May be due to missing lock nesting notation

1 lock held by swapper/7/0:
 #0: ffffffc01268c018 (rcu_node_0){-.-.}-{2:2},  at: check_cpu_stall+0x34c/=
0x6f8

stack backtrace:
CPU: 7 PID: 0 Comm: swapper/7
Call trace:
 dump_backtrace.cfi_jt+0x0/0x8
 show_stack+0x1c/0x2c
 dump_stack_lvl+0xd8/0x16c
 validate_chain+0x2124/0x2d34
 __lock_acquire+0x7e4/0xed4
 lock_acquire+0x114/0x394
 _raw_spin_lock_irqsave+0x88/0xd4
 rcu_dump_cpu_stacks+0x94/0x138
 check_cpu_stall+0x498/0x6f8
 rcu_sched_clock_irq+0xd4/0x214
 update_process_times+0xb4/0xf4
 tick_sched_timer+0x98/0x110
 __hrtimer_run_queues+0x19c/0x2bc
 hrtimer_interrupt+0x10c/0x3a8
 arch_timer_handler_phys+0x5c/0x98
 handle_percpu_devid_irq+0xe0/0x2a8
 __handle_domain_irq+0xd0/0x19c
 gic_handle_irq+0x6c/0x134
 el1_irq+0xe0/0x1c0
 arch_cpu_idle+0x1c/0x30
 default_idle_call+0x58/0xcc
 do_idle.llvm.13807299673429836468+0x118/0x2e8
 cpu_startup_entry+0x28/0x2c
 secondary_start_kernel+0x1d0/0x23c

Signed-off-by: Cheng Jui Wang &lt;cheng-jui.wang@mediatek.com&gt;
---
 kernel/rcu/tree_stall.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kernel/rcu/tree_stall.h b/kernel/rcu/tree_stall.h
index 6c76988cc019..3dc464d4d9a5 100644
--- a/kernel/rcu/tree_stall.h
+++ b/kernel/rcu/tree_stall.h
@@ -267,8 +267,10 @@ static int rcu_print_task_stall(struct rcu_node *rnp, =
unsigned long flags)
 	struct task_struct *ts[8];
=20
 	lockdep_assert_irqs_disabled();
-	if (!rcu_preempt_blocked_readers_cgp(rnp))
+	if (!rcu_preempt_blocked_readers_cgp(rnp)) {
+		raw_spin_unlock_irqrestore_rcu_node(rnp, flags);
 		return 0;
+	}
 	pr_err(&quot;\tTasks blocked on level-%d rcu_node (CPUs %d-%d):&quot;,
 	       rnp-&gt;level, rnp-&gt;grplo, rnp-&gt;grphi);
 	t =3D list_entry(rnp-&gt;gp_tasks-&gt;prev,
--=20
2.18.0

</pre><!--type:text--><!--{--><pre>************* MEDIATEK Confidentiality N=
otice ********************
The information contained in this e-mail message (including any=20
attachments) may be confidential, proprietary, privileged, or otherwise
exempt from disclosure under applicable laws. It is intended to be=20
conveyed only to the designated recipient(s). Any use, dissemination,=20
distribution, printing, retaining or copying of this e-mail (including its=
=20
attachments) by unintended recipient(s) is strictly prohibited and may=20
be unlawful. If you are not an intended recipient of this e-mail, or believ=
e=20
that you have received this e-mail in error, please notify the sender=20
immediately (by replying to this e-mail), delete any and all copies of=20
this e-mail (including any attachments) from your system, and do not
disclose the content of this e-mail to any other person. Thank you!
</pre><!--}-->

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/20210727074542.25095-1-cheng-jui.wang%40mediat=
ek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/=
msgid/clang-built-linux/20210727074542.25095-1-cheng-jui.wang%40mediatek.co=
m</a>.<br />

--__=_Part_Boundary_002_1815489618.2078721404
Content-Type: text/plain; charset="UTF-8"

We encouterd a deadlock with following lockdep warning. The
rcu_print_task_stall is supposed to release rnp->lock, but may just
return without unlock.

	if (!rcu_preempt_blocked_readers_cgp(rnp))
		return 0;

Add missing unlock before return to fix it.

============================================
WARNING: possible recursive locking detected
5.10.43
--------------------------------------------
swapper/7/0 is trying to acquire lock:
ffffffc01268c018 (rcu_node_0){-.-.}-{2:2}, at: rcu_dump_cpu_stacks+0x94/0x138

but task is already holding lock:
ffffffc01268c018 (rcu_node_0){-.-.}-{2:2}, at: check_cpu_stall+0x34c/0x6f8

other info that might help us debug this:
 Possible unsafe locking scenario:

       CPU0
       ----
  lock(rcu_node_0);
  lock(rcu_node_0);

 *** DEADLOCK ***

 May be due to missing lock nesting notation

1 lock held by swapper/7/0:
 #0: ffffffc01268c018 (rcu_node_0){-.-.}-{2:2},  at: check_cpu_stall+0x34c/0x6f8

stack backtrace:
CPU: 7 PID: 0 Comm: swapper/7
Call trace:
 dump_backtrace.cfi_jt+0x0/0x8
 show_stack+0x1c/0x2c
 dump_stack_lvl+0xd8/0x16c
 validate_chain+0x2124/0x2d34
 __lock_acquire+0x7e4/0xed4
 lock_acquire+0x114/0x394
 _raw_spin_lock_irqsave+0x88/0xd4
 rcu_dump_cpu_stacks+0x94/0x138
 check_cpu_stall+0x498/0x6f8
 rcu_sched_clock_irq+0xd4/0x214
 update_process_times+0xb4/0xf4
 tick_sched_timer+0x98/0x110
 __hrtimer_run_queues+0x19c/0x2bc
 hrtimer_interrupt+0x10c/0x3a8
 arch_timer_handler_phys+0x5c/0x98
 handle_percpu_devid_irq+0xe0/0x2a8
 __handle_domain_irq+0xd0/0x19c
 gic_handle_irq+0x6c/0x134
 el1_irq+0xe0/0x1c0
 arch_cpu_idle+0x1c/0x30
 default_idle_call+0x58/0xcc
 do_idle.llvm.13807299673429836468+0x118/0x2e8
 cpu_startup_entry+0x28/0x2c
 secondary_start_kernel+0x1d0/0x23c

Signed-off-by: Cheng Jui Wang <cheng-jui.wang@mediatek.com>
---
 kernel/rcu/tree_stall.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kernel/rcu/tree_stall.h b/kernel/rcu/tree_stall.h
index 6c76988cc019..3dc464d4d9a5 100644
--- a/kernel/rcu/tree_stall.h
+++ b/kernel/rcu/tree_stall.h
@@ -267,8 +267,10 @@ static int rcu_print_task_stall(struct rcu_node *rnp, unsigned long flags)
 	struct task_struct *ts[8];
 
 	lockdep_assert_irqs_disabled();
-	if (!rcu_preempt_blocked_readers_cgp(rnp))
+	if (!rcu_preempt_blocked_readers_cgp(rnp)) {
+		raw_spin_unlock_irqrestore_rcu_node(rnp, flags);
 		return 0;
+	}
 	pr_err("\tTasks blocked on level-%d rcu_node (CPUs %d-%d):",
 	       rnp->level, rnp->grplo, rnp->grphi);
 	t = list_entry(rnp->gp_tasks->prev,
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727074542.25095-1-cheng-jui.wang%40mediatek.com.

--__=_Part_Boundary_002_1815489618.2078721404--

