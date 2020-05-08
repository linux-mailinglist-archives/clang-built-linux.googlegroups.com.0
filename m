Return-Path: <clang-built-linux+bncBCL7F3V2TIDBBYOD232QKGQEIDGSXNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 972921CB6D6
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:16:03 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id i10sf1898031pgb.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:16:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588961762; cv=pass;
        d=google.com; s=arc-20160816;
        b=UsxqxIaHPE914Nird0PgZZqNBJkXJy6cL977ReNYMA6/bspNpscrk5DYkTFkRPnYh5
         ILVqEqp+pKo6RPpW7FDiC88N33ScE4o8uOpcjXuEG7At+NrNs5BwxTL3ZV5wsqPpclLY
         aoEZQVKqz+3egKwVNrblPo+CYNn7egpQOKT+w20Oe2Ws0mSWI7JaCQfhh8nIiLyZW34b
         K4M28ieILY08cwkY2GXTQAew1qgwuMTirPPImrbA7PXI48hB7a7D7BWx54poOi0pLx5b
         DYF7ZiCEWq59OZDopKugrPGhiKpkzxjD0Z2SQ69lUXdfL7hE1R3qJ3SDsxPmSwmHmnwb
         +Eyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=l539U4elvh2jWSt8W4wSccU3csMlkNDplkgPVCoHV54=;
        b=KBtugyLhfKdP1p5cmKF1Vfb4QW9tefQWWA9AOLAk+G9eMEIEtgKmbyya+SUWgeUSCl
         LsNeJk8J99zgjI7e1bx+dQrzasF8NgiKXMqr1in+Az+4pENkO3eRAyCay+s/SOzqy6TA
         zn2WTWdmZLf6sW7P1BOHtfRGq/XBdEIRiEjT9tHb1MhyngVDu+GPD8atE58LdgxXQwbe
         Q65ouxh9Ll2oryA14ICcIrvltzlV1WqXhDpmHVa3PV0sm0EuRf3B/Qn/NWUGnjcMaq5s
         jp/HMuiylHm5FkkvoeYUTasU7InO5aibBd6RDTa4dczHy7Dxw73dWnENYDjjFBq9RUch
         ki9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=I6sVrCye;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l539U4elvh2jWSt8W4wSccU3csMlkNDplkgPVCoHV54=;
        b=HdHhdkpoX9QRgFnoXRvUCK32+Qu7BCZO1QkXijMFln5hQcCbd9ID1bKfa0O3Nq6Nxu
         L2CBmRJ+WrRhWVPz49ETb3H32L66+kHawaQOhkPEV+xK8KS7I/bxTjxJmWHSamprxCPf
         tzo7ZeDR7/ladnFIBhuZ7dJW10horkU4emJOxHO5PmPISmq71P4STzmNCI/07IyeOQnT
         1jJdxm20BasMR/yV0cG5INwjCcClpqHV9LF5UwRujbx0V+wjKzV4l/2v/oAaJRPQfp0H
         x7vjrZAiX9NKEwSIMBS9pYLZGaNYeTpk2Bock06OdF0nk25bKHWtmr3SHsNYOZ/8OD3J
         1a7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l539U4elvh2jWSt8W4wSccU3csMlkNDplkgPVCoHV54=;
        b=cHAc+GNFib/KWymO4ZLMEQEDqsfDEYrczLa2zqe6IV+4zdFaz5PKx/sDNTiTAkkomV
         7RKYpIvFBa4pGSDAqUBX4GU0TvoS7S2YYnX646c61sj25DRFDGBNOM/P0cz6RvkFtLom
         Eu0R458s32ZtyZ2JQNtayMK53DVBhTndaWtoPiwWAEzC1kAOcqmtyo8AJeggzqpZ+Dee
         3PS/Vyn8rneRedpzzy/Lpo1T2iom663x+97TiohrAG1MKvsmwPaVb6xg27Xx3Qye110R
         9iJqCMcobXmXCh9n1xGpNrZMt5OjHkxidTT3QrAo7wx/HJla3Lea1sG1tm+g9/BLQ1ma
         RusA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubeFda+M8pKEPq5lel9/Y8YDDA2CnXXe2ZxTNpfq5ST2txfdR5Q
	eppefoLSd6AqhzHtr0RFlHo=
X-Google-Smtp-Source: APiQypKJvdJtdYi3CBMcVaq2clUO8Up186aTUaX8g4KgzrL3QdTvN+T7q9El5ZIXstI4g+ZOwgsitA==
X-Received: by 2002:aa7:9f48:: with SMTP id h8mr4080455pfr.147.1588961761755;
        Fri, 08 May 2020 11:16:01 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1657:: with SMTP id 84ls2138012pfw.7.gmail; Fri, 08 May
 2020 11:16:01 -0700 (PDT)
X-Received: by 2002:aa7:948f:: with SMTP id z15mr4329129pfk.6.1588961761362;
        Fri, 08 May 2020 11:16:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588961761; cv=none;
        d=google.com; s=arc-20160816;
        b=064OyUmTP1YFSuhmt3txgH/PZRlgjIBvYKT1n5ZY8UxJl1CJ7zHEJmDQ6c2qu364h7
         oi7B9Yef2u4btnVC5sPlpAk0wgycm4P2DO2HEXzkL66R3cy/DhwECUDG+qrLA9s9g4rs
         qKgw1zhR+ypmxz1xVoIt84qcfy4ZACd040ESE1rkaJEuBWubNwxDhmfAOGW+lV4obkW/
         KaHj0v55+Mh2fUMOOtpwUghkRviVM9PqQ98o3Lkl5SFvGdPPt2BU21jiaNlzAGDyHBT+
         bpYtpxVT1VB6AVs1zJJsC5eSZhx9CjPRh1BZpia1SaOXugkWD3Rr2jHp0gJtKp6sORbS
         9ArQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=+grFk/1b6m5GXQB6Do7/JZsbw7ECp6r+S8upQGe4+gI=;
        b=Iwb0k+zy/9TRI7kZFK+vd0l+45mTydk2IFgMlxao6JpRpxZBuvF4ChB0L0FQO0l0I9
         iA7hv8giJHL7r49fbgEIF/bIgHCAaaDzwrXBrRzEkx7unOKaGYTboqLxMrvQa9K8Rw4L
         +FpVRBmrMjFsuh+LNrqm3ezBJ+vKPxxzLNrzzLLh4ZURT+YmHpoL/lfWAOjGCn+XmoUs
         bMBY6KfwLCOvEbyzYJQKvVd5ccV5Ny39n7E0359wKWhZv+jq3sSXp3vG2zA3kdJ/EP8S
         8Imk5fAky6euQoiYovhXfTQD4CfRWYdHs+x9wJnykOaiS6SpH0FH06t2JW2NDTi5ZZ4h
         hbmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=I6sVrCye;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id f3si196360plo.4.2020.05.08.11.16.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:16:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id z6so1080817plk.10
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:16:01 -0700 (PDT)
X-Received: by 2002:a17:902:6114:: with SMTP id t20mr3762825plj.324.1588961760860;
        Fri, 08 May 2020 11:16:00 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net. [73.53.94.119])
        by smtp.gmail.com with ESMTPSA id e11sm2349463pfl.85.2020.05.08.11.15.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2020 11:16:00 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
To: bpf@vger.kernel.org
Cc: Luke Nelson <luke.r.nels@gmail.com>,
	Xi Wang <xi.wang@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Zi Shen Lim <zlim.lnx@gmail.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	Andrii Nakryiko <andriin@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexios Zavras <alexios.zavras@intel.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Christoffer Dall <christoffer.dall@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH bpf-next v2 1/3] arm64: insn: Fix two bugs in encoding 32-bit logical immediates
Date: Fri,  8 May 2020 11:15:44 -0700
Message-Id: <20200508181547.24783-2-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200508181547.24783-1-luke.r.nels@gmail.com>
References: <20200508181547.24783-1-luke.r.nels@gmail.com>
X-Original-Sender: lukenels@cs.washington.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cs.washington.edu header.s=goo201206 header.b=I6sVrCye;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
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
Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
Reviewed-by: Marc Zyngier <maz@kernel.org>
Suggested-by: Will Deacon <will@kernel.org>
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
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200508181547.24783-2-luke.r.nels%40gmail.com.
