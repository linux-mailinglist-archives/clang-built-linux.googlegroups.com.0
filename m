Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBP5G43XQKGQEMEPGH3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id B9565123D6E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 03:47:28 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id d128sf380822iog.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 18:47:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576637247; cv=pass;
        d=google.com; s=arc-20160816;
        b=dGT0/eYxd6cQqe+yGTqwKzIN95UnbnbavJOxM+Tpyoh2L9E2LiMIk96KDJhhBXdALq
         1XzUrqhiJeRNUU3V6oqG/NsMUVOfdWZiOiyHelNW4VDf6MgyQ07pkfmXBe9qHGmMHg9z
         5BDcuzu0UzO7pep9sV6Qt+VvVeZv2iuEuc2q4U7So0/W4xuTLpBWcDRrFba3C4haqvZo
         1gmo+gskdiQ09rzieIjoVh4DEbaiVwqUMq/PbaGOA/R4yPvUQSnHa5I+92DRnTsiF6fC
         C3e5HAfqdg+tUULEmNcp0BFfkaA7ywMmJ143vFjmNH54dUOf+NeOge5hGfRy9WYcCmHa
         Seuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=TDajvvl7mYcH+aiq8vTx4FeJLc6p0gWPXCmqGgDhcDA=;
        b=fm6Taeh5N1qQXa2iJjlLEONAs3eZ7J3KZ1mpPcqmH32KA9PWH7M/Yy0Xf3o0wdH2+M
         Ev9ymIIECvF3UPPJL8qCW/63ZYx951JDAyHAOP3YQuDVuEsZtcUsi6bxGbO/d2yjVald
         nS+aTHYkBwxhhua5pR5YT0ZCHKZarBInbV9IpgJqisDdC90VOKCZgftNpW5916C3DAmI
         XMXfC/fDd32h9+Uxtn8vs9IGzBiSAjZQ7ZDF5RVF6cJt5pvve3lPSNpj0vyfpEDgpUld
         PBsf8kz2vCFpiz08zQDo9yo2IbQwsj1h/ngi60s+1HhMAHsEY4mn531VfV8aWpXCJuW+
         TONg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SYiYtFoM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TDajvvl7mYcH+aiq8vTx4FeJLc6p0gWPXCmqGgDhcDA=;
        b=jppcYhYHi2xkLp3OK+9ncmVIG2CVoot7iaCchVGWTwV+211PkoDdk3+iRSrbBskrbF
         IvSkHMwyxXsTuwI1VR7eKaIYJByKhrbc9QmSHb5Pz4O0AKwsu63wQ/tK/wg8CxTNj8EW
         QtsKjLGPdmXR06Of0mfUsgIxC9k89YNLHL/KdwHRKjmVyzaiwwQSUAVKwpvPxt+92F7E
         Rpcn/L4Lfl6d8HQYVyitI8/RyL4/xPcPVVquVJn2f7r1QFlP2KopGdryXYQLpn8R3qXL
         E0bls8q6L5VofKXPYk78NyoAkMknQ/dLPPzJUQYFI4hOx0oW64ahIAXx2deGolgbLa2H
         fhcA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TDajvvl7mYcH+aiq8vTx4FeJLc6p0gWPXCmqGgDhcDA=;
        b=AgOGJliKVTzd0oC8xeZMKyinA1OT6paZOLApJTzVZBw4bNWerWn1tNNyMphkUM3Hg0
         +uQhcN62Fbo5RLsHINOy2zO2uRQOuLdoReM7qp5tEyrfpJIT8XP/yOVhCr2SUYhHCVzi
         AMyi7dxZDmJZM/Jd7besyZGrHG8FuxvAJSy9pOo9zoDgC0mbeATo7hI+DLOY7/dYBs9A
         qF81MziB1LW0KtaCIaVaBpw/mql69v2WS0E9wzv3dBzQQuclEo526v+QFDecXffyfX5r
         ctc7ilkEPR4jyLd+lK3eY0VFKiH7WGkRqJSh8Sl4Zm03YToHfi5pCPSzhMBn6/3NBQz3
         mq2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TDajvvl7mYcH+aiq8vTx4FeJLc6p0gWPXCmqGgDhcDA=;
        b=ryi5X7j153+xKrvWB1ghpLdB5GhcS75UI8XNHzdTV+Wm5XwHqUG1kAjOOL74ndhVsl
         SV8MMh+RJrFVvx0hCcKYlbIB4TauEARr40tEY4t5bGT0XNhKixDmeLPjXkbZiMHiW2dg
         lc1J4FOEYEPzV3TW/veCVThe3iL/mpxayaJFKpOlDMWhxRNfOctAPoHLBE+6qjP9naM5
         G5dukBMTn+QB+coWHlzq8IJYPrZ9K1Y2eWrlBeDBG9SlTphTE0OWxOEmA2hvg3FojnEz
         CnErwigp2xcGbaDqwE1DHnAwE8/ypiPFfLtejoH17AUQsG4RLvcVRggXUvpMH36FefG4
         hOnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVHMUnz+qvmcUyHgtrCCeRQMWw9UL6qIDB6yC0iuUpZcWaY6+UR
	YPAjBBj8z3RuEMyiq5WF3w4=
X-Google-Smtp-Source: APXvYqzkWnXT/J+nBZT4eaDNx3W9+rWW60O3/Lu23UT7WUzwyCUkYZKzq1SIXpGGAfAKg32h7qiYlQ==
X-Received: by 2002:a92:350d:: with SMTP id c13mr1034528ila.205.1576637247419;
        Tue, 17 Dec 2019 18:47:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:90f:: with SMTP id t15ls70414ioi.15.gmail; Tue, 17 Dec
 2019 18:47:27 -0800 (PST)
X-Received: by 2002:a05:6602:150:: with SMTP id v16mr867182iot.289.1576637247019;
        Tue, 17 Dec 2019 18:47:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576637247; cv=none;
        d=google.com; s=arc-20160816;
        b=lvC8TttayG2CeUmBx4sy+71cNI8Evg0kxVS0sk/OVgwPHP3Z6Wo27yeL0U6/qUjFqk
         pm0uTCGsgNw6Dy8zDSh/VfXS85cVo/dbC9YT3R/GqZpUDSxodtOompFLAEkuio3hx0j5
         5iCutrpRvLbpLLmFlS7EZrnZivQ99sqxFFx32LYy2Fbhpn6TcROLvTFGnrTWTRJ7HcwY
         4kUoPe/4o1dyk+0UXAgPpaW2R0hn+hliMFJfSOc88eh6auImbalMXjnA09tL5siXFtpp
         ehucjwIisNl0NQRsSEBM/eqj6HksUmlHJZqFGIc6dHbUjfLJMvNHlPRnxkqwSEIKrF2a
         cNfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=JUUYBsrF3PEDxG8ARCfxoW9cEQCOft8fjzh1KUsCN4M=;
        b=yMDC8BM2icYouMtlV5yhbnbu6djfreo43Enz2T6uHFjPGIWLMD4mFK9OO0awGwnTXS
         HiaCzUTZaeKtrOSi05GscxeIRm9tT3x0r4BtkhW4oY8YTqeBQgW3SKfImi8TjNhvXuL7
         XTyCqCscvriZrzEYirIEhTjre3Wk3xk1RTOqjmzDiFdcS7tv96cGOCV8bsfrXaJxkJhh
         XIJyNaAqwUQ76DrMyI7Z9Qz5Bm3fcI3JRWdBfZqjXgDDWe7YEp2Mg8Cj3KNoILPSWfSu
         9CHVaXgfs0efxFQZf5B4RjS4A87ltqvK4OBIxnJSTjBxHLT53B+nuYYPG3jpTLs0l5XF
         6P9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SYiYtFoM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m12si53166ilb.2.2019.12.17.18.47.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 18:47:27 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id c22so454532otj.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 18:47:27 -0800 (PST)
X-Received: by 2002:a9d:7:: with SMTP id 7mr33016ota.26.1576637246547;
        Tue, 17 Dec 2019 18:47:26 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w201sm320997oif.29.2019.12.17.18.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 18:47:26 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jslaby@suse.com>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] tty: synclinkmp: Adjust indentation in several functions
Date: Tue, 17 Dec 2019 19:47:20 -0700
Message-Id: <20191218024720.3528-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SYiYtFoM;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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
---
 drivers/tty/synclinkmp.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/tty/synclinkmp.c b/drivers/tty/synclinkmp.c
index 33181fa6eb18..517a0d172239 100644
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
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218024720.3528-1-natechancellor%40gmail.com.
