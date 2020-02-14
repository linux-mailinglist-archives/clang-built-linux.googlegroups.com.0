Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAELTPZAKGQERBVSJFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAFC15DEDD
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:06:25 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id p13sf5339870oto.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:06:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696384; cv=pass;
        d=google.com; s=arc-20160816;
        b=vTbvxDjcX1fgheElglhFt1HOg99ypqyyPLNkj/mIZ3mRPb86l02n6vVyFrn4virLFI
         HZ/7o0q5soQ2CYCnEjX9iYMwFb7AAgcmiSwcI/GvI3zkjb0bSMTNirAAds9bOL4lvjbK
         yMEpf3xPM8TuN6/UQxXbCnRhX8Nm0CMYhVe9hbbMYKKC6S27CQL55h9e/SWg4iF3DG3m
         Z6mbN3iXWve8WZH0Z+/e/fi5DfH3PE/x+fEhiE7T1TWJnroXbdkswUCuZUqMSSfo+tcl
         5H6TN3LcEM/S3nTkJ3zRwIG+LgfuDnMdontZDx8ipUFeawiLkdPN1lNOiGWE2jPSCL7o
         jnKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=z7dxq1IxacY03o4WdavqluLt2Kt8nTeNkIVWixY0DFE=;
        b=F7GXMCoRIwnOEBcL/fGicLIzxY+Yyz6yOZPoXChuQGcifLD9WkaBJlnsfb38aA1iGC
         MDw9qapI5BXkkDtnxZc15QZAGgA86q5yPSi4ttzI8/WUbzeZ4Y1iODl9MKah9hY77/8d
         gIUG/yIfVrKTF0DStl478aLfibBNFSdpwlZvOPyJFxvrwiOxr5fLTze1CQvoy93ergIX
         aGsTRWMwgfmUQ/RcktRUhI+VjabNs3ouxQuvgHZrqMoyc08oItin19Y0pBnKUPfusRLi
         +wd6Xt9GSDgVY7TxnBtQ96xXYjgPZyXbbeXGTNlBews9VLSKGP1yn9W/FZhuq1L8OOCB
         Q8+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=J2OeSIRR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z7dxq1IxacY03o4WdavqluLt2Kt8nTeNkIVWixY0DFE=;
        b=H4zIEtUZEk3dxeyUUX24RboFvUNwdk759aAE5HfuGprJ7rFjLN1Yu2tqUKfXwh8rMJ
         zTXHQ2PzD7yeyPwdsomIgc2Nxz4pNL1aRB5djNBATUQis7SohRrnGRpwvKtzWuhzzHb0
         HbtHRGE0jtQFxJuvlAlZANkuDK2ypC/BYJj+NFyMXHLko+3xGk/UtnQb8XNkIPSCUosS
         cA9+r2nxidGiF7fB3E7EXBX4LOeD6KJOKs8/RDbIthOqAfuOgUADejEuTp0WykEHDh3k
         3yU0EDXVhUUvq7GF/1qbfjaemlx4k2iOg9OrAiZ7/+U3xCDrOvO3SsvtYeN1cLdBDN7H
         D9+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z7dxq1IxacY03o4WdavqluLt2Kt8nTeNkIVWixY0DFE=;
        b=fGS2DBwr1Qe15hvqmpyDG/lATQZnAXD0+tQcaGWQxfCfPWn1yY0YlTWiLNcGOhVG3G
         njWoxlz7ilyzBTYXMzRtKuKXuPFV8uBcevtxlKisS3SnnURW3NSekNhNaCzxIfln1GKC
         PkJ3D+iyUg2ViMRuZH3iIIryFxSDscvQMyTVqp/8bJJsFZ+4+jn5GkKnfW0FxkWQg2N/
         MUBkenTyRgx6JVXjnhqIMAxc93fuVS76IRUX3J9o09+DeWMfwnxEysQxJy8OWNC6wBNX
         EFsMGt6J7+Ud6NumiYoAxlHmahg7ZevnsOt4XKQvJX//rWRbbufc/HdOCpZJQaBasxtH
         wYSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWBnoQiubW+HiVxN49SpH7k4q8J5B5W32STPDMtHFQ6HsQFrqrT
	iaxi9Po23O7Ni1/evaqdaIY=
X-Google-Smtp-Source: APXvYqwwYu8xZhqR/ruyU4wPmhbz/Zc+rFfmG280T+63BB9owYp4Kak0NZ4tY1jxAMQLJ0+KkMJMWw==
X-Received: by 2002:a9d:470a:: with SMTP id a10mr2909554otf.370.1581696384546;
        Fri, 14 Feb 2020 08:06:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7282:: with SMTP id p124ls622203oic.4.gmail; Fri, 14 Feb
 2020 08:06:24 -0800 (PST)
X-Received: by 2002:aca:1c09:: with SMTP id c9mr2396738oic.85.1581696384127;
        Fri, 14 Feb 2020 08:06:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696384; cv=none;
        d=google.com; s=arc-20160816;
        b=AGagMSZDqwZImgBJG5xhyv9yftAdvrQL2xgwHS0p6pciCvpGJXMkOnJ5H18uSz5Ang
         TH1ZVXutgJ4h8hcq8YPBlDin41TcVODQbHpaRk3qB7gdGoaf2nFaOwst7eZM5LsAdWcf
         eJhEZm8Z+YoZOMJYOGxPX4zC+fKyOQt/Cj0wGfAfn6VVnszgbKc5Gh/e9RKcJEax8mWb
         OTltzyuTWiTwn6I+1fj881EpxDcg4CqUH40OA+52UxHOrdce2eUSc2JOWa1eoezYka8h
         VnO2jAvrhtRnthajJZbMQusN/1AOaIj0Gs/HJ4qAeblC8kueRwPcpO9jZaKP18Tmf1QV
         a//A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tFJD7dwIceOtXhZp+9SFebkru4T7ebGwB68tjIUmsL4=;
        b=ru38APixujEBiMP2G0TZWN0i+vs6eL0bRT/YeCaf2KosYKIVlJX8v6CAYl0GiiR3En
         A89OcGB5/2DHj4Fk9Id6PQdBrH6kqn871xDQajh3uzQbbs7nTWT/+YKJXoKQ6kguTdzV
         e6jpVVi5ikfjKKKOHmVUJaXnc1FFxqrmL1c480wuDsc5HQYVsrBMARZhPqRrPJ3hQdv8
         uPhI+9d8wmXqXd56Jpd9jejooAlsuLNLnT+AuL2x1b0DCPfmuafHWEVLjJ+072iXTawn
         DIO64yPlfDwDt3HcuQ9nSZQDKf/D2oEyN2C8tszuVKvXD0EMQSr+A8VT6MYBD27YU+K4
         kXWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=J2OeSIRR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d16si335027oij.1.2020.02.14.08.06.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:06:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 882EF2467D;
	Fri, 14 Feb 2020 16:06:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 210/459] scsi: aic7xxx: Adjust indentation in ahc_find_syncrate
Date: Fri, 14 Feb 2020 10:57:40 -0500
Message-Id: <20200214160149.11681-210-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=J2OeSIRR;       spf=pass
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

[ Upstream commit 4dbc96ad65c45cdd4e895ed7ae4c151b780790c5 ]

Clang warns:

../drivers/scsi/aic7xxx/aic7xxx_core.c:2317:5: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
                        if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
                        ^
../drivers/scsi/aic7xxx/aic7xxx_core.c:2310:4: note: previous statement
is here
                        if (syncrate == &ahc_syncrates[maxsync])
                        ^
1 warning generated.

This warning occurs because there is a space amongst the tabs on this
line. Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

This has been a problem since the beginning of git history hence no fixes
tag.

Link: https://github.com/ClangBuiltLinux/linux/issues/817
Link: https://lore.kernel.org/r/20191218014220.52746-1-natechancellor@gmail.com
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/aic7xxx/aic7xxx_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/aic7xxx/aic7xxx_core.c b/drivers/scsi/aic7xxx/aic7xxx_core.c
index a9d40d3b90efc..4190a025381a5 100644
--- a/drivers/scsi/aic7xxx/aic7xxx_core.c
+++ b/drivers/scsi/aic7xxx/aic7xxx_core.c
@@ -2314,7 +2314,7 @@ ahc_find_syncrate(struct ahc_softc *ahc, u_int *period,
 			 * At some speeds, we only support
 			 * ST transfers.
 			 */
-		 	if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
+			if ((syncrate->sxfr_u2 & ST_SXFR) != 0)
 				*ppr_options &= ~MSG_EXT_PPR_DT_REQ;
 			break;
 		}
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-210-sashal%40kernel.org.
