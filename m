Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3MLTPZAKGQEQ3VTNNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B85E15DF4A
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:08:14 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id 68sf7550094ybe.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:08:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696493; cv=pass;
        d=google.com; s=arc-20160816;
        b=gMGK3nF/1Z122V2Oo2JgMaclFN27K+UvkySH+rvzyxmVK2LC/qoz1KcWFz4fcEQ+dD
         cluT/45ZNynNir4wawXXvhR3PjYOIve94FaCqfFCWiFdBFyapD5iLYAQRfFP1FEPlYJo
         vukzRG8Gh+CFwKRltqvIbU6nVJ9PycT4o1ihTY3mATE79RPStFLLNdO4hIGH9Ty42w4A
         U8UJk4jUIYHctPNF5pk3JuxX3p3loFmGdFBNvaE3ypAS4gvSm2FwoWDRtdy1Gcg5ULIi
         z0NOTIQ70cMlAuuSj71bWBt/+fEP8dpxs/CCOwz7MAcUZt98qhmS+3d7A28c1dfWWT6L
         xBGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CwfoUJJ7cxvthWG+oSPv2kZ4OEy3PXrw6XtbzCIcpE0=;
        b=QyDsfJ01wLylJ9WBDRixOr7BqjStviJyHIe4+o9/ucwiMmKBXy0OLsXGVTT6OApOFc
         OH4CO/acyNQiE3qyn0t5V1ycr+YwQiMWv8k59X+/AwwEksK729cY1iz7opMbFg9/VfMq
         vYdZorjHlFd8aJO3YHkC2UGeHeu/iXtfOSBiefUXjZ3Ltv3nSCEgwAR8Mvbb2BIU6twP
         pTuw9O3uAaICWpfX9f6Z86WOkxtaAcvt1ZbKFKeWhdwvXOnBtr7FbyBO6k6wY0df/330
         syuIX4C661vNWOR45+TaQ/trneNfIm7p93JZdug3IPpCHwEM2QY9wLA7BLWq1hBiZDe+
         CcBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x1bZQD+u;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CwfoUJJ7cxvthWG+oSPv2kZ4OEy3PXrw6XtbzCIcpE0=;
        b=feVoDmtoX4Ks0Mg4QxZJBVpAHOD8t0jj3LWXHxAeyPu907UFVEK9n7rCDuw7labH0t
         tBpj4TreQGjlIA8XpqINB2gMAVMGZr8E1wdSdnY1Ks+Ch1ZCZuwcVmo4UY65rn7CtlZz
         zoGnZhw40SYh9jeD9d4EJLNBGG/MwAyI/XHjiZQYlv7LlTKteGJRIYGbXfCi7PLwOqQx
         XyHIFLLdh7X7JpoqereAZQO/yv8yJuJvLm9S1lccYKAy87yinYRe1gLRDZxCMmhLU/4H
         Aj0+9s/FsHDEoGp6Q4UYRKnyNANYg1wRcxwTQoKLLp94DApNj2iKmQcNMpmrGGkWkWdn
         YbVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CwfoUJJ7cxvthWG+oSPv2kZ4OEy3PXrw6XtbzCIcpE0=;
        b=F0ps7tekmUkvwxmxMu7rckyuuIYTvxB54hBgvSsrLRv9jPijmPgJPKh+2dy5lnQ+Kz
         1ET5Lx3WDzJHhswxDk6IqTb+7bcGauwJQHrJ3cptBDotDMZ/zlHrSRZ/LTOocqaWeidR
         6xtx0yMQ4BhH9Ovw5hyEyiJcqffCXs0c89VRGr8YMH+YbX2V8tkrVv8BJSjJqfpRAdml
         +2YGV2jCV4AxI5jofNr83I8bnBObhkvU0XIpXqqY+PdMxn0VwFe13JSuEBNZVUANn7u0
         5fzFrCIJOVEITPQeTWiMOidRDq0c/3AOD94oRKyDbikT9cvdk6gT9BZanuUTVu5LwCrF
         rZwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVzLG1sWwCdipPT9UswI/iRWNaoXJHABpjM/1ONoqJud/lhnnh
	1Qq0J+RqfHivdzLd7vkG5e4=
X-Google-Smtp-Source: APXvYqwChrg/WUMbRsSh3u6nK2fDjxXkmS24wc/9LgQrNhUZmNUStMRj1gz42nm+tIVPGpbVbt7ZqQ==
X-Received: by 2002:a25:d815:: with SMTP id p21mr3701317ybg.234.1581696493311;
        Fri, 14 Feb 2020 08:08:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cc05:: with SMTP id o5ls507232ywd.1.gmail; Fri, 14 Feb
 2020 08:08:13 -0800 (PST)
X-Received: by 2002:a0d:e102:: with SMTP id k2mr3063940ywe.163.1581696492946;
        Fri, 14 Feb 2020 08:08:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696492; cv=none;
        d=google.com; s=arc-20160816;
        b=R4YAQgFSSOLeiU51NmxnH7F+sH0E1rrLa8GF+kw6WzPcy961LJV6xIzz7Hd8ANzZ2O
         ZGuO0Goe1CPEEAAHs/HyK8e401GFiPfOZ500FI3q3TEfUMquT9Qo3Z/8rJN3q19557Qt
         C1jSCzEMzUR07SavvtoPE1VUZQ7CbNGIgBfbMb8djmjsJOq24D3vrF94kaYATNChrqH8
         DkjXP4nK0+DzWBjQHE8SPcfdqJ5b0JHcturEMiXJsZ/xVWHoWQ0dfw3EIeS0hd5xmvwr
         noGYhoUQnce4bCtEd5YrXlXHxeAeG0x2Yp++kM0wOrFgB6MSi2mh4XkCjrzve7v+LbMR
         OoYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VbKaMT4xc2ByhWNZgrCG3ZwxPTFPhlv8NULV1YSJJC8=;
        b=LntX+v9+wv2r2xYuY7Ala2Ntica96hDierlOBJWpFaz2p+9y4Rww7rcumv1ygq6rgu
         NA7irWSNmYRsvsYOc5IEXifLq/fSQupbpR0ofyg8wa2TinRMkV4at6LGenrN6cUeNLW3
         6Q4xOHSahEHVcKNpf4vhakUju7bWfFAqx9CAkRz5yEUVvhA4wKqyVAf7xq8NRMvG4CiM
         y68TxhYIleZYvK9Xs1YniyTCJrV6efNtfPdZ2jNbWOhAPtX3LvSaEA+5Ng2HK3hEWAIf
         eBo2LY+WmzXYeFNrynx5emDowP00bhFcYOFfUtc0n6pgJTBfdQhDfc94pyRps1zfWt9L
         bZEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x1bZQD+u;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s64si250257ywf.0.2020.02.14.08.08.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:08:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6BC972067D;
	Fri, 14 Feb 2020 16:08:11 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 297/459] tty: synclink_gt: Adjust indentation in several functions
Date: Fri, 14 Feb 2020 10:59:07 -0500
Message-Id: <20200214160149.11681-297-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=x1bZQD+u;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-297-sashal%40kernel.org.
