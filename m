Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFXJZH7AKGQEY72GINY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 737842D6632
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 20:18:47 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id w9sf3852820plp.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 11:18:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607627926; cv=pass;
        d=google.com; s=arc-20160816;
        b=T8hmwRovvsi4z+Pb97ZuHLfw1WwbfR5cFCJUNt0pLuThcXWL7zjFRPZqLxwLIAyYQL
         MKDPOc23OD+Wng/wiXcsFt12XnJlQVSUI0fZe2S7U0NClfjv+7hJSkzXt+sxDs6NsTIQ
         /aiJwbpSXTxjyFXKUzH9rxiLo6cZ/21/BLtxJ5NWiBaIPe/OPPxflqdN7Q6pOk+0s9M8
         P8YU2QXSe5R9hvClx4RAg5608uI+Fq/IpvRCEvC8dzahNcpg31HFZ21wNDd4bJ/qnMWO
         el8iqvkyA4Ascy2wL6VxsHlkKxAqo8HUdb5VIMKZhDici3yjiYwqUB0jj6ir/U7qvzL3
         I0Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SpDAuTkygTbpne5VnWsxY8TQjv6iLUxyT3E6+QMDv7E=;
        b=TbguoiFfLETxmA1tOyTsHnOPM21MBMYgDRQRJ2J7J+1MAfhexQW1BM66XJIGLFOn6l
         ZXrYsV/Zv7O0r4hTwcW8DtDaf4Tz6KZbcQFWs6mUa28WXmWqYWD9FfuIUK+AaNUGIu1F
         DfBgP9Sc8lcxNhb2i1SZqgtpH8a/y/bdraG9b/emn4lxdgHVlFNTRgO+z2R6cgJA0v6Z
         ra7uwU2vNIKPwh0D2IUEjRPdswoRyD1ijJnX6c6kizwJ7SYKi/+pOhtQ8OPCRkIETHEY
         Yvn/ckYNswiiD1ejV4u3D0lzLkcw05AXlz4Bz8dID7j5qg1QMw/Y7YvS2nNAEzKJKLKf
         BSUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k47MCVNM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SpDAuTkygTbpne5VnWsxY8TQjv6iLUxyT3E6+QMDv7E=;
        b=WcoDjpGrNypycT5pG5L8rp3plqdBMZTlhaTiHCAinDuRl8dO0jltvRyUS3oH5MSwza
         b0rED1nGWXBrkCp4Zi6tsKi8ExoePFOXAVoq94p7A7s6fdUI3K7qzWfGuLfwkFItbSKm
         oU6c0RY3Su3Ud1qZY72dq8fRlxOooOsAFaBbvrCqGVzO8jbIoYMgqMGl4x/u07eczHx/
         go7LDSnGJyOo49zxif04oq57ye/B0BKF2Cv9zcQCD/GsVMB3ZdYB+M4A5DRm7EyqZJtd
         GWwUbaO/f1ok1MHpj2nqWpUh77nDVLYT1yulzbsbW6L4jNMfgBPswk5jR5brToXdUPdT
         GrNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SpDAuTkygTbpne5VnWsxY8TQjv6iLUxyT3E6+QMDv7E=;
        b=Sol3jrdznhkRLBWsFaGDKGv9V86nZoQaZROa/FgfJRgmrdC7yGDrHuCKux9SWqZrfV
         LzSApBBveMRhwlYQCmIjl5pIU39uH8knyFRsUZMy+VJnIw7oArU+VNFnNjLIki+zJ1I+
         yTQIdq0JbQ1TNwmERKLGCN/ie6famRnmxVyG0F7wZsmboZo7qDi33rBcR3VEWwOya+bo
         C4jleXpTu78AX+5IekYNX8muZ6iHyelSDNZz3m7/nbuItkYbsw54RLYu/i8NmtNNdLjp
         Jk4aU9wb4z3cK4+dBGBijtPP9iFQKD2LzFgyZMBrAZ7StcWmYBIP4hpZq8ctA34059Pp
         kh2A==
X-Gm-Message-State: AOAM532JbNSdEASUCLcVeDgC7DdvE6n1g1thKboScNBJhg9b70/hDWlF
	5xgwMWfgUeLhHEmRzvc9q2E=
X-Google-Smtp-Source: ABdhPJxVDNnUm/myILEkxKLheT82C3jbiU6yxalZzK18PYmCEvRgcl5aeXQvUt/ZL7Fa9/enwTV2MA==
X-Received: by 2002:aa7:8298:0:b029:19c:1564:7b0c with SMTP id s24-20020aa782980000b029019c15647b0cmr7888929pfm.6.1607627926150;
        Thu, 10 Dec 2020 11:18:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e54c:: with SMTP id z12ls2410269pgj.8.gmail; Thu, 10 Dec
 2020 11:18:45 -0800 (PST)
X-Received: by 2002:a63:2907:: with SMTP id p7mr7908960pgp.320.1607627925545;
        Thu, 10 Dec 2020 11:18:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607627925; cv=none;
        d=google.com; s=arc-20160816;
        b=H+W6tllrJk39oXytY/7l6aWNYFz0rKO9dg2navxXzS63Ibq+poxY+dVCEMc75zyVBR
         6N4wh4H4kWUtoqOYfuLGPbAEvYY9nlmwvAl8lRQnBpXmZHl7NMSbumdkLXSRegjs9eAL
         i/U8A2I2BEs8G/M5jXVR4XVNnB38RJ9zB/twhxJ+SIsjWP8LWAopvxbJTaUcescJ+LG0
         NaMRKXaKFyrnE5GiHXyjtqUJ+pRHIxUMmOxSUesYuKVW86/M9Vjh+bAS6LqbGCBIRKnu
         sHo6LMQ94/jotMPhW/ir3zz5AszZ6JAaKqbBSavIgQ+wALFMSeSetlHjgsi16xcn242j
         k+8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0jTwekrKHkRvR5UGwaVUrluDpKs+eHkDfugKv4pyf3o=;
        b=TVk4LuEIdb/nN5CBAto4Rm1VztAG7j5GSYNme6ho2xPEiOczEP8Gbc1mcmimAaxsk2
         8vBlwRQVRaEZFbaiEyWbTQ/tZZEPS9qcnwqRNsxVVmBcyiYis4r16hmILTv/9FW9yu5u
         /L/+RSDQi4J70iwte2bIXIJiHjyUj3I4Vpq00KPeoGp6U8YfElngJY47RLc7e1lPFTFG
         ONvSv/Hu+tT30K72vLIfigWvyyEMtzvPSsVhLunPP99s2KbrsX9TzaUtChoLn1qbCCfX
         hA8fwE5ob42PSLAZ4H2W3/GK5xA+k6SxonH2J6L8tyb6SzVaHqeZy5bOn5hHr/rkv34t
         FR4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k47MCVNM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id z10si414971plk.0.2020.12.10.11.18.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 11:18:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id s2so3272591plr.9
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 11:18:45 -0800 (PST)
X-Received: by 2002:a17:902:8541:b029:da:fcd1:7bf with SMTP id
 d1-20020a1709028541b02900dafcd107bfmr7752559plo.56.1607627924954; Thu, 10 Dec
 2020 11:18:44 -0800 (PST)
MIME-Version: 1.0
References: <202012101752.oNGReKJM-lkp@intel.com> <8d7aab68fd0d0a5d3ee1e99088e9a68e@kernel.org>
In-Reply-To: <8d7aab68fd0d0a5d3ee1e99088e9a68e@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 11:18:33 -0800
Message-ID: <CAKwvOdmzqVpkhA4ZHXYVvFymvz0YemNXq3+OS0cSiSCLx3VyVw@mail.gmail.com>
Subject: Re: [linux-next:master 10163/12085] arch/arm64/kvm/hyp/nvhe/psci-relay.c:174:28:
 warning: no previous prototype for function 'kvm_host_psci_cpu_entry'
To: Marc Zyngier <maz@kernel.org>
Cc: kernel test robot <lkp@intel.com>, David Brazdil <dbrazdil@google.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k47MCVNM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Dec 10, 2020 at 1:38 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-12-10 09:24, kernel test robot wrote:
> > tree:
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > master
> > head:   2f1d5c77f13fe64497c2e2601605f7d7ec4da9b1
> > commit: cdf367192766ad11a03e8d5098556be43b8eb6b0 [10163/12085] KVM:
> > arm64: Intercept host's CPU_ON SMCs
> > config: arm64-randconfig-r032-20201209 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> > 1968804ac726e7674d5de22bc2204b45857da344)
> > reproduce (this is a W=1 build):
> >         wget
> > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         #
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=cdf367192766ad11a03e8d5098556be43b8eb6b0
> >         git remote add linux-next
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout cdf367192766ad11a03e8d5098556be43b8eb6b0
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > ARCH=arm64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >>> arch/arm64/kvm/hyp/nvhe/psci-relay.c:174:28: warning: no previous
> >>> prototype for function 'kvm_host_psci_cpu_entry'
> >>> [-Wmissing-prototypes]
> >    asmlinkage void __noreturn kvm_host_psci_cpu_entry(bool is_cpu_on)
> >                               ^
> >    arch/arm64/kvm/hyp/nvhe/psci-relay.c:174:12: note: declare 'static'
> > if the function is not intended to be used outside of this translation
> > unit
> >    asmlinkage void __noreturn kvm_host_psci_cpu_entry(bool is_cpu_on)
> >               ^
> >               static
> >    1 warning generated.
>
> I wish someone would fix these reports and weed out these false
> positive.
>
> The function is annotated as  asmlinkage, meaning it is called from some
> assembly code. Not amount of prototyping is going to help the assembler,
> and making it static is just going to break the build.

While it's not great, my recommendation would be to provide a
declaration within the same source file.  The warning is generally
about defining a function with extern linkage without having
previously declared a prototype, which can be dangerous when there's
other callers in other translation units as they would have to match
the prototype without any compiler checks.  The compiler can't know
when looking in isolation at one translation unit that the only
callers are assembler.

See for example stpcpy in lib/string.c:
 290 char *stpcpy(char *__restrict__ dest, const char *__restrict__
src);
 291 char *stpcpy(char *__restrict__ dest, const char *__restrict__
src)
 292 {
...

It has extern linkage but we don't really want people to call it, so
the prototype is provided within the TU to shut up
-Wmissing-prototypes.  I'd argue we should do the same thing to fix
-Wmissing-prototypes for functions who are only called from assembler.

You might think "that's stupid" and I wouldn't disagree, but that's
one of the ways to resolve -Wmissing-prototypes:
1. use static linkage if no callers exist outside of the TU (does not
apply here, we have external callers), or
2. provide a declaration in a header so other C callers don't mess up
the prototype (does not apply here, we don't have external C callers),
or
3. provide a declaration in the same TU
(4. don't do W=1 builds. :P)

While it may be painful/weird for this case, making this TU
-Wmissing-prototypes clean allows folks to tackle the above 3 cases
throughout the tree.

>
> Thanks,
>
>          M.
>
> >
> > vim +/kvm_host_psci_cpu_entry +174 arch/arm64/kvm/hyp/nvhe/psci-relay.c
> >
> >    173
> >  > 174        asmlinkage void __noreturn kvm_host_psci_cpu_entry(bool
> > is_cpu_on)
> >    175        {
> >    176                struct psci_boot_args *boot_args;
> >    177                struct kvm_cpu_context *host_ctxt;
> >    178
> >    179                host_ctxt =
> > &this_cpu_ptr(hyp_symbol_addr(kvm_host_data))->host_ctxt;
> >    180                boot_args = this_cpu_ptr(hyp_symbol_addr(cpu_on_args));
> >    181
> >    182                cpu_reg(host_ctxt, 0) = boot_args->r0;
> >    183                write_sysreg_el2(boot_args->pc, SYS_ELR);
> >    184                release_boot_args(boot_args);
> >    185
> >    186                __host_enter(host_ctxt);
> >    187        }
> >    188
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> Jazz is not dead. It just smells funny...
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8d7aab68fd0d0a5d3ee1e99088e9a68e%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmzqVpkhA4ZHXYVvFymvz0YemNXq3%2BOS0cSiSCLx3VyVw%40mail.gmail.com.
