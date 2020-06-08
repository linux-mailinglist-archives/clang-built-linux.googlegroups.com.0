Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUMQ7P3AKGQEXMFIEVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE811F248C
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:22:58 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id a4sf12970984ilq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:22:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658577; cv=pass;
        d=google.com; s=arc-20160816;
        b=CQFQlB4GzEsTXWpKf6/8rl1PXxf/JD7uiCKDQd3rCHmHhGj6AURbkuVTGif8OfrkfO
         1ha61IOeGB09y7XzMGEBHLcLlRTI9gbXCjSfJAa2mSiYAdsubm31p6p+FGn5DaA2Y+E+
         khPvnApsr9O6YNA2K2VjVLIx9Pcux8Po/D6KNltz6uNE2PM+OSWDmUVfNFwPuYWVB/e6
         ExYgK5fm8X14FdKyrEBO8ea19+rfSAacL1gewkBO6Ki7Amh7s/ZMetBpprUnETcUOV2R
         R0fXy0kfirRrqj66N7pk4VBg4beVWE2ZBnWuIvmKN5MudAwryvyIAM7cL8h8OVErzWOl
         Jn+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=POHvE2qEiXmWAI2yui3x23uwzBLLisIFyCX595qyNX4=;
        b=l8q80t4LvNh4Y469qUqOGtODUiNH0MKAiqGTeYuLL6aSXdwP0pze8QDCjtAFYbLCju
         yGCy7Te1ZQ6rGvdCGqZX9xSUg/zJJ82L3WCcHD6S+mJkPF1mdQhdaWVPrL11tUnfjsns
         fja4K7NajSQDndCPIfem3+eNvo5+Lu7g39VYt1DYk+AbnKkWJRAI+9r9cNe3xAvuVy/d
         pkOGWLEWxsCnB8ZXaoR34YW8dXWigSSNxFoYSEg+BDygZgXsRCgx92HfbFEgAF+mwDCf
         uVjtz/lpJszTinRbKqstS8Ov3gQ4TnGWECTPSZIdaB5XwuD0wlt3Cd3Fxy66UIub+zJ0
         4Okg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q6mwnPbd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=POHvE2qEiXmWAI2yui3x23uwzBLLisIFyCX595qyNX4=;
        b=SUFW+C/46/5U4hHO5rPPHERpCe6MmaGepipjqiE7zN8Jj2RnO7NLrXuRDJ93ZEmCyN
         kHR29+yPpl5sshPM/OO1ESOsf3r0KAWya3wBfoiSB3Numu17bjXzL1Wtdt5HTW9hLfTj
         UWHYSQeuYskLl3/QfAa93g52f285rR70l+7ci4xKAt21zAJUeksWNIJoNJwmCVEX6npg
         UsuEEfw3W5q5irSOwnM+P5x48gO9Bq2EpLa+eJAEt5s68Aq2s6WO9omeGih668W7YSS5
         bt//pz/LmMNoPL7gml3CxVOPvt1LSxoRpOJ+7k5vL4GmZweAJfCDRm5VlTWC7mbhWN16
         DPhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=POHvE2qEiXmWAI2yui3x23uwzBLLisIFyCX595qyNX4=;
        b=JSb9yN619xc8UstCf3DXjhO2/xDa8oQ9tLIMVI5HsoJZ5TztvtBrcq0Cc8uoBCswC5
         1iuuj3yRPI9rhzDC+ovcVWNyvOy27di1DZHVywd9wjmkU624EQ4kxOG3Wbh4BNJqjh83
         tiqidqR7q34aCmi3Uo2uwQOx/bEd8A5eGLaNdDO1iw0v1QsBJT3Rwu+Qb9Agx6Bl81OW
         b4sZYtM8RGlhUjnMvyeD+lzbEHikzzdmvYMEcWDUacRAaDqxzqtA35vAC8mVO4mFqugA
         Vm6uJU69DkmfGi4XnrvJ5xxmabDlKuZqfH+1mcdFpkIBSvnFLju40YGz7sU610KKGvz/
         bqMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YfUdQfnEYhzVINIuzSN8e8DNPhkY2i4sYvJLwIY6zYiIvlI3r
	am+8viyBdNJgl4WPw49Y0mQ=
X-Google-Smtp-Source: ABdhPJwht43yWehkYAdjqRJ+A8xufH/tsY0jNPFfjdd4mr4+olWWXkUCHIWldrthS9YdP71Xg+fwzw==
X-Received: by 2002:a02:9999:: with SMTP id a25mr23697520jal.129.1591658577112;
        Mon, 08 Jun 2020 16:22:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1584:: with SMTP id e4ls3249696iow.0.gmail; Mon, 08
 Jun 2020 16:22:56 -0700 (PDT)
X-Received: by 2002:a6b:39c3:: with SMTP id g186mr23371958ioa.91.1591658576707;
        Mon, 08 Jun 2020 16:22:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658576; cv=none;
        d=google.com; s=arc-20160816;
        b=BklLa5wHW+1vsIFB5UqGuKsmIuHN64YkHI6ou0MXDPnSVJ4mZXLj08qknciKMOOM/W
         gsn1NcESzb92WKj5JjeG4+kx7tgom+9uXuVj7N8eStUk5Xg2AYG0OLXbwAJU+OifOBIv
         fqIQyFLNiurcDfTHx0rPoyeJT0vz+g44MCCTvZGKw3zv1cZalRHiU4x/oEp7Zr8I07uD
         bodQ9nIrX3wBCQoRBIfyzfADkAqT4dFa4TgpwkCXWPVm5qO6WygX99f92KEsBzHRowNk
         PnEQZq81bqKC8Fx9Ao2NYMU8HbjS7camdd2pEw0DljZBZnagAUu+/SmNRxyWJjz2Kp9t
         Z6zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=E3B8wU9dbyZL87UW/34GtWdukSVX2VWRj5mf9VkNX8M=;
        b=zvKDs1AjNHXluJLSys2svciir5DHHdkqljfLOvCg66ocESew/DyWw5NJRmBOpHDr+n
         uhysD0PFOAJ1q0o0+ra1bjAgtC6g7ZrQzSdc1z1TSyUmzV4R9Ykl6iv6q8J+G3VYHW0E
         GYy5Fh1UX25Pwn14QDEoeaphJbqVe4F8JBaX2Vn9YRyBavCHFVaBkJoa9dsIHDdL0fnw
         pEZcfqtr6wN+snAkFMTCM/eLeiddjGNQx9K9d8Vsba8A3R2zbeGbWHYX5kGsu1Cw+jMw
         A/2N5x968zWu4GOfoDSqFJFEa3c2qXmlYGyGAGk8QRvQg5A8P9jEwARgYIRkndVsufTI
         SFrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q6mwnPbd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x10si875160ila.3.2020.06.08.16.22.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:22:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0D02A20842;
	Mon,  8 Jun 2020 23:22:54 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 014/106] arm64: insn: Fix two bugs in encoding 32-bit logical immediates
Date: Mon,  8 Jun 2020 19:21:06 -0400
Message-Id: <20200608232238.3368589-14-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232238.3368589-1-sashal@kernel.org>
References: <20200608232238.3368589-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=q6mwnPbd;       spf=pass
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
index 3e6229e30109..cd37edbdedcb 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -1490,16 +1490,10 @@ static u32 aarch64_encode_immediate(u64 imm,
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
@@ -1511,6 +1505,12 @@ static u32 aarch64_encode_immediate(u64 imm,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608232238.3368589-14-sashal%40kernel.org.
