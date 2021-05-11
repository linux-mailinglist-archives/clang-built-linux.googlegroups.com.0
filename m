Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBG7K5KCAMGQELCC3NAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5386537AC49
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 18:47:24 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id v26-20020a2e481a0000b02900bf48f13296sf11087803lja.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 09:47:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620751644; cv=pass;
        d=google.com; s=arc-20160816;
        b=HS/kx5tyzt7a2dj79GO5MbstcqQLtiFVvJcx87+FGlZWi1OIZIPv+m5JM/+BuKYLkV
         GxlC7PqjWReZotRofPDhrX2PUsEKaaS6+9dSm8B7nKl4A9yE3fYmTzEV/uAtCymMijnL
         ToO/sJ9mcF+qbGTDc3ctlICDvj2ncxEDHNdUu0Mul59aDVEB53pdiE1nHxQHp2tX5G2E
         wt6lzLTt12j1YzzJyfSIulVAQSjIo+ZcSzB327idTZkQ57J077Sz4Wy2hWd7s8pAT612
         ZeSCrHo3d0O4ihP9UXOg+p8fFyJTjrGMy6tiu+kvhRfJc7Hwz+0wjdSLUlBVnGXosdcf
         Q08g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=OayZsAgfOtGYTqhHMq4xXcjMpZlpWNRhmqrRBHerQBk=;
        b=c0pn+AU7Cc4Dqiyf2H3TRRw4QYd/tjtpUbp/NAAzubeGmJeXh/my7zD56hf9DxsyV4
         reMw3t7TTTZx0WNV1de19TgETNAUMegO7eRWR/sNrNzjtibADrsehjXDCzLi1yummlnp
         bKOI5s8ICpcOssP8/nv7wxcnNOXX+rRW6QQxdwbXt53fGlcDnhI78kwKnkAS3zHfxA5+
         rkXYTnDJOxqNRB+7lYAmBsPf9KJL1QXZU2z/VrwSkhAGht/QGI/qn8z7Tx/NNWQupKpW
         rea2WrVNxisNlXM0o7tBcZdZknaXpzdc9XBZN7zzzzQeOZ6ZkZ0FHfOu8TzITyK+Hjo5
         8Izw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OayZsAgfOtGYTqhHMq4xXcjMpZlpWNRhmqrRBHerQBk=;
        b=Bm0LKGpk+R68hpDLBz22Y39luOc/Gb+ThjHiVl2zdYq/xGxJx01fB3myB2V3Y90qja
         TWacbljTCAFIL0W3zU+8tjgpzDskP26tx1eAFO4X5K0HNuaiEvxUycItzsleiMkXvLS3
         xL3kiH2w79J1wJoeclU6kWUt/XybjtcHQn/PaASVlIxqnkIS+T84CNcB1jm7b77NtQEZ
         ihN5kPD0q6vZRcToesvS884Ja1IWzuKF5jWYHVNlsaF8jNYrYJMemWi9YWHH8//mt1hn
         txsLa/o67LPmfO/IOb2PeIGGRJMbjc05M71ozOogR8YQQCS2/L089Rh9y8JzD0F1JXi1
         otnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OayZsAgfOtGYTqhHMq4xXcjMpZlpWNRhmqrRBHerQBk=;
        b=O2/FCG+iX/xGlFYxm7nhbw35IvS4bsZdIUBK3MBzZjjNutzqVk1jKHsQmD0o7yNjpr
         5Ui67GgRPtUCkOE5hqKQ8ItFdxYvdi24hL13FSVUUvhr18Uyvc0HJMb4vlirjVq4APwa
         yW0yGfzIBEWREjKDbX/saKPZ3zaFwgfC+yawWddqUB6C93qoqdx84mNvnhcRP3GrYpge
         ++BWao3Ipn47XMApss6ap4dFEmxkzIslRRPI9xv11ceAy7Uv85DGEtzhbeAvwBPHNkKy
         X91CkQz6Jg5aNDGOhVQ2XiIhRLTSZ5DyW3IFRySnBURH+w65vPq2tdacZCiWRxmJ1K7Z
         q5XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VgeEevAbAbeBdH5ZnepQZen+1eVnn+xZ87eTsmaVueBtCeXD+
	4HPbhs1FhoM/XkFJtERdCuU=
X-Google-Smtp-Source: ABdhPJwyVeKJHtKNSLmJPUzmMESb9ck2OHeJQufcM+3Qdi0PXiCME9piE2PpaRPsfzd7TXWUNa12YQ==
X-Received: by 2002:a2e:7207:: with SMTP id n7mr7867970ljc.352.1620751643917;
        Tue, 11 May 2021 09:47:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls2997898lfu.1.gmail; Tue,
 11 May 2021 09:47:22 -0700 (PDT)
X-Received: by 2002:a19:c746:: with SMTP id x67mr21865293lff.113.1620751642689;
        Tue, 11 May 2021 09:47:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620751642; cv=none;
        d=google.com; s=arc-20160816;
        b=cbfRKKPTvz064YdnT/WiR+rQ7C/mmi5eLFVn8ZkPnqUVh/64C1THEMwKMVdaywbNp8
         bDEtwsE630joL0hdzShmvzdcWP2/TaQPyH8z/xObhv4b74GJCRiHHuH2zUYjbGTuTbNG
         sZMvyCYlDQOKCk7BAoMuJZAEuEESe8D1SV+jZrsUjdb5U7EB3VFCGOSndR8uwd3QklwK
         Je1v9zEAG8fUTJB4Ry2j6gU4LwDMeTv7STfX2iRwY5axyNhABn/vvoCNWXOgLSJrU8dA
         Cm9lPNRuPdt9YkGLwgjoi0HfSgSQ7AuIHJ92NstKjLLHQdApYPlUaarN4DhXHYZ9MIlg
         1ptQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=nQVcf3kAz81x8oIMymybLf3S3lX0pl0zpibGYiNXkxs=;
        b=pUI6t+BC02cBhJC3kyr+hsSkAfWU64ebhqEnpjwxbvbwDk/MxOWtulc3tyrubaqE7z
         5gBjzAGLWk9TPqagViUv3diDydWmBcofApd/I3Z8iFK1ZeW8q74FmaibfE5pzeg/iYmr
         VkeMBmlSlbuETJuX5DbvziE4GKaW+j/tgUU/fmkexmSjx2klf8ImfISOVdvyvRmGEahO
         PPhQD+W9srBGbRqr99K7TAltMkQroevGENZv+QX8B8GM0nmBSVraAl09/DQIlzD5Cl21
         fQe0V9nKwzE1Z1/WKwW4GnEtE5uNG3OWWH3LxIyeGg4ZkDr5OW+NYydVDFN4i1FqNNBS
         o9Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id o20si758154lfu.5.2021.05.11.09.47.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 09:47:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4FfkNn4x37z9scw;
	Tue, 11 May 2021 18:47:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FdPnrTcrlk03; Tue, 11 May 2021 18:47:21 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4FfkNn3x2sz9sb1;
	Tue, 11 May 2021 18:47:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 686EB8B7CC;
	Tue, 11 May 2021 18:47:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id m3XhbXdmu7Jo; Tue, 11 May 2021 18:47:21 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id D77BD8B7C2;
	Tue, 11 May 2021 18:47:20 +0200 (CEST)
Subject: Re: arch/powerpc/kernel/optprobes.c:34:1: error: unused function
 'is_kprobe_ppc_optinsn_slot'
To: kernel test robot <lkp@intel.com>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
References: <202105120059.uTLH58Lm-lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <48747467-cb93-c66d-4cf9-097be0568488@csgroup.eu>
Date: Tue, 11 May 2021 18:47:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <202105120059.uTLH58Lm-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as
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

Hi All,

Le 11/05/2021 =C3=A0 18:30, kernel test robot a =C3=A9crit=C2=A0:
> Hi Christophe,
>=20
> First bad commit (maybe !=3D root cause):
>=20
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t master
> head:   1140ab592e2ebf8153d2b322604031a8868ce7a5
> commit: eacf4c0202654adfa94bbb17b5c5c77c0be14af8 powerpc: Enable OPTPROBE=
S on PPC32
> date:   3 weeks ago
> config: powerpc-randconfig-r033-20210511 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fe=
d635fe1701470062495a6ffee1c608f3f1bc)

A clang issue ?


> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc cross compiling tool for clang build
>          # apt-get install binutils-powerpc-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git/commit/?id=3Deacf4c0202654adfa94bbb17b5c5c77c0be14af8
>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel=
/git/torvalds/linux.git
>          git fetch --no-tags linus master
>          git checkout eacf4c0202654adfa94bbb17b5c5c77c0be14af8
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=
=3D1 ARCH=3Dpowerpc
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>>> arch/powerpc/kernel/optprobes.c:34:1: error: unused function 'is_kprobe=
_ppc_optinsn_slot' [-Werror,-Wunused-function]
>     DEFINE_INSN_CACHE_OPS(ppc_optinsn);
>     ^
>     include/linux/kprobes.h:306:20: note: expanded from macro 'DEFINE_INS=
N_CACHE_OPS'
>     static inline bool is_kprobe_##__name##_slot(unsigned long addr)     =
   \

That's a 'static inline', shouldn't generate an 'unused function' warning.

>                        ^
>     <scratch space>:16:1: note: expanded from here
>     is_kprobe_ppc_optinsn_slot
>     ^
>     1 error generated.
>=20
>=20
> vim +/is_kprobe_ppc_optinsn_slot +34 arch/powerpc/kernel/optprobes.c
>=20
> 51c9c084399352 Anju T 2017-02-08  20
> 51c9c084399352 Anju T 2017-02-08  21  #define TMPL_CALL_HDLR_IDX	\
> 51c9c084399352 Anju T 2017-02-08  22  	(optprobe_template_call_handler - =
optprobe_template_entry)
> 51c9c084399352 Anju T 2017-02-08  23  #define TMPL_EMULATE_IDX	\
> 51c9c084399352 Anju T 2017-02-08  24  	(optprobe_template_call_emulate - =
optprobe_template_entry)
> 51c9c084399352 Anju T 2017-02-08  25  #define TMPL_RET_IDX		\
> 51c9c084399352 Anju T 2017-02-08  26  	(optprobe_template_ret - optprobe_=
template_entry)
> 51c9c084399352 Anju T 2017-02-08  27  #define TMPL_OP_IDX		\
> 51c9c084399352 Anju T 2017-02-08  28  	(optprobe_template_op_address - op=
tprobe_template_entry)
> 51c9c084399352 Anju T 2017-02-08  29  #define TMPL_INSN_IDX		\
> 51c9c084399352 Anju T 2017-02-08  30  	(optprobe_template_insn - optprobe=
_template_entry)
> 51c9c084399352 Anju T 2017-02-08  31  #define TMPL_END_IDX		\
> 51c9c084399352 Anju T 2017-02-08  32  	(optprobe_template_end - optprobe_=
template_entry)
> 51c9c084399352 Anju T 2017-02-08  33
> 51c9c084399352 Anju T 2017-02-08 @34  DEFINE_INSN_CACHE_OPS(ppc_optinsn);
> 51c9c084399352 Anju T 2017-02-08  35
>=20
> :::::: The code at line 34 was first introduced by commit
> :::::: 51c9c0843993528bffc920c54c2121d9e6f8b090 powerpc/kprobes: Implemen=
t Optprobes
>=20
> :::::: TO: Anju T <anju@linux.vnet.ibm.com>
> :::::: CC: Michael Ellerman <mpe@ellerman.id.au>
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
clang-built-linux/48747467-cb93-c66d-4cf9-097be0568488%40csgroup.eu.
