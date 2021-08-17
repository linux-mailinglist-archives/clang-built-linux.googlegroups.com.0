Return-Path: <clang-built-linux+bncBDM63U7B64ERBGPI56EAMGQENJ3TOLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2397C3EF0FE
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 19:38:34 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id e4-20020a05651c0904b029018bc821fd31sf11047ljq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 10:38:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629221913; cv=pass;
        d=google.com; s=arc-20160816;
        b=dxhM0zDqpFVtIdWV3vrr4zznjxWTrjMN0ibxfmGwRy2WpUOP9yG9CeyEiwg360t+Fd
         ICMDCQSBFPDRa8r8tHAmCU60IMSc1g8i96N6RY4dC3kSxf4i+BHnjCz57uRhgk98hxfk
         ZvFMUUJmHNUKB2Suw5bUmh/CYpnLVPFy2HhyETSDFqcphVNG/4Af97ep80nVO6CAOpbw
         0jP01ofviah+ZUFAl5WFGrQG9KZ68PbgEFiRyyS0t57XyCFcE6zPdzpH5p+X04wYJcJ2
         zpsYYiFpyvL25CV5sLS8CqC7Iwjwgw1l7rvMBFD+Knmm4DNP0e2OZ637Ay5QRpTJfNm6
         aBDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=cCG5S5m+RGxY/y1gdDXa8HtxXh+WGKc2Yu44LAESSsk=;
        b=egexfMjrD6sfuUq04v88Ng1cKe5bru1tuZKPGGS2mfKTpDc3K1udeeYYjdcd7oMHub
         FPNPFwLu5y8lvYrCKdGI7VGD7Z96NHDLR1A7rsIY0MCEBcc3c/oHZWGHGic/d4e1gnjc
         o4+kzwOzFPJf9aHsJ/x0pzZxHr07lYkzDSVNUZLwIXU4dPMKm7hHqmrgPJUAjBwv6WRX
         X5YEhTk+hQfatiAf1ROEArFYgR1TByTD/ivbSXN+gxAUslE6cSXvGfKphTl3s1PFWX/4
         X7hhRmBiYa4sfxGukifdvcM7gqO0ONKGxt0s5SwXc+zbWG0NLd72hK1lao0Z5VZWCVNi
         neVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@aaronballman-com.20150623.gappssmtp.com header.s=20150623 header.b=kY9D5lZx;
       spf=pass (google.com: domain of aaron.ballman@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=aaron.ballman@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=aaronballman.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cCG5S5m+RGxY/y1gdDXa8HtxXh+WGKc2Yu44LAESSsk=;
        b=HWtKJYE119mhhCfmcCGYYMcLPP9p5Tk/Umu9EF46uI5yD9cHr4Y9s2jwjuqIAUcYmL
         hGhJOZDIlNsEl2iFV8TlQWzDdqMTPXLpliETUOqF3KUXLC9PBQnQckU/OCY8IRTYab7n
         kGWUMKT3t+RfzWN2oqR9gXz5XlZkFvvlK8Inx/MCQhn1r9N+2CSvrUNa8uc6wm+fjLUW
         e9e1Sudl0rrIx2rUKhaRpnLYIN+1EsqERfiNiL8zI+YubqC1u/8I+Cc7pnhv5ozz3pnV
         HhzAHqMq4rhSGIDll2cNaF0EaEDxZISKtYiiCMVHy2CH4dJbrkbqELRqsrZjLckuU1wd
         zaDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cCG5S5m+RGxY/y1gdDXa8HtxXh+WGKc2Yu44LAESSsk=;
        b=hJQHG3k8huUI9cHc48N+3NgFj7avAvtaJ32ab6FftCYIVR2EozyARiRTzbWxNJDzPN
         u+xbtcuosbrmGqvnAjA3i+9V+89y9nGcLKdXr8FoZeexy4dh4qn84Ux5DOnN2joXUdmM
         QBMdgXHvI3Wa0f1JeskVm883HRJMKPqp8mdZfCp2BF1kKwlccvWTadNCwQ44kSb09pfI
         bq1wXxVlTr+BStGlOdiWaoDyd64aqXGwU/vrqvkh+EJm9MdvY6yKLOkCqfdkLJZoRdSW
         DMDs8XZyk4RO76T8NzcFfdxMHC0wkOV9RzE+W0AZykR1cszlPCANNpl8/ikLqCzogrst
         Qr2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533magZMCucAUpmRq5H4rn6XS49PFI7oDBmTvf2cCqKCL3Hc244x
	47VrNggJwcgZlQ9eUCopylA=
X-Google-Smtp-Source: ABdhPJzYu+voE7e7f+v9y4glL78O0Pe9zSSe3YnkgD6IW/pTpOCFidshFSw4nW8+Rv9PFNZSs3Q21A==
X-Received: by 2002:ac2:434b:: with SMTP id o11mr3376238lfl.102.1629221913697;
        Tue, 17 Aug 2021 10:38:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f02:: with SMTP id y2ls92632lfa.3.gmail; Tue, 17
 Aug 2021 10:38:32 -0700 (PDT)
X-Received: by 2002:a05:6512:3d12:: with SMTP id d18mr3306637lfv.542.1629221912316;
        Tue, 17 Aug 2021 10:38:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629221912; cv=none;
        d=google.com; s=arc-20160816;
        b=jAnKAG5ZaOIWwqaNaT41LgFpESoIa3F0tgXjfmU+W2c/+Dr3oGkxqUliR76kiyvg8z
         IJpETD8QgnC0o7LdI5ZYj8l4iRaDJj08xY9e/fLZmkDxogpUtWA0UomcW3hCBI34Vafe
         kW30XZqh6SYKSjl164LFEZ/tDMMJFplcGO7rQHYrvW7tv2vfFsVnTAG+HMQiK2RrFtx9
         giHqQRP5/XaZCLnsBRnI8MzBQK6zB1nN58+WRJqnjteX0pKsItsrOrBUdyXJMXQj4IJl
         EKAPiWRM+zc8rMYTg8NhGlifXGL3j2FH12fq5hx65zYC9lrMCb8588ONemg9pjNpoZpJ
         R9fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NaMDhT2QGM9MrL9UcfcpWGMZ/Av5c2zmIXgyHGZIAXU=;
        b=ZZOb+RWL5GlX3dMkkRLE8o3EHYQtK+mdVRDXo6qFryp5fGOq1xJN45h30EYp36jJr2
         KWacrdTn0c4GQCVxT2LpeJENfpge1XP0F5lO9VOF7RA1hDD+y+JKlSxugfLam+E8RJ0b
         Dykp3DuckT8Di9ieHftGOF1mMM+32FgN0ns2PWS7AwpEZpCFP1Zdtc/apVoevxEINSKS
         GaPEGVPAdFehbLvsf3ozj2OyqZDTSfitRZxrUcTaWZAmH/3Jx40qKBNf/OFCEzfxZzOB
         zc0e7+z6nwBMWiKwnHrbWAUmeQiUHg7KtNZ6047Q9VbTAaBRv/wF8jXYTnSgJ3jSl0qu
         jlow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@aaronballman-com.20150623.gappssmtp.com header.s=20150623 header.b=kY9D5lZx;
       spf=pass (google.com: domain of aaron.ballman@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=aaron.ballman@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=aaronballman.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id h2si152300lft.5.2021.08.17.10.38.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 10:38:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of aaron.ballman@gmail.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id p38so43033351lfa.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 10:38:32 -0700 (PDT)
X-Received: by 2002:a05:6512:3ba4:: with SMTP id g36mr3289204lfv.80.1629221911737;
 Tue, 17 Aug 2021 10:38:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
 <CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9=eGENHHKhw@mail.gmail.com> <CAKwvOdnc3pGLUiKRdHMKUADkqb8OxeL8sKfFKxP5CM0xOb1A4w@mail.gmail.com>
In-Reply-To: <CAKwvOdnc3pGLUiKRdHMKUADkqb8OxeL8sKfFKxP5CM0xOb1A4w@mail.gmail.com>
From: Aaron Ballman <aaron@aaronballman.com>
Date: Tue, 17 Aug 2021 13:38:20 -0400
Message-ID: <CAAt6xTsQpCDWkC+GXrsmS_mfrVSfjLPnOi0ehAzLyZmnf0QoSA@mail.gmail.com>
Subject: Re: painful llvm x86 bugs
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, 
	craig.topper@sifive.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: aaron@aaronballman.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@aaronballman-com.20150623.gappssmtp.com header.s=20150623
 header.b=kY9D5lZx;       spf=pass (google.com: domain of aaron.ballman@gmail.com
 designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=aaron.ballman@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=aaronballman.com
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

On Tue, Aug 17, 2021 at 1:22 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman <aaron@aaronballman.com> wrote:
> >
> > On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > >  I was doing a bug scrub of
> > > some of the missing features used by the Linux kernel that GCC
> > > supports but LLVM doesn't.  Is there any chance that you can have some
> > > folks on Intel's LLVM team take a look at some of the more x86
> > > specific ones?
> >
> > Sure, I can pass these along to folks internally. No guarantees on any
> > action on them, but I can at least prod folks. Thanks for getting in
> > touch about them!
> >
>
> Totally; we meet with ARM every other week.  I wish we had that
> relationship with Intel.  Once we get a build up of bugs that are very
> architecture-specific I try to reach out to some of the folks working
> on those backends.  Next up is for me to reach out to Ulrich and
> Nemanja at IBM about some s390 and PPC bugs.

Ah, that's good to know that you meet regularly with ARM. I've passed
your list of bugs over to Andy Kaylor internally, but he's not gotten
back to me about the message yet. So at least the ball is slowly
starting to roll.

~Aaron

>
> >
> > > * -mno-fp-ret-in-387: https://bugs.llvm.org/show_bug.cgi?id=51498
> > > * -mskip-rax-setup: https://bugs.llvm.org/show_bug.cgi?id=23258
> > > * -maccumulate-outgoing-args: https://bugs.llvm.org/show_bug.cgi?id=28145
> > > * __builtin_ia32_readeflags_u64() unnecessarily forces a frame
> > > pointer: https://bugs.llvm.org/show_bug.cgi?id=47531
> > > * Inline asm constraint alternatives ignored:
> > > https://bugs.llvm.org/show_bug.cgi?id=20197
> > >
> > > The last two in particular hurt virtualization; reading/writing eflags
> > > is significant overhead in virtualization on x86 and with LLVM due to
> > > those last 2 links we don't have a way to read/write them as
> > > efficiently as possible (as GCC).
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAt6xTsQpCDWkC%2BGXrsmS_mfrVSfjLPnOi0ehAzLyZmnf0QoSA%40mail.gmail.com.
