Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAEP7P3AKGQERP6YC7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 094981F240C
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:19:30 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id y24sf10196271ool.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:19:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658368; cv=pass;
        d=google.com; s=arc-20160816;
        b=EIxpBer2f3Naw9XCPYzDjPfEeEp2NiDMUHOmdhyyJYLyE7HqZ+ze+2/r5m0G82RsWm
         4Izxewb+iI9hwKN03ti5rpLj7hq37LersWZAMmh9euxjO8dh4NJoM0hpbPVeP+sYeY1r
         ALPMVi5mPjj/+WX30koa6fk1D2BwLzKsxBWRrP8HbbUVzQ2gcd/CVTSI/9Dnnu3O5/gK
         ax17zZqfH8jHGZnGIm5hKiOw06eNvCFmf1wGnBZV+XUQuUXYfa2fUVFWkqTeu2xiUctA
         ov8nyit7wZZiGhVQlkvQsRFzOPSyoC1ut8qYW8ZtxstBsNQDrSPQAH086FAvskDDo+xE
         OUfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6V2TtxF2Io49dJudR3vAONJHQQhzCkHTy67KuGAglVc=;
        b=z5sVSFfWivgUA1Mw38r1awS1vQZCW2pZFr7xSQgZ78J1OtLkGSseaYAySjAQPJLaxg
         vrYPXa//l8GH34ohtbyzWJjIaDaP1C0b6VOKfJJz0ND6gQeHPADl654UwaecnasdhtYP
         v8ZSKEdiOtzD8jd+SOCMFCXraD4kUaAiQltH1sjbc3uywimjj9TcXGYed+iywkLkgmHr
         CnkbkN9F0O+Rf63UNvN+PeGdpxdy2trwYU11bp1JVKJnAb4sc5DVfJJU+eOm9UMO8S8N
         Msn3pI+3lHe1KLQa+is4JhuRuAPPCnufi1JL8J4zScolLuCBC70KxlIl3Nv/f2XkFddP
         iBHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=axOJT3Wf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6V2TtxF2Io49dJudR3vAONJHQQhzCkHTy67KuGAglVc=;
        b=OcnsmjQAE+GbOsFYLXmhztk9hDjIfJZ7LvTDIal3N6fLY45ZYyOYzE6m2EFfrM44yi
         Zb9vKkwk4fZ41INlVSSvY9/YfPruI2Pvj0BOt79mR7wSh/bXvbDEx6rhFbiVoI9K5sor
         Fa6ma9NwKqA5NPQTCYWVlKq+K9DPMO7mr3M2q1HfyBHX/f7lBqesXl+tfc/BRuVS8spZ
         Dl4Em04+n53WAQlYjZHG1YvU68E1y1CQ+dcTndPtJtRvM0cn3M6QTwUe129gBAcq+jZm
         ShcUhLVYxOxf97LX/vr8OId2iC6RRqigS+XqA/q/gsXuTTGQpl2fDQ98gGVmUm06OFiL
         cCvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6V2TtxF2Io49dJudR3vAONJHQQhzCkHTy67KuGAglVc=;
        b=A0cInE3+1negcTnuQEjKun3qqiUp+ZsgPhmkTcKSRAiahylEd9EpX0uqaFCLkRRgJ/
         VU54silMKZFAn98bJUt4U5HvrXNTkJ5zgKGpsYkUNEG7IY/FGLbmqFFe7gFbWXcjDXJi
         monh93U++izG9YM/k+MK+9xMt81xAORTYOHgdo6oXoGD9/gcbeR19T1D8wBt8awGvgQV
         Cfnu9SoK0hfXdbr8JApZWRW6ncq0K2Sv+AI+zuf/EFARJLB0KN7Y2YZjrvzPVQCZWV74
         O5eksDF/2ltCWr4YHAtr3rOvQ99gz92A3yh9omhXByBxFJdcpGifXahQzdkFvf18V/XK
         KG6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WV4jAQ2qldO/gdTAZ7XW3fs2HSM7MKD1Fv7P3vtMcUKffyPkN
	h+eNrE74JuZTrAuZW/ZIhZM=
X-Google-Smtp-Source: ABdhPJxa69MaOX9uWG1jA913KlBOdxYPdeVtlFtcqksagdZbqm8Ygu967ccFfS+cJHK5kmP8Fse9QQ==
X-Received: by 2002:a05:6830:1441:: with SMTP id w1mr18761113otp.372.1591658368804;
        Mon, 08 Jun 2020 16:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4549:: with SMTP id p9ls1504000oti.11.gmail; Mon, 08 Jun
 2020 16:19:28 -0700 (PDT)
X-Received: by 2002:a9d:7f9a:: with SMTP id t26mr15069455otp.103.1591658368496;
        Mon, 08 Jun 2020 16:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658368; cv=none;
        d=google.com; s=arc-20160816;
        b=rgrx756GYOMtFwfQa0c3AUUUiLYL5FSm5KXyLMIQz59ORNqhwe1ofRUB3Y6e6khYop
         twIfiEiMxonpsBp5qoUGMEHe3aG8+jzLPu0KoQeYKkcM13Q9duMMfIpweybDurieklCW
         RDE5rdac4CUs8yo8Uu35xMKbpQmNW46CEHZ0nDdeBD8HTXbBKRZto4y8lZjEbvoRp9P0
         +wJVx+tvWSluVR3dNl681aESeGEsaVEODixHm8bFx/Cy51+cy6CFz70zJhuqThWea+Zc
         KHomxd1HPegnFR2HoNqiYz9+gjrxYLHsSe01ulJxe8LbisksCXgb6r8MiNW+jFWWXzPC
         wCbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iNp91YcYQKggiBt/OwRJs7loLlgAVOn21oW/jVKh+ig=;
        b=EGv4eiBTTJaI4rFi2IjKCnWteBOzCK4eOxjyBDnwQ2uuIQSP0HzORBFpy6avhddj0H
         G5kcVujcVRcH+lzjrOmXUwzYVXuIg+GyoPdVyXjkoMGPNhWdCFbfqEiQ7X8Xlz9+eVF5
         7OvY+SNH8DaOav5q4kupx+ZxAMyYTnsCIXRwkZx+aTzqQj18boMc9PokHpv9H+1W4Zu9
         B4HW1eSqN0LhK1s4bA0Vv5iiszftszZ8NKYglmhP98emJQ4PRlIvJtUOSFd8lFkKay3R
         qOUlIuIyp+4PlgXJMGtsnFsN4Qe98gZewGerZbBt/UAQk9Kn88Z4G8Wx/Bx5LeWTgVkJ
         5E+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=axOJT3Wf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k69si904844oih.3.2020.06.08.16.19.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:19:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A8BC32083E;
	Mon,  8 Jun 2020 23:19:26 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 031/175] arm64: insn: Fix two bugs in encoding 32-bit logical immediates
Date: Mon,  8 Jun 2020 19:16:24 -0400
Message-Id: <20200608231848.3366970-31-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=axOJT3Wf;       spf=pass
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
index d801a7094076..a612da533ea2 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -1508,16 +1508,10 @@ static u32 aarch64_encode_immediate(u64 imm,
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
@@ -1529,6 +1523,12 @@ static u32 aarch64_encode_immediate(u64 imm,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608231848.3366970-31-sashal%40kernel.org.
