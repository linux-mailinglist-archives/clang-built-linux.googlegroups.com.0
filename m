Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBI6D52CAMGQERHHUBDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4FA37B957
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:36:36 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id a23-20020a05651c2117b02900e9751e7410sf7168201ljq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 02:36:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620812195; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Jm8HV8h2XgAjqS+tohrbpYA8WF8Lgd1266s2ECqBCMJAU0Hag8BG+wik5iGqvx9n+
         rfDGWZqZbFOeUSRspNSgvCZ9hzZlYhcYEGy7SvNt3yovPJ5QsK4xupePzHxal0GlS9uZ
         ZNz7eyR2vR2txwO1RbYG7kz+G4DYsN8VUjvydzS/Vgkm5smZoBIh5bS45jU8/GikRXGF
         5k7Xcq7+GNtkmTNhcd9xHp25d9zVrmxBcM+aRsAKAwx2cVfg1wsdzATu/sXhinqLOjkC
         KNHOSOsJnlbbKzsKxaVMzm+1zWL3SOMBhYqC0oiOgLPa7Pku9s8p66fSj04uP+55hzNP
         9YVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=gp7AJUxKsFFX6jKC15ybUovN6D0WpgcoS1tG5gFsqcA=;
        b=iuhn3PahKcA9uh8JX+JsGxBc/syOlCwZ3iMNHvL2I9QPxLiIi6MdrSXy//CLIGT29K
         MHnbp/1N6x21/yKMpl+0uI7c5Y/TstJxw8ji5LQTF5pIGeGlJsDKXMgEpRIBF+2wmOin
         seSH9X9VcWMBUokCWKELwq9QUu84rTjIThp4C4u6cfv5nX3fdHVxmHLPESb5dSK1bbjg
         vblNHQkzDTXivTxTpeGgOaksm5Tdl7EV2jsNsD0sYoRB0zGtx7wLYKmEi0NMxN4bWeXY
         avrIK8dwAeBlBOc9H6IiqunoE6YmBj/+G6LMINCU710aW+HWUJ1h/Mu42KvN6E0ZSBdH
         GMcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gp7AJUxKsFFX6jKC15ybUovN6D0WpgcoS1tG5gFsqcA=;
        b=QoaMl4QJsUhK3G3af3tMYZB3oM/vosDVXzWMpSwrCUANdAQHDcL4jzQwWp05QuhkLg
         lXua335Gdzirb8TWKpd7VqrbEQYOwAufKqSNLaEuII/eLyI33QFGT21lFvem2EnxS2L0
         fVJdpoj5Cp1JmAL4WUQ4HBSW4DkCy168uFRIR162rakKXDz1TLHsNjPiJggoF8b4aeK7
         00B6Kz/i9OMj/H1NEpkPk/PZrhmmxuQVEX6ubQKbM0xpkPEx3xw/kFEpuiIO8Jf6I7m2
         MXEFadmXhdBoLa5co45UX5275ixH5ftxhJ+9SC7YLkw+1/uSd0eUN4OayJ+cx3Pzz/LN
         ijDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gp7AJUxKsFFX6jKC15ybUovN6D0WpgcoS1tG5gFsqcA=;
        b=NZ2MMRmqgqjEuliz6A3NGqy2UfqZlGiacBAOK8L7i8Z7q+RA5MiUw4UIv9i6ULqH0I
         y/t+TYjOqK+CGE2PkKUqeB/O1EpfSlELQbelx7ZslpCMIB0BVFz4yF74cfYXj6drJY5L
         Vm/RhcM0Iy1Z3xA5Ur6BpganjzUEu04Lzn68ExBau/YNui75hOQo7vnfNEO2yWoiyjLm
         UUAikmlIfYrAYibpzWIEjecZZcCKLR5aSIq7LqWkx72A27bCQhR2j30ZUtNjbLUWF9Bq
         +CjaL3BL5W/rBOE2dLh8RuUtyoi0UiuLvSZRN8d0ZZUFaLqFCb3ClwmPDteEAenE8qcF
         Ks5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MPl3UMGJZEUGieryZmHfTNuX5QHj7WSYTEAOet2kRAOqO3Bi4
	eS0ztupLw7kQWrkoj2bueHM=
X-Google-Smtp-Source: ABdhPJxqopEXhfW2tqU3yydODFYQVlZL2yFkQjiXWlKT14qE2cLkAIxJubmgoYRKdVbpdhrPdOgsWA==
X-Received: by 2002:ac2:51ba:: with SMTP id f26mr24652454lfk.545.1620812195687;
        Wed, 12 May 2021 02:36:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf0f:: with SMTP id c15ls287670ljr.9.gmail; Wed, 12 May
 2021 02:36:34 -0700 (PDT)
X-Received: by 2002:a2e:884c:: with SMTP id z12mr29463173ljj.276.1620812194607;
        Wed, 12 May 2021 02:36:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620812194; cv=none;
        d=google.com; s=arc-20160816;
        b=CZxLoRY3qTNEzNvz67K1iTa2GLeRGCVtTRvAGL/gjla81/8BQqsuySmL4R0qkivMjK
         y/vgtO5ABjrSsHTa5U4YDjj1Pch+guHBmCzlbQeELme4PxQUGJSZpnIJZxCo5WgqZBu3
         jrGwOtrJv3KlDOD+gqsQpldw+HhMriryjJDebETAc4AlcE1aRo5CzOFBd1S093H0pWvy
         QhF/B7/G+ch9q44sPnfCvHejn9yyaVEx5m+xqY9ZxEjxgvyI/vPEDH1H/qqipTnu05/9
         HDsViIgkvi99p2FDOSoVMNVTAuk4prLF5TCwQys/ahWfHGGLMrJdiTYavWHeEPo2aQj9
         PmgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=mXDml0O+8s0OZgZp9lKAUas7R5IOPjcDmnUgbpOj3tU=;
        b=UMVDctl/QFZ0U75UuQec9j3/LUGg2966QYmPmYPn+yHM8gyxFHcU/N8v2VsTM2sajm
         yK4RcKl+5Eg4teCS+9t9JxIJ4G0dJVNfFOohTCmFUW96KIDoPvSWugx6/Il2LFL6L9jr
         yhLZi7PKT2tYomQI+B4ouwyC96hlYYJCErbr+H8GtzMBbcI3h8RWsb0BpxenpQpx8XHK
         0aA6S1uIpIUI7fIpS3nIM+ca6rIh5BGsh7srWfKegMKkZ0N2XRfyf1EeRPZl2rzOhyCd
         6isVAJnkuXNtdKGb4xiMLQLdDu5a0g87l/Rlbb7Z9AY0z5IgIY7alQpErX2WR9lklo8a
         xJCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id g25si961281lfb.10.2021.05.12.02.36.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 02:36:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4Fg8nF5JGxz9sfF;
	Wed, 12 May 2021 11:36:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B4dS7uK_X9-j; Wed, 12 May 2021 11:36:33 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4Fg8nF4JH0z9sf6;
	Wed, 12 May 2021 11:36:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 77ECA8B7E5;
	Wed, 12 May 2021 11:36:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id NJvqNYHf9qcZ; Wed, 12 May 2021 11:36:33 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id D64DE8B7DF;
	Wed, 12 May 2021 11:36:32 +0200 (CEST)
Subject: Re: arch/powerpc/kernel/optprobes.c:34:1: error: unused function
 'is_kprobe_ppc_optinsn_slot'
To: Nathan Chancellor <nathan@kernel.org>, kernel test robot <lkp@intel.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
References: <202105120059.uTLH58Lm-lkp@intel.com>
 <48747467-cb93-c66d-4cf9-097be0568488@csgroup.eu>
 <208186f3-aab0-d94e-bcf4-8347983cc1a6@kernel.org>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <0885f8b8-fea5-3fb0-42d7-b73e862a8c47@csgroup.eu>
Date: Wed, 12 May 2021 11:36:29 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <208186f3-aab0-d94e-bcf4-8347983cc1a6@kernel.org>
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



Le 11/05/2021 =C3=A0 20:46, Nathan Chancellor a =C3=A9crit=C2=A0:
> On 5/11/2021 9:47 AM, Christophe Leroy wrote:
>> Hi All,
>>
>> Le 11/05/2021 =C3=A0 18:30, kernel test robot a =C3=A9crit=C2=A0:
>>> Hi Christophe,
>>>
>>> First bad commit (maybe !=3D root cause):
>>>
>>> tree: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t master
>>> head:=C2=A0=C2=A0 1140ab592e2ebf8153d2b322604031a8868ce7a5
>>> commit: eacf4c0202654adfa94bbb17b5c5c77c0be14af8 powerpc: Enable OPTPRO=
BES on PPC32

Ok, the problem appears on PPC32 with that patch, but it must have been the=
re on PPC64 since the=20
implementation of optprobes with commit 51c9c0843993 ("powerpc/kprobes: Imp=
lement Optprobes")


>>> date:=C2=A0=C2=A0 3 weeks ago
>>> config: powerpc-randconfig-r033-20210511 (attached as .config)
>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project=20
>>> a0fed635fe1701470062495a6ffee1c608f3f1bc)
>>
>> A clang issue ?
>>
>>
>>> reproduce (this is a W=3D1 build):
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget https://raw.githu=
busercontent.com/intel/lkp-tests/master/sbin/make.cross -O=20
>>> ~/bin/make.cross
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cr=
oss
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install powerpc cros=
s compiling tool for clang build
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binu=
tils-powerpc-linux-gnu
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3Deacf4c0202654adfa94bbb17b5c5c77c0be14af8=20
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linus h=
ttps://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags li=
nus master
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout eacf4c020=
2654adfa94bbb17b5c5c77c0be14af8
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .c=
onfig to linux build tree
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross W=3D1 ARCH=3Dpowerpc
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>>>
>>>>> arch/powerpc/kernel/optprobes.c:34:1: error: unused function 'is_kpro=
be_ppc_optinsn_slot'=20
>>>>> [-Werror,-Wunused-function]
>>> =C2=A0=C2=A0=C2=A0 DEFINE_INSN_CACHE_OPS(ppc_optinsn);
>>> =C2=A0=C2=A0=C2=A0 ^
>>> =C2=A0=C2=A0=C2=A0 include/linux/kprobes.h:306:20: note: expanded from =
macro 'DEFINE_INSN_CACHE_OPS'
>>> =C2=A0=C2=A0=C2=A0 static inline bool is_kprobe_##__name##_slot(unsigne=
d long addr)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>
>> That's a 'static inline', shouldn't generate an 'unused function' warnin=
g.
> This is a W=3D1 build, which means that "inline" does not silence unused =
function warnings with clang=20
> because of commit 6863f5643dd7 ("kbuild: allow Clang to find unused stati=
c inline functions for W=3D1=20
> build").

Ok, I didn't know that.

>=20
> Cheers,
> Nathan
>=20
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>>> =C2=A0=C2=A0=C2=A0 <scratch space>:16:1: note: expanded from here
>>> =C2=A0=C2=A0=C2=A0 is_kprobe_ppc_optinsn_slot
>>> =C2=A0=C2=A0=C2=A0 ^
>>> =C2=A0=C2=A0=C2=A0 1 error generated.
>>>
>>>
>>> vim +/is_kprobe_ppc_optinsn_slot +34 arch/powerpc/kernel/optprobes.c
>>>
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 20
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 21=C2=A0 #define TMPL_CALL_HDLR_=
IDX=C2=A0=C2=A0=C2=A0 \
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 22 (optprobe_template_call_handl=
er - optprobe_template_entry)
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 23=C2=A0 #define TMPL_EMULATE_ID=
X=C2=A0=C2=A0=C2=A0 \
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 24 (optprobe_template_call_emula=
te - optprobe_template_entry)
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 25=C2=A0 #define TMPL_RET_IDX=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 26=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 (optprobe_template_ret - optprobe_template_entry)
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 27=C2=A0 #define TMPL_OP_IDX=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 28 (optprobe_template_op_address=
 - optprobe_template_entry)
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 29=C2=A0 #define TMPL_INSN_IDX=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 30=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 (optprobe_template_insn - optprobe_template_entry)
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 31=C2=A0 #define TMPL_END_IDX=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 32=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 (optprobe_template_end - optprobe_template_entry)
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 33
>>> 51c9c084399352 Anju T 2017-02-08 @34=C2=A0 DEFINE_INSN_CACHE_OPS(ppc_op=
tinsn);
>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 35
>>>
>>> :::::: The code at line 34 was first introduced by commit
>>> :::::: 51c9c0843993528bffc920c54c2121d9e6f8b090 powerpc/kprobes: Implem=
ent Optprobes
>>>
>>> :::::: TO: Anju T <anju@linux.vnet.ibm.com>
>>> :::::: CC: Michael Ellerman <mpe@ellerman.id.au>
>>>
>>> ---
>>> 0-DAY CI Kernel Test Service, Intel Corporation
>>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>>
>>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0885f8b8-fea5-3fb0-42d7-b73e862a8c47%40csgroup.eu.
