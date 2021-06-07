Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBX4266CQMGQEZYH3PVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDA439D632
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 09:40:16 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id g9-20020a25ae490000b029052f9e5b7d3fsf21170000ybe.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 00:40:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623051615; cv=pass;
        d=google.com; s=arc-20160816;
        b=vfE2hv8aWnWziCFUsxr3M0+atGgJGxNORZg37DRHbkH1I9cdXc9oH33GtAjyQsxLNx
         x3VI51rUYjbJftWUyJ/aMTwWEyaWjjb5Fyf45sIdWXdLvUakdKUSrrBr1LrDkpkZv3is
         FONrtMIyIo/tWOQRp/lS41o+0NRgGi526gABbgF4yREOFsN/4iTTlv6Fr/sW4VEVu8B+
         K/lHVNjDNvA/FQPEVxEmUpdU8k+EYmqHdD0od0KzYVJlN9y8NJliralp/BYOsOLarQy+
         40i59Cu++nJE4wTJzWz+ONeXcsGXyH49CM9kN0BlFBvbOLVKWXuMZKFt0kczkRlEZk4l
         yy1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=TnmggqIyp1sPpJwPsn4CwCiW68+ZrPVbNA/gKHD5BXk=;
        b=AwY578026ZWnI8tBAvr9ot8yeHOORGuwEENakzIHUo6HEUvhiTxVUVwtef+ZMCZiSn
         Woebtlc4pDuKLIyrMFHyRRb+fKEU21CPnBrEqTMRmEomz9czwn5pcpKIXJieQnfFIRwl
         D6WFIHBgsScVMb8UFUpslocRez2zDThUv2KJS3M1G1IilIHLpFW5InKAEvXv394LTm3e
         CHjVCojNNXVTICs163A0QkAhYYvUf9UtiqNg9lQOVgkgwrFGMndIBvGWhXyGTA1IVy6o
         v5nTXaqqxgg4WXKKprA+C4fBVcWyvvd/I88XEUzs7S0qPfRWDA3zR4kW87JzcSKwxmY6
         N2Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sAAzsn15;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TnmggqIyp1sPpJwPsn4CwCiW68+ZrPVbNA/gKHD5BXk=;
        b=eqNamly8WeTnccTziYsqw7PR+DvKXbwClWPj8T3MZNRJt0WjywYDfDSue6iCN1XE5z
         O8ErieO4oB6CoMVHGd8cLpdogn7Kvp5UZayesv7ACs8WO0TioUU38CFK64IYKCp+0nNS
         0r99gRV8yvbEZX3UeGtPnj07Kq6JEUTIR+fWbYBgYVAtW8IWStzLl5QsT/h7v7Fck413
         E9BSlSIgE0iPvqkyN+y/9v1Z4xOzY3Omo5d1u+oRvUZakrraoDx2ML3sECzlAAJKoJio
         V3MajA/PGPdRXsIgvj9r2cFcuINbDgiU2kPbja0Xu/slw2I6jQ5R0X4/iSJUzHpMJ+rc
         WJSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TnmggqIyp1sPpJwPsn4CwCiW68+ZrPVbNA/gKHD5BXk=;
        b=ctqpgjMwM6UVStvYDAJdub+2crjbWDdRbcj8dRx8EqAoZE2pqeBtCcnw1V1eZGhjN6
         7U2eapA/fhdsfo64I6WPrQFMz5zJ2+zEnGF36qd37A27I2okD/MfwBwShqLmj/Pvedou
         LaApinJVS/zt3lsKZjAS9p7GIMpqNh0UgcfCqhdybJEKDuqkwmFD6uJpECsXFFWxdUot
         iFAYkmo45NbfGf+u0s8Wh0XjPucnazEFH3xj41txTKLRPOyM5lpdAD+8J36Rf15UnCru
         R28v59dWP+8Bv99LVuRdlCs/dxmrw/353m9e3AVlsOsKPJ0AG5fILqfP2UtiMD/urUJN
         zzKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ay/MSVZmeIinabn1RMXcIBsLQPYiPrg/M4cfDSZ4BHTMRWqL/
	jC+6mh+gPj4GrPgsT3sX+AY=
X-Google-Smtp-Source: ABdhPJwCzaoobN6ACNR0BOF6QjByAHhxa/L7R4/I0UP5K4oPERoytXrKDVAje9kmmyikb6Kc+Ij8GQ==
X-Received: by 2002:a25:cb48:: with SMTP id b69mr21810191ybg.173.1623051615179;
        Mon, 07 Jun 2021 00:40:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:be92:: with SMTP id i18ls7776070ybk.7.gmail; Mon, 07 Jun
 2021 00:40:14 -0700 (PDT)
X-Received: by 2002:a25:80d4:: with SMTP id c20mr22515306ybm.345.1623051614743;
        Mon, 07 Jun 2021 00:40:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623051614; cv=none;
        d=google.com; s=arc-20160816;
        b=WtmhaLd4IB+bEuJZzv958678D7g/z7FumSVVkWsnts6OAa2u8MlQEVKMIwdCnVQTe7
         HzzLFWFKsvwgGmzgL6H9fMrc8lwXsgd3L/J9Yp6c++8o1w5gclWimUJjramnueWCZ1as
         osEpEBBY6ApWTh8oaMqnW1vVEphoHHAl6Xt/PBmOPMTNNNXqtsOWhTgUnQD/NZyeXzYs
         i0xXA0Qj3BoYT8uZB0RJFsGyUdVkRdVD3Glum+9dpRoBKPNg4xUn98x2yNWQLiRo4uRL
         rP0nX/6tZuZCbdG1zsdkvEwt3wGAymgTXzrGh+iM7OuWshJjB6Mg0RQ5dnc3HpDIBOl7
         RUnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=EKJEqB3Q6tIfy2A4ywMNYaG/WTIqmzMmTredZAM1eyY=;
        b=VkrwRnCCuhsVgkGTHydJP2GuTYaxk0THKJLO0K+Zx0h13wLPhuT2LaBto/lrTijwAG
         t6OdXiVS2bmSiecvzyi9oslfWymar16b6HpOeQFbNaIEFAjQiRoaRVQTXL5qxWgU2teB
         tNyKNz6wrOIi09AjzHtnCV2b6hIYiqIHOzmtL0K9V9XlsUL/pJI4JW/SDKbQeCPdKjfF
         NCep1fDsH+xTrRvvi5VfKpdHcBKUw6gL3nw7VoC4WOBSHQ7GTw+Hs5G8k/TLbScdhK3M
         6z+zaZvbXPAEZgBUOtTRSbcn5SxkUqoqnyna28MheAwawj/ECrGP8AlhhZMCOKGeZACJ
         lSTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=sAAzsn15;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id c8si969272ybl.3.2021.06.07.00.40.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 00:40:14 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 1577dr3A029384
	for <clang-built-linux@googlegroups.com>; Mon, 7 Jun 2021 16:39:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 1577dr3A029384
X-Nifty-SrcIP: [209.85.215.178]
Received: by mail-pg1-f178.google.com with SMTP id o9so10339669pgd.2
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 00:39:53 -0700 (PDT)
X-Received: by 2002:aa7:99c9:0:b029:2e9:e084:e1de with SMTP id
 v9-20020aa799c90000b02902e9e084e1demr15812551pfi.80.1623051593156; Mon, 07
 Jun 2021 00:39:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210227183910.221873-1-masahiroy@kernel.org> <CAK7LNASL_X43_nMTz1CZQB+jiLCRAJbh-wQdc23QV0pWceL_Lw@mail.gmail.com>
 <20210228064936.zixrhxlthyy6fmid@24bbad8f3778>
In-Reply-To: <20210228064936.zixrhxlthyy6fmid@24bbad8f3778>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 7 Jun 2021 16:39:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNASY_+_38XEMLZAf7txr4EdukkcFL8pnGGe2XyhQ9F4oDQ@mail.gmail.com>
Message-ID: <CAK7LNASY_+_38XEMLZAf7txr4EdukkcFL8pnGGe2XyhQ9F4oDQ@mail.gmail.com>
Subject: Re: [PATCH RFC] x86: remove toolchain check for X32 ABI capability
To: Nathan Chancellor <nathan@kernel.org>
Cc: X86 ML <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Fangrui Song <maskray@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "H . J . Lu" <hjl.tools@gmail.com>, Andy Lutomirski <luto@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Brian Gerst <brgerst@gmail.com>,
        "Chang S. Bae" <chang.seok.bae@intel.com>, Chao Yu <chao@kernel.org>,
        "Darrick J. Wong" <djwong@kernel.org>,
        Dmitry Safonov <0x7f454c46@gmail.com>,
        Dominik Brodowski <linux@dominikbrodowski.net>,
        Gabriel Krisman Bertazi <krisman@collabora.com>,
        Ingo Molnar <mingo@redhat.com>, Jaroslav Kysela <perex@perex.cz>,
        Jason Gunthorpe <jgg@ziepe.ca>, Jethro Beekman <jethro@fortanix.com>,
        Kees Cook <keescook@chromium.org>, Miklos Szeredi <miklos@szeredi.hu>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sasha Levin <sashal@kernel.org>,
        Sean Christopherson <seanjc@google.com>, Takashi Iwai <tiwai@suse.com>,
        ALSA Development Mailing List <alsa-devel@alsa-project.org>,
        Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-xfs <linux-xfs@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=sAAzsn15;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Feb 28, 2021 at 3:49 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Sun, Feb 28, 2021 at 12:15:16PM +0900, Masahiro Yamada wrote:
> > On Sun, Feb 28, 2021 at 3:41 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > This commit reverts 0bf6276392e9 ("x32: Warn and disable rather than
> > > error if binutils too old").
> > >
> > > The help text in arch/x86/Kconfig says enabling the X32 ABI support
> > > needs binutils 2.22 or later. This is met because the minimal binutils
> > > version is 2.23 according to Documentation/process/changes.rst.
> > >
> > > I would not say I am not familiar with toolchain configuration, but
> >
> > I mean:
> > I would not say I am familiar ...
> > That is why I added RFC.
> >
> > I appreciate comments from people who are familiar
> > with toolchains (binutils, llvm).
> >
> > If this change is not safe,
> > we can move this check to Kconfig at least.
>
> Hi Masahiro,
>
> As Fangrui pointed out, there are two outstanding issues with x32 with
> LLVM=1, both seemingly related to LLVM=1.

Is this still a problem for Clang built Linux?



> https://github.com/ClangBuiltLinux/linux/issues/514

I am not tracking the status.
What was the conclusion?

> https://github.com/ClangBuiltLinux/linux/issues/1141


This got marked "unreproducible"

>
> Additionally, there appears to be one from Arnd as well but that one has
> received no triage yet.
>
> https://github.com/ClangBuiltLinux/linux/issues/1205

Same as well.


>
> I intend to test this patch as well as a few others at some point in the
> coming week although I am having to play sysadmin due to moving servers
> so I might not be able to get to it until later in the week.
>
> Cheers,
> Nathan
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASY_%2B_38XEMLZAf7txr4EdukkcFL8pnGGe2XyhQ9F4oDQ%40mail.gmail.com.
