Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBA4HW74AKGQERYH3YHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BF721F43C
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:39:00 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id h75sf11674228pfe.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:39:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737539; cv=pass;
        d=google.com; s=arc-20160816;
        b=krx/c7NtgFz/OVx0si3nK8H0P0JgeHxND2NS9rphrmdROhM+GSbpf1fJoXnXTZkX1L
         tZuiIb0vylxrY+2JxoJPfgOJ3Gom+ezbQRvtpab88kKL7nGHI6jSYzMqQwb9WhSwUn7F
         AuHJGZcN6kXS1FqMOPt2LDCp3osvNenNj2RLGp8CdOhQyEsR1gB3+SMskQAvufDTZWCE
         FtHTlao84A5cFFrCjd5WUK6jBFPQC+q7HyUWS1DL0hDAAQlEzsUt1o940WGxZhCqqY3q
         aUqXB2W/tIYyDJc5zXa4HZWGSoze6HZ5mafIQSdYLLqZu6WW0f/i2IXJdPB+iT/kpDBy
         9k1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EgjcGQTj9ggB5gtfC50OD76PC7Eb0ppgHEpVPWXald4=;
        b=JG1n6iQ+35XbriDvc+UDKnCRlg+3UqOOKbfZjEwqgMLUTMTzer9M5IOhJeuEVJOpdZ
         JyqXpxm2S0vaU1IxYa2oYo/BwLiR/+BR0OKPUX8P2Yl+cHS8lAEY6T0CleHL/Ze4WtiZ
         QShbZV6wjXUm+uoO4H1E+PbqtLMyHZQ7VIWrzivQDVfZHR1br57C/S9XI4qV+c+R3Nyy
         8Kqr2pGR+eOLeeziuLpIjAHV0MlUzVEu/rGCJc5Z7uE+n2VHfQbIEbvUKbDw4Q/zx766
         4DFUaMTfVlolGtTW3BrgOJsR9vsgZo/XDTInbF574kWjS8K5MP+i+ltruNOM6FUsv4OF
         kvJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="ZN/xzYBT";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EgjcGQTj9ggB5gtfC50OD76PC7Eb0ppgHEpVPWXald4=;
        b=XGfz3j9LvZSuY/aEnXyOtx49crGA4PuTNBh72xPDqslCFJB9A8hzdcH11xngRvObf8
         bVG1t3YI1NLeKTWfAK56QmQ7IY1htc5rSPGWV2A2cSwo5LdaeiYWn8e/FaU3U9m8TZHj
         HM7PaETAHmp9ZapfpTl/84qvVh1q+LZKqDtguyxr4YR14wng86c616Dfi4DGh1aXGWYu
         cVMu6onuwXt++PuQNF98slyG4PDXGmfvmAhTNgVaYxpAu/NvFre3i9GMEMHzMYJA/wJv
         whZnffX09WobTTruyZFrPZnnUq5ZHYFaZYWBUSMhWORitL8NxjPCYuTQ07jbqB08FbmA
         VT4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EgjcGQTj9ggB5gtfC50OD76PC7Eb0ppgHEpVPWXald4=;
        b=uFx7ER8Cvo1LEPjaOlKNvbeUcoCzN8G6QpSVDLI97b/EH+aPBwa7CWheMZjGWkc5Ef
         CrOS3q4jwTNdTlZQ1Qsp0zuzuklpYZHTAHPa7a+6aHsY/NQeRe3GBq1FXlabUdpZ9bax
         xApEV7qZFEcoEX0aHndNCatAU3f1KCPT73whI/UKMgN+39nYDg21HLJwYy+Dl29vnasx
         F4fVSDqp+vEKDIdCvKxYdthSdegK35KXjy/473vwOIWtGbQypdGJK7pP9CvX+KrC3GYS
         /1kDDxuDuufatOXaAkly+kFjyxAYmnTJt0SK6d1PiqcNfeW9PoeFgR4S6oejAPw2piFv
         xQNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313GFnj7SSUX1m8SqaHuf8L8ToLXX4NbmPjIr76MAjOLKx8Dg4Y
	VKsOdy6+lBDucb7gQc2Qdds=
X-Google-Smtp-Source: ABdhPJwP/w0RZRjYIFFaY2wMw+Ft4oMAtF5PZEo2PWp9h4DJMP/XdBLmbPL86j/foJVhpNXpmtzE1w==
X-Received: by 2002:a17:902:c402:: with SMTP id k2mr4137284plk.184.1594737539643;
        Tue, 14 Jul 2020 07:38:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1b4d:: with SMTP id q71ls1689878pjq.2.gmail; Tue, 14
 Jul 2020 07:38:59 -0700 (PDT)
X-Received: by 2002:a17:90b:f05:: with SMTP id br5mr5092325pjb.42.1594737539180;
        Tue, 14 Jul 2020 07:38:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737539; cv=none;
        d=google.com; s=arc-20160816;
        b=VdDgEG26IOXesQ1NsYKokhnJyXiiK1LQZtMRnvt+DzV4cJ8RpsdgAebMBJVb+B2BcW
         J40KS89YK+NzOXL9aj4ItXsccuuzUlz9PkGmI4SdezJFciesIQqRMgKhgDvYtS9RSvfv
         7w3jCAYjLKXGDn+DFsGqG0dxeeXaNIUWIaoil1OdSZK1Xw5jXnTmssFi6IwSwO9Z6Upp
         5ygYsRNH5yDQirMjyHsm16t4qvfCfaynwrqXhdTvPy6wX+kJVEBiYX20wJD22Ksqne94
         IK6VLAeu1mwQAewcJQHYSBVXIIQDO7whHe2i3OprWqmZ5wSeeUYG79Af4Ny3S7rfoedC
         tbIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sgVN54p2su9pO33vsqdwlxTXBKPMEIN8OD3jLkncWD8=;
        b=uDrxjD4BeXkO1QJgC4gbLTp08o/cA/2Yhr6fkTW2Nq/RfH7juiQUlQQmqG+cdoZoqJ
         jLKggbKNxdub1bgDMk/+2I1EwhD/xH3z3oCdU9DDdtkxiZOFlN3mn5ctsctGWntmS3pW
         /o5V1ASa5aNEQMS++gURNybj8DTSKRAs1E+lvMDCU1n9AnCK41pcqd68S9Xvq98qUY4i
         G0357treSuFVo/IvP/nkUqoYxi4SXOZmhsE9rKCPVD/o7QPE+RzHfij5HEOAFBmw5Frm
         GQKNFDe8XuZ3YgYsMVx6jzcXZkN6jwgcRO/3sTbqk8yNv/5ViBP8AjK3oZAOO7SCWg3A
         BScA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="ZN/xzYBT";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e22si88057pjr.0.2020.07.14.07.38.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:38:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 194E2222C8;
	Tue, 14 Jul 2020 14:38:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	James Bottomley <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 07/19] scsi: scsi_transport_spi: Fix function pointer check
Date: Tue, 14 Jul 2020 10:38:37 -0400
Message-Id: <20200714143849.4035283-7-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714143849.4035283-1-sashal@kernel.org>
References: <20200714143849.4035283-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="ZN/xzYBT";       spf=pass
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

From: Tom Rix <trix@redhat.com>

[ Upstream commit 5aee52c44d9170591df65fafa1cd408acc1225ce ]

clang static analysis flags several null function pointer problems.

drivers/scsi/scsi_transport_spi.c:374:1: warning: Called function pointer is null (null dereference) [core.CallAndMessage]
spi_transport_max_attr(offset, "%d\n");
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reviewing the store_spi_store_max macro

	if (i->f->set_##field)
		return -EINVAL;

should be

	if (!i->f->set_##field)
		return -EINVAL;

Link: https://lore.kernel.org/r/20200627133242.21618-1-trix@redhat.com
Reviewed-by: James Bottomley <jejb@linux.ibm.com>
Signed-off-by: Tom Rix <trix@redhat.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_spi.c b/drivers/scsi/scsi_transport_spi.c
index f8661062ef954..f3d5b1bbd5aa7 100644
--- a/drivers/scsi/scsi_transport_spi.c
+++ b/drivers/scsi/scsi_transport_spi.c
@@ -339,7 +339,7 @@ store_spi_transport_##field(struct device *dev, 			\
 	struct spi_transport_attrs *tp					\
 		= (struct spi_transport_attrs *)&starget->starget_data;	\
 									\
-	if (i->f->set_##field)						\
+	if (!i->f->set_##field)						\
 		return -EINVAL;						\
 	val = simple_strtoul(buf, NULL, 0);				\
 	if (val > tp->max_##field)					\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714143849.4035283-7-sashal%40kernel.org.
