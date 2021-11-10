Return-Path: <clang-built-linux+bncBDYJPJO25UGBB56GWCGAMGQEENI3ZBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 753A644C9E0
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Nov 2021 20:54:32 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id i1-20020a056512318100b003ffd4e89eb9sf1661093lfe.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Nov 2021 11:54:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636574072; cv=pass;
        d=google.com; s=arc-20160816;
        b=EUI/7lF5W+uU0YDC+xjAry/Pj1fDBxR3Q1qLqKrVDgvdoDALAywuDytL1jTPAqNgYC
         v77fSp5kZhmTBbOipr19RUlmauQdlwrDRTfeiGuOriBNpyI8c7/oOiMFsVoq7qIoqlJh
         t6fBQXs5zrhtQayoGFsHY622fTdfXD5msjuNtVwJyMyLMr3DqetZzcCmWkbNJagzE0vr
         0JEgmdYpZJm5IX+vIoEUWIl47yrcN3r0ZbfF1gGDNhpebfzgEC0Q/6+d8FP7VzFJUj+D
         4sLrqETBXrAp6HyeTDddZWECyYgbBgFvRFwEH3I3gNYQhDlKt9XuxEGSo+7nOjalGUKT
         7TcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=emWnLbzN5a4Au4OszXoalrBLuSWykfxcwwErvwPNlSg=;
        b=lSx86c2ijAWXa6r+njv0c5oeYZq6sNwnAOoUfxC5j01j6vPeFCG/G6vv8EaHYTvBSo
         tL50ibHR5XL+u6qUZSAvYogZA9DqNmZyr1RZq7BZyknpO3m0udrt31lv3r4dMeplKMIQ
         aK56E9rLpWfhI28M+RNeQ2/dnqEnJTcRmLLYrsdmxQwRPZR0vhiuMMcmt6biJ+a3juZU
         kFwtUR3YYWmMA6l+LP4KcomQ3Hf10qobkx93nOxcee3bKbsAgY44LxYt6jNQH54KSq6i
         6wbO+X7TZFm6BG+VCiN0E1+i02hZS3w/NOfPXDSGqYEtajZUDnQo3/cU9JEises965Dw
         ZDEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=MZggrA4R;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=emWnLbzN5a4Au4OszXoalrBLuSWykfxcwwErvwPNlSg=;
        b=YFou6bDm6+GUhkRlcq+aaqTPLtr6hqahXuPs5y4oVSNsLfAa7WNtFYYYLeSTSCRHCb
         143MStoGnCS5pp0PQokoda9+D36sR3mRD95PZqdvfujJxlxrEk0JtlQmGTfhJhQw05c4
         q0zOja7g1vuhSxTQRrSGL+CD4e+owYUP6Q3hzeYMna5alglc+7Ve+mnIb5Q2x7Y8cn9h
         ZVEBkIG/yiKWoszoo53D9IVWk4e4oot/zmqlAI21AtCoc18JV0EF5b4ysKp9ztwXkXlG
         7RcjKx7dhPe6NBNiW6aYw1zxKSmym2qqvj+PR5xHE4mK2o/8I/OpcBEI27g2Ke/dDIm1
         7s9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=emWnLbzN5a4Au4OszXoalrBLuSWykfxcwwErvwPNlSg=;
        b=7lHS2Ja1cqk9cxeDRPfQVV3chGF6DrWKqvppgz9lUYRj6n9q6gewcCdCDEtscs5Sig
         9RRZAp6Rj+O6WYWdZW345R1PRpDgxXkkXgc4teM4+nMk4mI+xhhuGYWWU0iqhKxez0pm
         KuQ2wxB/IQ6az1DUDJUi3FHUzhO9aenK7BQHkzZteqpP0eBnDcKqcwYfi8U0RrPTJI7q
         XyfGtl5gpot4lO2hI/yu3ZwtNu4VHPxBHIeFKdlVtMe4sqwMhrJKjpPR+1EIq5Vk12NT
         XGSmLTMKDIAgMZJ5KI/LQO4UUfNIkE8BTCPsXD7h8zDHpRpqknjbDLtakt80IqGxPDdF
         Vevg==
X-Gm-Message-State: AOAM5312106L5AxpNANIwIK/HkLynmTI5FOBWdZfz6qxK4ejslCYms/4
	D+9pKDvIFmGkiFq1MvNJXPA=
X-Google-Smtp-Source: ABdhPJy2xGeCpCBWmonsvmB94mddVRx6Og3VJTaJ3ntxKfo0oKvdFDCmFNHFD5IAVQYDMUUEO+gIiQ==
X-Received: by 2002:a05:6512:3416:: with SMTP id i22mr1551686lfr.4.1636574072062;
        Wed, 10 Nov 2021 11:54:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3e10:: with SMTP id i16ls708140lfv.3.gmail; Wed, 10
 Nov 2021 11:54:31 -0800 (PST)
X-Received: by 2002:a19:6752:: with SMTP id e18mr1511036lfj.195.1636574071028;
        Wed, 10 Nov 2021 11:54:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636574071; cv=none;
        d=google.com; s=arc-20160816;
        b=mQ0mJ7DlscyxMFXcVOOSswgSqFiDdu8Cp9HI+weB7V5NdIaZ/WgjCUvQgVpzCwDudv
         /7eJRrx0Kn2Ri8hKAQNcQn//QPQaBspFHYc6d4KmBIQcEhxAwDMEfSMB9xMUBq3D2gNT
         NyylQXUJ3YC7aTUl6bKM50ogD5Co+wUvGICZ6KBBuqBVHPHqMV7iZ71Z4RR+SqY8ZPtQ
         /JTwXBKpVxtNqRinXxKr4N3jeVtKoI7UdKxYdwIUUt1qeYZxDq1YoagCxix8BCyEsjTp
         dTMiAen+rPAd2l0tc8eOP8pGKl9v6Hk+FgGZBdNGoTryURSqI/plpkYuF0NqJjN9jdEM
         dzkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=katFFdjF9yTSPvuIotc4HFJ7jS5Mn6dtEx4FmMbQPg4=;
        b=E0Hl/nF7LWWIgJOUQheb80MPmD5F/iZilZ5+sEvt531c407uqBFCYlxOZDA03CH1Hr
         yMiNqTggHJUIoquKtEE1jAOiqSOvh68H8vAb3na18suFxnl7alQ/yhNHW5SDHJGsUYHp
         +2hoqywajVViZUZN3QUjrvT89ivtRNuf/tOcKxyPQTFpeEWvOGgGmOuq5lvlj3FXw1TA
         FLmbo+ieT3hTywiUMNWNFXHdaWzTbZ99vuv/0lOg65xrotV5FtTpYtHc/sesEyqBGSvN
         QaBD75lKtEFBtCbrYmkwTfCBsi7lFfTPsOGUyKg+07sGA88jyiJopc8MmtFsL/HJ+nCC
         hz3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=MZggrA4R;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id z1si76231lfu.5.2021.11.10.11.54.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Nov 2021 11:54:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id l22so8642259lfg.7
        for <clang-built-linux@googlegroups.com>; Wed, 10 Nov 2021 11:54:31 -0800 (PST)
X-Received: by 2002:a05:6512:150e:: with SMTP id bq14mr1600909lfb.444.1636574070576;
 Wed, 10 Nov 2021 11:54:30 -0800 (PST)
MIME-Version: 1.0
References: <20211107162641.324688-1-masahiroy@kernel.org> <20211107162641.324688-2-masahiroy@kernel.org>
 <CAKwvOdmCaXAMvouD7bsWqmgOUxQ9vpdt3LY7qWpzTVm-2gddEw@mail.gmail.com> <20211109000531.k23mgrfjn5tomevv@google.com>
In-Reply-To: <20211109000531.k23mgrfjn5tomevv@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Nov 2021 11:54:19 -0800
Message-ID: <CAKwvOd=gD+Tn1BCHwtLztUuy6tBPqZxUyneddz3849pDqhP7dw@mail.gmail.com>
Subject: Re: [PATCH 2/2] x86/purgatory: remove -nostdlib compiler flag
To: Fangrui Song <maskray@google.com>, Masahiro Yamada <masahiroy@kernel.org>
Cc: x86@kernel.org, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, clang-built-linux@googlegroups.com, 
	Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org, 
	llvm@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=MZggrA4R;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Mon, Nov 8, 2021 at 4:05 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On 2021-11-08, Nick Desaulniers wrote:
> >On Sun, Nov 7, 2021 at 8:27 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >>
> >> The -nostdlib option requests the compiler to not use the standard
> >> system startup files or libraries when linking. It is effective only
> >> when $(CC) is used as a linker driver.
> >
> >Is that right? ld.lld recognizes --nostdlib and has --help text for it.
>
> GCC/Clang driver -nostdlib != ld.bfd/ld.lld -nostdlib.
>
> ld.lld -nostdlib just ignores SEARCH_DIR in a linker script.
> I think ld.bfd's -nostdlib is more complex than that which also has
> something to do with its internal linker script location.
> Anyway, getting of the obscure ld -nostdlib is a good idea.

Ok, I verified that the size of arch/x86/purgatory/purgatory.ro,
arch/x86/entry/vdso/vdso64.so, and arch/x86/entry/vdso/vdso32.so don't
change with this series. (ldd is not happy with the .so's regardless).

I also suspect that the linker when invoked directly can't assuming
it's linking object files created from C sources (ie. could have been
assembler sources), so there's no reason to assume that the libc, C
runtime, or compiler runtime would need to be linked against.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> >>
> >> $(LD) is directly used for linking purgatory.{ro,chk} here, hence
> >> -nostdlib is unneeded.
> >>
> >> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> >> ---
> >>
> >>  arch/x86/purgatory/Makefile | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> >> index 95ea17a9d20c..ae53d54d7959 100644
> >> --- a/arch/x86/purgatory/Makefile
> >> +++ b/arch/x86/purgatory/Makefile
> >> @@ -16,7 +16,7 @@ CFLAGS_sha256.o := -D__DISABLE_EXPORTS
> >>
> >>  # When linking purgatory.ro with -r unresolved symbols are not checked,
> >>  # also link a purgatory.chk binary without -r to check for unresolved symbols.
> >> -PURGATORY_LDFLAGS := -e purgatory_start -nostdlib -z nodefaultlib
> >> +PURGATORY_LDFLAGS := -e purgatory_start -z nodefaultlib
> >>  LDFLAGS_purgatory.ro := -r $(PURGATORY_LDFLAGS)
> >>  LDFLAGS_purgatory.chk := $(PURGATORY_LDFLAGS)
> >>  targets += purgatory.ro purgatory.chk
> >> --
> >> 2.30.2
> >
> >--
> >Thanks,
> >~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211109000531.k23mgrfjn5tomevv%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DgD%2BTn1BCHwtLztUuy6tBPqZxUyneddz3849pDqhP7dw%40mail.gmail.com.
