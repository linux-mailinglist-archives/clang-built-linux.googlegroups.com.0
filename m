Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBMPDT2CAMGQECFM6R3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E18A36BF5F
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 08:39:46 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id p16-20020a0564021550b029038522733b66sf16324317edx.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 23:39:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619505586; cv=pass;
        d=google.com; s=arc-20160816;
        b=jw8/Fewms3fyPi0fxcqvy1LDb4sR+uByMMxXdP7TP8kXBgOoIkS0/l7DdaUYH8k3Fj
         N0k0vbd7ftuSfB5KTOD86aLiHf77hhO2flmmr23+b70pp2LciJ3mGYdj/P/uwpjsy7SM
         FYVx4FIHGAteuwEV+ly58/Dd9QieksjWhXQC1XEMV0KdZliPzmwsQnG/nUTjM1GwelPI
         4+U+s16F0XLOwBm5ZgQ6HnoZR9RbgEUoaUGFhG5b28sEIPIyavAeMb4QNlKeusL2nY6N
         FviM454RM8pgum1EoxHevhbHSSudwLNusFpR2Ijp3jlpZ4/W3ApK6M/PyuI/Q1pui/yO
         +IJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=0hb2ZyrZ34IHvU9O/IkYTRGKxwAGs3GNi/z3E8lWIh4=;
        b=B9/2qfWqd7OijsFTtTptFMYvJtRlNglg/6HgffYk1812hYK09H6I7WNllZ7c99EjPe
         JxI+gebN11kiIaT+SVbUWkJSjTOwRYw+FVjT2jzs1olyb9CEz9gE+CadsAt+8zRfA58S
         rRXuo4vN/Ylxrc0YFtMb6wvlyv+7Hs6lepRkzt8vm5yCKFr/uF3llrYtoIL6FA8wjAJn
         lRdbJJhbJdyisR8MU+y7pHQKE3y0x4aCVZce5+FNcHgdQ/LoAYYQ2gcJHPzrSBDK1oSA
         bmJm4uy1px7orff8fhCVZDcF9u4X18nGIWP6+fY26oH+M1XXBA9c9sCnXOzkY+e04+s4
         WzPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0hb2ZyrZ34IHvU9O/IkYTRGKxwAGs3GNi/z3E8lWIh4=;
        b=TxGsziNYptLFdkx+Vp8uxdDDZDg22qNWWrBDycN96rstqxmzLt+t+uGysSWOlQG44T
         vo/B+PGZoMAw3FX26FV4lFmGeAexC9LXOelKGktwtXH3voJpzkFM11jDHC3G5hIjgCwh
         brXZipkP4bb2A80s3kIHizoDzAw3Wk6l7WOUBOqbbQ9vemfx79/06JoxBPNpaBcD6pys
         4bTSZyuBMuE66HePe+B9FbMbFd7EXHwUvBkSCQN8YwlGvdx3GZu4HLNLemkS5Y+9q/IJ
         UxrHBFRGbeTjOY6n48B7DvVHhmrKxlTIlkae36TRCi97hLPMiNqcZ5lvMtzSw9NNUD6r
         7Hbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0hb2ZyrZ34IHvU9O/IkYTRGKxwAGs3GNi/z3E8lWIh4=;
        b=Xy617EXM4AKevyMA5eshztG8Mfho9G39vkVKX8Kv62VAOvdXXhi0SmHZcZg2cg06RW
         1z41RZpGUP9ZXFEsajjfsFX6BtePBJbc2P5+OOP5jsKat/KGvMYt5K/1yyzyhAHVIbLZ
         7xt3VRVlWH5lX55VFq5XDUOiwPFX6XNhiMwDJzpgvzQBfiH/CHF68ymZKDKnscnws0Qr
         lWgCzZphucPtPxQ30RFYU2IUAhPsoph6beqyijT2V3Rq6RioTz2SQC61Hafb75VCBlkW
         SWXvCfZAppH7RT3+6dGG/Q2QsT4OS+FLbz7oaukEV9e8/6T8dS65Rydoy1mklh0DwhUl
         calw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KBEVGnJM+7Ilrn9x+6nyzrDShFR1xqdzbhxxRM4URGkVvxFcx
	S4AvK1bfCYKU48XxkE7yRr8=
X-Google-Smtp-Source: ABdhPJwGwPThDvc6Woi7rkXnU41ChSFp60ak+TO1PO2d8yRpFZyQ4WWd6X6d+K/+m7YsEBaj6WkZ5w==
X-Received: by 2002:aa7:c2d9:: with SMTP id m25mr2621458edp.188.1619505586028;
        Mon, 26 Apr 2021 23:39:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls10519370edb.3.gmail; Mon,
 26 Apr 2021 23:39:45 -0700 (PDT)
X-Received: by 2002:a05:6402:514a:: with SMTP id n10mr2597630edd.25.1619505585152;
        Mon, 26 Apr 2021 23:39:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619505585; cv=none;
        d=google.com; s=arc-20160816;
        b=biOxzV0Y6cu3ILbFk+SRPNite6pJMRWMp7jgnlCpI5ln3jOcSMXVt5oZXKN7S/DY7R
         b+xPYjVzxXNEcCGwuE/3S+bLvoSdYRbCStP2jyx44vjMBVcgxlyKyHsUR9KNSZNZ2jGk
         FvnvNwBqTzx8jzeQVzAm7spfPCMnCQ0orUwbOOltqQfA+GvUTCyxn6uSFLBlqxRbikyv
         w1YjLE8Vs/NMk4j2yXjO59j6i8vG35ujzhppkUKYwgxDnb2Z7Sh5aVzgkywer6ISuKgq
         60alBhNab1RBwkXXPJ8+BIZj7I6FAqyR6I6XmyWLgXZ/8Kne7wGLY0zZa9BJ6hfHCHOJ
         GfLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=AhLR7uqLEfxRFyGaRrAbWfV07w8oGQECZjQfgJ7VG6M=;
        b=sG8/BSON42Hzxhn7+3ULM5/oSYfVFO/Dh7jzbIEEqtlM+fAfCI4rNbY0roKe86j7Gb
         Zdc793ho+DUt2bPCuBeAu/wku0aWkKdDdsVT1AM8qrA3i37wqsa3JeT5qF1A5y+OArgb
         rZMgp1HixkeLdPptUEc967D3/NcgnncLMDsV9lqqxAxalKaL7Hc+3BOUawxkD/8Z++pE
         3ffOD95s1l3JPYTs/0SEk2Tq2Y+8FMsTkGFMQ/lZpu/OdSDBcSf3f+UN6O5/WWJM5Hs8
         0rBqXLL2MvogXxfHhwOj4QNfyGOGpyJWbAS/JL4CfehaHfoRuPtU0n8sMdlEnC0zzRry
         9XhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id d24si1271326edy.0.2021.04.26.23.39.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 23:39:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub3.si.c-s.fr [192.168.12.233])
	by localhost (Postfix) with ESMTP id 4FTsZ85kqlz4nl;
	Tue, 27 Apr 2021 08:39:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WDzfQGNzyGc1; Tue, 27 Apr 2021 08:39:44 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4FTsZ84lNXz4nk;
	Tue, 27 Apr 2021 08:39:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 8B8E48B77F;
	Tue, 27 Apr 2021 08:39:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id GUT3BZWyiBHb; Tue, 27 Apr 2021 08:39:44 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id EC88D8B777;
	Tue, 27 Apr 2021 08:39:43 +0200 (CEST)
Subject: Re: [PATCH v7] powerpc/irq: Inline call_do_irq() and
 call_do_softirq()
To: Nathan Chancellor <nathan@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>
Cc: clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org
References: <20210320122227.345427-1-mpe@ellerman.id.au>
 <YIcLcujmoK6Yet9d@archlinux-ax161>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <de6fc09f-97f5-c934-6393-998ec766b48a@csgroup.eu>
Date: Tue, 27 Apr 2021 08:39:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <YIcLcujmoK6Yet9d@archlinux-ax161>
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



Le 26/04/2021 =C3=A0 20:50, Nathan Chancellor a =C3=A9crit=C2=A0:
> On Sat, Mar 20, 2021 at 11:22:27PM +1100, Michael Ellerman wrote:
>> From: Christophe Leroy <christophe.leroy@csgroup.eu>
>>
>> call_do_irq() and call_do_softirq() are simple enough to be
>> worth inlining.
>>
>> Inlining them avoids an mflr/mtlr pair plus a save/reload on stack. It
>> also allows GCC to keep the saved ksp_limit in an nonvolatile reg.
>>
>> This is inspired from S390 arch. Several other arches do more or
>> less the same. The way sparc arch does seems odd thought.
>>
>> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
>> Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
>>
>=20
> This change caused our ppc44x_defconfig builds to hang when powering
> down in QEMU:
>=20
> https://github.com/ClangBuiltLinux/continuous-integration2/runs/230436462=
9?check_suite_focus=3Dtrue#logs
>=20
> This is probably something with clang given that GCC 10.3.0 works fine
> but due to the nature of the change, I have no idea how to tell what is
> going wrong. I tried to do some rudimentary debugging with gdb but that
> did not really get me anywhere.
>=20
> The kernel was built with just 'CC=3Dclang' and it is reproducible with
> all versions of clang that the kernel supports.
>=20
> The QEMU invocation is visible at the link above, it is done with our
> boot-qemu.sh in this repo, which also houses the rootfs:
>=20
> https://github.com/ClangBuiltLinux/boot-utils
>=20
> Happy to provide any other information or debug/test as directed!
>=20

With GCC:

000003f0 <do_softirq_own_stack>:
  3f0:	94 21 ff f0 	stwu    r1,-16(r1)
  3f4:	7c 08 02 a6 	mflr    r0
  3f8:	3d 20 00 00 	lis     r9,0
			3fa: R_PPC_ADDR16_HA	.data..read_mostly+0x4
  3fc:	93 e1 00 0c 	stw     r31,12(r1)
  400:	90 01 00 14 	stw     r0,20(r1)
  404:	83 e9 00 00 	lwz     r31,0(r9)
			406: R_PPC_ADDR16_LO	.data..read_mostly+0x4
  408:	94 3f 1f f0 	stwu    r1,8176(r31)
  40c:	7f e1 fb 78 	mr      r1,r31
  410:	48 00 00 01 	bl      410 <do_softirq_own_stack+0x20>
			410: R_PPC_REL24	__do_softirq
  414:	80 21 00 00 	lwz     r1,0(r1)
  418:	80 01 00 14 	lwz     r0,20(r1)
  41c:	83 e1 00 0c 	lwz     r31,12(r1)
  420:	38 21 00 10 	addi    r1,r1,16
  424:	7c 08 03 a6 	mtlr    r0
  428:	4e 80 00 20 	blr


With CLANG:

000003e8 <do_softirq_own_stack>:
  3e8:	94 21 ff f0 	stwu    r1,-16(r1)
  3ec:	93 c1 00 08 	stw     r30,8(r1)
  3f0:	3c 60 00 00 	lis     r3,0
			3f2: R_PPC_ADDR16_HA	softirq_ctx
  3f4:	83 c3 00 00 	lwz     r30,0(r3)
			3f6: R_PPC_ADDR16_LO	softirq_ctx
  3f8:	94 3e 1f f0 	stwu    r1,8176(r30)
  3fc:	7f c1 f3 78 	mr      r1,r30
  400:	48 00 00 01 	bl      400 <do_softirq_own_stack+0x18>
			400: R_PPC_REL24	__do_softirq
  404:	80 21 00 00 	lwz     r1,0(r1)
  408:	83 c1 00 08 	lwz     r30,8(r1)
  40c:	38 21 00 10 	addi    r1,r1,16
  410:	4e 80 00 20 	blr


As you can see, CLANG doesn't save/restore 'lr' allthought 'lr' is explicit=
ely listed in the=20
registers clobbered by the inline assembly:

 >> +static __always_inline void call_do_softirq(const void *sp)
 >> +{
 >> +	/* Temporarily switch r1 to sp, call __do_softirq() then restore r1. =
*/
 >> +	asm volatile (
 >> +		 PPC_STLU "	%%r1, %[offset](%[sp])	;"
 >> +		"mr		%%r1, %[sp]		;"
 >> +		"bl		%[callee]		;"
 >> +		 PPC_LL "	%%r1, 0(%%r1)		;"
 >> +		 : // Outputs
 >> +		 : // Inputs
 >> +		   [sp] "b" (sp), [offset] "i" (THREAD_SIZE - STACK_FRAME_OVERHEAD),
 >> +		   [callee] "i" (__do_softirq)
 >> +		 : // Clobbers
 >> +		   "lr", "xer", "ctr", "memory", "cr0", "cr1", "cr5", "cr6",
 >> +		   "cr7", "r0", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10",
 >> +		   "r11", "r12"
 >> +	);

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/de6fc09f-97f5-c934-6393-998ec766b48a%40csgroup.eu.
