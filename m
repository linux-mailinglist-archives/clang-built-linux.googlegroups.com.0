Return-Path: <clang-built-linux+bncBCNOLFNUSYCBBNFFUX2QKGQEXJC2MMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA081BD926
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 12:11:00 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id v185sf804812wmg.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 03:11:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588155060; cv=pass;
        d=google.com; s=arc-20160816;
        b=UKfswLMcyR1Eu07l8JRjmT48wcJW+hApXbD401c6MbFVOXgq/7XZbwteLN9fc9jOti
         ZEPFwjhArD8UYvjepPCHNJ5hAx362WxBzfRYpVRP4cBozXUlcGGp8GBOB82eYRlQskpL
         IcV4wQdV6l88TFLUZknC6HsLynQgskZj0BZfrlpc7I9F91JQuUVuX7CxA8vNil/kphne
         IVmB1gIsQe2bkU+oMx8qQotUunWVWD0ab0h+5A9cwNLCyH7T0+K4KtgYVO+giR0GiEea
         eUuklaJU3jrAkrkcSiqOfbTLEoRRJ1a77du0DTpPw8nBx1v617lkSXZoDlm13S0ekwlB
         5i3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=3lY8MfjO9AeLC1KRhq91tC+692HzFgDNAVmkJGORm9M=;
        b=hWm0qm05lSQytHo+nIOkSzVZ/3QyowrT6a22ppFr3xt0cM+ep6oDe5RMBuKDcG9vDn
         n/371g7bF8PDdsQk4mZowpHgKXUdrJx++NWZxJtAU5+zRstT2y+R9b74peJUaVB2SBme
         7xuHRrGdSTRmlCeyIybeACT8/A2klBbumWwnY8HhXFu/sCrSL5MxMN+BlPpG2/ldEFZj
         ycEAAKZgNtTsEOcbr8Olv6yv+2FFg69NWvAfjdqi7YA53hkHrIiSSQD7+z8w8jDzqYt6
         wIuJUn7Zzvpkv98YJabg5hwHB9mZMF/9PjVHpaCNqUIHrSWxKkL97YK/WFlVHXvNuIb6
         ZGZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wei.liu.linux@gmail.com designates 209.85.128.66 as permitted sender) smtp.mailfrom=wei.liu.linux@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3lY8MfjO9AeLC1KRhq91tC+692HzFgDNAVmkJGORm9M=;
        b=fFO0VRYWacgiLT/jeYhNClvkd/hVanYJSAaBhFmjvLFLJwaekLyfy39ak/eQr0nWCq
         Ml+VU6swdwzyYdW/CB1xEeo9dFSwxoA7VesSXeaETLJcnGC3+QtR1/nXLJHurqcW8zkc
         nSOn56bbeGjQBZH9I6LycFy8z+5gjl+IRUkJzXzDQjA57+q4ZvM1go3PBQp4yCaHFs+E
         1Mh2eS832BKOJUtkPamLmIAfDDP1vPxQ+1Zmno3z+J0/grAHrb1Zd45TX7f4fOsCQWF+
         C2s/6MMStQdrTt7420juXHsmNDa4Q8jg2PFyPKfBqmly2x5HFrEUHgAddLY1IY4+Hb/N
         +O9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3lY8MfjO9AeLC1KRhq91tC+692HzFgDNAVmkJGORm9M=;
        b=SYHVXx5cmbZUNT0vllTfidY8AYnIns/5v1ftCs5x493q0E3LUY5cLOefMZrsXZJyik
         /WpJcrCDESwc3XlUK1ipqDO8AxEb8MP2BluqOLJT+miMrNOuuCftZcWjeUCz1SgDPP+8
         3WX8wSRWF5x2h6C3PyHrut78RWQjWKogPjH9QzYgs64rkeJ7S++gpLxNYPzF8Za+LoU1
         yJVd8se7u2PvVpn5RIStdRRigR2WSBblvNiAQs8oZ/yn767AKzzYcxES2j484tctQcur
         l2RiZH42ZiWozFKSsYNehtuTENRxHpuvhi+H5VvftRbuV+3QNw0qsjAK2ZHh9k1baIWq
         d8nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYCRje53sSqPXQbbKaoPRa30RW7cIhWbMawu8T1dCsSmYgq7YUA
	UokqotU8QkYC9h6IK9k101M=
X-Google-Smtp-Source: APiQypJu7nl9J3uKhuHfKWjcX7rTiTtzc8LQ35x90JYBeU66tFp4ICzaIte/fTrLqqWvVAZvJ3b41w==
X-Received: by 2002:adf:8b1d:: with SMTP id n29mr37492099wra.196.1588155060197;
        Wed, 29 Apr 2020 03:11:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6cc7:: with SMTP id c7ls32152525wrc.8.gmail; Wed, 29 Apr
 2020 03:10:59 -0700 (PDT)
X-Received: by 2002:adf:cc81:: with SMTP id p1mr40871265wrj.372.1588155059661;
        Wed, 29 Apr 2020 03:10:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588155059; cv=none;
        d=google.com; s=arc-20160816;
        b=GjHZ6LbdYmCu5rH+vw0IzgP1QcSxy4txQvf/kOqLnP64XopGBnebTEbE/iBdChzrGD
         zWrjXKW/v51dsp77CaWG7F0UxG5ClOq+y7nJhbSqSZl4mN8nGfkfw8fX5pVG0As8HCLy
         aK3AUWgLe9+2FElc3XtlHhV2OpYPXywKzgQIUZm9Tbx/AxJ8x0pXWP/axBgVSYYjnEKz
         uSC+bxoqRHRVeKEmH02RG6yGxtU3oweaGK6ElVFuiLHOewMNHRNcbpcAtbqc7R2ccmi7
         SpRN/0y6LcJUMtf30c7JlS612ZFH16J68qmpvQgsTjUogD/TOF0SGhgWitNgnylrtybR
         KHGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=vz/g/XMqIs4+3bJj4KMsSH/NojL2z79eX4XfzIHYwvc=;
        b=gpO2CCV7nTumL3h58apId8fd9QHnxfV8AQ0ETkc5dJ5LMjSOWfD/q062WnQKJD2Jtv
         Lg5H9LJ0a3oXaH4COOuAedKRLggXU5PI1q97a6W45X+jHaM7MsES8k9h7V+u1R4LdhA7
         vclDT20/k5p+2csuTgumTNo6cxJeOPO6dXy7dB9MwpD5490NE4627My+hS24hdx6BuP8
         mPJj7bx50cYYy4ELPfFvHhlnJKB993knMxn2o49woIG5HvpZrYyOtxpLyjXskqX30DE+
         dvbXuDf7h/MXHOGQyLSSiJl0QAMCzWa+ZNRY1/uj5ph5Mg7XBmJLA+pdi623qy4jWIsa
         fkzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wei.liu.linux@gmail.com designates 209.85.128.66 as permitted sender) smtp.mailfrom=wei.liu.linux@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com. [209.85.128.66])
        by gmr-mx.google.com with ESMTPS id q187si76951wme.2.2020.04.29.03.10.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 03:10:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of wei.liu.linux@gmail.com designates 209.85.128.66 as permitted sender) client-ip=209.85.128.66;
Received: by mail-wm1-f66.google.com with SMTP id k12so1373141wmj.3
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 03:10:59 -0700 (PDT)
X-Received: by 2002:a7b:c247:: with SMTP id b7mr2399071wmj.35.1588155059292;
        Wed, 29 Apr 2020 03:10:59 -0700 (PDT)
Received: from debian (44.142.6.51.dyn.plus.net. [51.6.142.44])
        by smtp.gmail.com with ESMTPSA id v19sm30385573wra.57.2020.04.29.03.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2020 03:10:58 -0700 (PDT)
Date: Wed, 29 Apr 2020 11:10:55 +0100
From: Wei Liu <wei.liu@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>, davem@davemloft.net
Cc: "K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>, linux-hyperv@vger.kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v2] hv_netvsc: Fix netvsc_start_xmit's return type
Message-ID: <20200429101055.rdrpchkypbkwxscj@debian>
References: <20200428100828.aslw3pn5nhwtlsnt@liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net>
 <20200428175455.2109973-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200428175455.2109973-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20180716
X-Original-Sender: wei.liu.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wei.liu.linux@gmail.com designates 209.85.128.66 as
 permitted sender) smtp.mailfrom=wei.liu.linux@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

David

Do you want this to go through net tree? I can submit it via hyperv tree
if that's preferred.

Wei.

On Tue, Apr 28, 2020 at 10:54:56AM -0700, Nathan Chancellor wrote:
> netvsc_start_xmit is used as a callback function for the ndo_start_xmit
> function pointer. ndo_start_xmit's return type is netdev_tx_t but
> netvsc_start_xmit's return type is int.
> 
> This causes a failure with Control Flow Integrity (CFI), which requires
> function pointer prototypes and callback function definitions to match
> exactly. When CFI is in enforcing, the kernel panics. When booting a
> CFI kernel with WSL 2, the VM is immediately terminated because of this.
> 
> The splat when CONFIG_CFI_PERMISSIVE is used:
> 
> [    5.916765] CFI failure (target: netvsc_start_xmit+0x0/0x10):
> [    5.916771] WARNING: CPU: 8 PID: 0 at kernel/cfi.c:29 __cfi_check_fail+0x2e/0x40
> [    5.916772] Modules linked in:
> [    5.916774] CPU: 8 PID: 0 Comm: swapper/8 Not tainted 5.7.0-rc3-next-20200424-microsoft-cbl-00001-ged4eb37d2c69-dirty #1
> [    5.916776] RIP: 0010:__cfi_check_fail+0x2e/0x40
> [    5.916777] Code: 48 c7 c7 70 98 63 a9 48 c7 c6 11 db 47 a9 e8 69 55 59 00 85 c0 75 02 5b c3 48 c7 c7 73 c6 43 a9 48 89 de 31 c0 e8 12 2d f0 ff <0f> 0b 5b c3 00 00 cc cc 00 00 cc cc 00 00 cc cc 00 00 85 f6 74 25
> [    5.916778] RSP: 0018:ffffa803c0260b78 EFLAGS: 00010246
> [    5.916779] RAX: 712a1af25779e900 RBX: ffffffffa8cf7950 RCX: ffffffffa962cf08
> [    5.916779] RDX: ffffffffa9c36b60 RSI: 0000000000000082 RDI: ffffffffa9c36b5c
> [    5.916780] RBP: ffff8ffc4779c2c0 R08: 0000000000000001 R09: ffffffffa9c3c300
> [    5.916781] R10: 0000000000000151 R11: ffffffffa9c36b60 R12: ffff8ffe39084000
> [    5.916782] R13: ffffffffa8cf7950 R14: ffffffffa8d12cb0 R15: ffff8ffe39320140
> [    5.916784] FS:  0000000000000000(0000) GS:ffff8ffe3bc00000(0000) knlGS:0000000000000000
> [    5.916785] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    5.916786] CR2: 00007ffef5749408 CR3: 00000002f4f5e000 CR4: 0000000000340ea0
> [    5.916787] Call Trace:
> [    5.916788]  <IRQ>
> [    5.916790]  __cfi_check+0x3ab58/0x450e0
> [    5.916793]  ? dev_hard_start_xmit+0x11f/0x160
> [    5.916795]  ? sch_direct_xmit+0xf2/0x230
> [    5.916796]  ? __dev_queue_xmit.llvm.11471227737707190958+0x69d/0x8e0
> [    5.916797]  ? neigh_resolve_output+0xdf/0x220
> [    5.916799]  ? neigh_connected_output.cfi_jt+0x8/0x8
> [    5.916801]  ? ip6_finish_output2+0x398/0x4c0
> [    5.916803]  ? nf_nat_ipv6_out+0x10/0xa0
> [    5.916804]  ? nf_hook_slow+0x84/0x100
> [    5.916807]  ? ip6_input_finish+0x8/0x8
> [    5.916807]  ? ip6_output+0x6f/0x110
> [    5.916808]  ? __ip6_local_out.cfi_jt+0x8/0x8
> [    5.916810]  ? mld_sendpack+0x28e/0x330
> [    5.916811]  ? ip_rt_bug+0x8/0x8
> [    5.916813]  ? mld_ifc_timer_expire+0x2db/0x400
> [    5.916814]  ? neigh_proxy_process+0x8/0x8
> [    5.916816]  ? call_timer_fn+0x3d/0xd0
> [    5.916817]  ? __run_timers+0x2a9/0x300
> [    5.916819]  ? rcu_core_si+0x8/0x8
> [    5.916820]  ? run_timer_softirq+0x14/0x30
> [    5.916821]  ? __do_softirq+0x154/0x262
> [    5.916822]  ? native_x2apic_icr_write+0x8/0x8
> [    5.916824]  ? irq_exit+0xba/0xc0
> [    5.916825]  ? hv_stimer0_vector_handler+0x99/0xe0
> [    5.916826]  ? hv_stimer0_callback_vector+0xf/0x20
> [    5.916826]  </IRQ>
> [    5.916828]  ? hv_stimer_global_cleanup.cfi_jt+0x8/0x8
> [    5.916829]  ? raw_setsockopt+0x8/0x8
> [    5.916830]  ? default_idle+0xe/0x10
> [    5.916832]  ? do_idle.llvm.10446269078108580492+0xb7/0x130
> [    5.916833]  ? raw_setsockopt+0x8/0x8
> [    5.916833]  ? cpu_startup_entry+0x15/0x20
> [    5.916835]  ? cpu_hotplug_enable.cfi_jt+0x8/0x8
> [    5.916836]  ? start_secondary+0x188/0x190
> [    5.916837]  ? secondary_startup_64+0xa5/0xb0
> [    5.916838] ---[ end trace f2683fa869597ba5 ]---
> 
> Avoid this by using the right return type for netvsc_start_xmit.
> 
> Fixes: fceaf24a943d8 ("Staging: hv: add the Hyper-V virtual network driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1009
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> v1 -> v2:
> 
> * Move splat into commit message rather than issue.
> 
> Comment from previous version:
> 
> Do note that netvsc_xmit still returns int because netvsc_xmit has a
> potential return from netvsc_vf_xmit, which does not return netdev_tx_t
> because of the call to dev_queue_xmit.
> 
> I am not sure if that is an oversight that was introduced by
> commit 0c195567a8f6e ("netvsc: transparent VF management") or if
> everything works properly as it is now.
> 
> My patch is purely concerned with making the definition match the
> prototype so it should be NFC aside from avoiding the CFI panic.
> 
>  drivers/net/hyperv/netvsc_drv.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
> index d8e86bdbfba1e..ebcfbae056900 100644
> --- a/drivers/net/hyperv/netvsc_drv.c
> +++ b/drivers/net/hyperv/netvsc_drv.c
> @@ -707,7 +707,8 @@ static int netvsc_xmit(struct sk_buff *skb, struct net_device *net, bool xdp_tx)
>  	goto drop;
>  }
>  
> -static int netvsc_start_xmit(struct sk_buff *skb, struct net_device *ndev)
> +static netdev_tx_t netvsc_start_xmit(struct sk_buff *skb,
> +				     struct net_device *ndev)
>  {
>  	return netvsc_xmit(skb, ndev, false);
>  }
> 
> base-commit: 51184ae37e0518fd90cb437a2fbc953ae558cd0d
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200429101055.rdrpchkypbkwxscj%40debian.
