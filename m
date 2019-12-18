Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNE543XQKGQEYIJBGRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C238123D16
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 03:28:07 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id n6sf576234ile.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 18:28:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576636085; cv=pass;
        d=google.com; s=arc-20160816;
        b=NHbobI5XxOHBOeLFF/z/vyOqKbZx/m1cNZLG9mcOd3HEwZjZ9/74GB0JrmyTlizbTY
         AYa/E+EdAlFb6o1y7akhVKA5+/TsrpAkw9ceyrhXXs5VW9ctFrUhVhWqRT59c1fDxTXh
         bo4oNv+QzTa8hn+iCgiCzWPP4/HzoJMqjPxhtb7MXcSFsLSfQtA25D0yhnoirgMQXCGh
         YFGvccKinnE6RWvU5smOSA7durDeGjXkpZQWD7oxlZe32XBYQvGP7EM7Qn+wzH18Pmwk
         1HYeZpWd4uDwqTTWlq8lE1DlpL4HlnUvNTbeuxH+g69Z501UMVVmkoRlF9KC643J4Q0c
         0FsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=nPMbqDLkdTLE96GQquUUF5VL+tcJ/4SHbgA49k+pqDI=;
        b=pxRu5eh20FSTnl9cwbeFQSCfCtvspkkVwn+PnjWEW8M+oRNqiZZxRIfMJsi0amG2HI
         Tjk4iY741TOuWDWKkASFA2Z6VXDcYs4rxwBrkd3DQyzEPF++wwvDTWCr+ZsI5bp8nK0I
         Kat66udLni/FXTxAws+gPoPMrfdMhwTTLJ9rpgROjtBKkJmv+upPW2xeTqHHtXdYJpXk
         zFxwrZ7iytZvzbXDMfYCt+41OB42Tollq2SZGsxZC2p4OkZpUupm2DA+zVbmrKYkwCX6
         7oL/6/AVvDWO4Bn+VOqTzLgnsjkMrZ7g24O7byvxNfk5C4SPS/H+yEJkul0dh6rnrOn+
         ZV/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QmFXaXis;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nPMbqDLkdTLE96GQquUUF5VL+tcJ/4SHbgA49k+pqDI=;
        b=J3Riy+aOogBXoGEN0I+Zw3wRzzHVedlj7OzZQetdvpxQ0TpElXwjBZQYKBQfw4w9ia
         1Vr8cKYLXY1832FAD239C+BJzuEOg6b7QXGfprS/Cu8JQrX7l19+S0ODK8fXf0IuTNUI
         OXBwumVd/lfwzWauYx+8u9k6CST+nxOFn40lJpZDlryJ17S9Wji3Hrrw4x1FTzadMWEw
         6cUjQRnU9YGt0e7a6cYX5hfPwA5rub1SpsJ5j31GfxgaUTPGBjNzrB/PXOjqWHknsK56
         lq8+5+H02gSPDXaKS3o5IWnXu9ACAmWHsbj1ovmbfS68o/f7Ehyi/erC1WkwjfLiGQye
         dfpQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nPMbqDLkdTLE96GQquUUF5VL+tcJ/4SHbgA49k+pqDI=;
        b=N017m5fNvPpr7O1urXclcEKh3Um0Jh/V+xpIgGfi4X0oJw7ZjWCAHNw5FBLil75EWg
         amUo6BhloIBTFhCEgmNRzfOKg9F2awYf3rOZWyci89JMoAm/lJH1tC9rXOtXzWdPgHRw
         fQ6WD5jaR6zceYqBHWGvL84D+U1g0bMWYQjWbpjgV47z1kgEBmWcvsTGzccmtXrE/4XC
         bwqq6UWBbT+ub75ya7WXhV6EDnXkqU1rjC8Z64uYzUEJNcZ3uqz3lj/whJLhOgmnMBiC
         uxuYXYMrOXZ1CcrtfTVFlr+XUUiKYyInuhsHZGj30tpZBMMazyHsIqQz5gK1iO1k7K4E
         w6/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nPMbqDLkdTLE96GQquUUF5VL+tcJ/4SHbgA49k+pqDI=;
        b=DugRo9FRMv7xGoevw6moTNK8DErv9QSpa0qAG4TeGkvec1/LhDCIIaJTN+SXAKDKoC
         wpT7w5eGeQYY5ILW77wHGZGjD9Gbvrg4WSH7bK6a6Ui0nFRNWa9iLY1q0Lp0yuyIHQXL
         Elmldwz9X4ywOk68tweM2g1VMFcFSWTMCNHpn2SyItXt7vClDr3yVXJmXZvmqWMPnwIt
         vnxWZIzmXzk8TpelOe5PebfYODZ4CXtnsEPTKQr1Ihs1Qs++cmJdTVGN/J5x6UE1dE4M
         CjtvgruMC3VWLnnW/w78mYXUc/8aZv07UjSVrbmh0qfJ7fVWqDiwxWsFodEszWhTeHVx
         cidQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWmpCXpB3rwutsSeaTbkH4DR5y9QhNAo5NzjAl41kaJgFiS81Fc
	YhXs8LiPd1cImSy2PgCipkM=
X-Google-Smtp-Source: APXvYqxDA2i9KovpHNci6uZAPAGJU6tU7scYJ5DAb6861if6vD8ZJW0PJKJyl1TAoIbOKdIluBHDCQ==
X-Received: by 2002:a92:d610:: with SMTP id w16mr530500ilm.283.1576636084923;
        Tue, 17 Dec 2019 18:28:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7a08:: with SMTP id h8ls67821iom.4.gmail; Tue, 17 Dec
 2019 18:28:04 -0800 (PST)
X-Received: by 2002:a6b:6e06:: with SMTP id d6mr777412ioh.95.1576636084412;
        Tue, 17 Dec 2019 18:28:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576636084; cv=none;
        d=google.com; s=arc-20160816;
        b=YT0O/PBI/WX6WLMHhyM2H8+DcuBFFvU2jfct5t8aXnNCxgnnk0/qmi8lHHWHBzGEXs
         e9DxTu7rm6P3QcBmA8wAH3Na9Jc0L4INQ+ind4YJ0HDUnP+H8PQTzQO9Y8HO28aSyrhZ
         zopB5k4fg8kbUYXNf+yR317eqRLGgq+piwErK8YaLOnQ4eL1W8JOU1HBxK2HNQDfPuK2
         yjwm2htaKFPRgXcl9oE36ELqGOOcGYpItkQZYtB0HfeOCDlNZQRGhXfxOYK7yH934l6v
         zEbEs3TBzfWqjL5Qh6I6CnoIjqI7GjxNS7h5XJ5M4G/3SFHavjVs+x8FEpRf3wscFPyu
         J9eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XsKFomZBuwrGJLUSeibm23zlCqGEUyhwrl7aVRMeaYU=;
        b=Xy8Lolo7pw+tbx6kyTVEk8A4vLQ+UAcU38Nzr/DEgBCZq7JZqMK3KsAfFafFK43rAA
         5Z3fVt8jwiYeQDXYopURo9MhMNXZ5Er6hxwcSr5f5KX50PxnF1JGnLZq1UkV8hV1Gcqq
         P+01k33P6Jb2Af0EICRRTf4X5nrG+jJ41TqxPbUx1X8p5QPx0X+nn/4W5vYMeI8gWvq7
         qBXKWX05HAZvmS7kbcz5luLPb2dzf3CugIa7aqfCo774RtClJjH+QVMmpQ47m80ULHlS
         ZtOXNfPa17avhj4kJ6fgNKLukdgAWK4YSXKwve7RA0QGRoXYSvVfZDUpCRORrGq8+EzA
         /PDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QmFXaXis;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id v6si38700ios.0.2019.12.17.18.28.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 18:28:04 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id w1so455070otg.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 18:28:04 -0800 (PST)
X-Received: by 2002:a05:6830:158:: with SMTP id j24mr477110otp.316.1576636083890;
        Tue, 17 Dec 2019 18:28:03 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e6sm274277otl.12.2019.12.17.18.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 18:28:03 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jslaby@suse.com>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] tty: synclink: Adjust indentation and style in several functions
Date: Tue, 17 Dec 2019 19:27:58 -0700
Message-Id: <20191218022758.53697-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QmFXaXis;       spf=pass
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

Clang warns:

../drivers/tty/synclink.c:1167:3: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
        if ( (status & RXSTATUS_ABORT_RECEIVED) &&
        ^
../drivers/tty/synclink.c:1163:2: note: previous statement is here
        if ( debug_level >= DEBUG_LEVEL_ISR )
        ^
../drivers/tty/synclink.c:1973:3: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
        if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
        ^
../drivers/tty/synclink.c:1971:2: note: previous statement is here
        if (I_INPCK(info->port.tty))
        ^
../drivers/tty/synclink.c:3229:3: warning: misleading indentation;
statement is not part of the previous 'else' [-Wmisleading-indentation]
        usc_set_serial_signals(info);
        ^
../drivers/tty/synclink.c:3227:2: note: previous statement is here
        else
        ^
../drivers/tty/synclink.c:4918:4: warning: misleading indentation;
statement is not part of the previous 'else' [-Wmisleading-indentation]
                if ( info->params.clock_speed )
                ^
../drivers/tty/synclink.c:4901:3: note: previous statement is here
                else
                ^
4 warnings generated.

The indentation on these lines is not at all consistent, tabs and spaces
are mixed together. Convert to just using tabs to be consistent with the
Linux kernel coding style and eliminate these warnings from clang.

Additionally, clean up some of lines touched by the indentation shift to
eliminate checkpatch warnings and leave this code in a better condition
than when it was left.

-:10: ERROR: trailing whitespace
-:10: ERROR: that open brace { should be on the previous line
-:10: ERROR: space prohibited after that open parenthesis '('
-:14: ERROR: space prohibited before that close parenthesis ')'
-:82: ERROR: trailing whitespace
-:87: WARNING: Block comments use a trailing */ on a separate line
-:88: ERROR: that open brace { should be on the previous line
-:88: ERROR: space prohibited after that open parenthesis '('
-:88: ERROR: space prohibited before that close parenthesis ')'
-:99: ERROR: else should follow close brace '}'

Link: https://github.com/ClangBuiltLinux/linux/issues/821
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/tty/synclink.c | 55 ++++++++++++++++++++----------------------
 1 file changed, 26 insertions(+), 29 deletions(-)

diff --git a/drivers/tty/synclink.c b/drivers/tty/synclink.c
index 61dc6b4a43d0..586810defb21 100644
--- a/drivers/tty/synclink.c
+++ b/drivers/tty/synclink.c
@@ -1164,21 +1164,20 @@ static void mgsl_isr_receive_status( struct mgsl_struct *info )
 		printk("%s(%d):mgsl_isr_receive_status status=%04X\n",
 			__FILE__,__LINE__,status);
 			
- 	if ( (status & RXSTATUS_ABORT_RECEIVED) && 
+	if ((status & RXSTATUS_ABORT_RECEIVED) &&
 		info->loopmode_insert_requested &&
- 		usc_loopmode_active(info) )
- 	{
+		usc_loopmode_active(info)) {
 		++info->icount.rxabort;
-	 	info->loopmode_insert_requested = false;
- 
- 		/* clear CMR:13 to start echoing RxD to TxD */
+		info->loopmode_insert_requested = false;
+
+		/* clear CMR:13 to start echoing RxD to TxD */
 		info->cmr_value &= ~BIT13;
- 		usc_OutReg(info, CMR, info->cmr_value);
- 
+		usc_OutReg(info, CMR, info->cmr_value);
+
 		/* disable received abort irq (no longer required) */
-	 	usc_OutReg(info, RICR,
- 			(usc_InReg(info, RICR) & ~RXSTATUS_ABORT_RECEIVED));
- 	}
+		usc_OutReg(info, RICR,
+			(usc_InReg(info, RICR) & ~RXSTATUS_ABORT_RECEIVED));
+	}
 
 	if (status & (RXSTATUS_EXITED_HUNT | RXSTATUS_IDLE_RECEIVED)) {
 		if (status & RXSTATUS_EXITED_HUNT)
@@ -1970,8 +1969,8 @@ static void mgsl_change_params(struct mgsl_struct *info)
 	info->read_status_mask = RXSTATUS_OVERRUN;
 	if (I_INPCK(info->port.tty))
 		info->read_status_mask |= RXSTATUS_PARITY_ERROR | RXSTATUS_FRAMING_ERROR;
- 	if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
- 		info->read_status_mask |= RXSTATUS_BREAK_RECEIVED;
+	if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
+		info->read_status_mask |= RXSTATUS_BREAK_RECEIVED;
 	
 	if (I_IGNPAR(info->port.tty))
 		info->ignore_status_mask |= RXSTATUS_PARITY_ERROR | RXSTATUS_FRAMING_ERROR;
@@ -3211,7 +3210,7 @@ static int carrier_raised(struct tty_port *port)
 	struct mgsl_struct *info = container_of(port, struct mgsl_struct, port);
 	
 	spin_lock_irqsave(&info->irq_spinlock, flags);
- 	usc_get_serial_signals(info);
+	usc_get_serial_signals(info);
 	spin_unlock_irqrestore(&info->irq_spinlock, flags);
 	return (info->serial_signals & SerialSignal_DCD) ? 1 : 0;
 }
@@ -3226,7 +3225,7 @@ static void dtr_rts(struct tty_port *port, int on)
 		info->serial_signals |= SerialSignal_RTS | SerialSignal_DTR;
 	else
 		info->serial_signals &= ~(SerialSignal_RTS | SerialSignal_DTR);
- 	usc_set_serial_signals(info);
+	usc_set_serial_signals(info);
 	spin_unlock_irqrestore(&info->irq_spinlock,flags);
 }
 
@@ -4907,24 +4906,22 @@ static void usc_set_sdlc_mode( struct mgsl_struct *info )
 		/*  of rounding up and then subtracting 1 we just don't subtract */
 		/*  the one in this case. */
 
- 		/*--------------------------------------------------
- 		 * ejz: for DPLL mode, application should use the
- 		 * same clock speed as the partner system, even 
- 		 * though clocking is derived from the input RxData.
- 		 * In case the user uses a 0 for the clock speed,
- 		 * default to 0xffffffff and don't try to divide by
- 		 * zero
- 		 *--------------------------------------------------*/
- 		if ( info->params.clock_speed )
- 		{
+		/*
+		 * ejz: for DPLL mode, application should use the
+		 * same clock speed as the partner system, even
+		 * though clocking is derived from the input RxData.
+		 * In case the user uses a 0 for the clock speed,
+		 * default to 0xffffffff and don't try to divide by
+		 * zero
+		 */
+		if (info->params.clock_speed) {
 			Tc = (u16)((XtalSpeed/DpllDivisor)/info->params.clock_speed);
 			if ( !((((XtalSpeed/DpllDivisor) % info->params.clock_speed) * 2)
 			       / info->params.clock_speed) )
 				Tc--;
- 		}
- 		else
- 			Tc = -1;
- 				  
+		} else {
+			Tc = -1;
+		}
 
 		/* Write 16-bit Time Constant for BRG1 */
 		usc_OutReg( info, TC1R, Tc );
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218022758.53697-1-natechancellor%40gmail.com.
