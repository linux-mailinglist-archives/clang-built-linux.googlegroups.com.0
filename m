Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJ4RTPZAKGQE5QSVQGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F20215E19C
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:19:52 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id g136sf8089952ybf.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:19:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697191; cv=pass;
        d=google.com; s=arc-20160816;
        b=RIzVkj4dVAd5PDWunRLwFdJ9+s+QuuSPDFYQkQB7K9PE6bwZs0yM0lMJzgCIg1Jlso
         R/sBBawwJFRqHSaOBWjbDk1iIWZoc1t9f8fyqk7MDEYPgK6rAdcYXLzsD1UUuIiWY6/J
         3JS9bkJHjGSQp8OOyym4yxrF23fh6YxSrhZMqFPguaXJsU53Yj6WrHg2ltE2QSflCvT6
         tt0oYfHNentom7N/gd2tnkrmsZjrU867KryKaiLrCL5kwBZ+juK5h4Cmo9hE3Pl8q9Om
         gbZsFr6EFXCI6imAsq9SSr1izR+Rm7RPHi+lXipbm5qFZjSS5l7xwaWwpEoTfmjaj+8n
         H6Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=i7niJW6BD3mZV/Ig99sfXYF4jmcOYr9nslfJcpWU+Wg=;
        b=juBRyXfcdyQKtHscfVJkTdGGL/tMmnFvm4mFJL69WCk3yjUxk0sr6EGX5jhgaHZiis
         zT1xTpBSQNtwvLI7NzENd5YxycGomAAm8KUg0rK1Ip0Qqa/xt5+GQYRsLZ2xHdZqi/Gt
         aR4WxdvE/NiD11DV9LeO0LKx1K/dqYHnh3jKkIjoJzCBUVW8LEzaPmahMF7Ocvgxy4FS
         TxJDvV7wy+h8/0089h8rU9cAWFxENQhQfQfsO3UqKGkUOmZLFg/WsL6HIwagKG5G4LGg
         7gv0ra2QPLgm6XGxFtFIuNo0x6PA9GY28snkVDNWuF5rRATQINOL3Ug/RtQYb6rFJU9X
         So8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="MwF/Veok";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i7niJW6BD3mZV/Ig99sfXYF4jmcOYr9nslfJcpWU+Wg=;
        b=i4jylVETzkpZcuIldmlIOGhBiUtU9c5SBCFwvoj1lvRaji+9++yAHVq7prYws2hoDb
         tSkQ+0QHJ3Tbwc+jp8pg9R3gB3YKbC4SAhnGdT+zbtlPIgCC7QQuQt/NrOVk0m4Is8l0
         RuDOQWaiZEVR17p7KdUE2EGkw6xQMFwNCTG8TswVyGB2g3P9xsLmC+7bcq5UET/X1wCr
         nsHD0lwzjKzuKg9seTBp8nFCvJaNzZOCWW+a4ureM+CvDjnet3MyagatMEmFFAxmbFcG
         xGZB9ovGIwFTfvePtubysWll/NIfIWT+u0pLUWz+rOMank5XNHzCJrBmT+H4LlK2AT1f
         VNFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i7niJW6BD3mZV/Ig99sfXYF4jmcOYr9nslfJcpWU+Wg=;
        b=LyU2eoR7RfHVABXZpnkgUIqOyGIRJ2A76/cJ5VcDzDgEXek+nDz75WPIIZ99lHvbAA
         wSa25qarvgCtReBk5oVO2yHg0LdTeqfp57iCatRpNlLzsZ2+703eh6wa4GW3LbCkq+hJ
         QFjf7CCJNLntKc8ek91a2cmf8oLEHKmixvhE40VIU9QaXvGSfC7BhdUwOkTBRghhpraW
         WG+MJtDEdxlF5LP88nLi6I302VWPRvTouGEmgTLoV9N+jj9wYJ671oUY9gxKWEoJk8bv
         19EKzDCH0xelRLp+NKFLMmL/o4fUXL3BsKxnM8CcLYfe4DMXoM5BHdiZY/N5A41jKRol
         KiIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVvYZt4Jt+t+b7/qlT/+oyWJZ1rgeqcvtqrcCEeElmJFQVsxqSS
	77ecZ+u4OYRLeDniIy167BY=
X-Google-Smtp-Source: APXvYqyt2T+INHAbAqY7TCDF23sqFtz9WN93RJ930JZB0YHnZgwj7Zi/ZIHeGVyg/ksvBKPmA2x8FA==
X-Received: by 2002:a05:6902:511:: with SMTP id x17mr3578410ybs.186.1581697191188;
        Fri, 14 Feb 2020 08:19:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9444:: with SMTP id l65ls509961ywg.5.gmail; Fri, 14 Feb
 2020 08:19:50 -0800 (PST)
X-Received: by 2002:a0d:f583:: with SMTP id e125mr3203323ywf.176.1581697190796;
        Fri, 14 Feb 2020 08:19:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697190; cv=none;
        d=google.com; s=arc-20160816;
        b=OGEuvnu0nEmwzc3hmdisNG1lRGHaS5nKK8mpUGqfJT6NootNsNiSW7RdydBaKOSkIT
         k2yplYQoidxChNl+3ItVH8scQHn71byKPvfpMoNQqbPBnVNSQcDWnCXLY/b7aR+MKQ5Y
         Hhd4hZ3IUf1zctOfgd/PGTFm6Mmc0G53jEPenhQmo0IvNkwYTS89z/MiyMfxzxEv6YmE
         j3y6rnfns1ExV7cxNcZS3D6mz5USbEROiWJYjNLtPTFPQu2BIGSZctH3y24fGgJFogwi
         YqsVT+cfAja83CT7WntbiDNuOfBKTzfCxmoBhyVospTpAddJ0pALtnwUoHnB0HwdZeef
         NTOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RwQYqjSeqIBti7n3ROCQ1/HSBRQcdJSvKtyEG9NsE2k=;
        b=p/yCCVDl2FsCt6D7Rt400VTiJPFskwKLBU1wjktT94BiA425EEnYAj8G7aUeL60uIT
         6jIYiXJSgU/4pMExQagBM7SdVl2PhA0WkPqUkLReLDkZuMPUJLIvRKRSlM2jG37lbezU
         n5iXFpjDTZuF2li0EkTiENL2rxX6vX1FaCJNBz+Uy2fvKoUjO4pXCyuaBF8PBAS3pvmB
         HtH+BNP7vGGv1jlREuoPzdEF4Qftb7bJuS2IME1ON+ljRqp05FUosMAcSO21zxl5XRJy
         6isIGcwPVSq9IlPG5oStMT1tQR3QSDvvO1Raxd7bIb+Ft/X39G6xP6w78IslRLSobCJM
         Dgsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="MwF/Veok";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l1si303653ybt.2.2020.02.14.08.19.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:19:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2F9F82470C;
	Fri, 14 Feb 2020 16:19:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 119/186] tty: synclinkmp: Adjust indentation in several functions
Date: Fri, 14 Feb 2020 11:16:08 -0500
Message-Id: <20200214161715.18113-119-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="MwF/Veok";       spf=pass
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
index 4fed9e7b281f0..3c9e314406b4e 100644
--- a/drivers/tty/synclinkmp.c
+++ b/drivers/tty/synclinkmp.c
@@ -1467,10 +1467,10 @@ static void throttle(struct tty_struct * tty)
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
@@ -1496,10 +1496,10 @@ static void unthrottle(struct tty_struct * tty)
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
@@ -2484,7 +2484,7 @@ static void isr_io_pin( SLMP_INFO *info, u16 status )
 					if (status & SerialSignal_CTS) {
 						if ( debug_level >= DEBUG_LEVEL_ISR )
 							printk("CTS tx start...");
-			 			info->port.tty->hw_stopped = 0;
+						info->port.tty->hw_stopped = 0;
 						tx_start(info);
 						info->pending_bh |= BH_TRANSMIT;
 						return;
@@ -2493,7 +2493,7 @@ static void isr_io_pin( SLMP_INFO *info, u16 status )
 					if (!(status & SerialSignal_CTS)) {
 						if ( debug_level >= DEBUG_LEVEL_ISR )
 							printk("CTS tx stop...");
-			 			info->port.tty->hw_stopped = 1;
+						info->port.tty->hw_stopped = 1;
 						tx_stop(info);
 					}
 				}
@@ -2820,8 +2820,8 @@ static void change_params(SLMP_INFO *info)
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
@@ -3191,7 +3191,7 @@ static int tiocmget(struct tty_struct *tty)
  	unsigned long flags;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	result = ((info->serial_signals & SerialSignal_RTS) ? TIOCM_RTS : 0) |
@@ -3229,7 +3229,7 @@ static int tiocmset(struct tty_struct *tty,
 		info->serial_signals &= ~SerialSignal_DTR;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	set_signals(info);
+	set_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	return 0;
@@ -3241,7 +3241,7 @@ static int carrier_raised(struct tty_port *port)
 	unsigned long flags;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	return (info->serial_signals & SerialSignal_DCD) ? 1 : 0;
@@ -3257,7 +3257,7 @@ static void dtr_rts(struct tty_port *port, int on)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161715.18113-119-sashal%40kernel.org.
