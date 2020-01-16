Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB656QLYQKGQEA5CBIFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C5613E962
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:38:04 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id n9sf16729167ilm.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:38:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196283; cv=pass;
        d=google.com; s=arc-20160816;
        b=0y9dsiY5baCyuTE+yzX7i1EGe6MJUZbmJHmEo/4mLvwOotRP8J0y6pbTOaajj89w02
         sHppkFaxg34nlpIfeHvwwHiCkn3pacm4RXz0vIOr+9F7UC97hLd1nfz73cgpSewBESZG
         knEExMbQm1vuVJfdlD0GQu281VQ7UiCeQR9SENrdtztIRCPs1BhLIhc4kOdikA8BJjvB
         10Zv+Ciui/lpJxjT+GdDfdLSmsYy77yVkiFiQE71LX6dnfOImnDhfI/kPJUkg0Vnwf4p
         PWxQ9AV4R/1jlpoyzdKNj8tkaiAZxJsF/v6PFIli1IhbAsUl86nNUvRSfV4PnC/hRlvS
         NP3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aLgBSYmR1DxFPo7ol5Do1twWYPs7C5YoOlujQyPwWa8=;
        b=lwn3dcTlsIF7DdWVLEKQMIBAiyWfcZYPeFuwx7AfFRknAP//oHszjM3N4/jD/1/piE
         XiSdmM2j3Il9l71lxV/HgDxrE8Y28CM45jC71tzbzdfQNaANDbMvkg1ILNDY9t6uLOgL
         YcOMx7rzPG0hRVt+LhO/nKsAKDwNjFjQjDlavxy4rFjlqbkumifT0hiIWi+aASRo5QRu
         micYvODb05rLUkcmBrTRAsIRyZ5KfRLoLsAWojWYQXeeZkk/ImmNfQfCVhCWBjRQ6P7d
         Od/qppRoGnZhLuad24hODOhcZ0gIehH5wPsCuBOWB1AboipeTPuHFoMJUrc26YmbFNjz
         YcVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="O/d64gK5";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aLgBSYmR1DxFPo7ol5Do1twWYPs7C5YoOlujQyPwWa8=;
        b=fddNLjC/hEtPDGRyOQbnJNMt5kL+/MWBEg3imQKTAld3NvkCTb8F76uFjfAqewd8AX
         bUHe5tXZ/QcwLsRS1idlEdiFvr4/ROHKOR8q0RKYsr5VfKJkp1K7qNg0JcRScIbsmKcx
         Y66dVDa/j4wTPs+Zlzamk1FVryreF7uD24/3RK6T0+fDuVzypnlAPO8cROjosBz24dW+
         s095cleL0cnQWy/V5kOhk8OCDGp8aVBWyBI5t0foKAhtMSpFPVkMREM7Gr5Z3K069J4k
         CjheSQmKN1Ia18CIW42qJRNu8t5Y/8lPEL8Hk0Z+lPyH8lwSPpZXuUpKLh7+msp0egH2
         +OPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aLgBSYmR1DxFPo7ol5Do1twWYPs7C5YoOlujQyPwWa8=;
        b=LYdDohYCeDIy0brEn+ft1P6f3eZns9xZkKlLw27g3glr763fLXjoX/0VN/GkcHSHMN
         efuPvQ1r0gdB0iQx4LaZuSCJgBSV9TQGlkT3hhNTiv9J1TThmEHvk1+lAgNeNUKD69E3
         2xUhVB1F/Df+1kj8KkCo0Ym0O3bRcd9aye7fIsRAzIWVomLdm8lbB8GjllV/LUjVfjjh
         6nSCRWnQ6zt0Fj6yy3nxrBYYn5jSQKp4Y3Ag8EayAf44P+BF3BoVn5LpWjPQaxxv9Y6X
         kqmein5SoRcioiLOifLP8gN+Ly25BpmGwJKkilMpRymleNIrgztEijKpH5WkKpFMDCnG
         /bNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1jicDo7A6ccBPQOlv2hnlpyjizY3xZHiMhBMxWehQgxVThVjf
	zav4b2BP4uxCwvvb3WV52xY=
X-Google-Smtp-Source: APXvYqyhhrdPm/A5OyXbTrDvNiJJ52X2WNY8CSNOjCITYeY5zW3C4QPqkKmUIGuMJumitjvrYqR0sw==
X-Received: by 2002:a92:db4f:: with SMTP id w15mr4338757ilq.182.1579196283046;
        Thu, 16 Jan 2020 09:38:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2907:: with SMTP id l7ls4079276ilg.8.gmail; Thu, 16 Jan
 2020 09:38:02 -0800 (PST)
X-Received: by 2002:a92:c990:: with SMTP id y16mr4740782iln.105.1579196282757;
        Thu, 16 Jan 2020 09:38:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196282; cv=none;
        d=google.com; s=arc-20160816;
        b=jQmLmCa2LMlvem/xIHfxZK9XGOtvo/dVYK1UEs/UIJ0msXm4QdmIXjqKQSpVOQsGLB
         w0uWkJGUCfq7EkvYK6Vr7mMn466LJVBKPcCYOTO5Onmyzf6Wt5Pzph2KXUx4TqBSQyQd
         tG3FjXlzq+cmLWzF+YMtQBJK7ihLZdMJGdNir6tr666ojdjU6rSCtYTQ1hy4hdtzRHMT
         BOeIMCyooY/LSuCIq1rhUjRGKnVDBSHb2D4AXbPje+WXo5el1nicI7H1cUeols4otFOw
         sUYSXnLVkGxrxJWV19N55HUDk+4GfNFtEYv5Ry9d0gNQlYDv9PCXdefEfV9NJmnLlCOa
         8PEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ndHgS67eoMi4H34VeuDuxbcAjnCKHFmi1vK0sBOhhG8=;
        b=FcqHGHYG2lJ97LuuYHoWERQKW5i9NjRZeZhtniUBf7xIFP9na3Z4dBp5naqt9MzMwN
         qcG1GKKKhPI3D3e3e0GawYilsk78ilDdJY80Ju45ESfBLyzI9R9PCJT8ZaIVCaCL2r6B
         JiXOIpHyvdnQW787C0m8mKvvZGmvli+GiqqaimANWbUraY3bxwpUPhQkP6mgCeZOEULw
         7/ocYmc5ynVvelJW38PFQcpOILl1qKxGzLbTtPKlUNF3iLCJe63sE2Jo0q1/ZKXY7lkQ
         PVvFj6D07k6ECTYAWQsivcYyWKpE2xBv9DpFbguWbSpMvu/s5BGcdQvZvcr/TNOFJzGg
         ZVWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="O/d64gK5";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h4si1234766ilf.3.2020.01.16.09.38.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:38:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 16442246E1;
	Thu, 16 Jan 2020 17:38:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Dave Kleikamp <dave.kleikamp@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	jfs-discussion@lists.sourceforge.net,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 101/251] jfs: fix bogus variable self-initialization
Date: Thu, 16 Jan 2020 12:34:10 -0500
Message-Id: <20200116173641.22137-61-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="O/d64gK5";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173641.22137-61-sashal%40kernel.org.
