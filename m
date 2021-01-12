Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOHP6P7QKGQEMQB364A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC052F2457
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 02:13:30 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id l11sf448190plt.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 17:13:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610414009; cv=pass;
        d=google.com; s=arc-20160816;
        b=I2gwxJ8upk8VbUWVA4vo2jCHgPrY+vlwt0pS3BUcfjdfxQHy8hi7lJc4zpA4YNK7tb
         +xDDSlP/aA5LL8tQ8/WNwUqh6zX4kUtXp9iTa/N52B5cAhhkUzqYUEFJKxP3bxTiGzb7
         ii5jDenFhJAUYgYBh2Z4UW5VtAHsS4gofgcv02F5Rx0GmOvQihsukWwihZ1D/0q4AO5t
         9WdMshWxfDgPQ2lEu4XhYG7JLMuNSh8FI+wvt7pBH4fottytFGzIJtmOWaKUtuse99fT
         2FUu9Zv42c+sTbd+bNwZtVqX01xC9JwmqBWuJlS7fFnF71WuH8rsjyzFlXnITgFt6Bfi
         KpGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4D3pATI0zxwGLDwdHPw+eQw0ZtrgVZDPopS1sI0teAc=;
        b=CZnxO16Mx6FcaVvfN/Qxlexo1hEQ82FzZcfGDKi10qoLHuH0smM6KJkKswy91z51Jx
         gcLsQDEARsxXTIgMzloEYfAhhhuWmukbQxpBd3u5jlk66jp+HQggRl+PtXicOQlzYlPV
         +dc1PzUQx77dwXVVeHMXJ8bGkk2zZj5nbG6Ddjq71cvjBt6R9z8GXU5dZh/htVG4qkfz
         AY/c6YwY4KF6rdAQWqz6a0bH3PdW/1yjx9XSgtrnSoWLVQa30/pxAGnY5u1NLPC+b1yU
         W5XLcJc4TPP6M97SLUasc2HOm03qGAgLxA5PWjz7c49A+SiMjtunRbroKtGubunE1Axo
         zeZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L52GfF0s;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4D3pATI0zxwGLDwdHPw+eQw0ZtrgVZDPopS1sI0teAc=;
        b=LaI2AK/iNG9j2Or+sS+vvuvtNaXa5sUmmU2pMDotFdpoK4NB7LtwgKsHZk6GVvb/vN
         7L1UbdMRUgLetJe/w9MAHk6Bqgf6ew05fOSSkm9j7ZxpV8gJjyrsd/48S6rZ4gZkfxJ4
         a3WDTpM6XTOJHfXFr+ozGiNbsTLnAWHHdJsHa+u9i+Fl9awovsac6nmAH/kF67ZJFbGW
         BI9wW39hJCFKBNqkQkkWA0aSc9QMD6HMwXDx7y9/adnI+M0NjziiwxJ0pIrGHShD7zcR
         wbabiip2tQPWPEmOltfynQG/97tAwNBWnFsDM32/ICacXdGONNJyHm/Etpis5CNl6PXo
         ONvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4D3pATI0zxwGLDwdHPw+eQw0ZtrgVZDPopS1sI0teAc=;
        b=JncX/D975Dhh7QwCT4AZJCcpFbQ4RsoVoC39UyFo6y21aauzkVTuMF5mv6jkGdRBTh
         G61KDWCVl1LNUpMOp//NOoyk/4UexxhoHVpIhzYPOzkG+yOzeFPoVW4W8X/ZBn5Tb9zM
         0AqajUXv7snJHxSRzXMc1U72ZAQugvabVnqalShRmzehrgU8UxE89gKsgSekMrk3csSi
         yuHf1ZekSsxcP4fzVNqmgkde+wwWHIS8QzxTfC53XoQqY/1kimu3zIJD1syvkuzky04N
         +GWq2woFslvcGy+W7y16GOwMeNSGpTHqRrULTWXW0x1KHcCXY3m0ORpTKU+jXZcB5ElQ
         L80Q==
X-Gm-Message-State: AOAM5323kOx1uTAiFfFt3SKaW/IYiXHPMwYAwrPFo8AkdFGMWOvDQx9b
	kChl30Pl2kCqwc9oFEGtuBY=
X-Google-Smtp-Source: ABdhPJwSl2lA9D1QS5oGO/KAbOENot6SN9Lq0SCI4o0FgAP3xZ+CJ623e2cTd3M7enmjCzoIdLE1ww==
X-Received: by 2002:a63:545f:: with SMTP id e31mr2127048pgm.327.1610414009021;
        Mon, 11 Jan 2021 17:13:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5c85:: with SMTP id q127ls468962pfb.11.gmail; Mon, 11
 Jan 2021 17:13:28 -0800 (PST)
X-Received: by 2002:a63:7743:: with SMTP id s64mr2067692pgc.215.1610414008248;
        Mon, 11 Jan 2021 17:13:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610414008; cv=none;
        d=google.com; s=arc-20160816;
        b=x6TV0nzxaa1ZYHDu+3tNJg0uXKEtA/4TG6x9jwsU8y+n9IHI/hl4T7Rhs+gb8Cp44x
         Fgx0qU0et9YlF/oUDXKUOaLGIKqcb0XkdwGNjUacxOW9TYgI6+h7G8MlmJ1IaaMSvB47
         pHMNoJVZPcjBEQP+2uAA1+GR7mEM6T+g58gdrUexof9c/CUYQ2GYOvyibemjwLsAJbPf
         7tppK7EFDKRvecpMHUkb0fC/LgPi3FImhWMqW46OBvMv4M2izz7Xwh9Wj15ieRylfrHo
         4dKuR5WEvguO8xqEaQcWIyV9rsJss2Tzk1GIX/xf/WV6KODF2ji9gou/0Yq8iJWahW0D
         PM0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HBFcgr7mqP/yUXgSBi8GFn5zsqPJPXchhuWrxzHcH2k=;
        b=DOhSkTAox2HMoU3NAVpmqHqLp9IMAAK7yfBqOB7Kk01ZsP0OnTQbuNt2I/CBx8oCHC
         oxnuVU/8W4wXa22OY+J6xH4TQMEXQ1hRUZNpEotyLEHaj0/K5ZiRRR5fpl4gChgGlASD
         EaQJYvoGDfsZw5c0yTREdauzsvugsLE1DlLOEHtGWkYhqSLUou9yOu5vNg/UOVi/rOx2
         fTI023Mu1fcq+zGRmbW7e3lwKqLsIpG9Re9DwvtsPYlJX/ZAXyU9kKMiC2ZVFin9W3JE
         bUmrMnNdcuAqKbuWUfSMx9/wwRZ6Oo6GKinIjSmO29FETdsIpaqop5ue9ZycbfP3wmTS
         zX1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L52GfF0s;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id e11si77500pjw.1.2021.01.11.17.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 17:13:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id x126so362259pfc.7
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 17:13:28 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr2064741pfy.15.1610414007725; Mon, 11
 Jan 2021 17:13:27 -0800 (PST)
MIME-Version: 1.0
References: <20210106015810.5p6crnh7jqtmjtv4@treble> <20210111203807.3547278-1-ndesaulniers@google.com>
 <20210112003839.GL25645@zn.tnic> <CAFP8O3+uEE4Lity-asyFLN6_+8qRUD3hgcZVapXwk6EfmGM+DA@mail.gmail.com>
 <20210112010010.GA8239@zn.tnic>
In-Reply-To: <20210112010010.GA8239@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 17:13:16 -0800
Message-ID: <CAKwvOdmGS97e4Rj_oW+RnkYAMjycTFQiiPJAfCvKTdxgv2KfEA@mail.gmail.com>
Subject: Re: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
To: Borislav Petkov <bp@alien8.de>
Cc: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Arnd Bergmann <arnd@arndb.de>, Josh Poimboeuf <jpoimboe@redhat.com>, X86 ML <x86@kernel.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L52GfF0s;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e
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

On Mon, Jan 11, 2021 at 5:00 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Mon, Jan 11, 2021 at 04:41:52PM -0800, F=C4=81ng-ru=C3=AC S=C3=B2ng wr=
ote:
> > To be fair: we cannot use
>
> Who's "we"?
>
> > .L-prefixed local because of the objtool limitation.
>
> What objtool limitation? I thought clang's assembler removes .text which
> objtool uses. It worked fine with GNU as so far.

I don't think we need to completely stop using .L prefixes in the
kernel, just this one location since tracking the control flow seems a
little tricky for objtool. Maybe Josh can clarify more if needed?

>
> > The LLVM integrated assembler behavior is a good one
>
> Please explain what "good one" means in that particular context.
>
> > and binutils global maintainers have agreed so H.J. went ahead and
> > implemented it for GNU as x86.
>
> But they don't break old behavior, do they? Or are they removing .text
> unconditionally now too?

Unconditionally. See
https://sourceware.org/pipermail/binutils/2021-January/114700.html
where that flag was rejected and the optimization was adopted as the
optimization was obvious to GNU binutils developers. So I suspect this
will become a problem for GNU binutils users as well after the latest
release that contains
https://sourceware.org/pipermail/binutils/attachments/20210105/75dd4a9d/att=
achment-0001.bin.

> > --generate-unused-section-symbols=3D[yes|no] as an assembler option has
> > been rejected.
>
> Meaning what exactly? There's no way for clang's integrated assembler to
> even get a cmdline option to not strip .text?

I can clean that up in v5; The section symbols were not generated then
stripped; they were simply never generated.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmGS97e4Rj_oW%2BRnkYAMjycTFQiiPJAfCvKTdxgv2KfEA%40m=
ail.gmail.com.
