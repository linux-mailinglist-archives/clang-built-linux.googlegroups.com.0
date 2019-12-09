Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWPNXLXQKGQE5T62KVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6321177EF
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 22:04:26 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id 108sf4114358uad.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 13:04:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575925466; cv=pass;
        d=google.com; s=arc-20160816;
        b=dp2ysjxI6Tb8FIDTuKAg01RcW8pzgmBBG87Wa8zin738fx7Kkh/nfGmC3pZLdIjFLt
         s2enLaLH7Cy7nntomUJ6GARQgVPxHpPIeC+UTERft5fDZAR4sq0TF8n1JFsyPZ/56pEt
         CJqODKN0dF7lr9TuRlTvB03/PJRb75rcAfXwxlMSArgqSPcbOJFw415e8Dt4gW3GTahR
         Ivliy+2pTk7xmYopbjTA4aL0530uDS9QigvP39IQmIBNBBsAie0vMzbmuzcDRQvFXbRf
         IyaoFZGH5E3ZkZQ/nNvekrRlqWwUApmyWEuZDFTIEonldqw9BAcgHO0SSg2tjdgGchGV
         lXqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=P8p2sHZPvs2+xD7KZvKMHlKQ9CjfyVb3A9uHQT3te+8=;
        b=mvZQ9FRQzIQAjlaIre5e6dO84qox8cJ+49uIBCzbxpO06d5IfSB+x02ZmIT7M5A+ko
         Ph0miEyPswDwGmswXat7QSAoJRJfY4Pl+jYwufOLFh2w35UCHSduf5PYVMIm2308MFwl
         iVD8bo4r7FFoPYonFHgk4+X7tREt9DQjjQEQl50Dj9fwnTNcmYWMJpTN99+j+4zyiIXA
         AWwT7dHXOf8ZrYIaKkQbUHjv1FtekpVM3CVFzPe4XWLnUODjACGSYX5rcDUKCc4Xtk/Q
         oRShEd+Z7/Jn305hR0RHvr3f9UKDNSL1pRFMh09zeXeSybGE3hGuIkUTp5nxCfvMoQ27
         HdEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X46QNUSA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P8p2sHZPvs2+xD7KZvKMHlKQ9CjfyVb3A9uHQT3te+8=;
        b=pdZdOybbOYYCuOcqsAGfJXHw9s/rN6aLlNu8qnoBzPbZon+VS6XhUOZiOfh65LCKmv
         OktT/lz/sOHxo+RrVFw3MT5FGFOAwpftmYy6h49EVM3IpaU78YDTQwOnAVNeUKZ28wwn
         EyDUa32zqxQ9Ul71tOeUZcO1JT0cJ1oyUgVUxk8T1Jmy9aENifQEe6sa1IfAkc3dQ6Al
         cwQHiuHR+KlEqBrmjVOH/18rhCuDAvgTjHC2P+ETX79SHccsDB4oh4cfdWGE/gndUubA
         04MNiX0umVtXM4diTkYIGr06p7pRR7eWYL7qzpW7yUJX7/edf4sUaT1GzS/WJN/67FsP
         PLbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P8p2sHZPvs2+xD7KZvKMHlKQ9CjfyVb3A9uHQT3te+8=;
        b=A7XCdjMaA/ebYyr7TB+re5DSvWhg6GRKhScsZss+89ScK3nr6tEWC5780/s5+4roDP
         0v/YeMsRs2PvXUznl4iyt089zcr6dKVi7CLDZdxKk87iksuXHq0iyjI/iX3SmNUL/SRo
         G/1IZt2gRAmOY802z1UoNoFUxRCsENf08Sv/6PCPsAUD96PWxvOayx0x+sR+l1Z+B35E
         xaHEa0OYcipxg/WUwF8wJy+rhKc+jCpQUJ2Hd42Q96F8Myev/SLfN1YFdD9SnRVhe/0P
         09YBxj/KPCVEIaBa17jNFUwg7rIVA0HOP5xpBNmhN3EiamdW5fQ59fDtUqwVsPSErTSt
         6PVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P8p2sHZPvs2+xD7KZvKMHlKQ9CjfyVb3A9uHQT3te+8=;
        b=tv/O9rZFjy4+JNegsRjH/IAfYr0Sxb31w06ksXnjSFZGwe6Sgzfy6rDPyjrrZ798CT
         juwkgTziFnQRHAWTqEC5rXdXu2ArUxE0MwQGrX3wAi49JyezkbkbBz+30Nb5nzf80DH4
         QcpqFaCCrC+1VyJpVxZHeXllwAGI3JHthiyQlPZIiuo0GjKHUD9JaHKH/bZuCHI0z3Dy
         TZHt1ZAo0SdUUNw46/BNg/cI5CEcv9F4ghExJuEYJsc1GR8ZK6cKeVcSVwaaf0SjMKj/
         KKlsdDPPTuRTBuWB7qpfrBWLtQ3ilxMODmlhdnYWlOzTF1B+HyHmNV7fHmDmubgmE6hq
         hTaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV3DySpKDNYjEnhjEm+MggXHMZJbv1RpqsP3PcrT5p3YsfwI2Rl
	NbJclhF4JCPzDCjjWIWTOyc=
X-Google-Smtp-Source: APXvYqy6AWYrM8tvevNbBaojjdEYzHNGx4knFeW+jMdWVwnJQdYq/ZVDyxFfSIxhr6ZZiYvsA4aaJA==
X-Received: by 2002:a67:2c50:: with SMTP id s77mr17782609vss.222.1575925465937;
        Mon, 09 Dec 2019 13:04:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:42c1:: with SMTP id p184ls915158vsa.10.gmail; Mon, 09
 Dec 2019 13:04:25 -0800 (PST)
X-Received: by 2002:a67:f50c:: with SMTP id u12mr17385803vsn.24.1575925465535;
        Mon, 09 Dec 2019 13:04:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575925465; cv=none;
        d=google.com; s=arc-20160816;
        b=JJKAFUiyDwQELV4f6NfiiqZQZBw3oeQ5RD73Ed5IdJHB1qIH5Ztg1TYYlV9RftkWDx
         zPwNTu5sM4HlADj2MUumrz7ZnNuWvLD9O+cZPTSetoyB+LiyCILZThQEltu/kmsqTC0G
         JZpNMZdSTrgD67IOmwrRYVLG3JrF0/Es/mBZTj7jDQibdazZLKv8ePMl0kHYeDW9Y/cl
         oTlE7ZUhzR1A7q5qMp+DT/pSvvSiO3JIDxVW8wMsr0yvoSEJvOzV2oZuhWPrubNjvtIV
         bUX1d1TYEODvMRWpLkFK6aX4HIAJ0/fNo4nusQ68a4j3t2PwLxuSbYMEjUdBvqjFkPOR
         YCPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pGb2jQwRPhzwodYrTfgDTOY1jH/OdtdmucALKLbjZgQ=;
        b=UYHoXROUukBHpyE3+hjVgO5sgqkgPbkZlkvEZl1bnHIIvkSNd33234JPDC6zQubQR9
         Zl4Z4TCYSkW2x36N9eW1E1DycgC2hFbOduf7iHAXBotDyYRcszo+EyjSRVNtrhXSEMBu
         Fd9H3+WInPH4oSBKw5udcVoDsfL2Bflg6YccOulWyI2eWlEIuDfmcSQg97mEw2eE+tz5
         AaHb5iQ0OxNyXzHYNr+DZYDJJYc6g9EQerMJJpP9dltpNs7dYpVxR2tJL/oA8YhXraZN
         i3FWHAdIu5Q29jjyURGMON8VBbAzVWEVLfmfk6NXAX38Kzig06XSmGoL0azRsmqPrKUo
         TfuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X46QNUSA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id c124si65519vkb.2.2019.12.09.13.04.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 13:04:25 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id k14so13541959otn.4
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 13:04:25 -0800 (PST)
X-Received: by 2002:a9d:798e:: with SMTP id h14mr22513469otm.257.1575925464850;
        Mon, 09 Dec 2019 13:04:24 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b206sm464959oif.30.2019.12.09.13.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 13:04:24 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kyungmin Park <kyungmin.park@samsung.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Weinberger <richard@nod.at>,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] mtd: onenand_base: Adjust indentation in onenand_read_ops_nolock
Date: Mon,  9 Dec 2019 14:03:29 -0700
Message-Id: <20191209210328.18866-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209205010.4115-1-natechancellor@gmail.com>
References: <20191209205010.4115-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=X46QNUSA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

 drivers/mtd/nand/onenand/onenand_base.c | 80 ++++++++++++-------------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/mtd/nand/onenand/onenand_base.c b/drivers/mtd/nand/onenand/onenand_base.c
index 77bd32a683e1..13c69eb021a6 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209210328.18866-1-natechancellor%40gmail.com.
