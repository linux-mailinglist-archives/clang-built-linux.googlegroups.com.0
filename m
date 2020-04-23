Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBWFBQ72QKGQE4DNTBHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2701B61F5
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 19:31:05 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id r17sf3219803wrg.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 10:31:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587663064; cv=pass;
        d=google.com; s=arc-20160816;
        b=0TYrvQVxqIS4y+YiViMHxq+NADO9D5b5y+PJawuvvopGiryXmyFC0pX58ynZqlJMt3
         m2dWrN8kMVgc46AQLWsJHPvB6LIWoMzIfg9QmFnPKuinWN5A00+Pzv0SFY9fkh8rafBv
         GPhIrJMH3bR8MqBKxZrYDx7EscjjOUbHHFyrPIo/Tju3VhxJzNdW7n54VUKl08jNieL4
         8H27hErbOUfoKxo8dZlmGff1UJFzg6wwwI/o97q4FTqV2jfVIEP3y9hL6tvQSGCkjAxZ
         4PypCrgIOKtKZuMxUiyW7VzTjRDwF3P81sM+/Lc1D1RhwU7SJMAuiM8g5zEpRGBHtnxW
         Cpbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=a95sBG2fwHrXddz0f5DMVMvjHLYgEbsyrsAhwXXlUwI=;
        b=x6Lu8murVUA96tjAF3XVQ/MKBxobirJERaqdoiwlSsi4yr83jTRJagmLWcXqT46/cr
         jp26n03IbMMQkTgLPn9Naf3djB2ZSmrU5xPKQ+CdsSDZWNmMKatFwYcbK1GQbkfSJIQv
         ye/RadntTkjPNUu20Z27Cc/EIfv7PcfrXk64KRze10gbKy3zCAcqDo+EFKxV/658RccZ
         5qm3g+rvOnwwZka1Nh/oHWsfbm6KMeH+aXEmn++0JR9piiEtrNfjwhKlySjPEWrKmSct
         iTp5SiBaOkUw8TgybL9a+qG7driZlFPAoXAyh8Bk0oIbt+Ye+yrbM57wMEBPQBONjH0D
         Ix5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=n+EbahP2;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a95sBG2fwHrXddz0f5DMVMvjHLYgEbsyrsAhwXXlUwI=;
        b=I/j5xaiqG+GQHMiXtnT876tN1gNqIdHgTVp4qKPTSwhK/TswjG6g0G1LnrKoeLFvZ1
         Rb8WHpu9f1nRQJEQZu4HN8C1qsa8RKTRiBS8Y0hjzuBuNVp+ySGkZfaZg9qrqY9y6o5+
         pDxIMYyP6Wo9iTNwEfegHRMdUrek9vSPLF5v4Wn5JIE9StYVcUiR79CsMBMvOvlEOOZa
         hAMBfIibV8M7OPlyPR7PMLyOPl+gEEsZKKSFwAf4Wx7VZoYwr8YYUCsiO0/HICzthT8n
         0XSmZr1Km8RwzNv9fiMs7hce2kU2jCvtgzsrsjm4lX0xx4So9K44ptwco6H1fGwbE1TD
         AHAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a95sBG2fwHrXddz0f5DMVMvjHLYgEbsyrsAhwXXlUwI=;
        b=D986/QmH7M+KcypuNf38Tlvo6YGCq6I4jVHAkFw0YkEBOUX3gS0dYUxFPX1ih3ZxZ/
         WRJDCM2NVCr+ZrZO/tAjU4egP7h+fqDOmueEDJ+C6mDIZSREvMwdz1Rtersgsu9x6TFb
         vQeqIAc5+MC0/pc9UnYR3+WGuEX7Bh+0xOus4tyd0a/skX4dpUuQepjBBqG0DTxAzDYz
         2/AwRV3wNwrCfxnOgM8CKcGUZkMNOd1rkjfugU2aZIJkbMl1BOh2E9rzRBJQeJhlr83e
         /fDhAgRfpowade1agJzVcAtasQPA4+yknqEKlGhi936ehtKWZ1kMuFrq/2t7dEl1lw8x
         R7MQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZgE+dpUnq+e3m22b/70ynpMHxCdgesevOePbaaBW5MT6poZjP2
	aQ2xQwMqKOqjd/naPWL86hA=
X-Google-Smtp-Source: APiQypJHsx3vi9+apIneqlKnxoCfyqtulS90YxX8FcRxNaj1CLm8klV4IvLjx4cKWh0yn6O7fuLF0w==
X-Received: by 2002:a7b:c250:: with SMTP id b16mr5490376wmj.100.1587663064775;
        Thu, 23 Apr 2020 10:31:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7ec2:: with SMTP id z185ls1564570wmc.1.canary-gmail;
 Thu, 23 Apr 2020 10:31:04 -0700 (PDT)
X-Received: by 2002:a1c:c2d4:: with SMTP id s203mr5618796wmf.128.1587663064170;
        Thu, 23 Apr 2020 10:31:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587663064; cv=none;
        d=google.com; s=arc-20160816;
        b=XQyet7CBaOsvgb+1NzFOkOzVuBb5cMMnvBnt1rNMfS0EaDIfi7fLxGT0ITULbEzUfM
         wwDPPL4iclt9QakkVlpH8QyNOoxxLADgVZRYOrSVNPAjNL9PIf5mI4hPHxZ/bnTyABvb
         LFrG11kiu82YrTB6O/pxyn3R+W0t3rdm5g1WOz9Ff9PQqdG9gK5ixSJyhXQKeUt4s7k9
         sGiw22i1VLrLVFhYObn24rvP0OLvUTDBQxi++6yj/whgf8EBEiMnlnkABYuKR2OjMcoF
         lY+HfcNBKwmYdPUFDiSeAndMcYAgDqHxEGiPdpc4QB9cs3SplEKnCDU8K/fUYo4wc1TE
         KXUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=r4OL11TH+fTo0NNwv+4evRIfxa9+U11aNGFnhjxhNqc=;
        b=d+bj0esRBNLojlKbE+QYltjuInk3/eaokrslB4S5PZrXjunzYbg2s3/5lomMt3sLNM
         DCVVd+BHszHlr1giSP9ktJFYH0IBAAB9VhU+X4rCCSv0bK6Dbv0t+e7Xh4ELBuMUlLtV
         eapyjTm9R3rIYgSTYh3BnWtgH8RzXlgQ4QFmMKkLFpZRNWelmDThBighROyR3xjeh+2A
         Tv1atpn3PYiRwF1Kctpd13CtvJpPV/7c8hdrHWeSyYajT0yufKcJSdQJPyYs/yYVjH8+
         IcX/u1SB4K2DJVZu8ZR2F1rOd3R3ie2MLMtpiwYt84mR6MYNQ3T8934qCjo95V5ZMPS6
         RKTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=n+EbahP2;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id t22si173874wmt.0.2020.04.23.10.31.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Apr 2020 10:31:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F0D2E00329C23FFFEA6A903.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:2e00:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 5993D1EC0D79;
	Thu, 23 Apr 2020 19:31:03 +0200 (CEST)
Date: Thu, 23 Apr 2020 19:30:58 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>, x86@kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200423173058.GE26021@zn.tnic>
References: <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
 <20200423161126.GD26021@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200423161126.GD26021@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=n+EbahP2;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Thu, Apr 23, 2020 at 06:12:24PM +0200, Borislav Petkov wrote:
> Ok,
> 
> I have tried to summarize our odyssey so far and here's what I came up
> with. Just built latest gcc from the git repo and it seems to work.
> 
> Next I need to come up with a slick way of testing the compiler...

Maybe something like this. Seems to work with both.

---
From: Borislav Petkov <bp@suse.de>
Date: Thu, 23 Apr 2020 19:28:28 +0200
Subject: [PATCH] Check compiler

Signed-off-by: Borislav Petkov <bp@suse.de>
---
 arch/x86/Makefile             | 4 ++++
 scripts/x86-check-compiler.sh | 9 +++++++++
 2 files changed, 13 insertions(+)
 create mode 100755 scripts/x86-check-compiler.sh

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 00e378de8bc0..38d3eec5062e 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -1,6 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0
 # Unified Makefile for i386 and x86_64
 
+#  Check the compiler
+sane_compiler := $(shell $(srctree)/scripts/x86-check-compiler.sh $(CC))
+$(if $(sane_compiler),$(error $(CC) check failed. Aborting),)
+
 # select defconfig based on actual architecture
 ifeq ($(ARCH),x86)
   ifeq ($(shell uname -m),x86_64)
diff --git a/scripts/x86-check-compiler.sh b/scripts/x86-check-compiler.sh
new file mode 100755
index 000000000000..b2b5b54b6939
--- /dev/null
+++ b/scripts/x86-check-compiler.sh
@@ -0,0 +1,9 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+# Check whether the compiler tail-call optimizes across an asm() statement.
+# Fail the build if it does.
+
+echo "int foo(int a); int bar(int a) { int r = foo(a); asm(\"\"); return r; }" |\
+	     $* -O2 -x c -c -S - -o - 2>/dev/null |\
+	     grep -E "^[[:blank:]]+jmp[[:blank:]]+.*"
-- 
2.21.0

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423173058.GE26021%40zn.tnic.
