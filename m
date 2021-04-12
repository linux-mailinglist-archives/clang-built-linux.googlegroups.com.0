Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB4HH2GBQMGQEHDPRKDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B9435CAFE
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:23:13 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id s8sf8191624qve.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:23:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244592; cv=pass;
        d=google.com; s=arc-20160816;
        b=PfviIsohliDV6iXyqcFB6Jb7VjNvT1zl7CuGwtByEA4XLwRZexFSHyGkLqOmY6rR+5
         sHwXRsY77p+jH7C2zlRl1ZfdUvXOqzXyC9qXuXXZ0JyuuIIAgxfkJFpWKAJV9WF8Un3+
         MCNeiX3CaBQpjkj0W9lNznbMYevWXgAtkdV88jGvlz5f9m9roqAOn9er3BLuNo6s/3Rq
         h5o0JUTvYmQsRsyblP/PNgxetMkGUNanbuXTcXs6O1/8AwxPpPaDxx1+mM/jkHxrhZov
         OLTQL5hX5kOh2qkF9zvN6nhjBEJKvYw6fYWqFRO1SnBlHq2lKSA15Wf0TibIF9JNNq6C
         KdOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RcZTM+/aWxD2Zwvc9a2XFgZmKb4DxTx2t00y6CLZaC4=;
        b=OJskaimjZG8mhvRqIBw6tPpdM/IRDccZ3LLbGviCCnXR+qbvzQLltBLMx+4QPMtlsG
         SX/6BcCJmallVmdyFGLLCnSy5iFwH1VsuXz4laIR3tbrlPs0MAEX1rkkPrLdQD9moE95
         Bw54nLxbJmixaWh3Fc75/INKIume5R7dlVs14F8b3uMVj5kICPZYpMNZGyX6a6gRH0P/
         ly0sOJRo/LlwA777cx0chmD6y3TPiwotJjP+oXMz40XWZhUX5X5Kmf3bT6pU952q6+Cn
         WDRIH8XZL6bfLYBsXNiqAd8csIh3w3oC7XXpuoIBZAEEeWl/u0kW7EenZeyUp6y7VZSP
         5Qxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=L58uIUdN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RcZTM+/aWxD2Zwvc9a2XFgZmKb4DxTx2t00y6CLZaC4=;
        b=J4Xm5PV24rD5EDxnSskQQmf2mXgxt+g9yD43bOmSRObK4N66C1nsu4lfG3diOw43vC
         S3JIcmHjX96nuB+2mtkb2hvGKPJDmov4y0Tq26wn0U+9tI1StcB94Q8EntNoOY8E1pEa
         lMzjMQZbMzZNwgaP87TRwcPDN/HeH7VP70+Q3q04R0mKI/wYAqtJlsLf++2zJhQnKj13
         lEy+4VQuEKKQ9j6eppY5aqK8dxqt+9Ku6Zt7sO4+3DdTyxzgMlQgK2Fg2zieJIUHS63+
         cWAce3Wxg/M1kEZ/woQu/ymzF7Zb16CiXzkUEf0+d0QxjDU27ScFc4dhYMb/WU4o21uj
         aBCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RcZTM+/aWxD2Zwvc9a2XFgZmKb4DxTx2t00y6CLZaC4=;
        b=m+yFG9kgw3XaFC/RdKA4/C7kLYWos3bQR/6xrCTaG9XBj5rA4R+uUEDHsS8hRfTeRs
         oK0LMWWKHDiQ0SSkLd5l2ptXdRbm89AOvoEjtoinr+En0HkyqaAj4uS5W24Q6cM51VYb
         tY7MtnPa/PWJxvwkm6LaptKf49A0qodx9L5j7TRRTCkLc8CfEfHVVpf6yMsu94v7sAk4
         ry1SblztuohajZk5uQcggvoTI9kyXbgOznyDngxZCJxckeRzo1u0hr62KxAG3f/KTsqh
         em/la5plN6UUU05AUqbkBD7QBc0GPg5SuBJVLg4jFfDAseu/5IrIQLdIyredDMErUHGi
         8Ayg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JRb8cMcEeqFA4HplZ4uLbGGWl+dvFxNW6QfIz+ay7Y5QjHkJX
	PKykx/EhT1D5SaiGPaDJVuk=
X-Google-Smtp-Source: ABdhPJxqn3ha1MVy1/kbgc5xKVdA3GhlvuSkZR9a6CuE7K1gRK8defUP7ipDhnbm7zwFFkT2lfylEg==
X-Received: by 2002:a05:6214:104f:: with SMTP id l15mr9660861qvr.52.1618244592483;
        Mon, 12 Apr 2021 09:23:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls2630532qkc.7.gmail; Mon, 12 Apr
 2021 09:23:12 -0700 (PDT)
X-Received: by 2002:a37:a990:: with SMTP id s138mr4655956qke.69.1618244591990;
        Mon, 12 Apr 2021 09:23:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244591; cv=none;
        d=google.com; s=arc-20160816;
        b=ozOf1H1wRns9zgFPy4uudZvmuFOMAgIp6ss8X/3A0YtsjPQvVcGElwXXTem3pgtdFz
         zp+KvEDS/DIxgwshdQDY6Eof166Tl3l4hDu2TLKqrxXbaXyM0D5JeDo0RUaZ5X2L3UPc
         3X3Mj96Kbt5ACEdNGz3lOVEpFqQ9/KhCiSXgTw404V3xHPhqjFz2ZQaEu0YV7FKlWm7B
         kmGYDchdu1EazhyjrG/7N4lITitbHShxJumpih63dbAt0+JlPzEpC4EsQe0UCoU+Gc/a
         +TqsQxBTQZJigQJReMx339eKOXlSomArw8GhpuBJXGTejMcuQrBbdhhx8zcrIJJA5kZq
         H6Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ik7amyAXfvBSNJIrDQLk7+4fmGBMEivd5+rRcLQFSwE=;
        b=HM/hn6th5A9+oLrrKBSGo7DtgNmqskWeWSBOYCO/7+wc2hw86dkhjkvaVorJmfBh11
         QPZKRaMoTCRcLEEluIV3xuv7ntCPeUsJGiCLsJU0GGU9F3pqi34J7E9DzsM2dZbiAjmh
         OojS6Y5aQexbbmPtEAlaf0mgBfEXNQOt5faRoNSgP37xwcxG24VuIBZcwQBADIVt6AgD
         bKpHH5L8mmrkkNBTaLuEHzCNNWMJC/cHZpIF0Z6Bonoxb+FiTCZ5DNNT0irqQx0F16I3
         QYemmo2JW1+Nchi+MFKY7tl49TwtMcxYyJBwKyRI4yXNCn4cgiJPKY56R0eTqATGqXil
         +0AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=L58uIUdN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t7si558387qkp.7.2021.04.12.09.23.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:23:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 011AB6121F;
	Mon, 12 Apr 2021 16:23:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jiri Kosina <jkosina@suse.cz>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Luca Coelho <luciano.coelho@intel.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.11 11/51] iwlwifi: Fix softirq/hardirq disabling in iwl_pcie_enqueue_hcmd()
Date: Mon, 12 Apr 2021 12:22:16 -0400
Message-Id: <20210412162256.313524-11-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162256.313524-1-sashal@kernel.org>
References: <20210412162256.313524-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=L58uIUdN;       spf=pass
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

From: Jiri Kosina <jkosina@suse.cz>

[ Upstream commit 2800aadc18a64c96b051bcb7da8a7df7d505db3f ]

It's possible for iwl_pcie_enqueue_hcmd() to be called with hard IRQs
disabled (e.g. from LED core). We can't enable BHs in such a situation.

Turn the unconditional BH-enable/BH-disable code into
hardirq-disable/conditional-enable.

This fixes the warning below.

 WARNING: CPU: 1 PID: 1139 at kernel/softirq.c:178 __local_bh_enable_ip+0xa5/0xf0
 CPU: 1 PID: 1139 Comm: NetworkManager Not tainted 5.12.0-rc1-00004-gb4ded168af79 #7
 Hardware name: LENOVO 20K5S22R00/20K5S22R00, BIOS R0IET38W (1.16 ) 05/31/2017
 RIP: 0010:__local_bh_enable_ip+0xa5/0xf0
 Code: f7 69 e8 ee 23 14 00 fb 66 0f 1f 44 00 00 65 8b 05 f0 f4 f7 69 85 c0 74 3f 48 83 c4 08 5b c3 65 8b 05 9b fe f7 69 85 c0 75 8e <0f> 0b eb 8a 48 89 3c 24 e8 4e 20 14 00 48 8b 3c 24 eb 91 e8 13 4e
 RSP: 0018:ffffafd580b13298 EFLAGS: 00010046
 RAX: 0000000000000000 RBX: 0000000000000201 RCX: 0000000000000000
 RDX: 0000000000000003 RSI: 0000000000000201 RDI: ffffffffc1272389
 RBP: ffff96517ae4c018 R08: 0000000000000001 R09: 0000000000000000
 R10: ffffafd580b13178 R11: 0000000000000001 R12: ffff96517b060000
 R13: 0000000000000000 R14: ffffffff80000000 R15: 0000000000000001
 FS:  00007fc604ebefc0(0000) GS:ffff965267480000(0000) knlGS:0000000000000000
 CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
 CR2: 000055fb3fef13b2 CR3: 0000000109112004 CR4: 00000000003706e0
 Call Trace:
  ? _raw_spin_unlock_bh+0x1f/0x30
  iwl_pcie_enqueue_hcmd+0x5d9/0xa00 [iwlwifi]
  iwl_trans_txq_send_hcmd+0x6c/0x430 [iwlwifi]
  iwl_trans_send_cmd+0x88/0x170 [iwlwifi]
  ? lock_acquire+0x277/0x3d0
  iwl_mvm_send_cmd+0x32/0x80 [iwlmvm]
  iwl_mvm_led_set+0xc2/0xe0 [iwlmvm]
  ? led_trigger_event+0x46/0x70
  led_trigger_event+0x46/0x70
  ieee80211_do_open+0x5c5/0xa20 [mac80211]
  ieee80211_open+0x67/0x90 [mac80211]
  __dev_open+0xd4/0x150
  __dev_change_flags+0x19e/0x1f0
  dev_change_flags+0x23/0x60
  do_setlink+0x30d/0x1230
  ? lock_is_held_type+0xb4/0x120
  ? __nla_validate_parse.part.7+0x57/0xcb0
  ? __lock_acquire+0x2e1/0x1a50
  __rtnl_newlink+0x560/0x910
  ? __lock_acquire+0x2e1/0x1a50
  ? __lock_acquire+0x2e1/0x1a50
  ? lock_acquire+0x277/0x3d0
  ? sock_def_readable+0x5/0x290
  ? lock_is_held_type+0xb4/0x120
  ? find_held_lock+0x2d/0x90
  ? sock_def_readable+0xb3/0x290
  ? lock_release+0x166/0x2a0
  ? lock_is_held_type+0x90/0x120
  rtnl_newlink+0x47/0x70
  rtnetlink_rcv_msg+0x25c/0x470
  ? netlink_deliver_tap+0x97/0x3e0
  ? validate_linkmsg+0x350/0x350
  netlink_rcv_skb+0x50/0x100
  netlink_unicast+0x1b2/0x280
  netlink_sendmsg+0x336/0x450
  sock_sendmsg+0x5b/0x60
  ____sys_sendmsg+0x1ed/0x250
  ? copy_msghdr_from_user+0x5c/0x90
  ___sys_sendmsg+0x88/0xd0
  ? lock_is_held_type+0xb4/0x120
  ? find_held_lock+0x2d/0x90
  ? lock_release+0x166/0x2a0
  ? __fget_files+0xfe/0x1d0
  ? __sys_sendmsg+0x5e/0xa0
  __sys_sendmsg+0x5e/0xa0
  ? lockdep_hardirqs_on_prepare+0xd9/0x170
  do_syscall_64+0x33/0x80
  entry_SYSCALL_64_after_hwframe+0x44/0xae
 RIP: 0033:0x7fc605c9572d
 Code: 28 89 54 24 1c 48 89 74 24 10 89 7c 24 08 e8 da ee ff ff 8b 54 24 1c 48 8b 74 24 10 41 89 c0 8b 7c 24 08 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 33 44 89 c7 48 89 44 24 08 e8 2e ef ff ff 48
 RSP: 002b:00007fffc83789f0 EFLAGS: 00000293 ORIG_RAX: 000000000000002e
 RAX: ffffffffffffffda RBX: 000055ef468570c0 RCX: 00007fc605c9572d
 RDX: 0000000000000000 RSI: 00007fffc8378a30 RDI: 000000000000000c
 RBP: 0000000000000010 R08: 0000000000000000 R09: 0000000000000000
 R10: 0000000000000000 R11: 0000000000000293 R12: 0000000000000000
 R13: 00007fffc8378b80 R14: 00007fffc8378b7c R15: 0000000000000000
 irq event stamp: 170785
 hardirqs last  enabled at (170783): [<ffffffff9609a8c2>] __local_bh_enable_ip+0x82/0xf0
 hardirqs last disabled at (170784): [<ffffffff96a8613d>] _raw_read_lock_irqsave+0x8d/0x90
 softirqs last  enabled at (170782): [<ffffffffc1272389>] iwl_pcie_enqueue_hcmd+0x5d9/0xa00 [iwlwifi]
 softirqs last disabled at (170785): [<ffffffffc1271ec6>] iwl_pcie_enqueue_hcmd+0x116/0xa00 [iwlwifi]

Signed-off-by: Jiri Kosina <jkosina@suse.cz>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # LLVM/Clang v12.0.0-rc3
Acked-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Link: https://lore.kernel.org/r/nycvar.YFH.7.76.2103021125430.12405@cbobk.fhfr.pm
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/intel/iwlwifi/pcie/tx.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/intel/iwlwifi/pcie/tx.c b/drivers/net/wireless/intel/iwlwifi/pcie/tx.c
index 689f51968049..2280f05fbc18 100644
--- a/drivers/net/wireless/intel/iwlwifi/pcie/tx.c
+++ b/drivers/net/wireless/intel/iwlwifi/pcie/tx.c
@@ -929,6 +929,7 @@ static int iwl_pcie_enqueue_hcmd(struct iwl_trans *trans,
 	u32 cmd_pos;
 	const u8 *cmddata[IWL_MAX_CMD_TBS_PER_TFD];
 	u16 cmdlen[IWL_MAX_CMD_TBS_PER_TFD];
+	unsigned long flags;
 
 	if (WARN(!trans->wide_cmd_header &&
 		 group_id > IWL_ALWAYS_LONG_GROUP,
@@ -1012,10 +1013,10 @@ static int iwl_pcie_enqueue_hcmd(struct iwl_trans *trans,
 		goto free_dup_buf;
 	}
 
-	spin_lock_bh(&txq->lock);
+	spin_lock_irqsave(&txq->lock, flags);
 
 	if (iwl_txq_space(trans, txq) < ((cmd->flags & CMD_ASYNC) ? 2 : 1)) {
-		spin_unlock_bh(&txq->lock);
+		spin_unlock_irqrestore(&txq->lock, flags);
 
 		IWL_ERR(trans, "No space in command queue\n");
 		iwl_op_mode_cmd_queue_full(trans->op_mode);
@@ -1175,7 +1176,7 @@ static int iwl_pcie_enqueue_hcmd(struct iwl_trans *trans,
  unlock_reg:
 	spin_unlock(&trans_pcie->reg_lock);
  out:
-	spin_unlock_bh(&txq->lock);
+	spin_unlock_irqrestore(&txq->lock, flags);
  free_dup_buf:
 	if (idx < 0)
 		kfree(dup_buf);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162256.313524-11-sashal%40kernel.org.
