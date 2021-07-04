Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBBMARGDQMGQEDCN6CHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC423BB1A7
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:11:02 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id t5-20020a17090a4485b029016f7fcb8a3dsf8544868pjg.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:11:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440261; cv=pass;
        d=google.com; s=arc-20160816;
        b=QeM1X3eCplijIyztSXZD54Thx14TfmLHHIC5jqX2wiimvy+5I/yuP7A5Eepcz/fq3c
         JV4HmMslh2VSzwtk79FQQLzJp5Uds4F+dVP2kqmHOaGT4w+xyhzUbPX3SRlVDgHbPVql
         ownU6h0tlro8GzzwJ620BDxojF5rFnTG7eshpaZ7/IIVwTk5uTi5ArDGmofr0YFyInIh
         awj+HbQyYf/JQmzJ/+jBZOrT7SQXFj/vfa+xt7UrQorkzlz8HnE1bEMBoNSqfdWo7ls/
         FHM+gzMQ4bmIkAsJNrV6AajpcLHBSKNHoauchX/lwvjxfkHS41QRF4zpf0ajX+ef1t2k
         je+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RVSsa/fBnzL11qqqUo/b9YfhHd56u1DOmBxZyjaVlkU=;
        b=JCofjUOekQWw/iMfBaDqrfUG+OFtKZVlYV17WkAWFV9mUhjHm+gfYGYF5h6TO6ay2v
         wMYd2xWg0p2I0Rwt6t/sp/46elmFGVQiqOm/V6OlwCbkx5xC3TKGsUOtWDAkAHhneDVd
         89XPrnde+o+wXhYl5U54S2PCwoaN500gqzEBLrwNReqGE7m1rzUeyt7urTWm8aa2Wxhc
         h3QCzMCEdW55tdBdC0Q/WJxfUA1cUvb6VW56f0+IpNS70jieWqNq8JUOdK0/HyI6kzlz
         tpb7WEe45BWXoKnMYA7Z66DXEKuWd7IeiJp7NxhFxzUyNs560t6cGtwtDls352HXzYao
         9FFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AbXdO81q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RVSsa/fBnzL11qqqUo/b9YfhHd56u1DOmBxZyjaVlkU=;
        b=lggtXLWi1EUaMq9h1felePV+sKVILIzKu4QKVXKMmFNyuk8/+yFnYE7hCtyEwQfh5I
         5bKdqY/ZmV+eb2+9zkZhe6HDTc0uvzsB/6vtnLVZRY7PUqBHw2A8GAR/m86862utUMnr
         fUOAYIbYXPiv1cYd2BRgekCa6rMJMEUQWc9lKAjL7ecCJbmvkxkHF1Rz6fj+KYj7rkzh
         /g136JEi28nuX+Zc0maY1+EpHddrteUoNAc5Qgf2BwbsdBgzL7Vi8l3T93IzPXWiaWYs
         H7irn0rbc/Hj2yFuFybHsk0IuNRZuDT3x6qER9tgmqO4XPy62VFxlJSdJQn3VqS+UwLJ
         iBAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RVSsa/fBnzL11qqqUo/b9YfhHd56u1DOmBxZyjaVlkU=;
        b=jNEg04h1qJJkwJjJsiyb8eb3jo8IKX1u0SueK/3lKhIDjVTU7H8imZ07bhhHoKEibw
         uvKC/mPxTu+uVgqoexv2zgS7SjBnS62tqx73NsQufOZDYLyro+9L8vAGTQaihOUbfzTO
         rb6nOMvkQzBvRY1tUq53eZGqmtsUiJ3Lz2D2zTdXi+QUNoPKwa5dQuGuBcUhtyryOu9F
         VJa7Oxr75liV9hh2tQfRL6P4WrgkWb/s5IyWpAuStNyOpdFwm0woCYXGaxPhePZSG8rH
         B4n2ye6PAb/EtgH65fRvGsH/PsUNqzBzPiN6MZFWZuPK5HBNP/4y/ToLL4uv3sp9hxwP
         0fkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327lOD10tCXmgzYsbOoNuryHwPXJ86kbwECiGFTyc2Y/K2wcL61
	3/OTtAx5RKqSW9CXLklNUkc=
X-Google-Smtp-Source: ABdhPJwu+cQGo0qKqhvj5UhyO6EsfBmk8/BudOIesZsD8JwpTzynWEO//23rw9BdnywOmPGDBn7ing==
X-Received: by 2002:a05:6a00:179e:b029:2e9:e53:198d with SMTP id s30-20020a056a00179eb02902e90e53198dmr12193950pfg.72.1625440261482;
        Sun, 04 Jul 2021 16:11:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8609:: with SMTP id f9ls8021510plo.5.gmail; Sun, 04
 Jul 2021 16:11:01 -0700 (PDT)
X-Received: by 2002:a17:902:a606:b029:129:5b58:8de4 with SMTP id u6-20020a170902a606b02901295b588de4mr9286414plq.24.1625440260938;
        Sun, 04 Jul 2021 16:11:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440260; cv=none;
        d=google.com; s=arc-20160816;
        b=f+slB1CMfQmh+p9d5kzaQfYuP5F2wW3DV3zP4mKtMJzwVNUrFN1fOj0jWFzI6NPR0Z
         G0V1G9IKYaeT4GX2Rw8oUDNI0nOI6Z5lxJar5u8bR5wcWDvO1qdpspRwfkQgEDBrA21E
         VFCqg8m9xcC3Ws9fAFDOGHIf/gPlpMKoZyEcVnqK4FOcP7w5UFAvvwNKp/UaDKcGadPe
         FxOhJHK7cGJ7btkeylH84D3i8p41i3/px4iLmrD+UgQJA3BeWlC/gvKkcB9f5xZB3HtO
         zL0N8ij31oGfcYv05Gw87ca78b+fVTs4xWti4dJJE8T0XeahfYSfnln07NdgJoQd+a79
         BNPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sjczYipd2i0O1iecT52os4MnfBMKm/vdZkUNBnXVEig=;
        b=TNETFyLXMbgN7jBar7Xji9xugMA3h+Gyiw4hSrlKqGjAKjkjv2njXB9/IW68C76CmC
         9sHlum3i2XXt++dMuzPiyLqgd8jOD0gdlPetXgfrCfHEXENvHr4ER3vCOT0nnFqkwoiw
         KYOmHVll5EvkDVpN1tL0W23QHwSA6gZr+x2Ukqvdg9ElvqJqVl3SOOsR8GdWE0xSEczn
         DD+OBABgpmiyBEWa7jfqrNu8eEdt3zRJfljmnKg7SqMF5vqPQ36l5QiRodqSprEUV5FR
         oua4SJX21jt2JTtm3hc1GZt71+lAZk0P9cUNt9ZKITNwCJynomW00qmQPxwyLh3giVhY
         HQ9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AbXdO81q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q7si1266461pgf.3.2021.07.04.16.11.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:11:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AD1216199C;
	Sun,  4 Jul 2021 23:10:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jack Xu <jack.xu@intel.com>,
	Zhehui Xiang <zhehui.xiang@intel.com>,
	Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	qat-linux@intel.com,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 13/31] crypto: qat - check return code of qat_hal_rd_rel_reg()
Date: Sun,  4 Jul 2021 19:10:25 -0400
Message-Id: <20210704231043.1491209-13-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704231043.1491209-1-sashal@kernel.org>
References: <20210704231043.1491209-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AbXdO81q;       spf=pass
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

From: Jack Xu <jack.xu@intel.com>

[ Upstream commit 96b57229209490c8bca4335b01a426a96173dc56 ]

Check the return code of the function qat_hal_rd_rel_reg() and return it
to the caller.

This is to fix the following warning when compiling the driver with
clang scan-build:

    drivers/crypto/qat/qat_common/qat_hal.c:1436:2: warning: 6th function call argument is an uninitialized value

Signed-off-by: Jack Xu <jack.xu@intel.com>
Co-developed-by: Zhehui Xiang <zhehui.xiang@intel.com>
Signed-off-by: Zhehui Xiang <zhehui.xiang@intel.com>
Reviewed-by: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/qat/qat_common/qat_hal.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/qat/qat_common/qat_hal.c b/drivers/crypto/qat/qat_common/qat_hal.c
index dac130bb807a..eda692271f0c 100644
--- a/drivers/crypto/qat/qat_common/qat_hal.c
+++ b/drivers/crypto/qat/qat_common/qat_hal.c
@@ -1256,7 +1256,11 @@ static int qat_hal_put_rel_wr_xfer(struct icp_qat_fw_loader_handle *handle,
 		pr_err("QAT: bad xfrAddr=0x%x\n", xfr_addr);
 		return -EINVAL;
 	}
-	qat_hal_rd_rel_reg(handle, ae, ctx, ICP_GPB_REL, gprnum, &gprval);
+	status = qat_hal_rd_rel_reg(handle, ae, ctx, ICP_GPB_REL, gprnum, &gprval);
+	if (status) {
+		pr_err("QAT: failed to read register");
+		return status;
+	}
 	gpr_addr = qat_hal_get_reg_addr(ICP_GPB_REL, gprnum);
 	data16low = 0xffff & data;
 	data16hi = 0xffff & (data >> 0x10);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704231043.1491209-13-sashal%40kernel.org.
