Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIEGTPZAKGQEGUCPNRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id B28C515DCC3
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:56:17 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id z10sf6344912pgz.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:56:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695776; cv=pass;
        d=google.com; s=arc-20160816;
        b=AukmufUqDGnq8VF209uTZI3JdFd9B0YPFJ5wWcACr1T4ma1rksEkK8BmccWgUoLXiX
         VLL9I30QAPpdWKHMYZ1XwhzWL4qQmt7UIXLAS3kY0eDZdIG8e87EU5r5lOKXouqQsDl6
         /iVTZyLvcdv6vxDXKrS6un8v64lHOrpk3NhEqJPXC3Irn/D9JkeCBu523gbmDd1LIMxc
         a6lp9Py5G33q4ShnAmXN3xTNITL/8mAnC0LAJuN/dwrdGfNpuBEwJtHQ9ie3W/Sw8aXb
         O9ilkk7tYz6LGL7zh7UDB4ACRCIAbGsb+TZC3/z/ZjkpGD8ANqjrjHUCTvVsTUCVgecW
         dOhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BC9iC2haCJAr4U4ENbkfYRv81SL17Fi2Zz1mq5UZWjc=;
        b=ovvqc1YPn2vKbsKRGLqWNadAg4yW5T/1tt+CfbhixyINb+vLUQCc+LijsPTOAUBWTT
         93sAyl2LgK0rbjapaMJK61bVjLt4vMplAn46uPOXm52Kt1uxiTpVbz2MBT0iKzRpI39g
         ClVC95mnbc4har660h3ublEyVGl1EVhSHGH7qB4kYUq+f4/vVNELymfrlMRzAfgAo4Hr
         8KE8ETC++xwd2bYVQTc872JSBe00zEdQenQsFctghM8PS9tHKPoQyYVv7ohPdV5rPDM9
         TxhzQVcoMmhtEPsvMRgTznXfyLhTBwZ2eGJJVUu7DKTeygnuoaMsQsCqtZmc+3aqfffE
         QuOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UqMmhbrW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BC9iC2haCJAr4U4ENbkfYRv81SL17Fi2Zz1mq5UZWjc=;
        b=QrKvQQj9UQ6gGjDC2B64hqRbE2BDYW3O5WUX/Gz6gK+AzNETJ8JEneCFnFkt4yGdcy
         IAmKSDgJvQ2aL/yHnxbgzGkIVATf486Mzr8suvWfVVolrhqx/F6CJpzIiEgtgGEQpY3f
         cKpsada2IV1tymELG4S1idFJEpjukCVyWhMu4zCGQSThqU7MVHYzuLxVUmTpSJJlULd6
         6mp98QQjd+zv1i08gDcJ8MJpAeoF40lEyw19YABbOATgaZYIoCdYlz2L/hqxNzfynE1k
         SxBzFE0LS3hbPxeIsFDf7P+D3aniLZxaNB51hsPVQ59X+Sjz2PwwDCrZSR39mKu0Kjmr
         feEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BC9iC2haCJAr4U4ENbkfYRv81SL17Fi2Zz1mq5UZWjc=;
        b=loZyTdI89sdyxlMxqVt0M+PpKDfLnzVZlBGWOIPHouvg6VSfUd4pv5GE2b+tjUIzNx
         Dh1emFLtyDiICV7FFsPLheNY2pqoO+vwgBwNjPW3JGKYbYlGaN2jyPVurMmrHlIu49VQ
         hbXpWxbn04AXpLlM9/m8QJGd/Ftmxcauif6l0x3Cwbzywx3bF/vX2PyzOm3VSK8E6VVT
         JlJr0Ya5QD2nMvCtjwmeb3OJY0QSITG1LfGPK9SD4z11ehqX029ZrzjfJfdbj1/XMpTi
         OmPtD0GrwIB3mMmfIGLOwsdFWP148BnFCo0IDcWbozvmQ9y2CK8QrwBfAOuSPtxboF2u
         GKpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4z4+7ASXbJWmeIP74s+mUpsqTMkZirgKcGBUoLXw3Gz3kxJWg
	HZ0Iw0YJdTol7nIPhGjOt3c=
X-Google-Smtp-Source: APXvYqwMLw4Zpcx61CfCnl8TQ32SmebOICHdVm51+lL6Bpp4Og9CByfCQLpOOyL90VpQvhiuIoEpGg==
X-Received: by 2002:a17:90a:8a12:: with SMTP id w18mr4322491pjn.68.1581695776157;
        Fri, 14 Feb 2020 07:56:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1d53:: with SMTP id d80ls1645797pfd.6.gmail; Fri, 14 Feb
 2020 07:56:15 -0800 (PST)
X-Received: by 2002:a62:37c7:: with SMTP id e190mr4144245pfa.165.1581695775593;
        Fri, 14 Feb 2020 07:56:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695775; cv=none;
        d=google.com; s=arc-20160816;
        b=yeyZDxigqCF6kschNHCQ9m3NPmIow+UlAPn/Jk9tDkdlUtsKwOc0rCwiFneRHhzzBT
         dy6wrQhB6fNqNFgLkb2XQoMmPz+ZmQyPujAdU9uL0zUZxXux3NE1iglh2v4ukLyrMXG+
         +h13nOpCPxxJ/m1wGkBFb41OzqKRS6H9oYQCp4hL6GosTgHVW5sy8a0vPKWSIkquJ8TR
         PXHCZLF4AQCJd8YCTURDw7YMmAM57yibhNBQraPSqZs6FvK7i/auj0bE6mdBQaAqxiMs
         YKsL5iTnmYUjBh851u0lXDtEtI8/o8f6rpxUf62YpHlJZotDdqhZeQQYRX9pEG9rpmQv
         0Ctg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dqm5drjtEwRaSRcc2N8PXpugnYRjV/nILVczTcGasJc=;
        b=t9B5RnglApcNU4CPiUgDBBmn5AUeYB4Ia4D7J4XQZjyaUNGcPR99SUlRlzgg8xWagf
         +eCzy/UKm3RBmW1Re2QUB87Sbdt9sqej/66vcG8bmW88xcsaGeCB6ojOvj1nSQFnxCHU
         K+DQSYPSMFjeeWE+ettjf/EqMxMwa4O6LSpAhHfV6kMFhvDIU50OK7y42vZT7b0pcxsZ
         n5x7nUHQwveAzuFizBU9htQU7GOjIsORB0iahZOdg1/+j3BTAKrPkO3KFAqntfQQJvTA
         LYvUKaRMx51Sz6AyQflzY1j+tS1r78x+7EwI6ak0rlHgD0OFCGXn6YXFTe2wmEu6AASo
         j9cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UqMmhbrW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j10si244601pgg.2.2020.02.14.07.56.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:56:15 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9153A222C4;
	Fri, 14 Feb 2020 15:56:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 340/542] tty: synclinkmp: Adjust indentation in several functions
Date: Fri, 14 Feb 2020 10:45:32 -0500
Message-Id: <20200214154854.6746-340-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UqMmhbrW;       spf=pass
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

[ Upstream commit 1feedf61e7265128244f6993f23421f33dd93dbc ]

Clang warns:

../drivers/tty/synclinkmp.c:1456:3: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
        if (C_CRTSCTS(tty)) {
        ^
../drivers/tty/synclinkmp.c:1453:2: note: previous statement is here
        if (I_IXOFF(tty))
        ^
../drivers/tty/synclinkmp.c:2473:8: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
                                                info->port.tty->hw_stopped = 0;
                                                ^
../drivers/tty/synclinkmp.c:2471:7: note: previous statement is here
                                                if ( debug_level >= DEBUG_LEVEL_ISR )
                                                ^
../drivers/tty/synclinkmp.c:2482:8: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
                                                info->port.tty->hw_stopped = 1;
                                                ^
../drivers/tty/synclinkmp.c:2480:7: note: previous statement is here
                                                if ( debug_level >= DEBUG_LEVEL_ISR )
                                                ^
../drivers/tty/synclinkmp.c:2809:3: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
        if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
        ^
../drivers/tty/synclinkmp.c:2807:2: note: previous statement is here
        if (I_INPCK(info->port.tty))
        ^
../drivers/tty/synclinkmp.c:3246:3: warning: misleading indentation;
statement is not part of the previous 'else' [-Wmisleading-indentation]
        set_signals(info);
        ^
../drivers/tty/synclinkmp.c:3244:2: note: previous statement is here
        else
        ^
5 warnings generated.

The indentation on these lines is not at all consistent, tabs and spaces
are mixed together. Convert to just using tabs to be consistent with the
Linux kernel coding style and eliminate these warnings from clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/823
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://lore.kernel.org/r/20191218024720.3528-1-natechancellor@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/tty/synclinkmp.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/tty/synclinkmp.c b/drivers/tty/synclinkmp.c
index fcb91bf7a15ba..54b897a646d02 100644
--- a/drivers/tty/synclinkmp.c
+++ b/drivers/tty/synclinkmp.c
@@ -1453,10 +1453,10 @@ static void throttle(struct tty_struct * tty)
 	if (I_IXOFF(tty))
 		send_xchar(tty, STOP_CHAR(tty));
 
- 	if (C_CRTSCTS(tty)) {
+	if (C_CRTSCTS(tty)) {
 		spin_lock_irqsave(&info->lock,flags);
 		info->serial_signals &= ~SerialSignal_RTS;
-	 	set_signals(info);
+		set_signals(info);
 		spin_unlock_irqrestore(&info->lock,flags);
 	}
 }
@@ -1482,10 +1482,10 @@ static void unthrottle(struct tty_struct * tty)
 			send_xchar(tty, START_CHAR(tty));
 	}
 
- 	if (C_CRTSCTS(tty)) {
+	if (C_CRTSCTS(tty)) {
 		spin_lock_irqsave(&info->lock,flags);
 		info->serial_signals |= SerialSignal_RTS;
-	 	set_signals(info);
+		set_signals(info);
 		spin_unlock_irqrestore(&info->lock,flags);
 	}
 }
@@ -2470,7 +2470,7 @@ static void isr_io_pin( SLMP_INFO *info, u16 status )
 					if (status & SerialSignal_CTS) {
 						if ( debug_level >= DEBUG_LEVEL_ISR )
 							printk("CTS tx start...");
-			 			info->port.tty->hw_stopped = 0;
+						info->port.tty->hw_stopped = 0;
 						tx_start(info);
 						info->pending_bh |= BH_TRANSMIT;
 						return;
@@ -2479,7 +2479,7 @@ static void isr_io_pin( SLMP_INFO *info, u16 status )
 					if (!(status & SerialSignal_CTS)) {
 						if ( debug_level >= DEBUG_LEVEL_ISR )
 							printk("CTS tx stop...");
-			 			info->port.tty->hw_stopped = 1;
+						info->port.tty->hw_stopped = 1;
 						tx_stop(info);
 					}
 				}
@@ -2806,8 +2806,8 @@ static void change_params(SLMP_INFO *info)
 	info->read_status_mask2 = OVRN;
 	if (I_INPCK(info->port.tty))
 		info->read_status_mask2 |= PE | FRME;
- 	if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
- 		info->read_status_mask1 |= BRKD;
+	if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
+		info->read_status_mask1 |= BRKD;
 	if (I_IGNPAR(info->port.tty))
 		info->ignore_status_mask2 |= PE | FRME;
 	if (I_IGNBRK(info->port.tty)) {
@@ -3177,7 +3177,7 @@ static int tiocmget(struct tty_struct *tty)
  	unsigned long flags;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	result = ((info->serial_signals & SerialSignal_RTS) ? TIOCM_RTS : 0) |
@@ -3215,7 +3215,7 @@ static int tiocmset(struct tty_struct *tty,
 		info->serial_signals &= ~SerialSignal_DTR;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	set_signals(info);
+	set_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	return 0;
@@ -3227,7 +3227,7 @@ static int carrier_raised(struct tty_port *port)
 	unsigned long flags;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	return (info->serial_signals & SerialSignal_DCD) ? 1 : 0;
@@ -3243,7 +3243,7 @@ static void dtr_rts(struct tty_port *port, int on)
 		info->serial_signals |= SerialSignal_RTS | SerialSignal_DTR;
 	else
 		info->serial_signals &= ~(SerialSignal_RTS | SerialSignal_DTR);
- 	set_signals(info);
+	set_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 }
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-340-sashal%40kernel.org.
