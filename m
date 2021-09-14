Return-Path: <clang-built-linux+bncBC433LF43MBBBVMWQOFAMGQEMGCJMSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E36D40B45D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 18:18:29 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id j193-20020a1c23ca000000b00306cd53b671sf3185919wmj.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 09:18:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631636309; cv=pass;
        d=google.com; s=arc-20160816;
        b=E78k9jf99cRcNU8WPFup3x8DWo8lkZf45zKgJMN2R7YhCUqnKmoECYvVXJ82DkcbC9
         Y+nHyCMRmVVpLmVXLqcoS3dO3aEQ/uFUB7wsCKe255JBnMTZKHHXKDhOnA6hg2IDIdqF
         8vV9OMtp1Pvf8+nxwJlbF1IaVNhcRKGF5DkwcjZR03kY/dyrWNxizCAVl6o5cb4tEvXW
         N8PZLDTJcVCGCRL6e9BYjuQNZAsKon31QoW9kzD8Aoa3wCCFvNqaarARv5/cvSHiUSUa
         J3QaELE+BAA7QXsYBp3iOVx4LtPpum8CKBcsUfYzbLZiFug1Yg4rF0FZj4XqXAkLAbjH
         7Tig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:sender:dkim-signature;
        bh=ZemC9n8D6ZJOeZk9lRUrcDSfDDHsOG1KoNTabfOP5JQ=;
        b=rN8u/y4yqU5uusbkFIYe7Wce7KhtVFel0FTWr2y67k6CZGafD3Kvxhxuz/FOP/yXsJ
         nPluWiDF11CI6fGuJA1D36vmYgYvwFIPftV3xZzozTwlKSgoaWKqRqXmkTKcX9eE1otl
         Xyg9IppdQDO+hMRyE8NiatWwy48ZkiE7tEKQ1TDRvDvs8x9o0AXajYTK+NTBgyo01FzX
         XmwqdxYLmvPcQwcjk1ExWiAo3h7Ouzn1V8irywYZi/HqZR1vZBkFVSqCT/SC2KtvWIEs
         ZFPviKh8VlPiLQRsp5dBP+uRF4wdr5BlpOu8V4FQcois7CjrzYJe+huE9IKwDwpfwo/3
         uKQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:subject:to:cc:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZemC9n8D6ZJOeZk9lRUrcDSfDDHsOG1KoNTabfOP5JQ=;
        b=mgOZImOsB/EgZKRh+esXNpcmPTP6tyo61kl7+1QdXX/QU4AE2TVqThyco7RTGfY7Cz
         soV4UoJVght/p9a3VEhx2wTTCrTYVh3tmIXzazC72/Q4Hc4/ELiqFn4OHrlW7RMbG5+A
         HrGeSUW42UVw9tWr8aSgAjq2bG4bxbvgfzA9/yFF8LB9UNZ16yjb2GAw2rnezlUkpepw
         ZI91tW7uVhBJcSxjoJLBWmlxKyNcb3sDj+MIff0mtFNL36+XHJnRzB528olgK8+Mewaa
         5ZHxHCrSuBvVJQBw7xDW3mnIy3stWMJ0oV+z9hDl8blfjvmFn3jZDuKS1v1Rl2KmDCLo
         F3Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:subject:to:cc:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZemC9n8D6ZJOeZk9lRUrcDSfDDHsOG1KoNTabfOP5JQ=;
        b=v4xNmhOI+zyNT+2eD04VDQm3//fkKAuAdw3/NgHhH6/DMuLxaJWgpyYLJH4MSrX3vT
         yW+cmDRukH08ZwJ/TMqriyi+usJPPg9GWxXk8GvOkHNHuPJWYcuG5tr3BnFHGxU2TFei
         w7csfjRrhOHjhucfmsqjLMQiQlvtsEWxLSDyzxAwgVJOjxFAvddBKZlaMMeZEF9oDiBO
         kbWzgDRLMzgWcdhvE7g7FpOpqRFJHisV01fKfO1KvnOhpdor++g269p+iTCqRse/zUkC
         ijxj0xbieTTm+E2vpOzG8Gz+Po1PCnxozfGDZVD1MldTZQ7g1T5TlEO6K1yXXx1Elvb8
         QImw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532N/Wbrpu4uCdVEtHwGaji8zwLsteHONMd8ZDf18cvUj7SmPJlT
	C5shbg22OTEYUkrC8Q8taBk=
X-Google-Smtp-Source: ABdhPJxLa4GmopgPV+W1vMwFpEJR/YwNcd2AQ/8s32KF7Z6LKcnXHys8mZN+ZAVYBXvHhYIXLsI3Pw==
X-Received: by 2002:a7b:c447:: with SMTP id l7mr3181327wmi.15.1631636309231;
        Tue, 14 Sep 2021 09:18:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f614:: with SMTP id w20ls1142197wmc.2.canary-gmail; Tue,
 14 Sep 2021 09:18:28 -0700 (PDT)
X-Received: by 2002:a05:600c:a4b:: with SMTP id c11mr3149229wmq.97.1631636308340;
        Tue, 14 Sep 2021 09:18:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631636308; cv=none;
        d=google.com; s=arc-20160816;
        b=f37/zGRRRALx7rMxcHj6OCGcQI5d1yop2+gKoZfzaKL/jpKG6bomzWAfV0X/bVGAvo
         MloQV5/sIDWcuh0xHPLDjUd4iOHPyfDGn99zx6lAWz0z0nUu2cJzv/DjqzAoT3wXJZ5L
         +L84IsH1tQ0oW6E8Y4AgYO5u6M2zvnDJhTQ4fdflnmhWDpm80EdYI2VUnLqAeFTE0i9q
         3PxHDwj4zCt1NeBAzTqSMnbQ1yIk9In+PbCizCzNDs8EDqXLhUFg5Dxd2Kr+pz8KMnDo
         FvGyUFY8fzNENTST40WkITwdNEHstsRQg6Z41QBU1GCw5Dp7p52fLMjV6pQr1srFNpPh
         Ob2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:cc:to:subject:from:date;
        bh=WWaHpfwxvACmTI3FaB+a714IE8oKAAPjLOHoI2/y7Nk=;
        b=svLXtBRI7LmodFExmfl5gejDxA2/7IQMsBY2TQjP/DN5x1ZT5AZed0jakg6u7pUOU0
         ug8mgeRStHyCgCEc06xcayhU/VhsGh+G/OtxG5pjFgier6Jz1j4oFJEu2AIeqdJCxPZQ
         j3Rz0Yxa7PPfbNsph4Ev27l1epgsqH0cJMu6jRfSB97yroEd8DYPc31Khi1Y4JKgVM6i
         mYOY3SN3HTV1nMjyMiKSsKAFv93CLHl4omKF8B9NqoOV29VeqMlHV7syKnQSRZgAzPuj
         Zk5d+tpTCnejOYGKHKObFtdY+SrGGriYGepolPh76wRKEnOBIH0tHlZH1nylFNwwzvDZ
         +0GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
Received: from aposti.net (aposti.net. [89.234.176.197])
        by gmr-mx.google.com with ESMTPS id 3si1068842wrl.5.2021.09.14.09.18.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:18:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) client-ip=89.234.176.197;
Date: Tue, 14 Sep 2021 17:18:17 +0100
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v2] MIPS: Avoid macro redefinitions
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Huacai Chen
	<chenhuacai@kernel.org>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Tiezhu Yang
	<yangtiezhu@loongson.cn>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, list@opendingux.net,
	clang-built-linux@googlegroups.com
Message-Id: <HMMFZQ.4BHOG14DQZPA3@crapouillou.net>
In-Reply-To: <CAKwvOdknN5O2gDUXwLwQDhxJc15foagrfW=+u+6vtxKVHmwDOQ@mail.gmail.com>
References: <20210913213415.527306-1-paul@crapouillou.net>
	<CAKwvOdknN5O2gDUXwLwQDhxJc15foagrfW=+u+6vtxKVHmwDOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: paul@crapouillou.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as
 permitted sender) smtp.mailfrom=paul@crapouillou.net;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
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

Le mar., sept. 14 2021 at 08:56:59 -0700, Nick Desaulniers=20
<ndesaulniers@google.com> a =C3=A9crit :
>  On Mon, Sep 13, 2021 at 2:34 PM Paul Cercueil <paul@crapouillou.net>=20
> wrote:
>>=20
>>  To be able to compile the kernel with LTO, the assembler macros=20
>> cannot
>>  be declared in the global scope, or the compiler will complain about
>>  redefined macros.
>>=20
>>  Update the code so that macros are defined then undefined when they=20
>> are
>>  used.
>>=20
>>  Note that virt support was added in 2.24 and xpa in 2.25. So we=20
>> still
>>  need the TOOLCHAIN defines for them.
>>=20
>>  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
>>  ---
>>=20
>>  Notes:
>>      v2: Removed commented undef line
>=20
> Hi Paul, thanks for the v2. I think the point of the #undef was that
> the _IFC_REG doesn't make sense outside of this header, so they
> probably did not want to pollute the namespace for preprocessor
> defines.  As such, I think it should actually stay, not be removed (or
> commented out).

I can test it again later, but IIRC the #undef must be removed. Since=20
we use the new _ASM_SET_PARSE_R macro, which uses _IFC_REG, if we=20
#undef it early then it won't compile.

Cheers,
-Paul

>>=20
>>   arch/mips/include/asm/ginvt.h                 |  11 +-
>>   .../asm/mach-loongson64/loongson_regs.h       |  12 ++
>>   arch/mips/include/asm/mipsregs.h              | 190=20
>> +++++++++++-------
>>   arch/mips/include/asm/msa.h                   |  34 +++-
>>   4 files changed, 155 insertions(+), 92 deletions(-)
>>=20
>>  diff --git a/arch/mips/include/asm/ginvt.h=20
>> b/arch/mips/include/asm/ginvt.h
>>  index 6eb7c2b94dc7..87b2974ffc53 100644
>>  --- a/arch/mips/include/asm/ginvt.h
>>  +++ b/arch/mips/include/asm/ginvt.h
>>  @@ -12,11 +12,13 @@ enum ginvt_type {
>>=20
>>   #ifdef TOOLCHAIN_SUPPORTS_GINV
>>   # define _ASM_SET_GINV ".set   ginv\n"
>>  +# define _ASM_UNSET_GINV
>>   #else
>>  -_ASM_MACRO_1R1I(ginvt, rs, type,
>>  -               _ASM_INSN_IF_MIPS(0x7c0000bd | (__rs << 21) |=20
>> (\\type << 8))
>>  -               _ASM_INSN32_IF_MM(0x0000717c | (__rs << 16) |=20
>> (\\type << 9)));
>>  -# define _ASM_SET_GINV
>>  +# define _ASM_SET_GINV                                            =20
>>     \
>>  +       _ASM_MACRO_1R1I(ginvt, rs, type,                           =20
>>     \
>>  +                       _ASM_INSN_IF_MIPS(0x7c0000bd | (__rs << 21)=20
>> | (\\type << 8))    \
>>  +                       _ASM_INSN32_IF_MM(0x0000717c | (__rs << 16)=20
>> | (\\type << 9)))
>>  +# define _ASM_UNSET_GINV ".purgem ginvt\n"
>>   #endif
>>=20
>>   static __always_inline void ginvt(unsigned long addr, enum=20
>> ginvt_type type)
>>  @@ -25,6 +27,7 @@ static __always_inline void ginvt(unsigned long=20
>> addr, enum ginvt_type type)
>>                  ".set   push\n"
>>                  _ASM_SET_GINV
>>                  "       ginvt   %0, %1\n"
>>  +               _ASM_UNSET_GINV
>>                  ".set   pop"
>>                  : /* no outputs */
>>                  : "r"(addr), "i"(type)
>>  diff --git a/arch/mips/include/asm/mach-loongson64/loongson_regs.h=20
>> b/arch/mips/include/asm/mach-loongson64/loongson_regs.h
>>  index 165993514762..b5be7511f6cd 100644
>>  --- a/arch/mips/include/asm/mach-loongson64/loongson_regs.h
>>  +++ b/arch/mips/include/asm/mach-loongson64/loongson_regs.h
>>  @@ -21,8 +21,10 @@ static inline u32 read_cpucfg(u32 reg)
>>          u32 __res;
>>=20
>>          __asm__ __volatile__(
>>  +               _ASM_SET_PARSE_R
>>                  "parse_r __res,%0\n\t"
>>                  "parse_r reg,%1\n\t"
>>  +               _ASM_UNSET_PARSE_R
>>                  ".insn \n\t"
>>                  ".word (0xc8080118 | (reg << 21) | (__res <<=20
>> 11))\n\t"
>>                  :"=3Dr"(__res)
>>  @@ -143,8 +145,10 @@ static inline u32 csr_readl(u32 reg)
>>=20
>>          /* RDCSR reg, val */
>>          __asm__ __volatile__(
>>  +               _ASM_SET_PARSE_R
>>                  "parse_r __res,%0\n\t"
>>                  "parse_r reg,%1\n\t"
>>  +               _ASM_UNSET_PARSE_R
>>                  ".insn \n\t"
>>                  ".word (0xc8000118 | (reg << 21) | (__res <<=20
>> 11))\n\t"
>>                  :"=3Dr"(__res)
>>  @@ -160,8 +164,10 @@ static inline u64 csr_readq(u32 reg)
>>=20
>>          /* DRDCSR reg, val */
>>          __asm__ __volatile__(
>>  +               _ASM_SET_PARSE_R
>>                  "parse_r __res,%0\n\t"
>>                  "parse_r reg,%1\n\t"
>>  +               _ASM_UNSET_PARSE_R
>>                  ".insn \n\t"
>>                  ".word (0xc8020118 | (reg << 21) | (__res <<=20
>> 11))\n\t"
>>                  :"=3Dr"(__res)
>>  @@ -175,8 +181,10 @@ static inline void csr_writel(u32 val, u32 reg)
>>   {
>>          /* WRCSR reg, val */
>>          __asm__ __volatile__(
>>  +               _ASM_SET_PARSE_R
>>                  "parse_r reg,%0\n\t"
>>                  "parse_r val,%1\n\t"
>>  +               _ASM_UNSET_PARSE_R
>>                  ".insn \n\t"
>>                  ".word (0xc8010118 | (reg << 21) | (val << 11))\n\t"
>>                  :
>>  @@ -189,8 +197,10 @@ static inline void csr_writeq(u64 val, u32 reg)
>>   {
>>          /* DWRCSR reg, val */
>>          __asm__ __volatile__(
>>  +               _ASM_SET_PARSE_R
>>                  "parse_r reg,%0\n\t"
>>                  "parse_r val,%1\n\t"
>>  +               _ASM_UNSET_PARSE_R
>>                  ".insn \n\t"
>>                  ".word (0xc8030118 | (reg << 21) | (val << 11))\n\t"
>>                  :
>>  @@ -243,8 +253,10 @@ static inline u64 drdtime(void)
>>          u64 val =3D 0;
>>=20
>>          __asm__ __volatile__(
>>  +               _ASM_SET_PARSE_R
>>                  "parse_r rID,%0\n\t"
>>                  "parse_r val,%1\n\t"
>>  +               _ASM_UNSET_PARSE_R
>>                  ".insn \n\t"
>>                  ".word (0xc8090118 | (rID << 21) | (val << 11))\n\t"
>>                  :"=3Dr"(rID),"=3Dr"(val)
>>  diff --git a/arch/mips/include/asm/mipsregs.h=20
>> b/arch/mips/include/asm/mipsregs.h
>>  index acdf8c69220b..2616353b940c 100644
>>  --- a/arch/mips/include/asm/mipsregs.h
>>  +++ b/arch/mips/include/asm/mipsregs.h
>>  @@ -1297,22 +1297,22 @@ static inline int mm_insn_16bit(u16 insn)
>>          "\\var  =3D " #n "\n\t"                   \
>>          ".endif\n\t"
>>=20
>>  -__asm__(".macro        parse_r var r\n\t"
>>  -       "\\var  =3D -1\n\t"
>>  -       _IFC_REG(0)  _IFC_REG(1)  _IFC_REG(2)  _IFC_REG(3)
>>  -       _IFC_REG(4)  _IFC_REG(5)  _IFC_REG(6)  _IFC_REG(7)
>>  -       _IFC_REG(8)  _IFC_REG(9)  _IFC_REG(10) _IFC_REG(11)
>>  -       _IFC_REG(12) _IFC_REG(13) _IFC_REG(14) _IFC_REG(15)
>>  -       _IFC_REG(16) _IFC_REG(17) _IFC_REG(18) _IFC_REG(19)
>>  -       _IFC_REG(20) _IFC_REG(21) _IFC_REG(22) _IFC_REG(23)
>>  -       _IFC_REG(24) _IFC_REG(25) _IFC_REG(26) _IFC_REG(27)
>>  -       _IFC_REG(28) _IFC_REG(29) _IFC_REG(30) _IFC_REG(31)
>>  -       ".iflt  \\var\n\t"
>>  -       ".error \"Unable to parse register name \\r\"\n\t"
>>  -       ".endif\n\t"
>>  -       ".endm");
>>  -
>>  -#undef _IFC_REG
>=20
> ^ ie. I don't think we want to remove this undef.
>=20
>>  +#define _ASM_SET_PARSE_R                                          =20
>>     \
>>  +       ".macro parse_r var r\n\t"                                 =20
>>     \
>>  +       "\\var  =3D -1\n\t"                                          =
=20
>>     \
>>  +       _IFC_REG(0)  _IFC_REG(1)  _IFC_REG(2)  _IFC_REG(3)         =20
>>     \
>>  +       _IFC_REG(4)  _IFC_REG(5)  _IFC_REG(6)  _IFC_REG(7)         =20
>>     \
>>  +       _IFC_REG(8)  _IFC_REG(9)  _IFC_REG(10) _IFC_REG(11)        =20
>>     \
>>  +       _IFC_REG(12) _IFC_REG(13) _IFC_REG(14) _IFC_REG(15)        =20
>>     \
>>  +       _IFC_REG(16) _IFC_REG(17) _IFC_REG(18) _IFC_REG(19)        =20
>>     \
>>  +       _IFC_REG(20) _IFC_REG(21) _IFC_REG(22) _IFC_REG(23)        =20
>>     \
>>  +       _IFC_REG(24) _IFC_REG(25) _IFC_REG(26) _IFC_REG(27)        =20
>>     \
>>  +       _IFC_REG(28) _IFC_REG(29) _IFC_REG(30) _IFC_REG(31)        =20
>>     \
>>  +       ".iflt  \\var\n\t"                                         =20
>>     \
>>  +       ".error \"Unable to parse register name \\r\"\n\t"         =20
>>     \
>>  +       ".endif\n\t"                                               =20
>>     \
>>  +       ".endm\n\t"
>>  +#define _ASM_UNSET_PARSE_R ".purgem parse_r\n\t"
>>=20
>>   /*
>>    * C macros for generating assembler macros for common instruction=20
>> formats.
>>  @@ -1322,43 +1322,45 @@ __asm__(".macro parse_r var r\n\t"
>>    * the ENC encodings.
>>    */
>>=20
>>  -/* Instructions with no operands */
>>  -#define _ASM_MACRO_0(OP, ENC)                                     =20
>>     \
>>  -       __asm__(".macro " #OP "\n\t"                               =20
>>     \
>>  -               ENC                                                =20
>>     \
>>  -               ".endm")
>>  -
>>   /* Instructions with 1 register operand & 1 immediate operand */
>>   #define _ASM_MACRO_1R1I(OP, R1, I2, ENC)                          =20
>>     \
>>  -       __asm__(".macro " #OP " " #R1 ", " #I2 "\n\t"              =20
>>     \
>>  +               ".macro " #OP " " #R1 ", " #I2 "\n\t"              =20
>>     \
>>  +               _ASM_SET_PARSE_R                                   =20
>>     \
>>                  "parse_r __" #R1 ", \\" #R1 "\n\t"                 =20
>>     \
>>                  ENC                                                =20
>>     \
>>  -               ".endm")
>>  +               _ASM_UNSET_PARSE_R                                 =20
>>     \
>>  +               ".endm\n\t"
>>=20
>>   /* Instructions with 2 register operands */
>>   #define _ASM_MACRO_2R(OP, R1, R2, ENC)                            =20
>>     \
>>  -       __asm__(".macro " #OP " " #R1 ", " #R2 "\n\t"              =20
>>     \
>>  +               ".macro " #OP " " #R1 ", " #R2 "\n\t"              =20
>>     \
>>  +               _ASM_SET_PARSE_R                                   =20
>>     \
>>                  "parse_r __" #R1 ", \\" #R1 "\n\t"                 =20
>>     \
>>                  "parse_r __" #R2 ", \\" #R2 "\n\t"                 =20
>>     \
>>                  ENC                                                =20
>>     \
>>  -               ".endm")
>>  +               _ASM_UNSET_PARSE_R                                 =20
>>     \
>>  +               ".endm\n\t"
>>=20
>>   /* Instructions with 3 register operands */
>>   #define _ASM_MACRO_3R(OP, R1, R2, R3, ENC)                        =20
>>     \
>>  -       __asm__(".macro " #OP " " #R1 ", " #R2 ", " #R3 "\n\t"     =20
>>     \
>>  +               ".macro " #OP " " #R1 ", " #R2 ", " #R3 "\n\t"     =20
>>     \
>>  +               _ASM_SET_PARSE_R                                   =20
>>     \
>>                  "parse_r __" #R1 ", \\" #R1 "\n\t"                 =20
>>     \
>>                  "parse_r __" #R2 ", \\" #R2 "\n\t"                 =20
>>     \
>>                  "parse_r __" #R3 ", \\" #R3 "\n\t"                 =20
>>     \
>>                  ENC                                                =20
>>     \
>>  -               ".endm")
>>  +               _ASM_UNSET_PARSE_R                                 =20
>>     \
>>  +               ".endm\n\t"
>>=20
>>   /* Instructions with 2 register operands and 1 optional select=20
>> operand */
>>   #define _ASM_MACRO_2R_1S(OP, R1, R2, SEL3, ENC)                   =20
>>             \
>>  -       __asm__(".macro " #OP " " #R1 ", " #R2 ", " #SEL3 " =3D=20
>> 0\n\t"    \
>>  +               ".macro " #OP " " #R1 ", " #R2 ", " #SEL3 " =3D=20
>> 0\n\t"    \
>>  +               _ASM_SET_PARSE_R                                   =20
>>     \
>>                  "parse_r __" #R1 ", \\" #R1 "\n\t"                 =20
>>     \
>>                  "parse_r __" #R2 ", \\" #R2 "\n\t"                 =20
>>     \
>>                  ENC                                                =20
>>     \
>>  -               ".endm")
>>  +               _ASM_UNSET_PARSE_R                                 =20
>>     \
>>  +               ".endm\n\t"
>>=20
>>   /*
>>    * TLB Invalidate Flush
>>  @@ -1618,15 +1620,21 @@ do {                                       =20
>>                             \
>>   } while (0)
>>=20
>>   #ifndef TOOLCHAIN_SUPPORTS_XPA
>>  -_ASM_MACRO_2R_1S(mfhc0, rt, rs, sel,
>>  -       _ASM_INSN_IF_MIPS(0x40400000 | __rt << 16 | __rs << 11 |=20
>> \\sel)
>>  -       _ASM_INSN32_IF_MM(0x000000f4 | __rt << 21 | __rs << 16 |=20
>> \\sel << 11));
>>  -_ASM_MACRO_2R_1S(mthc0, rt, rd, sel,
>>  -       _ASM_INSN_IF_MIPS(0x40c00000 | __rt << 16 | __rd << 11 |=20
>> \\sel)
>>  -       _ASM_INSN32_IF_MM(0x000002f4 | __rt << 21 | __rd << 16 |=20
>> \\sel << 11));
>>  -#define _ASM_SET_XPA ""
>>  +#define _ASM_SET_MFHC0                                            =20
>>     \
>>  +       _ASM_MACRO_2R_1S(mfhc0, rt, rs, sel,                       =20
>>     \
>>  +                        _ASM_INSN_IF_MIPS(0x40400000 | __rt << 16=20
>> | __rs << 11 | \\sel)        \
>>  +                        _ASM_INSN32_IF_MM(0x000000f4 | __rt << 21=20
>> | __rs << 16 | \\sel << 11))
>>  +#define _ASM_UNSET_MFHC0 ".purgem mfhc0\n\t"
>>  +#define _ASM_SET_MTHC0                                            =20
>>     \
>>  +       _ASM_MACRO_2R_1S(mthc0, rt, rd, sel,                       =20
>>     \
>>  +                        _ASM_INSN_IF_MIPS(0x40c00000 | __rt << 16=20
>> | __rd << 11 | \\sel)        \
>>  +                        _ASM_INSN32_IF_MM(0x000002f4 | __rt << 21=20
>> | __rd << 16 | \\sel << 11))
>>  +#define _ASM_UNSET_MTHC0 ".purgem mthc0\n\t"
>>   #else  /* !TOOLCHAIN_SUPPORTS_XPA */
>>  -#define _ASM_SET_XPA ".set\txpa\n\t"
>>  +#define _ASM_SET_MFHC0 ".set\txpa\n\t"
>>  +#define _ASM_SET_MTHC0 ".set\txpa\n\t"
>>  +#define _ASM_UNSET_MFHC0
>>  +#define _ASM_UNSET_MTHC0
>>   #endif
>>=20
>>   #define __readx_32bit_c0_register(source, sel)                    =20
>>     \
>>  @@ -1636,8 +1644,9 @@ _ASM_MACRO_2R_1S(mthc0, rt, rd, sel,
>>          __asm__ __volatile__(                                      =20
>>     \
>>          "       .set    push                                    \n"=20
>>     \
>>          "       .set    mips32r2                                \n"=20
>>     \
>>  -       _ASM_SET_XPA                                               =20
>>     \
>>  +       _ASM_SET_MFHC0                                             =20
>>     \
>>          "       mfhc0   %0, " #source ", %1                     \n"=20
>>     \
>>  +       _ASM_UNSET_MFHC0                                           =20
>>     \
>>          "       .set    pop                                     \n"=20
>>     \
>>          : "=3Dr" (__res)                                             =
=20
>>     \
>>          : "i" (sel));                                              =20
>>     \
>>  @@ -1649,8 +1658,9 @@ do {                                         =20
>>                             \
>>          __asm__ __volatile__(                                      =20
>>     \
>>          "       .set    push                                    \n"=20
>>     \
>>          "       .set    mips32r2                                \n"=20
>>     \
>>  -       _ASM_SET_XPA                                               =20
>>     \
>>  +       _ASM_SET_MTHC0                                             =20
>>     \
>>          "       mthc0   %z0, " #register ", %1                  \n"=20
>>     \
>>  +       _ASM_UNSET_MTHC0                                           =20
>>     \
>>          "       .set    pop                                     \n"=20
>>     \
>>          :                                                          =20
>>     \
>>          : "Jr" (value), "i" (sel));                                =20
>>     \
>>  @@ -2046,31 +2056,58 @@ do {                                       =20
>>                             \
>>    */
>>=20
>>   #ifndef TOOLCHAIN_SUPPORTS_VIRT
>>  -_ASM_MACRO_2R_1S(mfgc0, rt, rs, sel,
>>  -       _ASM_INSN_IF_MIPS(0x40600000 | __rt << 16 | __rs << 11 |=20
>> \\sel)
>>  -       _ASM_INSN32_IF_MM(0x000004fc | __rt << 21 | __rs << 16 |=20
>> \\sel << 11));
>>  -_ASM_MACRO_2R_1S(dmfgc0, rt, rs, sel,
>>  -       _ASM_INSN_IF_MIPS(0x40600100 | __rt << 16 | __rs << 11 |=20
>> \\sel)
>>  -       _ASM_INSN32_IF_MM(0x580004fc | __rt << 21 | __rs << 16 |=20
>> \\sel << 11));
>>  -_ASM_MACRO_2R_1S(mtgc0, rt, rd, sel,
>>  -       _ASM_INSN_IF_MIPS(0x40600200 | __rt << 16 | __rd << 11 |=20
>> \\sel)
>>  -       _ASM_INSN32_IF_MM(0x000006fc | __rt << 21 | __rd << 16 |=20
>> \\sel << 11));
>>  -_ASM_MACRO_2R_1S(dmtgc0, rt, rd, sel,
>>  -       _ASM_INSN_IF_MIPS(0x40600300 | __rt << 16 | __rd << 11 |=20
>> \\sel)
>>  -       _ASM_INSN32_IF_MM(0x580006fc | __rt << 21 | __rd << 16 |=20
>> \\sel << 11));
>>  -_ASM_MACRO_0(tlbgp,    _ASM_INSN_IF_MIPS(0x42000010)
>>  -                      _ASM_INSN32_IF_MM(0x0000017c));
>>  -_ASM_MACRO_0(tlbgr,    _ASM_INSN_IF_MIPS(0x42000009)
>>  -                      _ASM_INSN32_IF_MM(0x0000117c));
>>  -_ASM_MACRO_0(tlbgwi,   _ASM_INSN_IF_MIPS(0x4200000a)
>>  -                      _ASM_INSN32_IF_MM(0x0000217c));
>>  -_ASM_MACRO_0(tlbgwr,   _ASM_INSN_IF_MIPS(0x4200000e)
>>  -                      _ASM_INSN32_IF_MM(0x0000317c));
>>  -_ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
>>  -                      _ASM_INSN32_IF_MM(0x0000517c));
>>  -#define _ASM_SET_VIRT ""
>>  +#define _ASM_SET_MFGC0                                            =20
>>     \
>>  +       _ASM_MACRO_2R_1S(mfgc0, rt, rs, sel,                       =20
>>     \
>>  +                        _ASM_INSN_IF_MIPS(0x40600000 | __rt << 16=20
>> | __rs << 11 | \\sel)        \
>>  +                        _ASM_INSN32_IF_MM(0x000004fc | __rt << 21=20
>> | __rs << 16 | \\sel << 11))
>>  +#define _ASM_UNSET_MFGC0 ".purgem mfgc0\n\t"
>>  +#define _ASM_SET_DMFGC0                                           =20
>>             \
>>  +       _ASM_MACRO_2R_1S(dmfgc0, rt, rs, sel,                      =20
>>     \
>>  +                        _ASM_INSN_IF_MIPS(0x40600100 | __rt << 16=20
>> | __rs << 11 | \\sel)        \
>>  +                        _ASM_INSN32_IF_MM(0x580004fc | __rt << 21=20
>> | __rs << 16 | \\sel << 11))
>>  +#define _ASM_UNSET_DMFGC0 ".purgem dmfgc0\n\t"
>>  +#define _ASM_SET_MTGC0                                            =20
>>     \
>>  +       _ASM_MACRO_2R_1S(mtgc0, rt, rd, sel,                       =20
>>     \
>>  +                        _ASM_INSN_IF_MIPS(0x40600200 | __rt << 16=20
>> | __rd << 11 | \\sel)        \
>>  +                        _ASM_INSN32_IF_MM(0x000006fc | __rt << 21=20
>> | __rd << 16 | \\sel << 11))
>>  +#define _ASM_UNSET_MTGC0 ".purgem mtgc0\n\t"
>>  +#define _ASM_SET_DMTGC0                                           =20
>>             \
>>  +       _ASM_MACRO_2R_1S(dmtgc0, rt, rd, sel,                      =20
>>     \
>>  +                        _ASM_INSN_IF_MIPS(0x40600300 | __rt << 16=20
>> | __rd << 11 | \\sel)        \
>>  +                        _ASM_INSN32_IF_MM(0x580006fc | __rt << 21=20
>> | __rd << 16 | \\sel << 11))
>>  +#define _ASM_UNSET_DMTGC0 ".purgem dmtgc0\n\t"
>>  +
>>  +#define __tlbgp()                                                 =20
>>     \
>>  +               _ASM_INSN_IF_MIPS(0x42000010)                      =20
>>     \
>>  +               _ASM_INSN32_IF_MM(0x0000017c)
>>  +#define __tlbgr()                                                 =20
>>     \
>>  +               _ASM_INSN_IF_MIPS(0x42000009)                      =20
>>     \
>>  +               _ASM_INSN32_IF_MM(0x0000117c)
>>  +#define __tlbgwi()                                                =20
>>     \
>>  +               _ASM_INSN_IF_MIPS(0x4200000a)                      =20
>>     \
>>  +               _ASM_INSN32_IF_MM(0x0000217c)
>>  +#define __tlbgwr()                                                =20
>>     \
>>  +               _ASM_INSN_IF_MIPS(0x4200000e)                      =20
>>     \
>>  +               _ASM_INSN32_IF_MM(0x0000317c)
>>  +#define __tlbginvf()                                              =20
>>     \
>>  +               _ASM_INSN_IF_MIPS(0x4200000c)                      =20
>>     \
>>  +               _ASM_INSN32_IF_MM(0x0000517c)
>>   #else  /* !TOOLCHAIN_SUPPORTS_VIRT */
>>   #define _ASM_SET_VIRT ".set\tvirt\n\t"
>>  +#define _ASM_SET_MFGC0 _ASM_SET_VIRT
>>  +#define _ASM_SET_DMFGC0        _ASM_SET_VIRT
>>  +#define _ASM_SET_MTGC0 _ASM_SET_VIRT
>>  +#define _ASM_SET_DMTGC0        _ASM_SET_VIRT
>>  +#define _ASM_UNSET_MFGC0
>>  +#define _ASM_UNSET_DMFGC0
>>  +#define _ASM_UNSET_MTGC0
>>  +#define _ASM_UNSET_DMTGC0
>>  +
>>  +#define __tlbgp()      _ASM_SET_VIRT "tlbgp\n\t"
>>  +#define __tlbgr()      _ASM_SET_VIRT "tlbgr\n\t"
>>  +#define __tlbgwi()     _ASM_SET_VIRT "tlbgwi\n\t"
>>  +#define __tlbgwr()     _ASM_SET_VIRT "tlbgwr\n\t"
>>  +#define __tlbginvf()   _ASM_SET_VIRT "tlbginvf\n\t"
>>   #endif
>>=20
>>   #define __read_32bit_gc0_register(source, sel)                    =20
>>     \
>>  @@ -2078,8 +2115,9 @@ _ASM_MACRO_0(tlbginvf,=20
>> _ASM_INSN_IF_MIPS(0x4200000c)
>>          __asm__ __volatile__(                                      =20
>>     \
>>                  ".set\tpush\n\t"                                   =20
>>     \
>>                  ".set\tmips32r5\n\t"                               =20
>>     \
>>  -               _ASM_SET_VIRT                                      =20
>>     \
>>  +               _ASM_SET_MFGC0                                     =20
>>     \
>>                  "mfgc0\t%0, " #source ", %1\n\t"                   =20
>>     \
>>  +               _ASM_UNSET_MFGC0                                   =20
>>     \
>>                  ".set\tpop"                                        =20
>>     \
>>                  : "=3Dr" (__res)                                     =
=20
>>     \
>>                  : "i" (sel));                                      =20
>>     \
>>  @@ -2091,8 +2129,9 @@ _ASM_MACRO_0(tlbginvf,=20
>> _ASM_INSN_IF_MIPS(0x4200000c)
>>          __asm__ __volatile__(                                      =20
>>     \
>>                  ".set\tpush\n\t"                                   =20
>>     \
>>                  ".set\tmips64r5\n\t"                               =20
>>     \
>>  -               _ASM_SET_VIRT                                      =20
>>     \
>>  +               _ASM_SET_DMFGC0                                    =20
>>     \
>>                  "dmfgc0\t%0, " #source ", %1\n\t"                  =20
>>     \
>>  +               _ASM_UNSET_DMFGC0                                  =20
>>     \
>>                  ".set\tpop"                                        =20
>>     \
>>                  : "=3Dr" (__res)                                     =
=20
>>     \
>>                  : "i" (sel));                                      =20
>>     \
>>  @@ -2104,8 +2143,9 @@ do {                                         =20
>>                             \
>>          __asm__ __volatile__(                                      =20
>>     \
>>                  ".set\tpush\n\t"                                   =20
>>     \
>>                  ".set\tmips32r5\n\t"                               =20
>>     \
>>  -               _ASM_SET_VIRT                                      =20
>>     \
>>  +               _ASM_SET_MTGC0                                     =20
>>     \
>>                  "mtgc0\t%z0, " #register ", %1\n\t"                =20
>>     \
>>  +               _ASM_UNSET_MTGC0                                   =20
>>     \
>>                  ".set\tpop"                                        =20
>>     \
>>                  : : "Jr" ((unsigned int)(value)),                  =20
>>     \
>>                      "i" (sel));                                    =20
>>     \
>>  @@ -2116,8 +2156,9 @@ do {                                         =20
>>                             \
>>          __asm__ __volatile__(                                      =20
>>     \
>>                  ".set\tpush\n\t"                                   =20
>>     \
>>                  ".set\tmips64r5\n\t"                               =20
>>     \
>>  -               _ASM_SET_VIRT                                      =20
>>     \
>>  +               _ASM_SET_DMTGC0                                    =20
>>     \
>>                  "dmtgc0\t%z0, " #register ", %1\n\t"               =20
>>     \
>>  +               _ASM_UNSET_DMTGC0                                  =20
>>     \
>>                  ".set\tpop"                                        =20
>>     \
>>                  : : "Jr" (value),                                  =20
>>     \
>>                      "i" (sel));                                    =20
>>     \
>>  @@ -2788,8 +2829,7 @@ static inline void guest_tlb_probe(void)
>>          __asm__ __volatile__(
>>                  ".set push\n\t"
>>                  ".set noreorder\n\t"
>>  -               _ASM_SET_VIRT
>>  -               "tlbgp\n\t"
>>  +               __tlbgp()
>>                  ".set pop");
>>   }
>>=20
>>  @@ -2798,8 +2838,7 @@ static inline void guest_tlb_read(void)
>>          __asm__ __volatile__(
>>                  ".set push\n\t"
>>                  ".set noreorder\n\t"
>>  -               _ASM_SET_VIRT
>>  -               "tlbgr\n\t"
>>  +               __tlbgr()
>>                  ".set pop");
>>   }
>>=20
>>  @@ -2808,8 +2847,7 @@ static inline void=20
>> guest_tlb_write_indexed(void)
>>          __asm__ __volatile__(
>>                  ".set push\n\t"
>>                  ".set noreorder\n\t"
>>  -               _ASM_SET_VIRT
>>  -               "tlbgwi\n\t"
>>  +               __tlbgwi()
>>                  ".set pop");
>>   }
>>=20
>>  @@ -2818,8 +2856,7 @@ static inline void=20
>> guest_tlb_write_random(void)
>>          __asm__ __volatile__(
>>                  ".set push\n\t"
>>                  ".set noreorder\n\t"
>>  -               _ASM_SET_VIRT
>>  -               "tlbgwr\n\t"
>>  +               __tlbgwr()
>>                  ".set pop");
>>   }
>>=20
>>  @@ -2831,8 +2868,7 @@ static inline void guest_tlbinvf(void)
>>          __asm__ __volatile__(
>>                  ".set push\n\t"
>>                  ".set noreorder\n\t"
>>  -               _ASM_SET_VIRT
>>  -               "tlbginvf\n\t"
>>  +               __tlbginvf()
>>                  ".set pop");
>>   }
>>=20
>>  diff --git a/arch/mips/include/asm/msa.h=20
>> b/arch/mips/include/asm/msa.h
>>  index e0a3dd52334d..236a49ee2e3e 100644
>>  --- a/arch/mips/include/asm/msa.h
>>  +++ b/arch/mips/include/asm/msa.h
>>  @@ -162,16 +162,26 @@ static inline void init_msa_upper(void)
>>    * to allow compilation with toolchains that do not support MSA.=20
>> Once all
>>    * toolchains in use support MSA these can be removed.
>>    */
>>  -_ASM_MACRO_2R(cfcmsa, rd, cs,
>>  -       _ASM_INSN_IF_MIPS(0x787e0019 | __cs << 11 | __rd << 6)
>>  -       _ASM_INSN32_IF_MM(0x587e0016 | __cs << 11 | __rd << 6));
>>  -_ASM_MACRO_2R(ctcmsa, cd, rs,
>>  -       _ASM_INSN_IF_MIPS(0x783e0019 | __rs << 11 | __cd << 6)
>>  -       _ASM_INSN32_IF_MM(0x583e0016 | __rs << 11 | __cd << 6));
>>  -#define _ASM_SET_MSA ""
>>  +
>>  +#define _ASM_SET_CFCMSA                                           =20
>>             \
>>  +       _ASM_MACRO_2R(cfcmsa, rd, cs,                              =20
>>     \
>>  +                     _ASM_INSN_IF_MIPS(0x787e0019 | __cs << 11 |=20
>> __rd << 6)    \
>>  +                     _ASM_INSN32_IF_MM(0x587e0016 | __cs << 11 |=20
>> __rd << 6))
>>  +#define _ASM_UNSET_CFCMSA ".purgem cfcmsa\n\t"
>>  +#define _ASM_SET_CTCMSA                                           =20
>>             \
>>  +       _ASM_MACRO_2R(ctcmsa, cd, rs,                              =20
>>     \
>>  +                     _ASM_INSN_IF_MIPS(0x783e0019 | __rs << 11 |=20
>> __cd << 6)    \
>>  +                     _ASM_INSN32_IF_MM(0x583e0016 | __rs << 11 |=20
>> __cd << 6))
>>  +#define _ASM_UNSET_CTCMSA ".purgem ctcmsa\n\t"
>>   #else /* TOOLCHAIN_SUPPORTS_MSA */
>>  -#define _ASM_SET_MSA ".set\tfp=3D64\n\t"                         \
>>  -                    ".set\tmsa\n\t"
>>  +#define _ASM_SET_CFCMSA                                           =20
>>     \
>>  +               ".set\tfp=3D64\n\t"                               \
>>  +               ".set\tmsa\n\t"
>>  +#define _ASM_UNSET_CFCMSA
>>  +#define _ASM_SET_CTCMSA                                           =20
>>     \
>>  +               ".set\tfp=3D64\n\t"                               \
>>  +               ".set\tmsa\n\t"
>>  +#define _ASM_UNSET_CTCMSA
>>   #endif
>>=20
>>   #define __BUILD_MSA_CTL_REG(name, cs)                          \
>>  @@ -180,8 +190,9 @@ static inline unsigned int=20
>> read_msa_##name(void)            \
>>          unsigned int reg;                                       \
>>          __asm__ __volatile__(                                   \
>>          "       .set    push\n"                                 \
>>  -       _ASM_SET_MSA                                            \
>>  +       _ASM_SET_CFCMSA                                         \
>>          "       cfcmsa  %0, $" #cs "\n"                         \
>>  +       _ASM_UNSET_CFCMSA                                       \
>>          "       .set    pop\n"                                  \
>>          : "=3Dr"(reg));                                           \
>>          return reg;                                             \
>>  @@ -191,8 +202,9 @@ static inline void write_msa_##name(unsigned=20
>> int val)               \
>>   {                                                              \
>>          __asm__ __volatile__(                                   \
>>          "       .set    push\n"                                 \
>>  -       _ASM_SET_MSA                                            \
>>  +       _ASM_SET_CTCMSA                                         \
>>          "       ctcmsa  $" #cs ", %0\n"                         \
>>  +       _ASM_UNSET_CTCMSA                                       \
>>          "       .set    pop\n"                                  \
>>          : : "r"(val));                                          \
>>   }
>>  --
>>  2.33.0
>>=20
>=20
>=20
> --
> Thanks,
> ~Nick Desaulniers


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/HMMFZQ.4BHOG14DQZPA3%40crapouillou.net.
