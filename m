Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBF6Q5DWAKGQEHMNUV2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 5314ECD63E
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:44:57 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id x8sf8212929pgq.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:44:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570383895; cv=pass;
        d=google.com; s=arc-20160816;
        b=1Bc9gMPVNC7XzyacsxwTy7fW3u0eI92hiqPT/pG3ZWTsnR2EU49LepbI/JNaiyvz69
         13jFz17ul3GlDhhqZ3n8OG37hExa2Yz9QYDXLhh+1uu7tl1YSFBiQQUizP0OF6LonK76
         0vzg7TIhzdDW6CB/adh5iIgJNXpkcPwk83S6KS8jpaEzURRyPhUuWhqyWP0q1j+AgjeK
         MTW6Vz2wqlrc7RvLAMRLUahJJJoeHR3egeXpkbv8slWN8ecI1TJ5GjjEtAm6XNW12I1l
         fIweXZ8ZaT8iMXUp1tH39I6FsuOTvR37TnG0lPvOGAwqRQh5uunwltqNL8nvoFY2HXTw
         r/1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=hKSpV6L8BfpjsB0gxfBzZ9EEnAG1dP/6Fj3y/Ecnm4Y=;
        b=qX+LCZWVqXC3jDUcw7V471RAv2rXB1nJ2rdg/6H/1KGY07BnZdkffRZUk6s01GgZx5
         Rc+BSm1v2QZ4W0GznSD6Clzt3glXwxXCxvDqIbIsaQ/OEZPMc8IfI+TtPnFkJK0ILvg+
         KnyAaJeaJKgT+IOhq1l6liMP8I8qnM7bWRSUrULaujhatSc9VaG7t6qFVOL/skcVpgAf
         VqCHOzw2deUZkR/C2QQJ9NXPEeQxAfV9HRnLsN+kOthsqlEc+YJJR29kBxrHVQjYW382
         0exC0h1ZjNrv7hOfTcNbCtPodUU9J1tKISe5M0BsRrtMEoFXG89yq8Zh4xemLgiTryLj
         Cm/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="oWbvw/yC";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hKSpV6L8BfpjsB0gxfBzZ9EEnAG1dP/6Fj3y/Ecnm4Y=;
        b=tKxonQPCWwduQ9OoiHed8/HwQawJd7Phbt+zAjNotT+b8AD6Dz5a3OLnvnUypI6TvD
         uANQg+kSv1yeyQ/zLDQLUdg49bN+aNaGGxScx9fCHmY7DlK/PdR+7KmDe0pFIbRv6DiX
         aZX6stiNuNPoiQqpXZ7e4m/v2h+ufCc0jJR0HIMsIfze+kbzFZ3ssdZN3Nr0qUj1RGPE
         rCYnpD/lsIIvDJtecgEFUE8f5cLKytDJOgXtQ7SUGZAUhnaunGBS8ODfExNrWFYUgsW7
         xkH8FO1JC3yPFMCV83spbceHbBE43P1xisTXH7rBO8clSgyvGp5G9XSZL0FAJFTPUs3k
         zEzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hKSpV6L8BfpjsB0gxfBzZ9EEnAG1dP/6Fj3y/Ecnm4Y=;
        b=TKK+so1D6Ct7bk8Uh9ZfQxhEKfvPzGARDhZ8POG6YIClroV5o7cA63aJ7S7hlulkrK
         QWMx+ShOgd5to/Xu+avFTR/uirAx/LUGeg0Sh0ZG1i3iXtjfzUuuqBiauG1E94/WhdRL
         M9Sc1PZI93txPWq+9a81APUTqXA1h/yTi9R2cAtH8GKRsFxV4pqmpQCBbxCE4/i0r/PM
         OS7WjrceMIQk1JxvnVrRA5fltdSXFQJw+x0oSTVRbNOAoqKmM9cC8xxFsO1t1n2tDrJe
         fRNik0oxr8Re0A12fhe+vqYIMfsvvXV5QhhdKFrbzyZVWFyO+7F3l5zTE4UUnxH9y4XR
         WHGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4FktzOFl2afvfFgRUBAXapb4xJLLdLEQa/E1jbbhXhB5SO0Rq
	pqDnc+e5upmALsZK9OOhKuM=
X-Google-Smtp-Source: APXvYqz+3m7z7wCjMF7z6zvYHvAYvz4z0KnVMtpGGbRtjUJystGlUZ6wAAZbmb9/D1OWXKMXOYtEig==
X-Received: by 2002:a62:7790:: with SMTP id s138mr28163932pfc.57.1570383895757;
        Sun, 06 Oct 2019 10:44:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fa7:: with SMTP id 36ls2350014pjz.5.canary-gmail;
 Sun, 06 Oct 2019 10:44:55 -0700 (PDT)
X-Received: by 2002:a17:90a:8987:: with SMTP id v7mr29700624pjn.85.1570383895430;
        Sun, 06 Oct 2019 10:44:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570383895; cv=none;
        d=google.com; s=arc-20160816;
        b=B8O85V/mSgdyP7CR9aZtYf3atQO1jqQC2WA3Z+X5I34w2QJL2kIUdnHICh56E8vy0o
         kKh9WdWsBfuvY0sFoZbgqcFoP8/wWzopJfhldw4ObNmFLRcO6bmibFt6EkP7COTFhY9W
         vU3g+42jWAMoiiB4LluUfMmzS7kwfdYoaS/yHc420XPsnipXP+lerHR6rWgRrg8QwWi1
         FLvs6oXKCBWRLt3+VQ7yO0kHHfcUSsJMI8aJEm3ejhgI7FhVbhNYsiMAAUSFLJzrjXuj
         3KZFvMnZ/dHSq78ehlqElWKgaqKfhx59SAes0QAP0kQTAxKYAWG9elZoeKlY7S+oOaLb
         67Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Km/ppPJmyMA0ga9xW92P7frJlEE/peQHJTY+Z7k2Qfs=;
        b=DSXt4iuJZZAL1ixCF0s0rcjn73h4Ao3ut/xmCBZzAYB27ZcuWiDWjiv5SXQ5rCGETL
         975U955tCeHINGrIAa5I+AbCcdMoPZ8xotZGfgOJQH7XOw27sV7emh4l3j4JtBd1lm3N
         jWYaz2TGz60y2wefa4m7AfzAB0HMF9L+Beyu1U9vTFzTpvp9F+iHe8N+tzb/oBOYhbJj
         oxg+CxQnlYjc9YTReJggHpFxVWUFdFwHsg0FKZ1IOVTES+XRY65ig0Jhb7ue5U1XoeXq
         Ea++OoxUrd1WrmOXXd/5MPQf26FFifg3/6BjIKvsVhRcugExn0+GtaNahRhyFVI5NChm
         mMBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="oWbvw/yC";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id fh7si647013pjb.0.2019.10.06.10.44.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:44:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8D4FB20862;
	Sun,  6 Oct 2019 17:44:54 +0000 (UTC)
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
Subject: [PATCH 5.3 083/166] MIPS: Dont use bc_false uninitialized in __mm_isBranchInstr
Date: Sun,  6 Oct 2019 19:20:49 +0200
Message-Id: <20191006171220.491799962@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171212.850660298@linuxfoundation.org>
References: <20191006171212.850660298@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="oWbvw/yC";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171220.491799962%40linuxfoundation.org.
