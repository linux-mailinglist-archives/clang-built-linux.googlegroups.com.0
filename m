Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIMGTPZAKGQEF3B5U6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id E821C15DCC6
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:56:18 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id b15sf2331859uas.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:56:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695778; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fo7XuveTW+sCtlKiMYDDO00m662IqBKhoQl8psHmd6bxjIxLwQbbiBB+V1fpWDBB5x
         IWfipHHpj1q4mAYC6yDmmXO4/4G2AmFXAuZ2eiE8M2l8l8j1DtuE7HpKlNODLEsberEI
         j8bnlh2r8tpQ3lw8Lv8toNDTCpeuK2xE1o5e4TJFf0PzD5DJsH2MkiD6jqpq2gAR/gt7
         TVYDc66YMiSY/4V4kOMt3XdlqWxj3aOLzPbLt+Nc+8uTy0zxrOjE8wsnAiE4dV26YDXB
         jocEIoc8a+SXPPqVBMphrOvpB0bkkNceQRseEBpZ13/XdAApR4AZuU0lUn3E8PhwXon2
         0ulw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dhC3zM1x1pbH0JxUx0r1kZ1QNMj8/d9UE1FiGVvOEUw=;
        b=fTd9tHkiKxOKmWIOAA3AogAslltuIXTg2/s3qpZIoj79x6fW+gqMYA5WBe3dkAbGg/
         NpWZSngSciy4f4ns7plJF9Pi+As1wMQCt9yy+RBQWDV/KtCTQLl6iciG+8+f4NZ4mHFm
         KeRhAhFeDS91guM3WEWF816NwOLDn1L8SQcasJU9JQYX93eol5XhDiWapfPacf5t+rF6
         xio9vj9e9ZgRPUKn7bxrZm3VoYGDjD3ZpELgzEEkgQx4Tn89gSf7lVRAoUzN09ucQRpm
         vHRNCcKAD0jVjde/vcHcNPO0nHR/APe9kwDv8fe24+ttTzFaVZ8w8Uz+OCzyTAOVwOy/
         tfaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=csEYfO49;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dhC3zM1x1pbH0JxUx0r1kZ1QNMj8/d9UE1FiGVvOEUw=;
        b=QIgy3nrkrJJX+cyUTnn4LFfso1U685D4xSocl2Ch0Au0A8w4UT7XQwIFpCVXialoXb
         qLZLQjZQXZc+eYFJQbeaxeWDCIhtePVYS8GNFR2Y4JYeMZKIk+XTNZpEyEUQjhxXaLd3
         1HEuQG85e3jRmQ8O3PVkEmJ+0l/UGQvsHsufCbuX0i+ze+15Lv9Ivf6H6Om14zScBIeA
         9z8V6ehf0mCnQYu1997lfD+HUVeaNgc6rP5cToKmtVWuvpeWOPLtg1bEOhwzMPOXc6zI
         3ReSNmIJ9KnJGj3qL0XmlOXzyzBeq3ekHDpXd+CioWDVhu2wiLpCXB3Ep99bq+ixJMK/
         FnGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dhC3zM1x1pbH0JxUx0r1kZ1QNMj8/d9UE1FiGVvOEUw=;
        b=WG+eUTh3iX2XVsnVMNzhuYsBEhafCZufaXSjQDEbUq7PdJcHOq3l/f1+L/zh/lLoYA
         eHyUvKW0PYUzaV5sbvSDdDsiWCblBCSq33S16GrChi6Y/lmtejq+Ue1RYitc+nRn93C7
         H/Jp4DM859AauWrjoCXI/YoqY4RMRaTn7vMHbdw9/gGHCJsNHlRyALnQextCQYpRmEgm
         30th28OCZYynupP+aiNVyUkFCE4Dc6pcEPqPhxeSy2vgxxWSfL61kre+kWhYG668Zl/n
         nGeqYni31R8MJljHrmmcKhhXWmzYxga/a5+ZKdDzXGWL5i0UHyrZvxgcZkwqKncRneuA
         YsXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZBO4tyolW1SOqoXo2aOIbbXGRwYUb4F3NSS6sB65dBCERXP77
	AxFfAgPTeQD9JghQZx8qhOk=
X-Google-Smtp-Source: APXvYqyggTIpbTaOqbwFcFXKHh14w3VswY0xm0SxY6xjOCy9xvCe5HbnZn3pJJ58oQ/MXn0kJNq15g==
X-Received: by 2002:a1f:b6d7:: with SMTP id g206mr2103012vkf.8.1581695777930;
        Fri, 14 Feb 2020 07:56:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cd2a:: with SMTP id a10ls138192vkm.4.gmail; Fri, 14 Feb
 2020 07:56:17 -0800 (PST)
X-Received: by 2002:a1f:9d8a:: with SMTP id g132mr2099868vke.39.1581695777474;
        Fri, 14 Feb 2020 07:56:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695777; cv=none;
        d=google.com; s=arc-20160816;
        b=TWOhOd1f0d32hDXjUS7bi34k6QfQyECC6N85Wf5vL0/Vc+4bwqBon6z2pU6xHw+br8
         rFTmiRyrvXqMfrvhjouDhVjEMdVY2+0h7tNS2RLlZzKBSYmgMwNZ4EmkvWNYKc5qUOgv
         gPW4IfMkLMBv+NeC4O6gN33n12b/Qxm39GLTBeSiQ3wLuOHSonLIoxs91g5kl057n1Cx
         vgALzFggcaRdTP2ThncJPo0QbGawoML0ur46lrB9/l5FCxVAnGekzMF5uiLoqQk75PiF
         cNFCyQviNZi0Btip41JVgrnRS3vUqlj8qHncv7Qda2bsg1qThRlaI4QH2K0JYtNx0/cS
         QS5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VbKaMT4xc2ByhWNZgrCG3ZwxPTFPhlv8NULV1YSJJC8=;
        b=cfzw1LfH5GwGRdIONbJcyVyrq933dj14eUMBEmBAUErKGI1Yvv43XiQ5Y2i84WFogL
         HVXJ5gvF+UY/Bqhy6gQb1B00EbCk7dIlpTbz5RH+eRq7saKG0ombGqlp4R9QUI5vBKDf
         s2y/DaGfkxl8J6SGGBaIXIYV9u99INqLKdJRBVWkxkwYL9OHzqEswXEuLW7IQjKdFWci
         pQdtgQ8O7dqUziCOrnu6lU/Qj4EyzxWksh1+tIpfzeOd2XCSl6FBnz9+M3+lCEwsRfEk
         +6J0BnCB0RpRb1tKnzeSIoo+wNuU4bFRJMHrAjNHpw4F2dX3MPM6EfsdOjXXvcDJrXig
         YssA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=csEYfO49;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y126si275695vkc.5.2020.02.14.07.56.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:56:17 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B2F6B24654;
	Fri, 14 Feb 2020 15:56:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 341/542] tty: synclink_gt: Adjust indentation in several functions
Date: Fri, 14 Feb 2020 10:45:33 -0500
Message-Id: <20200214154854.6746-341-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=csEYfO49;       spf=pass
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
index e8a9047de4516..36f1a4d870eb1 100644
--- a/drivers/tty/synclink_gt.c
+++ b/drivers/tty/synclink_gt.c
@@ -1334,10 +1334,10 @@ static void throttle(struct tty_struct * tty)
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
@@ -1359,10 +1359,10 @@ static void unthrottle(struct tty_struct * tty)
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
@@ -2560,8 +2560,8 @@ static void change_params(struct slgt_info *info)
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
@@ -3192,7 +3192,7 @@ static int tiocmset(struct tty_struct *tty,
 		info->signals &= ~SerialSignal_DTR;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	set_signals(info);
+	set_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 	return 0;
 }
@@ -3203,7 +3203,7 @@ static int carrier_raised(struct tty_port *port)
 	struct slgt_info *info = container_of(port, struct slgt_info, port);
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 	return (info->signals & SerialSignal_DCD) ? 1 : 0;
 }
@@ -3218,7 +3218,7 @@ static void dtr_rts(struct tty_port *port, int on)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-341-sashal%40kernel.org.
