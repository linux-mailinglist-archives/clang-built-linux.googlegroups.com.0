Return-Path: <clang-built-linux+bncBCZOPTGF6YHRBXHS2XZAKGQECZ3DISA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E0816EF54
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 20:45:33 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id x79sf58864lff.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 11:45:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582659932; cv=pass;
        d=google.com; s=arc-20160816;
        b=KB8UHkPVCxrt6OCBqRDwvNYl4kF/LS8YPni3kbWYN0CDFDReHqBF67y6kQ2ieFiDV/
         OpmgD9BYI0m5YwWNL5RZFwT8fIVJcJUqU6ymxTanYNJG5T3bifXB99OgAYMORVp4IdaW
         INUyXeHG1S/79fnXLKBP8McAD7Uc0O4lfDnpuRe1qrViUGAnpI2GLOYeU9MRAJKaTuUo
         ZO5S+yVOdve700mT/uLQAZSNxD7d7l4dxWIv3N9KhHVxkgwujD1+nRSYM0AypkaioK5R
         ABBVZ7rCdgrlWt6urRU/IWz102qtm7EZ9XWk4KPC0N4yw7BfCQSp4ZZgWmS64Ox+wEh1
         0J5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=RJQdqNf3CMllbAC1LqY9NeJVtopnr9SMkBbOwFpVxz4=;
        b=JSTyBIBTfV66Ud2MgzI/SZgyAxyCC4d8Wn1OnzWoBitJIDIpGO6a8+sqtpRlUwceis
         0Aht+U+zwvsvRQsqOyPsTjrPPk5PAkq/KGSNV2aHuNi2XS879vmtxKgmpIp+8e4sE3PX
         nzAYks/U+Z7Vy7VMVSF+M5ukVguY4ojco1zHxIe9ImYWQSfqOw8KR7h9xaGaLuXHfugp
         f4JKFTBTVIAJr/8VliN4+MQgu8ZCAzMkGsAwMnl9BP0qqHjPT1zya5ksLMqRymTehTbc
         Stc/tbRTRSUmegCoMHmJU3bhCdprAzHnVqpEBSVCz43i6Voyc47GUbA6ckWsYylerLNu
         opnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RJQdqNf3CMllbAC1LqY9NeJVtopnr9SMkBbOwFpVxz4=;
        b=ZY0TwzYa9fz50F1hScrJUw+BZUWu8gClw33our3vrTslR0n915wAly+UTqdnCZU3GU
         IMDxvYSdB7qnW97V9sblFmlhI1p2SbvKEXFmpDq0cd304cQYEicqkVX0B76T3Vs8s8UQ
         foAWHGw/1+q+X7suOStJtxiBJAecsocp/9oVq/zQm4uIfcdtzLx1dWx+CVHqO3bxvjiY
         TXo/KJ1aHX/QTD72M9/djgfj0rF2GSTafrvEDoARQd/cYZl2St93a0hprc98xkju2Zs5
         KltJkSeyHrmQDupym3O66uPbbEPNu4qVuBdvOd4gx2r/BdcZNWKsE32r01hsPB2A0Uh/
         /ozg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RJQdqNf3CMllbAC1LqY9NeJVtopnr9SMkBbOwFpVxz4=;
        b=fZ5ZJCDNrhbf91K2x2YNqY5COGifoIwrEm5zuX5d6gRKpojqALG+CCeWw8HE+29YnD
         5mnDZjj+PMv/Fv2ceonAa9OBWkNlf1YSqE7RKZ1nzsEq+/RakWS8Yhrc5oStYvJ4SEIs
         xz5nd0yb6x38O1aj0PyiKxjVpsE4OWNBaQ3c9HVouYhJ7CC2OxnOg5FL6JrOYdqnJNG1
         8rliHz0dcCbp/fTOVJ3b7Hm8I4XJ8ifBG8IKerUmPWQdfiRGRZcs1MKPg1hfaWWveyRE
         jUJoESB0z4Cli6PsOzrA+a80fG2sgd+hCGbgDpFgMmHIJEcKS6R7khQdEwwMA9vOZQhr
         su5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUfmiYLwZayCLenDuZBliB/zRfnKGB6D5Cfhiaumlk8rlPvymc
	FW5XSjYvFDp3vtFzo00k5co=
X-Google-Smtp-Source: APXvYqyu2cX7WMRoQZEjl974o0fT5h42B5CRYoHAH8zCfWqGv0Xr0RHpLpxbiBV/cvOhnQihv/89Xg==
X-Received: by 2002:a2e:9744:: with SMTP id f4mr390560ljj.267.1582659932590;
        Tue, 25 Feb 2020 11:45:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:104a:: with SMTP id c10ls39803lfb.6.gmail; Tue, 25
 Feb 2020 11:45:31 -0800 (PST)
X-Received: by 2002:ac2:52a2:: with SMTP id r2mr235199lfm.33.1582659931833;
        Tue, 25 Feb 2020 11:45:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582659931; cv=none;
        d=google.com; s=arc-20160816;
        b=xa006F65Xhq1NlhreSZ73Ye9oEvTxO8RCr6x6JTOOQPrLgbVVFmPXCPiH0rLf7iQLY
         GAlyUmmyOi5H2YwilkqsMRpc70ktEYV0GvdN6KGYWOb0bbs5TGuvFg5TbVArob/ITEV/
         kUs7DoDQIO0NJ8Tm5Uw6xtPvi9BlkYYNSAICa1mz8cewaaPdlzD6JUPCrZ9REVEd95Ct
         j0v60QmuWtmgMTQAE0PI8QC76wQUnuq3kmaMtP75iQOmvSZjDidgn15iRpC+qlKTcdEN
         1zHyXk3Vj/FEWCiTAHQJ5JI33hNOHnpe72VNZHMB6EQl2YWugclm4i8OgdpRQ25GZC8H
         EQ/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=fTg52wHdPY7uW1HKOf1Xj2//s3wUIhQezj76A9X1P3A=;
        b=1HPsCla8d19KEjyZFslq4QV8uEkXe4opw5eSAt9u9Msgpt3RSL38p/lv544w3EFdee
         /hpV4MGFoEGHH8zHe2HdWQisXEwhu9ys8P0JC8kNfpzP92tj5/WhMmWPCsHxAwzUHR3/
         HHhFimGlvQSlXiAYZwambaWH8WeLc9aLQUSZ1FM8PvjnR8Tt7Zf2BRFn2Wh/v0LQ7mJS
         W1cJIhDaywZZ5rWAu2hX5itMumTvxG/fvJe5FcEsl+90zdsbgf3pBHi5FkPbNCVNej8Q
         evimN3GAEt2stJ6bve47PbqPbdxz/kVANTRqbQSHJfDsfO37NQfYQZ6IMWmbFDvT8dxE
         eEYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e3si44046ljg.2.2020.02.25.11.45.31
        for <clang-built-linux@googlegroups.com>;
        Tue, 25 Feb 2020 11:45:31 -0800 (PST)
Received-SPF: pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 714AE31B;
	Tue, 25 Feb 2020 11:45:30 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A62DC3FA00;
	Tue, 25 Feb 2020 11:45:28 -0800 (PST)
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Jian Cai <jiancai@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
 <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
 <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d7047fca-7efb-94bc-51aa-c33934df0721@arm.com>
Date: Tue, 25 Feb 2020 19:45:14 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: robin.murphy@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=robin.murphy@arm.com
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

On 2020-02-25 7:33 pm, Ard Biesheuvel wrote:
> On Tue, 25 Feb 2020 at 20:10, Nick Desaulniers <ndesaulniers@google.com> =
wrote:
>>
>> On Mon, Feb 24, 2020 at 9:22 PM Stefan Agner <stefan@agner.ch> wrote:
>>>
>>> Clang's integrated assembler does not allow to to use the mcr
>>> instruction to access floating point co-processor registers:
>>> arch/arm/vfp/vfpmodule.c:342:2: error: invalid operand for instruction
>>>          fmxr(FPEXC, fpexc & ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|F=
PEXC_TRAP_MASK));
>>>          ^
>>> arch/arm/vfp/vfpinstr.h:79:6: note: expanded from macro 'fmxr'
>>>          asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vf=
p_ ", %0" \
>>>              ^
>>> <inline asm>:1:6: note: instantiated into assembly here
>>>          mcr p10, 7, r0, cr8, cr0, 0 @ fmxr      FPEXC, r0
>>>              ^
>>>
>>> The GNU assembler supports the .fpu directive at least since 2.17 (when
>>> documentation has been added). Since Linux requires binutils 2.21 it is
>>> safe to use .fpu directive. Use the .fpu directive and mnemonics for VF=
P
>>> register access.
>>>
>>> This allows to build vfpmodule.c with Clang and its integrated assemble=
r.
>>>
>>> Link: https://github.com/ClangBuiltLinux/linux/issues/905
>>> Signed-off-by: Stefan Agner <stefan@agner.ch>
>>> ---
>>>   arch/arm/vfp/vfpinstr.h | 12 ++++--------
>>>   1 file changed, 4 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/arch/arm/vfp/vfpinstr.h b/arch/arm/vfp/vfpinstr.h
>>> index 38dc154e39ff..799ccf065406 100644
>>> --- a/arch/arm/vfp/vfpinstr.h
>>> +++ b/arch/arm/vfp/vfpinstr.h
>>> @@ -62,21 +62,17 @@
>>>   #define FPSCR_C (1 << 29)
>>>   #define FPSCR_V        (1 << 28)
>>>
>>> -/*
>>> - * Since we aren't building with -mfpu=3Dvfp, we need to code
>>> - * these instructions using their MRC/MCR equivalents.
>>> - */
>>> -#define vfpreg(_vfp_) #_vfp_
>>> -
>>>   #define fmrx(_vfp_) ({                 \
>>>          u32 __v;                        \
>>> -       asm("mrc p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmrx   %0, " #=
_vfp_    \
>>> +       asm(".fpu       vfpv2\n"        \
>>> +           "vmrs       %0, " #_vfp_    \
>>>              : "=3Dr" (__v) : : "cc");     \
>>>          __v;                            \
>>>    })
>>>
>>>   #define fmxr(_vfp_,_var_)              \
>>> -       asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vfp=
_ ", %0" \
>>> +       asm(".fpu       vfpv2\n"        \
>>> +           "vmsr       " #_vfp_ ", %0" \
>>>             : : "r" (_var_) : "cc")
>>>
>>>   u32 vfp_single_cpdo(u32 inst, u32 fpscr);
>>> --
>>
>> Hi Stefan,
>> Thanks for the patch.  Reading through:
>> - FMRX, FMXR, and FMSTAT:
>> http://infocenter.arm.com/help/index.jsp?topic=3D/com.arm.doc.dui0068b/B=
cfbdihi.html
>> - VMRS and VMSR:
>> http://infocenter.arm.com/help/index.jsp?topic=3D/com.arm.doc.dui0204h/B=
cfbdihi.html
>>
>> Should a macro called `fmrx` that had a comment about `fmrx` be using
>> `vmrs` in place of `fmrx`?
>>
>> It looks like Clang treats them the same, but GCC keeps them separate:
>> https://godbolt.org/z/YKmSAs
>> Ah, this is only when streaming to assembly. Looks like they have the
>> same encoding, and produce the same disassembly. (Godbolt emits
>> assembly by default, and has the option to compile, then disassemble).
>> If I take my case from godbolt above:
>>
>> =E2=9E=9C  /tmp arm-linux-gnueabihf-gcc -O2 -c x.c
>> =E2=9E=9C  /tmp llvm-objdump -dr x.o
>>
>> x.o: file format elf32-arm-little
>>
>>
>> Disassembly of section .text:
>>
>> 00000000 bar:
>>         0: f1 ee 10 0a                  vmrs r0, fpscr
>>         4: 70 47                        bx lr
>>         6: 00 bf                        nop
>>
>> 00000008 baz:
>>         8: f1 ee 10 0a                  vmrs r0, fpscr
>>         c: 70 47                        bx lr
>>         e: 00 bf                        nop
>>
>> So indeed a similar encoding exists for the two different assembler
>> instructions.
>=20
> Does that hold for ARM (A32) instructions as well?

It should do - they're all the same thing underneath. The UAL syntax=20
just renamed all the legacy VFP mnemonics from Fxxx to Vxxx form, apart=20
from a couple of things that were already deprecated. GAS still accepts=20
both regardless of ".syntax unified", and as a result GCC never saw a=20
reason to stop emitting the old mnemonics.

Robin.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d7047fca-7efb-94bc-51aa-c33934df0721%40arm.com.
