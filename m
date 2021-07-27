Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBMOXQCEAMGQEVTGKHCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 547843D7A34
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 17:52:19 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id w16-20020a0568081410b029025c350a89fdsf9096479oiv.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 08:52:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627401138; cv=pass;
        d=google.com; s=arc-20160816;
        b=n3x6hDboA4IIdq5ueSF51gwVD0cFCKTZbZj1e04zq7W3L5Saoe1Zn+6uWiPjUuZibU
         ZXq2E+aT7+Dd4yo5KxjxcXws2tpCvPJw/5lWmTB0RhoAAOhO4vgaBOmBguAvBXke0Bw8
         H6cZJDiE64UP6NHvnnBHWWPoQjzVR6dqEzZEcuoVE5YMVSCS3eL/0epkR51S/J2uJwxs
         yCde++uJSsxms4Z2qjFtM9SMbhG/Ww/DlAX6B0ezE7Yl4/odGIi+ZBhb5SBav3j15Uf8
         FZTo9Ym/dFtqh8xgyTVg0YWCiAbWuU4SqxHIwUaqOApnpACAaBvw7QUIJwImX+rB7jPL
         nkhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=/yDND/t2xXt/yHDA+N8FLISsmefT37hsWZdNl2ibXBI=;
        b=PRB56dWY867N/qaKBtXmhRg50mGQR9leCAG2Fg6Mdzydvzr2IlRyzFcHkJdjuvkmF2
         RbDedn6CKWGXNfh/Iw3Ov+zCHeKQ1picFG6RlpRpUdVWPAY3hUjc8uuB1JH7pznolh3b
         EsRO8OLLqlE8n+Y4VnjkX/TILVGkuUamBrpJXSe3V32x3NlyChihCb0e9xFBx5UrzDTj
         7zhrPop8cHVwdm2ZONUT6rHwMGwwZB+ms0iRJvdczXT4edoSpTxaK9EOjmjNLboo7gVz
         Ws4Gy3ZIJdZbfDcJ/B92h0bFu9VZCNUHbdJ+yVzclzv+O4Hi+PxxAFxjbsxSzXQnvF6s
         Lx0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AypakK5c;
       spf=pass (google.com: domain of srs0=xxds=mt=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xXdS=MT=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/yDND/t2xXt/yHDA+N8FLISsmefT37hsWZdNl2ibXBI=;
        b=gdJhdBcFjsUmVXOMmcM61Je7RmBjrFm2g9BxKiP6uz5r6vk/QqfZDr2IgwJIfD2Aqp
         dVh+RoNVSTL2aBz4Li47+YV71G5v3HBA6UQGvt2Jms9HKq+P/a6tEOeI8GDVWGKc/gXf
         lqNCOzxBFYAd/vxDq/euuuWXC1U3pAgkz2RLtLqt01Qhb+aVR0jansYNg85YwE2mG+3L
         13+VBIdONrg9Pm3riAMawKXd7SEziuUSOPy/jwhHJvE+H6R607nYqrWEFngBHGK1r4lc
         txnjpS6n5SGwtIcI+apG9NyiX2SSguVoBwEYZAnE2n9jV0Luix46h29I32egRf2b9QIH
         1jLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/yDND/t2xXt/yHDA+N8FLISsmefT37hsWZdNl2ibXBI=;
        b=HmvhUt3TmrLLWKXu+bDBLlLbqKyzTkqHKn92eIEkO0VqFVA+jrpTJriA/BSc07n8D1
         9z/hcDb01E8hIt4t630ewPl94QgL5WShPSOsQGnxDZinFPtLd2QPVAnlDgKwoAnXFDDQ
         LsuY6Z9hiS5+WabY0aHpwRaecUlQAQsgQtEQFi+ExeUyUZVn+okWkjMLBj4REaNlVTYi
         URfEm5CgaH/EL3gtT1kVdFlMUe0zOMvcs2zs0omBil1XxEGU7HKoKvzkEDyI1VK2gW8t
         6iZP4z4smEatUuyTY/+yyQ6gH5+oyn4hZiu0NbyGThZHZm2tX/NJicLErkgfCUkdaeri
         b5VQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327QAwk1OPiPmfBrMgwgo6NwNUlBLxg7oASeJHltijbmuku5vX0
	KY46dyBnv3JY49ctzqnw1mo=
X-Google-Smtp-Source: ABdhPJxGqqYSXnqkhFfa9EzTo/75wVaTAiVWzxUIzc4AUqHXkz9rM6658DEsiSpGAdkcoW/0ZNCOkQ==
X-Received: by 2002:a05:6830:2b11:: with SMTP id l17mr15391981otv.40.1627401137620;
        Tue, 27 Jul 2021 08:52:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3115:: with SMTP id b21ls6916896ots.4.gmail; Tue,
 27 Jul 2021 08:52:17 -0700 (PDT)
X-Received: by 2002:a9d:404b:: with SMTP id o11mr15959023oti.41.1627401137256;
        Tue, 27 Jul 2021 08:52:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627401137; cv=none;
        d=google.com; s=arc-20160816;
        b=aK7ohu5rjgwe6v8jAGdRGNL3H6Iu2H1DirLRKjN4gAM2ZvhssHoh6ABilv+I4q5Dui
         9PsLUA9qx5P0xqJzU0X1zRnqH9HFaGTLOXsaTjrpaQ9+22lvkd/jQCf8xCyl8pcwavxK
         YZ+7bcGajUKjRuZxZzc+rI0DoIwXTcb7LXJ4IqwOqpPaas+I7LQfKuc0Dc6TRaSa87yB
         N2sZS9WnrVmGbqGY2pwJh1sDsKo7swyRr7O9js3IWhrANoTiLT18FU/1t/c3onA6oFs+
         aZVJlyT/dfj35G2s4s5mAgSOM5IZJX0vfYhgHUiuu0sqxbWzWkB8mCEh15bHet3Ns7Qp
         PdfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Lkbm6rml257fMRaThkF3GaGQfv3SApv/Bw+NEIHyzd4=;
        b=0DI9EhvZuTX8zcKaFGV8QcstPNGX9ua39o+G2sz9Yz4+YDD+IV7GugMEXM+yiFkfUz
         8V8yT6h+a+uF/21QFqIyzTERT0geUDyQGy/A+4hq8aA8+rvydljrGbREwtfd+JveZfUk
         J5zTU/yZ9z2U4KIlsKOT3NyKcKRmaKTyabDTk63K+nrQgEgBY9P6bZBcEgilE+OE0b/j
         PNPqewO16i1chJg1whiaiNP/VN72cm7m16L+3h/rMs56cZ5XMc11i3og1QXMmL/CraAU
         nvH+UQnXnGsRgUEVrhQ+6XT9OgsDncGpLUaOqSP4G6RUoH5vcgt88zZYbAOVpqwFAU0N
         sh8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AypakK5c;
       spf=pass (google.com: domain of srs0=xxds=mt=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xXdS=MT=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d15si263286oiw.0.2021.07.27.08.52.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 08:52:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=xxds=mt=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 67B5561B67;
	Tue, 27 Jul 2021 15:52:16 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 37FB05C0699; Tue, 27 Jul 2021 08:52:16 -0700 (PDT)
Date: Tue, 27 Jul 2021 08:52:16 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Cheng Jui Wang <cheng-jui.wang@mediatek.com>
Cc: rcu@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	clang-built-linux@googlegroups.com, josh@joshtriplett.org,
	rostedt@goodmis.org, mathieu.desnoyers@efficios.com,
	jiangshanlai@gmail.com, joel@joelfernandes.org,
	matthias.bgg@gmail.com, nathan@kernel.org, ndesaulniers@google.com,
	wsd_upstream@mediatek.com, eason-yh.lin@mediatek.com
Subject: Re: [PATCH] rcu: Add missing unlock in rcu_print_task_stall
Message-ID: <20210727155216.GV4397@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <20210727074542.25095-1-cheng-jui.wang@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727074542.25095-1-cheng-jui.wang@mediatek.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AypakK5c;       spf=pass
 (google.com: domain of srs0=xxds=mt=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xXdS=MT=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jul 27, 2021 at 03:45:42PM +0800, Cheng Jui Wang wrote:
> We encouterd a deadlock with following lockdep warning. The
> rcu_print_task_stall is supposed to release rnp->lock, but may just
> return without unlock.
> 
> 	if (!rcu_preempt_blocked_readers_cgp(rnp))
> 		return 0;
> 
> Add missing unlock before return to fix it.
> 
> ============================================
> WARNING: possible recursive locking detected
> 5.10.43
> --------------------------------------------
> swapper/7/0 is trying to acquire lock:
> ffffffc01268c018 (rcu_node_0){-.-.}-{2:2}, at: rcu_dump_cpu_stacks+0x94/0x138
> 
> but task is already holding lock:
> ffffffc01268c018 (rcu_node_0){-.-.}-{2:2}, at: check_cpu_stall+0x34c/0x6f8
> 
> other info that might help us debug this:
>  Possible unsafe locking scenario:
> 
>        CPU0
>        ----
>   lock(rcu_node_0);
>   lock(rcu_node_0);
> 
>  *** DEADLOCK ***
> 
>  May be due to missing lock nesting notation
> 
> 1 lock held by swapper/7/0:
>  #0: ffffffc01268c018 (rcu_node_0){-.-.}-{2:2},  at: check_cpu_stall+0x34c/0x6f8
> 
> stack backtrace:
> CPU: 7 PID: 0 Comm: swapper/7
> Call trace:
>  dump_backtrace.cfi_jt+0x0/0x8
>  show_stack+0x1c/0x2c
>  dump_stack_lvl+0xd8/0x16c
>  validate_chain+0x2124/0x2d34
>  __lock_acquire+0x7e4/0xed4
>  lock_acquire+0x114/0x394
>  _raw_spin_lock_irqsave+0x88/0xd4
>  rcu_dump_cpu_stacks+0x94/0x138
>  check_cpu_stall+0x498/0x6f8
>  rcu_sched_clock_irq+0xd4/0x214
>  update_process_times+0xb4/0xf4
>  tick_sched_timer+0x98/0x110
>  __hrtimer_run_queues+0x19c/0x2bc
>  hrtimer_interrupt+0x10c/0x3a8
>  arch_timer_handler_phys+0x5c/0x98
>  handle_percpu_devid_irq+0xe0/0x2a8
>  __handle_domain_irq+0xd0/0x19c
>  gic_handle_irq+0x6c/0x134
>  el1_irq+0xe0/0x1c0
>  arch_cpu_idle+0x1c/0x30
>  default_idle_call+0x58/0xcc
>  do_idle.llvm.13807299673429836468+0x118/0x2e8
>  cpu_startup_entry+0x28/0x2c
>  secondary_start_kernel+0x1d0/0x23c
> 
> Signed-off-by: Cheng Jui Wang <cheng-jui.wang@mediatek.com>

Good catch, thank you!

However, Yanfei Xu beat you to this with commit f6b3995a8b56dc ("rcu:
Fix stall-warning deadlock due to non-release of rcu_node ->lock"),
which is in -rcu and slated for the upcoming merge window.

His commit 8baded711edc ("rcu: Fix to include first blocked task in
stall warning") might also be of interest to you.

							Thanx, Paul

> ---
>  kernel/rcu/tree_stall.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/rcu/tree_stall.h b/kernel/rcu/tree_stall.h
> index 6c76988cc019..3dc464d4d9a5 100644
> --- a/kernel/rcu/tree_stall.h
> +++ b/kernel/rcu/tree_stall.h
> @@ -267,8 +267,10 @@ static int rcu_print_task_stall(struct rcu_node *rnp, unsigned long flags)
>  	struct task_struct *ts[8];
>  
>  	lockdep_assert_irqs_disabled();
> -	if (!rcu_preempt_blocked_readers_cgp(rnp))
> +	if (!rcu_preempt_blocked_readers_cgp(rnp)) {
> +		raw_spin_unlock_irqrestore_rcu_node(rnp, flags);
>  		return 0;
> +	}
>  	pr_err("\tTasks blocked on level-%d rcu_node (CPUs %d-%d):",
>  	       rnp->level, rnp->grplo, rnp->grphi);
>  	t = list_entry(rnp->gp_tasks->prev,
> -- 
> 2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727155216.GV4397%40paulmck-ThinkPad-P17-Gen-1.
