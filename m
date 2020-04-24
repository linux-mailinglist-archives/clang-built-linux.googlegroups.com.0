Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBA5VRP2QKGQE2TWPBTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 430871B740C
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:24:37 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id e8sf9352631ile.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:24:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587731076; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lvee0WSzl2pK2fzKwUkrTl7bhzvV7BxRp1JFwZIjldPsa+t3uj3DDnPVVJ4/7ngHhg
         S4MfG3EmkAq9rOU2fJeeJqWc/qdaFEFHuMTsuD1GuS/Lf60PH2Iu44EcpGSPG1sWtXjE
         NW/vpsrGJj3/UuIHwVwhq9LPXoHHesaMQNUh0rsTHVoN+XTr+n7hC7wGx4ZcWoHXTH59
         LDt7fCVOmI/OY8kxZdbtb3OmK/efMdHVuzqpK3AaON0kZAPS7hIOC9fG2ODS4ZNBVkKr
         iNtapSb0vgqPm/1mxpTZgNe4JILsV4qARVbWKi2o4C7/PvF9JTYgqH2IMN8EVa+cVLaN
         +SFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZQWh1zJg/hVbW7f0aeSqdAi9hraAr8Bbkhbz2Gt0y5s=;
        b=OOI5pnbQEUt3/D0Y4rHRDmSMiRXm+tBqYYhhM3+eT6+N95q9/ZribYgW/rWmEoWAZ3
         0ka219KzWlvbgFTwe/tPJIhvWxxlJ2YS0R7AtkdfDQPAVjW1pD3OaH5Fz7RCG1qVqoh6
         GnngbKf706UCcGzxywy2r81xpZgOVNh8VtBZmfrA4HhdxSrWI7l8eyd1D5eBvqY+u9PX
         p39i+OeGmB9jvKgWI3p0UGW92GTtmW7PYGeZf9QRCOns5DrvFGcxsuakBcHFWQFGQ3J1
         H0F0kaKPCIqpEKuNCT1pvgF91j3mgifVwVOTolWNKzc++PmogySlrQCMz1QV3v2IZ5OL
         67Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0Dc+sbi+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZQWh1zJg/hVbW7f0aeSqdAi9hraAr8Bbkhbz2Gt0y5s=;
        b=RsaNbcB6pZOr9fF3Y6K7e4wBPVSEHsA2INfwASM3LtFxvBi7WR5bprHXGkryzVy6iF
         yb5jzsBXhS3Nu1NUY/whoO4r+DCOHGwz6bNPsWsr+xQr8WUEcDcCw9mhnmjMxyTqL4p7
         QvGPNTBI2B+q97Gf0MvKbOycXd1l0wipaoaaiG1YnvwW6CWgNNAOlxSf+aBZiH3XactO
         y/P/uUiA33J2evInpUNtigqbD7pi2cuCeEIvmGSCvr08qaO8i5lcVH4TtUxWX6xD0WEd
         1RTuG5/QAgGg5OhLqNU5q+CIjT9r1+B4ld7oIetrij4d4VpGAAA+Ciy+ZpfjROjwi8HG
         iMqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZQWh1zJg/hVbW7f0aeSqdAi9hraAr8Bbkhbz2Gt0y5s=;
        b=uSTpJ5Cfqi7bQ1jdzRjSeBHhCkLD7ZMmoNFDp4oubdrAHJ1g09BXKW6G0JZZyjT7um
         LL/AxPMWStR955yfGYXMscQqY5IMsGNkwR9mhDhWB07q1jHhGM6sPUsXBA5CrVQMRRtN
         2ifCsmdLXg8cEuyYeoeP/mPdtnZkKjLFInUhCDORk1PfhzBE6KXiW8KBgVSE7FTNZvVj
         buaavQbOw6jLrdn1wcos9TQB52WEAsSEEsDOxHp1hLVIjhLDi65hTWTZZ6jz1LsWdyhr
         y2awX49d5QRWWgARD2QerDrNIk2m4ugWOugDYJH7IaZk4bIgs365ZmY0yPm+/tXcesGb
         gufQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYo2Tx7mYh5umj4JBpNb14Rx5CUJRlXlxc/oD1YGad42KneNlzm
	U2zGeYKZ3QGCwzPvMwIUINQ=
X-Google-Smtp-Source: APiQypLasjKPugMv8Y7btdqiGTwNMheBiay9acJCSteUFfPWziSpS2k4jMDuLrtgZDylIn1Cn0EEdw==
X-Received: by 2002:a02:7f12:: with SMTP id r18mr8071146jac.75.1587731075826;
        Fri, 24 Apr 2020 05:24:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:5244:: with SMTP id d65ls2273057jab.3.gmail; Fri, 24 Apr
 2020 05:24:35 -0700 (PDT)
X-Received: by 2002:a02:c77b:: with SMTP id k27mr7834802jao.139.1587731075534;
        Fri, 24 Apr 2020 05:24:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587731075; cv=none;
        d=google.com; s=arc-20160816;
        b=JBOZX6ayVNvh59xZK8tzXV/U8Jm5Db2peG/EKNeMk9nvA1TWwbHtBIOkEqRuMQs8Gu
         48XusWCe/8ccZ391SG8D6KeiHScBs4GqN4vnJcB70UssROoSoeleyVqI1sj3Uwh/WTLc
         fCa2R0Wq2Z24WgIrvjoL7MpmBa8S1Apv3nXSUkzJ51LWd7Rhiv/kGbqEU/5PdJs1GiKK
         szcBUBvHCzMrFW9f7MpH2KCqSWaGUfk9GkykQZnqIGn4wryup/x+hIPh3ANHZ62kwULq
         vhTrIwKnxs6ZnQWD6O6Nne1Z9dmCpLEhyBeAo4kcM8R30T7BlZIAj0g89lP2FvVC83FD
         bwpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xkk/VApcrBpsP3tDAMRYNWlOtfwT7UxKvOLLt7BvdBI=;
        b=bsgeINSeTWRKTgepWEePx2rSRDAwONY+U/YDMl4IXkPoAUVlknGl61vC+bT5CkPo2H
         mEpzzJVHebp0X/g0A9alGEfmrJ1pLoix6s1uCP8Dej1jm2blHY35wqpZqyL0CPFvpcob
         PQ7br56KvwHpDMF4AKgTXt3riXoMf4RnZqwUuZem50ISpQKe+uIwU+gG9MLU/wuUe+Lx
         JVEKE0J2Yu6kwMAhrxG5wUYF2ovjUvkNRoZ1bCLl2yHriA3DSVMv5MkC6Bh1eE8nkx4a
         xvW8RkpYyEYN9COgzMurrJUefaWvIsJ4mzuOjKOYHORTBlYuW3MVEyrmQo5rbf8bKouK
         RIMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0Dc+sbi+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v22si567508ioj.2.2020.04.24.05.24.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 05:24:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DD47121775;
	Fri, 24 Apr 2020 12:24:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Fangrui Song <maskray@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 12/21] arm64: Delete the space separator in __emit_inst
Date: Fri, 24 Apr 2020 08:24:10 -0400
Message-Id: <20200424122419.10648-12-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424122419.10648-1-sashal@kernel.org>
References: <20200424122419.10648-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0Dc+sbi+;       spf=pass
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

From: Fangrui Song <maskray@google.com>

[ Upstream commit c9a4ef66450145a356a626c833d3d7b1668b3ded ]

In assembly, many instances of __emit_inst(x) expand to a directive. In
a few places __emit_inst(x) is used as an assembler macro argument. For
example, in arch/arm64/kvm/hyp/entry.S

  ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)

expands to the following by the C preprocessor:

  alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

Both comma and space are separators, with an exception that content
inside a pair of parentheses/quotes is not split, so the clang
integrated assembler splits the arguments to:

   nop, .inst, (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

GNU as preprocesses the input with do_scrub_chars(). Its arm64 backend
(along with many other non-x86 backends) sees:

  alternative_insn nop,.inst(0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
  # .inst(...) is parsed as one argument

while its x86 backend sees:

  alternative_insn nop,.inst (0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
  # The extra space before '(' makes the whole .inst (...) parsed as two arguments

The non-x86 backend's behavior is considered unintentional
(https://sourceware.org/bugzilla/show_bug.cgi?id=25750).
So drop the space separator inside `.inst (...)` to make the clang
integrated assembler work.

Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/939
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/sysreg.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 50a89bcf9072e..2564dd429ab68 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -60,7 +60,9 @@
 #ifndef CONFIG_BROKEN_GAS_INST
 
 #ifdef __ASSEMBLY__
-#define __emit_inst(x)			.inst (x)
+// The space separator is omitted so that __emit_inst(x) can be parsed as
+// either an assembler directive or an assembler macro argument.
+#define __emit_inst(x)			.inst(x)
 #else
 #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
 #endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424122419.10648-12-sashal%40kernel.org.
