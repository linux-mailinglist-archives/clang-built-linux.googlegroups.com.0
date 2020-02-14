Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6ESTPZAKGQEKPZ56BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 036EC15E25A
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:23:22 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id 37sf6389239pgq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:23:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697400; cv=pass;
        d=google.com; s=arc-20160816;
        b=NM3Q35VZmQY+DNejewEbGrb+yQxnmNTdwk9nu+DCIqTSeCx+rwljZmd3xWnfBFMFMi
         Kw3hzemHs1H+YfGYEHEQKyQM9J8P9Zf1xR3hyE4qtMrRWfBwBhSimDjspEp5+lAPUEd+
         8TFJGXPHKnfKu+GQ12NsfXr+fd1RuaSgpgoZFwWUWI08HqOXep5/tCTY86qNKskXgWKF
         gFjl1l0edxrgc8DKueAFVKu1BiTLKUVh5STDyBKTIr+PJSdvW4hKqkmF6W2Q2nJsXQ64
         SbhEVQ92tRe7LOD7L3Gu8x3QbH2g+7JVhx0s+2Q+LVVgTL1qUEQHIJ8Eg+wrd/66tPxS
         GKRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ftHIzCN6ci9mDrXsYsavaaw/LKGuIWSotlvjFxWmC+k=;
        b=SW4uFfvzktO05tfayX7QehlYcHC8au/jKUgJNL3sPSrzxq6eFNucbx/kcns6uOluMj
         pMFbFKAApNbzb/rHgW7Zwuqn2Q0V68bjLqa0xMXNWPLf9izfZsvjm8Izf6fApZxcy2ft
         cwUttyxkgKrdkxBy/DWQSrWzW7TmtHu1rUhzVR52lYhQ5hKn1IlTDFVZtz5AE/O+PWjj
         kdoviRWcDC5bZUMJnSyJ8BAfH2eCSWY8tQY17IsV/6h5WniipXJKXPZK3sT40Fu+60hQ
         sUQHY6KNxs2fUbjUKJbncQ1IL7rW32xG5Xre+sIfX3rbwSevzU9ErqlNzYdF+Tw1gtDN
         Su5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mMTek149;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ftHIzCN6ci9mDrXsYsavaaw/LKGuIWSotlvjFxWmC+k=;
        b=mCJ5d6+3OvBlXDKT4Zvvz5t58M9ItAtPW3qPHlDp0Bu4K4qaAEiEMSwS6l7e6w65Y8
         gomSHSzpBWLli2sgOUgIDPflZzDjcAZZciDiRXAJYGbAc5rZhg1YD4kAcRWDfbwgZCxe
         m+WLJTni5YQXhnd85sgGFKOYUHQ2JegKNVKMATAuEmhkoGhE9XhJLG1GG/sm1irrBKZR
         84JZyAxDcKdSSXQO8Vdz6C3BxmaZ0YLwN/e7PeSNuHvy5akEfl73w40FcXKQsYLRR4/v
         7tD7l0zsArlBaD6rFvayohE0kHP9XnMTvSFeknNWtmQmkWKlmDRTrih1zCkkv9T+BbIl
         gAhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ftHIzCN6ci9mDrXsYsavaaw/LKGuIWSotlvjFxWmC+k=;
        b=OZwhyNYSCtTtcP1DSCRCVY5f+Ht1v7N1Vij/MZGACn0rk8gFJT/hgQzhap9wk/BaP6
         lc1UGW64BtfUfmdw7YeYYGzWxxaDC6XNkCfp+b5fLT+mXn24r/fsSZHnWuantixDck1X
         4aXvP8GDSSjOfV6+FHdU45i5g6m4cBJFL0UItMGQl2no4j2qXD2nQSplk30mHtkd1nk+
         ygu5cGUHw0Oy0pbL6iZqmM/KFJENAHg/HYkTqcTJ0DVzUi4qaQm4OvEKpgEOSp/dWwj5
         YT/Tgh0R/lYhMFw5hY2Im+0davw/M1cknA+4tWyoPqwIXR4jAVfm9fkXhEgTqTllGIFy
         dGIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqoxSUsdbZI7TCCQr7XP7quIl6RnRQgBzl+44nJ7XXw1w92u03
	z/wNIiaMkIhQ5guPqjtEnvo=
X-Google-Smtp-Source: APXvYqz+kURRD9i2irolZZ+Edrsg7PZrlZQjYuq78daHu61Krxwhz8mvlM8oWZ8X17TzLihraH3tRQ==
X-Received: by 2002:a62:7c96:: with SMTP id x144mr4428497pfc.7.1581697400638;
        Fri, 14 Feb 2020 08:23:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b601:: with SMTP id b1ls1647248pls.3.gmail; Fri, 14
 Feb 2020 08:23:20 -0800 (PST)
X-Received: by 2002:a17:90a:5285:: with SMTP id w5mr4615802pjh.77.1581697400185;
        Fri, 14 Feb 2020 08:23:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697400; cv=none;
        d=google.com; s=arc-20160816;
        b=r0l5ZbeVNIi+RV6mf0/3XGkiRVHYDXbUZD/I/tGJgyk1xcTcH5RieHG7wRFrvja5zV
         wvSlPXb8aKeCH/vfnwRisAE2FTaIVUWA2MhLtI9rSmzH/jJwyvik8t9uPiuJEOgoq/4D
         mvucYbTD/2Wjll9O/v2R9bNcxfUs/h6iUcvmTdRWZrjcPNQ1ZtqV8+8UBvCfSu7b1IE5
         MoJt+0j5Z55rUyIsMI/rCKdzpVqMNSqts6fzGqLiS/iCchyzJgMGsFAwa77v8HbVTJIX
         3P8zt8TVrk07QcmziZ4gzfzoaueegxU4RiuubNcrjCQ64N2IbNR7+xYhRtndIUdAthAS
         xFTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/ADEd+oC5Do2K1psRjHgKMXoPQhfB9OWxgJ0Zao4hKE=;
        b=bivG8QFePBDBXDdI0rmItYdiSBf5C6PaLQzVz2HvIrFyqXYufucGGTFYBNUG2hu5Vy
         xldrJ8OwJ+WYVbWqCxdBr5US+1jtqFPRSY53YUOgSuNjyfR62NP28xjrn6+E/hRzwOEV
         YPTLIiLt4QNnVNYeuauZyvjBTZMjxv+K6Kq1IOlV2h28IuFuHafVJznmXlukSPyOcfe/
         YWPz4xAR2Ck/6vNz12gqqzNf0pGY3mr8t8InlbOGLFvQ6rfXvByQSUB6y43o7Mjd0xMB
         eq9NyRo1oHmsl5TbX+0g8alKxlytxkkNkEzQ+q/446q2H9JRc3Yy15otKOHSBIUzvKHN
         5lKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mMTek149;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k1si269018pgj.0.2020.02.14.08.23.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:23:20 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 376D02477A;
	Fri, 14 Feb 2020 16:23:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 093/141] tty: synclink_gt: Adjust indentation in several functions
Date: Fri, 14 Feb 2020 11:20:33 -0500
Message-Id: <20200214162122.19794-93-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162122.19794-1-sashal@kernel.org>
References: <20200214162122.19794-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mMTek149;       spf=pass
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
index e645ee1cfd989..7446ce29f6770 100644
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
@@ -2576,8 +2576,8 @@ static void change_params(struct slgt_info *info)
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
@@ -3208,7 +3208,7 @@ static int tiocmset(struct tty_struct *tty,
 		info->signals &= ~SerialSignal_DTR;
 
 	spin_lock_irqsave(&info->lock,flags);
- 	set_signals(info);
+	set_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 	return 0;
 }
@@ -3219,7 +3219,7 @@ static int carrier_raised(struct tty_port *port)
 	struct slgt_info *info = container_of(port, struct slgt_info, port);
 
 	spin_lock_irqsave(&info->lock,flags);
- 	get_signals(info);
+	get_signals(info);
 	spin_unlock_irqrestore(&info->lock,flags);
 	return (info->signals & SerialSignal_DCD) ? 1 : 0;
 }
@@ -3234,7 +3234,7 @@ static void dtr_rts(struct tty_port *port, int on)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162122.19794-93-sashal%40kernel.org.
