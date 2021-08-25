Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQHKTKEQMGQE52UULEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2023F7DAC
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:25:26 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id j17-20020a926e11000000b0022487646515sf568238ilc.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:25:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629926720; cv=pass;
        d=google.com; s=arc-20160816;
        b=RUwMgC4jkgpv++yT2wKTPJ12rw9dbAZTUXud9escGKMt5fT70aajFq0ySUpXyVdlQ7
         8DlXuoH410oTefqrrPqvjQtXGU4f861rjUv1FoYosLTlHRsI6HNXWe9egct19HIp8o6J
         JTbseiSQxwWwsnvU3Ww/FvcUuduoKkPbszocIm9w7W7rJCBMBrjP7rDomdFVSU1HtdUT
         ES+yCuVWSYreY/C4iSnlx6L8mZrE1jVQ212nFbj8kbhDQPSF+xuUeAzMUtLh+UBoWSEi
         qVf84B819UX+6bKub/0oeiToKVHGIXH0beQgIv9FrnCiKL2tCiBVVN4CY3ilrBcMfGVM
         NjtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yM/ju5MdEJy7AY0WWqbYU1vvsPpw8DdFpg+p3D3aOoM=;
        b=aNH6ka5QEuYKpyYzI5qLIW1YYdsdUGwe85Eqwzod8MawXfCd7HOo/orjXjoz+RSfID
         k4tqKHB6noip7Bl11vfzIExqTzYCgWliEsACXv8VvthjvruOlrGqo2IRecyAR3R3QZIq
         CkfbqqqgGksbMT70jfH55XFP9vR9+BkkYAyP8urzcuOK1/vdtzS1bgmXqdYUyjNuyFg3
         lQlk7Tk3bw3N+tahHsuW/QsFOxcaujEzuAWu1o5jRefmEd7oGQjpahYfFM4aeS5IW44u
         O0Ij4W9KiKYqRY14mcvgUI+5JExINKtv42iQ7Rp5yOjN0LrfBjQq06mVQuTt0OGl8FIt
         n/Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JFqjPb4Y;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yM/ju5MdEJy7AY0WWqbYU1vvsPpw8DdFpg+p3D3aOoM=;
        b=guMvYt0zuLt/he7XKPQBvg6WsPDNhetE/ALgqAVPl2ZuhyRhlmxcwt/jAzBGdZ3Ckb
         WqHcwTYoKZsToYRWv/EaL6DSOLcJkrrMX23fSI2PXLvwwrx0Mqo6VOqLd/f1EaODVoh6
         VNp5MDGZAOdmcMgQrYVrnbbcUJZnzEAc01Ynoz507SeVBsz9F8s5flVGf76EPcKFUjp5
         2WHQAUIFEqh9mh8B9OF5ucgIu85xHO25Zdjv56ltwbomUI57+4f500gk9omdjeYSlqcl
         EUBxYMuGeAOXzKi3tCTKzQ0lzaknNAeQrbz0f6CKB9DAkLF8SSU7crr6kKLaSh+1U7Tj
         d05Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yM/ju5MdEJy7AY0WWqbYU1vvsPpw8DdFpg+p3D3aOoM=;
        b=c5RWLLPqexQfPym3yCdrs1mKL6PQXzdxgCjmkFcUseCP3iyYK6sQDEGf0/WVSqdk1Y
         JX92j7LfCZ+cFyMchylnncz2JvRYxZRYVyoo+wF375UVHZ+A2hQufN+oydokvPYdsAzG
         WpghRZskz0VDbYVHgjceSOY4pVJr5qVyndOIITdFILwGbLAsjAfDrOJvzkFefztNMyy1
         h+qZg2pG6wxGjEA/E5icX069LIE/m1CLXxCW3gy8cKVzcSDueb7XYZuHWgOEnet9mCDh
         xhmxjV95mE8ZOMDxVW15wdFDpSuNR/yRHa6V7rgLnJt8RdS1Oe/LsGCuNPAY7tdZCzNt
         6HWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tR0LiH/d93+VipHRyMoKbGmKy4kH6/gHABM92sidxW2/2Ml3K
	IQIAGJ6xznnrU8fLFmCGPMI=
X-Google-Smtp-Source: ABdhPJzofjbEdTbygG7QxBunLFGVXhG2vgAf2yU/WwM4h6+RQwLg3Wr0SmpgBYWp9lqtIYiwTbsF6g==
X-Received: by 2002:a02:2243:: with SMTP id o64mr458946jao.40.1629926720210;
        Wed, 25 Aug 2021 14:25:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ceb5:: with SMTP id z21ls519908jaq.0.gmail; Wed, 25 Aug
 2021 14:25:19 -0700 (PDT)
X-Received: by 2002:a02:708f:: with SMTP id f137mr446629jac.68.1629926719872;
        Wed, 25 Aug 2021 14:25:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629926719; cv=none;
        d=google.com; s=arc-20160816;
        b=I1CenENmqWPAKhvvhuzJYH3oSd9bThx+OExgng/MTute68RQbcZ2OFzgxlIMH7A0n5
         ccoj4BmJAsC67UcLuf4KTOTHAxEQUwxDBuHkdn9fTQuywGGU038ZqF6MhDylNQ6nAkYn
         BO5mpP1Vgx1PnMxujmp61EIvmfpo3h53Z2R79qzlsFKglkaIR+Li8hX0pXTI8POF/cI3
         nC0dfPyTfvahHN8JtuBOP9vWHZN+jI1OlgO5nYJXcI05vmpCBbuw7fXXCGZZp0nRK5w/
         UKP8jRCUJKBpuZWcbneBAlzAAjB3mR99TzCvMvG+3q3alvJa5WrpoR9JZPRZvKZmJPaZ
         MLPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4XUZvmMdlxlJHkYmyVGSBzyLOrb2HpPYBe8v0ZGwyTg=;
        b=lh/MPVdaReOrho45Tffp3w9gPSzwO842YtMn23NXYZlHLZko00rAIsAQ1krMyUbosX
         MDgAVaVuxRf1xLu2NSU24CBrq3W9eUKpz7SkUJcRHKYBGeRSJkMtYV5kFa/prRQSiWBG
         a6XvJRwkvKtiRwAaXD2KWDpoo8OTHJbm/48tP+Ygn3fXSr+aNWnWGNodaJep7SFCGQTd
         iFDVkXBr3x4VE2UkbR4PZ8lhaiy8pon8OkqhY4pmSx8JPuXwytGUqczGhbRIRIKV8U3V
         ZJ9d57QVjtyUfEUalUki9aIQORuo3k+a8+aA1T73Ciz7CnZUBimuQJ5FgeWg1SKM04Px
         hHMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JFqjPb4Y;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x11si91411iog.4.2021.08.25.14.25.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 14:25:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7FA79610A1;
	Wed, 25 Aug 2021 21:25:18 +0000 (UTC)
Date: Wed, 25 Aug 2021 14:25:15 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>, linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com,
	llvm@list.linux.dev
Subject: Re: [PATCH v2 2/2] powerpc/bug: Provide better flexibility to
 WARN_ON/__WARN_FLAGS() with asm goto
Message-ID: <YSa1O4fcX1nNKqN/@Ryzen-9-3900X.localdomain>
References: <b286e07fb771a664b631cd07a40b09c06f26e64b.1618331881.git.christophe.leroy@csgroup.eu>
 <389962b1b702e3c78d169e59bcfac56282889173.1618331882.git.christophe.leroy@csgroup.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <389962b1b702e3c78d169e59bcfac56282889173.1618331882.git.christophe.leroy@csgroup.eu>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JFqjPb4Y;       spf=pass
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

Hi Christophe,

On Tue, Apr 13, 2021 at 04:38:10PM +0000, Christophe Leroy wrote:
> Using asm goto in __WARN_FLAGS() and WARN_ON() allows more
> flexibility to GCC.
> 
> For that add an entry to the exception table so that
> program_check_exception() knowns where to resume execution
> after a WARNING.
> 
> Here are two exemples. The first one is done on PPC32 (which
> benefits from the previous patch), the second is on PPC64.
> 
> 	unsigned long test(struct pt_regs *regs)
> 	{
> 		int ret;
> 
> 		WARN_ON(regs->msr & MSR_PR);
> 
> 		return regs->gpr[3];
> 	}
> 
> 	unsigned long test9w(unsigned long a, unsigned long b)
> 	{
> 		if (WARN_ON(!b))
> 			return 0;
> 		return a / b;
> 	}
> 
> Before the patch:
> 
> 	000003a8 <test>:
> 	 3a8:	81 23 00 84 	lwz     r9,132(r3)
> 	 3ac:	71 29 40 00 	andi.   r9,r9,16384
> 	 3b0:	40 82 00 0c 	bne     3bc <test+0x14>
> 	 3b4:	80 63 00 0c 	lwz     r3,12(r3)
> 	 3b8:	4e 80 00 20 	blr
> 
> 	 3bc:	0f e0 00 00 	twui    r0,0
> 	 3c0:	80 63 00 0c 	lwz     r3,12(r3)
> 	 3c4:	4e 80 00 20 	blr
> 
> 	0000000000000bf0 <.test9w>:
> 	 bf0:	7c 89 00 74 	cntlzd  r9,r4
> 	 bf4:	79 29 d1 82 	rldicl  r9,r9,58,6
> 	 bf8:	0b 09 00 00 	tdnei   r9,0
> 	 bfc:	2c 24 00 00 	cmpdi   r4,0
> 	 c00:	41 82 00 0c 	beq     c0c <.test9w+0x1c>
> 	 c04:	7c 63 23 92 	divdu   r3,r3,r4
> 	 c08:	4e 80 00 20 	blr
> 
> 	 c0c:	38 60 00 00 	li      r3,0
> 	 c10:	4e 80 00 20 	blr
> 
> After the patch:
> 
> 	000003a8 <test>:
> 	 3a8:	81 23 00 84 	lwz     r9,132(r3)
> 	 3ac:	71 29 40 00 	andi.   r9,r9,16384
> 	 3b0:	40 82 00 0c 	bne     3bc <test+0x14>
> 	 3b4:	80 63 00 0c 	lwz     r3,12(r3)
> 	 3b8:	4e 80 00 20 	blr
> 
> 	 3bc:	0f e0 00 00 	twui    r0,0
> 
> 	0000000000000c50 <.test9w>:
> 	 c50:	7c 89 00 74 	cntlzd  r9,r4
> 	 c54:	79 29 d1 82 	rldicl  r9,r9,58,6
> 	 c58:	0b 09 00 00 	tdnei   r9,0
> 	 c5c:	7c 63 23 92 	divdu   r3,r3,r4
> 	 c60:	4e 80 00 20 	blr
> 
> 	 c70:	38 60 00 00 	li      r3,0
> 	 c74:	4e 80 00 20 	blr
> 
> In the first exemple, we see GCC doesn't need to duplicate what
> happens after the trap.
> 
> In the second exemple, we see that GCC doesn't need to emit a test
> and a branch in the likely path in addition to the trap.
> 
> We've got some WARN_ON() in .softirqentry.text section so it needs
> to be added in the OTHER_TEXT_SECTIONS in modpost.c
> 
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>

This patch as commit 1e688dd2a3d6 ("powerpc/bug: Provide better
flexibility to WARN_ON/__WARN_FLAGS() with asm goto") cause a WARN_ON in
klist_add_tail to trigger over and over on boot when compiling with
clang:

[    2.177416][    T1] WARNING: CPU: 0 PID: 1 at lib/klist.c:62 .klist_add_tail+0x3c/0x110
[    2.177456][    T1] Modules linked in:
[    2.177481][    T1] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W         5.14.0-rc7-next-20210825 #1
[    2.177520][    T1] NIP:  c0000000007ff81c LR: c00000000090a038 CTR: 0000000000000000
[    2.177557][    T1] REGS: c0000000073c32a0 TRAP: 0700   Tainted: G        W          (5.14.0-rc7-next-20210825)
[    2.177593][    T1] MSR:  8000000002029032 <SF,VEC,EE,ME,IR,DR,RI>  CR: 22000a40  XER: 00000000
[    2.177667][    T1] CFAR: c00000000090a034 IRQMASK: 0
[    2.177667][    T1] GPR00: c00000000090a038 c0000000073c3540 c000000001be3200 0000000000000001
[    2.177667][    T1] GPR04: c0000000072d65c0 0000000000000000 c0000000091ba798 c0000000091bb0a0
[    2.177667][    T1] GPR08: 0000000000000001 0000000000000000 c000000008581918 fffffffffffffc00
[    2.177667][    T1] GPR12: 0000000044000240 c000000001dd0000 c000000000012300 0000000000000000
[    2.177667][    T1] GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000000000000
[    2.177667][    T1] GPR20: 0000000000000000 0000000000000000 0000000000000000 0000000000000000
[    2.177667][    T1] GPR24: 0000000000000000 c0000000017e3200 0000000000000000 c000000001a0e778
[    2.177667][    T1] GPR28: c0000000072d65b0 c0000000072d65a8 c000000007de72c8 c0000000073c35d0
[    2.178019][    T1] NIP [c0000000007ff81c] .klist_add_tail+0x3c/0x110
[    2.178058][    T1] LR [c00000000090a038] .bus_add_driver+0x148/0x290
[    2.178088][    T1] Call Trace:
[    2.178105][    T1] [c0000000073c3540] [c0000000073c35d0] 0xc0000000073c35d0 (unreliable)
[    2.178150][    T1] [c0000000073c35d0] [c00000000090a038] .bus_add_driver+0x148/0x290
[    2.178190][    T1] [c0000000073c3670] [c00000000090fae8] .driver_register+0xb8/0x190
[    2.178234][    T1] [c0000000073c3700] [c000000000be55c0] .__hid_register_driver+0x70/0xd0
[    2.178275][    T1] [c0000000073c37a0] [c00000000116955c] .redragon_driver_init+0x34/0x58
[    2.178314][    T1] [c0000000073c3820] [c000000000011ae0] .do_one_initcall+0x130/0x3b0
[    2.178357][    T1] [c0000000073c3bb0] [c0000000011065e0] .do_initcall_level+0xd8/0x188
[    2.178403][    T1] [c0000000073c3c50] [c0000000011064a8] .do_initcalls+0x7c/0xdc
[    2.178445][    T1] [c0000000073c3ce0] [c000000001106238] .kernel_init_freeable+0x178/0x21c
[    2.178491][    T1] [c0000000073c3d90] [c000000000012334] .kernel_init+0x34/0x220
[    2.178530][    T1] [c0000000073c3e10] [c00000000000cf50] .ret_from_kernel_thread+0x58/0x60
[    2.178569][    T1] Instruction dump:
[    2.178592][    T1] fba10078 7c7d1b78 38600001 fb810070 3b9d0008 fbc10080 7c9e2378 389d0018
[    2.178662][    T1] fb9d0008 fb9d0010 90640000 fbdd0000 <0b1e0000> e87e0018 28230000 41820024
[    2.178728][    T1] ---[ end trace 52ed3431f58f1847 ]---

Is this a bug with clang or is there something wrong with the patch? The
vmlinux image is available at [1] if you want to inspect it and our QEMU
command and the warning at boot can be viewed at [2]. If there is any
other information I can provide, please let me know.

[1] https://builds.tuxbuild.com/1xDcmp3Tvno0TTGxDVPedRKIKM2/
[2] https://github.com/ClangBuiltLinux/continuous-integration2/commit/cee159b66a58eb57fa2359e7888074b9da24126c/checks/3422232736/logs

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSa1O4fcX1nNKqN/%40Ryzen-9-3900X.localdomain.
