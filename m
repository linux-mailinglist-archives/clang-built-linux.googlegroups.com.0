Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLO4UH2QKGQERLO62EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0DB1BC74C
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 19:55:58 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id u190sf11419313vke.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 10:55:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588096557; cv=pass;
        d=google.com; s=arc-20160816;
        b=tzRdP4PADw7pCmSgsQ4yZcZTvayB0b66egfoj6MJQQgAEma/QTU2OnUVvLs5tW+NG6
         chUqCHQ6KhX+ZwKElaYRXf/YZCGiYUmBIZjUcwaFJlK9AnyyaUUV3/XaCYeDK2x7fKFX
         Zko04ZIe8uPiFptFAzeBHANX8yNlXz4Kt4RJGrpNwgd6PA5qFif5NhrtG7somdYtQykq
         yOov2ltvXFHe8BsfMBPzFLmB9KcxH9u7DmszOQL0jjIDHeGv/gJ/F44epYP19nrcLu51
         OzXacF+m89XGbjILW15iLy7r2JeQjmOFdywPn0YFmFiOfmI1LAgAlv9I+KzXkfU+3OZy
         MGfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=FqjfRQVFbitAACHZzLrPPuYv8ULeQ1FnzeVOxjmBJOs=;
        b=k6fb3KhzF5t37Mr48aRSuAhQV1JrMyzRcSeorL4WdAm1NMer+TjO5dZgaYYsyEXUfH
         byfST2HKFh6z5RnfIvtDNJ45WEpqQHfXniAlV9trQJiOp/I0KIXp3KsgqFzlxZI7ngF5
         REVxOtXaMFwd3qOnVAsKA24A161zyFQaTHNwzKc3VUNSNlQiHEy0OaNDFp867+ufJDQJ
         KlIKRtV+beXDu/06tH5JkECvEJl3wWI+APcX9ibTFrOPv2p0ROLV53Y+EFOhm9RJ8UuV
         MxMi8H2TsliCYWh9Q48CAtEeqTdemnN8n0XdXg1C5euXh+DBKOzh02R/ncRHZy4fXMbF
         K0Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NcxHbMn9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FqjfRQVFbitAACHZzLrPPuYv8ULeQ1FnzeVOxjmBJOs=;
        b=FC+xrvtsUP15VXQh3uGuwS8LGOrqEht9KXv6N6mL2zVpHvU591AMQSVBj4qF6W0tkg
         oOXI0jJKGw1rJ/khg0L8iqGnuOKvwfuP7812le7bogmc/HdqtzAgsYTDYknPcWsAwEhK
         oqAVxrRC4uYq211Tx7U7gsNQoh0KxMdb/E0Veh/YN/BrJNdeV71AizXcR1Yo/95r+UGs
         auAGYR/IXAGtpADdIygNxkU8bOQVmSFih+thyKGBZHeumz3bn9lkYXZR2J2oy6WpDLVO
         Vu8e3ZRqswJZ8OUwpbCMrROi7VznyZi1HecKRkbs9WDZ0QLZ3XNo97LHJ8ZueecT6wF/
         Ah+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FqjfRQVFbitAACHZzLrPPuYv8ULeQ1FnzeVOxjmBJOs=;
        b=FOmkpz+GI+1RIXuresc57EX4wy1TdkzbQL70+aGaB6ng6bbxeE2eFBPhRLTDp0l44G
         T0nJIvq2011s3AXpF0j7NYwgC7jvrjcKLDr59qmtNYT+QTlRtqnSd78vvIjKeXoJJ8AU
         DG9ghjFLTLT2Bqu167kbq284QA/0akHIXtm6D3J5PXMVHz32qSZJCpduvIDb5USBv2uE
         Ir89rw6vnExGvSB5msGCE7gUWd6sQB3wGXy2C3RurKeFei2i33kA1T6Efjxyx5tlmQXZ
         29SdGpRWgOcMKUAn6lP6qOFrhp3OkMXPchYxgCZdlhLhtXujcXliRG2XH49IvDdOYq3B
         FV5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FqjfRQVFbitAACHZzLrPPuYv8ULeQ1FnzeVOxjmBJOs=;
        b=jZplgDEKDs1t2W5b3C5BGHeySqhLPlu81XI1gvlYc5JJJGS7idO5GCUcQ5+Apn3Dpo
         x4w4oOUIADbDxMmRN+A94QVfArArlogc8+YhkwTOfuMQRYfhneCSXnKwbcfD0qqTUGJB
         2HUFwSPOzHvRrz/lnnwYLWc8oECic7r3XzDNZO6mqiSi022cnEr8BKm8ZpCL1Ekl53tx
         +j5VEtUV4zLyEPHelgwFFjqqEQGmJlkRCMPN8wrH5fDi1ikmTocC+FkGfWpYJZqIAnIQ
         YjipX68F54DNP/IMn0J7MNARtk/ZeR1Mw4pu6oQ2M5JKephGgJe1jDxdI5CDIXHr4315
         4ySg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY+UytOSD4rG8YWbCH5yvB0GGCzzBSc2CDAdq1lD2INez0zlARj
	uWUNh2QySrpOXeC5eVvZ84o=
X-Google-Smtp-Source: APiQypKGLoY90ROPD7qewyjGTPKONu4V68tLwoV/xHD48f8cdkynK2BGMfWB5CXpajF4Tz2NpLbNFg==
X-Received: by 2002:ab0:650f:: with SMTP id w15mr20514324uam.93.1588096557630;
        Tue, 28 Apr 2020 10:55:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2992:: with SMTP id u18ls1979727uap.8.gmail; Tue, 28 Apr
 2020 10:55:57 -0700 (PDT)
X-Received: by 2002:a9f:236a:: with SMTP id 97mr22079526uae.35.1588096557256;
        Tue, 28 Apr 2020 10:55:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588096557; cv=none;
        d=google.com; s=arc-20160816;
        b=h4qo1JO/XxIwShlem0/xeYTg+m/vMgTMXRTgUwXsBkj/IosnqFYsx5plPiOmWJFKKm
         51vunqIhkRhpyeP7viwX/N8JVWaaUBH05GfLN/OSRr0sVMKWecaDs1jbgTgzw2AfCdcq
         sw5Ui59rDUFHx7oenoAGCZ4kB9Q40fRpz4eVt90LHMMmBd+121FpsEISxQeUNEiESlJC
         GNYmmh4Nd0QtJos5jMsF9Ubw6vwaAUA0uVpBMtR0sLrkHgE/yKsBtDQkxTVB6hYRBH5s
         toA/5AZY+aUWEMzJwIqQuj7eSKH5sTw8EkBasiD/Jh305fn1TLfrxJgDtBbfYUsy3RNN
         nsCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WPNSEszGsKvWwr5mWrgU0hiRBGrCOhQfvvHO8mYiip0=;
        b=jSmCel76ZOwSKlynr/58Ih1L3cmsU3xLvotzEppQIvU6Il7gQIrbFBtf5NEt/nJBHk
         4h4ulsH4vw9/fVIQT2F6E2vQ0RPz8ISBpb6akSagCyTNOeJWvixRslG7buioMkU7LUxE
         pO51rLBZ7mQZoUngxxu/BrLWCZXj8w0r/b/irzVax8xAwpgmfyVP5i76fIWSwNh/xHo0
         WoJSCbp0s8OJN97M22MbcIgBgT0kbj8DWgaxbsLQih5y6cKiJUsouq3DEGM0Kt74tH6C
         OLHJXfd34TmQS4EqmN2u8qOnWKR3WIV41+tAfAwzgCNQZ1BW4V73fWeCodrhYVzFpaVf
         387Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NcxHbMn9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id l3si18064uap.0.2020.04.28.10.55.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 10:55:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 72so34212475otu.1
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 10:55:57 -0700 (PDT)
X-Received: by 2002:aca:eb95:: with SMTP id j143mr3883044oih.159.1588096556631;
        Tue, 28 Apr 2020 10:55:56 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b6sm5007825otq.18.2020.04.28.10.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 10:55:55 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>
Cc: linux-hyperv@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] hv_netvsc: Fix netvsc_start_xmit's return type
Date: Tue, 28 Apr 2020 10:54:56 -0700
Message-Id: <20200428175455.2109973-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200428100828.aslw3pn5nhwtlsnt@liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net>
References: <20200428100828.aslw3pn5nhwtlsnt@liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NcxHbMn9;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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
---

v1 -> v2:

* Move splat into commit message rather than issue.

Comment from previous version:

Do note that netvsc_xmit still returns int because netvsc_xmit has a
potential return from netvsc_vf_xmit, which does not return netdev_tx_t
because of the call to dev_queue_xmit.

I am not sure if that is an oversight that was introduced by
commit 0c195567a8f6e ("netvsc: transparent VF management") or if
everything works properly as it is now.

My patch is purely concerned with making the definition match the
prototype so it should be NFC aside from avoiding the CFI panic.

 drivers/net/hyperv/netvsc_drv.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
index d8e86bdbfba1e..ebcfbae056900 100644
--- a/drivers/net/hyperv/netvsc_drv.c
+++ b/drivers/net/hyperv/netvsc_drv.c
@@ -707,7 +707,8 @@ static int netvsc_xmit(struct sk_buff *skb, struct net_device *net, bool xdp_tx)
 	goto drop;
 }
 
-static int netvsc_start_xmit(struct sk_buff *skb, struct net_device *ndev)
+static netdev_tx_t netvsc_start_xmit(struct sk_buff *skb,
+				     struct net_device *ndev)
 {
 	return netvsc_xmit(skb, ndev, false);
 }

base-commit: 51184ae37e0518fd90cb437a2fbc953ae558cd0d
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428175455.2109973-1-natechancellor%40gmail.com.
