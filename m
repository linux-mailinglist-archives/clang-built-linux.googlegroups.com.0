Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBK6HVXXAKGQEM5DBL4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id B6703FA1B1
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:00:12 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id 107sf184391oth.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:00:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610411; cv=pass;
        d=google.com; s=arc-20160816;
        b=RwW018sU8h+qTn/ZVzDZvDPS9CABJymIo1ISLi32nj7oT5dtEOjkk4TidP4uPzmC3M
         ozIVJi1jmwVwOHLdXL3iyyGVLmnj02OlQwlMCDt7J3ugLemrKMDJXOBWRZD29Ss60wbj
         umCVAfTvXj6cO9hVNdF3aASJA3wNpI3YRFS1q6Lms4FLMK1d0dLYSOn43XUNDBG4p6ml
         0/78sV60T7tCrg1fgiZCda4KPnX2fBJOJaTw0C2Qk9Ry/tOQ8PbYrkNpo3UWqy1OKyjP
         GzLI+h2prL/8CZPxMs30rKXYEzbL/c7wrI2OhCW2mEMdsaho8mjRIopvGl2RfVkGKgKR
         SkxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FHF1b9IDvcRNWoeHzCby+vREKpMg10ljZcG9n4Y9X+E=;
        b=lA4q4Klc3AhTJysdJkRKAJytNRLzr/Fh16V6WziLgWJN1Wg9TEe3wW1hdLF+G1UTDZ
         nhHZRjkeZW0ub+HfBtPFD9enkMiaudWdBtD3YyaV7aVsYG4Un3rFA2Ibc5fN+Bes3vfH
         zUAXvVfqPlgUPQVpnpWqIlE3ZBzShiB2RGWO30NOSYu4YLvzT3MfRsxIyM6zDtqMABmv
         +CF6vfKse9DlHIMFbJ2XBBnPKwJbhwf4FtsiU+5TdIpmXk+R5W2S/dcRYI6TVmJWpSWE
         tj6cE9ogd7D3zCYWrw7Ke0K0kK4DLsNNGO2xz9fsBcJjPyIPkugWtxsXI8YJKYocd/j/
         lvJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HxL9Hz5N;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FHF1b9IDvcRNWoeHzCby+vREKpMg10ljZcG9n4Y9X+E=;
        b=PU7QwqEyE64s4VX5hi6OucPhRvLeMOJgm86GERygxyNhrSptaNDmrgyCmh5rKebntB
         JjjxoSHf+WBMPa4D0hcqOqFV2pUJGsAxTBdvPSqiUsU5CtRwG0bN31ZvpRYh+m7HscKT
         UDcyvjR/ThZl8tKoCNLpBzSQOFdN3x66j2CiJ34fVmEl+BXEOVqrYxZkh60ID8/JizG0
         b1jwqiUI5nrOt15mHAofT9sVB2T1QM2eouLVTFYvrTbu7V76Mdw9Kw57+cmM7WBPJiy0
         vOmwkxmwGPjQQ5nWJT+m//H+j520eTkUM3ghK058wWSXa99Vvos1xjtrbNJpZnIdF9mz
         UXDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FHF1b9IDvcRNWoeHzCby+vREKpMg10ljZcG9n4Y9X+E=;
        b=OgdOnjcPTPXEB/j49fQSKLJjqgqN1zvWcwp3OqwuTC9zXTF5vF2cjAPqN9Kc33w175
         rFzUgfGqFLZmDqXWGUTUcV8Z2gitBw7A7W/OPr8jmFfdoSbT/z+ea+UDaT/W9iQqnsrA
         POXxNZsEWBR0e9mxyJat0FBkVS+yzbaPPU9NrqbJ7SrCAVMQWJIgL5PKKhkt64XpAEQ+
         q9DoNw9bUNtgemV/Gd9Tz7iQssoc3MGQ0deN84AOE/QZm8/CGwVQYi1xyUcEWkpyq+JO
         JFfVHSeLUk+P6jXSgdKN0yVp4Umffs/jZunfNUvxGYexPYSdjTSo2qMDg29at2wN3jiw
         0rfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXbsx8Obvu/nLSTnRFzgtLDhdc42gdgVwds7dpJoku5iylUXYZq
	HPsnRGsM+VaaAL4T4KTPppc=
X-Google-Smtp-Source: APXvYqyXWJavaf4jMgJecmj87h/WQnGI3RTwfcmCVi2+fAzrMx/Qsy1+6/YOCopgZcN0gcP3HkmpFA==
X-Received: by 2002:a9d:155:: with SMTP id 79mr510505otu.240.1573610411628;
        Tue, 12 Nov 2019 18:00:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf8f:: with SMTP id f137ls221874oig.8.gmail; Tue, 12 Nov
 2019 18:00:11 -0800 (PST)
X-Received: by 2002:aca:4ec6:: with SMTP id c189mr566262oib.70.1573610411335;
        Tue, 12 Nov 2019 18:00:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610411; cv=none;
        d=google.com; s=arc-20160816;
        b=X+RTWqBKMajr2N8r/jwqWXra3iZrpCnTPY5MJfB04jOr47Bs/Yn8MOXk9lixoU9dQx
         5AsVsxiTNKbmdL0lBf6LkU++XAhnhks0q4HLLxFVd90DAf85fAgL9PnrznQ32E0pF0dx
         O3d+njMsCaSp6gka+cVvGLoFt9XpUtmVqfJ6NatE0h7HnxjXdsWIhyTMeTMi9KFpGMHe
         k6a33r06yyUIJxpZGQlDXT2le1rTWlAx3t0G9Zt6JQkhyJe18PJt04bz+kKtN8/Jrmfk
         Fd4lErw6NrjBwaNhqFPirpTJWAuEsX+DiX0BvAqh5kywH8xsx3j5RZDo2BEfiV+z9dzS
         Tu8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=foXRxVhpr3kQPNVU6G3CvrNm0381OemYue30cKfMNCk=;
        b=AL8fp8Vt97lGMRvkwjA4Ie8gMNIZXWzOkG4DEUeqxfVu+0hXIqsJHM2acvLEt935Zy
         poL1eNKR0cpOeU09tXsg6Ck9DrWcc320jDWghc/jfFCFgq0JOBWeX410Jz25fkEvQAQe
         dkCJtglPBYMcM2ZpRsIvIXEnpISCsqy52oeQ99gsR9CZ3bZzsWs8nlb559WxjtA3aIGB
         mkYmUGK4ldwgdCymvo/zTr4Oei2g9xF8VuUdn4ag6O9aB/MiawnVC+YH/N/ZHk9hQU+A
         Idt8IudBTCgJ0OKI3V6yAOyVfBWgycAXURr2ljxhCcUD5ndwGv+0cZnp2fFPJutbXDOk
         QxYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HxL9Hz5N;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 144si31578oii.2.2019.11.12.18.00.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:00:11 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B5FDE222CF;
	Wed, 13 Nov 2019 02:00:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jason Gunthorpe <jgg@mellanox.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-rdma@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 24/68] IB/mlx4: Avoid implicit enumerated type conversion
Date: Tue, 12 Nov 2019 20:58:48 -0500
Message-Id: <20191113015932.12655-24-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015932.12655-1-sashal@kernel.org>
References: <20191113015932.12655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HxL9Hz5N;       spf=pass
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

[ Upstream commit b56511c15713ba6c7572e77a41f7ddba9c1053ec ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/infiniband/hw/mlx4/mad.c:1811:41: warning: implicit conversion
from enumeration type 'enum mlx4_ib_qp_flags' to different enumeration
type 'enum ib_qp_create_flags' [-Wenum-conversion]
                qp_init_attr.init_attr.create_flags = MLX4_IB_SRIOV_TUNNEL_QP;
                                                    ~ ^~~~~~~~~~~~~~~~~~~~~~~

drivers/infiniband/hw/mlx4/mad.c:1819:41: warning: implicit conversion
from enumeration type 'enum mlx4_ib_qp_flags' to different enumeration
type 'enum ib_qp_create_flags' [-Wenum-conversion]
                qp_init_attr.init_attr.create_flags = MLX4_IB_SRIOV_SQP;
                                                    ~ ^~~~~~~~~~~~~~~~~

The type mlx4_ib_qp_flags explicitly provides supplemental values to the
type ib_qp_create_flags. Make that clear to Clang by changing the
create_flags type to u32.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Jason Gunthorpe <jgg@mellanox.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/rdma/ib_verbs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
index 0638b8aeba34d..1d9c701b1c7b3 100644
--- a/include/rdma/ib_verbs.h
+++ b/include/rdma/ib_verbs.h
@@ -1026,7 +1026,7 @@ struct ib_qp_init_attr {
 	struct ib_qp_cap	cap;
 	enum ib_sig_type	sq_sig_type;
 	enum ib_qp_type		qp_type;
-	enum ib_qp_create_flags	create_flags;
+	u32			create_flags;
 
 	/*
 	 * Only needed for special QP types, or when using the RW API.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015932.12655-24-sashal%40kernel.org.
