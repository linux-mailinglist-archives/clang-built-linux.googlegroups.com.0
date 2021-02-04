Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2HQ6CAAMGQEDXYJUHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EEF30FAB0
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:09:45 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id p14sf3835382ilb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:09:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612462184; cv=pass;
        d=google.com; s=arc-20160816;
        b=yRmW9ru0N5TR26qml6HQV/LUHa8FkZsSSop3a/7XExWHXBtdkLtONJsUTJQe+V71JU
         izr8adzmYey0YxjjfF93/rn6DztV19JOiWXeg+PRAIi53bnfkoCwKkbWutE2kiK3nyw2
         7jSH8fyzjx5tHTTMSM+9R6hbwWgYn6+HOnvkvgliashM5KRvhHxqucavfcddqWYMx25O
         gCfdSoFH/Outep+0J6Od+6ygrIlbPmb6n+tjbcjzpOxQ/uXbApFDcSKgagDhUoVG5Se7
         iXwoj7WCTJErehFx2WVJeS+UiPiBMbBTjzAr+oHSrOQ1c8/HvJdXjtGPVdq9A/hPTVTF
         6BGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aNekIyas91RucQPfCZaufxntAf19am5gTsE9EuKmAys=;
        b=GGNMHGFQ9GMiKcmOOerzCZDmO5gdzA4ZiArKtWXixyzHw3GEaON3P4ToOuLMWbpI5v
         M0HRCeWailn3aUg1o1jWqDi4iOb8jlGRAVwjDkmOQL9PbsyP32rr7z9h1SCepGUlGk7j
         T8sG67VDfI0XzjR2Sxc8fM3K/OItX1A6OCW9/AiorX45mkLuIbosOTRLFVshKDKUPyQv
         vYMpCUAhAZW9V1LmLl0NxzPCUVZEzH049DK3j1WtfiPumW3m2jPO0rGRqW4z1yFh21eT
         FQNVRVfqNBIVjGlirSVYFeoZ7y6MtHU26y4YR5BlhJdPQo7KQ6GnBFQpq56xx1q6Vyb7
         4fRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FEIFNEJr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aNekIyas91RucQPfCZaufxntAf19am5gTsE9EuKmAys=;
        b=Yku98eZBoHoFP8ZUdS5O/4qOzjcfKxTL2VLhOC34PvGdp0YAr6ddCPgFn1StkglYGs
         D0fAbVu897LStvMfXygiymrAvX4/Ztr1nXYhJXpfaFlFh/mNUN6c4sJ5+lpi73Kj571u
         k0k1cYvmCGQPrrsarir0G6H8+F9Fxl0eGO7tHIoITMwOKqEFLDacqPaXW3Y/cL35DBeV
         RM47fD/SZJhOeAL+PJ86M5U4WPm0WxuohGMrTZXrD3J5uBh8nl96GUxqY8CJ1l0sNcKQ
         0JnVy4g+MyUq40jnC3swjD+9D8Ts6PfbcLmCFDVpM3sgKEy3FrVXS+5S8DlGiKDh2aue
         M7Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aNekIyas91RucQPfCZaufxntAf19am5gTsE9EuKmAys=;
        b=UgP7ZhYcIvVbhAjLJSr5CQFKX2hABTj+F1hemhOv0UNqxgW8WEmmfvibLI9h25rkMZ
         j0olSGuk7kqfwJS9MoQxpPlO+onEqrcZ+jqR3y+k6s42w8XA9M7GpvBz2fwVyzJq8lYw
         k4FADHS3D2Y6P+j7r9+OiFRuLnMI2UflTbYjuE5luDSxoQM7eJVwGDRjrIljq2yxYJr0
         815taceqS/+4QjpDYfE2XNayciQIl+klBTRbQQwOqYePT2hmbxtZ1J5yCSL7t/m0Jyi+
         Y7wmpQqstqlvclWVYzKL7qksA17fMEMrlW4vNvCW2PfGDAzq49156OmOzhZmQ+u7+dfW
         eW7Q==
X-Gm-Message-State: AOAM532IUEM/uzVKt1pqtKfOT6/ndcv995uEqyiWOpu6NPRdsefpy1qe
	CioHGRDwIZha4ZMW5FHgFBQ=
X-Google-Smtp-Source: ABdhPJxHsWrWBkN4+JOTFbWkmJKDIPdiExmvtklpESAPn85+ARn8x1yK0C8l7t2arDEdYn+prS7ZZw==
X-Received: by 2002:a05:6602:106:: with SMTP id s6mr483768iot.17.1612462184159;
        Thu, 04 Feb 2021 10:09:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2656:: with SMTP id n22ls836686jat.4.gmail; Thu, 04
 Feb 2021 10:09:43 -0800 (PST)
X-Received: by 2002:a02:c84a:: with SMTP id r10mr740361jao.35.1612462183756;
        Thu, 04 Feb 2021 10:09:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612462183; cv=none;
        d=google.com; s=arc-20160816;
        b=W1CxYX6zhUO6PRlrlNufQI91BQUqUXgtRE2STduXW1xsmuwSjJ2sZWSxBlzdETHN7j
         y90IU5Ki0jVBsXYyykBNlIMdB8dyqb4Zsz9omewhc3p0vSMMbr2eHRtDvXqLQd22ceTn
         baufKJ67C/Gh+3HBac8BD7DAA1WECH3tS9QVPkzKcZXn2lXaHsc710SWzeOL70BSHAlS
         vU61HVTaggRl5+zU4bIDPvdgr3grptWIpfWHEkAU7YHr1BaDs/5LjKic9HmsxOxrzZFM
         aTU1lTzu6de5swLfjQTGNN/HTsR17zr5NW6jg/o3iFhEySahcGr4uk+EJ6MEBZP6twIY
         WX4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=j6xRve24HgSRIBxQJgdzhE9gbh4pGUtDFcP9u6Jt+7U=;
        b=BMVhxP0QoCqmAwMlntsgxkmZz5S+VpLpq/HwXP30Zt+f/Hc4weXPY9nrh63xMZndKu
         udIESu+cNKhSuDo0ZxSNDMNUFbBpZ9BPNiL17sHI74gtwNiKD6oJhaU0k4yMj4Z4SWDe
         nTZ1DbItg1elqFFDO3Ys9unuFUFI0bTUQ+7yRL/ItWHRE1htu4AY0bkUmPFiEQbbg8p+
         oZn+sCV/IAXz2E09du6WDX5TaOsccOUkdIGq7xcbHGkx29E2fLWZpAN26E3wDmRrWl4A
         lOHcFVNvPbKWC3m4rIk1O0gcDqv1MuQfQ+keExV59YsXBNvfkdlvb5bsgLB32JZZEk1g
         BtBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FEIFNEJr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id p75si389974ilb.5.2021.02.04.10.09.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:09:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id o7so2693031pgl.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 10:09:43 -0800 (PST)
X-Received: by 2002:a62:838d:0:b029:1ba:9b85:2eac with SMTP id
 h135-20020a62838d0000b02901ba9b852eacmr696501pfe.36.1612462182965; Thu, 04
 Feb 2021 10:09:42 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
In-Reply-To: <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 10:09:31 -0800
Message-ID: <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Rachel Sibley <rasibley@redhat.com>, 
	CKI Project <cki-project@redhat.com>, Milos Malik <mmalik@redhat.com>, 
	Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jan Stancek <jstancek@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FEIFNEJr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
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

On Thu, Feb 4, 2021 at 10:00 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Feb 4, 2021 at 6:50 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Thu, Feb 04, 2021 at 07:07:49AM +0100, Sedat Dilek wrote:
> > > On Wed, Feb 3, 2021 at 11:06 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > >
> > > > On Wed, Feb 03, 2021 at 10:36:32PM +0100, Sedat Dilek wrote:
> > > > > On Wed, Feb 3, 2021 at 9:45 PM Rachel Sibley <rasibley@redhat.com> wrote:
> > > >
> > > > [snip]
> > > >
> > > > > > As far as the panic, it was was triggered on our upstream LTP test, I
> > > > > > don't have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF
> > > > > > bug which is causing our jobs to abort while updating the kernel for x86.
> > > > > > You will see the following in the logs:
> > > > > >
> > > > > > 'failed to validate module [something] BTF: -22 '
> > > > > >
> > > > >
> > > > > Guess this is with CONFIG_DEBUG_INFO_BTF=y and LLVM/Clang?
> > > >
> > > > I read that sentence as there are issues with BPF issues with GCC, not
> > > > LLVM/Clang.
> > > >
> > > > CONFIG_DEBUG_INFO_BTF is already disabled for the LLVM jobs:
> > > >
> > > > https://gitlab.com/cki-project/pipeline-definition/-/commit/7d138e9a3aede46f7674476fa1b3ca02a391767b#90e1e97a102a5713d6a68df323738846b425341a_1358_1369
> > > >
> > >
> > > OK, Thanks.
> > >
> > > Can you give me the link of your (above) response in the
> > > ClangBuiltLinux mailing-list?
> > >
> > > - Sedat -
> > >
> >
> > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/oNIZyE6fBQAJ
> >
>
> Thanks for the link.
>
> You need a Gmail-account to be able to read the mailing-list?
> Asking for offline readers.

We can move to vger+lore. Google groups was faster to setup, but has
many downsides.  I don't have resources to pursue archiving the
existing list, and corralling the folks to set up vger and lore, but I
can point people in the right direction and would be supportive.

>
> - Sedat -
>
> [1] https://groups.google.com/g/clang-built-linux/
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVV3q3Jr8HEi%3DLmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmqF%3DwXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA%40mail.gmail.com.
