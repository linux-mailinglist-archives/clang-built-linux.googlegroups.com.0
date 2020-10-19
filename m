Return-Path: <clang-built-linux+bncBAABBPVTW76AKGQEBQY7ZQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A8D292D7C
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 20:23:59 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id b17sf196398ejb.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 11:23:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603131839; cv=pass;
        d=google.com; s=arc-20160816;
        b=a5vK/xfas3acuE18cXVXGY8TRgmZTFsXhsxiT3jZt5tUVxDKMaX//PYUD64TeF6Y/P
         l/Z58gjMWsygkDApKqkJ1j6BEfK0AURD/vtKt+YRejSSQJKsBHWcEm9PFTTHV5vpz1sY
         dJj4uGEnrs5dXz8sYNqlgLre8lIbR3gw/omVrZTc5gblNeQhfOJSZsaLasCYDZXaGISF
         XUZ1tcq0Aq7bRSpT0nMbauOhhNbe+Kls8EgU9ZP4YkMLW194JXpOG3xd/kl5eSetyVVg
         KoJincG4L5JTFAjc2p3wKyBFzXrQcKwK/4ZOHVzUYxSUHRrr4KS9aR2yTX8X6+4DXYcD
         UDkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=S7BRPsJrJIAnoMbpDvI6icPYcpylkreGjenry1FSNag=;
        b=HQgr/Pz27MeHHW8DlYp3h4zquOEUMjYxzFIkGUm0/H+3Hz2OQcjDp0tdd9RhigW/7n
         fV5yaW6onWLwi3iXp3/rzqb97DmJJybb7T46KIvWKtJEtjsuc3/tCerdlA+jVwxlWezC
         IXAE3Bp12ceRaRjL12Tiy+fo/xFPnpqzLlDBdEKlIJOoglVTD7OXGNVKWFSvFgXKYTNE
         WoRPcBUJD8EzGFKI+2bAy/nWpI8YpIiq0ZTjAFwaT5dBwxZamXG0WTR/Lmq2PEpOCZkR
         PdenqSflCE/P740tXiBVnmOwC+/FRkSSMRIccT5sbVpzLI2yH4KL1/Oh3sS98Iv3hBmS
         P2lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S7BRPsJrJIAnoMbpDvI6icPYcpylkreGjenry1FSNag=;
        b=ATa4NOmdtOba23P2FLxGBqNIfnkTLqFUf+LWNwOjy3RSzh2HX5MVNl1izgoBq/w5BS
         nyUvz9fdzRpGvjB/jOPazU08OplwrHqFofSOakbfNRO0b2zflZZX+izT492eoFkFFQsP
         MsHr91d0ZCBUaqN8IYWcDp6Wau8cVeSBSeufX7e/mirtqli9hqu30FE/zq2OsPvYd9sm
         nLFnNzGdD1PjbDm0E6nBH/Z5Z6yNxwMFfVznCZYsEuoVYZcCMbpl7YpIi+YYTx4Y2USA
         J4mmgu71wSZDqqXfOWkAct5zFkEqJDtPqeEa05doigLAvkzXiz+A/B35R6f8hSw1g1FB
         ketQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S7BRPsJrJIAnoMbpDvI6icPYcpylkreGjenry1FSNag=;
        b=D7/Oi6UYNDNT1YLhArZfzK7qtZ9fA84IEFAuH/KUmOHUU/SNH3WE0SzhZ8puP0AjOH
         62vbd9jbjhCxIuS/8PR5FfW8039sYJPa6DECNy4sWiZ7C7Hl6t+HLILc2m16sFT4BzYP
         6A6OHpVAXa7hB8ILWpQNZaW8bQDQaoj+74BTI15is/JTRw8+UPDef4DwaUdXVnjTSgB8
         4ZHgrea/JyBN7tNRxm3sDEj0MKs8+U4N8FhsexbFCh+0bQ13uUpCYWYo68gBGaimZv+F
         ++rO2nfFxciV5B1rc9bwqHNDNO8kVuCWhIBCnSnruCFQItX54oTBKE4lY2VjvNU5daKo
         8R6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/LH2IfiTSkEGKOBmOGWyYNL1ubYPB/09v+9fV0FRzA8MXjE2B
	CL90CYZyyLqitgwYKIffmtI=
X-Google-Smtp-Source: ABdhPJySB3NeS3MAsuBbpYfZfpSv9df7L0kH8gZ4hTNMqmfzK7+QBldr1cFzlN6F+1NXvby63VJKWg==
X-Received: by 2002:a05:6402:1c10:: with SMTP id ck16mr1148344edb.7.1603131839006;
        Mon, 19 Oct 2020 11:23:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:848:: with SMTP id f8ls427195ejd.4.gmail; Mon, 19
 Oct 2020 11:23:58 -0700 (PDT)
X-Received: by 2002:a17:906:2f97:: with SMTP id w23mr1269376eji.54.1603131838108;
        Mon, 19 Oct 2020 11:23:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603131838; cv=none;
        d=google.com; s=arc-20160816;
        b=ex+95gqhQsli7PObspsS4d46f7f9I9Izmw18F79cdBXLuh/PXvG842L/PnEa+02yfv
         bJMtvwF4pv5G8BNiN3avlsEM2FXpdj02cZsXvvcgypHm1VoLhWLQwOcMLyL1FMtCPqp5
         jzTZv5C4PevLccfPBHDEl54VJRQfHk7rAidw2RmEdw8YoWa0ffNk7XjqzWG54z6nU3ej
         TNMVD1j/UYqoOPn5glinL+vegGKckqqvYtqH6irP7sHmw1G18uk3g0r/fpfOP53iPDw/
         1/9U8PGhW9jtWCmVJhbGiiiSTJ/dyd+DYnCt0kNKFzwKJnPNtgtA0ts/RuiyjYCS6Nqm
         u6hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Dh2ouGpapimglGGIBkT2pDhrfl3zI+tYfRSEatYLQXo=;
        b=BFCXCODjvAiPpXP0HyLqzvNbykjuzksUrQv/CPdEf+vyAOORSorH0fRK+XBaPuBgbT
         ZEBXc/ZQTgixNHCvw1RGUi2R6iDQkZ8Bxat1hC5ueyC04WeMXAtwe7V5x1WNyTGNbwqD
         cBT1Z8wmpK9Dyq4Gvs5oeN20aor4dK2DZ21i3/Om/GpYRUJ7AeBTzIRVU4wOOuxtamay
         Ld/kc0kLGiN1TimNC59A2lLdazhYfz+Yz2AaBmJIQFyqZlcwnipmul3KvWufTeW0Tdow
         mRlcKV+GtoclTtiASyZLV+wHJupcib3q2LBQ4+S0uqwBRsqNoOP+cqgGV3Tq3Y69FdM8
         hYzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id lf25si34839ejb.0.2020.10.19.11.23.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 11:23:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4CFQBH5NCgz9v6J9;
	Mon, 19 Oct 2020 20:23:51 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id rtSOtVo1XFjp; Mon, 19 Oct 2020 20:23:51 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4CFQBH4Kcnz9v6J7;
	Mon, 19 Oct 2020 20:23:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 5CBDD8B7BF;
	Mon, 19 Oct 2020 20:23:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id n9mNzIxfnIUM; Mon, 19 Oct 2020 20:23:57 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 756CA8B79E;
	Mon, 19 Oct 2020 20:23:56 +0200 (CEST)
Subject: Re: [PATCH 3/3] powerpc: Fix pre-update addressing in inline assembly
To: kernel test robot <lkp@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
References: <fbcdb173cc42da62f00285dfef8c2f7d4960b5c7.1603109522.git.christophe.leroy@csgroup.eu>
 <202010192300.35IC9AK7-lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <2253e9bc-8fe1-e823-2cc4-45ba9fe66d1f@csgroup.eu>
Date: Mon, 19 Oct 2020 20:23:21 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <202010192300.35IC9AK7-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 19/10/2020 =C3=A0 17:35, kernel test robot a =C3=A9crit=C2=A0:
> Hi Christophe,
>=20
> I love your patch! Yet something to improve:
>=20
> [auto build test ERROR on powerpc/next]
> [also build test ERROR on linus/master next-20201016]
> [cannot apply to kvm-ppc/kvm-ppc-next mpe/next v5.9]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>=20
> url:    https://github.com/0day-ci/linux/commits/Christophe-Leroy/powerpc=
-uaccess-Don-t-use-m-constraint-with-GCC-4-9/20201019-201504
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git=
 next
> config: powerpc64-randconfig-r012-20201019 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 094e=
9f4779eb9b5c6a49014f2f80b8cbb833572f)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc64 cross compiling tool for clang build
>          # apt-get install binutils-powerpc64-linux-gnu
>          # https://github.com/0day-ci/linux/commit/d57fd8d270993414b8c041=
4d7be4b03cc3de1856
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Christophe-Leroy/powerpc-uacces=
s-Don-t-use-m-constraint-with-GCC-4-9/20201019-201504
>          git checkout d57fd8d270993414b8c0414d7be4b03cc3de1856
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dpowerpc64
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>     In file included from arch/powerpc/kernel/asm-offsets.c:14:
>     In file included from include/linux/compat.h:14:
>     In file included from include/linux/sem.h:5:
>     In file included from include/uapi/linux/sem.h:5:
>     In file included from include/linux/ipc.h:5:
>     In file included from include/linux/spinlock.h:51:
>     In file included from include/linux/preempt.h:78:
>     In file included from ./arch/powerpc/include/generated/asm/preempt.h:=
1:
>     In file included from include/asm-generic/preempt.h:5:
>     In file included from include/linux/thread_info.h:21:
>     In file included from arch/powerpc/include/asm/current.h:13:
>     In file included from arch/powerpc/include/asm/paca.h:31:
>     In file included from arch/powerpc/include/asm/atomic.h:13:
>     In file included from arch/powerpc/include/asm/ppc_asm.h:9:
>     In file included from arch/powerpc/include/asm/processor.h:40:
>>> arch/powerpc/include/asm/ptrace.h:288:20: error: use of undeclared iden=
tifier 'THREAD_SIZE'
>             return ((addr & ~(THREAD_SIZE - 1))  =3D=3D
>                               ^
>     arch/powerpc/include/asm/ptrace.h:289:35: error: use of undeclared id=
entifier 'THREAD_SIZE'
>                     (kernel_stack_pointer(regs) & ~(THREAD_SIZE - 1)));

Most likely a circular inclusion problem.

I'll have to put it in a header that doesn't include pile of other stuff. T=
he least bad candidate=20
seems to be asm-const.h

Christophe

>                                                     ^
>     In file included from arch/powerpc/kernel/asm-offsets.c:21:
>     include/linux/mman.h:137:9: warning: division by zero is undefined [-=
Wdivision-by-zero]
>                    _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/mman.h:115:21: note: expanded from macro '_calc_vm_tran=
s'
>        : ((x) & (bit1)) / ((bit1) / (bit2))))
>                         ^ ~~~~~~~~~~~~~~~~~
>     include/linux/mman.h:138:9: warning: division by zero is undefined [-=
Wdivision-by-zero]
>                    _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     include/linux/mman.h:115:21: note: expanded from macro '_calc_vm_tran=
s'
>        : ((x) & (bit1)) / ((bit1) / (bit2))))
>                         ^ ~~~~~~~~~~~~~~~~~
>     2 warnings and 2 errors generated.
>     make[2]: *** [scripts/Makefile.build:117: arch/powerpc/kernel/asm-off=
sets.s] Error 1
>     make[2]: Target '__build' not remade because of errors.
>     make[1]: *** [Makefile:1202: prepare0] Error 2
>     make[1]: Target 'prepare' not remade because of errors.
>     make: *** [Makefile:185: __sub-make] Error 2
>     make: Target 'prepare' not remade because of errors.
>=20
> vim +/THREAD_SIZE +288 arch/powerpc/include/asm/ptrace.h
>=20
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  275
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  276  /**
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  277   * regs_within_kernel_=
stack() - check the address in the stack
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  278   * @regs:      pt_regs=
 which contains kernel stack pointer.
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  279   * @addr:      address=
 which is checked.
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  280   *
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  281   * regs_within_kernel_=
stack() checks @addr is within the kernel stack page(s).
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  282   * If @addr is within =
the kernel stack, it returns true. If not, returns false.
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  283   */
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  284
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  285  static inline bool reg=
s_within_kernel_stack(struct pt_regs *regs,
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  286  						unsigned long ad=
dr)
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  287  {
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07 @288  	return ((addr & ~(THR=
EAD_SIZE - 1))  =3D=3D
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  289  		(kernel_stack_pointe=
r(regs) & ~(THREAD_SIZE - 1)));
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  290  }
> 359e4284a3f37ab Mahesh Salgaonkar 2010-04-07  291
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2253e9bc-8fe1-e823-2cc4-45ba9fe66d1f%40csgroup.eu.
