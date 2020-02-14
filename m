Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJ4RTPZAKGQE5QSVQGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0989615E19D
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:19:53 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id c31sf6124683pje.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:19:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697191; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q+v6t2kMrictNNeBZycRk7P2WJq/JU+XhkX1PdtRn8v6HwcDoIkEA3icCFaI04k7X6
         JDodyazgpVSE05Xg1vQ38GDVESXI3kvY41ksHMjn9LSv0q89/WgbIaqy4A9eaicMY2DR
         bg+fs0YisPg9NB1r/au1PeXtgu88sNH18hlAfYtaeGqFtYx175nq6UZy575E8pH9peDj
         sS4+yNvQ+jbTCDAgOd1+hwC61buqnzA0p1p+wYwSyDTJ+MeB7Ey2kk732a2jx6Iid8iJ
         8jY4bSN5jfF1J+8mylm3NoU6QgjfRBrIs3vxntXi/F/tWupVxQkacTjvm8RzN/7ET/eS
         Rl/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9sP7lMCkUvk29Mb04BytMCL5QOKu93uZsDQO4Fvc2ek=;
        b=LFhIola9wuJCem5NGIXwPy71DUrW4tX2oikumkkTHEcGSOh8N/NXatI3QVXcRrD2CA
         Yx9XCna0Nw6mQ5+VxiII/2BvZp6/D9hkaMvy5J6M3xmudJEpLYH4Uq6L+x+Z29hJtrVR
         TtZPVbS8p8oVMgIeCGf5ETPSh6xYAi462od0BiGDcmZTPOnBTb9PnZlgZJUxiI004bkO
         ENG7QQKz1Ig4lST1SrgCVVWh3ZTD9IqyYUJxj7dMLPg06ChvGNz5zj2fL8ofDBxeysCS
         5kzXYrnr1si/+xcmwe5WidyvJNFAKEkP9dt/SfyHQ4WtaA5LyRbYdzgE+mYmx+/Juk2N
         r42A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LwfaRUHA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sP7lMCkUvk29Mb04BytMCL5QOKu93uZsDQO4Fvc2ek=;
        b=FRbohHrOMZibNvHjMZh2Cep/LQFqqbhaeIDstGTgpAPNQ4dVpT7mHr4GjJVoH9JEvz
         WMy/e4kx4e64BTTBJlJFiNLdGrQNBfFQ+YJyG7YUHb4jENbhybVxWKZs4IJKjrh3083T
         nn2vSGFzpxo0LkluewjWzfirClrRaOFBSGCURSQVKfL+qPYaZvl6choVwHiMkSY1yZ+0
         a/LjP9w1Hk3vnZ47Ehg1Hj2LfainTpUhLTOgPWeFEaXJw8Wx9kkNtUqzdX6GytSsAYuj
         0ZMuxqTI+4w8Huyihx7se/9GDBQgKFvOcd0rs/aaeQedwYv9tnH4ky5OuXIrlGmJqiBT
         UTKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sP7lMCkUvk29Mb04BytMCL5QOKu93uZsDQO4Fvc2ek=;
        b=J6g0s6dBtlqRV4uiLnFHOY2ddmycHS0MSpEwelFyIVcN0NCgIH8yLUCJT1eYZG09n4
         gNLgyaHclHoFqBiSSvR/Cow9u/XuBh3z4Z/wlxoRh6Flx5teYe5CtZcT1dBoyAtXAOG/
         /VOwXgnVjnh7MaDlKBnfjmb41njmDyyc7ak1A6v7cvzMcaRvXCs35DaDZ0rFGMBCo7+F
         BcAp1yCXmGhd961O8y7x2ZyvjKhBh1vtV3FK4MC2AehsPdzmkhPlrtHQaIySODRq7W0T
         IKQO3RzhffUS6ilu1wpyTaNLkIFSNEJFLr6XgoJj5b5PUfrzVZ0qiaIYS7SI4mXG6ADX
         deBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZznKaaE20Aotp/IVHMkGFfm3NsI/HXrdvnAnAcSeXbdwozX4L
	jHyWdVMzLciIa17exsGZ/iI=
X-Google-Smtp-Source: APXvYqxVXLU64eiSnG125ou77ds1Q9kE2WLFQbPy4OymyeQTJSTXr4NQkK5a2tEXQX2cZudkDO+kEg==
X-Received: by 2002:aa7:9354:: with SMTP id 20mr4152883pfn.1.1581697191691;
        Fri, 14 Feb 2020 08:19:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb88:: with SMTP id m8ls1639823pls.6.gmail; Fri, 14
 Feb 2020 08:19:51 -0800 (PST)
X-Received: by 2002:a17:90a:c78b:: with SMTP id gn11mr4553397pjb.97.1581697191316;
        Fri, 14 Feb 2020 08:19:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697191; cv=none;
        d=google.com; s=arc-20160816;
        b=ke0lVj0fgceuVmtBQvdTg+PQL/vfPaurzzofES1FjTn1i8PwNsovYt+14LwNaR6Xvd
         Ru6OwFrFRxhuhn1Nhr78MoFeRMjrVgcN7X3iVcp3P9KWwHQLxmUrI1wb/aoN5aKPlOlg
         2uYddjDkXuvLGm6gStHFRjqFYCmHsaTN0WhjCep33npM6nIpm0Z3LNGPCvUwxOlNTfzn
         CN1ei4qnpUHwXK7oSTNafKabljOg90fJU+3mtPTpjbTOuA00YC1Jfg64m/OxgJGb2Ivl
         WSPCOBbCwZEkKGgT9RzbOMVgtjlQf137qMtinNq0JKtI5nsdj209AAFTB8cY44xfwGEQ
         vsCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A4ycaH5KLdorFtmXb48R+N5SFHZriq+Yl0CBUgufq4U=;
        b=yS5B95RW8RyDnqBmkecJ9dDcsFknRvNT7RqyLxGRzSLc3/QFckloiJKhfFhfdu6M59
         wWGMxgRcl+NlDrupM4dkpNf+IWlU+AC6O0uLcDgHcX+rtMk6OLcNoRId5hGNsENe8CYl
         3iVKbCRFHL+cJDr2kl//FcdZtOkmvHSyb+jeAg9uB2LV3/2R7oebresS9UWTB3CpZue9
         hD69Ai2osogHhEq2SiqxM60kIToCPXRPTKG5kYTVY2HYrysUSYb3V14LobzY1xm0rt84
         kt0NaM+Khk4WRnQrJ1dDJ2UL3EQv/RNwNw51EE4bdb1BTp/Jd2/8/Brv0Mmm4DPsTuan
         wOIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LwfaRUHA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i16si288991pju.1.2020.02.14.08.19.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:19:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5665F24716;
	Fri, 14 Feb 2020 16:19:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 120/186] tty: synclink_gt: Adjust indentation in several functions
Date: Fri, 14 Feb 2020 11:16:09 -0500
Message-Id: <20200214161715.18113-120-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LwfaRUHA;       spf=pass
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
index 344e8c427c7e2..9d68f89a2bf8d 100644
--- a/drivers/tty/synclink_gt.c
+++ b/drivers/tty/synclink_gt.c
@@ -1349,10 +1349,10 @@ static void throttle(struct tty_struct * tty)
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
@@ -1374,10 +1374,10 @@ static void unthrottle(struct tty_struct * tty)
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
@@ -2575,8 +2575,8 @@ static void change_params(struct slgt_info *info)
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
@@ -3207,7 +3207,7 @@ static int tiocmset(struct tty_struct *tty,
 		info->signals &= ~SerialSignal_DTR;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	set_signals(info);
+	set_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 	return 0;
 }
@@ -3218,7 +3218,7 @@ static int carrier_raised(struct tty_port *port)
 	struct slgt_info *info = container_of(port, struct slgt_info, port);
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 	return (info->signals & SerialSignal_DCD) ? 1 : 0;
 }
@@ -3233,7 +3233,7 @@ static void dtr_rts(struct tty_port *port, int on)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161715.18113-120-sashal%40kernel.org.
