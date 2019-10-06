Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBH6N5DWAKGQEK3ANN5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E2BCD5AB
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:38:40 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id i2sf23065304ioo.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:38:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570383519; cv=pass;
        d=google.com; s=arc-20160816;
        b=c91/0qAd3MHGLoULKTBRv1m+XUlsSu4r0+1xyOcwvzOuEF1WyYKptZqVULBCsRUZI9
         c5hhZx8z0hQc1/72eKMQmpu+DJr6gidS8Xf+l6q4+7E23kpBQ1P8mPJnlRyHmCfJsR/c
         fkI1EK1eUIoJ/RPvEkUO/ThjmpMxfJkpMYhsHVBA+o9hPnN8aC+HwLEUZLCdqbfUqUta
         dj5DDXNDtNL9y3FkXfXZIZTbUlE9pzN/GPouWdGgfLYMdPovNFzj0a9TVw2s8gCekEGy
         W3D7w0NyjFZrtI/AA4XS0wW6YdbvNOhn22OTDYNO9KAdtJqMvp292j4wBmpaY/hE1CHJ
         W8cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=y9l0RbSnayfT2YWU9y2TWVrM4q0A6G1hpfIcB8QRh6Y=;
        b=RAg29SIaED+dhURE5Lhshy197NJNAQ2heC5j9ANqbTN+mXdiCR+PhbWYmuydR7eVCq
         vx7wkp4VFEGZYVMUgbmDC3QciLBk+GfZw2D/1eSDxISFaE1rJDfaXuZQ8eTWne3OofdV
         36cUYNWurRkT6ZsnAOcxIHcvKQ2py1f6KEMnUgsQOzL7oV2b5fbkHVhe54Q5p1TvGT/m
         vwhiXnSlj5v8kUdFZeeSzBcvtkif9WIOklAddLZMY8HQNPw1hTeNlFn+3+sjkWvZY7OW
         lMaf4nNjkX4xj9MHtQQp0vljquokXdubC6/er0cq3G517zq5UWuPE9GGA3rMMklMlzeG
         B2BA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="sUJ/YH9d";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y9l0RbSnayfT2YWU9y2TWVrM4q0A6G1hpfIcB8QRh6Y=;
        b=h6oJ5Rj4Fqv0ORSxhtDw+dcWut17kHHbSoSVum95xcLmn6jpOStHRwMc4wLXCEzFKN
         KMm26oefMqgBW5vNFr62EVKbdmVZhssUf5NEl1CaQCtgmrbUDFdnMXSGdAEnBlfRoEJv
         n+N3oU75J7Yj2mdORGd1p21vt1LSDK21cHZLpo0yTeHrQ5AVtNKKqfvfS/OFjiZm0wbl
         VFJnjt20S24FeeVXptyz4QjF5kK73GgimONyZGftNXxqpBObLRBwt9+nStN4Sre0x5/6
         0A47VRRtzDPo1nMF+CZF4vcperMQD51N9GktX+ojQyvFppmbN5kKcbRkdeASbQREL8vk
         xVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y9l0RbSnayfT2YWU9y2TWVrM4q0A6G1hpfIcB8QRh6Y=;
        b=Vx84FaRgBiw0L+iRmkUjmIeMwK4GSPwhQkShDF+XpPwegjRshztJH4tGPdTer1yZWX
         mLft3QrtNGmYG0GzIE6fYUUUvu4IFbY7ixP5NEYzqtsi/gFxjH1YYrkzBrj0zK9GfDpP
         6rwHmMRbD37DqhGW+pvRw/840fTsJWN5agXrz+ykTx5cwSEGP6t1JVWvQHAdWUAMpJ/g
         nkHI1mfFwbzElfxNB3bLVx2OdfI6+5tVNiDmPlCX6DPvENtrxEdC7aotBZMTKcGDr/Gr
         t653iBvvMDBuMWAh+S9f5Y5z2pVfgyQ7fyrnXHQKiG5EZtKdzhDHblaqi+q2fFAcMnm4
         787g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUjFtLm+1lg4K7YxPBDhGqZaEJWQs7lM0JG3u/unloMkEgzngcb
	qwWdvKjiscYIUSxrIpO5WWM=
X-Google-Smtp-Source: APXvYqxf0rtsm65FcS3J4oOhUrfK91oDzBL7cMUfy/e+k2O/DmJpIcWhDAdK27zaFa7/g1eD/Kqgbw==
X-Received: by 2002:a6b:f90a:: with SMTP id j10mr6088734iog.77.1570383519736;
        Sun, 06 Oct 2019 10:38:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c90f:: with SMTP id t15ls3713340ilp.0.gmail; Sun, 06 Oct
 2019 10:38:39 -0700 (PDT)
X-Received: by 2002:a92:9a0f:: with SMTP id t15mr26708715ili.25.1570383519393;
        Sun, 06 Oct 2019 10:38:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570383519; cv=none;
        d=google.com; s=arc-20160816;
        b=nnThHCwnpmtkDjU0bdy1Pt6T+rLrLxmDMOC/I2ssPP4L85UqOORpMxPAuzGizmHdr6
         kYu1mkErbn68XL2OuW2JpNCqtcm4f7u+mCejC4lfSfJVtOT2pDL9np4JSaJDDt2syoeq
         lJR0gFZUkxBzWjMntCnN0EHIV+2xxHRw0is141u3rGk4QjnB4MBBOq36zdOu4NaRYAA2
         G1DBYTjlohvcjZSqNGFzfBmFMzCEVKTWvOiQwbhHRMRNWWAGJIgIrJsVRkeMSrCI7wYz
         YI8tEPYgQpLQKLeHtblrKV7ktzNWSwC7YuT8jTIEGgCNblCCyuWWWdIqjrX1HfMopsiN
         lXlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=BvswBD7BVsFjMzenp0178eZ21x/JT60JtfypQc2JI14=;
        b=bkTa0FlXxih2YoMsL022lcXn+8DBlJ2FKMq6s6G+k/k0Ar9x4r3Icf+d3SHwox2mms
         XaSGplgroykNnX9sFQ6jJIJZJutVKjv/Rzj2jrQGwKCP9MkypUCbDQs6avn3W2j+yuew
         d8ZO4uegPhCXm357eNwQtWGJX7V6s5GKygZgPomFehLOWjUFclPoiqRxN/bcNz1+XNYD
         RnXVPZ+l8sS/Q1SQdapEUs5/K9wimQ4I4LyeuUob8UCdmxguOZ1f2GEWY9NxBlG0n9oW
         IkpJ1BNy2XDIRJtn/qnOoYPfBscJbU6hg85z8KP2Q3QfS/2Q7F5qwjdwkx4jiC56ShOz
         N+ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="sUJ/YH9d";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s5si315394iol.1.2019.10.06.10.38.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:38:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3A8692080F;
	Sun,  6 Oct 2019 17:38:38 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paul.burton@mips.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.2 091/137] MIPS: Dont use bc_false uninitialized in __mm_isBranchInstr
Date: Sun,  6 Oct 2019 19:21:15 +0200
Message-Id: <20191006171216.429826413@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171209.403038733@linuxfoundation.org>
References: <20191006171209.403038733@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="sUJ/YH9d";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171216.429826413%40linuxfoundation.org.
