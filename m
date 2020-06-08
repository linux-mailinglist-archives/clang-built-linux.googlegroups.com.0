Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFEJ7P3AKGQEURKHABA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D7E1F222C
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:07:02 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id q5sf609142pjv.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:07:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591657621; cv=pass;
        d=google.com; s=arc-20160816;
        b=L4yniGxYpvpidBSNdtaLTaHyUwudPrT83JdKdUkNQEwkD9cxS5px/b6kbHBWLtoxuJ
         iVDnpaSEEnmbaXYBhKsC4m2nsXReQyvJTg8lyyAi9C0xPYfxalzxC5OJHNLlvPzrx7Mo
         FN6PfV2yWpvtLZGp9yMr6FHRbEdb4QJV3OftrN+2jy0LIkRIOojPJ0VAmLZZVrktAic2
         IsGoMoxBYMtgEMH77ulTDY9lHC5qimPt13ORl4vDBzJdF/UnQMJUE0Amn0g9vYW2K8BJ
         q74Iu6oH7aWshLYhl1VNrXi9dDd/pmUDoLjXT8BvZwjsVe0nfgagNRIaJXvOdBIdlqcx
         zXXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=A2fmmbW+l9NZNaDMnj3QlImj2RiZUFCisOw2ARQ8STY=;
        b=n1UCkiixNtuy1OPXlVqtwA7aRI+V+TZqE3Qd8KzlIMdI+jYBcXeBWfPd0r7BybjIxh
         3S7QyOnEIYSbYHKujQ01dPiBBDDuK9wx/HEmE3peUFR/hNk7etj8Iomjg/pzeoWG0FsQ
         8hkbaI1djN2ZDyqgdVi2Izn5bDIxmxT7v3wJJTDloGln1w5JqrjIntgmDwkE+IeGob0d
         qDO5ZO8ZbguWM6kmVj1DeCo9xq6AYcbAoGmB9/wm/JaHJhoWTpU3N0AX/vVmgxH9lP0Q
         WYt0EO+cRK0u1YfJNnhyJJ5d92z2M6QEQprNmc7hboNa91fC1ti/E7bMoGdP65tH558D
         Xmig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="EoJ/gV1E";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A2fmmbW+l9NZNaDMnj3QlImj2RiZUFCisOw2ARQ8STY=;
        b=lj7UCvV4mTErWdqVSKw1cdcZk3NoKOXkWyFSBNk2Sqn3IUhSBU+kP6L+nWLAXGdeqt
         0oObAYqjnIcp3DsBnE1oqqrD/upOY0Fuh5s36rPA//lZ6sEC2UVY/M2IRGgJvI4pNOdR
         Cn+UltH6stBXvanU9f+P9UaePmLD/IJSfMdNCJd/D0oiidqXE4JOo4+u0jXxlIW/AW4x
         lkuKM2fsZuH6ZU+8+euko9qdqMczpbFoXuDdTwwM8VPjHtxqm/Al8krlM6rJ2u2JuY0X
         hEE/SNRcy2WqxEBifwi+PFUF2E12730jipaGUGR/arADwRu17XfSBDNQbeeVNKtecIFf
         BglQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A2fmmbW+l9NZNaDMnj3QlImj2RiZUFCisOw2ARQ8STY=;
        b=QsYhczYVvxHwBheeZS4Syh3YzSJkXQg6Q7QFb8h3d3ZKHLeeyFeIaJ635CPp5UX43o
         haEo3CNbvXC3LO4OGZCvTFFTvI02z9N9ihV6x2Lr9Qa0ViIQ2g2MX4hm7iUcwGXDdW56
         iC8hXY5t1tIDyUBmlSvQh/8JS7m7eR8TvXeTOl7i/dYmeZR1BOLlGeohgOvWJN4xm/MZ
         MHC11fskk/NHRVRS8jYjUg570/njm7le4TfPaaBXC4vzmmt57uBctB6J1RhYT9B8TVxG
         +axAYNxDQMqwJQ2w9UQICOpznD7DpuHyLILsYv6ZKXmf51W3RXL6OzbkJtywDqpwpH3d
         VI3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SXuFp6sf9RgENH0E9CufZqk+/B1vunZeHldue5SdDAkdrWJ5S
	dnfHZTw1N1AXXqp3jXSOSW4=
X-Google-Smtp-Source: ABdhPJzqAkROBtzbZIcsuE16D392T7J0AEySKszxG/BRGt1u6AJJhg7Sif/243QPbnfvs5BQTiajkg==
X-Received: by 2002:a65:6799:: with SMTP id e25mr22953203pgr.9.1591657620933;
        Mon, 08 Jun 2020 16:07:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8f3a:: with SMTP id y26ls5650207pfr.3.gmail; Mon, 08 Jun
 2020 16:07:00 -0700 (PDT)
X-Received: by 2002:a05:6a00:2ae:: with SMTP id q14mr17822850pfs.255.1591657620423;
        Mon, 08 Jun 2020 16:07:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591657620; cv=none;
        d=google.com; s=arc-20160816;
        b=pWIfcHvkWNhZClRgF2UyuQVhdcKvg/zgsPd7TMdf8SGJyswYlrMkmriaA1Hp1uVtG3
         dPIEdqlMuRPcOgz1uCkr/bdrrv4SM8T6ivIuMFZNMk4a+1okYQCw6Ve5/GpEhjAFYA3r
         6I21hbM389y+FksmVGqE2ZpVcyrV88nxWL0oTCIWoF7BKBwnql8GixBk2mjPMe8+nvAR
         qH4T6dRl92l6ETGpjR8ZQfIBSbIy49bUt7/nx+Ez/mKjQz7uQYbLDsYc1wNmXOIqdjWC
         bmFYozDXeKYE1XTHa8xiiYSCRVSjayvdhJQGBl6xT9Oq2NpTDH1n2qZI3ou/u0A7zj0c
         VfaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WcWZGq2pcGXPwZ9xFewoGbvR0La9loWKwZmwAy1oNQE=;
        b=BEHVa75aK1+SQuNDkeksJlerT1t70rjqjFQqgwp7kU3ZAXlgU1wy4JzuCA4hGGOw/L
         KWFHLBwH/igRHT5NxvbqQ69s5qPHaN0Dmk/4CGTjGi6EcpS207nC34oO1hnwzq6Fmn2d
         jlj8s7ffz/krl0dg5OwtjCSicvGDYDNLJ7J9Vh0HiIny559zS9rGv2D1TdGW4vxeff9j
         RtbhEncQo3/KCIbJJ8n6a81ChjH+zcKuDNC4CfjTjWOgQBcr+oYS7dbOGYdAVor5pwA8
         CjpiaTFXaR0G2F/k5Ew7xmMhNTXdE0jO3LZ/POTaq7JXfYEogZEl5No2ONPfqDcLMmSn
         0tBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="EoJ/gV1E";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l137si501561pfd.3.2020.06.08.16.07.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:07:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 271BA20823;
	Mon,  8 Jun 2020 23:06:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Luke Nelson <lukenels@cs.washington.edu>,
	Will Deacon <will@kernel.org>,
	Xi Wang <xi.wang@gmail.com>,
	Luke Nelson <luke.r.nels@gmail.com>,
	Marc Zyngier <maz@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 041/274] arm64: insn: Fix two bugs in encoding 32-bit logical immediates
Date: Mon,  8 Jun 2020 19:02:14 -0400
Message-Id: <20200608230607.3361041-41-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="EoJ/gV1E";       spf=pass
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

From: Luke Nelson <lukenels@cs.washington.edu>

[ Upstream commit 579d1b3faa3735e781ff74aac0afd598515dbc63 ]

This patch fixes two issues present in the current function for encoding
arm64 logical immediates when using the 32-bit variants of instructions.

First, the code does not correctly reject an all-ones 32-bit immediate,
and returns an undefined instruction encoding.

Second, the code incorrectly rejects some 32-bit immediates that are
actually encodable as logical immediates. The root cause is that the code
uses a default mask of 64-bit all-ones, even for 32-bit immediates.
This causes an issue later on when the default mask is used to fill the
top bits of the immediate with ones, shown here:

  /*
   * Pattern: 0..01..10..01..1
   *
   * Fill the unused top bits with ones, and check if
   * the result is a valid immediate (all ones with a
   * contiguous ranges of zeroes).
   */
  imm |= ~mask;
  if (!range_of_ones(~imm))
          return AARCH64_BREAK_FAULT;

To see the problem, consider an immediate of the form 0..01..10..01..1,
where the upper 32 bits are zero, such as 0x80000001. The code checks
if ~(imm | ~mask) contains a range of ones: the incorrect mask yields
1..10..01..10..0, which fails the check; the correct mask yields
0..01..10..0, which succeeds.

The fix for both issues is to generate a correct mask based on the
instruction immediate size, and use the mask to check for all-ones,
all-zeroes, and values wider than the mask.

Currently, arch/arm64/kvm/va_layout.c is the only user of this function,
which uses 64-bit immediates and therefore won't trigger these bugs.

We tested the new code against llvm-mc with all 1,302 encodable 32-bit
logical immediates and all 5,334 encodable 64-bit logical immediates.

Fixes: ef3935eeebff ("arm64: insn: Add encoder for bitwise operations using literals")
Suggested-by: Will Deacon <will@kernel.org>
Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
Reviewed-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200508181547.24783-2-luke.r.nels@gmail.com
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/kernel/insn.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 4a9e773a177f..cc2f3d901c91 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -1535,16 +1535,10 @@ static u32 aarch64_encode_immediate(u64 imm,
 				    u32 insn)
 {
 	unsigned int immr, imms, n, ones, ror, esz, tmp;
-	u64 mask = ~0UL;
-
-	/* Can't encode full zeroes or full ones */
-	if (!imm || !~imm)
-		return AARCH64_BREAK_FAULT;
+	u64 mask;
 
 	switch (variant) {
 	case AARCH64_INSN_VARIANT_32BIT:
-		if (upper_32_bits(imm))
-			return AARCH64_BREAK_FAULT;
 		esz = 32;
 		break;
 	case AARCH64_INSN_VARIANT_64BIT:
@@ -1556,6 +1550,12 @@ static u32 aarch64_encode_immediate(u64 imm,
 		return AARCH64_BREAK_FAULT;
 	}
 
+	mask = GENMASK(esz - 1, 0);
+
+	/* Can't encode full zeroes, full ones, or value wider than the mask */
+	if (!imm || imm == mask || imm & ~mask)
+		return AARCH64_BREAK_FAULT;
+
 	/*
 	 * Inverse of Replicate(). Try to spot a repeating pattern
 	 * with a pow2 stride.
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608230607.3361041-41-sashal%40kernel.org.
