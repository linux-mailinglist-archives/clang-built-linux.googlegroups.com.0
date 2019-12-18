Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFND43XQKGQEYAAJNSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id E08A5123D30
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 03:40:22 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id c8sf247047pgl.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 18:40:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576636821; cv=pass;
        d=google.com; s=arc-20160816;
        b=O47gi4VRiPRhD4UjPtSiust2lxuaHkvpbZUhBfVDXtdDvYQfNm9S+pTG+5+5/7rwbo
         00Yp+FCn4+lEC7oHOECaWs+zy3bBOLcf0S+v78cqm6EvyyypJ4qMI1xv3GRHTMn4v99o
         z1vNdzS6SJK3sQ1FWyeEq4KJD8ulYSf9u7p97egJUuJGhhVVgU5sDR0tQ67FOgc9yBof
         6s8v/rciAnUmeeSQgHfu/t6s5GvBC+w9DV9RqeJpF27rcpeFcmDgLxV+4FeqPj40Wig5
         4NjZb4rxGtwGAK3CmYEAYRJp8zH0gexDUbG3NE+T4hUDm1CcO+OMxycksLFD51CnKKdt
         49fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=QpO6Vx39F5HI699v7q1aPaepYeY89TxfzRr1RtVlyiI=;
        b=c5RFgMScJdxX+Z5ojEIIStxxpfnTwzmHaBLRXZn/T5PGubwmRclPYcaBuht+Oiqs5v
         BGMEi4nuJoJpXED2z6o65yn1lSNvtJekjzo9YN5coQg+lyzp87IQmdfOog2NGpljU3xm
         i6DHOqn85DGHBMdmAtwiblgtlxmn4PGUjhenwbDMeu909aJZN1N8I7rpARtp+WyqPOIU
         sd1KMauXhYSTka2YMqYeaYoMaLE1wwZQZsq7gILlxqQ5osb3yKv0dyJKU1fb+zyBeQy3
         1LHdz0dKKjXT0oK89LwvYGFfZWsN/GOniZCtxkQ1zgZaRineFNr5gSJ+WPYbcEjoOaxq
         wmDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ua9B3XHd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QpO6Vx39F5HI699v7q1aPaepYeY89TxfzRr1RtVlyiI=;
        b=d4bGxqcVAT8/JADbluL/lpwEQtB2WthWb+lrwvGnp6yMs3o//sUu6+Lf/fr2C23KjK
         AqHEvHYEzW+qNZSQkgdnGlkCRMy5ukhpNHGYnM3rcZUwZB60YKf+WnfbT2MLg/XHCj6I
         Sl3Pf4DBrLcCNyuEwXaJPWTrDFUiE2CeIOc4A1MHmaTA7PY5epj6bxSWe135JqiWa21T
         a2OOBH1Q1Pi33Z2V8H/j0eDH8r4r5Uuh10Oq3xPzegLbSaHzH7PAfe866luV/6fCoZqz
         ekwi0ehDeWZXHZ0+DKrx1vc25Ev/Q7fRzdBdlN3i1d+EUFeXZ+dv8GLcp3YpniEkJnlr
         IbAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QpO6Vx39F5HI699v7q1aPaepYeY89TxfzRr1RtVlyiI=;
        b=PWUC8xfKs+HYdRGN4T/SiTlmxKb/USi02zzTGXWc5V4ykTaoKiysX1ZnUxlYLzXUuQ
         wX23PM7krdOpuqlA+csScei4olgXIR0TEpRLQPZ4Uoi3j7q6aei4IaKizfE3X47tssTU
         tLGw3zgsfvJonDA69Blc6PkHjYRsucMEKZK4EAG5Yqx9/OfaIpTZToUg6Bva7h8Tc5ak
         OoBdRo9bA7dhRYJY9PxMCA95Zkzrs4fgy484s3J+Umq+As98CtYlhXoOhaeyL0IBzjds
         9TNp0iRuYTv1ULqioqFPOpjx13oBfu9qE2vh1PUN4gHc5svTizCz0vLuo54SaQJv5DP0
         NiRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QpO6Vx39F5HI699v7q1aPaepYeY89TxfzRr1RtVlyiI=;
        b=Dk3R9zutVLSM+ErgNIaBoaXqdhFcIRI5Ho29rPFTgnYWPf4HCY08EXn3ID05Z3e9YD
         2aPaiw7DK8+Pf6xLVuGlX3S073qYCFiaxavk1N4w8RvIDEvXc95wTsjo1t7Bq1H/747P
         Hr7oUtYW4gm2Xx0E4HcJd7pHzwj6dYWjYYqH/fSe20P2x3JKzwnWy4As7CseE669qJku
         zkvreqadQJhIBXaKFTS9A86qM/kHr1UTUzRDHhtKIe/N1d0hUwRg3saiy9pXFnOpvmFu
         Uc69edCaeFXHn8nZrrjEfOQ/SB8UrvfWELZCYF/PML895eoXo0TlpZitq2HFPjAkHfwN
         oIKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVozl/qZF1Qo+umfC3sTg54bpntlj+EiF8MTI3mvS9VSN1eNcpg
	kRnTRRqq7imr3s6dAxLBktM=
X-Google-Smtp-Source: APXvYqx7x0leTKahRhyr+ESZL005fNKc3v/0BsSg6SKlbUI0vkNOWuW9Z1H7WLCsnqnnQrRQ5/8dOw==
X-Received: by 2002:a62:f94d:: with SMTP id g13mr321658pfm.60.1576636821389;
        Tue, 17 Dec 2019 18:40:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d988:: with SMTP id d8ls95035pjv.5.gmail; Tue, 17
 Dec 2019 18:40:21 -0800 (PST)
X-Received: by 2002:a17:90a:2004:: with SMTP id n4mr380235pjc.20.1576636821042;
        Tue, 17 Dec 2019 18:40:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576636821; cv=none;
        d=google.com; s=arc-20160816;
        b=MgYfe54j/QKDUWSBWTxEN5ng93xkP9U0Zg3yZUKPlBgphqbXPYTG+tEyZdyEAnYehC
         +WujtIEv9LqqYCT3cF3ie3xsddZyEV99i+ZjUo14G8nlNKpokD4DYggRW01FlebiIqt7
         CFh8GLC+O/gx77O9eEB0zuho/CIlYXLZE+ugQBEaBMdmQjKKHhvT/gg1AfFH9eq5LqVJ
         GBW0t1q0AlzvNtwPw17tWAmbBNGvOidID0pSwKqRW8DA/XhMEuXX6b0EvgLuKjg63ABf
         F877N9v3HUwT51KH1F/RsvGx/JYrjcLMJzy5EoGx4miDFehW2Hf0X2Mne16zlVDW2XH5
         borg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=sqEP7gqkrCGOJNW3vRMCvtaiD1RqfKXzjUhoLGSDR0Q=;
        b=QUrZHrgz01iF8dTUdAaU/iLuzLZOeZymO7ObgI/0rS7pkarbeI52kdt1bZ7guJ1N57
         9rBzu2/FFyzqf6iS0jlxzIWccbiRNOefHjr+DAipSbqedDnl7T/4BdmdOrf17DblU7mw
         j5Ts9Dkia3CXuj/uwF3w8S0p2q4S3XfZHdWVZASBvADNu3jxmSCrs9Hh9YclA9eTOaut
         +t1aa31skWjLO/U6XCPWfjfr9EFa7tHZC5pB9vaVvMb8uB3mq8jDzGF9ukWG63lF1BFG
         0jDFAKifOdXqwLY/fbegmIYevSaW2VfWscHceqSEYu7VU5MYDuooHaTfbXtZ9rOZBymQ
         J57A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ua9B3XHd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id cu4si146620pjb.1.2019.12.17.18.40.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 18:40:21 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id 6so322167oix.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 18:40:21 -0800 (PST)
X-Received: by 2002:aca:4712:: with SMTP id u18mr126536oia.93.1576636818831;
        Tue, 17 Dec 2019 18:40:18 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n22sm282267otj.36.2019.12.17.18.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 18:40:18 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jslaby@suse.com>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] tty: synclink_gt: Adjust indentation in several functions
Date: Tue, 17 Dec 2019 19:39:13 -0700
Message-Id: <20191218023912.13827-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ua9B3XHd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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
---

NOTE: There are several more instances of mixing spaces with tabs in
this file but I didn't want to do every instance because that would be a
lot of churn. I took the conservative approach of fixing the warnings
and the few instances I saw around them.

 drivers/tty/synclink_gt.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/tty/synclink_gt.c b/drivers/tty/synclink_gt.c
index 5d59e2369c8a..57ca38df7a8b 100644
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
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218023912.13827-1-natechancellor%40gmail.com.
