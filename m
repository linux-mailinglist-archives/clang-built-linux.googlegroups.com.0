Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO6WUH2QKGQEGTQUSWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5AA1BC6EF
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 19:43:24 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id g14sf25320800qts.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 10:43:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588095803; cv=pass;
        d=google.com; s=arc-20160816;
        b=KHLaD/ztz0Dr2SqccJ6Nhwyr12tR5kIAH6lAaJXtE8mbStc5nL0hSpVojAWx3pYdc0
         XLnRM+mEZB7sDHPeu/pxdyQoDGBdCGmVf5HbyLMBIcccH3jSCANR0hYFMnLSf8K+qVsk
         EmwJRbH2LBWiTcUwdPpjMB116rSeqVCWOVzlhBk2Y8E1KjyJczWTkdxxVuop2LXTDJAF
         87B+mMHt3NNyheubOK+QPzJVv8Hnep9Q+ZvxkDhMG34GM2/2zb5XhmWLIR8Lo+Dbuk/d
         AOBTfwufvc3xYM7HXiWIRKj71E5wS3OtHfhSAy7IorWMWtb2uqPPPPkZS2Bz2xUqHFwl
         aevA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=H1BpW2zogm1fuRlDj0FaE8BLe47PXrNWAYpMu/Yttnk=;
        b=RXhX5nvIa45bGXvXB8jb1hdA+wcWALjcMA4SBrq6fyaxd1wdRgJWcrSEoxR1PZphk0
         YI7aBKnrH7Rz8VJXzm4QK39cpqvO3p2lbEcRNOh/d2Vt1YrEeLxct6O7uJvfgS0LCJ6p
         lG8Yc+HHYXPTST2ue5/sXhfEXMmzwJs99Yj9BaN98kGzvwl4EmHhKKi62V7VSsGw+LP/
         cA14AB01mQNMt/T7Vf9Dh9lQgiOapcO58EABJhJ9FMB4ue3ixZxA55jmNawfP2fShnIP
         Dh4e1LjQr8pB4OIalndq0dgdkH07q49qxleTsGv3fUNA7EN30eS6wueOfy7d8HFIHe4v
         OSWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EOGYYCPy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H1BpW2zogm1fuRlDj0FaE8BLe47PXrNWAYpMu/Yttnk=;
        b=LB6ExG08J2aFsUCILqiLyovE5p3hnDSPDfEbNQdr05HKIOGSQgQurMXD0OvXq0Q6Uv
         41DyzB7jCpqsSRuPPj12d3QH31Ihb/AuvSLCYl67q5OP61JLe4FAd8nve6wX/z8fLlm7
         Zh9kmjDZ2xSn5U+wCcgJXehtVOQbKYt178nk3hnARQd6ftWQEE8DBrapPZYwxtWGK1WV
         0nw6HRL1hkCwMpWzEv0Ut6+7B4ge/cX05UEAUfZKSL4GflbNnFLz1AOmrXJ++XX5VcqI
         tU+ApHBWc2cP4YgrEfwYmakAFkF+n4qrqi1wWvvs4cW/COh0RtH3mpvdIyj/XQYBLpY1
         0A3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H1BpW2zogm1fuRlDj0FaE8BLe47PXrNWAYpMu/Yttnk=;
        b=ghGxfRENxFXnL3i4JS15AW5krv3qg8vAtSveJvKIeOAd/EvnNmal998JFM2gydCIel
         SKEtoTAgPgViXdjJoct+i1reDQVXFeVd7WBhXqmU+9X/Pah/BhmG4GTDIKtmkDMtvfLB
         76HxCC3DZvbhkpolJz9I/RLyCHsiK3OxzO7IysGSMoDDVxfuEgUOEHoTvHhCxQHOeUFP
         QIL7mOHmdu1pHl2cpSlN8aR6qV2QWuRNNtt4jVg4tP8bWrNx9cMDizxsfZz9oEkpBMb7
         JemFEAj+7+SEPCVGBzotCdjJPtgx3Rq+9RgmbI15dV3pBKn/omZhcmpxR7jUuCugyMIA
         8YwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H1BpW2zogm1fuRlDj0FaE8BLe47PXrNWAYpMu/Yttnk=;
        b=apC59SUisWrO3W37CnLvQIp7jG014Jgb+3Yv/fXRA5lRj1n/3LBwaS/Ie38DfcU/3O
         HPKk2SVfVPwZdx6pr+xU01oLtCVrCOIOVPIU4qTW+rj0TIfpYYRZ4Z0opu7MADayr2+H
         8qF/TQKsVF9cOL1QdcYVhovGPAsBsqQmnQa2oVdpO6mVefdBGYC1xlAO/OYTDKdXn3kA
         8t5QCB7HM7NmHw53I2zx69y7kiTKvVHEzy23m5Qg3p42fF8Ae4e3oCxBu0JzaAU2ba42
         QnCnOtBxAv7iNDq/mAEt3PwSvwvRW3Szh5XUTRNPGgyciNLXB71enHw6u1tP2GqAYydY
         rVqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZwJpJkbq23YNlKbZNep0zjJdLOtljbxSwQE+XshUFzlw2NY4Mf
	o43VPuh5+926SGENduYXsrs=
X-Google-Smtp-Source: APiQypJ8j9MJ+u5Td14pFS48hU3D73gflGu5Y/sxFWns6yrZ5JYoMTuple1PjjBnrDY8xcbJhr1SHQ==
X-Received: by 2002:a05:620a:941:: with SMTP id w1mr28340252qkw.298.1588095803181;
        Tue, 28 Apr 2020 10:43:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4a74:: with SMTP id cn20ls7631276qvb.0.gmail; Tue, 28
 Apr 2020 10:43:22 -0700 (PDT)
X-Received: by 2002:a05:6214:13e4:: with SMTP id ch4mr29461760qvb.123.1588095802868;
        Tue, 28 Apr 2020 10:43:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588095802; cv=none;
        d=google.com; s=arc-20160816;
        b=dIb7nXo0l7oBnNkeN052Zb028hGwWUON7z3iYHYCicd8wg6PK0dW5AA7f2yvhqS7pW
         4n2XeatykvAGPwNkFSYI9dsoKInHSFWB6r/x+HtfOsVPfipxbOh6wC2M51G3KElfTUt6
         2wissVpcqSd68LkPOZnSmgtsdveXEfdT4gwxX+tAKCcgIxqONpzrrcuZdVEKnRhNU4/y
         mNWOYxxDdsA95HsJtKULEClJU9hJagekM5m/nNbeysADyAr31bYG8EmdOm6qXxO+e2qW
         sYBnLxS5k8x8y70+ssiNffLT7sENG0vOrd7hmj3Bqcg78EE72I9mtzGkS35lnBKmofWY
         mT3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=IGiu43HMKFFPXvkdYpMi3N0FOwselucEcJEG/zdPDIw=;
        b=La16wMxBTSbqoV7VCGebDOpEQxZ1x9MjNfOEp28UjcJ7Px4yL9HeAxsKCRx3Yj+O8T
         KCio47/TTXZOU5rMmswDdoi7YCbhuiksufeDdPgrbp7e6OGiWvnAkV8uGWeZ5E5ECCCd
         41St7BCFhBXzudnv1aR7zTnpmkUoRzMv3SQQFHZAEO9SaPTe4W7uhOEyavBaQqkGffgi
         AGPJ0wKndD9fqy3Za/5t42oTtjWH51aDcnHfU+0rrUeTcgPjoEkwOwguQYU+R6BGydxk
         NURN0NivszpmrCmy4zUkZwXPZPs9BC379BmQS7MTLscLigvSM0PK9620TbTVRjCTF2j5
         EU2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EOGYYCPy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id p9si1620521qtn.1.2020.04.28.10.43.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 10:43:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id m13so34068373otf.6
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 10:43:22 -0700 (PDT)
X-Received: by 2002:a05:6808:28b:: with SMTP id z11mr3803400oic.135.1588095802295;
        Tue, 28 Apr 2020 10:43:22 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w24sm5134900oor.47.2020.04.28.10.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 10:43:21 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Ioana Radulescu <ruxandra.radulescu@nxp.com>,
	"David S. Miller" <davem@davemloft.net>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] dpaa2-eth: Use proper division helper in dpaa2_dbg_ch_show
Date: Tue, 28 Apr 2020 10:42:22 -0700
Message-Id: <20200428174221.2040849-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EOGYYCPy;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building arm32 allmodconfig:

ERROR: modpost: "__aeabi_uldivmod"
[drivers/net/ethernet/freescale/dpaa2/fsl-dpaa2-eth.ko] undefined!

frames and cdan are both of type __u64 (unsigned long long) so we need
to use div64_u64 to avoid this issues.

Fixes: 460fd830dd9d ("dpaa2-eth: add channel stat to debugfs")
Link: https://github.com/ClangBuiltLinux/linux/issues/1012
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-debugfs.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-debugfs.c
index 80291afff3ea..0a31e4268dfb 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-debugfs.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-debugfs.c
@@ -139,7 +139,7 @@ static int dpaa2_dbg_ch_show(struct seq_file *file, void *offset)
 			   ch->stats.dequeue_portal_busy,
 			   ch->stats.frames,
 			   ch->stats.cdan,
-			   ch->stats.frames / ch->stats.cdan,
+			   div64_u64(ch->stats.frames, ch->stats.cdan),
 			   ch->buf_count);
 	}
 

base-commit: 0fd02a5d3eb7020a7e1801f8d7f01891071c85e4
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428174221.2040849-1-natechancellor%40gmail.com.
