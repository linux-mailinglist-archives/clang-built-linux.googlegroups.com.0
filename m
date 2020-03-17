Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBCMFYLZQKGQEY4TBRWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CB2187AB3
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 08:55:54 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id o9sf10295616wrw.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 00:55:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584431754; cv=pass;
        d=google.com; s=arc-20160816;
        b=gh8FhGxdU3qHzzTWRrTKoiznJWt/vMimPbgvGQswYJiwtqbaZZSgrPTHG8/MuvENN9
         yvKhg5XC0CZ1FEP/4YYWBV7qPsO0KVhIUz0/yE7c2GKWbOtEQgO+elu02fs8CJJ/OcPn
         bASO0IfTEd92dkrvdsGTdLjMuB/cKuh9wR7R80G3ioLErDMu4y9k4c6COUT31LNULYa7
         HI4wv2E8j+LM0Pgrrcu7CW4Se1HeLZQfnI2E8qSbGmj+9LrMyxZHgMHcOg7VfOUjbo5B
         8MeBAhQFakEyhUacMaLr8Hz2sFa2KgD0D02HTfDZI27IVsJ8E0g1z7FxAQVyLZblfBbL
         Rh7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=AM0UkyfFeH+JpLPZCj7Sl6FHUltTWbEqHw29cNQxyp8=;
        b=fOW5T5clfd9oS6Ufx4RWu4zTcLgEQdPH0YchKn93rBHSJBnCkapGE4A9eMW4H5DE/G
         YOaF5pPoTxpiLggUojQHFIKDJvXfQ5hXLpGx58W3je+O2gyBxuNlZZ0xlGZdSMkgH95V
         p2meqA9m1lvWx/2JS7rggJCOViS59p2rzS0VizR1udUzTGUXy9yzYPemSvaon03eDC7d
         jCh3eVpKUNeWkPQ5R7qu2Q3ZmAIm3Xy0cUjqcK48aiy5fgtY1Ciiw3lbTROjBryyPNRJ
         TwwlOJYk0CuCHrBHzo4cSbcOziOdxWUljqZJDlBzUuXT25X2yJE758e4hXiVQSjws3AT
         3WRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=XVkIrOVE;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AM0UkyfFeH+JpLPZCj7Sl6FHUltTWbEqHw29cNQxyp8=;
        b=WIamgFckeWcIqAm2VOCu1yOud3IEKLjoPs82uK/qKsTXG19N4nAN+KVzz2lxiTERHf
         sJ3BMnVRL2wzaJn9rJuQoLhey6QH+2OcgaA2dIZv/XKCusuXixlBVyWvG9S7l5xVSPVS
         9Nyd5DfWQmZb2yf0G9GySUWjH8tIqPxHNjdPUpN07r9SyqtVKy3WmfZTvJjxtoIneVah
         YwKbWfqhmINkOI9SxXvHsUw6N/tZzyuStmgYw/jsYMS1bDvgNxtCyncgmnrA4MveQDeV
         ckXq9XP2HAaraGsW5qU0h+7H1u9Xhj6LcqJOr3lKX8IncuU0rRAcPdsi4sywKXS8XkW0
         seWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AM0UkyfFeH+JpLPZCj7Sl6FHUltTWbEqHw29cNQxyp8=;
        b=pve7WE87W9RCLc1EZ6zNFzC9R6lGMUXj16dtBUMQctT74knPVGcdvm4fsrggaE6Kdc
         cMTCl8if5IuX0Mao4UZosVHVD7DFIKpqEmcSmX/i3KAWeHPPENDw/K5dqvfSkLwjkaAJ
         e+dDtyrOP+ZH86cSEg58f7EdqFayHhIKovsXlZw3ZRoA/t7LyaWJy5pbKaj2VSPcIBfJ
         VVSWNbGFpc18clNe8s8fvBzCFcQWHjM2++109hcAlbq7EhdeoKnqOf91BP3xhRD+KwKM
         LhI6PmLPxMHdGkPrbiGRoduWaFGLFlReFUgqo6eRYs87T4l/iD3QIu5i5wYGUl/6w2NC
         SYxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3WZDuLy0ndSGK6dPPdwykrXI8mN5LpKJ8tHo+QG8qY8SwV6o/E
	jTSTRT//Zeq25inTpTqmlRA=
X-Google-Smtp-Source: ADFU+vv4oCs6JE3wgUb5hb/yoX2FEMYFmSue67I/gqkrUvneYVu0+jqeJotsQeHo5EBYHQXM3iUCNw==
X-Received: by 2002:a05:6000:4a:: with SMTP id k10mr4227057wrx.381.1584431754056;
        Tue, 17 Mar 2020 00:55:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls10708923wrc.7.gmail; Tue, 17
 Mar 2020 00:55:53 -0700 (PDT)
X-Received: by 2002:adf:f5d0:: with SMTP id k16mr4634959wrp.64.1584431753566;
        Tue, 17 Mar 2020 00:55:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584431753; cv=none;
        d=google.com; s=arc-20160816;
        b=kFYn0aIc/D9QrvXTy4XNHEpB8tK1vsHf4YqQnf2Gl8zGOXxkw6UNYxJ1Vx9wZDKZOq
         dOXO5bCdhcyCt32UNqv2BxCdpZpeCQ0Y7Z4Mka5KeolkQneIwFpFn1AteEfZ5xx24T1D
         3fIpGnzflSlV+Z6P7zEEI2rFS4EXPiQE+VYFpnQNBMgptpH4qKWvB68U3HCX7m9TY+GG
         hQPzlNbeBvltODBRrKaGzeyh7n8+FBAgCY1fGL4GzbzygFf2LTAcmAB6HGeJDKL1g00w
         DqZ2sBmWeSJXgDzZo46JPPbaxgFpH00c5rcjcG7qGe6/sJvu3geEWhBFBH1CNTCI4Eug
         Cjgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=p3KVNi+Ory+PQWNhNehyp69k/05vP43IyXekB0qsnHY=;
        b=h2m/Q2PTzMFaOG9Ws7Vbq6L1cipnyW3G0GZGY0Rd34FffE3DXjxJvItClFkmDXhhkO
         l18t7jgUVPzZJ7fNhO4jW9pU2/PEK+fYjRO3i9O6QhsbSlRL0FsafdqhVgEUClXG8gk1
         2T4LgFhuvV739TLDqxvVO1pVXrMD3ePrgJneMMXScCJOWiOnL+qT3vXWwmzx8iBJ4fdW
         fMzICV/eGXibCL1bZs3d6wwclwGEyNcd9YEMqMxcdqJGPXxwB7mRZy90M1McUN24h0oi
         E3Tkx65ReZWwd0V47QAzfAWGSAV5RP6fppCWV+wCLmwXmtwfiuVeN4cE8Q+AAzEIrbXI
         F8ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=XVkIrOVE;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id n7si1069340wmc.1.2020.03.17.00.55.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 00:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 989095C0103;
	Tue, 17 Mar 2020 08:55:45 +0100 (CET)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 17 Mar 2020 08:55:45 +0100
From: Stefan Agner <stefan@agner.ch>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Manoj Gupta
 <manojgupta@google.com>, Jian Cai <jiancai@google.com>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: warn if pre-UAL assembler syntax is used
In-Reply-To: <CAKwvOdneF5nXgx3Rh6=NhPK+q93VRhs7mDCcK2eGY0e2rOqqnQ@mail.gmail.com>
References: <cd74f11eaee5d8fe3599280eb1e3812ce577c835.1582849064.git.stefan@agner.ch>
 <CAKwvOdneF5nXgx3Rh6=NhPK+q93VRhs7mDCcK2eGY0e2rOqqnQ@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <dc6a2492b5d7726ccda09ae69543f62f@agner.ch>
X-Sender: stefan@agner.ch
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=XVkIrOVE;       spf=pass
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

On 2020-03-17 01:00, Nick Desaulniers wrote:
> Revert "ARM: 8846/1: warn if divided syntax assembler is used"On Thu,
> Feb 27, 2020 at 4:19 PM Stefan Agner <stefan@agner.ch> wrote:
>>
>> Remove the -mno-warn-deprecated assembler flag for GCC versions newer
>> than 5.1 to make sure the GNU assembler warns in case non-unified
>> syntax is used.
> 
> Hi Stefan, sorry for the late reply from me; digging out my backlog.
> Do you happen to have a godbolt link perhaps that demonstrates this?
> It sounds like GCC itself is emitting pre-UAL?

Yes, that is what Russell observed and caused the revert:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b752bb405a13

I do not have a godbolt link at hand, I just built the complete kernel
using some GCC toolchains I had locally available and noticed that the
problem persists up to and including GCC 5.0. I did not track down what
exactly is causing GCC to emit pre-UAL.

> 
>>
>> This also prevents a warning when building with Clang and enabling
>> its integrated assembler:
>> clang-10: error: unsupported argument '-mno-warn-deprecated' to option 'Wa,'
>>
>> This is a second attempt of commit e8c24bbda7d5 ("ARM: 8846/1: warn if
>> divided syntax assembler is used").
> 
> Would it be helpful to also make note of
> commit b752bb405a13 ("Revert "ARM: 8846/1: warn if divided syntax
> assembler is used"")?

Sure, I can do that.

> 
> 
>>
>> Signed-off-by: Stefan Agner <stefan@agner.ch>
>> ---
>>  arch/arm/Makefile | 14 +++++++++-----
>>  1 file changed, 9 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>> index db857d07114f..a6c8c9f39185 100644
>> --- a/arch/arm/Makefile
>> +++ b/arch/arm/Makefile
>> @@ -119,21 +119,25 @@ ifeq ($(CONFIG_CC_IS_CLANG),y)
>>  CFLAGS_ABI     += -meabi gnu
>>  endif
>>
>> -# Accept old syntax despite ".syntax unified"
>> -AFLAGS_NOWARN  :=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
> 
> This existing code is quite bad for Clang, which doesn't support
> `-Wa,-mno-warn-deprecated`, so this falls back to `-Wa,-W`, which
> disables all warnings from the assembler, which we definitely do not
> want.  That alone is worth putting in the GCC guard.  But I would like
> more info about GCC above before signing off.

FWIW, I submitted this to the patch tracker already, but I don't think
it got merged already.

--
Stefan

> 
>> -
>>  ifeq ($(CONFIG_THUMB2_KERNEL),y)
>> -CFLAGS_ISA     :=-mthumb -Wa,-mimplicit-it=always $(AFLAGS_NOWARN)
>> +CFLAGS_ISA     :=-mthumb -Wa,-mimplicit-it=always
>>  AFLAGS_ISA     :=$(CFLAGS_ISA) -Wa$(comma)-mthumb
>>  # Work around buggy relocation from gas if requested:
>>  ifeq ($(CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11),y)
>>  KBUILD_CFLAGS_MODULE   +=-fno-optimize-sibling-calls
>>  endif
>>  else
>> -CFLAGS_ISA     :=$(call cc-option,-marm,) $(AFLAGS_NOWARN)
>> +CFLAGS_ISA     :=$(call cc-option,-marm,)
>>  AFLAGS_ISA     :=$(CFLAGS_ISA)
>>  endif
>>
>> +ifeq ($(CONFIG_CC_IS_GCC),y)
>> +ifeq ($(call cc-ifversion, -lt, 0501, y), y)
>> +# GCC <5.1 emits pre-UAL code and causes assembler warnings, suppress them
>> +CFLAGS_ISA     +=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
>> +endif
>> +endif
>> +
>>  # Need -Uarm for gcc < 3.x
>>  KBUILD_CFLAGS  +=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
>>  KBUILD_AFLAGS  +=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
>> --

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dc6a2492b5d7726ccda09ae69543f62f%40agner.ch.
