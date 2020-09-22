Return-Path: <clang-built-linux+bncBAABBF4DU35QKGQEKAI5O5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BAB2739ED
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 06:46:15 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id bm14sf5428139edb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 21:46:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600749975; cv=pass;
        d=google.com; s=arc-20160816;
        b=q2QU6Bz9O4QUD5Pb5okSSNyOGt6/qe6+kvLWupVaM2sYEcLoblIpI1j1UDPig7r3d9
         4xVH01IoJcS7ZJDmxZnDVrgHe6dl9n2is6QWCl9Gjlwk0SrPFsv3IvNi8xZ2qIKHJhLB
         UEJcqeMQn7O4FHz0fd7e+xryHi5aL+Lip+OxgPULFG/piaXptKfwgsCUN6L43mFrKdaS
         gJsmLRAkpFU1BhNmsudbdsM/gkxsDoCTCI/XXWXiKGRZXsP34g2eqvgRPjI+B92bGIaC
         42lito51TjYiY3qxSMCn5NfNsmGkK63rX5bLk6UDJBrKhGTELg9G/aGJy/bmHVNxYSyo
         ha3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=MQ7chArsYZc3R0jb7QCEiYvvJCoh8+606bbtCtBMBPE=;
        b=wgmqjaE08aeBTYk2gsrwIv3csQ9oTIa3kTrgTdm35Xh9RzE4bLRgrFWV+6K6rabWlN
         3//iC15WnmwjnLNifJ4NOfyUXVX4EE975VLS/BRVuisJtZFszSmA5QD+IzqrxFoDBV/U
         fdIgbD3hYUiRaaQ/2xu5TmhQ5tEIZBnuqoupnNLriybMbEwA0ekE1BglJGLei67QTn6N
         hribvOAeUlV8VeHtzMktzQeMMvSLxtyaB9mYUVNabtk8gY1fDIZZX24VEhGHIWbVLD1X
         b8m+G0ovQLw75+B+QF6An5HkS2SD0kYtuJXVVHJNgsnlpU9Oco+y1Xs2smKiBaSKUTGv
         0Bfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MQ7chArsYZc3R0jb7QCEiYvvJCoh8+606bbtCtBMBPE=;
        b=XBzLTrwJkZ5fPxd/AQ7ny5AESS215myWHvrSyYyMjdVb1C+dMaKeQgc2HYcUsNq2Q1
         rE4Tb+O+/ow8Scie9/C+dcOJe5ybz+pbQkvx/rc4u6pNiM3uQplv5NWv5QDjES7Se5CS
         0hywkWR2fCL53PMLeDFt/cXka2pQwu/Vtvakp77yqsEh89pm3Jst+EHxdJKuYIOxJIbI
         DRZHh44NTFjPohC033ERzmn/W3fgW2zgV8jznYAq5Ssj9TVsq+gmijOkemVDZjBn0xAs
         B0zQbpaftPGR8K9MuHgnKz7SMcFM4ChY3QimS66e0a93EEtcAwcfxWhFSEwFF99NG0Ht
         fntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MQ7chArsYZc3R0jb7QCEiYvvJCoh8+606bbtCtBMBPE=;
        b=kr+CK19LCFKYDucLBkApjCyZWj0zpI+/782kfEJjLgvOofIdO/V7d6K7LAy90YFHZH
         Hf6zULmeb860gabgIcHvOpB1jgus1AU5S46twjEDI98FOXsbDP0iVZZKzzIC0BcFvDLq
         kaA2J5OyGIbF6HRkjR7raulakyyg5eDfFii8TTSrKokCH+BVCTH88sKm2Niy1pkJOGGk
         VnDCe559xwHR3Zi80qnAeSmto9LcZ0qBkooVKVm46HqNTfkUOYll1r3t67Xo1QRB0wye
         JUrx3nAtJybdHyWYBOA6FDKwAgLFJFB0s45Gw9QETZuIDJ9W9d2LTQeKqtiVxBc5ytfM
         kFXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rjsKXXflLshZjxlgEXdJSL98xH5cLBI7gvM9nIe1unj4vhXAL
	kRs7adf3zZGKjQbmQ9lCARQ=
X-Google-Smtp-Source: ABdhPJw8F3GEiUHiZKDLDq6k+ivLhxdFAY7f8TY9IAoh5g1PZ1iGGT/wdyZ/9vpDPyawrPc2+5nNJQ==
X-Received: by 2002:a05:6402:1641:: with SMTP id s1mr2285368edx.66.1600749975303;
        Mon, 21 Sep 2020 21:46:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d0c8:: with SMTP id bq8ls6170062ejb.3.gmail; Mon, 21
 Sep 2020 21:46:14 -0700 (PDT)
X-Received: by 2002:a17:906:2681:: with SMTP id t1mr2975269ejc.474.1600749974409;
        Mon, 21 Sep 2020 21:46:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600749974; cv=none;
        d=google.com; s=arc-20160816;
        b=vH/uYHxMdmZEBQG0mpoGNqZxIlzNmtUEJdtNWHufNID8qqOrfr+aubP5124lKAfsPo
         tT2S6Nf4jr/o7dXc0kYMXcO68VfMg99lPYJ7ajKMSBihuKd8jyZdhgi+owleUB208Ams
         qcIkfoB6bRlCbEaT4/JCSqLH1t3M0v36/GnCSyrziH+4AUSRvVllMEnarxdznPZw17pi
         +GItGv2meeHAsD+TQsh5crf+3sJd3GP01PifbDkRdzWwv0/myfBKRtMo/pBrLPjEZ2v1
         Lm+ynQw1o6Dj6rtNoi0SlqKumDrfA/ltm4OlDF7LIPrbGI4Os2bX9+M/cMtHzkhepB1L
         576w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=u46WpTxpxKKeTvCbGswpZR+s/3OjRa9dLo60ie+Obz4=;
        b=0C02PMTYGYhapIYE1CFuRobA7UvzVdvgrBQZ4QH0SCHSR3PIp1IeTHes7/WF6XfHn9
         nrWwyBFg7EsLNGgt57kplZgjy7soHujVXe8/g8pDHQKEb/W5+erxsE5h9Jdry6AfQzip
         Qfa0VF4YP8Cmr2h1la7vkkmt82USrFzQtYUm5cn9+Jm0rMHu5N2G3cRgxFV59jkSBrt9
         jbGCJORTxsKTf9nf1weriGU4CRKsaEA8ByQIW95n+n1iD+0K+9v4g8xRb9YXNYBC37qr
         P9FHs2KUWW2eZLjnhH6fJkylI8WWWiK0W2Haig9oknypWAOgNYx2bnHcrrQMslIZqnQo
         ep0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id dk15si484106edb.2.2020.09.21.21.46.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2020 21:46:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4BwTKJ6mVDz9tyqh;
	Tue, 22 Sep 2020 06:46:12 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id 3F4mwGUaGuib; Tue, 22 Sep 2020 06:46:12 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4BwTKJ57fxz9ttBK;
	Tue, 22 Sep 2020 06:46:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id B5ECE8B7B1;
	Tue, 22 Sep 2020 06:46:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id eai6664j_Rtp; Tue, 22 Sep 2020 06:46:12 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 8D1F78B75B;
	Tue, 22 Sep 2020 06:46:10 +0200 (CEST)
Subject: Re: [linux-next:master 7032/8629]
 arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; found `@',
 expected `,'
To: kernel test robot <lkp@intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Segher Boessenkool <segher@kernel.crashing.org>
References: <202009180302.cc60Lfbg%lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu>
Date: Tue, 22 Sep 2020 06:46:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <202009180302.cc60Lfbg%lkp@intel.com>
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

Hi Nick,

Le 17/09/2020 =C3=A0 21:56, kernel test robot a =C3=A9crit=C2=A0:
> Hi Michael,
>=20
> First bad commit (maybe !=3D root cause):
>=20
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.g=
it master
> head:   860461e4fcaa76200d2d1a53523e0ff7be92e6e8
> commit: 231b232df8f67e7d37af01259c21f2a131c3911e [7032/8629] powerpc/64: =
Make VDSO32 track COMPAT on 64-bit

Definitely not the root cause. That code has been there for years.

> config: powerpc64-randconfig-r035-20200917 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1321=
160a26e7e489baf9b10d6de90a342f898960)

A new clang issue ? This code has been there for years and been building=20
with success with GNU tools.

Christophe

> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc64 cross compiling tool for clang build
>          # apt-get install binutils-powerpc64-linux-gnu
>          git checkout 231b232df8f67e7d37af01259c21f2a131c3911e
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dpowerpc64
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All error/warnings (new ones prefixed by >>):
>=20
>     arch/powerpc/kernel/vdso32/gettimeofday.S: Assembler messages:
>>> arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; foun=
d `@', expected `,'
>>> arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: junk at end of lin=
e: `@local'
>>> arch/powerpc/kernel/vdso32/gettimeofday.S:68: Warning: invalid register=
 expression
>>> arch/powerpc/kernel/vdso32/gettimeofday.S:68: Error: operand out of ran=
ge (3 is not between 0 and 1)
>     arch/powerpc/kernel/vdso32/gettimeofday.S:68: Error: missing operand
>     arch/powerpc/kernel/vdso32/gettimeofday.S:69: Warning: invalid regist=
er expression
>     arch/powerpc/kernel/vdso32/gettimeofday.S:69: Error: operand out of r=
ange (3 is not between 0 and 1)
>     arch/powerpc/kernel/vdso32/gettimeofday.S:69: Error: missing operand
>     arch/powerpc/kernel/vdso32/gettimeofday.S:72: Warning: invalid regist=
er expression
>     arch/powerpc/kernel/vdso32/gettimeofday.S:72: Error: operand out of r=
ange (3 is not between 0 and 1)
>     arch/powerpc/kernel/vdso32/gettimeofday.S:72: Error: missing operand
>     arch/powerpc/kernel/vdso32/gettimeofday.S:73: Warning: invalid regist=
er expression
>     arch/powerpc/kernel/vdso32/gettimeofday.S:73: Error: operand out of r=
ange (3 is not between 0 and 1)
>     arch/powerpc/kernel/vdso32/gettimeofday.S:73: Error: missing operand
>     arch/powerpc/kernel/vdso32/gettimeofday.S:86: Error: syntax error; fo=
und `@', expected `,'
>     arch/powerpc/kernel/vdso32/gettimeofday.S:86: Error: junk at end of l=
ine: `@local'
>     arch/powerpc/kernel/vdso32/gettimeofday.S:110: Warning: invalid regis=
ter expression
>     arch/powerpc/kernel/vdso32/gettimeofday.S:110: Error: operand out of =
range (8 is not between 0 and 1)
>     arch/powerpc/kernel/vdso32/gettimeofday.S:110: Error: missing operand
>     arch/powerpc/kernel/vdso32/gettimeofday.S:144: Warning: invalid regis=
ter expression
>     arch/powerpc/kernel/vdso32/gettimeofday.S:144: Error: missing operand
>     arch/powerpc/kernel/vdso32/gettimeofday.S:213: Warning: invalid regis=
ter expression
>     arch/powerpc/kernel/vdso32/gettimeofday.S:213: Error: operand out of =
range (4 is not between 0 and 1)
>     arch/powerpc/kernel/vdso32/gettimeofday.S:213: Error: missing operand
>     clang-12: error: assembler command failed with exit code 1 (use -v to=
 see invocation)
>=20
> # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?id=3D231b232df8f67e7d37af01259c21f2a131c3911e
> git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git=
/next/linux-next.git
> git fetch --no-tags linux-next master
> git checkout 231b232df8f67e7d37af01259c21f2a131c3911e
> vim +40 arch/powerpc/kernel/vdso32/gettimeofday.S
>=20
> 597bc5c00b666f Paul Mackerras         2008-10-27   22
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   23  	.text
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   24  /*
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   25   * Exact prototype=
 of gettimeofday
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   26   *
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   27   * int __kernel_ge=
ttimeofday(struct timeval *tv, struct timezone *tz);
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   28   *
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   29   */
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   30  V_FUNCTION_BEGIN(_=
_kernel_gettimeofday)
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   31    .cfi_startproc
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   32  	mflr	r12
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   33    .cfi_register lr=
,r12
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   34
> bfc2eae0ad72a4 Christophe Leroy       2019-12-02   35  	mr.	r10,r3			/* r=
10 saves tv */
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   36  	mr	r11,r4			/* r1=
1 saves tz */
> ec0895f08f9951 Christophe Leroy       2019-12-02   37  	get_datapage	r9, =
r0
> 74609f4536f2b8 Tony Breeds            2007-06-26   38  	beq	3f
> 6e2f9e9cfd560f Christophe Leroy       2019-12-02   39  	LOAD_REG_IMMEDIAT=
E(r7, 1000000)	/* load up USEC_PER_SEC */
> 8fd63a9ea75284 Paul Mackerras         2010-06-20  @40  	bl	__do_get_tspec=
@local	/* get sec/usec from tb & kernel */
> 8fd63a9ea75284 Paul Mackerras         2010-06-20   41  	stw	r3,TVAL32_TV_=
SEC(r10)
> 8fd63a9ea75284 Paul Mackerras         2010-06-20   42  	stw	r4,TVAL32_TV_=
USEC(r10)
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   43
> 74609f4536f2b8 Tony Breeds            2007-06-26   44  3:	cmplwi	r11,0			=
/* check if tz is NULL */
> bfc2eae0ad72a4 Christophe Leroy       2019-12-02   45  	mtlr	r12
> bfc2eae0ad72a4 Christophe Leroy       2019-12-02   46  	crclr	cr0*4+so
> bfc2eae0ad72a4 Christophe Leroy       2019-12-02   47  	li	r3,0
> bfc2eae0ad72a4 Christophe Leroy       2019-12-02   48  	beqlr
> bfc2eae0ad72a4 Christophe Leroy       2019-12-02   49
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   50  	lwz	r4,CFG_TZ_MIN=
UTEWEST(r9)/* fill tz */
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   51  	lwz	r5,CFG_TZ_DST=
TIME(r9)
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   52  	stw	r4,TZONE_TZ_M=
INWEST(r11)
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   53  	stw	r5,TZONE_TZ_D=
STTIME(r11)
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   54
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   55  	blr
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   56    .cfi_endproc
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   57  V_FUNCTION_END(__k=
ernel_gettimeofday)
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   58
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   59  /*
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   60   * Exact prototype=
 of clock_gettime()
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   61   *
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   62   * int __kernel_cl=
ock_gettime(clockid_t clock_id, struct timespec *tp);
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   63   *
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   64   */
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   65  V_FUNCTION_BEGIN(_=
_kernel_clock_gettime)
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   66    .cfi_startproc
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   67  	/* Check for supp=
orted clock IDs */
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  @68  	cmpli	cr0,r3,CLOC=
K_REALTIME
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   69  	cmpli	cr1,r3,CLOC=
K_MONOTONIC
> 0c37ec2aa88bd8 Benjamin Herrenschmidt 2005-11-14   70  	cror	cr0*4+eq,cr0=
*4+eq,cr1*4+eq
> 654abc69ef2e69 Christophe Leroy       2019-12-02   71
> 654abc69ef2e69 Christophe Leroy       2019-12-02   72  	cmpli	cr5,r3,CLOC=
K_REALTIME_COARSE
> 654abc69ef2e69 Christophe Leroy       2019-12-02   73  	cmpli	cr6,r3,CLOC=
K_MONOTONIC_COARSE
> 654abc69ef2e69 Christophe Leroy       2019-12-02   74  	cror	cr5*4+eq,cr5=
*4+eq,cr6*4+eq
> 654abc69ef2e69 Christophe Leroy       2019-12-02   75
> 654abc69ef2e69 Christophe Leroy       2019-12-02   76  	cror	cr0*4+eq,cr0=
*4+eq,cr5*4+eq
> 654abc69ef2e69 Christophe Leroy       2019-12-02   77  	bne	cr0, .Lgettim=
e_fallback
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   78
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   79  	mflr	r12			/* r12=
 saves lr */
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   80    .cfi_register lr=
,r12
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   81  	mr	r11,r4			/* r1=
1 saves tp */
> ec0895f08f9951 Christophe Leroy       2019-12-02   82  	get_datapage	r9, =
r0
> 6e2f9e9cfd560f Christophe Leroy       2019-12-02   83  	LOAD_REG_IMMEDIAT=
E(r7, NSEC_PER_SEC)	/* load up NSEC_PER_SEC */
> 654abc69ef2e69 Christophe Leroy       2019-12-02   84  	beq	cr5, .Lcoarse=
_clocks
> 654abc69ef2e69 Christophe Leroy       2019-12-02   85  .Lprecise_clocks:
> 654abc69ef2e69 Christophe Leroy       2019-12-02   86  	bl	__do_get_tspec=
@local	/* get sec/nsec from tb & kernel */
> 654abc69ef2e69 Christophe Leroy       2019-12-02   87  	bne	cr1, .Lfinish=
		/* not monotonic -> all done */
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   88
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   89  	/*
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   90  	 * CLOCK_MONOTONI=
C
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   91  	 */
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   92
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   93  	/* now we must fi=
xup using wall to monotonic. We need to snapshot
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   94  	 * that value and=
 do the counter trick again. Fortunately, we still
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   95  	 * have the count=
er value in r8 that was returned by __do_get_xsec.
> 597bc5c00b666f Paul Mackerras         2008-10-27   96  	 * At this point,=
 r3,r4 contain our sec/nsec values, r5 and r6
> 597bc5c00b666f Paul Mackerras         2008-10-27   97  	 * can be used, r=
7 contains NSEC_PER_SEC.
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   98  	 */
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11   99
> dd9a994fc68d19 Christophe Leroy       2019-04-04  100  	lwz	r5,(WTOM_CLOC=
K_SEC+LOPART)(r9)
> 597bc5c00b666f Paul Mackerras         2008-10-27  101  	lwz	r6,WTOM_CLOCK=
_NSEC(r9)
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  102
> 597bc5c00b666f Paul Mackerras         2008-10-27  103  	/* We now have ou=
r offset in r5,r6. We create a fake dependency
> 597bc5c00b666f Paul Mackerras         2008-10-27  104  	 * on that value =
and re-check the counter
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  105  	 */
> 597bc5c00b666f Paul Mackerras         2008-10-27  106  	or	r0,r6,r5
> 597bc5c00b666f Paul Mackerras         2008-10-27  107  	xor	r0,r0,r0
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  108  	add	r9,r9,r0
> 597bc5c00b666f Paul Mackerras         2008-10-27  109  	lwz	r0,(CFG_TB_UP=
DATE_COUNT+LOPART)(r9)
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  110          cmpl    cr=
0,r8,r0		/* check if updated */
> 654abc69ef2e69 Christophe Leroy       2019-12-02  111  	bne-	.Lprecise_cl=
ocks
> 654abc69ef2e69 Christophe Leroy       2019-12-02  112  	b	.Lfinish_monoto=
nic
> 654abc69ef2e69 Christophe Leroy       2019-12-02  113
> 654abc69ef2e69 Christophe Leroy       2019-12-02  114  	/*
> 654abc69ef2e69 Christophe Leroy       2019-12-02  115  	 * For coarse clo=
cks we get data directly from the vdso data page, so
> 654abc69ef2e69 Christophe Leroy       2019-12-02  116  	 * we don't need =
to call __do_get_tspec, but we still need to do the
> 654abc69ef2e69 Christophe Leroy       2019-12-02  117  	 * counter trick.
> 654abc69ef2e69 Christophe Leroy       2019-12-02  118  	 */
> 654abc69ef2e69 Christophe Leroy       2019-12-02  119  .Lcoarse_clocks:
> 654abc69ef2e69 Christophe Leroy       2019-12-02  120  	lwz	r8,(CFG_TB_UP=
DATE_COUNT+LOPART)(r9)
> 654abc69ef2e69 Christophe Leroy       2019-12-02  121  	andi.	r0,r8,1    =
             /* pending update ? loop */
> 654abc69ef2e69 Christophe Leroy       2019-12-02  122  	bne-	.Lcoarse_clo=
cks
> 654abc69ef2e69 Christophe Leroy       2019-12-02  123  	add	r9,r9,r0		/* =
r0 is already 0 */
> 654abc69ef2e69 Christophe Leroy       2019-12-02  124
> 654abc69ef2e69 Christophe Leroy       2019-12-02  125  	/*
> 654abc69ef2e69 Christophe Leroy       2019-12-02  126  	 * CLOCK_REALTIME=
_COARSE, below values are needed for MONOTONIC_COARSE
> 654abc69ef2e69 Christophe Leroy       2019-12-02  127  	 * too
> 654abc69ef2e69 Christophe Leroy       2019-12-02  128  	 */
> 654abc69ef2e69 Christophe Leroy       2019-12-02  129  	lwz	r3,STAMP_XTIM=
E_SEC+LOPART(r9)
> 654abc69ef2e69 Christophe Leroy       2019-12-02  130  	lwz	r4,STAMP_XTIM=
E_NSEC+LOPART(r9)
> 654abc69ef2e69 Christophe Leroy       2019-12-02  131  	bne	cr6,1f
> 654abc69ef2e69 Christophe Leroy       2019-12-02  132
> 654abc69ef2e69 Christophe Leroy       2019-12-02  133  	/* CLOCK_MONOTONI=
C_COARSE */
> 654abc69ef2e69 Christophe Leroy       2019-12-02  134  	lwz	r5,(WTOM_CLOC=
K_SEC+LOPART)(r9)
> 654abc69ef2e69 Christophe Leroy       2019-12-02  135  	lwz	r6,WTOM_CLOCK=
_NSEC(r9)
> 654abc69ef2e69 Christophe Leroy       2019-12-02  136
> 654abc69ef2e69 Christophe Leroy       2019-12-02  137  	/* check if count=
er has updated */
> 654abc69ef2e69 Christophe Leroy       2019-12-02  138  	or	r0,r6,r5
> 654abc69ef2e69 Christophe Leroy       2019-12-02  139  1:	or	r0,r0,r3
> 654abc69ef2e69 Christophe Leroy       2019-12-02  140  	or	r0,r0,r4
> 654abc69ef2e69 Christophe Leroy       2019-12-02  141  	xor	r0,r0,r0
> 654abc69ef2e69 Christophe Leroy       2019-12-02  142  	add	r3,r3,r0
> 654abc69ef2e69 Christophe Leroy       2019-12-02  143  	lwz	r0,CFG_TB_UPD=
ATE_COUNT+LOPART(r9)
> 654abc69ef2e69 Christophe Leroy       2019-12-02  144  	cmpl	cr0,r0,r8   =
            /* check if updated */
> 654abc69ef2e69 Christophe Leroy       2019-12-02  145  	bne-	.Lcoarse_clo=
cks
> 654abc69ef2e69 Christophe Leroy       2019-12-02  146
> 654abc69ef2e69 Christophe Leroy       2019-12-02  147  	/* Counter has no=
t updated, so continue calculating proper values for
> 654abc69ef2e69 Christophe Leroy       2019-12-02  148  	 * sec and nsec i=
f monotonic coarse, or just return with the proper
> 654abc69ef2e69 Christophe Leroy       2019-12-02  149  	 * values for rea=
ltime.
> 654abc69ef2e69 Christophe Leroy       2019-12-02  150  	 */
> 654abc69ef2e69 Christophe Leroy       2019-12-02  151  	bne	cr6, .Lfinish
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  152
> 597bc5c00b666f Paul Mackerras         2008-10-27  153  	/* Calculate and =
store result. Note that this mimics the C code,
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  154  	 * which may caus=
e funny results if nsec goes negative... is that
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  155  	 * possible at al=
l ?
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  156  	 */
> 654abc69ef2e69 Christophe Leroy       2019-12-02  157  .Lfinish_monotonic=
:
> 597bc5c00b666f Paul Mackerras         2008-10-27  158  	add	r3,r3,r5
> 597bc5c00b666f Paul Mackerras         2008-10-27  159  	add	r4,r4,r6
> 597bc5c00b666f Paul Mackerras         2008-10-27  160  	cmpw	cr0,r4,r7
> 597bc5c00b666f Paul Mackerras         2008-10-27  161  	cmpwi	cr1,r4,0
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  162  	blt	1f
> 597bc5c00b666f Paul Mackerras         2008-10-27  163  	subf	r4,r7,r4
> a7f290dad32ee3 Benjamin Herrenschmidt 2005-11-11  164  	addi	r3,r3,1
> 654abc69ef2e69 Christophe Leroy       2019-12-02  165  1:	bge	cr1, .Lfini=
sh
> 0c37ec2aa88bd8 Benjamin Herrenschmidt 2005-11-14  166  	addi	r3,r3,-1
> 597bc5c00b666f Paul Mackerras         2008-10-27  167  	add	r4,r4,r7
> 597bc5c00b666f Paul Mackerras         2008-10-27  168
>=20
> :::::: The code at line 40 was first introduced by commit
> :::::: 8fd63a9ea7528463211a6c88d500c51851d960c8 powerpc: Rework VDSO gett=
imeofday to prevent time going backwards
>=20
> :::::: TO: Paul Mackerras <paulus@samba.org>
> :::::: CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>
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
clang-built-linux/79256845-c7d4-94df-adee-9cd833fbca03%40csgroup.eu.
