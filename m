Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQVOQLYQKGQE4B7VMRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4297B13E392
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:03:00 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id z62sf11900150otb.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:03:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194179; cv=pass;
        d=google.com; s=arc-20160816;
        b=yRTQTxA32BgsCUIhL699SYaVDEZAzG6RHLlpoaNTRYR0m1AhfQnhG4wnPk6SMWlgjl
         8tUBntd+4otGWh4dlvqxUFEtZoDYELF7TzGpdoAHtR5wf4XRBQnOOsNOVLgK3ycf/aoo
         V9qyXazlY2QmPRZEQpewNWolG7z8f3rJMYXKkRms4fEP7uUAyJdwfcAPF01Rhwdgh01P
         iy1JJ0VGOHaTqDj8yV5ju+h1QpP71mkx0dSX2vgrLWqXIk/MTt+RQqwtU+WXCLRdgy6f
         8cgsGSsbutYIoFzl6aaauZtLohxZgpsTWDGTbvBtbEqnYMLVBg4oB2ZxvwbEYBjuJgID
         Mthg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=x4Wi7DcqOSI8HsS/EKSQxtapXRR9EZVq7JdBdVNdr9M=;
        b=SMXw0LkQWQaqiJZaICoio1rytSXifz78pIpg4fVZs7x903ok0k6aXeqxl8PseVtPAg
         qX3GFvd3mg+mz3YWZ/EeaVW7tXWpM/9sxNTcgdVMsjrAnVU7hdvsUBUsdfgIx0DbyzIx
         Eos/D0Ex5Iyxmj9wytoT7xhXbg3mGDBctpLC4CNS1rw1NvEPq+mZ8dLBiZIilO9VITZ7
         bkGK6huIOL/hV9WeEmKFWmGba7ttPZaryBQja9kNo8rQwKqPnuONtvJvDP0s3bLR22Dg
         98YSOimsYbY+kcsVZu7RqFW0fRmmgn244+cUwJdcMnTJe/XFG5sgIal8Yf23ramR8QXX
         GZyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eQe5+1JO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x4Wi7DcqOSI8HsS/EKSQxtapXRR9EZVq7JdBdVNdr9M=;
        b=fpb8ZRIvDTWQCfMKrKvIjb0sEeYnxOY2YRy9elkKwLKOywROC7vI6GIaEU4icfhlyJ
         bgkWGit22xfqQjOV1zSN56DbVBBCsAAubOCETwaJUCudP2VEEj/oq1ycGHV4iO7gMua6
         tvPLu3579gdals5vvDVJ/UavkN1IomCuA64MzWd8OM/FUN3wxY+AgHoXkA24eoL3Mzn8
         E7lLHjH9jioLjxMKEmdcEvN/8bDkgvHEKYlPTLTSWrVZS49+IcfOzxp5Qt028NcYyk/L
         K72RCi0uVYpAW3uTu5wX9onf6qSCV0DU2rVoDnjefSY0bgG1qrbfs5ljgwsmVdLUBGgq
         5yhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x4Wi7DcqOSI8HsS/EKSQxtapXRR9EZVq7JdBdVNdr9M=;
        b=sW8VT8r4rge2pY5mzA3n7zByCkEm7e+nghNWeToFonUK0mssSJvCJoyRuwa71jyaw/
         2dVxKtm+Q0l61gqUixydDtBZk2CYmz2GUEDkpokVKgvAPwfYVkYREpneTzDnb5BiHmMx
         O/7JGp8fbp7xb1Sjh6rpr3F+w8Jyl6fSOj8/LF6HflL96Izo4QB6fh6gE/BQUVt3ikVy
         DO4i1Xmahl6F7Ig5Evv1XmA1bOJMDLJRo40TtpWjSEw2VAj5x2xPZHcSvA8seCZ9+0Jp
         cxMGAiaAoi32gQj0kQ1g2mpEpupiw4064ktznDa68EBFM2roZF5Hm1rIp1J1vu94mCRr
         SFpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXlhBWnkHBZkkyl0dvkSR797epwDe2GCJxpxsZbWl8m6xWf8deq
	i8reb2nL3YcIUXewu8olr2M=
X-Google-Smtp-Source: APXvYqydiXtLMitHsUTl1KmhTEslDlaEhr7FHTwVXVSxbxpXpiJIf5q9lZMHZ6bSwP+ML6Ex47lIUg==
X-Received: by 2002:a05:6808:191:: with SMTP id w17mr9251oic.29.1579194179103;
        Thu, 16 Jan 2020 09:02:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5482:: with SMTP id i124ls4068723oib.11.gmail; Thu, 16
 Jan 2020 09:02:58 -0800 (PST)
X-Received: by 2002:aca:d610:: with SMTP id n16mr30041oig.108.1579194178710;
        Thu, 16 Jan 2020 09:02:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194178; cv=none;
        d=google.com; s=arc-20160816;
        b=LbDhJanGD5OueZ10hUBf9My2PPbEccLGTY+fLcNFhZYzwtXeRD0WIVdK7L2H2FEIpk
         aNQUMkneVLfkgjAVy8YpCMfwihVSyZ+Q5A8hjzC4QFseGcPkYKoG+aqLdQx6y4nMSGeP
         Wbv6ZSVqVdkJEUtf1SleUVFmatp4BN38WorSdwMbjm/o6oa+itg98RkN6CZBvLQu/P3l
         Ja/44SDYUK/DtTOIO1hyvHgwpkBLEDy9BjKEG+Ki99mdO6sbHqKHR/V2IDyOXAtxiUto
         gsr6vlusHPjWwrLli2tab52mEORG3F/Ca8mNEawv79J+l9aaurGJE7A2KnEame2dJfKW
         vgIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IWwIr2MdAxbSmbm4GnuAcim4/7t6O7EcFytWR6is15I=;
        b=K5hhSMqfYTXv/F0uMNVQdtoV46pZOpvLyMC+NtymPX6j6ISPhrBoy6hLn/IWsS4fJN
         9kJDE4npBZNoKwrCAZZv8qCbfMU4ZsfAcJ72Vk2pQ2GmAl12Nb+okwenyHiRIdm7IBDL
         xVBaknhfC+pzrXNupmW6kBgqZ5Kzs7p94kBuzoWWZESzFXZ5SSkvycyiQmM9LpcJ4Npc
         /31mQmqpFxcWx0xCjRx7jSflgpui/6t3z1CYoNL7Zo9Bl+ZSalr07h8ANI7jQmb8BfXh
         +oVXMVyqsUdJFH79iRh1yE5fBgFE8yOWgzY4QDGwXZHXnJ5O9ohLxrdRjfkz4qaWzU/I
         W0Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eQe5+1JO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si1220241oto.4.2020.01.16.09.02.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:02:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 48B99207FF;
	Thu, 16 Jan 2020 17:02:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Dave Kleikamp <dave.kleikamp@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	jfs-discussion@lists.sourceforge.net,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 254/671] jfs: fix bogus variable self-initialization
Date: Thu, 16 Jan 2020 11:52:43 -0500
Message-Id: <20200116165940.10720-137-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=eQe5+1JO;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit a5fdd713d256887b5f012608701149fa939e5645 ]

A statement was originally added in 2006 to shut up a gcc warning,
now but now clang warns about it:

fs/jfs/jfs_txnmgr.c:1932:15: error: variable 'pxd' is uninitialized when used within its own initialization
      [-Werror,-Wuninitialized]
                pxd_t pxd = pxd;        /* truncated extent of xad */
                      ~~~   ^~~

Modern versions of gcc are fine without the silly assignment, so just
drop it. Tested with gcc-4.6 (released 2011), 4.7, 4.8, and 4.9.

Fixes: c9e3ad6021e5 ("JFS: Get rid of "may be used uninitialized" warnings")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_txnmgr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index a5663cb621d8..78789c5ed36b 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -1928,8 +1928,7 @@ static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 	 * header ?
 	 */
 	if (tlck->type & tlckTRUNCATE) {
-		/* This odd declaration suppresses a bogus gcc warning */
-		pxd_t pxd = pxd;	/* truncated extent of xad */
+		pxd_t pxd;	/* truncated extent of xad */
 		int twm;
 
 		/*
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116165940.10720-137-sashal%40kernel.org.
