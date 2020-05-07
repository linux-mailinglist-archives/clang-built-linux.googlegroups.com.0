Return-Path: <clang-built-linux+bncBCL7F3V2TIDBBSV5ZX2QKGQEQH2FZVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 510D31C7F97
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 03:05:15 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id e2sf4863399ybm.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 18:05:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588813514; cv=pass;
        d=google.com; s=arc-20160816;
        b=FNU/pp0KFWDNQRbdgR9RYjd9GMKkTyHYnF1aDEA4u0D/b1WGbwh/l0aoHnbw6ita/6
         RTzMCO74D60XWif1S4gFPk5KD9hVuqP+gf9SPdYKZxHLIyG00e92tbPJ4Sgx/nmQb/Hu
         xnIq/wXFM6meSu0btpCdzdb3qkMZ9AFAIEOgBHLdjRw6caMLQNzaI6H4PJi0bkgRuPOO
         knNXlNRgROX1+vUXeSXhnB5TCYFOU6FF0HGYyvtIUSex/Cv1EJLwpseHOpJzliVIvkyJ
         znBe1quFRyASP1/gd8wrrcfVGgPj5y4HaL4A1Y2bdtryiz1NmPRZ9sGrRPt9+uTyCzIx
         bXwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=+1wxFtX5Oj/CW5i+dsOAW0s+42IV2n9v79CwbUeZvMU=;
        b=XqtIaALSZhtAMu32/4zy+x7aTzouBrhD81v65GvuwduwfRky6+9c52nzBwBZtQDU8C
         XalhIvTSg5ve5rU+Uq/Wr41EINNqcY6FMu/dji3rieWP1gf40ZKw2Q11gM/Py9k50qsN
         vfeDksqraOXku7CJ5ImETfEDl3ujGUg5n2KddqZ2KwvTiy401JR7CLsBrqnYqn2QgXI3
         XgS4Lr9cO3hSAajnRqNJ7ljd1OBNyG87VfHnaxOnintcudGRyu3YB0w9G2AafAvF8o5G
         /GCaVtJzvcx5wIkFuLSFfMPeQGKRvsZAeP4TTsi3Io3lje5UW4H+5dRAXwDxxC69Mq7a
         TXYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=aNteDNbs;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+1wxFtX5Oj/CW5i+dsOAW0s+42IV2n9v79CwbUeZvMU=;
        b=V3jG+ZWgEBDmagbABkwbcqw0tZfEH0q1vnfQDmlgjoTpYdLRD3CjwunqiOsEQxxF35
         xQJ5p/tSIlc5TvUfti57i9soQPtrCekiuVSrRO8f+p3EG6cbJ3wmO5OFHrj4Jb+sRt1H
         x/JMu+g/BA0hTSKvmVeW2b5aLruJWcRdMG5sc3hQdZMDKgVaBgQsOihTIqoNENBExZ6+
         oCI/8WFXOSwXmWnJ3Mu+HdhYN1lLxCNKLpm1jb86AEolrP88u0XPdOvpC04hZ60Hw3Iy
         JPVitJsVGuxUdoFyPqnnWuQaP9ljxgqgMoquOt3w7qFuRKAfhCx9UQ5q0iEsfwdmAUaa
         W8tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+1wxFtX5Oj/CW5i+dsOAW0s+42IV2n9v79CwbUeZvMU=;
        b=I8ghGAhFyl0mSZL4c7P6BuHjm5uaZY98u6fkA7+IZQaNbVsQm2YwAexA9gNPi19aT0
         8NlBALNZ2i9mEXju6qKGq589b3hm8zciuTfUDg1ull53m+jxCwD65lp6+OneXSII6Smc
         AuFAOsBwS9n8t8waFMYcrkEQSh0+x18HdTyLl6KT9fXMoWY90+hHu9cm1SY6K5liypIA
         Z0atiSFOvbt9ZMJ1V6c0ToR/tg7ubZad1aNyno+z1Lm7ow7KZR/p5OEU2s3kAjDLjdDF
         Ak2hR222XvhF8m8Xbn/CRjq1nGnBG5gXqmj6DvrFhRexYzFGH1sJZC+QrvK/QaejT7Qg
         c4ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZUzfDKznvFA1vJy4H+aJVVbSSNZlSEW50PJI/WqWcezXzbGRmd
	2KaMGjUzdP48Ix/cV3K4vIM=
X-Google-Smtp-Source: APiQypJGW7IOIAKcQh5knhCjszyI2vZ5F+0yoklFd3zAn7ayRGMhxuOPzb+pRnCXk/Az7DNsY2VhNA==
X-Received: by 2002:a25:d914:: with SMTP id q20mr18959742ybg.262.1588813514282;
        Wed, 06 May 2020 18:05:14 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2ace:: with SMTP id q197ls681904ybq.5.gmail; Wed, 06 May
 2020 18:05:13 -0700 (PDT)
X-Received: by 2002:a25:4158:: with SMTP id o85mr20079971yba.71.1588813513864;
        Wed, 06 May 2020 18:05:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588813513; cv=none;
        d=google.com; s=arc-20160816;
        b=wtWAURohx47psAPSJVq5XVumPKCJZVW0Sn8Jp7yF4VpF5eu0kX1gLGni+vXe3br6kV
         vy3htsbj0XL6oXm1BzIVQyaRJYZ8fmuf71PSoyXkctowiBUGuUnaUp7YYz4s1uzaEumP
         KhZ81kvIPhlWXp+InyWQOQ67BDmwPJnqd2r7odBlkZDx+zmL4cnS5OZelgqbCymt5j63
         YNWEJasxuzGKfdx3k3tz3COYu3NqF+CG5rue29zd45LipPYJwGf3Rc2uGqhQBMGNQXGH
         hktfJOR22Km4gzCJn/amo9IbZhaYKOdj6+M+Cn+Tgqy9AEZ6TssIlDF3qfJOzbSIRlr2
         VVpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=d68RkE5cUlQYJi4OtfTvAYhJJDA5HOgjSHowTSdBNCQ=;
        b=hAxUuuH1eU6s9hqBMBDOSVfQPXEuZTGZ8pX0+IhzEZIJzPU85YaTpL79kVfCndOH3z
         sucRm+SUU6s5Mmnk4pA90F3GatPHJxxnSI26LrabTUVNIMfgNEV/GkUpBSvNzxsBIZFD
         A1D0yuzdVeBdr/MFGHzY26hHD3+FU1oxBn+Ha783k+RRvELonafnn1UeotLTp2rQWY72
         pu/kH2TcdwLopFI8hK0ELUE0+/IZS4yBNLc5IIAVbdGj5ai9X/OyvtT6YUwsbcTJdyPw
         S+3iNAgxX54J1YoWc4EkZNTUQwJVbqXC02tTlpWbySk6LeegNOddup5CSSCcvWjk/R+T
         3Tvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=aNteDNbs;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id r206si265242ybc.4.2020.05.06.18.05.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 18:05:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id r14so2097554pfg.2
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 18:05:13 -0700 (PDT)
X-Received: by 2002:aa7:955a:: with SMTP id w26mr11271899pfq.292.1588813512792;
        Wed, 06 May 2020 18:05:12 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net. [73.53.94.119])
        by smtp.gmail.com with ESMTPSA id ev5sm6165250pjb.1.2020.05.06.18.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 18:05:12 -0700 (PDT)
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
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Christoffer Dall <christoffer.dall@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding 32-bit logical immediates
Date: Wed,  6 May 2020 18:05:01 -0700
Message-Id: <20200507010504.26352-2-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507010504.26352-1-luke.r.nels@gmail.com>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
X-Original-Sender: lukenels@cs.washington.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cs.washington.edu header.s=goo201206 header.b=aNteDNbs;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
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

First, the code does not correctly reject an all-ones 32-bit immediate
and returns an undefined instruction encoding, which can crash the kernel.
The fix is to add a check for this case.

Second, the code incorrectly rejects some 32-bit immediates that are
actually encodable as logical immediates. The root cause is that the code
uses a default mask of 64-bit all-ones, even for 32-bit immediates. This
causes an issue later on when the mask is used to fill the top bits of
the immediate with ones, shown here:

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

The fix is to use a 32-bit all-ones default mask for 32-bit immediates.

Currently, the only user of this function is in
arch/arm64/kvm/va_layout.c, which uses 64-bit immediates and won't
trigger these bugs.

We tested the new code against llvm-mc with all 1,302 encodable 32-bit
logical immediates and all 5,334 encodable 64-bit logical immediates.

Fixes: ef3935eeebff ("arm64: insn: Add encoder for bitwise operations using literals")
Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/arm64/kernel/insn.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 4a9e773a177f..42fad79546bb 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -1535,7 +1535,7 @@ static u32 aarch64_encode_immediate(u64 imm,
 				    u32 insn)
 {
 	unsigned int immr, imms, n, ones, ror, esz, tmp;
-	u64 mask = ~0UL;
+	u64 mask;
 
 	/* Can't encode full zeroes or full ones */
 	if (!imm || !~imm)
@@ -1543,13 +1543,15 @@ static u32 aarch64_encode_immediate(u64 imm,
 
 	switch (variant) {
 	case AARCH64_INSN_VARIANT_32BIT:
-		if (upper_32_bits(imm))
+		if (upper_32_bits(imm) || imm == 0xffffffffUL)
 			return AARCH64_BREAK_FAULT;
 		esz = 32;
+		mask = 0xffffffffUL;
 		break;
 	case AARCH64_INSN_VARIANT_64BIT:
 		insn |= AARCH64_INSN_SF_BIT;
 		esz = 64;
+		mask = ~0UL;
 		break;
 	default:
 		pr_err("%s: unknown variant encoding %d\n", __func__, variant);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507010504.26352-2-luke.r.nels%40gmail.com.
