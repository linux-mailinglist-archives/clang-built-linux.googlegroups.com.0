Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCHHXLXQKGQEMVDQVKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0A81177C0
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 21:50:17 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id t15sf12663031ilh.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 12:50:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575924616; cv=pass;
        d=google.com; s=arc-20160816;
        b=AZFaiHuScAifCWtLkWYoPfy4MBNyP6balkovJ/ubQkl1q6kdel4++COB6s7T/2xyqE
         xnf+7v10eSoHAF3/XCbwaHsHS2TM1YQ1YeOk92uGiV+Xy+Xgi6wFso3W69Iv0HxW7neG
         /TSJrOjvT64+nKCBMqtEf/lwsQMlXxDENI2oYtZ8MHu0lQtRqpAJfwl2aVklEh7Opcky
         QvZdh1qBwv14f7Csl5+PLdbZ8lIb8QGaRI8jGsPqghEz5CGN66YqKtf4/bUwDn4I2/Be
         MeU5TjgzOA7k29fva5pjB/jodJYM7svu3dIgAQIPtOX6Mz44HV6unpRN3LmP4jb+AiSC
         hWrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=wN6LipwG7B1PuCZOPSnjra8KBV7sn2lv3RpOxOoT/Fo=;
        b=UgEUFOyBOyJ7z8KMmH5SLiJ2SoFCKpNY9r8GURky+kKZSoZUSo2BJNqTJpCbL64nuX
         R4ywN/HnIjB4Okvy8DIeaMLAnMBel3V/de99waMexzM1fAqBH4N5Y8UdIP1VRp62sFlo
         Fndgg6DqpBBjG22a+HjuLdRTGiMCL86RsX1AxycOlmXOuzeEp2LCaFlISdd9xrQEzs84
         Lp8c9f5T26RdytLcUnTryfIcqHncvaBSev4XkGk37opVu6cEgjEo3tjlisigFbgelpZM
         hjdyxhfDJ7LQZWBabqrYpdOSOGbtg6aQdoAERevc8owH5p9Ja3bVl9aspuWW9chWXyFT
         tJaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KewqzZ67;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wN6LipwG7B1PuCZOPSnjra8KBV7sn2lv3RpOxOoT/Fo=;
        b=FE3pbkleZzS4n9c73A0TcrU6qMLIP1OkgNHn8i+6udGPcbN3fOd7GnWKfuj+pA/51Z
         PaXszcgF2wfWr6TQJ50lIA1AKwrcVBQRUnWjDt5iU2PagjwvygGssYTRQnJRKJHpZUzu
         7m2zZasr8+kXWJoKgt/8WAwO4xhrMrheMYAFyu4icF1QAIgGUm7PjfOtzW+fNtlzuhyL
         gP6NO/lZZ36liYzTSE9WGgn1c6aaKzMlOiwUk0osjFj6SQ9iP0nILqUAeWXJJsgK3Tcy
         nhO27ln6hAXRrm1q1Ppe+AL/Xesz0HYntQVxg/qcVuf9fd9HEE/dmI0JmDd9qP4xtjL+
         A+3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wN6LipwG7B1PuCZOPSnjra8KBV7sn2lv3RpOxOoT/Fo=;
        b=ctW3N8c1s4XV2bJWztGcfaV/FseWeyV/cPtvikXnmG92QyiOzJKp5ypqdqZSSVGqeb
         7EOFhwGn68CCvHVPzOF/DlO1bK6jjpdXLWil39jo9Bh57mU7ikbTuK81flwOsOFQ0jaO
         iTXK8LAncOtVdnjxxgrb6ctcPfGK8ZEn3IccWYvD1xNog85cS1bm3PBFD1eJ9I75kn9L
         29OylNAVfLe8vXt7bKclW5kBZtXY/06SG6cOycciAkFedn8bT7ckZRLcttedPM3nmncs
         MbGLD+3LCgivhewkZ8Gix5o01HPqHQndm6QPe8IYSGe/VvthhFi0wr7tP4qIn11EBgaI
         sCHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wN6LipwG7B1PuCZOPSnjra8KBV7sn2lv3RpOxOoT/Fo=;
        b=f/Mt0ciDDIBIIEIoebqRp1fKuv5fgEPD8iof4kja7y6xFO66djvvBckhFfBcyNzbIz
         f7FiPwgFl6Zp0/MWj0MVZ+wj0f33UJ1TZUshnZk/1a8XAs4MHLsD8InoOVIgZQHZYDM2
         Vvl//7k6btUWBztIANWYZoMWSr1zVDpcJqom0tMWnpG30qfXVGNOXq4AJHCyxMXcpBFQ
         HKKlslXUP1QS1f+8MmuG/kYBpNaPn7UPGaZ5sK9fqad1pPihUmi+2zBjPWdKlyOQYkay
         YbT0GrlCstVYseke1p28wcljxHbq33tADAE0sP/nR4vq+yg3kYwk2l7WB5EOzhtn5P2+
         CIdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWPCwHZ7Wm7pjLKDI2bFoVxOL82aVPlXJiaDc4CCKxq5MSHb5rZ
	YBtnsK5h3nsh+xA5WubJFbc=
X-Google-Smtp-Source: APXvYqz6ai1UlEtt5GQTd4okaWG1KI7QL1jOD6cDUNeKo1GA0MqmplM9t1P5ICrp/AxFAf+ZCzkSzQ==
X-Received: by 2002:a05:6638:c9:: with SMTP id w9mr28354998jao.30.1575924616609;
        Mon, 09 Dec 2019 12:50:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3c19:: with SMTP id j25ls2504942ila.12.gmail; Mon, 09
 Dec 2019 12:50:16 -0800 (PST)
X-Received: by 2002:a92:4095:: with SMTP id d21mr29046618ill.158.1575924616299;
        Mon, 09 Dec 2019 12:50:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575924616; cv=none;
        d=google.com; s=arc-20160816;
        b=KSOG2sDThJlF1IGJ24QAp85oLdQJD3BfLs8f7JKEWHBEfL2DNoLjcauPY1PXGVoVt9
         rV+S+P28mziNvzEFH2ojhdysmvNzRILzno/nqvInOhotfQ0C+pzTwWFBCCk9wF77YR8U
         sZKL10C6UOypyQIBNASTmtMdGwb83iRQmKDtVsrS7R8Fw7zNGdG6bEjljH17QlHDZflG
         bXz8N49vIA3CLlyVS92dE98qXtI3mUyECttQDmqsWOpQTlTKcc2MBxVV07rGl6aCimWC
         DrbcxcFXvAeaNmQAu6tm7rFUG7MQ7uwARxnJhcailIVUBM3QedyodCp+uXkFgg6XziVa
         f3Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=a0z9b/fkZig/G7onSfzc2Xau8/wqkpIlIH1o9ziXfO0=;
        b=BVeCFeiN0lKgJnqJUpUC/RgnX8ie6k/4mM8mVi+13NGqSKZ0Cl4jxALwf2242jQzlB
         bIqBMNvTmg1v2cnIc9ERt0YiuMxiWdxr9o7YN2ZAqkdWOA+g3k7f4Rce0fRpPOa1l1Zl
         RZO0xJXB4FwmD8uujAM44Yx37r5nOozWM4tL3KZBCX39gc9zaEkbBLfVtrRAfvyFpHE8
         82HJb9f+KdO3grF1gz06V9RECsAW4FWOxuA7+Y/0Kg4WkGKjChXSxGNjqQSTV7rIQf3/
         dXN27KzmOQZBNJIOtVcniOhWiPFHG16osDzr6HNAUyUob96IPjxpUJ8t3ixo0EwsOFVN
         2GtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KewqzZ67;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id k9si69282ili.4.2019.12.09.12.50.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 12:50:16 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id i4so13507099otr.3
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 12:50:16 -0800 (PST)
X-Received: by 2002:a05:6830:20cf:: with SMTP id z15mr23195602otq.277.1575924615824;
        Mon, 09 Dec 2019 12:50:15 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id f3sm389396oto.57.2019.12.09.12.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 12:50:15 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kyungmin Park <kyungmin.park@samsung.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Weinberger <richard@nod.at>,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] mtd: onenand_base: Adjust indentation in onenand_read_ops_nolock
Date: Mon,  9 Dec 2019 13:50:10 -0700
Message-Id: <20191209205010.4115-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KewqzZ67;       spf=pass
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
 drivers/mtd/nand/onenand/onenand_base.c | 64 ++++++++++++-------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/mtd/nand/onenand/onenand_base.c b/drivers/mtd/nand/onenand/onenand_base.c
index 77bd32a683e1..c84ac749d70e 100644
--- a/drivers/mtd/nand/onenand/onenand_base.c
+++ b/drivers/mtd/nand/onenand/onenand_base.c
@@ -1266,26 +1266,26 @@ static int onenand_read_ops_nolock(struct mtd_info *mtd, loff_t from,
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
@@ -1302,23 +1302,23 @@ static int onenand_read_ops_nolock(struct mtd_info *mtd, loff_t from,
 		}
 
  		/* See if we are done */
- 		read += thislen;
- 		if (read == len)
- 			break;
- 		/* Set up for next read from bufferRAM */
- 		if (unlikely(boundary))
- 			this->write_word(ONENAND_DDP_CHIP1, this->base + ONENAND_REG_START_ADDRESS2);
- 		ONENAND_SET_NEXT_BUFFERRAM(this);
- 		buf += thislen;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209205010.4115-1-natechancellor%40gmail.com.
