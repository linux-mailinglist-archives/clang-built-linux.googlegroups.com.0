Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWGUYPWAKGQELOGPGDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D777C167E
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:31:06 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id f8sf3965403plj.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:31:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778264; cv=pass;
        d=google.com; s=arc-20160816;
        b=pc06Tfgx3bLzt0qvP5hJGihMvxlJiMgGCZSbSb7Q2smMXBZ0nH8aBFhtCTfxZ099cp
         0fRIcqF3o+u7wuIZNq/wke/yskue9/+BH6LiJBi1pdAB0prjC+OMEXkCVdswR3dHM2+L
         8WvJEPeXQe32cfVJC5g4Z4li/WGIpVEGr9XGc1hgcWA73KLbUvrRZZr/Xh3bIijFwkv9
         N7hMKJ4iamIx6ReE8Fs3C5H9oy/0tUp9PWcdPCQpdwwfST9J8vv3GRg5lUDxI+AcwnWr
         tWHmLnrSthIjOSstjUEgB6da7vS3dgcP0FCsK5j1cja0RSPkzEJ2Rb5dDOtd9CO2DkKz
         vcmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eIs3/a0YjRIvEwbDcmNu4Kt9H4+rYv16iKDw++oIWE8=;
        b=lE3YKN/tzx3f655gzhojlG2MNsOztGjXOdnRxg7EPVuqSA7k30LSkQrkLCdcnk+Ie3
         x02XB5NOTSywyo0rLYGQe56pBLNiTBWT9KeW0jJLfy/loKctOenRcsySdfZwz+VyvaSl
         DoRRGRwSBs6Q9p5vncO9egMmLJZ3mlynDNl0fnOAJ7C1f07pXalMUk9KjI429EDn6wV0
         eI4x4pBIo3KZfCALYKqaiTkfe8+WF83WKlxCncaXgdJstGDD7mZpPvHF3uvuPAn3PNQW
         BtqMpxUFfcDwT/dzyudOqufmKVQurHeVeEovkFkrexIVhx9BaqUcyawhAL/vJJmzr5hA
         nSOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=o36UOu4p;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eIs3/a0YjRIvEwbDcmNu4Kt9H4+rYv16iKDw++oIWE8=;
        b=WyXjzFVA94Gj1avCtxEyZm7qifP7O3guwswzScOQTb1YVm2xnmUjAr6WIhZ6XYvnEl
         eqzGn6ucseOtIgwSMAfaL2Uha3m+i5PJup+dknTYu2kMghA8pE6WuyFkJ2mtqIpx/JV/
         CAVUn0EMyLkScFKur9OI3pbff66w2MHtNkyE0+3SfZResIfRJdKEgKd+r6jgIRtj2li0
         BwC+eVeWvecmikotpxypeDMeGEVwZYBuWGdz/ER+CrGO8wU0rj1eTNNIqfa9kPxEes5+
         9pu31HaaaOXEvLVn0tS1xJjDhm/gYjiw3SQhaAHAXryrOSAeN0U/186Xpp63BSvVT47+
         +utA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eIs3/a0YjRIvEwbDcmNu4Kt9H4+rYv16iKDw++oIWE8=;
        b=IgrgZ15q88Wi/GAkG5bycCt4kKUB7FhXdZR0HJ+yCJLg/+ANQwyxsPspsevkOejClM
         94AL6RJ2CCqw2wzXzQIALpjFmQxf+/LhDbvkBrlj5H7Yg9ZtjYo2x9mI8eKr0U+r3gI8
         oY6zWi9RJuR7+RegofetWAY2m19z874SUIyCMMEWYGtBFyTTEgO526AQ1LvxV0xT0NpX
         /9GgvUvgU2UbAp4xYxrbTOViE3nHykOcCnEBycQ+XB4ev1NxiSQb2u9Ubm5+wWi4U/YW
         /OpVlw9iSj/ogk4gK3GuQ4ktEv5LltXsVYe/JsGiaXnwXoBjys2hxdnn9NXinqfpF8Be
         lOMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV4RgFZ73NFHSWsACMbFpVxaoM19RyKbn79Dk87BpqVAj3r0kXh
	QEIUlJ8R0XwLsDhbS1EM07M=
X-Google-Smtp-Source: APXvYqwsc3FcJNvL9du0kU3kdBYTZUeRBNNWZE+76TvDompKvNkB7Ej8RqQUyHreze3qvie9pKec5g==
X-Received: by 2002:a17:902:820e:: with SMTP id x14mr15921872pln.223.1569778264699;
        Sun, 29 Sep 2019 10:31:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2a06:: with SMTP id q6ls2142016pfq.14.gmail; Sun, 29 Sep
 2019 10:31:04 -0700 (PDT)
X-Received: by 2002:a63:2254:: with SMTP id t20mr20413549pgm.173.1569778264230;
        Sun, 29 Sep 2019 10:31:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778264; cv=none;
        d=google.com; s=arc-20160816;
        b=igp/wKWIJFmUWXSKYFAS9wvxBJlWuYz3MUA3xtIXk6+KUpLBLG9MRoKOz4C6k0RG9k
         BC/b4g0Gm3F09H/6h1DTxn7ZSMmczL/VgQiB1iN4dEdsr+C6EWTVMXBW74gsWWtX+7GD
         i3P+t/rXTW7oGr7zuKYZP8WarNlpE/YhHDUfYHCUtia8mLVpC2h/A95ivrbnEROyMaEh
         9gLqoPG5y+zVnXyBLtxnaURzr6FMWV1N+RlTNqf4DUuMTcFSxRsLjh17yATiUse2wmWD
         caK1Ghsk7WhV0KR14BKCXKKOTvAMoKNR+DeBp0d4ihqeb71fNGytF7Cv1mWikBcN6P4b
         yVbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Km/ppPJmyMA0ga9xW92P7frJlEE/peQHJTY+Z7k2Qfs=;
        b=tIdLvbejlpT6T1aoH8X24zM7CTurmq/caw311FwromOc90wfP9sy8AbmLC4e3/sBd9
         6QVJxULEQgIDu7C/fJewePF12Efg/FOy8rmxT41bDBmyQqtVgF4GVrESvFUNMf9btV5R
         Q7ZKwn/1JUn9TD92Grflm685SZNnrhjZQyq3kfx4i3SgF8e/SRRN/sFP/ZNGI21rhEMC
         hQ0NHny4LMU9jEjjiv+Jjn5PSrl3UsPL2jpVaKDlarVVOr+ua9HmRpbqaEs8h840/y8n
         oEThNfeuUL9mK7M2LAhWBBzxNhVWl4mfejHueFvOTvQ4ikAUPuRgESZY5lDdvMpkbyhg
         de4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=o36UOu4p;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g12si488004pfi.5.2019.09.29.10.31.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:31:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E100221882;
	Sun, 29 Sep 2019 17:31:02 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.3 03/49] MIPS: Don't use bc_false uninitialized in __mm_isBranchInstr
Date: Sun, 29 Sep 2019 13:30:03 -0400
Message-Id: <20190929173053.8400-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173053.8400-1-sashal@kernel.org>
References: <20190929173053.8400-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=o36UOu4p;       spf=pass
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
index 1db29957a9318..2c38f75d87ffb 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173053.8400-3-sashal%40kernel.org.
