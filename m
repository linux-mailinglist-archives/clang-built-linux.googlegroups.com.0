Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE6KQHXAKGQEHP7G7YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 008F8EE6A1
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 18:51:17 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id v10sf13134548pge.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 09:51:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572889875; cv=pass;
        d=google.com; s=arc-20160816;
        b=UkXyEg4wHsOF4cETalxIiFt6FJhyZMHOiGY9DLGyeazfbQ6iOTr6rgruW29Uqwk5Th
         8ZAmRAIyg0TRBZ6hmklBid77qGWd9swUYr2MA/+BDXvq2EorpaPKDtIZDkuhXmu1Qm//
         5P969UKvUlqCyl+gkTzdBVW1kY/xH+40qWalz8n+Sp4m6qSMERnH/0jdkgyQ8AMkK5n+
         NMzcwRZZ8JwofAuqWtfJnOMx2/g3g0xFkdqQls5sLvGPxnWRnkt+kvDB/OLUmbmEdYAC
         a0YL6sbv7hO30hXHvfKMsv8qgtZiaNS275JPFq0xK9G3lflJv6RRyIQANlMACJG0uvcU
         MiXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=Mv6mczHaVf3h21HG6tF8ArgTnZszJJhDy/NnYGc3HtU=;
        b=Mh1Mx14KIVrYois0keGLIoRFjbxQ8RL5TEhp+u5BOh1ihIPvFNYaXbjLoli+YnG6wI
         pF50g/pozFWfuZR9aPgjuZ/mxLeevhTRkNBNqD9kut/zjLCVHyoienfuqnMcgmF/jbk4
         bvaUdASVVfFogdwuKl4iyLHVCbH9Ctpdn9EOMWHkSv0G9lYLAewjbGhQ5DXQshKafgnb
         XdMrujMbt4GuUcTYqJ02k0aY36FT7iexEjXff6clTtsDzYVt2BpgCIMHLegskYIuP6I8
         xOjOgbsJoP7E+TzPVRwGlSC4VbSXTiDo/9mZrvUA04+NJI8zRw1Jda5kSgCQLr/ylcSR
         yvsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R1he60y5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mv6mczHaVf3h21HG6tF8ArgTnZszJJhDy/NnYGc3HtU=;
        b=GEdayOX5p6BMrjNFz4NKXpZ7UPlfwDeVahs6m1D/7IcfG3bTSM+ff39sjV4RwBNNVU
         hsXzs45KTQnUWXATF23W2/No7wyC84lLLXDvGlY4oGyOvj88hK/pdC4uOXJzjNwrazoI
         JUUxmG7bhr5CmCX/+kX3I2dXcrDSwmJ9PxFYtCXNTcI2qLUMCL+ZbWZ+jgYwhOfVsu4Y
         0Z2CTkm7L7+c3f1xdjdF2fvAy1TjA8mkCvOcT4S/7XTdsMoG2YC5GXBwnkWRWlz4VrA4
         dDuu5R5ACFNZqh/3x3kJ7IF3rZedgV8c3wTVp9cjXaAuuuVBOaM+7j0NOWMMer6Xib/Y
         bDPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mv6mczHaVf3h21HG6tF8ArgTnZszJJhDy/NnYGc3HtU=;
        b=mg+SSginhOL5w76wESjM8LaIuIfOHoHOGvdLJ3blbPuIpsYd9SNTcU6Oy8n5fu5Htb
         +T3nTl04lWMCzuSSG9cm0BvjOzp9FRjdQ/AWy54scYtuWlzceK8VWOLo3TRDNOttZmdi
         gaXt/xANQxDzPAgQQMaXTT5Riw9rI0OJ+unRBKoUNsPFPuNBVUuRNyMBsASYtUPTLakl
         MpiJU2rWUp+Yqj6TWQ0qJYz8lXz/R4kjgy+/zf8W/ITRh5kPEID4Og5lbL9CigMCFL2n
         uPLZITI74zH605Piu+yvtM4eF6Aam1qvcKfeWOH25WyMIbhV9yC38PuTQkpPyf9WAAvf
         nldQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mv6mczHaVf3h21HG6tF8ArgTnZszJJhDy/NnYGc3HtU=;
        b=Tw2gSru1PLr5fjj+5Aj1aFcCN8btX42riBEXtDzS2BubtX5AWgBWCHPgJe4bSwIO3a
         MeXwwKmKTQ0XHhuYpVTYCeSqxocMycbVQ7OohMl+mFILE+FLdyDY7CwwHpBazT2d17C9
         7Xg1X8/tZ4xWTMqUU2Aw2H/GFsTddvTlcBZYSjSz9GDVUYW9IBlnU/OG8b96wkulCc5J
         9qNkZqB38zc1JSCzeObCGFpbVQsJdicrUBFOJwTunYuKD6kXlhoqobm58WWR0HBCMkLo
         zQiEXHaCNIWi2DTU6ncV2eAYLqdPvvUGBlqQ1m0MY8UTsOcZM6Knj4SwYIehF6GvwZcQ
         5+Zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUEU79V344ccT2PWZmlSLW8ZytxHIY9NIb7/C79tTBWclhEWlOd
	puFMBSIzhUkkWl/YPM70X1A=
X-Google-Smtp-Source: APXvYqyGOf7uKAGwGsF1A/tsxxCS1hwiMugPdo+jOLYAdI7lwPEZDKBP+aKab2688DVH4yNUXdXT/A==
X-Received: by 2002:a17:90a:cc07:: with SMTP id b7mr393011pju.135.1572889875623;
        Mon, 04 Nov 2019 09:51:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1d56:: with SMTP id d83ls375515pfd.13.gmail; Mon, 04 Nov
 2019 09:51:15 -0800 (PST)
X-Received: by 2002:a62:e519:: with SMTP id n25mr32332229pff.144.1572889874975;
        Mon, 04 Nov 2019 09:51:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572889874; cv=none;
        d=google.com; s=arc-20160816;
        b=Nhbdw51iKYEsrUsx6NeyLnCZ+1vLavowldZm04UiMvVax+AggqB8FOSHb0mKnFlEdw
         F+WG7ICaYMpBabDgxptdgTxRD52BwpVG05NCUWTOlZ1TASC3xBEMHWBgNfZLpcmt3M9k
         X6PKMd3fwUjHFKxpqYXqcfj3LKdlzpmmQ7xCFJwd3jqa8Fm0/wvfm5c1X9V5Ey4Mf/8O
         xOt5XTBUj4nTNE8MoieZqUiFkRu5VsCpOaCePLj3jXi5Me2CgAE9OW1xM70N7CmRVBx1
         lGw+kU9bMDLwHaBM6LR2HIpdc4O22UjlwLp3hL9owMWmTdSX1/PtsQNpgPip7nK+7Uf8
         KrNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Fv6/ayTiUY107bMTKmgNb+ZiBA//2e6YhVD0RDV7iMY=;
        b=iMmbqKnPA5L2zuVnlk7Ys4IMhk6dBRODZmq8xTrGqcpFBt67yWuKk8MCMQCEL5RX2a
         BcfE4tsCgtQkjslEZ6olgCnCGYoZ3sW1X9IKtxdjbgcg982E5c2El1P/T6yTwKlgdnYe
         5Hl7qRMi3w8QDqIwpdG/z5ZuFZLoOK1Os66aqvNMAIHQ7luoqXP0OyAuJvYQcWN1VdIa
         Aga1JTNCrPEIDn4fZWtPATbVf8WMZ3eACPmMVj1A/NmgvwMWAHnliZfoqXklRZ+L9vju
         5gpwH8hJqhN/KQ5ldugtd9UY8a8GKpY7p70Z/CJswxX/1Lq3T5TVrnteZtlzHSEWLSOt
         Yxfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R1he60y5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id h13si611214plr.2.2019.11.04.09.51.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 09:51:14 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id n16so14908795oig.2
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 09:51:14 -0800 (PST)
X-Received: by 2002:aca:f1c5:: with SMTP id p188mr214656oih.125.1572889874381;
        Mon, 04 Nov 2019 09:51:14 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 64sm635294otv.9.2019.11.04.09.51.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Nov 2019 09:51:13 -0800 (PST)
Date: Mon, 4 Nov 2019 10:51:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] lib: optimize cpumask_local_spread()
Message-ID: <20191104175112.GA51467@ubuntu-m2-xlarge-x86>
References: <201911042235.zWY2eU31%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <201911042235.zWY2eU31%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=R1he60y5;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 04, 2019 at 10:46:31PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <1572863268-28585-1-git-send-email-zhangshaokun@hisilicon.co=
m>
> References: <1572863268-28585-1-git-send-email-zhangshaokun@hisilicon.com=
>
> TO: Shaokun Zhang <zhangshaokun@hisilicon.com>
> CC: linux-kernel@vger.kernel.org, yuqi jin <jinyuqi@huawei.com>, Andrew M=
orton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>, Paul=
 Burton <paul.burton@mips.com>, Michal Hocko <mhocko@suse.com>, Michael Ell=
erman <mpe@ellerman.id.au>, Anshuman Khandual <anshuman.khandual@arm.com>, =
Shaokun Zhang <zhangshaokun@hisilicon.com>, yuqi jin <jinyuqi@huawei.com>, =
Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.co=
m>, Paul Burton <paul.burton@mips.com>, Michal Hocko <mhocko@suse.com>, Mic=
hael Ellerman <mpe@ellerman.id.au>, Anshuman Khandual <anshuman.khandual@ar=
m.com>, Shaokun Zhang <zhangshaokun@hisilicon.com>
> CC: yuqi jin <jinyuqi@huawei.com>, Andrew Morton <akpm@linux-foundation.o=
rg>, Mike Rapoport <rppt@linux.ibm.com>, Paul Burton <paul.burton@mips.com>=
, Michal Hocko <mhocko@suse.com>, Michael Ellerman <mpe@ellerman.id.au>, An=
shuman Khandual <anshuman.khandual@arm.com>, Shaokun Zhang <zhangshaokun@hi=
silicon.com>
>=20
> Hi Shaokun,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on linus/master]
> [cannot apply to v5.4-rc6 next-20191031]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Shaokun-Zhang/lib-optimi=
ze-cpumask_local_spread/20191104-183114
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t a99d8080aaf358d5d23581244e5da23b35e340b9
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 97725707f488=
d3f00f94d4c4f2d9e193c302b23c)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> lib/cpumask.c:267:14: warning: stack frame size of 5192 bytes in funct=
ion 'cpumask_local_spread' [-Wframe-larger-than=3D]
>    unsigned int cpumask_local_spread(unsigned int i, int node)
>                 ^
>    1 warning generated.
>=20
> vim +/cpumask_local_spread +267 lib/cpumask.c
>=20
> 7f843379bca036 yuqi jin      2019-11-04  255 =20
> da91309e0a7e89 Amir Vadai    2014-06-09  256  /**
> f36963c9d3f6f4 Rusty Russell 2015-05-09  257   * cpumask_local_spread - s=
elect the i'th cpu with local numa cpu's first
> da91309e0a7e89 Amir Vadai    2014-06-09  258   * @i: index number
> f36963c9d3f6f4 Rusty Russell 2015-05-09  259   * @node: local numa_node
> da91309e0a7e89 Amir Vadai    2014-06-09  260   *
> f36963c9d3f6f4 Rusty Russell 2015-05-09  261   * This function selects an=
 online CPU according to a numa aware policy;
> 7f843379bca036 yuqi jin      2019-11-04  262   * local cpus are returned =
first, followed by the nearest non-local ones,
> 7f843379bca036 yuqi jin      2019-11-04  263   * then it wraps around.
> da91309e0a7e89 Amir Vadai    2014-06-09  264   *
> f36963c9d3f6f4 Rusty Russell 2015-05-09  265   * It's not very efficient,=
 but useful for setup.
> da91309e0a7e89 Amir Vadai    2014-06-09  266   */
> f36963c9d3f6f4 Rusty Russell 2015-05-09 @267  unsigned int cpumask_local_=
spread(unsigned int i, int node)
>=20
> :::::: The code at line 267 was first introduced by commit
> :::::: f36963c9d3f6f415732710da3acdd8608a9fa0e5 cpumask_set_cpu_local_fir=
st =3D> cpumask_local_spread, lament
>=20
> :::::: TO: Rusty Russell <rusty@rustcorp.com.au>
> :::::: CC: Rusty Russell <rusty@rustcorp.com.au>
>=20
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion
>=20

GCC has the same issue:

../lib/cpumask.c: In function =E2=80=98cpumask_local_spread=E2=80=99:
../lib/cpumask.c:302:1: warning: the frame size of 5128 bytes is larger
than 2048 bytes [-Wframe-larger-than=3D]
 }
  ^

This happens because CONFIG_NODE_SHIFT is set to 10, which means
MAX_NUMNODES becomes 1024, which is a lot of stack space...

I assume the GCC version will post on the mailing list soon; if it
doesn't, I'll forward this along.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191104175112.GA51467%40ubuntu-m2-xlarge-x86.
