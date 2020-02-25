Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBZPZ2XZAKGQEZPTK3EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEB916EF7F
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 21:00:38 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id h24sf302680edw.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 12:00:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582660838; cv=pass;
        d=google.com; s=arc-20160816;
        b=O2czzPRJiNHkwTK/v3QmpSwvYC2A+2Yqvtf7ZMkoqeTiPOwB5Obs3CNPlikVgkuJfO
         RgKf9CbV9qHHj5rwN6sLrx4yvFJOHsicUX83Bj+UkyLxummC0R3IGJrw3voWuT8ZTBXO
         ouPBKUkXKYWhk+U2+8ncoCNdA/M76KXuHf66z7QvZnjt+wJB4eq0YK7g/bCDNbIC+JHC
         Hajkh6zS9SCGaytePtuzJhGisa2gQbjW8IphrGCo0jUIizZ+YtGVv5Dx516icZvAxdkR
         PIMP1+2znw03KTpg/HMDwWzDAwNdRTEWcQOQc3StMHfYyccHA8TDkVQx/LTyjv5GKrM5
         UFbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:content-transfer-encoding
         :mime-version:sender:dkim-signature;
        bh=WqS57GgNO6p0tx8chQC9roZF1tmh6PWdiUPjoY4Sbms=;
        b=aX2iDbsp+s/A6gCjUEFe3seF+UO85s2h/OBD9mC3ZEtuHJJ0+pZJAKMLCZBSbx3Q0K
         NbdCPQXxyt70zN9mYcX3sBwjQm5gNDDYXcRqIO+xXoKLa6QF1FzIvtRoqAyJHwLPp+4C
         T4T3mIfcdFBeH7mxgceqX64DMAFrp9Vwm3VYmwSuRBgLg2Lq61UA6ALarTXfvic649dA
         mN158pslzHksFnMlPD+YPIkfwJ3wrtvBCjG+LAlPUehesHNZ/KBAvpHy/eClFKTwdUQ9
         prrYo2TjxSBhTpgIE1cR5trR0fkgc9HEzEWaXaScrlLhFWIpehB+wWu8Dn5vfpRfIeQJ
         rxUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=fiBYar2G;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:content-transfer-encoding:date:from:to:cc
         :subject:in-reply-to:references:user-agent:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WqS57GgNO6p0tx8chQC9roZF1tmh6PWdiUPjoY4Sbms=;
        b=IxP9mnrSppD7fUS/KINFwEH4BZ8NjUEJwU9WYQycw22EPD/789ab8Awn2ru4olXxqy
         N2tAtJskLDklVVg0H9jV0JdzkZN1AC6fA68y/IPgoiK3IMx5r/TE9yNbkPlmQbflr1qO
         /CoOvsSLOLK6jNNu2qGboOG9/7K3YTGKQFT0n0Vjbyzya/tXNILpbeTZCZkNVHLix6L2
         R4Iijr7jlitiQ+K4LMVN4ijPmuZ5jNEqJs+THtxqzdIhkgJtX8Sy2nCkmQdpdWwZBiCA
         Dv1mKnz6uKNmkYyxXTie6Y5SJaIa+dqewYGOHJajz8/UuHEodDvgpPOBFBvy70QSRd8i
         H8/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:content-transfer-encoding
         :date:from:to:cc:subject:in-reply-to:references:user-agent
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WqS57GgNO6p0tx8chQC9roZF1tmh6PWdiUPjoY4Sbms=;
        b=f/9+hfbVIShJkKuShiI0imOSmXwXYO+iu50tER6t19VtLQN2n9JOK56/dcIzbYt5vB
         owu4DfcDQrWOpoYEVqUT2i+Yfzvg5qrseSKRMqw5s5+o4IuXyDYYPD5+OQSkYZ9PJwef
         uTHXoKapMncMITk7XVkCvqVHoaFwFOqpPZrdCWAqf1L2QSZtBCwGoN5MAvSTvWX8iWBW
         lft0HYQcNjqJ99RMEfA/VWcuz4wB/nvs4vFNsK5EEucv9pQyH9vmSYfiEci7aapUTtav
         krRcjrIXUauFwkhzyEAukaG5vQGbj5HplxnlC2JF8DBC8hF/7prqkLLY8nrsg7x+jx9T
         a9Lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUR0E5/lpXwHyDZ3nC2ETOG3pHLcYJMNOLnAFTiRT+CRzc8UoyP
	9C1aHmchs2BvB1vLFZqX9fI=
X-Google-Smtp-Source: APXvYqyPrdLq5dgyBhcjCDoQr035CFzE93djABV01LfbLD5RtpV5KPbZoJtEEWl1dA1KK+cpcHjJvw==
X-Received: by 2002:a17:906:3ec4:: with SMTP id d4mr736196ejj.173.1582660837587;
        Tue, 25 Feb 2020 12:00:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:584f:: with SMTP id h15ls93410ejs.9.gmail; Tue, 25
 Feb 2020 12:00:37 -0800 (PST)
X-Received: by 2002:a17:906:6942:: with SMTP id c2mr841675ejs.12.1582660837013;
        Tue, 25 Feb 2020 12:00:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582660837; cv=none;
        d=google.com; s=arc-20160816;
        b=fyKJdifnp680XBv0Mj7BLEYuJW1on9HLOeGxRMgkqHqoEbod4dgnkqK2+60VBSiGRH
         SX2/9xKniaYEHYrJOQaT80EfbPk0TUQbLhWfdv3oAv3GDmL/Arx0YOjewRIi+y8mXflg
         UV2FPoC4eC77kr9ixzWJNzhAG9+IGl2qZ4YHNMAiV50cQUlPzuzeycuO2YBXPX3xEGIE
         0BUy50867Ksfeu7hOKuWp49M4boVcdboP5kvNXMOfJRiGKMlatw26YekrExkMfcubOny
         wAVuy6WT0b3K1TMBqk973pa7rqlFZ61xFZeu26qmuTZAJ/lsWXFDIGCJmiQ/5b5cUWut
         kkgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=4pbXjCTmSWvRoORcqT8xdio5aWElTyodfDE1yRwxE88=;
        b=vYn0gONF3hNd5r/aAosYxKa1GR7kVXHDHqmizKDnbkKYXQapIx9lBm+9viXAKs9E/B
         Xw0dvY57I64fJU/XVpd+/EC1LUTZOXT7jfgd30JsfT1vXIFvXS522GzH+RAbQK4j4TSp
         V9RffjISUM3UinSn9/KhQrJ7xFPCLP7I+J6Q3s/XIPipUeDLdEU3AhEiIQtDf0AFdYpK
         bJ25VFZK5aECu3MB0CihLm76ww5/Ut3S3h+rCiITXlrvSf4fCz3doLqaMUNoQXSUYs08
         wJ/tIe2V/t4uRtngKumH9rHQoKweA8jphYghutGzUPZVbyVaXSBQ/SZ4vml0M6Lo6i9v
         +L3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=fiBYar2G;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id n21si17295eja.0.2020.02.25.12.00.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 12:00:32 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 570BF5C3734;
	Tue, 25 Feb 2020 21:00:32 +0100 (CET)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Feb 2020 21:00:32 +0100
From: Stefan Agner <stefan@agner.ch>
To: Robin Murphy <robin.murphy@arm.com>, Nick Desaulniers
 <ndesaulniers@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>, Jian
 Cai <jiancai@google.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Manoj Gupta <manojgupta@google.com>,
 Russell King <linux@armlinux.org.uk>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
In-Reply-To: <d7047fca-7efb-94bc-51aa-c33934df0721@arm.com>
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
 <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
 <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
 <d7047fca-7efb-94bc-51aa-c33934df0721@arm.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <0e4196b528284b07d088dec086f3378a@agner.ch>
X-Sender: stefan@agner.ch
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=fiBYar2G;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

On 2020-02-25 20:45, Robin Murphy wrote:
> On 2020-02-25 7:33 pm, Ard Biesheuvel wrote:
>> On Tue, 25 Feb 2020 at 20:10, Nick Desaulniers <ndesaulniers@google.com>=
 wrote:
>>>
>>> On Mon, Feb 24, 2020 at 9:22 PM Stefan Agner <stefan@agner.ch> wrote:
>>>>
>>>> Clang's integrated assembler does not allow to to use the mcr
>>>> instruction to access floating point co-processor registers:
>>>> arch/arm/vfp/vfpmodule.c:342:2: error: invalid operand for instruction
>>>>          fmxr(FPEXC, fpexc & ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|=
FPEXC_TRAP_MASK));
>>>>          ^
>>>> arch/arm/vfp/vfpinstr.h:79:6: note: expanded from macro 'fmxr'
>>>>          asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_v=
fp_ ", %0" \
>>>>              ^
>>>> <inline asm>:1:6: note: instantiated into assembly here
>>>>          mcr p10, 7, r0, cr8, cr0, 0 @ fmxr      FPEXC, r0
>>>>              ^
>>>>
>>>> The GNU assembler supports the .fpu directive at least since 2.17 (whe=
n
>>>> documentation has been added). Since Linux requires binutils 2.21 it i=
s
>>>> safe to use .fpu directive. Use the .fpu directive and mnemonics for V=
FP
>>>> register access.
>>>>
>>>> This allows to build vfpmodule.c with Clang and its integrated assembl=
er.
>>>>
>>>> Link: https://github.com/ClangBuiltLinux/linux/issues/905
>>>> Signed-off-by: Stefan Agner <stefan@agner.ch>
>>>> ---
>>>>   arch/arm/vfp/vfpinstr.h | 12 ++++--------
>>>>   1 file changed, 4 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/arch/arm/vfp/vfpinstr.h b/arch/arm/vfp/vfpinstr.h
>>>> index 38dc154e39ff..799ccf065406 100644
>>>> --- a/arch/arm/vfp/vfpinstr.h
>>>> +++ b/arch/arm/vfp/vfpinstr.h
>>>> @@ -62,21 +62,17 @@
>>>>   #define FPSCR_C (1 << 29)
>>>>   #define FPSCR_V        (1 << 28)
>>>>
>>>> -/*
>>>> - * Since we aren't building with -mfpu=3Dvfp, we need to code
>>>> - * these instructions using their MRC/MCR equivalents.
>>>> - */
>>>> -#define vfpreg(_vfp_) #_vfp_
>>>> -
>>>>   #define fmrx(_vfp_) ({                 \
>>>>          u32 __v;                        \
>>>> -       asm("mrc p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmrx   %0, " =
#_vfp_    \
>>>> +       asm(".fpu       vfpv2\n"        \
>>>> +           "vmrs       %0, " #_vfp_    \
>>>>              : "=3Dr" (__v) : : "cc");     \
>>>>          __v;                            \
>>>>    })
>>>>
>>>>   #define fmxr(_vfp_,_var_)              \
>>>> -       asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vf=
p_ ", %0" \
>>>> +       asm(".fpu       vfpv2\n"        \
>>>> +           "vmsr       " #_vfp_ ", %0" \
>>>>             : : "r" (_var_) : "cc")
>>>>
>>>>   u32 vfp_single_cpdo(u32 inst, u32 fpscr);
>>>> --
>>>
>>> Hi Stefan,
>>> Thanks for the patch.  Reading through:
>>> - FMRX, FMXR, and FMSTAT:
>>> http://infocenter.arm.com/help/index.jsp?topic=3D/com.arm.doc.dui0068b/=
Bcfbdihi.html
>>> - VMRS and VMSR:
>>> http://infocenter.arm.com/help/index.jsp?topic=3D/com.arm.doc.dui0204h/=
Bcfbdihi.html
>>>
>>> Should a macro called `fmrx` that had a comment about `fmrx` be using
>>> `vmrs` in place of `fmrx`?
>>>
>>> It looks like Clang treats them the same, but GCC keeps them separate:
>>> https://godbolt.org/z/YKmSAs
>>> Ah, this is only when streaming to assembly. Looks like they have the
>>> same encoding, and produce the same disassembly. (Godbolt emits
>>> assembly by default, and has the option to compile, then disassemble).
>>> If I take my case from godbolt above:
>>>
>>> =E2=9E=9C  /tmp arm-linux-gnueabihf-gcc -O2 -c x.c
>>> =E2=9E=9C  /tmp llvm-objdump -dr x.o
>>>
>>> x.o: file format elf32-arm-little
>>>
>>>
>>> Disassembly of section .text:
>>>
>>> 00000000 bar:
>>>         0: f1 ee 10 0a                  vmrs r0, fpscr
>>>         4: 70 47                        bx lr
>>>         6: 00 bf                        nop
>>>
>>> 00000008 baz:
>>>         8: f1 ee 10 0a                  vmrs r0, fpscr
>>>         c: 70 47                        bx lr
>>>         e: 00 bf                        nop
>>>
>>> So indeed a similar encoding exists for the two different assembler
>>> instructions.
>>
>> Does that hold for ARM (A32) instructions as well?
>=20
> It should do - they're all the same thing underneath. The UAL syntax
> just renamed all the legacy VFP mnemonics from Fxxx to Vxxx form,
> apart from a couple of things that were already deprecated. GAS still
> accepts both regardless of ".syntax unified", and as a result GCC
> never saw a reason to stop emitting the old mnemonics.
>=20

Yes this is really only a mnemonic change when unified assembler
language (UAL) got introduce, the ARM ARM has a list of mnemonic changes
in the appendix.

Just do make sure I also did compare the disassembled object file of
vfpmodule.c before and after this change.

I guess we could (should?) also change the macro name, but I guess that
should be a separate commit anyway.

--
Stefan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0e4196b528284b07d088dec086f3378a%40agner.ch.
