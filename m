Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBSMARGDQMGQEQ4FRPBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7EA3BB1E9
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 01:12:10 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id 127-20020a4a15850000b029024c83573b9dsf7743123oon.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Jul 2021 16:12:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625440329; cv=pass;
        d=google.com; s=arc-20160816;
        b=spFkR9Io0Mmow14gcOQkIdwrAK+p3ADlogC6d5tuHsAsYcmLfqrr7q2JcrtHGexg9S
         g9YJPNuOWbu+92//RpHSDBnNWxzHwj5NlstamIq2iB6uh+hrMLsaJ/QvzhzpkAH7ZorA
         pnVcNW5P7nZsQRtIDdGbo/IjwCa2nCVmY/6ez6eatSd0WE6lBZdX66X/as3vEm/lBDOx
         ZRlTX3pKqveuGfcJGng7Fb59n3mGjpgRhJ6BpCxGfVmy47neLb60vo+Tv3VPXHsxxb/m
         x5OYQ8gdArgptUXo8e0nD4+JeyOC/8u9TsqHSlwS0fDu5xSG83xCh11PfMQIO82fpkzg
         JrQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qjCPyc+JyCZT8gmBecLLJTDI4SjXyfAdLXZqRMabKic=;
        b=u+P5juKE1GAaydDDfFrF0z3CDXg1yWVXEoh9wUw5HcX3r/bc9xINDX3xxWmnbYxb41
         2tgflSijB+RpVX7QSRv4vBS1m3f7zu9II/8AnQU1x7M/oI6g5CGV71chrvhcLKwgu2Ap
         6b5e8s9nYJHUal7SkYHK0fzbCfaQXBNz1mtIIrYoiGTnEhzwpTZ05VXwhsnOX7ojXQBv
         mf7Ts/+MRK+VJj30jvlXmItbQ06Y287NVgIA1yrqCo15J3JpejhWR0+Sh813wlMIgN/D
         n4sywi/48D35zEMDKxTDdxwj+/oca0PuLCBh81kLtxn1UmFivgXwdvStDIABBzVPJ0Kh
         X+FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nqQf2EmE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qjCPyc+JyCZT8gmBecLLJTDI4SjXyfAdLXZqRMabKic=;
        b=jA3sTs/f2diSe+rXcgvx+K1BozFpqpU4OQvKRikx7Ynjz+rbMWzVX5zSGf+l+h2Edz
         rsFgrzf0l9A/rXriR8ffmFr6VxLjhKeuW3pV4paxVgWliPw6pVdswCQYB99QFhymnGEC
         dRPxJzmp5EOBMPkeC2iVzBpuOPgA+pOPvwe749TXfqbygMR7BPK1+pNwBu0jMHTTrEE4
         G4wJAEidtiZCmxSoVLSp2/6AHrs6eY8VpijZG3qcrbOfgboqqfHNMI4mwF51wdT4pw7V
         eRg9Z9C3ojnND7aljrJHpCQIiBmEQLQ40sa+nWmRftQYYCNYhMrbnHxMy8CFjE1Hhtmc
         Ex4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qjCPyc+JyCZT8gmBecLLJTDI4SjXyfAdLXZqRMabKic=;
        b=cGfYZzru8iooNwSe4/rfVfupQJ8NROWXsfDd2lrM4XQHrsqC1aa5/E6HkP+u9aVNEm
         TG/YeczF6Xf/kxMBOZx8tR8Dnd/sqschwV9OIMU+ojRltlFpgv/X91fs2PzQQPf1rAzF
         dCp1/L16bCs4KIiQ652yFnAiUWKfpUObxNjUXinCAkhojk0/7OFWet5r659cAP7s7F8P
         CSJ87YHahKBAeA0t98oq+zxreFb0jEkZyyU74RFdJlWyDV5hfoe1boHmkCduOUKXdm71
         FKmAO0MDN4cZWpjJc0dAcC3C3DofMqnbzttfS3WlZZ+GM9j6BLfevQxcueX8hpk81DMa
         fmFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bpqK053O/7Horpwu4Vo+bWS5WT7npZhVMXwbB8W9+myHQsYuB
	tQ1ieFPLYr/o4pH/3w5Ll6w=
X-Google-Smtp-Source: ABdhPJw3DppGQq/7ihgamjE7RdsMvfNrkxAwPXsAEq5e5vQe3AHcJ+vyFk8yEw77iVEjGPkMuAOdwA==
X-Received: by 2002:aca:f09:: with SMTP id 9mr8106914oip.51.1625440329288;
        Sun, 04 Jul 2021 16:12:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:352:: with SMTP id 76ls1457629otv.0.gmail; Sun, 04 Jul
 2021 16:12:08 -0700 (PDT)
X-Received: by 2002:a9d:2c44:: with SMTP id f62mr8512346otb.147.1625440328854;
        Sun, 04 Jul 2021 16:12:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625440328; cv=none;
        d=google.com; s=arc-20160816;
        b=opu3P4Bhlt1Y9GUsHKggiV4eweQgDMw67dHIZN+znir+sHDVcpUkVgyvZjvQFyR8km
         YBpB274WB7fJc5SlKnQ9GQ3491E317NwYiUmoKqkZzNeeYPQQSP2VYvXQH29wCH07tVn
         Z1Vmqgs90l+vMegcGfh4NTo0H+egDLhaaGQa7RyN0xfw3VGXAxiKzQbmnXCmQFPz+em3
         ZdiID/vo+IVWawSpivSaKW/wBb2NQa/6YhqMqpjvtCLpZgtAawDJEQnPmQ3URxGNw8pL
         TCFAAmBQGFKJdf152xCOYMFvCP7NPBT8jLW50ojgZl64SxFXgIcxbdPamg4g11oZwyTF
         PbtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YOICM+AYca/uSdKORL/vkwtqc/G5Tb8dQTejztB7MOA=;
        b=ROZKkxs82LR5MbvzWUPDjE+vHK0KRuuKxMQLT5DzmwjcleNG/alXCs90Rz47IA43pq
         ehgpasDmcfLmhu8ERGCk80+9sKa+lyU/sfXVlYHam3eTSz80tbqNSKO/Hf6hN4VLBryr
         ih3RU4REBttKEyJ8aADvJ6jJLrJnXolNGn07g8x+yT69KMTIw4+flXE3nQDBUY5Kb6zo
         scGJ4tfW6e7BdyTFH25wPzCD6UdSzHcfX0jb8XWag3VmCQ9ENZ7mybLgE4PgonlBs6bh
         YpSHYyMwm4yfzU7bsu0PK9kY05IhU8Cn0+rSmRYnibwpWAL64A/s7Z0T+T65oQA19r4E
         DImw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nqQf2EmE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b9si1600624ooq.1.2021.07.04.16.12.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Jul 2021 16:12:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 29C5E61879;
	Sun,  4 Jul 2021 23:12:07 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 09/20] crypto: qat - remove unused macro in FW loader
Date: Sun,  4 Jul 2021 19:11:44 -0400
Message-Id: <20210704231155.1491795-9-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210704231155.1491795-1-sashal@kernel.org>
References: <20210704231155.1491795-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nqQf2EmE;       spf=pass
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

[ Upstream commit 9afe77cf25d9670e61b489fd52cc6f75fd7f6803 ]

Remove the unused macro ICP_DH895XCC_PESRAM_BAR_SIZE in the firmware
loader.

This is to fix the following warning when compiling the driver using the
clang compiler with CC=clang W=2:

    drivers/crypto/qat/qat_common/qat_uclo.c:345:9: warning: macro is not used [-Wunused-macros]

Signed-off-by: Jack Xu <jack.xu@intel.com>
Co-developed-by: Zhehui Xiang <zhehui.xiang@intel.com>
Signed-off-by: Zhehui Xiang <zhehui.xiang@intel.com>
Reviewed-by: Giovanni Cabiddu <giovanni.cabiddu@intel.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/qat/qat_common/qat_uclo.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/crypto/qat/qat_common/qat_uclo.c b/drivers/crypto/qat/qat_common/qat_uclo.c
index 4f1cd83bf56f..a8e3191e5185 100644
--- a/drivers/crypto/qat/qat_common/qat_uclo.c
+++ b/drivers/crypto/qat/qat_common/qat_uclo.c
@@ -385,7 +385,6 @@ static int qat_uclo_init_umem_seg(struct icp_qat_fw_loader_handle *handle,
 	return 0;
 }
 
-#define ICP_DH895XCC_PESRAM_BAR_SIZE 0x80000
 static int qat_uclo_init_ae_memory(struct icp_qat_fw_loader_handle *handle,
 				   struct icp_qat_uof_initmem *init_mem)
 {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210704231155.1491795-9-sashal%40kernel.org.
