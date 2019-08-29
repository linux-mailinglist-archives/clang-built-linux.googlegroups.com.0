Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBDX3TXVQKGQEXKBKBSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 947D0A1288
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 09:24:00 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id g9sf1489286plo.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:24:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567063438; cv=pass;
        d=google.com; s=arc-20160816;
        b=MAEQXS2bHBLBz2MR+tG+sG11mkmegsKGAopQ1M7iB8eTx+fvx6iElPfYlbAPjEM5h5
         ATwul9cAktJ85kX7TK46BwpEZ2H+nprGOhcfla7HzilSwvWDG5nZQDAgimx4D9cSvXbF
         Cts0LFg5/SWGJXQDPmOCnNXizZVtkNYYg8Rb27jj/GYcm3x1tQPLoMnEHF+ZVcEqb07e
         ECDFjY7A3YTp1svUJiyDdY2buMB+lmtUWrKNscnlTa7Ayg+vxPb874lkXc2L9escqAJp
         oNZW9lyf6CSfsheV3Rc9w/C6AVsSPf/LKk5hAhXboMZygr8JcoEP3u+e0NksGCgnTaDr
         +kdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VVlgNx9kOaUZ8tLqlGR10PHcNujPbyfZrvC5pafGxm0=;
        b=08DNRL5I3q703MnS6JxXnbrYpBZqAsYBQHrGHyOIuVooRzqphZADHaOuWPXjMRP/Hy
         7tmggiVlAu1f6LE3boNr/yOh/G4pXUKCEy3mEvM84xQrXynsfH5wRUlkbSw+46VVok2l
         /8WI0j0iH3DNvmbhFY6YlFj+4ldK5OFU5A2VwaG1JZWHMZdYsAYqNZJ/3kLPF5rC+MN6
         kjp+NG6Of0CgtTv21MlDDuEydeJNGP6NrZdq5MrtuJzZcm/Xi1itT8lxCFK3GmUW9qCD
         tr7RUc+2j56EFG7uDKLCThvBQmIKFJFbfpiISWxG3sCAFgmv42jEpMAmlrtu6pHE863g
         KtNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NXuypbmT;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VVlgNx9kOaUZ8tLqlGR10PHcNujPbyfZrvC5pafGxm0=;
        b=T1NuUz1Hpd4N1Q+TvsHGghnpZXMQzL9V6Dc7GdFqW9VgxetYeHXNx+JCQ37vF2EVKY
         tK8VsAbCVo8u1Kq9O96pDsSbK9lNJzA89Jcb/kWtYH2eNkGivPPGHhR1KiwyE+Acv68b
         t+56Zjl3VX2HsC5+2TUwTAI7d/CoS+Mx9pKvSi3VGWiwes43v0l2THoiPapGslAZoEF4
         2Wb5gyooYBK1NtBojFnoHOWvA5YUpKZ2R2C0bFq5oL16TtbbR2hy7sKbOLV3PRVWp84j
         w4stcHWDQu5ndkx945/PYQj8BcVQ/6KoPjM9ZLTuk7sq4d/TFhBUW+rsqw7T5OSAwDow
         68mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VVlgNx9kOaUZ8tLqlGR10PHcNujPbyfZrvC5pafGxm0=;
        b=g60hDHbmxgPUOkiCjkaAw1utgK3RLL4CvBYcXn3LgS1KNOpez91NRgP6NEzWYZkFUX
         NTPjMTVl8qKiCZm4z3lXRxC71pCb+xHn8lAwx5+odMDwtCntBGOLGnszu98qkXD+tXsO
         tBAvt2iiVIZ60/WAnmXWphghTqTB8Sv6Y9OULI0HGUHjTRlJ42U9o950r6Mdxeq0DvP1
         StxsvGqx/t22BSp8t3J6dmHTQim/vtGZarx7yskk2jL34//kBPRA2ifg/IgleLzlRpnT
         wADvAHQ6w86F777YE+x77ajrRVnclWPYxixrGMPJqjTv8I+PWxiv7S95Ourw8OeSdZAR
         fK/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUFVvg2XVr+uplwXpDHe917kDSnl2hM84QIbcYsdA4DVQJs5ks
	l/Xf+aYVWJHVT8rE0oOksZQ=
X-Google-Smtp-Source: APXvYqyfMDCnV4WumNZDQBdMH+DI1mnzpdzEaGpuE09sGJbaksd1KH8LxoJOlQ2x0YO3Ei7zIo67qg==
X-Received: by 2002:a62:5cc2:: with SMTP id q185mr9151211pfb.221.1567063438757;
        Thu, 29 Aug 2019 00:23:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:334f:: with SMTP id m73ls513970pjb.5.canary-gmail;
 Thu, 29 Aug 2019 00:23:58 -0700 (PDT)
X-Received: by 2002:a17:902:542:: with SMTP id 60mr8102283plf.272.1567063438470;
        Thu, 29 Aug 2019 00:23:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567063438; cv=none;
        d=google.com; s=arc-20160816;
        b=JYCV4Y9snjkXfPHIGvQFjzRg+FUS7gpJ7AWU5Q646ZFC2TuCBwcgkffdP4mnieOP7t
         Babp0Ad9LzfC5caOC3wtzJgioiOQAVxkrE3emoBO3sPfx1sqnZXjx/MHqVdzqDMcSbI3
         xFtdWjaoSgtFTUq0WLGzZmkJpaL1bdpGRU98hYesdBSjfmam6IBLUh/mpSna1j1nJ9g3
         7ZNu/ryXhCSVP9V30U8XVt+gjxaIClqIqPus9qiUdGgMeDH5dwkMu6BZcTDzXlB6TZ/0
         FFaS1/XQpAE8yhj83yYUoc5/3mBqi8J/xpZa0VnrGHfLWQ/cOq+YlvI/+R7JNAtigRT1
         NAkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R8EgEva/nN+dxw6+a+tbX87JZIlVuBuzMvhuJDwRRR4=;
        b=IltyYFxbaXGgFANx/7PPnK0mCvGSJlvHxOfjYs7FfR5seDoDLejdvI6LSlMqIkbakn
         lqw0SmVcad8oLeGbHEMKv52Fg2RRPmbpW/Su2HAOSZSLRbn9ccQVqdjgk9GhiJqKQ29R
         LvqPIEjooaBvXJ3AgCCYxtgqEFhNgBayJwVSV1d22pXpG6W+RqpK5IiEqgc/psqxsqSX
         hVbLpRSHSNZHQByiviQWLthMHItBUdf+QzgLLj+B4pIQo3As6D+Abgc4atqOGcgT1dTx
         r0sZ6+RI7HYVWJPSL3y/NKE5jDptndQuRzCjWOds3pmrKpBlF+Br65WhKPKWmts82KO0
         z+Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NXuypbmT;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id w72si143870pfd.2.2019.08.29.00.23.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 00:23:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id 1so865006ybj.8
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 00:23:58 -0700 (PDT)
X-Received: by 2002:a25:e70b:: with SMTP id e11mr5618813ybh.127.1567063437479;
        Thu, 29 Aug 2019 00:23:57 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com. [45.79.221.244])
        by smtp.gmail.com with ESMTPSA id e3sm320863ywc.91.2019.08.29.00.23.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 29 Aug 2019 00:23:56 -0700 (PDT)
Date: Thu, 29 Aug 2019 15:23:43 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
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
Message-ID: <20190829072343.GD10583@leoy-ThinkPad-X240s>
References: <20190806100015.11256-1-leo.yan@linaro.org>
 <20190806100015.11256-4-leo.yan@linaro.org>
 <20190819091808.GB5599@leoy-ThinkPad-X240s>
 <20190829065729.GU13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190829065729.GU13294@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=NXuypbmT;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Russell,

On Thu, Aug 29, 2019 at 07:57:29AM +0100, Russell King - ARM Linux admin wrote:
> I'm sorry, I can't apply this, it produces loads of:
> 
> include/linux/error-injection.h:7:10: fatal error: asm/error-injection.h: No such file or directory
> 
> Since your patch 1 has been merged by the ARM64 people, I can't take
> it until next cycle.

For this case, do you want me to resend this patch in next merge
window?  Or you have picked up this patch but will send PR in next
cycle?

Thanks,
Leo Yan

> On Mon, Aug 19, 2019 at 05:18:08PM +0800, Leo Yan wrote:
> > Hi Russell,
> > 
> > On Tue, Aug 06, 2019 at 06:00:15PM +0800, Leo Yan wrote:
> > > This patch implements arm specific functions regs_set_return_value() and
> > > override_function_with_return() to support function error injection.
> > > 
> > > In the exception flow, it updates pt_regs::ARM_pc with pt_regs::ARM_lr
> > > so can override the probed function return.
> > 
> > Gentle ping ...  Could you review this patch?
> > 
> > Thanks,
> > Leo.
> > 
> > > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > > ---
> > >  arch/arm/Kconfig              |  1 +
> > >  arch/arm/include/asm/ptrace.h |  5 +++++
> > >  arch/arm/lib/Makefile         |  2 ++
> > >  arch/arm/lib/error-inject.c   | 19 +++++++++++++++++++
> > >  4 files changed, 27 insertions(+)
> > >  create mode 100644 arch/arm/lib/error-inject.c
> > > 
> > > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > > index 33b00579beff..2d3d44a037f6 100644
> > > --- a/arch/arm/Kconfig
> > > +++ b/arch/arm/Kconfig
> > > @@ -77,6 +77,7 @@ config ARM
> > >  	select HAVE_EXIT_THREAD
> > >  	select HAVE_FAST_GUP if ARM_LPAE
> > >  	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
> > > +	select HAVE_FUNCTION_ERROR_INJECTION if !THUMB2_KERNEL
> > >  	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
> > >  	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
> > >  	select HAVE_GCC_PLUGINS
> > > diff --git a/arch/arm/include/asm/ptrace.h b/arch/arm/include/asm/ptrace.h
> > > index 91d6b7856be4..3b41f37b361a 100644
> > > --- a/arch/arm/include/asm/ptrace.h
> > > +++ b/arch/arm/include/asm/ptrace.h
> > > @@ -89,6 +89,11 @@ static inline long regs_return_value(struct pt_regs *regs)
> > >  	return regs->ARM_r0;
> > >  }
> > >  
> > > +static inline void regs_set_return_value(struct pt_regs *regs, unsigned long rc)
> > > +{
> > > +	regs->ARM_r0 = rc;
> > > +}
> > > +
> > >  #define instruction_pointer(regs)	(regs)->ARM_pc
> > >  
> > >  #ifdef CONFIG_THUMB2_KERNEL
> > > diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> > > index b25c54585048..8f56484a7156 100644
> > > --- a/arch/arm/lib/Makefile
> > > +++ b/arch/arm/lib/Makefile
> > > @@ -42,3 +42,5 @@ ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
> > >    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
> > >    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
> > >  endif
> > > +
> > > +obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
> > > diff --git a/arch/arm/lib/error-inject.c b/arch/arm/lib/error-inject.c
> > > new file mode 100644
> > > index 000000000000..2d696dc94893
> > > --- /dev/null
> > > +++ b/arch/arm/lib/error-inject.c
> > > @@ -0,0 +1,19 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +
> > > +#include <linux/error-injection.h>
> > > +#include <linux/kprobes.h>
> > > +
> > > +void override_function_with_return(struct pt_regs *regs)
> > > +{
> > > +	/*
> > > +	 * 'regs' represents the state on entry of a predefined function in
> > > +	 * the kernel/module and which is captured on a kprobe.
> > > +	 *
> > > +	 * 'regs->ARM_lr' contains the the link register for the probed
> > > +	 * function, when kprobe returns back from exception it will override
> > > +	 * the end of probed function and directly return to the predefined
> > > +	 * function's caller.
> > > +	 */
> > > +	instruction_pointer_set(regs, regs->ARM_lr);
> > > +}
> > > +NOKPROBE_SYMBOL(override_function_with_return);
> > > -- 
> > > 2.17.1
> > > 
> > 
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829072343.GD10583%40leoy-ThinkPad-X240s.
