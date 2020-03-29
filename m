Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBEUMQT2AKGQEEBUVLRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C90F919704B
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 22:33:22 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id n15sf9383757edq.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 13:33:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585514002; cv=pass;
        d=google.com; s=arc-20160816;
        b=bpZw5+yxsF+lUjcXiGXo03YfdHPrLXjR/ii6c2bne0VOTGxRh5WcnBCpk5qCQItdBB
         4Tw10TY24OSZf3UftB7nic0WzDHAmFaLICgbUX0e4aG9PFePHTEEhCYaj03YvFOQ6mAi
         nmvc6mtFEniAh3YtLq1mjzjk3e1xjripqkbxY7fkf3sg2QUSykVVI2FbLqRqQVOyDBnB
         gJ+ItZshqfB4x1B8EVMn64fFAFF5Brj5Pc0AhynsAr5WNjjPClIsiuHdpBElUCxFxGen
         3iCllAfsSdjJU9WyOXPOFsjCGbHlVo2l4mlswPkWNTjTEr580mEkgePQXA2tGi6+lqDN
         AByg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=dZM6B1uouZiRK0N4GOeQdugiWwDcM/qCBJ8B8LtGxZQ=;
        b=yGm1ByePtTIUnWxe9HtuKn8iysRH1JShbJkQGDHjd+IubEYr39QEfQEIrBK1dF3iZF
         CDxHUXvL20h90VePpgiKTBabTVeY+Zzo5sQ73+Yff9uDYJZhLt03hyAZ2MmI5Nmdc/Ls
         veetivi1IfCH+wc5tPpIKO8t3dkIPc5azU/E2iJQeL68/kOqFpVHxJd4XWRuDeGvtFwj
         ifnBN21xeW4sZf0UDmvFoOc7odxNU7aPZyNi+4xlvxLQDwPCl/UKGfWsjqWWbb0c/q/X
         YbLoWfSM0HDWI2PuBtHVuxm8/Ah9oS/GyGCk+/ZNjHyYAPY5lLhL/yltuKN8oJXGdVFG
         Qofg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=yHWrWNpJ;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dZM6B1uouZiRK0N4GOeQdugiWwDcM/qCBJ8B8LtGxZQ=;
        b=JvrXxCtd7fd4FjO1HUunQHHiMXsS7pFMAA9EE7j6WmQ1NUdNbusTHoHnXuOSd4Kvwx
         zFRDT+G4DxCQoo840ft6XJ5/L148Eh7C7lih/4FfFoHYCONQfS3tOwR7FO4VynWsKPTi
         R2X2a0np3IYYj3xIB3udmKDJfrsPJ537LKRSouRZAJTK2yhcjWPEmQdUJJn6eF+T0KMe
         p2/tfjtsOGUMoci654k264ycK9vt3vEVcMgK073ozJoCG8KNOyP9IIJzkQeoK6oBJnIH
         fxBUSbebMrodtHeZjDETVzoZs+WWqgUCAtMAkdX1CZaf19P56U/U3Hycaq33PTnEd5fT
         S0Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dZM6B1uouZiRK0N4GOeQdugiWwDcM/qCBJ8B8LtGxZQ=;
        b=cVtwrddjv2GzUj7Q7fB4VYoFhvmp4bp41xOL9hEnLZGfjZthQ4TrbQh6xtAnUeN3ue
         VqKNkFPhwUdX+xB8oHvWSWAkVWadSeDhC1AxJyEbSYegmPzVSFTc2P70iNiJueUBo/xy
         WTR4E01atfhlliyVaS71YQ8R/hUlV2Iz1KyIEKSH4c1YoB7ZJwG+lIPzd5W11Wld+ldR
         UeSkGOIc5VV846/8y71SuS3kDcHmgHlg4utXjWjINbDMJUUlB+KXo8hUoKkfROwKtrG+
         oLpFq2jXrZ6xER4RtruUQjhEmdxGvWWaWdcL5ksNnfGq69U9CTxGEGgJddCpHJdVSghE
         MMUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0X0eWQIJCftYlqFmtFGx48o/GNWyDNtBMJY3GFsfTSUXXfgP+R
	CTS4qop04DqlpE2y6W5C1mU=
X-Google-Smtp-Source: ADFU+vuAZC7HDc/WfRahJ2g22YNwYSBamCwk20OupFTCdmvbNmxqoY9uQHvRVG6M0JYHuAZZfvePnw==
X-Received: by 2002:aa7:da50:: with SMTP id w16mr8990103eds.54.1585514002475;
        Sun, 29 Mar 2020 13:33:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:860b:: with SMTP id o11ls10398417ejx.3.gmail; Sun,
 29 Mar 2020 13:33:21 -0700 (PDT)
X-Received: by 2002:a17:906:6050:: with SMTP id p16mr8473229ejj.179.1585514001898;
        Sun, 29 Mar 2020 13:33:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585514001; cv=none;
        d=google.com; s=arc-20160816;
        b=aWDjuTZUGLGi/W6DSlMzD31aUg8cAK+aUj73AS1wSzHqM8TIQpUTT7NSqsFV4tkY0y
         Fcdj8EtIpeeQOfE5J32ysqGZQT8Y8DjgAXhX/cm/Zi+lkjue955D7blGuBoQgWwr3Cf7
         TpS8pDTOyoHHx3u457uyl262q9pfBxEFYUVsDrP1lmw/QxmP32QpEbFhVxBVnrtHW/xT
         u6zm0M5FOioLdA9xOFSCkD6y5NfQlI+/ko+2C9XxbmLsIrS6bQ3ASQuEzBts2j7Mtl+L
         9ojoqCAXAwp+PpsQb3AFsipe5+7f/ILAmLNu4ak2bnS87f0McRc1CYT9qjKJRSlSP72N
         cw4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=WMqksSgxVOthWzaH63j2MuQI5jeE8U6IXhHfj4YbpXI=;
        b=bkAiaGmdR6HqX5qAD6YxIbxuti4bGV54p/10pnoNdxrNmI781iX0pA+q6eZX/M8nnJ
         aacpH6U8Rdb2VzVr4tQUa+ZORwBEh2FcO1moHN5ePNf4mDYWqj0w2FD0rAcOg8uFWWc7
         tWbCYH5tesvk6Not8dmyCLVrG6RdXhx+zlvlII1HZ9tiHj9ibwFZbuIhFkLU/Z64ZU6y
         TCm+zauFTZWgsBQZ8VU+ylGleYDC/VdhxEKSKWhthyuPYY5VsXtK6c9d30QjUq08+dGN
         WCIqoSr7nYw+l5FOUU1IkcXbDJBUv27/MgMOuUFxCRckfv53k0r9T8WcQH2HnOjAtpZI
         Lnjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=yHWrWNpJ;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id a10si245316edq.5.2020.03.29.13.33.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 13:33:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 31BFD5C0208;
	Sun, 29 Mar 2020 22:33:17 +0200 (CEST)
From: Stefan Agner <stefan@agner.ch>
To: tony@atomide.com
Cc: linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Date: Sun, 29 Mar 2020 22:33:14 +0200
Message-Id: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam: Yes
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=yHWrWNpJ;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

The adrl instruction has been introduced with commit dd31394779aa ("ARM:
omap3: Thumb-2 compatibility for sleep34xx.S"), back when this assembly
file was considerably longer. Today adr seems to have enough reach, even
when inserting about 60 instructions between the use site and the label.
Replace adrl with conventional adr instruction.

This allows to build this file using Clang's integrated assembler (which
does not support the adrl pseudo instruction).

Link: https://github.com/ClangBuiltLinux/linux/issues/430
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/mach-omap2/sleep34xx.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/sleep34xx.S b/arch/arm/mach-omap2/sleep34xx.S
index ac1324c6453b..c4e97d35c310 100644
--- a/arch/arm/mach-omap2/sleep34xx.S
+++ b/arch/arm/mach-omap2/sleep34xx.S
@@ -72,7 +72,7 @@ ENTRY(enable_omap3630_toggle_l2_on_restore)
 	stmfd	sp!, {lr}	@ save registers on stack
 	/* Setup so that we will disable and enable l2 */
 	mov	r1, #0x1
-	adrl	r3, l2dis_3630_offset	@ may be too distant for plain adr
+	adr	r3, l2dis_3630_offset
 	ldr	r2, [r3]		@ value for offset
 	str	r1, [r2, r3]		@ write to l2dis_3630
 	ldmfd	sp!, {pc}	@ restore regs and return
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan%40agner.ch.
