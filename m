Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBFVLWDZAKGQEMHNHT6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE6A162B06
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 17:49:27 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id v1sf7349029lja.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 08:49:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582044567; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q0VPYKSMiHYM50uCQme9mHBU4tTaCs0jOOzqGBQ16l8FCSXczkeOpiLUbpQo56whsH
         3c3mzqSCzuVA/qzJdN0wRdgFPmdapDzyGDqs5l174NpCi1quY3EywoDfK9+ARbgLAcOl
         ryJEBENwGv6OTPvP2FGuLRtDs0cYGy3hHqltkp+Xzs1w2qEF6z2ko8iweRHghy5ZvGDf
         3hX7Gk8uLc1zQ9y9GdsfkHT/H9rb4szlxVq6gp6Fx+mW3HwCSAbxytz6/i2+PG7WF7dm
         B29CwmUVZTOT98nj8JZSm7+PPl9egW3eh7dTtrDOfgBIeBlr6pxUpSqgHd9IN6tOjdKP
         dyOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3HzfQhjZB9gFJ/jeSTgPOtyJNdpZNdV6dT1TKhonhSw=;
        b=jMjbFvjcp0S4PBwJ9QLAjUdOzebxvLYj3+Cefg6oif87EsB3k5t/AypmNq9oQpa3Qz
         Yi1FxR3QKdnjADbJrulEE2bgaA5LIXQbrOkKLObeu8aTvNLhhUfmN+UUT+ykvaPLtFPW
         D0B30YoCNN3/mvzGZ+YVdjXn4V0gVzOlkA5DK2NgmXoPea9CVpui3TEytfrBH70Bx3BG
         eNw9Vi8YLAslTlxoAQxouY0X0I/4DAS8ucorU8QczXXxku+WchLFflohBM+fWyMD3/5O
         gyAOa2T28TBhGdBfZKq1Ah/i2OEx4LVSZ1GSuUcs+Wg4tN31BPZILnZDy0JskQeXH6q5
         VmOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3HzfQhjZB9gFJ/jeSTgPOtyJNdpZNdV6dT1TKhonhSw=;
        b=kju5t2yoQ7EwDK7vxhJNYkNa5EcBUR+mpY8cautH5+ywAsDbrRD05rIM+xe/NrZ02Q
         wtVAKL4xYZyLnAXUusnABdWUKIPOqlsSGeFR+90YLbRmRhqKrxMECOqXXKpmrXX9QMEZ
         8sLMsNoovs7VBNQPrAVTgPSUUI2qCBdIheBuOOlc//2+8pHfF4K6NFI/DlRKWesFQO7D
         /fgM6yhpbgDu25WHAbQAu8DLI48YLNGME8k3tgO7KNxYQ4RPIo6s9SN7g052aJT1Q9xH
         lGLgOyPw0PExzHKFEMKN95g3r/5s+0F5OTo7GYbjj/xZtbJfc+sWfWxjkzwZq8NVVDNf
         n+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3HzfQhjZB9gFJ/jeSTgPOtyJNdpZNdV6dT1TKhonhSw=;
        b=LxB6VRnO3WmXBXp0jrxvXDB/UkAp6Xz9BkK9i77mBsWDNnp67Ir9trK6e7pu3vbESK
         DEiCyXG4yXwFyDIz5gSY5Bprx+3f4pCL4W1I+yzPDrglYiMhqc7I3UuQwodWNq9o0DF1
         D488D8ySOrCkrvRsMYIEHig8cVQFKBj0kxUWdH/KCKiVbK8gpsQpjbZNXBDJ1eHMygPA
         PPE7SK82TlL5O8jdg7XPqvEpWbtyey/wN56ksfpeJWe3aHI7h4H0cuKPTkfYOm5Oczig
         8qjNKpDzEJ+jOPtheN0C1DgmoXYdbR5ai0Ku7UhI8pBD656RrFoxp6pUa+3xa9kfDvg4
         r8xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWtGHksZMTlxJbaLnju55/4FTqx1my+gWA53un8OYkaxOIDL1VU
	WnqiXvUy+TqXi0ZgdQArDlg=
X-Google-Smtp-Source: APXvYqwpplEl43Aa/1n/999/xBsd2D8tWwziu8jGDN3Qip5IjkSC2zP0LVRPvbie92JYqK7PEIAxSA==
X-Received: by 2002:a19:ac43:: with SMTP id r3mr11166403lfc.156.1582044567044;
        Tue, 18 Feb 2020 08:49:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8790:: with SMTP id n16ls2995936lji.7.gmail; Tue, 18 Feb
 2020 08:49:26 -0800 (PST)
X-Received: by 2002:a2e:914d:: with SMTP id q13mr13374588ljg.198.1582044566426;
        Tue, 18 Feb 2020 08:49:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582044566; cv=none;
        d=google.com; s=arc-20160816;
        b=tWdkkOLEZNK06JaWgDwAz0RTihVkUiA6Dl5FvMiIlfuz2/IUbX/LUZh7aEGWKO/2dC
         CTtFHtTqlKqx28Lvgh7ThS5yHN1dZjo9EKYFSll9nsBxlVdi4jjnHWyCDBQwzOaRa5UZ
         qkNdOgV5V7KX5EQv27r8pfzmgYYITx/pdINYi9gN1dFzXttTvJo5Ursawsbdj+wOF3e2
         6vr+opluvN9KwLULk6u222EVHjDHwg4XXP76XJD94InZ608axPAErKJyJLaAEb2FsEyT
         e60rb9Md/9qBH/HRqSCvAEQTMw+C74/yk7iG/XIfwmr6pTcFoR/QhNSyGOJ9hAsPLr5D
         iepg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=DAtYX+jsYAZbXvxDa0ACPr5N2dIZ5fF4WKN7uGGjjAU=;
        b=FiZtFsjAOp/5Zch4yduqwtM1b9b0Q5bS+YMp38FUjElcl6YxCPVCWeZOonio3Wmcld
         9ESl8b1/AnGiLhjhkI9lfHVhqEHJq4jNIFU/paZteCdF12pEPSVks/zYmF3cJenyqysR
         3zF1o+5gKbMDFDuuiTG1ggscwzX5vqvr+O35NdsAAFGc2RP3ypQr2n5hFYItPYQdgj96
         3R+svp6J5GQjmT2LC44BdnzykVFToQ+LNIGzNdx7Gr1VT2r+yBfVazUpqughMNiu6me0
         KE9PeDmSOmegBdh75IBqPj45AUf6R4XYu+NJ8u3GIy6RIFCR8Q0/seWqTfEaq+wa8WZ8
         0ZLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b10si248776lfi.1.2020.02.18.08.49.26
        for <clang-built-linux@googlegroups.com>;
        Tue, 18 Feb 2020 08:49:26 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4625D30E;
	Tue, 18 Feb 2020 08:49:25 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AFD23F703;
	Tue, 18 Feb 2020 08:49:24 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	amit.kachhap@arm.com
Subject: [PATCH] arm64: lse: Fix LSE atomics with LLVM
Date: Tue, 18 Feb 2020 16:49:06 +0000
Message-Id: <20200218164906.35685-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The introduction of the commit e0d5896bd356cd broke the compilation of
the kernel when the selected compiler is clang and it is used in
combination with "-no-integrated-as".
This happens because __LSE_PREAMBLE is defined as ".arch armv8-a+lse"
and this overrides the version of the architecture passed via -march
command line to the gas compiler.

The issue was noticed during the development of pauth on arm64 and an
error example is reported below:

$ aarch64-none-linux-gnu-as -EL -I ./arch/arm64/include
                                -I ./arch/arm64/include/generated
                                -I ./include -I ./include
                                -I ./arch/arm64/include/uapi
                                -I ./arch/arm64/include/generated/uapi
                                -I ./include/uapi -I ./include/generated/uapi
                                -I ./init -I ./init
                                -march=armv8.3-a -o init/do_mounts.o
                                /tmp/do_mounts-d7992a.s
/tmp/do_mounts-d7992a.s: Assembler messages:
/tmp/do_mounts-d7992a.s:1959: Error: selected processor does not support `autiasp'
/tmp/do_mounts-d7992a.s:2021: Error: selected processor does not support `paciasp'
/tmp/do_mounts-d7992a.s:2157: Error: selected processor does not support `autiasp'
/tmp/do_mounts-d7992a.s:2175: Error: selected processor does not support `paciasp'
/tmp/do_mounts-d7992a.s:2494: Error: selected processor does not support `autiasp'

Fix the issue replacing ".arch armv8-a+lse" with ".arch_extension lse" that does
not override the command line parameter.

Fixes: e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated assembler")
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Reported-by: Amit Kachhap <Amit.Kachhap@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/lse.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index d429f7701c36..5d10051c3e62 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -6,7 +6,7 @@
 
 #ifdef CONFIG_ARM64_LSE_ATOMICS
 
-#define __LSE_PREAMBLE	".arch armv8-a+lse\n"
+#define __LSE_PREAMBLE	".arch_extension lse\n"
 
 #include <linux/compiler_types.h>
 #include <linux/export.h>
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200218164906.35685-1-vincenzo.frascino%40arm.com.
