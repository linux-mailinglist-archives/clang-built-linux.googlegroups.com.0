Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAFWYDXAKGQE3OY5RJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAD8FEE63
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:51:29 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id u39sf9882716ybi.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:51:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919488; cv=pass;
        d=google.com; s=arc-20160816;
        b=BQkOTdMT1dDTYg3ojEERqzhhQLKAWBpc3UveTsqCHjYgWtq0ZUX8muDoOCAJVePrNK
         pDF9PJQQs97f0xyF3oInTRj7GWsGdzT7+CJWb/KSaz02Co1gIl3m5nn+ZmWdQGCttY5j
         b4iScRJeowFP9txxBXpD3R39uohBLGz1iwH0gw7Ht2YO24VFwwijhNgArWzXEaOlAifW
         lu/mtrwehhpdz2PCOlbij8daTMDkiuvfxjZDzY5x/yWbv6qwDztcX4JOA1b0OnlXATnI
         t9T9LVdvltXLrmzn7nZ9ZOKjYiHc5fG46wu96bPzZoo2NAb8VemGxd/LMjK/0sHlyWl6
         pCHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0Li6gNb401Ce3hfjzLjPPHh2mpBJxRdcYszIRMlTmR4=;
        b=ULPZi1tXc4fNKeE+FYLPeMQJUpa9B236K3a4Aw+N20V5WfTEeu609AvLVhoWyaBZXE
         hTPPolXfXhrsTkWB92IX4LIyq9JDYgdCIOXCLCQLky3qfH5HdQTXck1meQJcMOfHawqv
         xuIff975mclIIIe12c9TWGx+7GYD5L4CAt5vsTS7Jde9V2XFydgmW8XuSK5aDHnnRZnk
         h8pFfVFSm06ulZ+47qe6NzurKb5ylo2yA9Cb5iyih7d6aDWjIQlarGF3c3I1YyFqPEND
         duY1f4SxtMLVsO7vsJUQCQnI7XcuTlGTIdfqpXYuYhAwMB6WilYn2a6lXIUZbRyrqF2S
         ff/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eX7JdxP2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Li6gNb401Ce3hfjzLjPPHh2mpBJxRdcYszIRMlTmR4=;
        b=nkWnKNr//5s5Nal6Rurvu9aFBDbXXyqHYCBYzY5GNbUrzTmbc7kH8Fn41gXPc4X2YP
         9roY/Qa/wy0SWvBj65tS9vN7oT61Utx+v8beUSgc8HiGDiOWbnKVVg9EeRRLzPCeSDyn
         OW5RtoalrU9djxQzZ0GIuGSf5l+ahrh24anVxyAOxG0iz7O9GTEbo/3r7tV9D7rTDPq1
         p6R3CzGypd2wAy/rsniWjnkuTi0sFEbel/aDOTUg7COHMHv2MmEgRxJsYOfDdKHPMWJl
         /CmolHuXDW/MD41CwA0wJSnHpWeDT9PhOOqhd1V9CLulXih6PVwN316xKonfZW8mNj/S
         hW4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Li6gNb401Ce3hfjzLjPPHh2mpBJxRdcYszIRMlTmR4=;
        b=TICyNEQE9Niaue7vyQfNwafwwuyRn9AR8pf9JOq3VRhKh8stOijjU8eRttt2Ffv5Vn
         vy7XN2BDQ1P2F5L10hGNr748RozyWU5rXLuJ5oAWXVk8ZH2iRZqcyohIVyLymOR5IGMM
         Zj0PUw9uNB2vy4h3kqYRVPUoqMdgDbzFdkoCPOeWrhXuHevZrTtDczjheiGBHWQwE3xg
         2qgT2J+EUbiZaotbNhSpgJdy/BPpEoXumcibR/hj1OyCMP+e72FogDsBH2jK7EGloJsG
         1WRXijhEqNHQ5vN1J5/hmdxBCWb6/xRB7VkVHUAd8WWrBwerNJ6+T2YhvgT4H5abuVdC
         hD/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRBCuTPhw+twdX67OqhTRHZwTn7rK92NvptRWciDueojFsEKzT
	JwpEuV5C94M1VAb68rmko8g=
X-Google-Smtp-Source: APXvYqzK+lpUx+rQeAKp+tmqIJ9HM6zDhd9vEHTRRL2xpWDRh1U1/ckzqvLD5BaeHEJGWfJSYrSA9g==
X-Received: by 2002:a25:aaa4:: with SMTP id t33mr17204156ybi.274.1573919488558;
        Sat, 16 Nov 2019 07:51:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a046:: with SMTP id x67ls1251893ywg.1.gmail; Sat, 16 Nov
 2019 07:51:28 -0800 (PST)
X-Received: by 2002:a81:9144:: with SMTP id i65mr13646572ywg.173.1573919488198;
        Sat, 16 Nov 2019 07:51:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919488; cv=none;
        d=google.com; s=arc-20160816;
        b=WaCfrcCMW81j2CsjYXDK/Jc7Q//MV9OW8FTezat0q8a6rmtCtZEz1dzmGWBli3ffah
         3wiz/g1Pkr8rvtfl/rm6mm7hPmknwrUV9kyNYfBAcSqTAzyKOXb88fg3S/XMdVmFf6pC
         1yXbZYU7WTusejoc2YbRy7MzbzHr2AFvWQgMnIaCTVgDxaPowLIbTvN4q95SnQOpk/aT
         HynQBI6H+ypiqq8JankTz007kBPCHI9hGovpTpg5oPaxOyO/vM3ztcqxd1SFM0c99qUx
         7ruRkV0ILrNtnVgkEj7WpVZxYCeXmISnaWIm0dgfho0YghWlt9AaDx3PPICWss5s6ow9
         XMZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nB7QytYwP29hx8pHcN4XTS0NPwLaawQ5TOZSr4aisqY=;
        b=Oi3+Ar3K5gBq8wRwAeaFIdT4g3h/+H3lSDdQ8IdqYgfc9ILMpBP9tnWu362mSZOS+k
         bu99Q3etkCMmoOWXqd4iiPpWeKxp1TYv6SeuwS741QbGTC5bpATznGg6QMynP+5PH5Gs
         8rQVkYR24U5QWRGk8racOmE7eszT2nYZ25AEgNGAvpPoNAgCosl3boXfptLn6KgjFULA
         bnYtIRNO5QSO5EI3elxsmCqSXrYa0aN6jb/CaL7vqVK4mOuS7bJjFU9IPi4oo/hSrUT8
         nBzIttD8wJs6nf7g/tdEj6kPPkbDlZj6K+PRlLuAZkPyZrJASkgD4yiaYeIr93WKRxit
         tYew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eX7JdxP2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c5si716218ywn.5.2019.11.16.07.51.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:51:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C251F20895;
	Sat, 16 Nov 2019 15:51:26 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 18/99] scsi: isci: Use proper enumerated type in atapi_d2h_reg_frame_handler
Date: Sat, 16 Nov 2019 10:49:41 -0500
Message-Id: <20191116155103.10971-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=eX7JdxP2;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit e9e9a103528c7e199ead6e5374c9c52cf16b5802 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/scsi/isci/request.c:1629:13: warning: implicit conversion from
enumeration type 'enum sci_io_status' to different enumeration type
'enum sci_status' [-Wenum-conversion]
                        status = SCI_IO_FAILURE_RESPONSE_VALID;
                               ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/scsi/isci/request.c:1631:12: warning: implicit conversion from
enumeration type 'enum sci_io_status' to different enumeration type
'enum sci_status' [-Wenum-conversion]
                status = SCI_IO_FAILURE_RESPONSE_VALID;
                       ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~

status is of type sci_status but SCI_IO_FAILURE_RESPONSE_VALID is of
type sci_io_status. Use SCI_FAILURE_IO_RESPONSE_VALID, which is from
sci_status and has SCI_IO_FAILURE_RESPONSE_VALID's exact value since
that is what SCI_IO_FAILURE_RESPONSE_VALID is mapped to in the isci.h
file.

Link: https://github.com/ClangBuiltLinux/linux/issues/153
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/isci/request.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/isci/request.c b/drivers/scsi/isci/request.c
index b709d2b208809..7d71ca421751d 100644
--- a/drivers/scsi/isci/request.c
+++ b/drivers/scsi/isci/request.c
@@ -1626,9 +1626,9 @@ static enum sci_status atapi_d2h_reg_frame_handler(struct isci_request *ireq,
 
 	if (status == SCI_SUCCESS) {
 		if (ireq->stp.rsp.status & ATA_ERR)
-			status = SCI_IO_FAILURE_RESPONSE_VALID;
+			status = SCI_FAILURE_IO_RESPONSE_VALID;
 	} else {
-		status = SCI_IO_FAILURE_RESPONSE_VALID;
+		status = SCI_FAILURE_IO_RESPONSE_VALID;
 	}
 
 	if (status != SCI_SUCCESS) {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155103.10971-18-sashal%40kernel.org.
