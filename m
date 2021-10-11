Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO7GSGFQMGQEWDYIGIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF8D429591
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Oct 2021 19:24:11 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id r16-20020adfbb10000000b00160958ed8acsf13798050wrg.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Oct 2021 10:24:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633973051; cv=pass;
        d=google.com; s=arc-20160816;
        b=qhcDtX0SRpoHZXDBndeTS2/4lKUU2rNLND7TZjECZC9QxmoBiHcn2A03YLdq46A+pT
         X2XvaF3QyD4Rrl8cwaN9FEAVO+6ne2RHvqTWipFjnJWGebKcvGhJQiX3tDzsM/RPQVHU
         O6Z4CV0l/W9okeNyP60Fu9QGjDpgv7/eFX5Ld5RZ7cBylY4xD7i74e5/qelY7G8EPv3f
         xNL/3p9ZROrD/zUiQxV9B0VDBlEQnt7y9nz5IXJbIwtu4ZcPn67ycGPJrioJr91au1Qm
         VKrYojZsKvZVA60J+bkOt2nXSPPiqOO1QH5oqsMIe4EmrgIWrE/O+d4QQEVSKYYWqKtA
         w9KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fIML/tefIe9OV2yTKqQ0LDGSxl71OXKgoCD0zvPBx6M=;
        b=fG/detkClG4KPWsc6vCHfF+WKc+ZykpFBb6HKRiwHzIYhtoqEJGvZ5yUzNBNLbFhsu
         cwplVGvkL1yC3tHmDvPH1ObkKli4/UZv4iSdpzqlfI+BHV5ChhHr3fNil9Aj6PojwEZg
         U11Ra/AxEoKLCJXA95e/rVkaGPKnyJFde6K38yJ+TgmB5AXsQ/qU4NZTBmVCw+LOXZex
         RfiyOG+bR8ZQ2acsv6LBaP+7Ub60jjGHcLQKtO7Pq0+m4FPlXldDrBxwfAonrnfAjVP9
         0UbXoxEx2Zf/WUeQGfZQ0rSNJtwwe3Fu7u4MEBXZ/D3EhYQer0ZFEVxnL3Apm9GMAnae
         NKYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=EUjn8oMw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fIML/tefIe9OV2yTKqQ0LDGSxl71OXKgoCD0zvPBx6M=;
        b=mG+U2yysFgsm9nSfPMffSEMCEHjvADidkc+O/b1U4u/D/mxGBqNm0Wqt3gHcq5fQc8
         ty8uBk35vP0NU5DCRJFHHRA0tRVY7xLkOUya6m5NajClhETk/zEAlFoVVokrko6I/RhK
         RJZuxhEukje0eMRT1iyXmtgUO2jlnqQ8/n1zjVTQQtMLqJJuvvYByLlJjQnG7y/Atx58
         6PKyazN1BC/5NOk+S1ZwU4A+qD1BlVbamcxC6EeFzKoVbxnpidQaPaelcrRjft+EX7bi
         GgmFyi59NGrhVF+uQQ35KBH80I9X1trPsFriMCp131UwqEyhHXnWoq+cwRubrbxUaA3J
         sAVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fIML/tefIe9OV2yTKqQ0LDGSxl71OXKgoCD0zvPBx6M=;
        b=xkPuvbpRB/Ug+Tgx2MYipVhfwWPokImY1yT40M0LKWJj/obDeFYy6x2tfP4akQFuoe
         3FkMzqp/W4Yti5K1SkDWObQHkkGFdS1Is2MQ5LNdjJOLiJYu5/UbuBEXJoFscW0rDgoy
         psTO1/FlBSBx6DZ1YrhPZ6tnSQrwdjr6491QvtBOoo72mzvMu+/urwLWr4dig6zCc1vF
         xx4jvYr9mdu+MEzIAL9MfWa4mmFEsoQfiFZYnu80OE1oMGulGi1Adf2zUflOLZsS5zTK
         FdMrGBd4FzyglsUshrgr33UJkkVsj6NnaggfDOxbt9OM14tUQ6iW0ntZ8Qoq4VQDZGvP
         UMqw==
X-Gm-Message-State: AOAM532Kwwhq5WvSP97HLzqT5EI88TLC6auNFWliqgoN9ChWetf3Ibm4
	Fe2FyGjR70f2rOKYQ3UBuRw=
X-Google-Smtp-Source: ABdhPJxsFLxaTikeTVW8FtnCSKUUhRfujPDmL8Z08HEiO9hwHiIwui1Eq+H72GEYL6zWSn9tbhww/Q==
X-Received: by 2002:a1c:f609:: with SMTP id w9mr304346wmc.24.1633973051389;
        Mon, 11 Oct 2021 10:24:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a285:: with SMTP id s5ls2015448wra.1.gmail; Mon, 11 Oct
 2021 10:24:10 -0700 (PDT)
X-Received: by 2002:adf:a411:: with SMTP id d17mr26426344wra.393.1633973050459;
        Mon, 11 Oct 2021 10:24:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633973050; cv=none;
        d=google.com; s=arc-20160816;
        b=RQpV/TkChQnFLtST/u/HRb+NMlfDEvvxCczU7ILwBiUzAuDSbtRS++gkExC9IesTOH
         w2wKwKDz5HSfFzNKUgBeUptclX5hv5tkv5SmzTz2V1XQXhVDDZT+6NXv23gQfm047SOn
         yhx/NEG36QNY8EcoAtsDJlJO1dqhRG3zOfyQDGHiUS1uMq+UuNTgdTCi3LI0CNeoxJ9A
         foHiOPAROpTMm7e+9sBgQK4J8SlWZ7HdHRkWMHHF03zKRtWK3Jw4rOsmJiuB10FZGz5c
         ZJrx5XebfdH/B2ykH9shib7A9KHKWEUxhjBg7PxpYnpvDPRpI0kps4+sa8skwf3dshQo
         1yxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Nu4G/4LFT2B+dN7Ud24heVwfxO4x4OPVUBz/3Y6zfcc=;
        b=n02oJ/Cq49FfHDvBuIgFnumgLPxtCs8WZo/m0lW9TFHIM+VKJX62DeeODZkFxc1X4i
         NdVywzYWv7lyY4OYWEn0Oa+tP55VQuL8lb4QcmK2lTWJoHgbYdFZD7YcjsgshclcM/aw
         iHp/Uy7q6V9D7fkT3pjRPGIg8mUsw7vZ1Dt9t8FYemrJWgFinSOmDeEAEvqDmOSk6zGD
         qxQvEuHlesku/XlWVcZFevL3jP861y0s/ajkPvbdv6ZxnBXSifzzvORLdWuZMT0mtCWm
         D8ynxbsBFEVt91WX0tAZG9cUIZk/gvo6bdpSheojOrQVZ3yP32HvvaJ9Z4D2Ka0QG5x6
         EuRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=EUjn8oMw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id l3si8499wml.2.2021.10.11.10.24.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Oct 2021 10:24:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id y15so76609720lfk.7
        for <clang-built-linux@googlegroups.com>; Mon, 11 Oct 2021 10:24:10 -0700 (PDT)
X-Received: by 2002:a19:6a16:: with SMTP id u22mr29139566lfu.444.1633973049612;
 Mon, 11 Oct 2021 10:24:09 -0700 (PDT)
MIME-Version: 1.0
References: <1633878992-32884-1-git-send-email-ashimida@linux.alibaba.com>
 <CANiq72nBqiyrcaW47ZW-6i7zJ6HrmjZWSOr==HkEuBR5rXmpdQ@mail.gmail.com> <a25b9286-fc1f-d398-150c-ce073eadc6c1@linux.alibaba.com>
In-Reply-To: <a25b9286-fc1f-d398-150c-ce073eadc6c1@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Oct 2021 10:23:57 -0700
Message-ID: <CAKwvOd=D=UvGfHjEyeYPk3c=ksg9mF8nUX-9jyJhkX8QbugMSQ@mail.gmail.com>
Subject: Re: [PATCH] [PATCH V2]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Dan Li <ashimida@linux.alibaba.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <nathan@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Sami Tolvanen <samitolvanen@google.com>, frederic@kernel.org, 
	Mike Rapoport <rppt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, yifeifz2@illinois.edu, 
	Steven Rostedt <rostedt@goodmis.org>, Viresh Kumar <viresh.kumar@linaro.org>, andreyknvl@gmail.com, 
	Colin King <colin.king@canonical.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Marco Elver <elver@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hardening@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=EUjn8oMw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Mon, Oct 11, 2021 at 8:42 AM Dan Li <ashimida@linux.alibaba.com> wrote:
>
>
>
> On 10/10/21 11:43 PM, Miguel Ojeda wrote:
> > On Sun, Oct 10, 2021 at 5:16 PM Dan Li <ashimida@linux.alibaba.com> wrote:
> >>
> >> -         This option enables Clang's Shadow Call Stack, which uses a
> >> -         shadow stack to protect function return addresses from being
> >> -         overwritten by an attacker. More information can be found in
> >> -         Clang's documentation:
> >> +         This option enables Clang/GCC plugin's Shadow Call Stack, which
> >> +         uses a shadow stack to protect function return addresses from
> >> +         being overwritten by an attacker. More information can be found
> >> +         in Clang's documentation:
> >
> > Perhaps it could be worded in a better way? It sounds like it is a
> > custom plugin for Clang as well, e.g.:
> >
> >      This option enables Shadow Call Stack (in the case of GCC, as a plugin),
> >
> > Cheers,
> > Miguel
> >
>
> Thanks Miguel.
>
> How about writing like this:
> This option enables Shadow Call Stack (supported as a compiler option in
> the case of clang, supported as a plugin in the case of gcc), which uses
> a shadow stack to ...

That sounds reasonable.

One question I have Dan, what is your sense for getting this feature
landed upstream in GCC proper?  It's neat to be able to use plugins to
support older versions of a compiler than when the feature initially
lands; I was curious if you're working to submit this into GCC as
well?  I didn't see anything in GCC's bug tracker for "shadow call
stack," but maybe there's a different feature bug tracking this?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DD%3DUvGfHjEyeYPk3c%3Dksg9mF8nUX-9jyJhkX8QbugMSQ%40mail.gmail.com.
