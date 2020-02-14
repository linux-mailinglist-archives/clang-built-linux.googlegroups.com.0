Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBD4PTPZAKGQEELTUHVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E5015E090
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:15:12 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id c206sf6495673qkg.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:15:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696911; cv=pass;
        d=google.com; s=arc-20160816;
        b=TEwc7W85hRja36+acvDScSKEoopJW15HCQjz+ZvYjFPUnNjALUG4jaLd+6T+IX+JDx
         nbKNbDLHB20Rt/EnxttziOnleGgUQ7tsOOIIREStlwCYIsYT2FuByxJ55dJRbs4AqmCO
         kpiJ6GcyBmG4SzgYHjIojOaBu2bw/9tqvkt2LHIIuskQaFijMldi4mYWip1rbuz7TZ/Y
         +LzO9Gx2tTShVLLSOWTlMiHNOd+Zy6EsmvAxX/2RJ7gnGE2Q4fvsliwhrPoeOAM4ereL
         TFJJO1hrRUpKcG1rQAOFehCZnGuup213N9LdIBDGxPd1gbza2TQh3cJp0aNooZaO4rkf
         zjVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fV3kKNigMpsKO3OCPerJl5HUPYrXImsqqVIYSH2zaTs=;
        b=Ifb/6DYH+J/Sdhq3g5aGK5jlrSS1zBRHQbP7XtmTuh5a5GRCUhIipsw3THvFjKDOy7
         t1+C2+krPvuQzjyTgkdj+qTch7IyFcy2+4XcY2CYKrDWR/DWyIZ5SOQ8AW3PoXaI101r
         UHjYJ1pKKtryzIdICfQOqNtG4GUXPXYA6nZPbN/cszRPPeTYv0uzzNM6ZhdgeSVoSvvO
         aaBpgQfsewUppBV+wIbOkt6e/IZDS/zAIIx+gbGJefjuXGNKWnXNwud9pB9WmKn8AVLU
         +1PFrdOgTRoDaalvssZyVRmZdHVk+Bq7iOZOIA49X3ptHCiGIt66ZpGHh1Wtfeq4kWYK
         XVRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rELDrSVk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fV3kKNigMpsKO3OCPerJl5HUPYrXImsqqVIYSH2zaTs=;
        b=Xbh1tqvKm1nlHJH+Mo86KN7KRTi8gQfNZqrSHhkRfMVYawdf8COdhUHx6+fZNHB2Zt
         0gRnjQl3mZgwylZiBFG9HZvcPKMQoI6XN/jzJY+aZKmTk5po0vneRmhaKWLA+mtLJpoe
         ENNs6haUsUQMOr1RfFGazoooy08SdQP/HdEhl+juzrOwo1OuurDtFTyekgRO+SyhOcs2
         t8tqTmbZQzE4tlJKTzx0C9/RVEtNvzCrOHQ4vk+zQZNaUO8rSE9HwO2tjEnTzbw8Cv+8
         YcYgyoeykY5TKfCoPv7f8ZRilgMVxhXrOWtnCE8TBns+Bf3gAe6kdCFqHLPbRHAGlIvG
         PJzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fV3kKNigMpsKO3OCPerJl5HUPYrXImsqqVIYSH2zaTs=;
        b=oJgzmWHQk//sHdCO7gav7+XbNoayKwzyQ1lnIkpuOat8L/w6DpiMAx0s5wuxbMz21y
         0BASTDnA+n48rvVcORvqxwdUFR86T1AYbzlVOv3SdunZ/Udfi8GBbJx4Wbcs4ttTpuxe
         t38CkRExvrq7VqwswZdD27Rv5SZqT3NWrBj0kdgrUNSxVzjtj0T2TWEpx/JSG0LCJqXV
         T52zxE0oVH0lmcxhNBFf6c2gl/T27yXaopsXzQq7JTS8AHbhRkDEbsl92hFhLHxSmLBn
         8j4Ic4w1f6f+9/aTRTtIyFA7B0gVzt9lVJKLl8I7gBw524x3uV5kIi+cWlMIp1xBIayH
         OH/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX71j6UJEgYY0n4u0VngH/LYhoS7koxGg3fSESP45uAb7IHhY2s
	jo0cuuKhyHW1dHlbd4/QE7g=
X-Google-Smtp-Source: APXvYqwUvj0afh1ehMVAEt+KZb3jjcl3RXWW1M0xX8laK9mONl7TLmUwmHo042Rbm6JaayyXmcJATg==
X-Received: by 2002:a37:27d3:: with SMTP id n202mr3272628qkn.106.1581696911640;
        Fri, 14 Feb 2020 08:15:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7b38:: with SMTP id l24ls945515qtu.11.gmail; Fri, 14 Feb
 2020 08:15:11 -0800 (PST)
X-Received: by 2002:ac8:6f63:: with SMTP id u3mr3210601qtv.39.1581696911128;
        Fri, 14 Feb 2020 08:15:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696911; cv=none;
        d=google.com; s=arc-20160816;
        b=nTtbZvMAFVMGQX9Nfn+GAJ6WTkUxhtUYJbTe/PHrhMbjIw4+08EI04k7y9xyWv+3D/
         ba34oVPL4ZGO91eSaexWpOO6miiBxi0NFPqbGAopKLkT3byo5GjeuEVyEFc4niR4UCCS
         yXvlabnujTVBWb+lmLXPb2MQGznM3scusV3l/ujXh3v/EGQYOvMC9Pa2CSDDA/9pAWvk
         2KBlqFJwy7rnwLPDVyGtTWnBkPRrehZ3WK5gLBWFKJH07UfCWRd+vUXZwT4gmnxtsqQC
         hCqaT7eABgXfpYVUB3wlXWvo6APDsEPdKj17dekyP00MxBjmwmnyL1t8kLrmAddPKZDu
         wJYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=970W3qhvPZR5lumgNjBYtW+e0QQ6Q0O3PTPHpXYCmvE=;
        b=GUykyffdtqhbH3qsCCaLHdSa2DUVwA6OGI5V80PrXlA94KbI39JcxJWdkxKDtNG8SW
         MW0eoTmk5aJ9rmgOTn4+ERCHsMdy2c9FQHqPVdMWP9+LJTvho8GM0X+wJhMfSf5QvTtd
         40MQkHmkeQa+6mO2djuMJatibUku49dKI+BN/Ucenf+rcXv4X1/J3Y9p3wdfLj0rhhjJ
         arActqkNWwD1XZ+MCgrEjTSCCqGp3GEK+BTSfiinutKNPhboUNRph7xWFuybKwDoFNSX
         aM0KmAhziZO/15DI2Wm5d1/XgFHNG53l4mk/jKIMLriU5SLUnBeXmHtpBxoJ5VZLFY1D
         QJ8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rELDrSVk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e26si383848qka.2.2020.02.14.08.15.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:15:11 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 70FCB246C3;
	Fri, 14 Feb 2020 16:15:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 159/252] tty: synclink_gt: Adjust indentation in several functions
Date: Fri, 14 Feb 2020 11:10:14 -0500
Message-Id: <20200214161147.15842-159-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=rELDrSVk;       spf=pass
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

[ Upstream commit 446e76873b5e4e70bdee5db2f2a894d5b4a7d081 ]

Clang warns:

../drivers/tty/synclink_gt.c:1337:3: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
        if (C_CRTSCTS(tty)) {
        ^
../drivers/tty/synclink_gt.c:1335:2: note: previous statement is here
        if (I_IXOFF(tty))
        ^
../drivers/tty/synclink_gt.c:2563:3: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
        if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
        ^
../drivers/tty/synclink_gt.c:2561:2: note: previous statement is here
        if (I_INPCK(info->port.tty))
        ^
../drivers/tty/synclink_gt.c:3221:3: warning: misleading indentation;
statement is not part of the previous 'else' [-Wmisleading-indentation]
        set_signals(info);
        ^
../drivers/tty/synclink_gt.c:3219:2: note: previous statement is here
        else
        ^
3 warnings generated.

The indentation on these lines is not at all consistent, tabs and spaces
are mixed together. Convert to just using tabs to be consistent with the
Linux kernel coding style and eliminate these warnings from clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/822
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://lore.kernel.org/r/20191218023912.13827-1-natechancellor@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/tty/synclink_gt.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/tty/synclink_gt.c b/drivers/tty/synclink_gt.c
index b88ecf102764e..e9779b03ee565 100644
--- a/drivers/tty/synclink_gt.c
+++ b/drivers/tty/synclink_gt.c
@@ -1335,10 +1335,10 @@ static void throttle(struct tty_struct * tty)
 	DBGINFO(("%s throttle\n", info->device_name));
 	if (I_IXOFF(tty))
 		send_xchar(tty, STOP_CHAR(tty));
- 	if (C_CRTSCTS(tty)) {
+	if (C_CRTSCTS(tty)) {
 		spin_lock_irqsave(&info->lock,flags);
 		info->signals &= ~SerialSignal_RTS;
-	 	set_signals(info);
+		set_signals(info);
 		spin_unlock_irqrestore(&info->lock,flags);
 	}
 }
@@ -1360,10 +1360,10 @@ static void unthrottle(struct tty_struct * tty)
 		else
 			send_xchar(tty, START_CHAR(tty));
 	}
- 	if (C_CRTSCTS(tty)) {
+	if (C_CRTSCTS(tty)) {
 		spin_lock_irqsave(&info->lock,flags);
 		info->signals |= SerialSignal_RTS;
-	 	set_signals(info);
+		set_signals(info);
 		spin_unlock_irqrestore(&info->lock,flags);
 	}
 }
@@ -2561,8 +2561,8 @@ static void change_params(struct slgt_info *info)
 	info->read_status_mask = IRQ_RXOVER;
 	if (I_INPCK(info->port.tty))
 		info->read_status_mask |= MASK_PARITY | MASK_FRAMING;
- 	if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
- 		info->read_status_mask |= MASK_BREAK;
+	if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
+		info->read_status_mask |= MASK_BREAK;
 	if (I_IGNPAR(info->port.tty))
 		info->ignore_status_mask |= MASK_PARITY | MASK_FRAMING;
 	if (I_IGNBRK(info->port.tty)) {
@@ -3193,7 +3193,7 @@ static int tiocmset(struct tty_struct *tty,
 		info->signals &= ~SerialSignal_DTR;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	set_signals(info);
+	set_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 	return 0;
 }
@@ -3204,7 +3204,7 @@ static int carrier_raised(struct tty_port *port)
 	struct slgt_info *info = container_of(port, struct slgt_info, port);
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 	return (info->signals & SerialSignal_DCD) ? 1 : 0;
 }
@@ -3219,7 +3219,7 @@ static void dtr_rts(struct tty_port *port, int on)
 		info->signals |= SerialSignal_RTS | SerialSignal_DTR;
 	else
 		info->signals &= ~(SerialSignal_RTS | SerialSignal_DTR);
- 	set_signals(info);
+	set_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 }
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-159-sashal%40kernel.org.
