Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDUPTPZAKGQEQRYLTZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFE315E08F
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:15:11 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id f15sf2374883uap.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:15:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696910; cv=pass;
        d=google.com; s=arc-20160816;
        b=MaSXgcYExeZxuMchamAYylWI1t25F4MgRKzUSoAbRPncCtRwP7gytppPULgFArN8s/
         dAX4YehsrJyZzzRLL3i72c051SIB+7qoCYWmwAbwkrpP8hWZlogmPrlEDMQue94t38z+
         kpyeAAzBTowSwVJHZM7Yjp62B6pSazV4dRq2KsPAoBqT49ynNjLColHzGrKJeFnsaedT
         MaQq/fUxAFY8sHKazSvlgVJvoiJdzAtcFZrOpRnTrbzhKhvCshRh2uls0wRnHLu75U0d
         SHzwXT/9LSpYqE8jcxLtFxD5Y4nYkxZeh01S49bx6WCXJFATqrVGL97WhS5W3myVWTw9
         9hpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/pkTdCINcXPzv8UjjCNTYLdzbsRCS9Qk7oQbt0421nM=;
        b=dncwUpZ0++KJhKsZNnatIWeVfONekjNeA0sAJCmDPT+g4GqHPb3myFAGMhKmfqQAVZ
         CG7HiUDD/GrwBt1kENZqcIjJqwYHZRxsd8bFIWjNG5yh+qPebT9lwnkleluk32K2dKp7
         xdcf3XYXoM98qp6ZpHhiFNq2GIPnNB2qGQm/lPS9ATS3McCt5PWOtauvyfmKBZIFc/2y
         tJnA0szqCfrtQGIkOrVrKsEf4/6iv86dRtsGMChW9nclOC8gHrRscVHGUsru96wavf8G
         M3NRNmHw9LNBB3a34wAXwKdrP99A+M9ZY2R16XUttRlUHpOJxAFEN4hs/m8+eWNulvkk
         wayQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sMcb5P93;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/pkTdCINcXPzv8UjjCNTYLdzbsRCS9Qk7oQbt0421nM=;
        b=MJY76Fu3Msj/U41OXdAy5I3N5x51FEo6kIUKos6cBaGTG5MZ3+qZrQy5JAZmvjw8pD
         OtjD4HibD3yxfT+VHg65mOCKRtcSdj+EktATSaBQk0RZUkjFh43PwLMDYsDEEu0TSnY4
         Ss16xhBwi9345YwmnjEt47HvUAyZr56hpKHScOKPvpvhpeEgu9CM0+SFoqXBbh7gmuVG
         JPT1+G0GILCGCgAukJyfbFB2BOgBnA5pnKT1ZXZ6pTyuoRuQrXvIDQo2NkjwAIlEx+yu
         2qchVI/qMhVa5ZhNf9f4KcidBfIgN/TSATngz9Z64FeA+b5IP4t4cCBlInNe33T1ATCN
         WiEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/pkTdCINcXPzv8UjjCNTYLdzbsRCS9Qk7oQbt0421nM=;
        b=NkgH+8hZQYRcmIJxBfDpU0AVWmGHO1ea/pR8ucJ+lZAZc/likZckihf5L1deoF2PB4
         84RxNXuGoZCXnGurdfPrd4mhd7RLrDWasUsU0vdPCnBRd5v+raajWx+njQ0yj1sJ4XDH
         ADGlK3Ii6qkIGMqYAAlfEj4TOT2litQuJXlpMQiuWcCIqF7ZCUIheff7AeJaeDHrx+1P
         EtQGP3Q8K9QhG/YpRUSyUjcFUMjMTluQBf5RUd/WjoBzN3mouT/oPpjUQ9/f/tuR8bIe
         D/o6rUjM1Yi17Wh957O0y4FpV8uBkTBz9TH/5fv3/nUAmaAC+H3JeWCFySoI4980Vso4
         t4yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXd5svaAJkp3N+0nAy0oyBDI2uMe9PraO0T6MDPa556AVweL3Lc
	y+PEt0eoqClBQ97MCAAUsJc=
X-Google-Smtp-Source: APXvYqwln0K1/4+uVVv2XJFY3ll0TeTclMgsySdVTrL+hcVe1SfCH0Srnm2fmgbyhuXdLfi/65D5/g==
X-Received: by 2002:a05:6102:190:: with SMTP id r16mr1828607vsq.215.1581696910242;
        Fri, 14 Feb 2020 08:15:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:644e:: with SMTP id j14ls168586uap.8.gmail; Fri, 14 Feb
 2020 08:15:09 -0800 (PST)
X-Received: by 2002:ab0:6017:: with SMTP id j23mr1974335ual.3.1581696909851;
        Fri, 14 Feb 2020 08:15:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696909; cv=none;
        d=google.com; s=arc-20160816;
        b=vnB8kVRTSmOAG4kCzwubcwyTslRtbvyYtY6aRNJaOmVCgbNQM08f+tDjyGiN47mgrs
         ME9cF6dK60Kcf5pjd/x835vOkDf4ofM3fqH545wbpO82iQSS+/NzAvPqkNUvN9QYyDuy
         nhAUxkB4VaNIberj7+noWeFn8X8j/gh5a4yfnOG9fUK57XYQkzFVB6PccwwS2+dLE/Ni
         SOw4hI4dezrWEUvJ4Z5iOJE/OOyoLechAKLiyjd0p0QUYXQaET+8i1cH87MXB2KB3i8C
         gt00/YLxWfKjB8OCd+smYJwtyEihaKdfoLQrusJ42GDQr3VN7IFYOKnBwsd37hBZsxg4
         I2bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XUG+dd3KuQxEA+q8NoQmiQ6mUDDsEEgkxUAERiT9VzU=;
        b=D8QAZ9oTLyuxtMfn5lvDUnbkycutB4pGyGDyEFBKB9amr8+hQ7JGLefDcg08rr6FfG
         jAfZKxInfJvMl3rlf0bF/ZKkdjpHFS6T67cIEvxVR9tbfn0ozJv2RqC3Jk4o7jYNKd/u
         bS5dNdVL24PE1xOOmAlYKprUdu57SnNhZ/x4arvgtV+CzPOXBpNQX2huF2Lia5wURx2j
         5FiuKQ+oXcyqPQEtmZcVuHkpUCYDoIDX26k8lE/OI+HVSXtAbXQ3F8bnvjAfL8v56vCA
         EoZRMfftJa2FT11gPdKtWV5TabzO+nD8VugkGzbhZuS7GWZaTxEpAumWcJt8Tg27HBii
         MiDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sMcb5P93;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t76si343829vkb.1.2020.02.14.08.15.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:15:09 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 56422246DC;
	Fri, 14 Feb 2020 16:15:08 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 158/252] tty: synclinkmp: Adjust indentation in several functions
Date: Fri, 14 Feb 2020 11:10:13 -0500
Message-Id: <20200214161147.15842-158-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sMcb5P93;       spf=pass
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
index 1e4d5b9c981a4..57c2c647af61e 100644
--- a/drivers/tty/synclinkmp.c
+++ b/drivers/tty/synclinkmp.c
@@ -1454,10 +1454,10 @@ static void throttle(struct tty_struct * tty)
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
@@ -1483,10 +1483,10 @@ static void unthrottle(struct tty_struct * tty)
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
@@ -2471,7 +2471,7 @@ static void isr_io_pin( SLMP_INFO *info, u16 status )
 					if (status & SerialSignal_CTS) {
 						if ( debug_level >= DEBUG_LEVEL_ISR )
 							printk("CTS tx start...");
-			 			info->port.tty->hw_stopped = 0;
+						info->port.tty->hw_stopped = 0;
 						tx_start(info);
 						info->pending_bh |= BH_TRANSMIT;
 						return;
@@ -2480,7 +2480,7 @@ static void isr_io_pin( SLMP_INFO *info, u16 status )
 					if (!(status & SerialSignal_CTS)) {
 						if ( debug_level >= DEBUG_LEVEL_ISR )
 							printk("CTS tx stop...");
-			 			info->port.tty->hw_stopped = 1;
+						info->port.tty->hw_stopped = 1;
 						tx_stop(info);
 					}
 				}
@@ -2807,8 +2807,8 @@ static void change_params(SLMP_INFO *info)
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
@@ -3178,7 +3178,7 @@ static int tiocmget(struct tty_struct *tty)
  	unsigned long flags;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	result = ((info->serial_signals & SerialSignal_RTS) ? TIOCM_RTS : 0) |
@@ -3216,7 +3216,7 @@ static int tiocmset(struct tty_struct *tty,
 		info->serial_signals &= ~SerialSignal_DTR;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	set_signals(info);
+	set_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	return 0;
@@ -3228,7 +3228,7 @@ static int carrier_raised(struct tty_port *port)
 	unsigned long flags;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	return (info->serial_signals & SerialSignal_DCD) ? 1 : 0;
@@ -3244,7 +3244,7 @@ static void dtr_rts(struct tty_port *port, int on)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-158-sashal%40kernel.org.
