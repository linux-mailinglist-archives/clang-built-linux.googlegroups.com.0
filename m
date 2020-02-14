Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3ELTPZAKGQEQUEDISA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA7B15DF4C
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:08:14 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id 107sf2364703uau.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:08:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696493; cv=pass;
        d=google.com; s=arc-20160816;
        b=jBeHr87yTyIGX/2t+SyeLreXbv1lEWhfzUmW8XzSCfx3p67JWgnP6OcDlfOju5wenO
         3PRPoSLH2ZBywVTw38XUMroBBhnnw4UqsjW8QkFzKOrHK9ITVVgLprF+eAOC6yMIAAV+
         LgzNsdyIIUHV2zwfFVQLs0UiJYK5HpJQVKSgV2M4xBsSgg6eqe8IS7l6paKPwxAwG6kW
         hnFl5J0Be8ilEExuCJi1qE8l5XWrrtzhxU8nreNz9C7R0D+HoG7OLgjXHkSXXZXGtRad
         yrbsuuFh/pzmYLFhLOqZFvmPccc+A0FNG1piyQa45NLwlCoaWpneNjtiODlMiVDWYf+k
         BXlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NPYh7RBZxtLyI5fJpNUguHRcOosFjbBC4/v/YTdYWF0=;
        b=RWFy5JbEP2xX0AhqDrWkHMfC5ZMD0g2tY+xFTcDo++HvwvvU09HbBTjKvOLghHfomd
         HDutVq3vM2LRXbb6eAhI2WRydnzaPp0dPqWXAzWcKHeXyzSBwf2nE7Q0116deunD3ZCF
         WIkfkz/LEn6eYBcz+T3IcpgB8U/b09C7UmYtJjZ9dIYKAiSglAhN6g5wzrmqo9Ldruze
         W6a0lyBTMRwHnd12ZTLaNj+o67lqkWiB9zKlz4HHYIjos78evVvzVtKc3QZSXEfmPXOQ
         6UnyyP3I5lPfms0awNvVPicQX1VUMH6o8A43QnrzfzAG01fvnw/4jE6z9teF0OkaNTWp
         0iDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f7jFOoDb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NPYh7RBZxtLyI5fJpNUguHRcOosFjbBC4/v/YTdYWF0=;
        b=N64SXXnNWSR9q95hDlNxmVm8avd2GCzU6swqko0FT6S8GkOzbZp9i5fvvf36EZYO5S
         GnpO99fAFhGFo3KPDUXpWdE9pI/h0Xxlf9Ab8dLkR4ELafN/M03Ogsd62XWaIykB570P
         A6OQgSmjnQISBuQ31D0sOeDVFWClxQoV0jNz7UoGU4u+f3ZWumBNkADAKiHGdWk3DyJe
         Y78eyLE1Ey3m2W0Kl8pYhxyGh2j5HnXTgp5j4dcrXtpHhd25fh5aViAdLbuMrrQ3b7oN
         CVd/PCLzUZud0ixrPXY0lYKUsOqIG0LyAOSjqOgKxdNKA0GSQFPXEMr9M2qsDlZDINJq
         vEtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NPYh7RBZxtLyI5fJpNUguHRcOosFjbBC4/v/YTdYWF0=;
        b=YQAt+zRQOCblyogu4S3bhF6vbYpEB8H2ydS8xq+hajFyqw6n0kZt+0gVRrehYm4Cp0
         VRJJHTK0kNX6AnfIpRjHDU3bWptmH5QSEkokLx+oexItkg02etKynaGTqmgqN01T+PDP
         i7Lmy/D7eZBDipinJ5hZuenTQhh6dwc277oEdDHxAyhjPyesPrkKL4DfDtdajkIjnCxy
         IHNzDXEM5K46SriC7Vz7qbBPULxwvq0syChktLo9Hb+kUhthCXyEGZQXCe/w8C1Bb3P5
         jnpvFEm/k2wlxxIp+82lzCcySzIMdrp3fZOMsT4+gVjMOjiAIWLCZyNHwhzf+AdMfcNu
         Ahxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXfcSs2zjCZkkgZWGBFwW70Oqqhbil4D8lVGndPvnkQKm6mvBPr
	ocy61zS+XNDdU1vD8tpsfg8=
X-Google-Smtp-Source: APXvYqwksZxyxYaVggA1CeaDCA54FTkEW4Z35ufFdwAFFptHiXG8VZ7gFqpsjvOi6OaE8BT+oIzKzA==
X-Received: by 2002:a1f:18cf:: with SMTP id 198mr2046457vky.61.1581696493025;
        Fri, 14 Feb 2020 08:08:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2a83:: with SMTP id h3ls165468uar.11.gmail; Fri, 14 Feb
 2020 08:08:12 -0800 (PST)
X-Received: by 2002:ab0:2881:: with SMTP id s1mr1919848uap.95.1581696492097;
        Fri, 14 Feb 2020 08:08:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696492; cv=none;
        d=google.com; s=arc-20160816;
        b=esANwQiKl9NVKKg1o9vpwSd58lVqFdmAgQ1GV9QGl/8jF+ZATacKz3EoJ9tFoCado2
         f5E6aUN46xtfL2xWTQOdlRyenThijGKQmEjO1jVdnQljGM8bqzgQTTdABYTU5jxqlYQo
         QRtrRCxOzsdjl6BWskOLjvUegx2N0GJ/B5ojCwd51VcIyq7wOxNMO2sPKO7+dirOnBm+
         y7fb7M5jqRxvyFCG2HZ8ic8VTjiSXWMs5LbSpiYAATgq4jPM0Ej8JQ/BlTK1XjI1OpBc
         hRecR1aMwDdUsSDBWi62uEKonzonSP1pnNVvHygq1waeK0M7YPKKiem+hTDaltAC4+8d
         mxFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dqm5drjtEwRaSRcc2N8PXpugnYRjV/nILVczTcGasJc=;
        b=MQWKOcYEDpP1070y+SUkVvLTM9kV/0UKVUn32DGRQ5kq/P88nvwwX+QtFr/qRPlrqw
         zsgreipIqkGL64EyzRfhxibkFN1reeikhohgnZkYZGDC45uoPXqai8vgSUc1N0lZ/b4v
         mAZLZSEUQSl02r9IJofgRjhe8rXXVNfX33UXylVUecC1LD+xR8SSHj9tjGH/nfIfPnbc
         168FFoasq3CWdH6wAn90HD7FMBJwStmNbYBRu47WZlutHba9Wszhzb518yTLs1565zMA
         okKkQhQeK6yoWaiGxJdTQXAW1rPBRDwhgIyOKT2+ndhxhtajAjfxQxThU7EnSa9hArPM
         Gfzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f7jFOoDb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s5si347104vka.2.2020.02.14.08.08.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:08:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 51EF82467E;
	Fri, 14 Feb 2020 16:08:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 296/459] tty: synclinkmp: Adjust indentation in several functions
Date: Fri, 14 Feb 2020 10:59:06 -0500
Message-Id: <20200214160149.11681-296-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=f7jFOoDb;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-296-sashal%40kernel.org.
