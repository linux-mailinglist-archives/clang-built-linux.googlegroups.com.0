Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBUERCEQMGQEPR7CK3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2533F3E60
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:36 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id k11-20020a6568cb0000b029023d00ca7bbcsf8309356pgt.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618695; cv=pass;
        d=google.com; s=arc-20160816;
        b=D8DvFsgdtxoKoLxY5iayhDAhLvHenZWgwHzbUSXiSKxH7ZuvgmCZWhPNmeysWNoMXR
         t9Xy0qQ1QGe25fgp4exqbSktKQTWSUZ2oaj0qCcQZqVK9x8V7ffzmpkiyNgGh3TIpaYX
         YbtgjzaoLEk9CLMTE22wZdpJ4xyLA5Otisr7rA6mcm9/1VM73yQ4t8n/BtDq7MCCZ9kN
         p3QaS7uZEbQ3zM8a7NaDQviIrTMjn4PUfuQ3oniGCpyqeKjQ1f7xwdPOkiCcKSiC7bQQ
         ucJX4laAFwKM3dPNR+oEIPQApm37aKt83i7yXD1GQ+eI9oPwV44OXVD8BKgTYj5L3ZPB
         ZMqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QNlpOOAuBTpraI0xL1uBOzezoxjJowg/Gg7eZPznoSg=;
        b=B9hJU8RlO1f8po2WOUCcM8a2xmTJJ7J03WhP/9rJ6yABDEUp6xRb5oiemoNNw1g/N6
         ipH5SNnz8maxByZanXTlq+xlrLpgy9wjV2iCdnDRybzZv5LmgCCn6PByAcArdtoma/VT
         blWd/pxxs/w0WlSH4z2yqsc7gauzldiAKxOZlYb42uQ9k9FO1fE+07sjzy83hn3IObRQ
         gHeBldipptNK0ac/ameU169qntypiHM/XO1+Gb6qxkTVMZ5fWGgGxBH94UeKlL+r8ii0
         oODLvTZ1Vly90tV1Juh/yETGD8nqfK+Log7Asg4iRazwRcI/5Dt4+j8EpOrqjj8aMvBs
         yGlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=i1xyMIsz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QNlpOOAuBTpraI0xL1uBOzezoxjJowg/Gg7eZPznoSg=;
        b=ROF2yBahl3yOdYQzaSU9HHnB+dXrJ2x2pxZPyxUTPJUVxFn6ESKeYBQo+NnDqp/Slz
         0jwuIEoSs/ghObV25jBCX7p6gudRq/DJmH9ZoQdF5Y4b9wHmnFtCFrBQp2JOWoZVTmrE
         fKw8n/w5SDRtgxVwsDNla+9/m1O0tQuqcUp8GJuj0rdRdMqCyuj9amJfWVeVYi7f2xmS
         fJY9JKu6gPlbGo048hE4fedP2QJ0OjZzwTQXDTzOZMolh1jJwGMeeXjJEBtky46j2Y16
         ji2w48K4g5PcaZ7XZholOBIZ1Xo0H1vHlJUwVC0WGgkOyfMHDd4V+RX6Yg5J+R98uji/
         rMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QNlpOOAuBTpraI0xL1uBOzezoxjJowg/Gg7eZPznoSg=;
        b=XyTsk8kxYbKhfXrmsthqZTUOYTbL49AhJAW3S39KntqfZ259bzRrkZJEqTyg6ETR7Z
         PiX/UmM9BZpOW65TnOi2/CGfwCVh+T6g0yb9Fj10lql0i1bx/xj8oaLhIirN8s+Eq63Z
         DNR93S5j4dI0QquvFxN8lz+WlOtjxBatMFqTx8XLRmODOLF97Ddq8JoKCItj3ZG7ri8e
         uUikngxoFMteLVfUboW8TS6UkOb0HkIXwT2gX7k8w9nobRMkom/uoZtRsyXSowjGZ/28
         ADTVYSZiUJrDK7WHpKz+3O90uWI81J9/1sA904IjWmEZjL0GHv7nRt6cA7BMgrP+jkfl
         bGSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DNVCJ6uGvbh1zBtughiL+WZStYyCYNXVyciojQIZOQwqXNg1m
	vyjYShbRBw9mvtcx4SK5umQ=
X-Google-Smtp-Source: ABdhPJzOks+GGQ5wKzTty85zhF6dLmUukrEfAIpt6FiD1Ly4lcshBfuJvLr+/z0sGVZgB65dSfAmuw==
X-Received: by 2002:a17:902:ed82:b029:ef:48c8:128e with SMTP id e2-20020a170902ed82b02900ef48c8128emr23667811plj.72.1629618694985;
        Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls6725705plb.10.gmail; Sun,
 22 Aug 2021 00:51:34 -0700 (PDT)
X-Received: by 2002:a17:90a:df0f:: with SMTP id gp15mr6823686pjb.174.1629618694525;
        Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618694; cv=none;
        d=google.com; s=arc-20160816;
        b=lDqf3BovhIv4veHmtjPBb5+1hK1LNJxNs7my4vo4QLOWOMbqX5VUVe7XkAvoLJMvH/
         gcC42CHTP+CNQDbU1WZPltj8fjBNyxQAx2zCHzwYoU4ZmW51BYNpXVwYjtVkhuhuW3NI
         ZG3xAl8GxmgW/BNRGkV7wcgYI12UIFhfBfx7X+76vf9yD9zsHSzg11hvSKIMUNhnc4Kh
         wTNyY+58qWdB/U0qXnOL1ZZprx5RBTvg3Eb9s9IYT1qns+Fetf+nfA1anHJmLwc3rZ+U
         9xjvn3H6OZd7mVoMwRUkwGuGqxa/yLCNZaM2k3S2dvuEbjLLiDK/cjlbcQw74iNo+JQO
         sC1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=afK62obEnzmGfYDuKBrYtTnXazqqlkEC1ozPah846UE=;
        b=o3SUi45PzhLbn8usWMYty6Xi0zMyCCz8tEYooj7zbbNpclTMC9s0d6mYlHLbA0OP0W
         lk7G1Vlz9yclgmWfq+R8WUWtYPWLf74QNvvctT1Woda26dkRY/E/PCoNpH1D4LeawR1F
         1NWVDHHRpNLeZyBMhg83hFycy+9twn5QuiaTy7jlO0kbpxJax2naplbjekV0KQMaQzgi
         sAuW67XKSgx2tMAUkVwjYgHh3kI2sA4mAjaxH34wzEMBBQ91sfmzXCmsMvtpyEfRpDgm
         /qRecsxBE2D8jPfZHbEAoS7Ul7k/4du9q6C1475rFin0yx4kXNRk/xVNkElyeZfo2iBF
         2zdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=i1xyMIsz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id e11si936911pgm.0.2021.08.22.00.51.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id hv22-20020a17090ae416b0290178c579e424so10066802pjb.3
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
X-Received: by 2002:a17:90a:f0d1:: with SMTP id fa17mr10237309pjb.33.1629618694325;
        Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i6sm12184446pfa.44.2021.08.22.00.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 11/25] can: flexcan: Use struct_group() to zero struct flexcan_regs regions
Date: Sun, 22 Aug 2021 00:51:08 -0700
Message-Id: <20210822075122.864511-12-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4830; h=from:subject; bh=EYs5XTkDgfX0dhdwidOdX6FaFsG9jCZLc3TTzjkErFE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH2bU8gotlTB34YXFJjHIXg8ae98vYx3WpQHASw gnthe4WJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9gAKCRCJcvTf3G3AJgKqD/ 9Z4CfeQm+LlR9u2hdSRoxj0L/MvAvQco3KQnzJCSUqFfGSv8JXgqqrSAqqFi0GQy9HPotUyYNNuBCT 0faohp2vDaFgIpzrq584FH3bri2F3JHPAn6ArIQjeW+Va7NAkCpv54OzJ25AHXUt4gyBUDMWa+rjdK A17OTiRtnJAOb1rR7NpkbTsYlpgOB6eJIdEPgdRI154Qf+WhPj9FHP8w3yVBhkaRSMrErjDt6zAHM0 NpzmCJGZpIx5GxdHzUwljAJlS8voqeDUFrMXx2LAPCCfjSLfTCU2TJn5ATfagAAXRFHGdxfjOY69y6 10zGTtkt62/WKoV9X+uy4U8mKv/VS/snTNtU8OFEzk0oAjncL77p9y+bJDxk+z8YH1jdcyF5l8y8H5 s+aVfwd4c/d6/Rw8bJlFdLhJ8rhNU6gLTiWMt4BFAXufSfOvzLJB4IRI+n5hbEj5gX+Aqu9zP4Djrj 8+T6F6VgD3d2vuqyst82VvN9z95rClAZXQLHXPkBryN/cJj9w+rk0Z2VE99dFpmkfFKHq/Cwr8nIie BiqZ0LnnYj6IHTIvSU2pYNSQMsdxg9plh72HFQJyIMIF8e6eyRQGwnKo5HzvoQdpiuNEHpIcfy5xu4 JRrxjWp0GWNdjaU0q/j4j1I2xX20ilwf13nFMCMf/Bwgvz6D4oXTLmoTW5QQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=i1xyMIsz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
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

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/can/flexcan.c | 68 +++++++++++++++++++--------------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/net/can/flexcan.c b/drivers/net/can/flexcan.c
index 57f3635ad8d7..b1a261622b76 100644
--- a/drivers/net/can/flexcan.c
+++ b/drivers/net/can/flexcan.c
@@ -284,31 +284,33 @@ struct flexcan_regs {
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
@@ -322,9 +324,11 @@ struct flexcan_regs {
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
@@ -1379,14 +1383,10 @@ static void flexcan_ram_init(struct net_device *dev)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-12-keescook%40chromium.org.
