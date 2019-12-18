Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6MM43XQKGQEGPWDBUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id E84A1123CB1
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 02:52:58 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id e11sf431904otq.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 17:52:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576633977; cv=pass;
        d=google.com; s=arc-20160816;
        b=lwtAXH4MVjLqxoHM58LFM6Xlntytw4IMXjz27ubWot3XuKaBk0SWPlEI7ch9AdkGzZ
         xuO01Eq94btrvIu3/mqWKthDOBY+FrAKBf4xYy8jV23ceP5zjogvVGbYpeVWG96NKMQm
         f6NDO19b30nvM+sAx1UZAOT6Ld/3yEODyXFbSaVsJz48rT9IrvDMNvOjlQicvtKhfhXg
         2OBBpqEXRRxzCzhOovAlf2P5c2IlpLiHtjMrshCivry7a8rLFGjf9KVKpUHzXhE28zHw
         JbtWWATsSFNumdCRLFrj0L4MK7Khjnf8mw74b61+ypQXEXA1qaiiPh4Seuq1jGRbzxwB
         CUsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ygR+5tD1QvOCLsozBaP3b3dOJMI//NetwyeicDRuQac=;
        b=nqpjYLWXPbWMfxGKuxCsm7DwCXcZWdIcFNlWRF9lHh7iRfdkXzG3iWUqc4GvyMpPsI
         w9l53DhTmKjhfbj7TXA0e7XCe8EcDtDh4cpzYjDZJ4WGE7ySyAVSc/5EFItwYdQi9Md3
         x9MCLBxmUj1nbb8Z/XEcgidSwdbkIsrYtqZk3QKkfMJ0MvSI2OyK8EJevWde4JwPbFTA
         OSUAJckdmgrfN7nzgEqgtnve986/Djmw+nkilrsop2xLuDByB7mvtjMZdFdsjv7rtusu
         sTVPrhDWhS7/rg9SSA6Wi2x7bOaGyXv/+HKNiLOa1r541Haw48e1gLhWmxvH1ArjmdE5
         6WAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="as//1I4T";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ygR+5tD1QvOCLsozBaP3b3dOJMI//NetwyeicDRuQac=;
        b=pn1RRdDKGbiQHHx5MGFLkCN13HIAgNdkANofXk1fhNH7VV2vvmIBFpVNchdfQTmLPK
         UT5OFd7jEut3mdvAB4EBzZCku5WzXjifBCr9BwozBCDQ5MP/ZpO/68rf0U8+6rHgEbqV
         ONplm1jg2N97p8Nqborl34ZTg5o1FE2Cix+2gMsNwbnc4oxZj3TI7bGqvqjP5ktg4GQg
         bRcmF6x8MlxxeTO7xYOiVkDfuENOOd15WlK6B9Pvyuff2ux7quDthOVCjBHAk1RieJZs
         C7Ps6aAikkFQiV8W4ii84DeqwEjr8qGJKTo/bg5KCpG8/WEO/+fx8+WReMYy0zalcJHS
         pdyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ygR+5tD1QvOCLsozBaP3b3dOJMI//NetwyeicDRuQac=;
        b=WdNqZSauOulNDp+aWyhzVU3usUbE/4KNgl/iT7Oo5NQi6For2EzcPTWylU5VYYvSC2
         ksgUv2Y6BEKbz4QA6nRaBjJcUjQr2fioRGAfGZEUhl5weAMcfF5bVUEeTTTzaARHioux
         +RGSRyrCRsyH49Lf9ZdpDn/tv+yZyknZ046pNkPR87gHP+QrQnNbBiq2nRo9EUBYeAlz
         d0oWehW1CJ5IYqjjFLdzQOjWauyoP6aDYFBHLETlmFSX1WBR/CofB+xH1Nkp6ctW+K9s
         sMKrqpm2giZRMy10errPjvspZ3MTSQwLDHVTkPlKy9IPt2l4n7hDFi8Q0bUm0isL9FGW
         DiRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ygR+5tD1QvOCLsozBaP3b3dOJMI//NetwyeicDRuQac=;
        b=nRkp4yg7behS/CRXjab0H0WoYUJtKuzovYbuKl5KqkCcnn+ggEpe2+WeukzywOSD/V
         OSexc1yrdAbjvrrOVc3Z1iDq64kcco2QT7mDlckZSkbNhbkxgddzQsQ59QUDkd/a7w5R
         bqSbQ/iRrycgQ/VFF3y5KA/xKraKk+2puuEgRr79bMObxxOvM2sOw4fpyB8vqVkZPFG0
         7v9QC4TBlWlcR00MVkZb95TzH8IimkdlqMBveVIDDkZnXozclQfRoqXXvhIGkfOAb48C
         yQiuCYCC79V51CzqjCgsV4vmWcSx3KgURnH6rF5j6PVHQHN3ppw1jfdUcc8FlaEUKlX7
         d32w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVMiVPy9nAXdU5v0F06M5o2U9guB5xXuJe6Rwq7i3u5EYVN+nZm
	6pCiDkPf/KSSKSex3OKtg3I=
X-Google-Smtp-Source: APXvYqxBGtgJ7cJ3JvmtlNzB6qmL0h/4X0oWLeHESv/NBsLJDkn5yDd4e+aXzpCEAUBRyltPqC1ELw==
X-Received: by 2002:a9d:2965:: with SMTP id d92mr283005otb.175.1576633977799;
        Tue, 17 Dec 2019 17:52:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4b88:: with SMTP id k8ls203547otf.8.gmail; Tue, 17 Dec
 2019 17:52:57 -0800 (PST)
X-Received: by 2002:a05:6830:10d5:: with SMTP id z21mr369191oto.30.1576633977495;
        Tue, 17 Dec 2019 17:52:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576633977; cv=none;
        d=google.com; s=arc-20160816;
        b=0+xbpojedRiLazXumwWJ9WOAtftIJx8wjdub5nHgiL7ITQ+AsVz/S0GTFWlOTpoSdE
         fL9TmNysOE8iJZRpk6rv8+cKu04+hLw2HiQO3x2P2VNBpHC6919BIA25GEOuFn+6Vn8Q
         M7GtpDwCP+6LVITj5hvuWFb3IFwqHfeK7X4HUnRR0iVxmSYqujHxAzFnHCkRMTZV+IJn
         rgFWQW+k39uIiJlxYmGu6F5gfTUTOVbJjebHHQ49Al4bbxjfR/OnCIj9kfjP/5K3+6UO
         rS66xHIcsCkkcv6dXzouQOwrF8WsWmgMaMuCEmDX71/Mi1Keh5HxrnOr6JRJDvXB8PqX
         evUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=5JPROeomugbS9mLeFJJ5jabbve8scXzl7BwrEThoADw=;
        b=BipOSGvu5UXqAHdjCjW1Fh6xXgSOAO1Yn1CxPEn4BqRGNmX1XEz9RBrg5tiXyRNoCj
         ukRCKY6j66C5bmbB5f32TLEByyg8Q/depdnKjKqd4LZhyzhMvLPfRpgsZalOlfhKDFw9
         gbeLbuEg22S7AKudnLmq8i+D6ELIuDDY+IWYerVK83Kb7R/6Mv6jOISU2J/szhXIAOte
         Kh0L/zuS99GxyMwW4WHXM+nWa5necBfnJp5uMRJVJoOmRusCHtSx71e+Zuu13jIzy64G
         iqmXHQ5SR79HiLnntN9garcFZIwseYAOs9/Dpo1/n0wuqcXnlmfc6Y3ngDQbnlmbmcCy
         ysXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="as//1I4T";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id l1si39189otn.1.2019.12.17.17.52.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 17:52:57 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id w1so366037otg.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 17:52:57 -0800 (PST)
X-Received: by 2002:a9d:7b50:: with SMTP id f16mr364425oto.18.1576633977191;
        Tue, 17 Dec 2019 17:52:57 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r205sm269702oih.54.2019.12.17.17.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 17:52:56 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: QLogic-Storage-Upstream@qlogic.com,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] scsi: qla4xxx: Adjust indentation in qla4xxx_mem_free
Date: Tue, 17 Dec 2019 18:52:52 -0700
Message-Id: <20191218015252.20890-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="as//1I4T";       spf=pass
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

../drivers/scsi/qla4xxx/ql4_os.c:4148:3: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
         if (ha->fw_dump)
         ^
../drivers/scsi/qla4xxx/ql4_os.c:4144:2: note: previous statement is
here
        if (ha->queues)
        ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: 068237c87c64 ("[SCSI] qla4xxx: Capture minidump for ISP82XX on firmware failure")
Link: https://github.com/ClangBuiltLinux/linux/issues/819
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/scsi/qla4xxx/ql4_os.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
index 2323432a0edb..5504ab11decc 100644
--- a/drivers/scsi/qla4xxx/ql4_os.c
+++ b/drivers/scsi/qla4xxx/ql4_os.c
@@ -4145,7 +4145,7 @@ static void qla4xxx_mem_free(struct scsi_qla_host *ha)
 		dma_free_coherent(&ha->pdev->dev, ha->queues_len, ha->queues,
 				  ha->queues_dma);
 
-	 if (ha->fw_dump)
+	if (ha->fw_dump)
 		vfree(ha->fw_dump);
 
 	ha->queues_len = 0;
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218015252.20890-1-natechancellor%40gmail.com.
