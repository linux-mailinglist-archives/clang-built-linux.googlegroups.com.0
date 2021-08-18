Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTOG6KEAMGQEXC5476I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0063EFAB6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:07 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id x47-20020a056830246fb0290451891192f0sf496010otr.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266766; cv=pass;
        d=google.com; s=arc-20160816;
        b=GtBKAX1a0lvsiCNCptjdTILl7QLz8CnA6QrVcjZv3l1CpCuttCYM8EZE0nGzFJMNgW
         2uaQHcBBuOLjr8SnAAtfixvCn0ZZOoMm9DQPT/a2hxzgfYrmIfEeJz7wEhbp5Vq7sS/f
         zWMt5G/o4uyWWJqCl0JhM/ZZS18Q8yI2+vIyR9BzxhHKjZYTYrh7xykgnD8EhCCUDjFb
         dLmSlfWBvfGh5bZWg5Q7TX8oFWtxG6GS4OTfalmSRsUNFoTgbgVDRnZL8Yk95qrm8obK
         bVitpjGzc4A8NL8upWleATuAQ/FUT9xaT4QbqBwO6YWGhOGwegH8X3xLLVdky49hDfJL
         7OAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sZ/+xyLCzbvVrWvhIyTP0dFbM/PzHpR/iMtwaLfeUWs=;
        b=U4emTad/hhEhOhvhQHYiEtc5ascz4kljJtLPbqfZjVX3b2n+Na1iLcyb4RcEYBbHP1
         GnNDTbpHcd+/GkcQesn6kVnOEqUHfX/e8/ptIQhN3P1QI0QrAhtlBCHT8ryxUoCdF2NI
         ig2V/t24O6RCIW+yOPrAaOsb2dQQsDYeTwOFfEbo66T9EpKceZO6NWSnmP0briLAYxoo
         iF6JjHthQ3VaiMmBd9s46ztViYcIJOQyeIP/2Hp9HYRcAgQeFPH2IwLm1ddZZki7MltC
         An1wIJEqj1Im6EXSNenT166XCUouatPTQ2U23NmWrTfi5pNK8IkeTn6tls76z3EmdIfP
         lEGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GKSzM0Il;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sZ/+xyLCzbvVrWvhIyTP0dFbM/PzHpR/iMtwaLfeUWs=;
        b=YX4d0138fKMuiLzRsk2WEXAX5TDeezWfEW5SJG9H+DtkIuyw9zrMMOEKc0PFDZ68W2
         BzPG/9nE3EVGiKanvQ1Iahr09vYxvOwca9KVdTP2hQBL0RE0P6lxoIFkTzDpbBs4sT8l
         ItLNkGeQcCMXh6BJ3g3b4jBIrVJfSkbINNzZ3mSEF9rTGIp4MQDqwu/fKrOvRQU1FSqd
         bhJCGODJa6Th/yYB8LDNx58H31QhAFRWsPCd8VsBojsORtOH0lCEY6C7wh9WHUFFjufJ
         j93dqj+dIIPGJ4X7uWXEQLUUN6bN5IEm7GHTl/l1qZOW5yR5aiKMj/M6F/XwcuONJoGp
         JbFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sZ/+xyLCzbvVrWvhIyTP0dFbM/PzHpR/iMtwaLfeUWs=;
        b=S3nOUXpOrWAXPM225nh7w0+zMxNCmfUZ27msI9hA8jyX277UVc4EZGh91AEoJTMm8V
         HadI74hK4NUGoWRv0mL65xw88WYRf+fbhB+DTsVRLenSJCxpFp0Z+TaZ4eSA2V5whxvs
         p7f2+FdmOTuI37YEwPTjk06i77ApcK9VqE8uUrEC8WczxTu3aEebBeirxyFmJDg0dD7z
         mMFhh+OthjC0E7xcnA+hL2ANO/tx0oYfZqdAydv2S37sAhUOFtrcaMIhCV0TWc+HOXTu
         tLdpH6GCzKJXlDIkOszb5j6sv0mGIAe5y0hr9OZNzq2xy10lZkGgodOK2nLWHeoLyZMa
         7pyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XXKRZqHYhtB+2mFKmHzVLQojcpM4pD8KPhSEd2FQaYEKR0PXh
	mdYV5RRHA1CNVYOu05VJLp4=
X-Google-Smtp-Source: ABdhPJzpiILYYxaQUOK1uFaiuCNgmMMPv8rPhU0k9wl3NPk5ngh5yMQz4j0BEeL9aJI1ert9aZQOCA==
X-Received: by 2002:a9d:400a:: with SMTP id m10mr5704640ote.8.1629266766052;
        Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:201d:: with SMTP id q29ls342650oiw.7.gmail; Tue, 17
 Aug 2021 23:06:05 -0700 (PDT)
X-Received: by 2002:a05:6808:b21:: with SMTP id t1mr5781057oij.165.1629266765722;
        Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266765; cv=none;
        d=google.com; s=arc-20160816;
        b=SzQUThJY/GJY3H/GzQUf1DB+j7xpypEPh15BSZps1EMKDGa8dK3nLlMmUJIl7WNYq1
         c6Xmkhsf4RBauA+Rjp1TgfEC25/I+rjceE4GQPPKLC38D4aIy7rvPcaG5p2+10sG/w+y
         0uTTk0IEJR8TI1ErMwfylVCgL5fHnAckwekz1uvrZbclSZXGtI5mfA9WTNtWzS2UG26i
         dU30K5Y3hWmIykLfYQ8WRt4I4TciH/O/0+xyuse9/x3lVhBkx6EUASvBUeFTMfyLECC0
         cc8RK+C6Vh++pIommT27hbSu+47coMtBk3jjtGusDFEk6nnDpR/GKWgzqPUfSVtlvYxH
         gLhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=foQDo7WpLo2j2V/z+FSCXpsN+DWjHtp9JYSgEaJMB90=;
        b=ZV8VxFTO8NuIY1y7nhuU/FPmyxcj6gdK+6Kbk/kA7k7XYkfhfhGuOQF7GAFX2SZdKI
         GGLrJ0GQZgkRvKz5PotEYJtH01mmeRRwY0HSYPOyc6xQmxpzaqOg7Mi7RCoSsCOwhSfH
         +WQhskwyIUYSbDFcIsHxN455fLDyvHP0H3QCkEdHpmwxiuXs7veVNHqW6Xbl3lcVDEq+
         qRHJFWuEL+8aYzBz/8cc0qmt6uIN8dWlVJarzyJ0Kh26xcBOT7LTcxTmTKQbxp8iai4u
         cJUBJgxQAHfyhABRUG5+JGpfLUJRJPhpZJ30x7AFvK7NzZy2XBA0gW7qvXj7sa2Fma1p
         xXeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GKSzM0Il;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id d16si318220otu.4.2021.08.17.23.06.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id n18so1138950pgm.12
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
X-Received: by 2002:a63:5c8:: with SMTP id 191mr7451505pgf.293.1629266765131;
        Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d18sm5548805pgk.24.2021.08.17.23.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Wolfgang Grandegger <wg@grandegger.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-can@vger.kernel.org,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 59/63] can: flexcan: Use struct_group() to zero struct flexcan_regs regions
Date: Tue, 17 Aug 2021 23:05:29 -0700
Message-Id: <20210818060533.3569517-60-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5011; h=from:subject; bh=8Ts9umslvw0EuXRaphSdWSysW0LFYybLoYrceMcY2J8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMrtWREAe+sayvsZiZZ8f8J5sqHhCBlNW7evqOS y4cIMiCJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKwAKCRCJcvTf3G3AJl2pD/ 95zMtNfq1UN3l8y/gyN1appJq7NzWCP9Ku5k1Ba1Voq8jwjYkgywPDqqLvBA6qhUCGs+OtkOFRJm9r 2WBM2tr0yTR7/Huu8tg3Y9QEDaf1r85ita3zR+Lo8bHAVhDGXrm0QLkXcE5kvRTliHDwuyH5NQdbeI y8MSusibpB/OZKb1O2tTsxmhqrhbyjP6XdzghSiU7T4QDxkGxZwJgsAc7vPRqbHk7VQ4C8W2dPyt0e NE2ZrJYx0O61gXhgePrJkWBiMMPSajK74LMAZnW+05D56fMzPxqiMjtL0p/si6OhxhglP8w/YyyfB4 hnLWCd7r/bixExnxdKaJIIssbZtUDNaR6qxxa++crImbOrfTcB2xJkZxZo5FCuWwXjSeFm5seZ8DSF VqrYUY1JAcu3VBvPK178Bzrnv1RgFdvpt4I+zejm4UhAQh4kmjNR1TG43rdFl+h9uzkvW74E7N8ulI x2uluahMtzsRiCPNN78mfMrihT6ffb7zDUoByobpe2156Mnrn0LmOGmBizoXBiY8TaXTRKSEavjrKQ EjTgqkUCcUBJwrofQz5SF6k1zmaygNghMfj+owZdXn8OFWlfbX7KbDZmtfReV8lng9nDI4GeN25VRY 8eq9GEvLK3a8NRy4xCnvyxCK9Lloiounz6j68lZ9p5uyRuvWXtQFVzzhEMKw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GKSzM0Il;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add struct_group() to mark both regions of struct flexcan_regs that get
initialized to zero. Avoid the future warnings:

In function 'fortify_memset_chk',
    inlined from 'memset_io' at ./include/asm-generic/io.h:1169:2,
    inlined from 'flexcan_ram_init' at drivers/net/can/flexcan.c:1403:2:
./include/linux/fortify-string.h:199:4: warning: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
  199 |    __write_overflow_field(p_size_field, size);
      |    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In function 'fortify_memset_chk',
    inlined from 'memset_io' at ./include/asm-generic/io.h:1169:2,
    inlined from 'flexcan_ram_init' at drivers/net/can/flexcan.c:1408:3:
./include/linux/fortify-string.h:199:4: warning: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
  199 |    __write_overflow_field(p_size_field, size);
      |    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Cc: Wolfgang Grandegger <wg@grandegger.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-can@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/can/flexcan.c | 68 +++++++++++++++++++--------------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/net/can/flexcan.c b/drivers/net/can/flexcan.c
index 7734229aa078..12b60ad95b02 100644
--- a/drivers/net/can/flexcan.c
+++ b/drivers/net/can/flexcan.c
@@ -290,31 +290,33 @@ struct flexcan_regs {
 	u32 dbg1;		/* 0x58 */
 	u32 dbg2;		/* 0x5c */
 	u32 _reserved3[8];	/* 0x60 */
-	u8 mb[2][512];		/* 0x80 - Not affected by Soft Reset */
-	/* FIFO-mode:
-	 *			MB
-	 * 0x080...0x08f	0	RX message buffer
-	 * 0x090...0x0df	1-5	reserved
-	 * 0x0e0...0x0ff	6-7	8 entry ID table
-	 *				(mx25, mx28, mx35, mx53)
-	 * 0x0e0...0x2df	6-7..37	8..128 entry ID table
-	 *				size conf'ed via ctrl2::RFFN
-	 *				(mx6, vf610)
-	 */
-	u32 _reserved4[256];	/* 0x480 */
-	u32 rximr[64];		/* 0x880 - Not affected by Soft Reset */
-	u32 _reserved5[24];	/* 0x980 */
-	u32 gfwr_mx6;		/* 0x9e0 - MX6 */
-	u32 _reserved6[39];	/* 0x9e4 */
-	u32 _rxfir[6];		/* 0xa80 */
-	u32 _reserved8[2];	/* 0xa98 */
-	u32 _rxmgmask;		/* 0xaa0 */
-	u32 _rxfgmask;		/* 0xaa4 */
-	u32 _rx14mask;		/* 0xaa8 */
-	u32 _rx15mask;		/* 0xaac */
-	u32 tx_smb[4];		/* 0xab0 */
-	u32 rx_smb0[4];		/* 0xac0 */
-	u32 rx_smb1[4];		/* 0xad0 */
+	struct_group(init,
+		u8 mb[2][512];		/* 0x80 - Not affected by Soft Reset */
+		/* FIFO-mode:
+		 *			MB
+		 * 0x080...0x08f	0	RX message buffer
+		 * 0x090...0x0df	1-5	reserved
+		 * 0x0e0...0x0ff	6-7	8 entry ID table
+		 *				(mx25, mx28, mx35, mx53)
+		 * 0x0e0...0x2df	6-7..37	8..128 entry ID table
+		 *				size conf'ed via ctrl2::RFFN
+		 *				(mx6, vf610)
+		 */
+		u32 _reserved4[256];	/* 0x480 */
+		u32 rximr[64];		/* 0x880 - Not affected by Soft Reset */
+		u32 _reserved5[24];	/* 0x980 */
+		u32 gfwr_mx6;		/* 0x9e0 - MX6 */
+		u32 _reserved6[39];	/* 0x9e4 */
+		u32 _rxfir[6];		/* 0xa80 */
+		u32 _reserved8[2];	/* 0xa98 */
+		u32 _rxmgmask;		/* 0xaa0 */
+		u32 _rxfgmask;		/* 0xaa4 */
+		u32 _rx14mask;		/* 0xaa8 */
+		u32 _rx15mask;		/* 0xaac */
+		u32 tx_smb[4];		/* 0xab0 */
+		u32 rx_smb0[4];		/* 0xac0 */
+		u32 rx_smb1[4];		/* 0xad0 */
+	);
 	u32 mecr;		/* 0xae0 */
 	u32 erriar;		/* 0xae4 */
 	u32 erridpr;		/* 0xae8 */
@@ -328,9 +330,11 @@ struct flexcan_regs {
 	u32 fdcbt;		/* 0xc04 - Not affected by Soft Reset */
 	u32 fdcrc;		/* 0xc08 */
 	u32 _reserved9[199];	/* 0xc0c */
-	u32 tx_smb_fd[18];	/* 0xf28 */
-	u32 rx_smb0_fd[18];	/* 0xf70 */
-	u32 rx_smb1_fd[18];	/* 0xfb8 */
+	struct_group(init_fd,
+		u32 tx_smb_fd[18];	/* 0xf28 */
+		u32 rx_smb0_fd[18];	/* 0xf70 */
+		u32 rx_smb1_fd[18];	/* 0xfb8 */
+	);
 };
 
 static_assert(sizeof(struct flexcan_regs) ==  0x4 * 18 + 0xfb8);
@@ -1400,14 +1404,10 @@ static void flexcan_ram_init(struct net_device *dev)
 	reg_ctrl2 |= FLEXCAN_CTRL2_WRMFRZ;
 	priv->write(reg_ctrl2, &regs->ctrl2);
 
-	memset_io(&regs->mb[0][0], 0,
-		  offsetof(struct flexcan_regs, rx_smb1[3]) -
-		  offsetof(struct flexcan_regs, mb[0][0]) + 0x4);
+	memset_io(&regs->init, 0, sizeof(regs->init));
 
 	if (priv->can.ctrlmode & CAN_CTRLMODE_FD)
-		memset_io(&regs->tx_smb_fd[0], 0,
-			  offsetof(struct flexcan_regs, rx_smb1_fd[17]) -
-			  offsetof(struct flexcan_regs, tx_smb_fd[0]) + 0x4);
+		memset_io(&regs->init_fd, 0, sizeof(regs->init_fd));
 
 	reg_ctrl2 &= ~FLEXCAN_CTRL2_WRMFRZ;
 	priv->write(reg_ctrl2, &regs->ctrl2);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-60-keescook%40chromium.org.
