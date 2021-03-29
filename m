Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6U7RGBQMGQEW26BVCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8416B34D9E3
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 00:08:58 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id 75sf9328423wrl.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 15:08:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617055738; cv=pass;
        d=google.com; s=arc-20160816;
        b=YyoJVslAtypjccFSiOu0fzBCKDr7ZEnSL62BYNwFKw8xaTBSEbTAWLEVASPL4PSfwq
         FjrP7H/zmBI94rBlsdLq4QX/5Ci/CQj7JfS1QiqNHlRLepZXBc7EV4tTl3UqSMd8rSTG
         7EqSZQm7gAw1ReUW4+iz5+N4RaO9MOnHBs0QoEaLfLnpuATwCvodTO0OjEJgE53RzQ1W
         FV3GmRcMcEN2vmCH+7NkouAc9Yc5g03VI73J8IjH7neaFiyCifEP0rIJFodHBuXQ35Yz
         P9OepTa/ADQGr70PrjInkt7dfYiZtl73Qx7osad0REts6fCM38I2HHo4F+IVr257C4g7
         ikDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AxMJTMWG5qaMGlKCljwfpehpSTbx920G7W4SI+ihtMY=;
        b=Sbd9U4hrkRcz+zLNnG/4v5iNqksKWMoncM93KeAHDK8f/JcLYE0c/amv5qPRV534Hh
         K4gWUziq8uqBnWBmg/ZBF19gM5gcLsIWnWFM1IqT61HBtsp95YjsWF0BbZQ7Uk2PGiYc
         9pPaib2kSPDGqGM/y6LsEYsNTgwiirsXutzd4CxC//hlnQEYaBD4NVN+TqphoMpYh065
         tngD+Tx9eXIMU/XbVfeGKFBIOyxO4lI5uphx4p7Pqek/66lUiSYh/tEydbK3QnI72FHS
         GAL7rozeuibzmHhZcTvqz7P4qjhp1EyROsjfh1a0/+Y1HlqwEXcpRU7IkvHirBSHu+hQ
         pbww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NATCpKJD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AxMJTMWG5qaMGlKCljwfpehpSTbx920G7W4SI+ihtMY=;
        b=dQl2t2FTcep1B8rnABZcUMBMt85JMLVQhflJbZrdQzZ+NUfKbKv/h14v44EFlB2Voo
         musLzg7/aeZpw5ffPzZ96M+/5pENqzZ1veIMV+didGhZwqLX42aPKScUBvNItrGyGH5F
         +qxSa9izbAswDy0U0/1AtR8duSi+hznROPIh6Crk9NwtArsovHyRVJE/+t5nVlRAlT7Q
         gratE0I+3ReaxpGTwxEhiepJpxarPh/pBunojdNK0qZcREPBj5nOxzKQQGLUgplb60fL
         ehZ4lNXqzeArpBCk86Ibf1RIk8DSHQGhxhhX2KaV03NoOIwKuq+bz8B01NT1RKIQk/EM
         quRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AxMJTMWG5qaMGlKCljwfpehpSTbx920G7W4SI+ihtMY=;
        b=bXnZ1/p64XWG3Zci3c+eZIJKaPfv6kTv8ik9eJQ/bSEmcRRI2Evl9/tnxqErz7wStJ
         kPsMfm9T8g0NsT2CpWZGDv/RwO649s+n+Wc3gTtL7HNeVjXKf+36OwX0J8o5CZhvfhJ3
         ndoXrVn6SGvhzKMQ8ID4ZUuZhmB7+/1ynxPhT8eykGlBPRIk+F2cj9XVaO9BOjAwZjjr
         smQ98mX1sJD7sKMt99i/rkzxQGhnI67BBKixREfb0T0jR4HPhpgtwUW+DhxOmUXptWUX
         TAN+344n9xn68cPLx2KhipvYAvrf6/9I6TT4n3CqdE0wQKT/c9J3fZxEq1d95I790Gqs
         g86w==
X-Gm-Message-State: AOAM531AsG+VKzwncWXUedPa720jggUYq3t/SrxxEUavpYB9ZDtx/uaN
	1z0KvITkBiLWLn828/gNDZw=
X-Google-Smtp-Source: ABdhPJxctz+97t2bvgXka9hgBCHOvWOLtksZzyNAmWGwFFSuMXExM4AaCxZHPQjIal2b+2jgBq4HJA==
X-Received: by 2002:a1c:4b0a:: with SMTP id y10mr916864wma.141.1617055738308;
        Mon, 29 Mar 2021 15:08:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9ac6:: with SMTP id c189ls302148wme.3.canary-gmail; Mon,
 29 Mar 2021 15:08:57 -0700 (PDT)
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr932439wml.147.1617055737442;
        Mon, 29 Mar 2021 15:08:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617055737; cv=none;
        d=google.com; s=arc-20160816;
        b=iXGr6iB3aDVrkMCpwkYZOOznWMIe44yVhmXVRxJD3RP7unRXUTZ/UYRpVeSoKq2Ytn
         2OsUqDH6iVn/yWP4KoXXJkirn6g1BPBcgT1OXKL4Ou934aSb+2goXFmwnsxHVVFpS6et
         YYzta46ZMJiy/SABGJYNe1LihV6kCD/+MG/3Ukp9xPIDBcddY/Id9eiqhsxHtuBnL+Wg
         mjkz5PI01htqM58HE237+U6Ozmv9So0THCO95eHOuWhmZHiDdtYz0BYrRhFiJCUC+1lX
         nJ+z2eOPLwIOfpHx8h+1hBo3vPIsHWo4isZ/1uAhrQz4m6DyxlsnrswO7mFzUvtYmDdk
         TTHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/hqJn9c4uBNS7Nw3mlhlHUN2tIf4nHDC4lxd48hV+Bg=;
        b=BZ6VMdJT+bcQft+ON1AqeV/kVyI0uhcgUED+4DaiZe/ztDCDupg85PAtAdRwYVlSF3
         YYQle8hFHFaxiG5seS+Bx+paRuqQPYYGSIExOCFYI3PTvPwueYLmR1gJlWGUDiClI0F/
         Yy0a/eloTrRupds8bbFqaUxXvm32qolYpzQrMAMrkZ0aA7jphs+SknxxACfm1CKisFnV
         DfrhEavoPgKmPQJ8qOmRdoSuBeBHYGoqONcMKCyCWLzzFaIBv7MoQWIr3P+9s3pp3216
         e+eCZ62JrQ8SIfp/aHZgSlrKXb0hW2yvG4WJjCK7UP91HS1zFFIXGaUHqIuoh9ia+KpL
         0wlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NATCpKJD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id q145si44965wme.1.2021.03.29.15.08.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 15:08:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id z8so17567045ljm.12
        for <clang-built-linux@googlegroups.com>; Mon, 29 Mar 2021 15:08:57 -0700 (PDT)
X-Received: by 2002:a2e:868e:: with SMTP id l14mr19560955lji.479.1617055736955;
 Mon, 29 Mar 2021 15:08:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
 <20210128193422.241155-1-ndesaulniers@google.com> <CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com>
 <CAKwvOdneTwx8LwKyAA+iMELEBWBxu2nkr9dVuQ=+hgsZROu-tw@mail.gmail.com> <CAMj1kXFh9GGReghFaZkCi0TNOBFjF+Nv_H6vj8pKmN4Rdth3Dg@mail.gmail.com>
In-Reply-To: <CAMj1kXFh9GGReghFaZkCi0TNOBFjF+Nv_H6vj8pKmN4Rdth3Dg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Mar 2021 15:08:45 -0700
Message-ID: <CAKwvOdkv9714jdhHuc7o90TY_sOKSe1J+NmwcxBxEaX-haJk0w@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: kprobes: rewrite test-[arm|thumb].c in UAL
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephen Hines <srhines@google.com>, 
	David Spickett <david.spickett@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NATCpKJD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Jan 29, 2021 at 1:40 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 29 Jan 2021 at 01:22, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > > On Thu, 28 Jan 2021 at 20:34, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > +       TEST_RX("tbh    [pc, r",7, (9f-(1f+4))>>1,", lsl #1]",
> > > >
> > > On Thu, Jan 28, 2021 at 1:03 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > Why is this change needed? Are the resulting opcodes equivalent? Does
> > > GAS infer the lsl #1 but Clang doesn't?
> >
> > Yes; it seems if you serialize/deserialize this using GNU `as` and
> > objdump, that's the canonical form (GNU objdump seems to print in UAL
> > form, IIUC).  I didn't see anything specifically about `tbh` in
> > https://developer.arm.com/documentation/dui0473/c/writing-arm-assembly-language/assembly-language-changes-after-rvctv2-1?lang=en
> > but it's what GNU objdump produces and what clang's integrated
> > assembler accepts.
> >
>
> This matches the ARM ARM: TBB and TBH are indexed table lookups, where
> the table consists of 16-bit quantities in the latter case, and so the
> LSL #1 is implied.

(Sorry, more time to look into thumb2 now, revisiting this)

Then I would have expected it to be stated that the operand is
implicit in the Arm ARM or use the curly brace notation for the
optional operands (see "F5.1.167 RSB, RSBS (register)" for an example
of what I'm talking about. AFAICT, there's no such language in the Arm
ARM about TBH. This is also what GNU binutils' objdump spits out when
disassembled.  And TBB differs from TBH in regards to this operand;
TBH has it, TBB does not.  It's not clear to me whether these
shorthands are intentional (pseudo ops) vs unintentional (parsing
bugs) in GAS.

>
> > > >
> > > >  #define _DATA_PROCESSING32_DNM(op,s,val)                                       \
> > > > -       TEST_RR(op s".w r0,  r",1, VAL1,", r",2, val, "")                       \
> > > > +       TEST_RR(op s"   r0,  r",1, VAL1,", r",2, val, "")                       \
> > >
> > > What is wrong with these .w suffixes? Shouldn't the assembler accept
> > > these even on instructions that only exist in a wide encoding?
> >
> > Yeah, I'm not sure these have anything to do with UAL.  Looking at
> > LLVM's sources and IIRC, LLVM has "InstAlias"es it uses for .w
> > suffixes. I think I need to fix those in LLVM for a couple
> > instructions, rather than modify these in kernel sources.  I'll split
> > off the arm-test.c and thumb-test.c into separate patches, fix LLVM,
> > and drop the .w suffix changes to thumb-test.c.
> >
>
> The ARM ARM (DDI0487G.a F1.2) clearly specifies that any instruction
> documented as supporting the optional {q} suffix (which is almost all
> if not all of them) can be issued with the .w appended, even if doing
> so is redundant (note that it even documents this as being supported
> for the A32 ISA, which GAS does not implement today either)
>
> Given how we often use this suffix to ensure that the opcode fills the
> expected amount of space (for things like jump tables, etc), we cannot
> simply drop these left and right and expect things to still work.

I understand fixed in:
* BL+DBG:   https://reviews.llvm.org/D97236
* ORN/ORNS: https://reviews.llvm.org/D99538
* RSB/RSBS: https://reviews.llvm.org/D99542

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkv9714jdhHuc7o90TY_sOKSe1J%2BNmwcxBxEaX-haJk0w%40mail.gmail.com.
