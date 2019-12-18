Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNEK43XQKGQEXFUYZJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2A1123CA4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 02:47:33 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id b6sf129389pjp.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 17:47:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576633652; cv=pass;
        d=google.com; s=arc-20160816;
        b=xzf/3HFuU8Wz3/GVGHOuplPORqeCWSaPlhOs6dfwAtpziFvU0f4Hj0iMNIO6fmgZSk
         kELebMejY8N7enps9LrmX8xcBrTqLZtcG7bzO5lLGL1cPdsiBQAV1R8E6JdDZLGVHEfI
         0wDG7eVN31apfMhf8dSxZZxr3SvRq7qTHEa0fAfnh+KFbSEkNmLpqdTqPN4sa0/jkmwZ
         LFKaOgl8HNiFJKh8L2gaOmnTF1vMgJS792gIiLbGVKq4RxiRHQIAQW1i4onogUzVbf7v
         5G8bZMiC45WekZM+Cd7BrgGtIlHs6rF4+6blvsAzXfvSxi4xRSD/9UlEDeg5JCaSipNB
         +upA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=qKTI8A/LnREMdK7FN5jpPjsuV2UxNl9fUg5P4mRcHaM=;
        b=odqvWfFoUlzp7mmAGKObsi3LnZQpmP/zQ9tw8YkVOuePcL5vfCN9hS1N7JCUqTPC9Y
         UTiw7mGZKBqcYmtOBAWBY9Ah7KkzkJxt+aLhK63F/FkVyT9FL59Wm7Y+ZZyWGQ9v9Qyh
         ss7cFJ4oxZfpD6nPEcUoA/DmfgdIMsy0SWKMuYjxmH/acbKHugWZKOdx9S9TvYJSD0oQ
         VFSjpDa1SkLEfvS6tHWyd6KLdRhrpfc8BaG874Ftyjfu/C4RneFuzu2EvGdqv1zHzf+J
         j2rLCQeGQHGG7agJQUjUS43WgTuMWJAYVPzWm9qaTYs9H/qpgdoMY40BEPW0siWC003z
         9+Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ejtmUYb4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qKTI8A/LnREMdK7FN5jpPjsuV2UxNl9fUg5P4mRcHaM=;
        b=ru/LH/TOWlivmgfZ3VvdpTHPip3L/odtEZ+Q1XhgN1mzvg+DooQU2iGe+UQzvHFoQD
         oq/hoCLqFAdsJf2zIrpA7+qc4Q6HgO/nXHB03JyicgZ5Ll2T/UK+NwPiHgF6O6PY330S
         j74D/cjx/b0yOfPEhJyhT+rv7lOaVnr2wquLYMhnYq9tUgR5y9EhvBc5ci0i9REZ8nQT
         9shthoXKdT/HWu0PXgi4TkfSb3c3NgrZLNnYMiItkzUWUds9W9h7QDcs3hcSQYgDaUQk
         oOFCrYAJV9+rbk79ZYsbkdYyKERQnZnWUnneRRVDxYgbPPMXYYCeqjwmU8eMwVucXP+h
         VSMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qKTI8A/LnREMdK7FN5jpPjsuV2UxNl9fUg5P4mRcHaM=;
        b=EDb27ytMMQ8zsT5Sv1j6FuUCzJ6yoKosbhwlE6CFFgVOSR//ziIVyuqKUymRAsMhab
         co5ThUAjL/9txPm9BqP1R8cjJSpou9Fg1ijXBzr9fZi8Wgd5nOf/mn1H7XusCcXIsFKr
         X3LoP8Laq5BOlcVnFPCAqs9xiJoLFwSdjFzXxSuiCKi0GPdq/cvEssUia9f7e31IQyVM
         ZQXbpB2iuAMEI5cf1t2tPJJb08Q0tY7ahMj5poueqlOuSLLMIs2NwbVGWdRiiIYtG4LO
         mQ+Sz0HCDB5VU4uFzreW0OrFlVNGpC+n91p6U7z0qkfpUVgaFYSMPIRhBF4onxAYiHsg
         kM6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qKTI8A/LnREMdK7FN5jpPjsuV2UxNl9fUg5P4mRcHaM=;
        b=ixUcQDtvHibqP0q2pZug8IRizb1Smfi662msah1rLOFQCqmFj9Ll2k/gUj1W192BaU
         +SqVag78tBG/hFLF3DTFPYg3x40CP9M2xhXpxOcDtaJpC7xV2j19mbj18LN7uPywmjs2
         o2Rc9evi/Pr89p6CM2Wadnx+7ORP2AcABVXbWZrvXhuwgOkS9N8GDYraL01ksUJ1pnfd
         xbJ077d+4KWio4pflTc6nu165G3D71G7VLyC/gy9lPu9H0fkkDoyy848aB3582WgyGEr
         FD0wro9AB0FPEVkpyPn2C+aTwxuyY4g6RgEQEy3J2/NsbVRWvt8AysNoO6t50dw2wkKy
         1blw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXKzfJ3A8oPVPBOe1zz9+j0ja4ttc3gcWt3DNt81Y8CgEnIO/3o
	6SfKzyuoCo61OGVmzspyngU=
X-Google-Smtp-Source: APXvYqxASkh/r5TNkLn5Y9hi4mL4SpEurCHg6QHLCXwZXDlcQ8GCtPI5rUaBfyJ8T0J4wnwyqfGD6A==
X-Received: by 2002:a17:902:d902:: with SMTP id c2mr1279743plz.188.1576633652071;
        Tue, 17 Dec 2019 17:47:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4948:: with SMTP id q8ls85363pgs.12.gmail; Tue, 17 Dec
 2019 17:47:31 -0800 (PST)
X-Received: by 2002:a63:1756:: with SMTP id 22mr583509pgx.109.1576633651582;
        Tue, 17 Dec 2019 17:47:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576633651; cv=none;
        d=google.com; s=arc-20160816;
        b=efwxeecwmzXDwE+fwy14pv+RNp2HnxtVUExusJpho0lioNtlYBkRB0Savs60yiILrx
         MRsMUQrSjO8Hj7NvKUszYVXX5994zk8UuLmv8RQmLRSRPXdeZKL0ZfpZHr4kbu0h2xr9
         aPHDLNPZpwL49hBQ+Ke/xBrCE4mQeFveK8ULMKIZoFSP/6lqBbfhvz9MSna/ySE9x0l4
         jC9BNmUP/+AmeLu9sjUvY9APCbm7vEIZkeYZXFbWLzlPnv51go9mB2FlgWTJzXbber1C
         naMid01yKMIs8s+ofuVysWSsP7h9Dvim3VN+EGcpEQJcm+yosVY85UmJ8i1q1iufh9+E
         odrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fK7652sfa7E29q2xM3IFKXXWsa6prHuIfKMbUEKFJ90=;
        b=kPmN1uSPsRk1CqUirRiU6nZDHv2aO/1BCEV46VdS0vBWhwfXydEgLJ9b6N+9Z/UZaM
         qPuzkWcF9XSePB6EtSPN6mXIx/yks6TAwWH0jx1Ze6mnWADcbyCl82EqmvW3pDD1Y64K
         0cs6/8FpSbquWbsVmjBNcx+nw0gvHkXA4eLxzhs2KsFLl6Duc+SSFAdotQ23Zc89/o1W
         sXvJgcZ7wf/F+H4N/DCfrA5SCOb768HMs7ItQBYZE+gxvGFyrDoYJE16/CAwiJqZpAhO
         Bl3jBHm4VjnqJpvzsx4fTUDHtjrj40DtFTIxfWKtPiTtRnRUhRVJWJTL8/qp9Bqa4LAi
         nS3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ejtmUYb4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id 65si40896pfx.5.2019.12.17.17.47.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 17:47:31 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id b18so367303otp.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 17:47:31 -0800 (PST)
X-Received: by 2002:a9d:7495:: with SMTP id t21mr335119otk.86.1576633650807;
        Tue, 17 Dec 2019 17:47:30 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z12sm237462oti.22.2019.12.17.17.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 17:47:30 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] scsi: csiostor: Adjust indentation in csio_device_reset
Date: Tue, 17 Dec 2019 18:47:26 -0700
Message-Id: <20191218014726.8455-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ejtmUYb4;       spf=pass
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

../drivers/scsi/csiostor/csio_scsi.c:1386:3: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
         csio_lnodes_exit(hw, 1);
         ^
../drivers/scsi/csiostor/csio_scsi.c:1382:2: note: previous statement is
here
        if (*buf != '1')
        ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: a3667aaed569 ("[SCSI] csiostor: Chelsio FCoE offload driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/818
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/scsi/csiostor/csio_scsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/csiostor/csio_scsi.c b/drivers/scsi/csiostor/csio_scsi.c
index 469d0bc9f5fe..00cf33573136 100644
--- a/drivers/scsi/csiostor/csio_scsi.c
+++ b/drivers/scsi/csiostor/csio_scsi.c
@@ -1383,7 +1383,7 @@ csio_device_reset(struct device *dev,
 		return -EINVAL;
 
 	/* Delete NPIV lnodes */
-	 csio_lnodes_exit(hw, 1);
+	csio_lnodes_exit(hw, 1);
 
 	/* Block upper IOs */
 	csio_lnodes_block_request(hw);
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218014726.8455-1-natechancellor%40gmail.com.
