Return-Path: <clang-built-linux+bncBDLKPY4HVQKBB2PA56CAMGQELSINW4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4152F37C298
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 17:12:42 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id o5-20020a05651c0505b02900e5a95dd51esf10070634ljp.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 08:12:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620832361; cv=pass;
        d=google.com; s=arc-20160816;
        b=IGkREaHHRSKrv65eOSKeKK5ajs9bFjcWVjgqHcM4G5jJ8bmDlt5nmAp9rg6xx/9DFD
         JH4CYIfnw7fQEyj5sqlLeZi4AEm2mWv0ccHCkOSmQbQDbIQRHT6nIzfiuFl1yJZl3rOU
         C+VwHCMWTovE3LouwhCy5GYLkYMA0KI0ZZlbDGed1f094phHjCHlrerxl9cepVpCQvMB
         0yftV+gRZhtXW5PvmVvAbW4PUfsut2bsM1ruxMG/EMIKKSO4yxwRx35AhiS6Fb1ttuPa
         GFQrKHNBrK0kvHUOsLzfvlN8Chr33zD1/yO8e7UKStsAmED5Fy7FTScs0AQdf6ObcEFq
         VTJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=yyJDJqmFXbAdXjO3dgvwOhu/wi+jzZPACIgZJp5b51c=;
        b=eHNy1FJJSKXwevL/uD72YplSJCetw2hlqyLFD5PdGUrVUXu96AqxB8Dc4qsZgmrGpq
         YT92DlsTtvJCQ9yK6yXYC+E1RrGoRz+jaswKoCthrRMzXB2oGjRWJfgIr1sNEk6OVGq6
         9pIYoo/2UjIXF4+y2rP360FSqa3bDgax9To0bEe9urwejfbQJD/N2o1yjz3dvI2gwKJf
         tM6zNnQaz8rNegp+dmaY4g/r6PzNIrGd5eIfQl1+ADvF27Z/Tkewebjdv0wlc5kx85mZ
         UoWEPd37OSmW6x+3BhDXBbhFrJeC6vKnXvQnriOWXdeqJRXY9ahRoSwyRr2q+K9g6RCT
         lWjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yyJDJqmFXbAdXjO3dgvwOhu/wi+jzZPACIgZJp5b51c=;
        b=s7B9qld+xmeIxS7cj9jCV0ZjzvB31Vbamxloh01tM7x1/eccMAd+N4awfF+NaDBSct
         EigrMWF706qbhResvIFNzriWBwUB5BY8Mw1yZbulPsKofeGNAfLqgObpqJA1Yh7GHENK
         1HvOyselbsBjrBgNmBIDtgZgw2OQ2c6h/e1bMnHZ1JL9ZCkOrj57t1hjAEnk0lHyiH96
         J4M4qg4McXxTC16h/juS+MVN0B3CJtYiCQVLZ/prTQLfaqzQ3bRcqcfiRyEmGonjkssq
         zeBChpiEs58Fz4TQn0cREnhGG07yjLGNAT8WqUyUzZTHvxIAh9cNzq+9PLbMH2Fnz5Cg
         PoJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yyJDJqmFXbAdXjO3dgvwOhu/wi+jzZPACIgZJp5b51c=;
        b=ByteOhdglOUmA24+AX0ZD8nZG0Ji+KvgVgkhzDjqK2e8JLjzgxAxJ3BRkPMwSA40mM
         HA1VyZtj6gW4xc6aHj37i/BEsRElKrPSPmT9HPPAJX33g8xpcB9HdlhIyyrAEYKDpdqR
         TP7yLY4GNsKIbws1lIMpSgBHAAHEqPkddXPR6nbOqtA1Qob6OXydZbDmHaMALN05Pefn
         xoPE07NUIOX/E3Y1lE7cg+7b3tgQXR/gPzyIgdQKojVQBcuzecfUJkxzZI0LLYgDz5N+
         oVsvgdvtVuXxKABiaKWH6Nm00fdVU1b5/ObtK8JDckTCGtbfbn4/sSeoWvL2JRLGQ59K
         n/nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/wAASee4nru0ICguexl8LkhJDVL3ssv63adnW8IRv7TK+F6BW
	0hmgROVmIZ+YRxwi6za5W/U=
X-Google-Smtp-Source: ABdhPJwLmp7zQn+Ms9wCFP5cX4pCGWbT15kOH1KZnMhsf07dqnM3yps74pGYoM7VDikPs4PWWGzCKg==
X-Received: by 2002:a2e:22c3:: with SMTP id i186mr21671513lji.273.1620832361719;
        Wed, 12 May 2021 08:12:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7217:: with SMTP id n23ls511182ljc.8.gmail; Wed, 12 May
 2021 08:12:40 -0700 (PDT)
X-Received: by 2002:a2e:5045:: with SMTP id v5mr29647396ljd.270.1620832360625;
        Wed, 12 May 2021 08:12:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620832360; cv=none;
        d=google.com; s=arc-20160816;
        b=qfTN4aJYa6d4DQWP/1eaX0btu6nAwK80rNi6ij0shhzi3mGYVoWJUtdlNWyneFMClx
         czpKRNDNFo4z1LLoFExz+tADmeFEXo0jVzWy3OuQSl1SooEelWuzgjKOlP6Av8LnFCjC
         fsUmuynjgibEheLMFwCMn3Vj1gL+plgjdtfVdnyTlUl7xZYY8GOrD1MmCOknSdyxeOKd
         6iJamH8mEtOk+w2ZBGUwINK8gWS6eiUpw0CkCErit3Gi0Zb3YvDHA/9YUWoSqRQqfuNg
         WtTiVcVJTh1UgMuyEI3O2OT/Dy4Riqem0JcP9M2deQa57EUAvwsCy2DBTMh8L+QZ956z
         o8kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=RaJdZ0bOwG222RtGrgCeMj4sKSZkAl4NtbpW/zlctmA=;
        b=jD43deXd0gAVyVep/zAeA1deJr5o32//8DHxjXzNoWLSF3AGlV3xSiC8I6DZDSi1LM
         a/D5plEaVAEUfPLa+zvbBltX//LNgE4vAPxx1xjkdlwd9cCFYA6su03GV4mYdot2O0yP
         6nOqtrAmAC+i6u7fKyYORFwkaaJsutlnA31mqoMjcnbuQ//lPJMYUq4OyFcT7KkBuZlk
         zBmmYD8Y2S11luaQZNZ8s+g/tuBRCdUHAbHw0jGsQFxVbR5xmSMpbTJjT4hM4j1w1oeW
         8ITjvj8ibHe1KlBKVsNle2BnOffvWRro09Il3985kGo2W8GaDRP9xPOjzr/duAe/Kt2U
         73oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id g25si10099lfb.10.2021.05.12.08.12.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 08:12:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4FgJF35p69z9sdw;
	Wed, 12 May 2021 17:12:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OuGIHfFU1rlH; Wed, 12 May 2021 17:12:39 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4FgJF34mzcz9sds;
	Wed, 12 May 2021 17:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 699D88B7F8;
	Wed, 12 May 2021 17:12:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id DmxO4iFZJL77; Wed, 12 May 2021 17:12:39 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 9F5F48B7F6;
	Wed, 12 May 2021 17:12:38 +0200 (CEST)
Subject: Re: arch/powerpc/kernel/optprobes.c:34:1: error: unused function
 'is_kprobe_ppc_optinsn_slot'
To: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, kernel test robot <lkp@intel.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>
References: <202105120059.uTLH58Lm-lkp@intel.com>
 <48747467-cb93-c66d-4cf9-097be0568488@csgroup.eu>
 <208186f3-aab0-d94e-bcf4-8347983cc1a6@kernel.org>
 <0885f8b8-fea5-3fb0-42d7-b73e862a8c47@csgroup.eu>
 <520bd3e7-ddee-bbee-0735-6aad29acb5bb@csgroup.eu>
 <20210512215057.6875aeaf67fb31495ab29987@kernel.org>
 <20210513000649.23ac7bc69e30d8b9421a6ff6@kernel.org>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <8d12be5a-d700-c0aa-86ee-ebb97927c34c@csgroup.eu>
Date: Wed, 12 May 2021 17:12:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210513000649.23ac7bc69e30d8b9421a6ff6@kernel.org>
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



Le 12/05/2021 =C3=A0 17:06, Masami Hiramatsu a =C3=A9crit=C2=A0:
> On Wed, 12 May 2021 21:50:57 +0900
> Masami Hiramatsu <mhiramat@kernel.org> wrote:
>=20
>> On Wed, 12 May 2021 11:52:30 +0200
>> Christophe Leroy <christophe.leroy@csgroup.eu> wrote:
>=20
>>>
>>> Le 12/05/2021 =C3=A0 11:36, Christophe Leroy a =C3=A9crit=C2=A0:
>>>>
>>>>
>>>> Le 11/05/2021 =C3=A0 20:46, Nathan Chancellor a =C3=A9crit=C2=A0:
>>>>> On 5/11/2021 9:47 AM, Christophe Leroy wrote:
>>>>>> Hi All,
>>>>>>
>>>>>> Le 11/05/2021 =C3=A0 18:30, kernel test robot a =C3=A9crit=C2=A0:
>>>>>>> Hi Christophe,
>>>>>>>
>>>>>>> First bad commit (maybe !=3D root cause):
>>>>>>>
>>>>>>> tree: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git master
>>>>>>> head:=C2=A0=C2=A0 1140ab592e2ebf8153d2b322604031a8868ce7a5
>>>>>>> commit: eacf4c0202654adfa94bbb17b5c5c77c0be14af8 powerpc: Enable OP=
TPROBES on PPC32
>>>>
>>>> Ok, the problem appears on PPC32 with that patch, but it must have bee=
n there on PPC64 since the
>>>> implementation of optprobes with commit 51c9c0843993 ("powerpc/kprobes=
: Implement Optprobes")
>>>>
>>>>
>>>>>>> date:=C2=A0=C2=A0 3 weeks ago
>>>>>>> config: powerpc-randconfig-r033-20210511 (attached as .config)
>>>>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-projec=
t
>>>>>>> a0fed635fe1701470062495a6ffee1c608f3f1bc)
>>>>>>
>>>>>> A clang issue ?
>>>>>>
>>>>>>
>>>>>>> reproduce (this is a W=3D1 build):
>>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget https://raw.=
githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O
>>>>>>> ~/bin/make.cross
>>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/ma=
ke.cross
>>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install powerpc=
 cross compiling tool for clang build
>>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install=
 binutils-powerpc-linux-gnu
>>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #
>>>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
commit/?id=3Deacf4c0202654adfa94bbb17b5c5c77c0be14af8
>>>>>>>
>>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add li=
nus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-ta=
gs linus master
>>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout eacf=
4c0202654adfa94bbb17b5c5c77c0be14af8
>>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attach=
ed .config to linux build tree
>>>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_=
PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D1 ARCH=3Dpowerpc
>>>>>>>
>>>>>>> If you fix the issue, kindly add following tag as appropriate
>>>>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>>>>
>>>>>>> All errors (new ones prefixed by >>):
>>>>>>>
>>>>>>>>> arch/powerpc/kernel/optprobes.c:34:1: error: unused function 'is_=
kprobe_ppc_optinsn_slot'
>>>>>>>>> [-Werror,-Wunused-function]
>>>>>>>  =C2=A0=C2=A0=C2=A0 DEFINE_INSN_CACHE_OPS(ppc_optinsn);
>>>>>>>  =C2=A0=C2=A0=C2=A0 ^
>>>>>>>  =C2=A0=C2=A0=C2=A0 include/linux/kprobes.h:306:20: note: expanded =
from macro 'DEFINE_INSN_CACHE_OPS'
>>>>>>>  =C2=A0=C2=A0=C2=A0 static inline bool is_kprobe_##__name##_slot(un=
signed long addr)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>>>>>
>>>>>> That's a 'static inline', shouldn't generate an 'unused function' wa=
rning.
>>>>> This is a W=3D1 build, which means that "inline" does not silence unu=
sed function warnings with
>>>>> clang because of commit 6863f5643dd7 ("kbuild: allow Clang to find un=
used static inline functions
>>>>> for W=3D1 build").
>>>>
>>>> Ok, I didn't know that.
>>>
>>> After looking at it in more details, I don't really know what should be=
 done to avoid that.
>>
>> Ah, thanks for reporting!
>>
>>>
>>> This unused function is defined as part of DEFINE_INSN_CACHE_OPS(ppc_op=
tinsn).
>>>
>>> The code uses other items defined by macro DEFINE_INSN_CACHE_OPS, so it=
 cannot be removed.
>>>
>>> Solution could be to hide that in a .h, but is that worth it ?
>>
>> The best solution is to remove ppc_optinsn, but that is defined in kerne=
l/kprobes.c
>> just because page allocation is different.
>> I think the easiest fix is to add weak alloc_optinsn_page() and override=
 it
>> in arch/powerpc/kernel/optprobe.c.
>=20
> Please try this patch.
>=20
> Thank you,


Yeah, look pretty similar to the two patches I sent 30 minutes ago.



>=20
>  From 7782fa154349923ed52baa8843cc1d5eed26e82d Mon Sep 17 00:00:00 2001
> From: Masami Hiramatsu <mhiramat@kernel.org>
> Date: Wed, 12 May 2021 23:33:10 +0900
> Subject: [PATCH] powerpc/kprobes: Define arch specific optinsn memory
>   allocation
>=20

> @@ -203,14 +193,14 @@ int arch_prepare_optimized_kprobe(struct optimized_=
kprobe *op, struct kprobe *p)
>   	unsigned long nip, size;
>   	int rc, i;
>  =20
> -	kprobe_ppc_optinsn_slots.insn_size =3D MAX_OPTINSN_SIZE;
> +	kprobe_optinsn_slots.insn_size =3D MAX_OPTINSN_SIZE;

Is this still needed ? It looks like it is already done by init_kprobes() i=
n kernel/kprobes.c

>  =20
>   	nip =3D can_optimize(p);
>   	if (!nip)
>   		return -EILSEQ;
>  =20
>   	/* Allocate instruction slot for detour buffer */
> -	buff =3D get_ppc_optinsn_slot();
> +	buff =3D get_optinsn_slot();
>   	if (!buff)
>   		return -ENOMEM;
>  =20

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/8d12be5a-d700-c0aa-86ee-ebb97927c34c%40csgroup.eu.
