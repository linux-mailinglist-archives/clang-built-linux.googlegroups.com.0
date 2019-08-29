Return-Path: <clang-built-linux+bncBCSPV64IYUKBBK7PTXVQKGQEREZMSTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f58.google.com (mail-lf1-f58.google.com [209.85.167.58])
	by mail.lfdr.de (Postfix) with ESMTPS id A84BFA122A
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 08:58:52 +0200 (CEST)
Received: by mail-lf1-f58.google.com with SMTP id r197sf542975lff.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 23:58:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567061932; cv=pass;
        d=google.com; s=arc-20160816;
        b=yRwP9HywPJhpJQXfjCX5VB4k5IrwY12lZSXBrbd/rsJG3IARp9rhGKCBABRR02wu9r
         9Uz6slvZ0e0r48DizkaZbl3gZkpbx7qcVil7aCSvU6Xpnh8vmBZyI/Gar5aBNe9i+AvU
         Al0xhg8zkJukGKCbV35kOkYfF+nTeZiX7KY0xhgj4Em+ib/+RFQtXKx5cqKLdhDpJYmx
         Dn0enApx8M0Fg70TfXONAe+8oZY5gLn7DZ6pb3KLF+kN2bRlwcgdOuAJ7H5vmPjeqpkj
         A0HtHWgnKLcfcAiJc/rXcgait/jH1qYVQh78WXN7v1MjRCh5dM63Qa8MlojdrBlmQJFs
         tjXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=ON4cWrlSTWQans88Ou7XAzIrwlVNZfx7Q4oNM6DzYSA=;
        b=Yga9CJcKPz1gptkOqlsg8WchaX05YFyNWzFUMCzL2ZX1APhGcJRLMtKcw8c2NHWIsu
         3Pdjq0ygKmWePENlEeJJfncI0OKmeB9uiAOXyB+7gQmxI4oy6wgN9nPsVZ191GDh04hD
         1NzX2j7wMQuTAAnkEbxzKaCauKYWOo5qiWONgt6YF3+XAEetq8mCg6XYr3SsHmfcOGTS
         PXqmiXXCl//JWTbiBEvEhLIDHmMsB6r4659gO97DPfZ33W/KoR1jk7+Ft4cT+l1DtgTv
         qN7AHDAp0ZU15EGUzzPyUr4UvrYoNwYpbpyUBXmYCfF6Xci943+w2BADzhVYSqUooaDv
         8XKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=xZX4jG1Y;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ON4cWrlSTWQans88Ou7XAzIrwlVNZfx7Q4oNM6DzYSA=;
        b=FH7Tm9my3H1SbUGHX4sGNoKQmihGgino187V2zxak07sridxZy1rUSyIfMn/INfEcT
         sCZ5fj+VUQgsyyR6WdoW5tRRqiQEuc/MWa0nZX9oBrVYtMmptKUZjmv0eRpHAtdqCA2p
         83J4rn+D4LIuLd6Eh4vRfy70kAR1FMmMQaCTVXAPfiQ1lBsk2tChMpIK3MBjfg8t/mFN
         GROzShJqTCvhfxjD/76lmH8aaC4jPSz4Cs/EUc7539fP++D2PGAtmwuWIDBYmOzXsNK/
         sxgLMfXLPYlne+DAFPhyA5oSGEXjseVrjZOx9TCgvgsbzQxyAJgyiaRHLiIbpAkw58nV
         iHHA==
X-Gm-Message-State: APjAAAVY2PkQBMfeH5W7YODiViUt68YrqkyOoORAc50vfU3E8YCn1bA7
	s+KgqY5iK5y6PCYpyWuZE2I=
X-Google-Smtp-Source: APXvYqx5Km4k7dj3aU84f800MabPGMqlnFFL6d+8mGG9QD37wutA0C6vc7DH1hXRUczPglD7yNRJQQ==
X-Received: by 2002:a2e:9582:: with SMTP id w2mr4174779ljh.194.1567061931980;
        Wed, 28 Aug 2019 23:58:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:7102:: with SMTP id m2ls119887lfc.15.gmail; Wed, 28 Aug
 2019 23:58:51 -0700 (PDT)
X-Received: by 2002:a19:6041:: with SMTP id p1mr5126065lfk.6.1567061931421;
        Wed, 28 Aug 2019 23:58:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567061931; cv=none;
        d=google.com; s=arc-20160816;
        b=oW0gbWvuQJKZg09yfssBxFY3sdMNexHYWaMAZ4Z7EGwa7jJ6MKBAyerdnBAPN+bbxW
         tsmeXHxpPKDa7PwlatQ0vzGa8GS1af3VFcYbvh4cxJOFwU53rDjKPHWn2MZZ2jY36xRG
         Xz0pNidYWDhQaWzMtixciS3942/yO34SI7AkzGxfYk5oG0AMqBaSjV2E/hzvJ1Ja/pjW
         bG6/KAVAgrVvt8hi870BEWjzj8aJn9F43UVFBf4G8evXs0+aImr4fGUjhUbUPR4QpdfE
         N/8munNb4cPtBgkKxLlDV6avjSZSbIEYQPDVCU7YnraA5l3UAIk3rCexz/IceukhIYbx
         6/OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=gD1AMkI8FpRbArgAWS2NSX6iE7kz1rPPHG4idT8fdBw=;
        b=QCioS76mU9laDD5Zv22MMuqwOTZq6y3LZE818nP09EzeIHL3XbBK+rnva/CJdlQGu1
         elfQmpqgeZt2lOhqZRC0+QFd9bYNHXCemWUAUkVc6jM79NYiZRtoW110xsO8cjSCo6/q
         2ZshsvXttlVR9zSqalHaGLWw65MlMBoT8oWvWRFlkj7EpHtdQ1x0ddh8uEsqqdqk/nAJ
         A+U1w7QiYBYyPR0Bug1OCibWZT3yolUVThuvG2rQ9KqGmFiWWnB9NhzEAbE+xbQF9Moz
         aLKLpCeBqjPzlN9nQhQ80gmH0RhQFlCG4w0YP2g0MyiqY3H0gQZvfmqUvaxiYaouz+Rj
         zBLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=xZX4jG1Y;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id s14si61794ljg.4.2019.08.28.23.58.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 23:58:51 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39344)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1i3ENH-0007HG-J3; Thu, 29 Aug 2019 07:57:39 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1i3EN7-0007UX-9P; Thu, 29 Aug 2019 07:57:29 +0100
Date: Thu, 29 Aug 2019 07:57:29 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Leo Yan <leo.yan@linaro.org>
Cc: Oleg Nesterov <oleg@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>, Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-arch@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 3/3] arm: Add support for function error injection
Message-ID: <20190829065729.GU13294@shell.armlinux.org.uk>
References: <20190806100015.11256-1-leo.yan@linaro.org>
 <20190806100015.11256-4-leo.yan@linaro.org>
 <20190819091808.GB5599@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190819091808.GB5599@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=xZX4jG1Y;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender)
 smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

I'm sorry, I can't apply this, it produces loads of:

include/linux/error-injection.h:7:10: fatal error: asm/error-injection.h: No such file or directory

Since your patch 1 has been merged by the ARM64 people, I can't take
it until next cycle.

On Mon, Aug 19, 2019 at 05:18:08PM +0800, Leo Yan wrote:
> Hi Russell,
> 
> On Tue, Aug 06, 2019 at 06:00:15PM +0800, Leo Yan wrote:
> > This patch implements arm specific functions regs_set_return_value() and
> > override_function_with_return() to support function error injection.
> > 
> > In the exception flow, it updates pt_regs::ARM_pc with pt_regs::ARM_lr
> > so can override the probed function return.
> 
> Gentle ping ...  Could you review this patch?
> 
> Thanks,
> Leo.
> 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  arch/arm/Kconfig              |  1 +
> >  arch/arm/include/asm/ptrace.h |  5 +++++
> >  arch/arm/lib/Makefile         |  2 ++
> >  arch/arm/lib/error-inject.c   | 19 +++++++++++++++++++
> >  4 files changed, 27 insertions(+)
> >  create mode 100644 arch/arm/lib/error-inject.c
> > 
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 33b00579beff..2d3d44a037f6 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -77,6 +77,7 @@ config ARM
> >  	select HAVE_EXIT_THREAD
> >  	select HAVE_FAST_GUP if ARM_LPAE
> >  	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
> > +	select HAVE_FUNCTION_ERROR_INJECTION if !THUMB2_KERNEL
> >  	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
> >  	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
> >  	select HAVE_GCC_PLUGINS
> > diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
> > index 91d6b7856be4..3b41f37b361a 100644
> > --- a/arch/arm/include/asm/ptrace.h
> > +++ b/arch/arm/include/asm/ptrace.h
> > @@ -89,6 +89,11 @@ static inline long regs_return_value(struct pt_regs *regs)
> >  	return regs->ARM_r0;
> >  }
> >  
> > +static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
> > +{
> > +	regs->ARM_r0 = rc;
> > +}
> > +
> >  #define instruction_pointer(regs)	(regs)->ARM_pc
> >  
> >  #ifdef CONFIG_THUMB2_KERNEL
> > diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> > index b25c54585048..8f56484a7156 100644
> > --- a/arch/arm/lib/Makefile
> > +++ b/arch/arm/lib/Makefile
> > @@ -42,3 +42,5 @@ ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
> >    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
> >    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
> >  endif
> > +
> > +obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> > diff --git a/arch/arm/lib/error-inject.c b/arch/arm/lib/error-inject.c
> > new file mode 100644
> > index 000000000000..2d696dc94893
> > --- /dev/null
> > +++ b/arch/arm/lib/error-inject.c
> > @@ -0,0 +1,19 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#include <linux/error-injection.h>
> > +#include <linux/kprobes.h>
> > +
> > +void override_function_with_return(struct pt_regs *regs)
> > +{
> > +	/*
> > +	 * 'regs' represents the state on entry of a predefined function in
> > +	 * the kernel/module and which is captured on a kprobe.
> > +	 *
> > +	 * 'regs->ARM_lr' contains the the link register for the probed
> > +	 * function, when kprobe returns back from exception it will override
> > +	 * the end of probed function and directly return to the predefined
> > +	 * function's caller.
> > +	 */
> > +	instruction_pointer_set(regs, regs->ARM_lr);
> > +}
> > +NOKPROBE_SYMBOL(override_function_with_return);
> > -- 
> > 2.17.1
> > 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829065729.GU13294%40shell.armlinux.org.uk.
