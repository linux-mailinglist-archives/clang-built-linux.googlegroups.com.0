Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAMZUT3QKGQEXOQERRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB1B1FBDC3
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 20:16:34 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id x14sf2838539pjt.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 11:16:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592331393; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cdoik6xs/fQhAVuqggTil9fyWbobK2tRyXgabLscyUXBcODoD5siEJagYpcNplQlfJ
         TqdoQZhtVeN/4pG27SnkB9w8yjXka4wXG5v4KeWgzujH0pvm8QsiTxRH/91kmye9NbDk
         s1J5+zAMoWpaKsl4mDYCXp/l6dJ44LJ6+3BegN3w4dKYYoJjdLaYn6gm6gVzxu/tBJvD
         DE/en0p+TbPSTimFiDjdz5r70FORyU5jb/DcfvualBCUjQg8LrudzYH1JP+lN12cOhkw
         f2i08iSm84U32n5iATIExrwWp81faYh62sWvhL2Rl+tbmuRr6D9efF6DS6Q3Y2DtUM3k
         /dfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=xNmpiIP0P2soK3YuvQpfAbIQjrtNpVPOt4CAJJFEI2E=;
        b=zQCIUl4bGAIwoJmNT1arkszKaKPracZGTjaJwS5D++AgoCNCfe+ANCjn1SrnekX3tJ
         Z1IYgS91XfjJDudGuyPYgwaaOwRpu81pRicmAnUQZr8tc6repxhsz2lBPlJco44j+bJ9
         nz27NGit/BsB3kc6tquqYS12S0Jt6BR4h8o+MAAV9szUZh1LmdDaMgV7bEcoa24nY7p7
         VZp0nh9uhbR3USGCLqHhaYWlT0AQ1HQ0NL6i3oZEShhw3DUxFJfsQat/7XTg/Dl63b0Z
         tu//3JaSZ0lPEtHid4Yr5n0B+xY98/p+KX8KHS65GtAit0waio6rLBMoELMyMEDa0SuZ
         5g3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VwXlS1g8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xNmpiIP0P2soK3YuvQpfAbIQjrtNpVPOt4CAJJFEI2E=;
        b=B9Ia4BrV8+Oncg7Ps7V8vXS9w9Zt/hqnmyij6cjF4SsdsVWNfcJhfNqvDiaiAu7QPl
         6491Jj0EGSnuknRt+nrinri5N87g6mRDgJkgtlEz4bKFfMdw8dHCuvtRSQVXqH1WK3Lg
         fskm0kYl2qy+qXEAVTeCtNh6sgfzgfFSmsIehzNOk9WY1qbFRZQ+KrpMnhEDUMmYm6zW
         W57hubMNAwuOJKrR3QylnYWmgYE7CBQ6nJFsFKAlkbuuPxR8W+UQOSe7zbeeBVqyFl+X
         3cpGThDJ+qHAjn6wL19I2kD7DfAl79En6dzrf4uT8XM728OWdwvGn4X9gq+RJw1GLpl3
         1eeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xNmpiIP0P2soK3YuvQpfAbIQjrtNpVPOt4CAJJFEI2E=;
        b=YgRrMQB9MSoAPiJjoBdi51vtP23q/HrqY1Ps05usszrSf0LJAufSMNZRd2XxygaxAV
         waGorozj8F0FFxnpyBKJhSsTlX5qwmG0x8jxLgxqR8LeW0b+b5TVATcJWPnp4jF6zLgc
         B1liPlYh3zLJGh7SJHSGVdw1661jWkCLa80LxXsRYxyzxK4lq34RS6bLmnpczvZRRkTg
         5dkqUdLHeBZDXRx3bdSBn+a1QmUfpdCYQMCdgB7i/HxiYzwzk5XNHZyz6p0lat+m9NkY
         1u5J1P1ltGLBbAT79irSwTkdz6nHjL19fhdagsYUGEYDjU8zX9dHibxuZ/yBtdZCj7ig
         /UIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xNmpiIP0P2soK3YuvQpfAbIQjrtNpVPOt4CAJJFEI2E=;
        b=NFx/XNU6PAzInUBrAoSR/E3FExm0p/CYkt+Db1tlBRRLbHi/HyYVT1KSg2GsuF/UJI
         GTokspbJVTMGMx/y6x33v6keRsPQNz4HkeR5xe/2hUhabb7SyQDkBsT3rGF0b0zrYVec
         5H9T6206zpbqFCcEVwVw9UxDJweGU5Fch7z8jdhAhk60k2ktcEiGT/H0xQk6c8Cl2Kja
         Uy8THou1Qs3FCBz97I6+RYN/003Nso223RqbVC1VtVTB776dm8rp8c0j169EMly/CbTU
         48mkAGkK4MmxBTS2bj4eqDEOf0h+CT5Ydp8F9pDQgD4Wn2h0MlYlp2LSqLiUmpiRF3pV
         zOIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vlVU6M3Ep0j66DQ5RM7BTmTFSzwQs2U8RArUl5wxeKAznH2/8
	d0bdpATM6Okkt7vk+aezFQo=
X-Google-Smtp-Source: ABdhPJxWb4CsqbcMa//3SNyDXTS/CjHyq281OfYh0FMDupWkRyvsR6sqAFzqtBZHlh+aZNNdCwEAfw==
X-Received: by 2002:aa7:9839:: with SMTP id q25mr3171676pfl.291.1592331393179;
        Tue, 16 Jun 2020 11:16:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e28d:: with SMTP id d13ls211894pjz.3.gmail; Tue, 16
 Jun 2020 11:16:32 -0700 (PDT)
X-Received: by 2002:a17:90b:245:: with SMTP id fz5mr4188870pjb.138.1592331392690;
        Tue, 16 Jun 2020 11:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592331392; cv=none;
        d=google.com; s=arc-20160816;
        b=ffwXtJstlZl4ds97ti7K7qiBRSB8K6/NQZp5owoOGst1uur3XWvSNjTdpxGGcsjFj5
         /Fqi//6IUKudDqdJ1xP7MYgiRyg6u44b4+nSh/LfKiSmk3pw5hX+Hixkmc4CSYeMBS1l
         ubcOm7ZqYHuZJBwwndtn+ZcC0zSsOvCfQqiTO2sJWH4vuBx0MWezX0/8z47Z5gu7PdcE
         LvlG4HCfDCHFemEfQYGVk/KJKvXtqG1erKi9Ce70Xs/ZWg+YOcyJe7coymElaY1oK8OL
         PEhXtmushriLthHV9FQbUOthujNnGqD+9/iImofF5+R0LWaO0xvtbe+hRweXKHkHwaEa
         AvQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qcuAK03LOqO5mTPh575e+XVmEJ631aNvRC62w67+4Es=;
        b=i4aPA1krmujNncpcrkWNvmrd7UsBPBG33vWo9aCeBn6zTfUwWMJ/2WeYswtxt+2Nhy
         U30dpELNhkp+ZEA1H1jZ0CFQ4wI9GfuI5drgCujGaZmn16Fz+WFgkhS2P22Rtnm8dAlK
         2VUmu9erZHGD42r3GW7oN0VGpjDEWgYAnG4SCIHAiXjfp6ojFPU3s8Mx0ubygOlniDIz
         OwOpsGMIg2N6miz31aLc5AbTm0Exf2sQO+KomIQDD3gSS9UyTRVpJtc+zxLifX0/8iGB
         cZT79ENzy6J12YRyJRwk8Uj1d1JDrmWRcGwrFNQariZdUtVL4jYifU8vk6Y5E2uTFFBh
         4AYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VwXlS1g8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id l9si106957pjw.2.2020.06.16.11.16.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 11:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id u23so16701085otq.10
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 11:16:32 -0700 (PDT)
X-Received: by 2002:a9d:604e:: with SMTP id v14mr3605300otj.39.1592331391962;
        Tue, 16 Jun 2020 11:16:31 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id k84sm4329177oia.3.2020.06.16.11.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 11:16:31 -0700 (PDT)
Date: Tue, 16 Jun 2020 11:16:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michal Simek <michal.simek@xilinx.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>, arnd@arndb.de,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
Message-ID: <20200616181630.GA3403678@ubuntu-n2-xlarge-x86>
References: <cover.1590079968.git.christophe.leroy@csgroup.eu>
 <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu>
 <20200616002720.GA1307277@ubuntu-n2-xlarge-x86>
 <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VwXlS1g8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Michal,

On Tue, Jun 16, 2020 at 04:45:20PM +0200, Michal Simek wrote:
> 
> 
> On 16. 06. 20 2:27, Nathan Chancellor wrote:
> > On Thu, May 21, 2020 at 04:55:52PM +0000, Christophe Leroy wrote:
> >> From: Michal Simek <michal.simek@xilinx.com>
> >>
> >> The latest Xilinx design tools called ISE and EDK has been released in
> >> October 2013. New tool doesn't support any PPC405/PPC440 new designs.
> >> These platforms are no longer supported and tested.
> >>
> >> PowerPC 405/440 port is orphan from 2013 by
> >> commit cdeb89943bfc ("MAINTAINERS: Fix incorrect status tag") and
> >> commit 19624236cce1 ("MAINTAINERS: Update Grant's email address and maintainership")
> >> that's why it is time to remove the support fot these platforms.
> >>
> >> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> >> Acked-by: Arnd Bergmann <arnd@arndb.de>
> >> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> > 
> > This patch causes qemu-system-ppc to fail to load ppc44x_defconfig:
> > 
> > $ make -skj"$(nproc)" ARCH=powerpc CROSS_COMPILE=powerpc-linux- O=out/ppc distclean ppc44x_defconfig zImage
> > 
> > $ timeout --foreground 30s unbuffer \
> > qemu-system-ppc \
> > -machine bamboo \
> 
> Did you bisect it that you found that this patch is causing problem for
> you on any bamboo machine?
> 
> Or this was caused by the whole series?
> 
> Thanks,
> Michal

Yes, this conclusion was the result of the following bisect:

$ cat test.sh
#!/usr/bin/env bash

cd "${HOME}"/src/linux || exit 125

set -x

PATH=${HOME}/toolchains/gcc/10.1.0/bin:${PATH} \
make -skj"$(nproc)" ARCH=powerpc CROSS_COMPILE=powerpc-linux- O=out/ppc32 distclean ppc44x_defconfig zImage || exit 125

"${HOME}"/cbl/github/boot-utils/boot-qemu.sh -a ppc32 -k out/ppc32 -t 30s

$ git bisect start v5.8-rc1 v5.7
...

$ git bisect run test.sh
...

$ git bisect log
# bad: [b3a9e3b9622ae10064826dccb4f7a52bd88c7407] Linux 5.8-rc1
# good: [3d77e6a8804abcc0504c904bd6e5cdf3a5cf8162] Linux 5.7
git bisect start 'v5.8-rc1' 'v5.7'
# good: [ee01c4d72adffb7d424535adf630f2955748fa8b] Merge branch 'akpm' (patches from Andrew)
git bisect good ee01c4d72adffb7d424535adf630f2955748fa8b
# bad: [6f2dc3d335457d9c815be9f4fd3dc8eff92fcef7] Merge tag 'dma-mapping-5.8-2' of git://git.infradead.org/users/hch/dma-mapping
git bisect bad 6f2dc3d335457d9c815be9f4fd3dc8eff92fcef7
# skip: [828f3e18e1cb98c68fc6db4d5113513d4a267775] Merge tag 'arm-drivers-5.8' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
git bisect skip 828f3e18e1cb98c68fc6db4d5113513d4a267775
# good: [c46241a370a61f0f264791abb9fc869016e749ce] powerpc/pkeys: Check vma before returning key fault error to the user
git bisect good c46241a370a61f0f264791abb9fc869016e749ce
# good: [3f0be4df50a7854a831c80a74d7cf2cfd61f2fde] Merge tag 'versatile-dts-v5.8-1' of git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator into arm/dt
git bisect good 3f0be4df50a7854a831c80a74d7cf2cfd61f2fde
# bad: [bd55e792de0844631d34487d43eaf3f13294ebfe] powerpc/module_64: Use special stub for _mcount() with -mprofile-kernel
git bisect bad bd55e792de0844631d34487d43eaf3f13294ebfe
# good: [303e6a9ddcdc168e92253c78cdb4bbe1e10d78b3] powerpc/watchpoint: Convert thread_struct->hw_brk to an array
git bisect good 303e6a9ddcdc168e92253c78cdb4bbe1e10d78b3
# good: [0755e85570a4615ca674ad6489d44d63916f1f3e] powerpc/xive: Do not expose a debugfs file when XIVE is disabled
git bisect good 0755e85570a4615ca674ad6489d44d63916f1f3e
# bad: [b4ac18eead28611ff470d0f47a35c4e0ac080d9c] powerpc/perf/hv-24x7: Fix inconsistent output values incase multiple hv-24x7 events run
git bisect bad b4ac18eead28611ff470d0f47a35c4e0ac080d9c
# bad: [3aacaa719b7bf135551cabde2480e8f7bfdf7c7d] powerpc/40x: Don't save CR in SPRN_SPRG_SCRATCH6
git bisect bad 3aacaa719b7bf135551cabde2480e8f7bfdf7c7d
# bad: [1b5c0967ab8aa9424cdd5108de4e055d8aeaa9d0] powerpc/40x: Remove support for IBM 403GCX
git bisect bad 1b5c0967ab8aa9424cdd5108de4e055d8aeaa9d0
# good: [0bdad33d6bd7b80722e2f9e588d3d7c6d6e34978] powerpc/64: Refactor interrupt exit irq disabling sequence
git bisect good 0bdad33d6bd7b80722e2f9e588d3d7c6d6e34978
# bad: [2c74e2586bb96012ffc05f1c819b05d9cad86d6e] powerpc/40x: Rework 40x PTE access and TLB miss
git bisect bad 2c74e2586bb96012ffc05f1c819b05d9cad86d6e
# bad: [7ade8495dcfd788a76e6877c9ea86f5207369ea4] powerpc: Remove Xilinx PPC405/PPC440 support
git bisect bad 7ade8495dcfd788a76e6877c9ea86f5207369ea4
# first bad commit: [7ade8495dcfd788a76e6877c9ea86f5207369ea4] powerpc: Remove Xilinx PPC405/PPC440 support

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616181630.GA3403678%40ubuntu-n2-xlarge-x86.
