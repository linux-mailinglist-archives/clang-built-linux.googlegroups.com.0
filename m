Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIFZQLYQKGQEOO4DGWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C75213E76B
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:25:53 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id a20sf11935232otl.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:25:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195552; cv=pass;
        d=google.com; s=arc-20160816;
        b=uecDiVLyZFAvhTDui6+etA1PH65aT+QiGQ9GNwEnF8KiNxgIM35l1OiXFAMPSW/c3e
         +SpqqtrLln+4dyIWhrZeCeoMla6lj8HHgzrQjSvm9GB/x0ifr+bqx7ohQAX7iNhEl5Pa
         hbouV1r/qGYffNrPK2gkwna8y+68LkE3a2/JyQ6o9JVoJH5escFMVd/js6MVWMwYqzUL
         5uBDGE9ThKpDVX/3pkxBeD2Ugn8L4j8ShgmfAJYDbp8bQGl4teeCg8beRh5CZad22RnH
         z/84NbMFS4b7rYkQnpDTRNfHWk9XFbQphDJ52c9m27wxX8kSPm8RlgS+Mk+vxMJTOg+h
         4oUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FjI7k5c7WxS3nZIpP0d7BswbueXD60iPf2YvIHzYuZ0=;
        b=ZE8avvykb+7ypK3VuYrK8KH9C6znyQqiClYonK7WFKFtpU9CbKNQIU4o4MCiEJLAfb
         MQG+wpqFt84QoXHpCZFPTZ5EupZyHc/PsWsM8Zi5bm/BbOPjUlYBarbcikFxCcdr72VK
         cAgW/zvSvuDf7kxeHK4EWNgvJ25PSe9Aw4EarFGO51G/OVpEIlsdvwXihf9qHOcICAK7
         E+kaj24CceqnOBr0EVB5UP4P8xjLvGJN81NXni6yA6TzUtfpe6AITwAsuFqZkbtKe92d
         fJgvD8ZcKXqRK9NGiHOfXLOZ/oxCFZ1Wd3228cwhrYcA2R2s+nwwFkfrFJJ7CmcjJw2O
         aAYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="YerZrn/F";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FjI7k5c7WxS3nZIpP0d7BswbueXD60iPf2YvIHzYuZ0=;
        b=T4+XmYCuUE5lr0jLdhu0tT7CNOBEeRIggo2GbA+SxCTqj7SW8FT8FhJ/+KJhq1G6n0
         bmXszPV8usxktYknorwAG//sosFxPZcVPOEGrdzbl819BJt5vzVBUX1SKZAYYqvWky5y
         n6rDQ1JsaN2t3kAmwDokWI6oxiHgLyyMIwzXgX7px9iZ6U9FNTbDtOY/zf2Gx1Oum6Gq
         oPholknmjdF3B1dtMFt0YqnbRTHu1oLuGr/Hi2bpZoccOFBDHaNPjlfQFKHrtWa/NNT0
         x6MM39J4DCRGqakmkhd61Cwi0M9Vr3aUHMCTq5T4KvJHTDcZvXGjep7h2ak5OEqBk3ro
         nKoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FjI7k5c7WxS3nZIpP0d7BswbueXD60iPf2YvIHzYuZ0=;
        b=ZqAGhlY6GNDpULln8z2BXloC2BbKGbgLSGzyPrDw0yPg7VPlZJLmD/c3wPh7pShnJm
         aKty5ckhKPRQwt0ne+KzPSIWcS/yQvPnETHVXrpVyfDkW/6hzykeEtBuHbQ7fm65/npb
         ZyuN5YM1ZfmazWLmzG+GM7mf6Svp7C/E1Cn2X1wyv346/jZ3fWb++wr8B4ayE5BFast4
         WG1Yh8Mo531kD8sL4i7c4DYDtmGZRUOfsQIWUqlWAigQOos2ia1aF7VYAarHC8qImWhN
         dNYSDZzrk7aDugfjWATh3660DNDW9h3XtElZ4nkkjzwWgv0VXcEi1EUGzprgFk19hrdq
         Afog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVfFQ7NIHNGweOVK3+cBwg/Y6GQ3ts5ws+qeZC1Rq5pYi+icrFX
	xhmi9xF0yLJNOA6oNQarSJg=
X-Google-Smtp-Source: APXvYqxlKZzJhJURsvEVKuCyB6TA/VFGQsB1QMcn8AAV30OtXMBxR3GszyKyTREpblyc7oBoj5tSTg==
X-Received: by 2002:aca:4b06:: with SMTP id y6mr96268oia.81.1579195552360;
        Thu, 16 Jan 2020 09:25:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:910:: with SMTP id w16ls4080938oih.2.gmail; Thu, 16
 Jan 2020 09:25:52 -0800 (PST)
X-Received: by 2002:aca:2207:: with SMTP id b7mr89660oic.109.1579195552037;
        Thu, 16 Jan 2020 09:25:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195552; cv=none;
        d=google.com; s=arc-20160816;
        b=kRFfWU1/i1DZNFhDL1IVsq83mbBQe6JdKrdK/HgoXmFP1CyykZNNoTmSIUdSQS9vNT
         mB18Eq+flM9zFP57WTJZo6I9lrr83DYrsvUX84kEd1uNAECK0Xy45UqhsGV/WI+0Rr5b
         0otiUWC6qpEbJxFz1LcggxaCHydfx/srp7uQEcTJeqzNaXwGGicSSKZbWNckxPr2iFXA
         aBU9fin0eSAoH88wZZH3Bf/Kgh/PJYS6acpyAVO//sOswOV+6QkxIXy0rklZLOP48Qh1
         ZrQHhn+kSPlQerq2h823A/V8Rc2hfaIswjyZ5BdgPRf/jVVFoqx/YjO1fnxwiq82Jc/c
         vyzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ndHgS67eoMi4H34VeuDuxbcAjnCKHFmi1vK0sBOhhG8=;
        b=KtCm0oO+0WHgT0HhSIxPGk5zs0q6CWFwBwZBJ541hAA8wB6QVtlIVNzYiLUSOa1Duy
         jKvGQoNLqOk5cnu3URbks3vLwyqpdNBR9zYJOrSoxCv3T202hhsPL4ibIik7GINpGCAc
         R0p/smBDRBisFKrvhHNEMTGIkzfOFQMVay8QqQO/tUAVelZ8jemayyTIR/YB6qsmRCyD
         HTbtGXOiG+ua+4Wa2CXe1pcLzlYL+VIXkqz5mFMQJP7z8hxa2EFp1hEQGKO2zBdyArp3
         Dssqmpsg76Fx9nve3iQMR1jel7p6L8a0JKkD+tDGN7/9YDQQc81WZy7TKk8GMKLZn7ug
         WKRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="YerZrn/F";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e14si1243706otr.1.2020.01.16.09.25.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:25:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6EFAE24687;
	Thu, 16 Jan 2020 17:25:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Dave Kleikamp <dave.kleikamp@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	jfs-discussion@lists.sourceforge.net,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 142/371] jfs: fix bogus variable self-initialization
Date: Thu, 16 Jan 2020 12:20:14 -0500
Message-Id: <20200116172403.18149-85-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="YerZrn/F";       spf=pass
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
index 4d973524c887..224ef034004b 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-85-sashal%40kernel.org.
