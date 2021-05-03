Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBMOQYCCAMGQEXZ6PUEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 550FD371B38
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 18:43:30 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id a6-20020a056e021206b02901a532cdf439sf3609371ilq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 09:43:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620060209; cv=pass;
        d=google.com; s=arc-20160816;
        b=yUfIutKlupKybaBqh7ybyMTW49XR+z07n6GvgqMsi9/S9wU8cWoST9iQEg+36qWe0l
         pjUdPaWwdKBjrmjfcu4/Yoy90KLCfJdyylFLjXZ2DGSYDpDiU9dtqqBpLKPIkYwpqPPK
         BKOTsLlWlgfSX5bmE2b0WMmwoPVc8dXDkZJvWT+DeogQDmlEhAQcFlnZ0ZUWWAXI0prH
         j3MddSoIFYBxrSb83zbQRmfQlGKLLZfRoZszkTU3g9AjIZbLZIWYrRE4yHNfXXCY6LB0
         XQw+q2hEdCXgtR5eeSTQOl86OmNKi1NzX3qXE5+uQrfar+uGfOUqLFc7gumDFLUFKxTK
         X8jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1fwoM0/5lqDrB6O8BtQfFpdumz1LQ2531HiPSVaDnTs=;
        b=GabzFfi4fuGk2pYbVFzjVIBB+HHXQ7KePkveRjiBwfuEHcK5gWrlUJBMMtJdW86tbP
         FqbWF2KKhCVgKJam+Y3bQqGLZppHEDmoHxnmE1DrOUafJOt4sankYwq1Czn5nYeGupKa
         7zCkYxorE83hgVu0Wb7WMF6TkUXJNXqhYbU1fDA68v5+M1wPDTuj5f9knsunSVNTCM9e
         vWIuUAo/RrlR5pcG28BuAqIdQYzj40piCL1uZHPonlbW36wpSFHYhK6+2/FTs6V8ARhG
         qs+1RuNOQSqJIaGPEQ52il0v/BcdCfIFQ2LKZpY+O7ijtMldbQIuYUXstEI2laAwfwy8
         UPHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=smlg39Yn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1fwoM0/5lqDrB6O8BtQfFpdumz1LQ2531HiPSVaDnTs=;
        b=EZSwuW/UOiszRJWgx/T2OiR5B0nEz4tWrtaoCFGmXRXpxhh17d4WN9+18kzhgflYZI
         nuIKYUNOOYXkXnr10MGERqv/r+2WY71tFtdI/3p/dIgLH20uu5NXv/DlGLcIWksiqDeJ
         uVGnTGHpR0ipNTJCK5PcRevqlWfpPdzdaGrGMBIqqKsogijNc7npx5f76ckEdPN5IkE0
         ur5NP8pZKtifWytw0F1Dy6/OgJUrMrKHmqvyvoUkS7Tr6aGbcY9npMDLZX9B8H/VcKIk
         rH8OJAGEzXvCn095EWJXUmrBV61OYpohdYdhy+gsLUw0TM5dhxgpvql8vXBCv1mJbm5o
         m9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1fwoM0/5lqDrB6O8BtQfFpdumz1LQ2531HiPSVaDnTs=;
        b=H9kwjLLRo8ROGyAHvPRYfaxoVcdlKTorLkwNN02lS/RPpbnhvo17ijdVxcK3fFf9/2
         MJ48wc8yrOAKnJdf90DiX4pEIROdZ9m8H2uI8FWAKdHcV3A7ODyQ/oliN9JnW/afB0iN
         5Km6o5aH1K8cCyndao75t/Sa/wUmOoaXysQP4MCk3t5CtIpoC4yltQLD/M42cD/zVcaD
         Gq3IUWI3d8KdU2cJGBXD7pLIqkq1Zwj8YaDmy2OjLa5dVttsFrkRN87kBtiyC7IXWRi2
         ntzp6LTvgdR4C5RphjqhtyJYRiuri9KtO4lm+myYZGvQOwjkaeP9B+TDRReWZoc/MMkt
         2lfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Yb5Dw7eb11FDiOMdcHR2TjIjLBJV4XvOnrsb/xfDfP9l7xF5H
	STnqOBT/PYxZ2NT7TmliotY=
X-Google-Smtp-Source: ABdhPJwunQLo76wiYoiwiS0f9dimbYKSvlarUw2bEAisFLeHQwOBoLk7ipyI/deOqeIIlW2xezRRug==
X-Received: by 2002:a05:6e02:1ca1:: with SMTP id x1mr16456465ill.86.1620060209369;
        Mon, 03 May 2021 09:43:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1888:: with SMTP id o8ls3238810ilu.4.gmail; Mon, 03
 May 2021 09:43:29 -0700 (PDT)
X-Received: by 2002:a05:6e02:1bcb:: with SMTP id x11mr17353757ilv.87.1620060209054;
        Mon, 03 May 2021 09:43:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620060209; cv=none;
        d=google.com; s=arc-20160816;
        b=q8UMhTwZOes0uH908+jDD+QZ2QKyTiBwzo1InVLF4Vps+/NZ9DID1iUUlpVsp1xbt1
         4PFKcdIqWyoS6S8Qb+1NDYK2+FkWXyFC6c7Oqz312qGRz2t69oDGsGMhmmRHOGaTdHR/
         klKsrY/F679spT9ExiEfHG2avLEpH36vZ4ZNxTh5DtxlarFw8dngizx3CYMF1CnQJn/V
         ZzjURP9oucoVqSzii8rP7FfVbaM71u5Gcza4iAvucBZhVvMJcNM0DSzEWbsomBoxdrMu
         fcYkQJvJMirIxEjgASLIm5m7kZ1Rp24JOy4VcMVAcMQS90p9HJjBi1uqGGDVbGz7JtTs
         ngnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WNnufYuilLm90Z3qe8/b+ucKA/Y2q1861dLyWnm5bhQ=;
        b=yfXh5jLGVYK3PFkH6FbWD8Uf4osK/riNPbjHvsKmAJdzmNe6WivRy0U7lcRTlFGgZ/
         Rrg2WRBKtvYl6lQ+0GYBvUNUS/16WghD0hH73L1lcsQGF41OHRjnwDQkLy6NDgwvOxcE
         4pwGpLeiLBMBuGAPlCHV+TWeyCmcxp/1ljYGo0BYGuBp3sHPvNmqvOWj/xSZGBPibniE
         djTZJayNwZabNPNq1ZjdCrtuQaLNmKNuxbIL2ykiyby8Kh5xZc+IYrR1DlpOMBYzaYBx
         o/6+o3TqRZk1NEYDL4dgn4zzXWpSlN8dDi4DdeXKpUL1DSVniQp6bx8a/gm0vAwbjBLH
         x1gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=smlg39Yn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h2si11781ila.4.2021.05.03.09.43.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 09:43:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4EDEB6147E;
	Mon,  3 May 2021 16:43:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Bart Van Assche <bvanassche@acm.org>,
	Hannes Reinecke <hare@suse.de>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 24/24] scsi: libfc: Fix a format specifier
Date: Mon,  3 May 2021 12:42:52 -0400
Message-Id: <20210503164252.2854487-24-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210503164252.2854487-1-sashal@kernel.org>
References: <20210503164252.2854487-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=smlg39Yn;       spf=pass
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

From: Bart Van Assche <bvanassche@acm.org>

[ Upstream commit 90d6697810f06aceea9de71ad836a8c7669789cd ]

Since the 'mfs' member has been declared as 'u32' in include/scsi/libfc.h,
use the %u format specifier instead of %hu. This patch fixes the following
clang compiler warning:

warning: format specifies type
      'unsigned short' but the argument has type 'u32' (aka 'unsigned int')
      [-Wformat]
                             "lport->mfs:%hu\n", mfs, lport->mfs);
                                         ~~~          ^~~~~~~~~~
                                         %u

Link: https://lore.kernel.org/r/20210415220826.29438-8-bvanassche@acm.org
Cc: Hannes Reinecke <hare@suse.de>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libfc/fc_lport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/libfc/fc_lport.c b/drivers/scsi/libfc/fc_lport.c
index ae93f45f9cd8..a36817fb0673 100644
--- a/drivers/scsi/libfc/fc_lport.c
+++ b/drivers/scsi/libfc/fc_lport.c
@@ -1751,7 +1751,7 @@ void fc_lport_flogi_resp(struct fc_seq *sp, struct fc_frame *fp,
 
 	if (mfs < FC_SP_MIN_MAX_PAYLOAD || mfs > FC_SP_MAX_MAX_PAYLOAD) {
 		FC_LPORT_DBG(lport, "FLOGI bad mfs:%hu response, "
-			     "lport->mfs:%hu\n", mfs, lport->mfs);
+			     "lport->mfs:%u\n", mfs, lport->mfs);
 		fc_lport_error(lport, fp);
 		goto out;
 	}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210503164252.2854487-24-sashal%40kernel.org.
