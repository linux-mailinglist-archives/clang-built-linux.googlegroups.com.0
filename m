Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBZOK52CAMGQEXHRSW3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8331837B9AB
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:52:43 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id q18-20020a05651c0552b02900ef6822c5fdsf991757ljp.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 02:52:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620813158; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nsk9mvs8q6WQKHbapJLp6zyu0KkQ3DOlhYuF4useymFaM8diUW0BC3Q0+o2kLefNkT
         tHdJh9CZ0JE0FNWs6/hVKfHDADUr2vIqRiWK/aUm/8JLMuflZY8wQbJzLH9b8Ex5VOB8
         tS/J0ZJgeP6MA0J+azPweB+MEHkVcqWgJFPM9MCfNbNHF8ZUZ6uSKuJnp0lQvLBrRNqS
         2QA5ZXbvdg8cdByR7+OPpzMFjJc0DnTLX078JcbCn+Y729HgpufyT4izJfCHmEHJtC0Q
         zV40NbzVj3hvI8TlppP1AXPhF3mhOf0fiF/lT3+Lo7DoN+xH56kH9yhYAMVmywD8s62X
         xveg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=YODyb+69YvZ2iouzqKh5QZiTblWxpE/v3a/nFWGefpA=;
        b=iUwGfaoL1gVqIFYz55e1ATSU8r5G1MFOObJMbvnr74XIwbWAgqIAOXXVEvC91zYevR
         kTgwuRwC701FJSIJMCTdGqF0mIKco8Xxri6Vje/IvsXgFx3ykpMC+fBk9jFLKkiw+Oyt
         kXb/CWW2wbOFOuC2fRS5/hj/W+3nY2JwwTQ1tO/O6ALfIL8j/5lL2P2jGOPduwgGcmCF
         K4Woc6qOPFWPWgUIwL/LgNtVPpvvcZe5nveTZOZ5WGfrmqcTRjOriJyQDGYmM0QAxb9Q
         YHNZDULMhRxiuvQv7nbeUxApawQ8DAITtXziWpB1qosCsNh0cx8EFa8t0C6LnpqStZb7
         hMBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YODyb+69YvZ2iouzqKh5QZiTblWxpE/v3a/nFWGefpA=;
        b=BLBDtMCQv9lP1Lmd3ZZrqWua1Oy9Fl9mG06OlIWooKR7Ml5xVkD2le7D+FuNsNUgom
         j4B6ESHtDuD1DdPIwOrXPxtagbWkAhCEapLyyvKmxKf79S03bfbLzOkV4o+PLLpcTh9w
         /IqP2vLzh/awBGow95zZjYWZ/bpnuqT/T5YogbI1Zys6E36hkS/swCqgqscinut1KlZZ
         ZLjQF98y/0nwSVRt/LYqzyf6Svi7uaBA9iwhDZzCubxmhk7TsONQsPGexvhCUDgGXivl
         /0FXVMF8MHluwh25tR4KCLSeiTcs9ygTGFpw1/JcMJc2FwMJmuNW4Sc08jbMkocHpuGq
         tN2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YODyb+69YvZ2iouzqKh5QZiTblWxpE/v3a/nFWGefpA=;
        b=NetkGtcO+Mo03AJt2kDSC6g9EwVGYiDkRR2BTu0/PQZqAHUcVHD3coldf5Gsm1VXgV
         r9PoktONhS9uBwRSxyIvO2s8RPu+436hrEty/SVcSQPyP+EtAA+UDBUr/p9uw4gxxUqr
         aCg1VVYd74kXR68qSHjebzAnyHOgmlrB0ZrL5E4ssfXfjz7VF9QbDEv4ojZfXZCht58r
         gsgNYkBwOSAhHotISi8+Iat3fQ6+ZvJHQDTHq9Sj3fCStzzCv8dAYF/iZCFecM+C8uhT
         svd9+5zq/U/yfLPaTGFeNi8LxRtzikWdMbVe0R9WZqU1iW1Q91wHRRKl2MWpjoK9ZLRY
         XUAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NcnHbODGrpZA5gxOaSPOKhhatanSCGQNBkWkys+GqNTTB+aou
	6VcnTNPQwjCBssUsUR8sTBI=
X-Google-Smtp-Source: ABdhPJxHINNZoEtAzcr0sajqDGHys6Kw8PgmV4QLzmBsnhF4QglSan8yG/2QqqqKX0bzmMYUgzkjbw==
X-Received: by 2002:a2e:b2d1:: with SMTP id 17mr25734550ljz.318.1620813158069;
        Wed, 12 May 2021 02:52:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e2c:: with SMTP id o12ls1036262lfg.2.gmail; Wed, 12 May
 2021 02:52:37 -0700 (PDT)
X-Received: by 2002:a05:6512:204:: with SMTP id a4mr1433113lfo.238.1620813157010;
        Wed, 12 May 2021 02:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620813157; cv=none;
        d=google.com; s=arc-20160816;
        b=CTU1ExYRsXWiI9JT143W8QgUNdX0YPKpNbqDn96/AcI2o8Jq8eQeQnetH0eTJqWJHs
         2D7rVgzeR7qmZkvcoV9Bc4gWiJg+XKyC/ZWUxkDldwD7PdLf4SaSJ7wkNdCZR/25WLdz
         6jYqYcgIbH8z+OyHz+Gok4sLUgB3w08QReSRWHBRmpNnjqxyUIohlg8X6xWuNEgzGrYN
         MIHHkVYvYtArhwnFXpAoWjyMEwo1vw3Dtae+5GGrR9T+dxSTaiZG7E4lnlB7BZmW3mbe
         OeUZ4EyLT5p8WqaB5gubJjTkcIKhrycXpL1NCuAxwtaTxsVOt0jOv+noxL0vI2PpnddG
         S7oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject;
        bh=uzjQJ+5R6IvXNzTWr3D6pWfTExhCRhidBXzevEQQCnk=;
        b=THVhz9i6VxbhtPvaYCSkhTOd/bjl93H5HaGlwd2RfZg25SRJh7pykRSEqmisw+Zzn2
         qtA+8ahJAXTX5oZRkQhwdW4V0nG/Zx8O3lcwa71VgRVZY+f/J25liQ2OnRWrzYeii4vw
         PwFFKg6pLBAU8VWSL5Qec0D0pVR1S6T5lE5BjhfU7iNq9NszKVUkRd/iDRP7N6iacDb9
         6c8ut6/5nnnYVYipG7eDNlSZeFZqoTkxAZcYkfyhT4DDxIZKWCqOFAwSURtuRAOuNQeN
         qVyx3J3MIwv5aEzonF7xFtXYFnhOa39/k1l7axogl7bxOGDB1tktNiqipHsHL8Mg83uh
         gLWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id c17si718999lfv.9.2021.05.12.02.52.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 02:52:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4Fg97m2Xyjz9sfB;
	Wed, 12 May 2021 11:52:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SyOMJlBUQJTV; Wed, 12 May 2021 11:52:36 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4Fg97m1VNCz9sf8;
	Wed, 12 May 2021 11:52:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 73E1F8B7DF;
	Wed, 12 May 2021 11:52:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id uE-bovAzgLkj; Wed, 12 May 2021 11:52:35 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id AA6DF8B7E8;
	Wed, 12 May 2021 11:52:32 +0200 (CEST)
Subject: Re: arch/powerpc/kernel/optprobes.c:34:1: error: unused function
 'is_kprobe_ppc_optinsn_slot'
From: Christophe Leroy <christophe.leroy@csgroup.eu>
To: Nathan Chancellor <nathan@kernel.org>, kernel test robot <lkp@intel.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
References: <202105120059.uTLH58Lm-lkp@intel.com>
 <48747467-cb93-c66d-4cf9-097be0568488@csgroup.eu>
 <208186f3-aab0-d94e-bcf4-8347983cc1a6@kernel.org>
 <0885f8b8-fea5-3fb0-42d7-b73e862a8c47@csgroup.eu>
Message-ID: <520bd3e7-ddee-bbee-0735-6aad29acb5bb@csgroup.eu>
Date: Wed, 12 May 2021 11:52:30 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <0885f8b8-fea5-3fb0-42d7-b73e862a8c47@csgroup.eu>
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



Le 12/05/2021 =C3=A0 11:36, Christophe Leroy a =C3=A9crit=C2=A0:
>=20
>=20
> Le 11/05/2021 =C3=A0 20:46, Nathan Chancellor a =C3=A9crit=C2=A0:
>> On 5/11/2021 9:47 AM, Christophe Leroy wrote:
>>> Hi All,
>>>
>>> Le 11/05/2021 =C3=A0 18:30, kernel test robot a =C3=A9crit=C2=A0:
>>>> Hi Christophe,
>>>>
>>>> First bad commit (maybe !=3D root cause):
>>>>
>>>> tree: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it master
>>>> head:=C2=A0=C2=A0 1140ab592e2ebf8153d2b322604031a8868ce7a5
>>>> commit: eacf4c0202654adfa94bbb17b5c5c77c0be14af8 powerpc: Enable OPTPR=
OBES on PPC32
>=20
> Ok, the problem appears on PPC32 with that patch, but it must have been t=
here on PPC64 since the=20
> implementation of optprobes with commit 51c9c0843993 ("powerpc/kprobes: I=
mplement Optprobes")
>=20
>=20
>>>> date:=C2=A0=C2=A0 3 weeks ago
>>>> config: powerpc-randconfig-r033-20210511 (attached as .config)
>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project=
=20
>>>> a0fed635fe1701470062495a6ffee1c608f3f1bc)
>>>
>>> A clang issue ?
>>>
>>>
>>>> reproduce (this is a W=3D1 build):
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget https://raw.gith=
ubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O=20
>>>> ~/bin/make.cross
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.c=
ross
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install powerpc cro=
ss compiling tool for clang build
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install bin=
utils-powerpc-linux-gnu
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/com=
mit/?id=3Deacf4c0202654adfa94bbb17b5c5c77c0be14af8=20
>>>>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linus =
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags l=
inus master
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout eacf4c02=
02654adfa94bbb17b5c5c77c0be14af8
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .=
config to linux build tree
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross W=3D1 ARCH=3Dpowerpc
>>>>
>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>> All errors (new ones prefixed by >>):
>>>>
>>>>>> arch/powerpc/kernel/optprobes.c:34:1: error: unused function 'is_kpr=
obe_ppc_optinsn_slot'=20
>>>>>> [-Werror,-Wunused-function]
>>>> =C2=A0=C2=A0=C2=A0 DEFINE_INSN_CACHE_OPS(ppc_optinsn);
>>>> =C2=A0=C2=A0=C2=A0 ^
>>>> =C2=A0=C2=A0=C2=A0 include/linux/kprobes.h:306:20: note: expanded from=
 macro 'DEFINE_INSN_CACHE_OPS'
>>>> =C2=A0=C2=A0=C2=A0 static inline bool is_kprobe_##__name##_slot(unsign=
ed long addr)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>>
>>> That's a 'static inline', shouldn't generate an 'unused function' warni=
ng.
>> This is a W=3D1 build, which means that "inline" does not silence unused=
 function warnings with=20
>> clang because of commit 6863f5643dd7 ("kbuild: allow Clang to find unuse=
d static inline functions=20
>> for W=3D1 build").
>=20
> Ok, I didn't know that.

After looking at it in more details, I don't really know what should be don=
e to avoid that.

This unused function is defined as part of DEFINE_INSN_CACHE_OPS(ppc_optins=
n).

The code uses other items defined by macro DEFINE_INSN_CACHE_OPS, so it can=
not be removed.

Solution could be to hide that in a .h, but is that worth it ?

It can't go in asm/kprobes.h because linux/kprobes.h includes asm/kprobes.h=
 before defining=20
DEFINE_INSN_CACHE_OPS(). So it would mean a dedicated header just for hidin=
g the problem under the=20
carpet.

>=20
>>
>> Cheers,
>> Nathan
>>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>>>> =C2=A0=C2=A0=C2=A0 <scratch space>:16:1: note: expanded from here
>>>> =C2=A0=C2=A0=C2=A0 is_kprobe_ppc_optinsn_slot
>>>> =C2=A0=C2=A0=C2=A0 ^
>>>> =C2=A0=C2=A0=C2=A0 1 error generated.
>>>>
>>>>
>>>> vim +/is_kprobe_ppc_optinsn_slot +34 arch/powerpc/kernel/optprobes.c
>>>>
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 20
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 21=C2=A0 #define TMPL_CALL_HDLR=
_IDX=C2=A0=C2=A0=C2=A0 \
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 22 (optprobe_template_call_hand=
ler - optprobe_template_entry)
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 23=C2=A0 #define TMPL_EMULATE_I=
DX=C2=A0=C2=A0=C2=A0 \
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 24 (optprobe_template_call_emul=
ate - optprobe_template_entry)
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 25=C2=A0 #define TMPL_RET_IDX=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 26=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 (optprobe_template_ret - optprobe_template_entry)
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 27=C2=A0 #define TMPL_OP_IDX=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 28 (optprobe_template_op_addres=
s - optprobe_template_entry)
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 29=C2=A0 #define TMPL_INSN_IDX=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 30=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 (optprobe_template_insn - optprobe_template_entry)
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 31=C2=A0 #define TMPL_END_IDX=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 32=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 (optprobe_template_end - optprobe_template_entry)
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 33
>>>> 51c9c084399352 Anju T 2017-02-08 @34=C2=A0 DEFINE_INSN_CACHE_OPS(ppc_o=
ptinsn);
>>>> 51c9c084399352 Anju T 2017-02-08=C2=A0 35
>>>>
>>>> :::::: The code at line 34 was first introduced by commit
>>>> :::::: 51c9c0843993528bffc920c54c2121d9e6f8b090 powerpc/kprobes: Imple=
ment Optprobes
>>>>
>>>> :::::: TO: Anju T <anju@linux.vnet.ibm.com>
>>>> :::::: CC: Michael Ellerman <mpe@ellerman.id.au>
>>>>
>>>> ---
>>>> 0-DAY CI Kernel Test Service, Intel Corporation
>>>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>>>
>>>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/520bd3e7-ddee-bbee-0735-6aad29acb5bb%40csgroup.eu.
