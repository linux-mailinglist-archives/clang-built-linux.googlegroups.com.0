Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZEAXPXQKGQEW5TPDMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC751178C0
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 22:45:09 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id ec1sf5472160qvb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 13:45:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575927908; cv=pass;
        d=google.com; s=arc-20160816;
        b=1JAeDif5/59sC2jvNzCVbKTcN6NmxhYkCbkrtvj8DQmxLLoe1lXl1TlzVrhWtKfcMF
         2ioN022+bCcS6qvH5cLsIQNi+A/ZwySdGigL/m4QhH4JARCqt2Uf77HQlwzIqAcgUIkk
         8oQucL+Dd4YqGs1XmjHsonbktr4AklddaXC6xNcwY05s6ZoY2PkJ8mpjGqQNh3rq+W6q
         gTnSKmxp16VAiLZ3ih9sZhhPdsgwZTdz0BMIzX0lroZXlVGYR6a9zQHVGPXyC9MIlROk
         At/Tt8D9cYkVTQ3SlhhURh4/9ZNQN9pRomvBIvcoc3yRuORMzBNjmlak5UGRdxMd0U1x
         APuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=kQ1HDa4+lOU0ew0CkZWK9cpEK+zQ2HhlT84X3mEgyJo=;
        b=P0iJLji2nhfMxHvWURTi+ZR2qqIJjd6ig2BD67r5lKSwZtmLNhHxjiJL77dSF1j2fn
         9IRdxIiPahJByKPNRN12Lm+SUjfAENoLZxY0b6WNiUU/hl4As8ep4L4lwsqbuXKN8cmv
         bSXmOVK4l/Cq1+OKxthV4sv01nZF9FqpuSVvxaEY1DeQci4KsveTByglGajWZCVijpeW
         AobPTdsD/lDyavxmTR4A+yEjKqJQyXGs/wMzFTcSd7Io5JGb7d10unEIL6ScRtCXU+t1
         PX+Gt3vsFgTnL91pHG5FbMrPdo0WnY1xMWkmbcG5vILGLN87sIA6vYkl9KP2G9APu7ZV
         rDFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OkPhOsRf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kQ1HDa4+lOU0ew0CkZWK9cpEK+zQ2HhlT84X3mEgyJo=;
        b=lh+3CaxmYub1+XeC2WBUzSBWEI78GWxIe52rlBMAVz7q+kIHg6xMx2SaxSQuijwDVO
         gJVEPwtZiU8BKRDOcVIZcqjsCs369Xffr3bMC+eptUBslKOQoppDp4e2fRoryrl+LPFQ
         RKyRuwYmWA0oxQxUQHD14G/JJvZRdimSsZknJHs84GwxPfqEAwct+KK6L2RvsMZVi/Zw
         DMYnkAfLlyxypMVix9r2sILL93MiwQRcsA+Nbd/S5KCxbdVL1SYunoctFLg3Y+DFXqt1
         fJrQFnOk56QB/im2c2dFmXnxWfWB1YUo64LSu7uFarYNtR0xQ1nrRW/tSDL/zIzcAhkU
         P00w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kQ1HDa4+lOU0ew0CkZWK9cpEK+zQ2HhlT84X3mEgyJo=;
        b=rccvgaWgopJ7kpiveeW9ikHHL0MDXMn5q27AR3+D8RAygyry2O64MWJMJwnULlYZ+B
         aEziG04z7rdOzZ+ATKlfvsDJ1sZ4QYbXPvOqUThyU9PBmfhjg2SxJEkUXjfOqPklFAD6
         h728jFk68GwdY7//wQzkaG1z3KNLH8329LJo8o6p3BJmkGk3SVTPNfcExBmnOSxNct7K
         Nl9OU4M1VFhoNr17Fbb5Vg6ESA9l0w00OZ9Mi25PSzpW81+yAk1drCpk6SrBlycGjA6t
         GtBrXXH1nQu6IKQ0iFGGt/nD0JkVPnIBsvPlm9MAjpC10U4PodCtXWgllRF5aBG2n7kM
         SWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kQ1HDa4+lOU0ew0CkZWK9cpEK+zQ2HhlT84X3mEgyJo=;
        b=by21Ro3HTXNXe/8EbVAR+IbM+Xv/epa9d8NJL4qz2Mw21os4U3+K9TWaL6XgRVh3OV
         CBma02FOS2m7KuRcoj2fxh5TRaTRSnPNFUKFYCS19+hREZk45Nf9wluV5uuflER3Zpuo
         NPHObfTCj9OCCQERkj8MApfj8jB309ipAD0TtuuRRjWnk8zLHuHrh5yd4TTM1S6hb4LJ
         EW5WjxcHfYL41o6GwoNeBqSMPPc/fDEZppVN3HagNLNJPJV3Lc4D08oEUHbXdeIE7Fir
         PxLPnkIoDno3Fo/OXiPtMfVBv4aV0n6/AXDW1o2o2E9sVghsbh75meeWCG2KVrfOMmhX
         R/KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWXPoCjmYWtx9rEX2g3yGK2jS6IsJCSrjDxcwVxvuxxHG0HTHuy
	D2AIdLPDhKmS2YAPejUWErE=
X-Google-Smtp-Source: APXvYqyVQlzq7giC7M4suxlfI0x9WeOKECG4BxaWwUhGxE7WZV+7PImsFXG6X/I/1hySpfgopY8Z8w==
X-Received: by 2002:ad4:44ee:: with SMTP id p14mr25225034qvt.114.1575927908390;
        Mon, 09 Dec 2019 13:45:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ad29:: with SMTP id u38ls2430300qvc.6.gmail; Mon, 09 Dec
 2019 13:45:08 -0800 (PST)
X-Received: by 2002:a0c:ecc6:: with SMTP id o6mr25777190qvq.220.1575927908032;
        Mon, 09 Dec 2019 13:45:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575927908; cv=none;
        d=google.com; s=arc-20160816;
        b=U6GH3UPpQ5TPxkYzwhxVkiJShsy8yz9IKc3ykXHQI0Wxwxd3k/7qW+pH1cWMoI2LcF
         zVO8gFF8ezPtS53c0YvMzrRK/l173oxmnIC4gKVZJJ0bsQ5pCs+NWuGZX3oSq2pa3ZBn
         8xj8nR9GWhUoQKfHK8oqXg+MnGxeewpuVrtOHjeWFoIJy2DN1tAoYa5IGl/ImP3GDgyl
         emoz/B186Xupgt8imN4DU7K88Y5V222czXTuyK0Og5zbji7RxgtN9QQP0XMMCsn7Gtcz
         9bSOwX5ZfvA7IZRmyyr1tMezKdxMVNdV2SNQiK8FVudQwVzYEuv9OGsYbxJ8hVUpQ4r8
         WPvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ER5XOmpfTbyA77VZ0mW/V+9R8ytRWk1qGHF5rdwU7So=;
        b=qgzRTzIddd6izhDn0cgQOv8ymVdJo7wVpUE07b3/Vb62J30wucG0wYg5c8lCgB+OYx
         PyiFpN+qsMv7fLqelUzTkGZjWEeXzpiYiKRPBrzkDr7ALvLLtIY5ImK4MTq8ETU795gs
         9jVnBDNQPoeWrYyiV0xqs0Iic+UuJNP9a2C52rNVjKK0C/sEsHE+3rcQpXFqDd57nOZe
         Lxi8wjaJnxy4dHBXsdj1ghmvVq6d+/uIpRM6/3PnSHFS+V6If+EkoCyk+5sCpkT4v4iX
         xjSjtSbGkA9q7X4Zym6yclj+/LjW8f1ezCuHbCqdxd2VykQ9YadGcl7UIe4o6Ggo3ONq
         aIEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OkPhOsRf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id t22si48686qkj.6.2019.12.09.13.45.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 13:45:08 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id k14so13644447otn.4
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 13:45:08 -0800 (PST)
X-Received: by 2002:a9d:366:: with SMTP id 93mr1778892otv.183.1575927907211;
        Mon, 09 Dec 2019 13:45:07 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t80sm533904oih.23.2019.12.09.13.45.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 13:45:06 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kyungmin Park <kyungmin.park@samsung.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Weinberger <richard@nod.at>,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v3] mtd: onenand_base: Adjust indentation in onenand_read_ops_nolock
Date: Mon,  9 Dec 2019 14:44:23 -0700
Message-Id: <20191209214422.53661-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209210328.18866-1-natechancellor@gmail.com>
References: <20191209210328.18866-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OkPhOsRf;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/mtd/nand/onenand/onenand_base.c:1269:3: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
        while (!ret) {
        ^
../drivers/mtd/nand/onenand/onenand_base.c:1266:2: note: previous
statement is here
        if (column + thislen > writesize)
        ^
1 warning generated.

This warning occurs because there is a space before the tab of the while
loop. There are spaces at the beginning of a lot of the lines in this
block, remove them so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

Fixes: a8de85d55700 ("[MTD] OneNAND: Implement read-while-load")
Link: https://github.com/ClangBuiltLinux/linux/issues/794
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Clean up the block before the one that warns, which was added as part
  of the fixes commit (Nick).

v2 -> v3:

* Fix one missed conversion (Nick).

 drivers/mtd/nand/onenand/onenand_base.c | 82 ++++++++++++-------------
 1 file changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/mtd/nand/onenand/onenand_base.c b/drivers/mtd/nand/onenand/onenand_base.c
index 77bd32a683e1..9e81cd982dd3 100644
--- a/drivers/mtd/nand/onenand/onenand_base.c
+++ b/drivers/mtd/nand/onenand/onenand_base.c
@@ -1248,44 +1248,44 @@ static int onenand_read_ops_nolock(struct mtd_info *mtd, loff_t from,
 
 	stats = mtd->ecc_stats;
 
- 	/* Read-while-load method */
+	/* Read-while-load method */
 
- 	/* Do first load to bufferRAM */
- 	if (read < len) {
- 		if (!onenand_check_bufferram(mtd, from)) {
+	/* Do first load to bufferRAM */
+	if (read < len) {
+		if (!onenand_check_bufferram(mtd, from)) {
 			this->command(mtd, ONENAND_CMD_READ, from, writesize);
- 			ret = this->wait(mtd, FL_READING);
- 			onenand_update_bufferram(mtd, from, !ret);
+			ret = this->wait(mtd, FL_READING);
+			onenand_update_bufferram(mtd, from, !ret);
 			if (mtd_is_eccerr(ret))
 				ret = 0;
- 		}
- 	}
+		}
+	}
 
 	thislen = min_t(int, writesize, len - read);
 	column = from & (writesize - 1);
 	if (column + thislen > writesize)
 		thislen = writesize - column;
 
- 	while (!ret) {
- 		/* If there is more to load then start next load */
- 		from += thislen;
- 		if (read + thislen < len) {
+	while (!ret) {
+		/* If there is more to load then start next load */
+		from += thislen;
+		if (read + thislen < len) {
 			this->command(mtd, ONENAND_CMD_READ, from, writesize);
- 			/*
- 			 * Chip boundary handling in DDP
- 			 * Now we issued chip 1 read and pointed chip 1
+			/*
+			 * Chip boundary handling in DDP
+			 * Now we issued chip 1 read and pointed chip 1
 			 * bufferram so we have to point chip 0 bufferram.
- 			 */
- 			if (ONENAND_IS_DDP(this) &&
- 			    unlikely(from == (this->chipsize >> 1))) {
- 				this->write_word(ONENAND_DDP_CHIP0, this->base + ONENAND_REG_START_ADDRESS2);
- 				boundary = 1;
- 			} else
- 				boundary = 0;
- 			ONENAND_SET_PREV_BUFFERRAM(this);
- 		}
- 		/* While load is going, read from last bufferRAM */
- 		this->read_bufferram(mtd, ONENAND_DATARAM, buf, column, thislen);
+			 */
+			if (ONENAND_IS_DDP(this) &&
+			    unlikely(from == (this->chipsize >> 1))) {
+				this->write_word(ONENAND_DDP_CHIP0, this->base + ONENAND_REG_START_ADDRESS2);
+				boundary = 1;
+			} else
+				boundary = 0;
+			ONENAND_SET_PREV_BUFFERRAM(this);
+		}
+		/* While load is going, read from last bufferRAM */
+		this->read_bufferram(mtd, ONENAND_DATARAM, buf, column, thislen);
 
 		/* Read oob area if needed */
 		if (oobbuf) {
@@ -1301,24 +1301,24 @@ static int onenand_read_ops_nolock(struct mtd_info *mtd, loff_t from,
 			oobcolumn = 0;
 		}
 
- 		/* See if we are done */
- 		read += thislen;
- 		if (read == len)
- 			break;
- 		/* Set up for next read from bufferRAM */
- 		if (unlikely(boundary))
- 			this->write_word(ONENAND_DDP_CHIP1, this->base + ONENAND_REG_START_ADDRESS2);
- 		ONENAND_SET_NEXT_BUFFERRAM(this);
- 		buf += thislen;
+		/* See if we are done */
+		read += thislen;
+		if (read == len)
+			break;
+		/* Set up for next read from bufferRAM */
+		if (unlikely(boundary))
+			this->write_word(ONENAND_DDP_CHIP1, this->base + ONENAND_REG_START_ADDRESS2);
+		ONENAND_SET_NEXT_BUFFERRAM(this);
+		buf += thislen;
 		thislen = min_t(int, writesize, len - read);
- 		column = 0;
- 		cond_resched();
- 		/* Now wait for load */
- 		ret = this->wait(mtd, FL_READING);
- 		onenand_update_bufferram(mtd, from, !ret);
+		column = 0;
+		cond_resched();
+		/* Now wait for load */
+		ret = this->wait(mtd, FL_READING);
+		onenand_update_bufferram(mtd, from, !ret);
 		if (mtd_is_eccerr(ret))
 			ret = 0;
- 	}
+	}
 
 	/*
 	 * Return success, if no ECC failures, else -EBADMSG
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209214422.53661-1-natechancellor%40gmail.com.
