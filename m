Return-Path: <clang-built-linux+bncBD3PNDEXYYLBB3PQ4H7AKGQEV6LDE3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8C42DA96F
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 09:48:46 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id e14sf13150902iow.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 00:48:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608022125; cv=pass;
        d=google.com; s=arc-20160816;
        b=ko4s8o5wiLSpEfISWLymFq5n6zgmazm6x0ZZyRtwT4Y2AUa+e6ulL8lYRHdnBkSAiE
         4ZR+jtgRtxaqhYIakEkspFxsKne24qKzYwsqR42Jitz089YXW3/x+LyCTT3v8BXF708y
         mbYd+zj3UQaQIA9fkWrOfPrNpHddsmt5v3/MhsBzukiK9RgDSQTp33WKSdZuxKFmwHhN
         MCxAuDvpvooQgiUzyBbyQc/9wXgdD7+IHRVr/hAO/9n/PopjAd5l4PSyV7FJLA3WnB8c
         9G5nVZiU/IAkuif8Ps+OOcS9CWRZeV6kCyf9ANeb6vdS/rC+WUyLOAIDSanRYqV8kKFm
         7LxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=lGXG7dBStK/PACrzqLvUYRLD/bOiwBBFm+/5d2JLzAw=;
        b=aWt4iUVPlYOPXf48TeC2aBHldjC0iYFffE06JR3uYlIlpg/alWSnfaDErX5CP4cccN
         Wt75oBpfrTEey1jzCcO9PUNHHj2FXImh7vIsir/uuRL7pGvqX7bt8oqD9wzVUehOEyxA
         AvTRz3cxrSZRS2fjrYCzNBM8zFHAXZSJXIIfQ1Wa5+dvUMrh6hgdTgII1WKRkCu1N4+D
         zdPAA0nnIDYwzWaKlg/Rdwp/ujvVm+kVh2f9RSZQejh5Fpwx57Wl88Xt3GIZEQvTmsm2
         ZFccjH+yniX/CfS2SazNumpUFLgO1XFMZD3g2VNxuGu51v6OLLHTRfR1kvsWtSTqtLRb
         0SIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k7f72Tan;
       spf=pass (google.com: domain of yaohaidong369@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=yaohaidong369@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lGXG7dBStK/PACrzqLvUYRLD/bOiwBBFm+/5d2JLzAw=;
        b=b53hreDUao7pg0HRBqDx/Igb4nnYIZDp2K2oZohsxRVFQkQziyIUulZmVjzNrbP5uS
         zMMaNfTpk9UQXKSufRgseWPl3DBwctpS+uXfQJZL2xp5m9yXQZ98Zc/SL5MrJXs2QlS9
         emvUowzjJ4fiGRRj4itaWYoMc2jVDzpm8+nOdiOwAKPHYpdPiCWTJcWwZPOGkKPP5Bnq
         YiAA7YabtRLtXUJnEOmK1AcY04Cu9Ldtxv2GQDb7HcU9VnxJZ/LuW29rFtTWLgRbzcQi
         uFdg4JXR5F7gvwXyjcZqJsmZ9rcAlRPVWS4Vc/h9nQlq+bKrUCmRA9kOHUkCaf1REG4L
         5R6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lGXG7dBStK/PACrzqLvUYRLD/bOiwBBFm+/5d2JLzAw=;
        b=csb3gBwVK1ijR4AfYtnQd113ZM5jcEMlcqbqCD3f9LAHqaNJPwNK2KUAYJKRWwE6f5
         SGxKJiuNjeCbe/TYAjFQC4owr6WEibCzI2tlMngmH/1yyOTPvimEXwPVd80GD61igH+B
         kACo2H16YkRlrmDmOrNJV1xMq3QXdpufLWEZVjEoSHQB/SfcpFdVVB9wdCxgc+FUlF1e
         /9YXoli6pDYY5/cHjPwr8JLF14K9goYVdKFFbYe6TJA4ipY5vofy/f2arR2So1uZD19c
         vgcxKnx+RlSZsJeymXkAtBno4tClbCp6Mocs5h1vAM8adsxMH71TKzVOOjR+hKzUCyX5
         nn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lGXG7dBStK/PACrzqLvUYRLD/bOiwBBFm+/5d2JLzAw=;
        b=Mq0prpspCopo9tFjYlD7AiOuUNCwC9KR9qM/GoYHxzaXRcP6wfcguHl6CvBap1M9ko
         hTfid9QrDM29+s8CL9aANxR4/UUdvnNY+FlsdqEhjLTSFy9lJveZIEnZRNuSHoy68Xz5
         6AVSbFfvTyqCBo75roBkZbEzJouPI4I+WgJxa0NhLi8H9YgrDdHQXxFO2HFKTWPLZAGo
         OmD1hcN5VCbORCYFlwk7684cehKLvjD+m31G7SJ1IQOw59F/YhvYC753Gjt2KlAc/STV
         IM26yovsPrHwbmNH/4zlHo6ZePAzunoES4/uSK9ZGRS+vqNYXbr5BFGQsRhFHcc5+4Ks
         i7UQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532D/ya8GnK0+OYd/lsXqLCgIVrOFfxOHx3rj9F6Xd71HnwWlO/x
	/3xoK/vdOCVS2iArIuutXiU=
X-Google-Smtp-Source: ABdhPJz2dgTxHrmQEH4GAqIsFl8NIIKBjh0pXlihZL7GAF7Z2asFKqPH3GIBPyjHQ3wl91mSK5QTYA==
X-Received: by 2002:a92:9f59:: with SMTP id u86mr40170065ili.205.1608022125692;
        Tue, 15 Dec 2020 00:48:45 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ca92:: with SMTP id t18ls3209096ilo.10.gmail; Tue, 15
 Dec 2020 00:48:45 -0800 (PST)
X-Received: by 2002:a92:d40d:: with SMTP id q13mr40989378ilm.253.1608022125056;
        Tue, 15 Dec 2020 00:48:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608022125; cv=none;
        d=google.com; s=arc-20160816;
        b=yVP8pYQac8HF2ev2ErrxQXZ5HzMkE/WDMBZrnA9GBUWpZXyKjbGcV0GSsarCbnL9AD
         oKSDhNP6CilqZw0946DfFHChXeW26li8S9hAFIm6GG6Lftv34jyGZhUx1R34oTEIbHj+
         +3lx1ES1xvTpIZ0Wu3BjiyWMMxMyDI3CwY0cGJ3oAyjLaq8atXBAvP+MI9VbMIvU4cWg
         ZnDaqkMcMB7AgobWMHy0Sr4B/Eep/e5D/e5unOF95vqaObXKH61JKtMOy3TfjRd0q5oA
         PQa3Q2a7QItGYbxqg2vFZ6FOKw8rwjRtvVeZ5dsLNzYrFDwz/DC6/RlbEOVDGzA33wDc
         A9fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=HasI2CekMBkNHFZsC56cHJTTs0fBRkP7/rNpMsSfsJs=;
        b=WFrtKM0vxuAmagyLaWrvHNOdUuZ/8pAAUWroD3/h/xYGLvwp++WAnB8ap9KASfnrJi
         oYApreANQ70htXQaBJSJ4kvcUQj8M/WS/yyGKe0ytuUwVW3ypUcByZpyjaP/ajoTfFaC
         XZNl2bCrqYdd3Hi6m8RPBcraJKsaoKW1CKgTk0U2H81Kqb5acFned7mP6kdv+WSHrcnx
         3tejmcY+GzRQSbcadf/Xc5jRyboRqtmD0S4ABPs/MPFBTymvVV9+fB3ux/WtJNrriGVZ
         YKfFXXC54P3ZloebPbgc8wDMMC/0jM1HQU0IOIOfZPMtgQLro12Fi0aMOnj6hVeiNQLc
         M2BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k7f72Tan;
       spf=pass (google.com: domain of yaohaidong369@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=yaohaidong369@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b8si111691ile.1.2020.12.15.00.48.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 00:48:45 -0800 (PST)
Received-SPF: pass (google.com: domain of yaohaidong369@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x126so5268944pfc.7
        for <clang-built-linux@googlegroups.com>; Tue, 15 Dec 2020 00:48:45 -0800 (PST)
X-Received: by 2002:a63:338e:: with SMTP id z136mr27737698pgz.204.1608022124493;
        Tue, 15 Dec 2020 00:48:44 -0800 (PST)
Received: from bj03003pcul13.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id x18sm22831005pfr.158.2020.12.15.00.48.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 00:48:43 -0800 (PST)
From: Haidong Yao <yaohaidong369@gmail.com>
To: jassisinghbrar@gmail.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	orsonzhai@gmail.com
Cc: zhang.lyra@gmail.com,
	Haidong Yao <haidong.yao@unisoc.com>
Subject: [PATCH] add chan->cl check in mbox_chan_received_data()
Date: Tue, 15 Dec 2020 16:48:38 +0800
Message-Id: <1608022118-29993-1-git-send-email-yaohaidong369@gmail.com>
X-Mailer: git-send-email 1.9.1
X-Original-Sender: yaohaidong369@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=k7f72Tan;       spf=pass
 (google.com: domain of yaohaidong369@gmail.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=yaohaidong369@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Haidong Yao <haidong.yao@unisoc.com>

mailbox outbox irq is coming, but mbox_request_channel
is not be registered, so cl->rx_callback is NULL.

panic log:
[    9.852090]c0  Unable to handle kernel NULL pointer dereference at virtual address 0000000000000020
[    9.954634]c0  pstate: 60400089 (nZCv daIf +PAN -UAO)
[    9.954651]c0  pc : mbox_chan_received_data+0x1c/0x88
[    9.954666]c0  lr : sprd_mbox_outbox_isr+0x1d0/0x204 [sprd_mailbox]
[    9.967439]c0  sp : ffffffc010003e10
[    9.967443]c0  x29: ffffffc010003e20 x28: ffffffc011c2f6c0-
[    9.984918]c0  x27: ffffffc010e92e08 x26: 0000000000000001-
[   10.140344]c0  x25: 0000000000000378 x24: ffffff80f4064130-
[   10.145880]c0  x23: 0000000000000001 x22: ffffffc0091072c7-
[   10.151418]c0  x21: ffffffc009107212 x20: 0000000000000005-
[   10.156957]c0  x19: ffffff80f4064080 x18: ffffffc010005038-
[   10.162494]c0  x17: 0000000000000000 x16: ffffffc010e6f844-
[   10.168033]c0  x15: ffffffc0117abac7 x14: 000000000000003f-
[   10.173571]c0  x13: ffff0000ffffff00 x12: ffff0a01ffffff10-
[   10.179110]c0  x11: 0000000000000001 x10: 00000000ffffffff-
[   10.184649]c0  x9 : ffffff80f40644a8 x8 : c366877097809900-
[   10.190187]c0  x7 : 207273695f786f62 x6 : ffffffc011d62231-
[   10.195726]c0  x5 : 0000000000000034 x4 : 000000000000000c-
[   10.201265]c0  x3 : ffffffc010e9842c x2 : 0000000000000001-
[   10.206803]c0  x1 : ffffffc010003e40 x0 : 0000000000000000-
[   10.212343]c0  Call trace:
[   10.215029]c0   mbox_chan_received_data+0x1c/0x88
[   10.219705]c0   sprd_mbox_outbox_isr+0x1d0/0x204 [sprd_mailbox]
[   10.225590]c0   __handle_irq_event_percpu+0x164/0x358
[   10.230604]c0   handle_irq_event+0x60/0xd8
[   10.234675]c0   handle_fasteoi_irq+0x128/0x32c
[   10.239086]c0   __handle_domain_irq+0xa0/0x100
[   10.243502]c0   efi_header_end+0xb8/0x15c
[   10.247478]c0   el1_irq+0x104/0x200
[   10.250945]c0   cpuidle_enter_state+0x158/0x2d8
[   10.255440]c0   cpuidle_enter+0x38/0x50
[   10.259253]c0   do_idle.llvm.10091284334483161164+0x1a4/0x294
[   10.264963]c0   cpu_startup_entry+0x24/0x28
[   10.269120]c0   kernel_init+0x0/0x29c
[   10.272752]c0   start_kernel+0x0/0x418
[   10.276468]c0   start_kernel+0x3a0/0x418
[   10.280371]c0  Code: f90013f3 910043fd aa0003e9 f9400800 (f9401008)-
[   10.286684]c0  ---[ end trace b868997a960c667a ]---

Signed-off-by: Haidong Yao <haidong.yao@unisoc.com>
---
 drivers/mailbox/mailbox.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mailbox/mailbox.c b/drivers/mailbox/mailbox.c
index 3e7d4b20ab34..58697298a95f 100644
--- a/drivers/mailbox/mailbox.c
+++ b/drivers/mailbox/mailbox.c
@@ -152,7 +152,7 @@ static enum hrtimer_restart txdone_hrtimer(struct hrtimer *hrtimer)
 void mbox_chan_received_data(struct mbox_chan *chan, void *mssg)
 {
 	/* No buffering the received data */
-	if (chan->cl->rx_callback)
+	if (chan->cl && chan->cl->rx_callback)
 		chan->cl->rx_callback(chan->cl, mssg);
 }
 EXPORT_SYMBOL_GPL(mbox_chan_received_data);
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1608022118-29993-1-git-send-email-yaohaidong369%40gmail.com.
