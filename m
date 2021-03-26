Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNPK7GBAMGQE4CGTNLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EE434B335
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 00:58:46 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id v124sf11794958ybc.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 16:58:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616803125; cv=pass;
        d=google.com; s=arc-20160816;
        b=uSjt7BQ385IvEJYU5D8aEwQXxwM8HA9RmudW0/yhzzA0C1htXuRpzPPx9YtyL4LgYD
         V429bNzD0v06846vRiz9d6ZDToVexnPtZs9S8mOg/aB6VZo2hjzm+SAe7Jw5f1+nUQiq
         HAToNtKlHkNRYTsgAl/SMwnFPWRAhiYg9Vwch3wGox0mb/ButVq3NfKSYc/UJIY05tzD
         mwhLQb1xT5GMeu2iHGH9sifpUuEeGihL41+xTvqtDt4V2xB/1chwsVqInFUs05vvw5BF
         dPqhG8ihvtA+7eZTjE6WQ945H9TdzDKAorr3NZS6PLgL3GeAlJvSGTpBHRqRDqbTiofd
         YH3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IVMbzRZ8HNcSBugaAARrp8L92k31Uae0NbyVQqeacOk=;
        b=QUGpHCoce9FZuD4OBUumcfMRhdBk7ZbVBfltckfb6zHO5ptdgdcIXO5QkAd9uMJNUa
         Dw+FI/C7OlOpe/502FpLP1yVsPURlF4yoQJK8SL5hW7ZjuNPVqT4NVshV14yiqXAESRv
         Er7VNycFBW5ewgu214KLouvBT13C9XTHRtmGPd6I7OZbLBbb1ETPE7uLPsDgUO3Mm8kV
         xYFeFksk0MMiu/elz17BpCn10O4KJM8m8q7+e+KrX/7VxqtzFrw22kjN/NVBuG/8YbBf
         DmSm2180xY4oUKflzghUnG49MQnNJc3rJTNevhV9wQHkA4e0kifqsqqGf3nh9ztkenGD
         EPuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=c909TIJ9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IVMbzRZ8HNcSBugaAARrp8L92k31Uae0NbyVQqeacOk=;
        b=JzONvyK4IhlMYXqLXuLOoPdyzCZBOrk6gu4MKJVAJX28hRwdZLGeP+gFsu3XrhEh62
         Dqt9FqoqvDXJ4B0xndmKogbId1aoW+mRP9Gm3YCAAqwCqw1/8wBsjGplNsOBYBASIe4s
         OSQ1qD28qa0R9XFz5OB9EHzN4yfhRTe5VaDsYrwLokDOx9vo7fH+GfYFjuCLsYBkKOVx
         F5ro+5qE1ENSNmMgvsJUTanAfykl2ssyNNNAdkW1f9eRLt3xUqGehycidsamqZv6vdrN
         WGJpiuvgg/MsPhqOMQSTcdmgPbze9aKrrAxVyqKeVLjtyOnxAqP1LbOSwN9JQPKpefTd
         syyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IVMbzRZ8HNcSBugaAARrp8L92k31Uae0NbyVQqeacOk=;
        b=OtcZu36EpwxHZwKfWvWTmp9Xa59aoqROpDYlEXNwP1G+asqlO0B6kmHKPIgctFkQbr
         cZbKFiN4tXk4OMKZUX/qGcTTKHiihNBvF0nUjLmDWqF6lrUc1Qeb2RGkaHEBTSx7M3Dj
         OvhRR5lKN3xT49RxrlRGS0cRsatG1j/VamKjhOQ3I5zLhoUg0mkn01Eh+KeOHTeK0AMK
         k4tR74CgZnBFcneM/sqHvdi7i4KlMiq0FFqGI92tJ5U41wnWkgNwzlYJDaUX/Z1qMzJF
         RO91mZZ2PMH6RcpUXnnZF5iYh9g2mLH3eLwRwsN938kaDIiZzDYmrttxWrA24qDrAfG5
         AWOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531o4AjvW3Jh+l8VXdN1SLR2h7UUI+6quqoEkchWWvbbKdnv+KIv
	wp30fep8xBxytVTpY/mFKK8=
X-Google-Smtp-Source: ABdhPJxEmvta+IcOAS59anlD+F+imP8Q08QLcyuoC+g1mY15B/59o7+M+lZCSpddP7TVD0MFuyaDKQ==
X-Received: by 2002:a25:df91:: with SMTP id w139mr22006486ybg.495.1616803125744;
        Fri, 26 Mar 2021 16:58:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ad96:: with SMTP id z22ls1856594ybi.8.gmail; Fri, 26 Mar
 2021 16:58:45 -0700 (PDT)
X-Received: by 2002:a25:c2c4:: with SMTP id s187mr23365565ybf.292.1616803125289;
        Fri, 26 Mar 2021 16:58:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616803125; cv=none;
        d=google.com; s=arc-20160816;
        b=UJvhkHOG8MVpIMLRm8xm5t5KhidmSHROppi1lGJcL75M1dM3c4nQSnKISuplKjSBx3
         xMXiKaoBsgss31fXrx4+rIqmRhbvVVoezzCJmYLsBh5/dBlINJuR4I3NHgUwWSEbqWw8
         cZb4fV65Q4ifcpAuNkGhKO09+soeNVfSvABxQAjX40OlYInR8xzA0ktdWrtINM59ZdK3
         e32zJKQNL7ZDkZYgm43DuhNb8EZAzgDVsmKpowyUlvF2fuLzjVqFtnmWwIxy+Wi5D8Wz
         LLD7e6988Qmh/siL5Qr0ANtP5XINn/RmtoWk5W0aZi3eJkm8k6eRsExxDbtJTuO3WdVm
         +ErA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pmupqfzagp27SYGvfrejkkRlYHATrPNl9G/8s/QA+RE=;
        b=wd5WPZSxN0Mw9hS8NHTSUFkBunV3VpgXFQnkZzNAGtuQLnlLLyN99UmPnyz8Fgd5NA
         pPka6UcbcyhIzyj3xO0im4tfI/rGPYjqURVs//N1i+cIocHqIbahU/TyoWU5pAc2Qo32
         MRygbxH/epInbY+LoLJ3VwWujI61uXsWVBtwGMxh6IJhn64OITJNMZqTp4e7g+ZMI/P4
         fbco+OI8WLdAArPWk/Y4GZn9vn/uGuVi/Pmg8hlAfziZZtInw7tBmyh0wF8I1OyWb6jD
         OrjPbexGRpgiB3BlWgT7Gqq+R1fy7ASX6EffBeVqpBXWPvkqWz2ydZE9eyZl3UB87dek
         SgYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=c909TIJ9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s18si476516ybk.5.2021.03.26.16.58.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Mar 2021 16:58:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C58BC619E4;
	Fri, 26 Mar 2021 23:58:42 +0000 (UTC)
Date: Fri, 26 Mar 2021 16:58:39 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: Use $(LD) instead of $(CC) to link vDSO
Message-ID: <20210326235839.zgfvmtfxrb3hy6i4@archlinux-ax161>
References: <20210325215156.1986901-1-nathan@kernel.org>
 <202103262325.9ejJuOqf-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103262325.9ejJuOqf-lkp@intel.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=c909TIJ9;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Mar 27, 2021 at 12:05:34AM +0800, kernel test robot wrote:
> Hi Nathan,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [also build test ERROR on v5.12-rc4 next-20210326]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Nathan-Chancellor/riscv-Use-LD-instead-of-CC-to-link-vDSO/20210326-055421
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 002322402dafd846c424ffa9240a937f49b48c42
> config: riscv-randconfig-r032-20210326 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f490a5969bd52c8a48586f134ff8f02ccbb295b3)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/dfdcaf93f40f0d15ffc3f25128442c1688e612d6
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Nathan-Chancellor/riscv-Use-LD-instead-of-CC-to-link-vDSO/20210326-055421
>         git checkout dfdcaf93f40f0d15ffc3f25128442c1688e612d6
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

For the record, I tried to use this script to reproduce but it has a
couple of bugs:

1. It does not download the right version of clang. This report says
that it is clang-13 but the one that the script downloaded is clang-12.

2. It does not download it to the right location. The script expects
~/0day/clang-latest but it is downloaded to ~/0day/clang it seems. I
symlinked it to get around it.

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> riscv64-linux-gnu-objcopy: 'arch/riscv/kernel/vdso/vdso.so.dbg': No such file

This error only occurs because of errors before it that are not shown
due to a denylist:

ld.lld: error: arch/riscv/kernel/vdso/rt_sigreturn.o:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
ld.lld: error: arch/riscv/kernel/vdso/getcpu.o:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
ld.lld: error: arch/riscv/kernel/vdso/flush_icache.o:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax

My patch only adds another occurrence of this error because we move from
$(CC)'s default linker (in clang's case, ld.bfd) to $(LD), which in the
case of 0day appears to be ld.lld. ld.lld should not be used with RISC-V
in its current form due to errors of this nature, which happen without
my patch as well:

https://github.com/ClangBuiltLinux/linux/issues/1020

Linker relaxation in ld.lld for RISC-V is an ongoing debate/process.
Please give RISC-V the current treatment as s390 with ld.lld for the
time being to get meaningful reports. We will reach out once that issue
has been resolved.

TL;DR: Patch exposes existing issue with LD=ld.lld that would have
happened without it in different areas, the report can be ignored.

Cheers!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210326235839.zgfvmtfxrb3hy6i4%40archlinux-ax161.
