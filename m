Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3NG632QKGQE6LTKZDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D38E51D39BF
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 20:52:30 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id k3sf1724535vkb.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 11:52:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589482350; cv=pass;
        d=google.com; s=arc-20160816;
        b=jvwY+GcCs6D2uLuO2oN09KN3CTCUOI9xQrv67X2s8pA52kgASYdTiKrMFY+TlSgQLE
         t4HorYRlJNuA86+H+lsysTZZvwaU+l+9sutB2zUi8oB45lL22/34waXNPQE9NcA6zna/
         pt4yhWRkdjjeMo+S4cvT7/KHKW9GMbMl48qtApmReZNie9sifdx+n0+8UWfgbcq0bmlR
         xWZ+Gt5huFG9WIntl29XhHm3iRHEV1BMiyqHgzxAFa/ibKt0iYMkb110jYGT0jJi2zlk
         +DF86Vg+WWwLQWY1/s4zg8ypiBa7ejPupImbbgxmSRQncZng58nJfJ8ZLAYgehuGmTFA
         MuJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DmFapK82KV8UrhYKFV1hKxMwl+Fa9/k9mhgVo4U/8k4=;
        b=XwrT93t89t50H9vpHSX4irXgf5yJLStuTSHvkl7asERyCNug3SgwmxOCP45mbJ7r0t
         ug4C+3LZrsA20n6wxbz/9XRcMKYON9ODuR+kdXQgvVzDxv3cI4+pCixJyqpvomVHydfj
         3xzDCIzLiWrz/VbOanVjwjQ2YrIBAnBhNzdxnTWs0ivIoV+dQlNmXtNHprlhu14UnCp4
         XYSaey+wJbZF+LivWLqaw4nMgSA1i/h7x/ln8bIBekpTNhmyWEKvd3xWyWwXUIxx6nEY
         k90PjW3bkOywxUGYB43h86Jm2mg1SBAceHu46e5SznwcR9oI4vn6Gu7VM4/a66GGCvyP
         LDlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2i4blJ5i;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DmFapK82KV8UrhYKFV1hKxMwl+Fa9/k9mhgVo4U/8k4=;
        b=sdNO7/BYfdq+5CE/mrfY4Xwq54XPBgqF2I8GaAarSJ4yrh5dLzdMAQkhvl3GKwpbKA
         XIRtrJopsGi7iRN6orGRv11WO8O5xgEKqFSzPO1ZsDd0PIkXbVGEOR+Omo8YHwp+zT8d
         VCxMyKUp6ZHT4j4FKLpP4PG98pCNamdBtVLLJ6jeUWHQJu9nwAYMxKsroJq3tRfi95HZ
         efTO5e4y0+e100wvJrKk0uuZv7aEOPLVVEYzAMQmvudO8GVkOkZHmLG+nQ01S36s0azK
         7a3T86AubXdkYv+1t4GKzUhPzFfMpBHENRc96Ui7j8RTh3nEMvIMthtFAIsTgPqmPeZB
         wr6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DmFapK82KV8UrhYKFV1hKxMwl+Fa9/k9mhgVo4U/8k4=;
        b=TcNgLVaV2oNFenqHy2EzJvYjoRHi1e02NH/t7m5AJCRF0GZkAbzqE1RP2vSY66TOly
         gMeO4TQyx7PYgdAai3w0BHNBYr912eMnwuVxI2sTU4BRpmpmMK/XettlG866kqjn4JoP
         WuvEu+i12SS25U34t6avKHoxht1v6luNsdZAwyAkDP0vZuxFySXRUndcZ7eZepJ5hMsO
         DcHkCSVmbrOsDHwQdIC92PhwQemgDFIycaqA8BCMfCHaPh1M3LcYYzj2n/ojKvrJ6hmF
         63wGeGL+SUdgcvqYJxdtEqhWIk33BJmPYPwP4Vwb9MET/IyIbvI/4Z6o1kMrXiuRar+v
         wyvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MrOZCocqDMgX+Zn4wOkuS2XZ6VHYYCL7XRo/ZYmWIKxhQlUB/
	1M4aVXV7aymgHG719EXcil4=
X-Google-Smtp-Source: ABdhPJzh/xgdOx/QEt3OjVG31TD21By0NZ8wJqDd5z0jh0c/7DmdquwrhvVnoB3kuZXehv7UcnxwBQ==
X-Received: by 2002:a9f:26e2:: with SMTP id 89mr5499534uay.104.1589482349803;
        Thu, 14 May 2020 11:52:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3346:: with SMTP id z67ls514500vsz.6.gmail; Thu, 14 May
 2020 11:52:27 -0700 (PDT)
X-Received: by 2002:a67:fb57:: with SMTP id e23mr4913521vsr.140.1589482347101;
        Thu, 14 May 2020 11:52:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589482347; cv=none;
        d=google.com; s=arc-20160816;
        b=UmLJjYnEhABVP6qQQ0wJD2Mvig/gyk9M+98vkqSiRA86ky7w/KCrUTNVaPDZHN6BM4
         yXRjQWIFduxWC7NUQllaIiuwunMESFSgyD4PqgpOnCjObSWHGaFoYa2egGdtBTl0AmdJ
         FjJtq35sRKgAUTLZqvkCw7omhfUchiQBXqq2+Vx16ra+SSxnGTiivsWuGrJwTnSKSZ78
         Hto5JmbiFk4YDLQPNWBMyv0xcqd3MQOw+LkTcN4svY28+eI8RFZfzXHmk/i3RZfK+LQV
         g95hUb2HgRvP+4oDWeIkqHjC1bps8cGZMw8YBecfZ1V0snVlm00TeFn7k6SmHwx6oeCp
         vxlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3KjC3YbBnjNSG+chn2xvJ8CoUfX5/VedvrhE+JjM8aE=;
        b=Nw3hpR+l1AkPpqkkP7qUxRGOL99lQrfKR6gnmYmhxZ7HpQa5n042jfaiDpDfszgJu+
         whjr+EOBpIBf/TlfN7SXo+/qMqHuujnQOJugTsg719Gzx068hhgt4rbNP2iwpWxltjg9
         N1z2i5bm09bPhvfqB7uFSSwG/Gf8rHb+9fTpcaNYzQ7olhP256XAjDvZXfrcSHbK3QX+
         P7Lxjix8xEaKAB5mKs8jcfTBH7opq6Z21bmg/qP/UVH++doLD/opgNr0K5sGzmaJtZU/
         pQoBRBPETnBeOeJU/ktNTyc5Xt4KL9QpyAyP4GiB6d1mP4rMq4YFSmK8XzWFNDJ5Toxq
         iWmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2i4blJ5i;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 132si313591vkb.1.2020.05.14.11.52.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 11:52:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 046F720722;
	Thu, 14 May 2020 18:52:24 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-hyperv@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.6 29/62] hv_netvsc: Fix netvsc_start_xmit's return type
Date: Thu, 14 May 2020 14:51:14 -0400
Message-Id: <20200514185147.19716-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514185147.19716-1-sashal@kernel.org>
References: <20200514185147.19716-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2i4blJ5i;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 7fdc66debebc6a7170a37c8c9b0d9585a9788fb4 ]

netvsc_start_xmit is used as a callback function for the ndo_start_xmit
function pointer. ndo_start_xmit's return type is netdev_tx_t but
netvsc_start_xmit's return type is int.

This causes a failure with Control Flow Integrity (CFI), which requires
function pointer prototypes and callback function definitions to match
exactly. When CFI is in enforcing, the kernel panics. When booting a
CFI kernel with WSL 2, the VM is immediately terminated because of this.

The splat when CONFIG_CFI_PERMISSIVE is used:

[    5.916765] CFI failure (target: netvsc_start_xmit+0x0/0x10):
[    5.916771] WARNING: CPU: 8 PID: 0 at kernel/cfi.c:29 __cfi_check_fail+0x2e/0x40
[    5.916772] Modules linked in:
[    5.916774] CPU: 8 PID: 0 Comm: swapper/8 Not tainted 5.7.0-rc3-next-20200424-microsoft-cbl-00001-ged4eb37d2c69-dirty #1
[    5.916776] RIP: 0010:__cfi_check_fail+0x2e/0x40
[    5.916777] Code: 48 c7 c7 70 98 63 a9 48 c7 c6 11 db 47 a9 e8 69 55 59 00 85 c0 75 02 5b c3 48 c7 c7 73 c6 43 a9 48 89 de 31 c0 e8 12 2d f0 ff <0f> 0b 5b c3 00 00 cc cc 00 00 cc cc 00 00 cc cc 00 00 85 f6 74 25
[    5.916778] RSP: 0018:ffffa803c0260b78 EFLAGS: 00010246
[    5.916779] RAX: 712a1af25779e900 RBX: ffffffffa8cf7950 RCX: ffffffffa962cf08
[    5.916779] RDX: ffffffffa9c36b60 RSI: 0000000000000082 RDI: ffffffffa9c36b5c
[    5.916780] RBP: ffff8ffc4779c2c0 R08: 0000000000000001 R09: ffffffffa9c3c300
[    5.916781] R10: 0000000000000151 R11: ffffffffa9c36b60 R12: ffff8ffe39084000
[    5.916782] R13: ffffffffa8cf7950 R14: ffffffffa8d12cb0 R15: ffff8ffe39320140
[    5.916784] FS:  0000000000000000(0000) GS:ffff8ffe3bc00000(0000) knlGS:0000000000000000
[    5.916785] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    5.916786] CR2: 00007ffef5749408 CR3: 00000002f4f5e000 CR4: 0000000000340ea0
[    5.916787] Call Trace:
[    5.916788]  <IRQ>
[    5.916790]  __cfi_check+0x3ab58/0x450e0
[    5.916793]  ? dev_hard_start_xmit+0x11f/0x160
[    5.916795]  ? sch_direct_xmit+0xf2/0x230
[    5.916796]  ? __dev_queue_xmit.llvm.11471227737707190958+0x69d/0x8e0
[    5.916797]  ? neigh_resolve_output+0xdf/0x220
[    5.916799]  ? neigh_connected_output.cfi_jt+0x8/0x8
[    5.916801]  ? ip6_finish_output2+0x398/0x4c0
[    5.916803]  ? nf_nat_ipv6_out+0x10/0xa0
[    5.916804]  ? nf_hook_slow+0x84/0x100
[    5.916807]  ? ip6_input_finish+0x8/0x8
[    5.916807]  ? ip6_output+0x6f/0x110
[    5.916808]  ? __ip6_local_out.cfi_jt+0x8/0x8
[    5.916810]  ? mld_sendpack+0x28e/0x330
[    5.916811]  ? ip_rt_bug+0x8/0x8
[    5.916813]  ? mld_ifc_timer_expire+0x2db/0x400
[    5.916814]  ? neigh_proxy_process+0x8/0x8
[    5.916816]  ? call_timer_fn+0x3d/0xd0
[    5.916817]  ? __run_timers+0x2a9/0x300
[    5.916819]  ? rcu_core_si+0x8/0x8
[    5.916820]  ? run_timer_softirq+0x14/0x30
[    5.916821]  ? __do_softirq+0x154/0x262
[    5.916822]  ? native_x2apic_icr_write+0x8/0x8
[    5.916824]  ? irq_exit+0xba/0xc0
[    5.916825]  ? hv_stimer0_vector_handler+0x99/0xe0
[    5.916826]  ? hv_stimer0_callback_vector+0xf/0x20
[    5.916826]  </IRQ>
[    5.916828]  ? hv_stimer_global_cleanup.cfi_jt+0x8/0x8
[    5.916829]  ? raw_setsockopt+0x8/0x8
[    5.916830]  ? default_idle+0xe/0x10
[    5.916832]  ? do_idle.llvm.10446269078108580492+0xb7/0x130
[    5.916833]  ? raw_setsockopt+0x8/0x8
[    5.916833]  ? cpu_startup_entry+0x15/0x20
[    5.916835]  ? cpu_hotplug_enable.cfi_jt+0x8/0x8
[    5.916836]  ? start_secondary+0x188/0x190
[    5.916837]  ? secondary_startup_64+0xa5/0xb0
[    5.916838] ---[ end trace f2683fa869597ba5 ]---

Avoid this by using the right return type for netvsc_start_xmit.

Fixes: fceaf24a943d8 ("Staging: hv: add the Hyper-V virtual network driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/1009
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Haiyang Zhang <haiyangz@microsoft.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/hyperv/netvsc_drv.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
index 2c0a24c606fc7..28a5d46ad5266 100644
--- a/drivers/net/hyperv/netvsc_drv.c
+++ b/drivers/net/hyperv/netvsc_drv.c
@@ -710,7 +710,8 @@ static int netvsc_xmit(struct sk_buff *skb, struct net_device *net, bool xdp_tx)
 	goto drop;
 }
 
-static int netvsc_start_xmit(struct sk_buff *skb, struct net_device *ndev)
+static netdev_tx_t netvsc_start_xmit(struct sk_buff *skb,
+				     struct net_device *ndev)
 {
 	return netvsc_xmit(skb, ndev, false);
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200514185147.19716-29-sashal%40kernel.org.
