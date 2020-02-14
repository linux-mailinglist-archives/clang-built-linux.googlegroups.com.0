Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6ESTPZAKGQEKPZ56BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F1415E259
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:23:21 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id v134sf3496385vkd.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:23:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697400; cv=pass;
        d=google.com; s=arc-20160816;
        b=0jAsWV1T6hNE7r7+QTq5IG+w5gVLL5A6pagMqk6Ez6lnouU9jZUWmWyn/xKmdTSAxI
         neAK7strUO+KXL/xPyAAKyejy1r7I0zPZORW6Tsmc20ZfLPWPbkzd6XCWyuH9Hc8Mhj/
         B7USFoypp5utHVuOh7LIIb/1GiJEE/640A4pNjZG6wQM0JqX0RJAoV9mnw19P0cJd90x
         M5cwN3+qR6avJYOnN7ll6gprwJ6oVgNzfwDzcSVt4ex35vL0bu3b2SjSwnRa9vyJRA44
         K4RPmddlmqo+8sRHt6Zorq6o9WN6zLL2s8RUNAeHUTBpDLxyYHaWA9OpP2MtTsciJPmj
         xalg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9p0oepNuq+RE1INALEjp+MU9Vec5QbgyLpr7sZjCAqY=;
        b=ect2X80ZgFDMP9CN4vCDLFP43/Rba5vDCjY0kmTmisF7CIb5Iu7gwr6epbUjEmM7LL
         ecm3Tpg1TI1VSYSoLaBNZTwx5WlWs5tty5DrnvSMUeBWWqr2rdCzfOSwat8IKSGOtV20
         4NALk/2zA0SwD0wfHLgxvVHpmLFQwJ5IFE13Sv0wTscFtXc7Yzuhs5ue0pF4qCdlzjLT
         Ybxzb7UG9/AmeTSO772H+KzVL/EOvhweyPQ9B2T1qZ9noVykqcJAc4N9qZez2mN10oxy
         D4rUVeo1LllKkDwO7clni8C4HX6CA1yQSasduGNAEaMkIVPWS8SySlAIagSCjGCU5CZQ
         fXfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hEG8wVCt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9p0oepNuq+RE1INALEjp+MU9Vec5QbgyLpr7sZjCAqY=;
        b=CvEK6PE4oOvrP6S9BN2+OKK4oYtBOAx2P+SM+5ZrxdTKFQggVC/NkieIoIOZa/NyQr
         Cwe1cs03s3AcN4c59mlFjyH/tC+UOGgfmqexKcWZAAjwzKQT6pdXjbwlioCrJBEcxw79
         OkDUUADGvkXf4KEzEPW+tLqTMcoGtl8m9TjDDRgjTaE1wfey/wDRZIPFs/KU5OfvgDw0
         zeygQ8yMumXfqxleCuBYYe4Hnwfw1noP53hq4xhz61XtsvK1AC9DoFYPnwK01t8J4Gf2
         yrgLRujMDgF2WvHTLoutKLYdXLBBuTcOkMWAarRnq36GIhkEbDrfOFz/dHgaFtmUNG5U
         pxgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9p0oepNuq+RE1INALEjp+MU9Vec5QbgyLpr7sZjCAqY=;
        b=VPk1xQAGu2x5YI0uc26ToN8xU7DTyM1fErbD/MLyAbql59AYlqyiMjxQwNVtNfDTIy
         qCrLtZlNlXlRAE6VgdKkhVmAPO1qtC13dAqeE7SIu3yVs5rBTaRXfHWItZrylrWybGMB
         0AQgYoW0/2nXY238KDaJlI42TkdqJJmY1LrInIAd3WqIZK6/HdLk2ymn92jreeWicuAF
         qAyhUkal5mYHhFARDYGxi1B6Qq95z484bEwMjqyxJY8955hvqQyx8ly/aXh/rqISiGVR
         PCY2wzl3/cKFW5d/VLSXDn3l2oTrVKx0RTcVtgFgih6+uuRRZLBk3pOJZUD8Pr2ezMDf
         qqKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVh65L39rZao37hR7G783r2HvgXtuworStilggYJQlt+qDnRcr9
	i+RgyiZ9WcqFfCzay9/FIxY=
X-Google-Smtp-Source: APXvYqxsCmSRhe3fHHsEMTHvv+QwUmYUeHo/hZPJNhjvKoTPlZRv+uNvWrWNa5TpjbOCP8APClfDcg==
X-Received: by 2002:ab0:634c:: with SMTP id f12mr1998262uap.48.1581697400210;
        Fri, 14 Feb 2020 08:23:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3752:: with SMTP id a18ls171195uae.7.gmail; Fri, 14 Feb
 2020 08:23:19 -0800 (PST)
X-Received: by 2002:ab0:2a1a:: with SMTP id o26mr1983011uar.62.1581697399847;
        Fri, 14 Feb 2020 08:23:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697399; cv=none;
        d=google.com; s=arc-20160816;
        b=SF5rC7sxyKb5M1lpD10lF0YD4r1sHCGO9tAbXCoUrHdfIMaROU5z92x4xSNCVWvbxo
         FutvYm52+6Tio6ZiuiSi/vHP2NB8NE01Fb2phHEpb72rQAXzj1YrV+H7LKLgzti21kd/
         RifpSWBsKeGIKDSOSyJ+QXsPBswrbO1ZRFvZPcPqpmL89TxqvLcnve/Yy2ii59RR3zBN
         DbTD0kPR6FgkragydKEtf+YaFYPCwswGdlbmcngOojYyzh5gDIDkivYWIsMR3RRH252C
         lU/3AinY8JpKCwMOkoACOo8iHsl5QHkdYuzCvp1nhJK/uDGvVpXjt2GxkgqhT2sPoKiV
         ecxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xncwO7P7E+ZvAxuAn+AqLjnN3+OxOYkDjNywldt8l0U=;
        b=FIKCMCFjd9ZhIYCKK1AhlViUVvx66Lhjj9E9+W+nFcVWqiFRAHjAxkJrfr+9l+m/JG
         Jf9daRyl/ucwIZuJD+b5k0ICNQRnhejaKN3SAOU/BUQnvaGP0NwsqcDLUIlajL20YeNQ
         6qsqe3K7X3FuexDx/EvkCTHChG7A6MsCi+4gSBtRx0ZSejBPPVutKjskGCgejbPcP2Ej
         oSwBbOXEIdfxy/g7iKCdoK8Cl8ebS5UYa9RNKv8ClevSTN7+HsDpoLOiXMyx4RVAFf9q
         ClKVnYDkunKKZ9iD4WqhizjFGc1Q91dTdT0OtTqhgylxdhgO31xHuWK4CXHanFhnODW/
         E/7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hEG8wVCt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s5si349288vka.2.2020.02.14.08.23.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:23:19 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 297762475C;
	Fri, 14 Feb 2020 16:23:18 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 092/141] tty: synclinkmp: Adjust indentation in several functions
Date: Fri, 14 Feb 2020 11:20:32 -0500
Message-Id: <20200214162122.19794-92-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162122.19794-1-sashal@kernel.org>
References: <20200214162122.19794-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hEG8wVCt;       spf=pass
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
index dec156586de1b..2f6df8d74b4aa 100644
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
@@ -2485,7 +2485,7 @@ static void isr_io_pin( SLMP_INFO *info, u16 status )
 					if (status & SerialSignal_CTS) {
 						if ( debug_level >= DEBUG_LEVEL_ISR )
 							printk("CTS tx start...");
-			 			info->port.tty->hw_stopped = 0;
+						info->port.tty->hw_stopped = 0;
 						tx_start(info);
 						info->pending_bh |= BH_TRANSMIT;
 						return;
@@ -2494,7 +2494,7 @@ static void isr_io_pin( SLMP_INFO *info, u16 status )
 					if (!(status & SerialSignal_CTS)) {
 						if ( debug_level >= DEBUG_LEVEL_ISR )
 							printk("CTS tx stop...");
-			 			info->port.tty->hw_stopped = 1;
+						info->port.tty->hw_stopped = 1;
 						tx_stop(info);
 					}
 				}
@@ -2821,8 +2821,8 @@ static void change_params(SLMP_INFO *info)
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
@@ -3192,7 +3192,7 @@ static int tiocmget(struct tty_struct *tty)
  	unsigned long flags;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	result = ((info->serial_signals & SerialSignal_RTS) ? TIOCM_RTS : 0) |
@@ -3230,7 +3230,7 @@ static int tiocmset(struct tty_struct *tty,
 		info->serial_signals &= ~SerialSignal_DTR;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	set_signals(info);
+	set_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	return 0;
@@ -3242,7 +3242,7 @@ static int carrier_raised(struct tty_port *port)
 	unsigned long flags;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 
 	return (info->serial_signals & SerialSignal_DCD) ? 1 : 0;
@@ -3258,7 +3258,7 @@ static void dtr_rts(struct tty_port *port, int on)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162122.19794-92-sashal%40kernel.org.
