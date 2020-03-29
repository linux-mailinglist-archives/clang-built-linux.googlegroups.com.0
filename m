Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBSWFQP2AKGQEAD4NWBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D956196F19
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 20:02:50 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id q4sf6404023lff.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 11:02:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585504970; cv=pass;
        d=google.com; s=arc-20160816;
        b=UauaaQXmY+c7JIxTN6ZV6YqUAPm5BSWAAGYIyMV0mm9SChFAt/qYzRKL9yEbXMkipy
         P4sCEokSBgHpk5LDsxPggXw9esCSPDIguX/V6EjkBw62VdQWTFv4ZteLdzxcmmSzaoAv
         bCAM72BJjtA14lIDKeJaN/krjxT9JFcnzbn5ujVe3D625Y5nTHfe/0gGa41BwvY7YkTu
         7K9i8vAPx8bCGAtup0oMrD9+f6y+MCx2aQYZu91LohRIVOejvtDNUtuOYkvIU0kXOs9U
         lNsJHCsQBiaz4ynQ5Bx4fmS2fda4ZwiOhaK0OQrslJUJ1tBnYGBn3+zMWebtNuy4k/n5
         zPRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=1L59O5CiEA3W4kYR9VoDmJ39svwx04d2RQ36D6g1iEU=;
        b=PTKR0tNB9ndgU1K6PYv6MfV43wW5JZ4zBmynLkQCRCA21vpsce2ovYnEN8cHjel5rN
         jgqwxNmAgrqM32UbQDKyJUBoRUa8ZX+5ptRClJLf9/+qjoMI2KW/zL6MMsjIGh0K2vBV
         ORwWXL0n1XGlcOjfJXmpD6shEZHZ1BUa/lfuWIMrQpbvd3tbg2AhZXNPR+R7tQqCpN5J
         Mo2kW2oGZmyrLloL5xLEF9WojBLPzfksq0thgFspDDqoG3j4SBz/lZXZfxpD0Cp6v/vU
         +rMmVgvv/JBhzmpN/ffRF8zsc1CmMM+3dKShWyDYa3FNSeI5mFiJk3NS9oEzD2Rj28Kk
         4FeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b="C/RqPRCX";
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1L59O5CiEA3W4kYR9VoDmJ39svwx04d2RQ36D6g1iEU=;
        b=f/x7whCfhAqmMHuVMCmFONQHtik/1gT6gHS+Ih9j2CFuUNTp+VJGf07ZJSUDHKbVDq
         cm9zWlrV3x1TUOilXyh4A70TOfQATRjWD3JvT96clt2TzJYFwsHYmMOp+xYPPNK38lUX
         QmxJegGTqCUuHfBhEZZQGEAi4LmAFwdrwI8Y6MzTLHGFOhC4PHx2ppzKEp0eTVdEc26F
         Ja9NphHFVQEEZKSo01p2Lo0g7vUHwC0PeivKIX6sPcSqY9xGRcRHOXqc4hP0ougRlRh2
         xQPp6507Kbc203+Wx4Sp3eHNbzDHql6mZW3z/ryDp6zf5eBKDLTspt5WywcmxHtMt5bP
         Ik0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1L59O5CiEA3W4kYR9VoDmJ39svwx04d2RQ36D6g1iEU=;
        b=SaxUvvjWiLTW1V+ed8YohOk3dmMmaWTYOAhnH9wvq7kwI4xdyTDaMiOXcb9UTp7yg6
         mD0kiEeIB5z/4bCsYUxGCmJHdX+vBtFt5mfBjFRew+0EOl4FVohVyd8n45xAT1QwidVs
         ewvMq7dTtPyQCGaGwVF2hNagI7IiyyVKK2ACDj8sps34ln+hsZij6YSPaHFDQBRNB6RO
         Ivp2ljhPan9XXK7QLQfXG/KUTzPP8TOBMTPadeOGgq/bXqIyU4xCc7kWRt+R6yqAciWO
         aFM0AsrEgyZvWyqGGB9U3mbtlNZyL1ROaDrZg8oazKrMGuX8pwxpJxltfAH1VgkoRSL4
         ogPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubc+ySYDGI4+JR55BzqZVJcDgK8lDogDip9NriUdIE8c4eVPNAr
	v1p36XyPrSMj1S+mmktkUj0=
X-Google-Smtp-Source: APiQypKOj7tYVp8kqohHxWS8wY60+mAHh+GX6jeSYukdXWrA3wgW1b9vSfkw/pjczoBVpmRo2cfJrg==
X-Received: by 2002:ac2:4295:: with SMTP id m21mr2007261lfh.132.1585504970091;
        Sun, 29 Mar 2020 11:02:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:484d:: with SMTP id v74ls2732588lfa.7.gmail; Sun, 29 Mar
 2020 11:02:49 -0700 (PDT)
X-Received: by 2002:a19:ed14:: with SMTP id y20mr5934591lfy.179.1585504969383;
        Sun, 29 Mar 2020 11:02:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585504969; cv=none;
        d=google.com; s=arc-20160816;
        b=EtaQTrMdorlRHrCmErcVbOz12i/eKos5nO0G44FtEekJJ1qJ2eX1rfujmrtltKxAaF
         w9PVYuvftJsIUIHQjnobsOnY7YYo3DAe7bcUI7x9+JqR3WA9321/eH4+N2gvA+Auw6E2
         Y7wVpGLEyA+9jivjnGS2msZQRnStzZE0sbOSWFaSTt6AFd89ixiiYdmSakqg9uzoeyJI
         lQbjWgE0INBlFYn/kQQka4NHCtCfZ/6AAkMpPj9e/VzEoCncJHXeXtDxyFSIOPM7c1gt
         Au389ieoEiMCM5Cn5KLIu86fDSicBOr5VD0g+H2zwKknWm27scJOR5WtVEvaEM79yZJg
         mJ3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=b9KjmaInreQ1tydeO4+d2Tu0zpyS1eiXjbaSxIllgiU=;
        b=pKanSSplgt4GrD9fBwhiGiaS39gVO9//tjq4PP4VnK8wvedZzO7NzkvzgDjbtFYsp5
         UennYiLDhiRLe/IR3JmiY1UnjRW1ADEkAfH7zNgDHH5SPYDOiOwRMQqsUIh87zlqQRAc
         biNKY349ejguWIPvV9Wnsf4d6NtE/+oZ4xO2sWxnI//HNqv6HhMgg9tGDuaMd5WuWMGw
         D9bRfx52D0f27AiQ10nMf15sZEvhHEIVKi2LWSGBZLUbIM1DoeHYi5bCEXK6whVR5CzJ
         wntCxrjlD1YKJUszODqfXZ7sLIYJ++5PR9AOOYd4AC4+agSotinEw7FyLWOLGZaHtQq8
         uwFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b="C/RqPRCX";
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id h8si636841lfm.5.2020.03.29.11.02.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 11:02:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 1322D5C4E62;
	Sun, 29 Mar 2020 20:02:40 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 29 Mar 2020 20:02:40 +0200
From: Stefan Agner <stefan@agner.ch>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Manoj Gupta
 <manojgupta@google.com>, Jian Cai <jiancai@google.com>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: warn if pre-UAL assembler syntax is used
In-Reply-To: <dc6a2492b5d7726ccda09ae69543f62f@agner.ch>
References: <cd74f11eaee5d8fe3599280eb1e3812ce577c835.1582849064.git.stefan@agner.ch>
 <CAKwvOdneF5nXgx3Rh6=NhPK+q93VRhs7mDCcK2eGY0e2rOqqnQ@mail.gmail.com>
 <dc6a2492b5d7726ccda09ae69543f62f@agner.ch>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <b981bc51076bc1abe13ef85041677a78@agner.ch>
X-Sender: stefan@agner.ch
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b="C/RqPRCX";       spf=pass
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

On 2020-03-17 08:55, Stefan Agner wrote:
> On 2020-03-17 01:00, Nick Desaulniers wrote:
>> Revert "ARM: 8846/1: warn if divided syntax assembler is used"On Thu,
>> Feb 27, 2020 at 4:19 PM Stefan Agner <stefan@agner.ch> wrote:
>>>
>>> Remove the -mno-warn-deprecated assembler flag for GCC versions newer
>>> than 5.1 to make sure the GNU assembler warns in case non-unified
>>> syntax is used.
>>
>> Hi Stefan, sorry for the late reply from me; digging out my backlog.
>> Do you happen to have a godbolt link perhaps that demonstrates this?
>> It sounds like GCC itself is emitting pre-UAL?
> 
> Yes, that is what Russell observed and caused the revert:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b752bb405a13
> 
> I do not have a godbolt link at hand, I just built the complete kernel
> using some GCC toolchains I had locally available and noticed that the
> problem persists up to and including GCC 5.0. I did not track down what
> exactly is causing GCC to emit pre-UAL.

Godbolt link:
https://godbolt.org/z/fxYq_s

However, the warning does not appear on godbolt.org, presumably because
the compiler is started such that it does not invoke the assembler (at
least that is what I understand when using -v). However, on my end this
leads to:

$ arm-linux-gnueabihf-gcc -marm -march=armv7-a -O2  -c  test.c -o test
--save-temps
test.s: Assembler messages:
test.s:33: Warning: conditional infixes are deprecated in unified syntax
$ arm-linux-gnueabihf-gcc --version
arm-linux-gnueabihf-gcc (Linaro GCC 4.9-2016.02) 4.9.4 20151028
(prerelease)

And line 33 contains a non-unified assembler mnemonic:
        strneb  r2, [r3]

Note: I do have to explicitly use .syntax unified. It seems that gcc is
not explicitly doing this, but if any inline assembly is changing the
assembler mode (e.g. what including arch/arm/include/asm/unified.h is
doing) then the assembler warnings start to appear.

--
Stefan


> 
>>
>>>
>>> This also prevents a warning when building with Clang and enabling
>>> its integrated assembler:
>>> clang-10: error: unsupported argument '-mno-warn-deprecated' to option 'Wa,'
>>>
>>> This is a second attempt of commit e8c24bbda7d5 ("ARM: 8846/1: warn if
>>> divided syntax assembler is used").
>>
>> Would it be helpful to also make note of
>> commit b752bb405a13 ("Revert "ARM: 8846/1: warn if divided syntax
>> assembler is used"")?
> 
> Sure, I can do that.
> 
>>
>>
>>>
>>> Signed-off-by: Stefan Agner <stefan@agner.ch>
>>> ---
>>>  arch/arm/Makefile | 14 +++++++++-----
>>>  1 file changed, 9 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>>> index db857d07114f..a6c8c9f39185 100644
>>> --- a/arch/arm/Makefile
>>> +++ b/arch/arm/Makefile
>>> @@ -119,21 +119,25 @@ ifeq ($(CONFIG_CC_IS_CLANG),y)
>>>  CFLAGS_ABI     += -meabi gnu
>>>  endif
>>>
>>> -# Accept old syntax despite ".syntax unified"
>>> -AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
>>
>> This existing code is quite bad for Clang, which doesn't support
>> `-Wa,-mno-warn-deprecated`, so this falls back to `-Wa,-W`, which
>> disables all warnings from the assembler, which we definitely do not
>> want.  That alone is worth putting in the GCC guard.  But I would like
>> more info about GCC above before signing off.
> 
> FWIW, I submitted this to the patch tracker already, but I don't think
> it got merged already.
> 
> --
> Stefan
> 
>>
>>> -
>>>  ifeq ($(CONFIG_THUMB2_KERNEL),y)
>>> -CFLAGS_ISA     :=-mthumb -Wa,-mimplicit-it=always $(AFLAGS_NOWARN)
>>> +CFLAGS_ISA     :=-mthumb -Wa,-mimplicit-it=always
>>>  AFLAGS_ISA     :=$(CFLAGS_ISA) -Wa$(comma)-mthumb
>>>  # Work around buggy relocation from gas if requested:
>>>  ifeq ($(CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11),y)
>>>  KBUILD_CFLAGS_MODULE   +=-fno-optimize-sibling-calls
>>>  endif
>>>  else
>>> -CFLAGS_ISA     :=$(call cc-option,-marm,) $(AFLAGS_NOWARN)
>>> +CFLAGS_ISA     :=$(call cc-option,-marm,)
>>>  AFLAGS_ISA     :=$(CFLAGS_ISA)
>>>  endif
>>>
>>> +ifeq ($(CONFIG_CC_IS_GCC),y)
>>> +ifeq ($(call cc-ifversion, -lt, 0501, y), y)
>>> +# GCC <5.1 emits pre-UAL code and causes assembler warnings, suppress them
>>> +CFLAGS_ISA     +=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
>>> +endif
>>> +endif
>>> +
>>>  # Need -Uarm for gcc < 3.x
>>>  KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
>>>  KBUILD_AFLAGS  +=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
>>> --

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b981bc51076bc1abe13ef85041677a78%40agner.ch.
