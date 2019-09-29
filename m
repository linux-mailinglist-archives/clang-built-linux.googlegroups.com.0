Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBRWVYPWAKGQESZDOORA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C462C168F
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:32:56 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id g62sf8517874qkb.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:32:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778375; cv=pass;
        d=google.com; s=arc-20160816;
        b=w9LMTXUFHzsyg2+9jJLqXWasppF9ZsCB/qiT2Eu4c5kBwTFZZyS3hAJC0WcFLqmwTB
         js4SNOUGzkBDYnMI0ngWBq5UNZYyvYjMWITRU/fmgsYAwy72HDAdr5t7sjr4ycOxszA8
         lSdB6lXKMi3Yg9MtZn28dCjS/SJINvPB4Uclb/GJhPjBdh6nnEK8jXFyGcrUvEgHaVdy
         Ol+fVTYRFsVj3PCSayOgPmrY99SHqa9vocQ01a8DTW3fM/MGB2EQOIG+IuZqyAf0SiZT
         97rtoIno/l7U4URw0MZs9Y7/uuv3OXMQ89/j8oYUwQdBRjoV5Oz+rguvZ1Du9PaKpEvm
         nwxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HnM26f4RB6eQ3GcNHIHoYsdSKUk4tT5l/94BpNm37tE=;
        b=N++uxY61+wI8Kp+l+MLG47vb8SW9kAx8RNg6sdtiioYtIScM8BDIqXqF2cR3UekRDq
         wEue7UutiXcFZQkcjjq2GAN2x0e3o5KdlugXVJS2ZrpCauvPHwgaCVt2n++vF2eQVfB6
         LKuArziqIXY9udcsOH6xwVZAGm3ymfV6xzMvpm1ore3B7yZzpCEC6B9ta9miXALGDUYc
         EeuxCG9DliFUOwUtFq6Lxy3ziF/XyLcH1lCo4rWe14f2irE+zNSNpiATlcfXzWFpkohO
         JtHNJC9w2n5Eul4YI9FctU9CdGbFheF7105cBL3uCbmdJM01Mr1+K7OlExiZFCamH/LK
         0q0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2KsgokMW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HnM26f4RB6eQ3GcNHIHoYsdSKUk4tT5l/94BpNm37tE=;
        b=hDLFFms9kJpwDigJ/aUR3WlVIDvMLHb6Hdvwa+ev1ORcXIb+djgwDJKmBznsSblTlh
         As81DO3pBCrJlQXJP3nfqSe0nDRsJuF+Rgy7lzxLR1+t8+aqwU80SeU54cZrmouhQNQV
         PBd3nNnUN7qTParRFz+46SU8TRyv0NparxBYfBq5/ItHPA7lUCMaIxiQZak40KlqK9rF
         0nkdUeO8rqyO9g3+2F+VH3afiscskiK/qzuNyV1nRrW6u3Uc7Pd4F8nArxIZusKLb6J7
         OM9Vw2VbwHugpaDKWp8LlKAiaF2Z/KUEQBH6uETq+JIzODLzQoOGNdlZcl4TBmRIS5JP
         PKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HnM26f4RB6eQ3GcNHIHoYsdSKUk4tT5l/94BpNm37tE=;
        b=J/HlKdEOgRgNcPP/H8Qdal21FJ9utrkmFUy4eJQup42R2KRFfUZhkZKzD3eL+kDjmY
         eA++3kUFQoalqWp1ky4T9RBXGgN6gvcfWLU0FU6Nlb1p14AVffv4/Ff52nBa99t4cIVM
         qXFJEiPFAjhNm+aitmAS9oKI+MSe2zAnnGRNRC7vogioOyJ9s1Cdt2U7BvTFfZ0QndGg
         0GGfyfsNz/yCHIdMTImlielshc879o7DsIJ6VgzyULqC0Ccel6ied8UVqRo57QavZ1Qj
         cXEMh1swqWDx132Glg3WB0wvUmD/fmLzsV0sFRnFBs718vbVXKJ+3Cn0x4e02h9Obo+G
         +pzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXPUyv2ULIu7lMO1MG9rewmtkmMI9XA4wLrdiNr+VdgiocQ4rIA
	qz6mvm9zXGtfH5SEO80987A=
X-Google-Smtp-Source: APXvYqxFMLSfOatq1SKWu26XKUXOCgR57bJpZ2xJwb/YuiGU4sV/qWycqJvzY2EI3hrAy1lsAX8IuA==
X-Received: by 2002:a05:620a:1124:: with SMTP id p4mr15207846qkk.83.1569778374956;
        Sun, 29 Sep 2019 10:32:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22bb:: with SMTP id f56ls3792595qta.3.gmail; Sun, 29 Sep
 2019 10:32:54 -0700 (PDT)
X-Received: by 2002:ac8:3ff2:: with SMTP id v47mr21330948qtk.15.1569778374737;
        Sun, 29 Sep 2019 10:32:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778374; cv=none;
        d=google.com; s=arc-20160816;
        b=TH1lzEj8hUEiN+7Ij1lpeC1jkXzN7fVuxjzHitfkJy8F/BpF/J5ZTffcTO9tG4xea+
         EU+gJw0XIZTMbEM79iz84474xqNHxhuw5+U0/cW2hqtCndGgpOk0mA8XVJ7NZ9lf2m6z
         loLNvHoUkzHL9bSu3umkxf0uH4AmLzjFZAMjjiYthV7oA7yK9GCsjc/7Y/i0DI/nYO3Z
         DOMXGapuYmGrMwM62XDbm+bNfJQnBk2DFuoDM4KiG3Xm27x4qaCffAhMadnH5QZwx1Dt
         0hQa0AA4dggavpn21a+uVf0ZKHp1RYlSwysYNvv8HKDnIJgChcwBGk2yUcPkYjb9HLoc
         Y2mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BvswBD7BVsFjMzenp0178eZ21x/JT60JtfypQc2JI14=;
        b=VFIZncqMXcTfo4gJdaOYUM0+Iln0icL8XhhmcOYElbyRUtmAdNDu78FXFjVsO7L5bt
         pHYZBBV5zqHzdMar0zSkKTUO9Y4S6HE5QYaEMqKlM8+GXPnwg6yVDNgAFpdMCgIUjrst
         8s8jrHaDxgjB9lA9k3Rr6H+gSti000Du2wIkdSUIs1CBYOY79zSxp/fbxiMCUD+IdKr2
         N40GmE7OVEoxIZJDqZ1lZol1XtW1ruaV/UuHK/fHNZjgRcHdwd80nE1aP9DilWqhlO74
         9X48jomWPFfeYzQl4/jgNA8SnLwFtnJQLLiv426MQIyVSOMSvYZrrxN4oCz+5zXKUR8G
         YOXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2KsgokMW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u44si877682qtb.5.2019.09.29.10.32.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:32:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8BC0721906;
	Sun, 29 Sep 2019 17:32:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paul.burton@mips.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.2 03/42] MIPS: Don't use bc_false uninitialized in __mm_isBranchInstr
Date: Sun, 29 Sep 2019 13:32:02 -0400
Message-Id: <20190929173244.8918-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173244.8918-1-sashal@kernel.org>
References: <20190929173244.8918-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2KsgokMW;       spf=pass
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

[ Upstream commit c2869aafe7191d366d74c55cb8a93c6d0baba317 ]

clang warns:

arch/mips/kernel/branch.c:148:8: error: variable 'bc_false' is used
uninitialized whenever switch case is taken
[-Werror,-Wsometimes-uninitialized]
                case mm_bc2t_op:
                     ^~~~~~~~~~
arch/mips/kernel/branch.c:157:8: note: uninitialized use occurs here
                        if (bc_false)
                            ^~~~~~~~
arch/mips/kernel/branch.c:149:8: error: variable 'bc_false' is used
uninitialized whenever switch case is taken
[-Werror,-Wsometimes-uninitialized]
                case mm_bc1t_op:
                     ^~~~~~~~~~
arch/mips/kernel/branch.c:157:8: note: uninitialized use occurs here
                        if (bc_false)
                            ^~~~~~~~
arch/mips/kernel/branch.c:142:4: note: variable 'bc_false' is declared
here
                        int bc_false = 0;
                        ^
2 errors generated.

When mm_bc1t_op and mm_bc2t_op are taken, the bc_false initialization
does not happen, which leads to a garbage value upon use, as illustrated
below with a small sample program.

$ mipsel-linux-gnu-gcc --version | head -n1
mipsel-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0

$ clang --version | head -n1
ClangBuiltLinux clang version 9.0.0 (git://github.com/llvm/llvm-project
544315b4197034a3be8acd12cba56a75fb1f08dc) (based on LLVM 9.0.0svn)

$ cat test.c
 #include <stdio.h>

 static void switch_scoped(int opcode)
 {
	 switch (opcode) {
	 case 1:
	 case 2: {
		 int bc_false = 0;

		 bc_false = 4;
	 case 3:
	 case 4:
		 printf("\t* switch scoped bc_false = %d\n", bc_false);
	 }
	 }
 }

 static void function_scoped(int opcode)
 {
	 int bc_false = 0;

	 switch (opcode) {
	 case 1:
	 case 2: {
		 bc_false = 4;
	 case 3:
	 case 4:
		 printf("\t* function scoped bc_false = %d\n", bc_false);
	 }
	 }
 }

 int main(void)
 {
	 int opcode;

	 for (opcode = 1; opcode < 5; opcode++) {
		 printf("opcode = %d:\n", opcode);
		 switch_scoped(opcode);
		 function_scoped(opcode);
		 printf("\n");
	 }

	 return 0;
 }

$ mipsel-linux-gnu-gcc -std=gnu89 -static test.c && \
  qemu-mipsel a.out
opcode = 1:
        * switch scoped bc_false = 4
        * function scoped bc_false = 4

opcode = 2:
        * switch scoped bc_false = 4
        * function scoped bc_false = 4

opcode = 3:
        * switch scoped bc_false = 2147483004
        * function scoped bc_false = 0

opcode = 4:
        * switch scoped bc_false = 2147483004
        * function scoped bc_false = 0

$ clang -std=gnu89 --target=mipsel-linux-gnu -m32 -static test.c && \
  qemu-mipsel a.out
opcode = 1:
        * switch scoped bc_false = 4
        * function scoped bc_false = 4

opcode = 2:
        * switch scoped bc_false = 4
        * function scoped bc_false = 4

opcode = 3:
        * switch scoped bc_false = 2147483004
        * function scoped bc_false = 0

opcode = 4:
        * switch scoped bc_false = 2147483004
        * function scoped bc_false = 0

Move the definition up so that we get the right behavior and mark it
__maybe_unused as it will not be used when CONFIG_MIPS_FP_SUPPORT
isn't enabled.

Fixes: 6a1cc218b9cc ("MIPS: branch: Remove FP branch handling when CONFIG_MIPS_FP_SUPPORT=n")
Link: https://github.com/ClangBuiltLinux/linux/issues/603
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/kernel/branch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/kernel/branch.c b/arch/mips/kernel/branch.c
index 180ad081afcf9..c2d88c1dcc0f8 100644
--- a/arch/mips/kernel/branch.c
+++ b/arch/mips/kernel/branch.c
@@ -58,6 +58,7 @@ int __mm_isBranchInstr(struct pt_regs *regs, struct mm_decoded_insn dec_insn,
 		       unsigned long *contpc)
 {
 	union mips_instruction insn = (union mips_instruction)dec_insn.insn;
+	int __maybe_unused bc_false = 0;
 
 	if (!cpu_has_mmips)
 		return 0;
@@ -139,7 +140,6 @@ int __mm_isBranchInstr(struct pt_regs *regs, struct mm_decoded_insn dec_insn,
 #ifdef CONFIG_MIPS_FP_SUPPORT
 		case mm_bc2f_op:
 		case mm_bc1f_op: {
-			int bc_false = 0;
 			unsigned int fcr31;
 			unsigned int bit;
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173244.8918-3-sashal%40kernel.org.
