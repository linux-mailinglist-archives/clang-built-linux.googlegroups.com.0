Return-Path: <clang-built-linux+bncBDM63U7B64ERBGU36SEAMGQE5UWD2NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EBD3F04F6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 15:39:38 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id b196-20020a1c80cd0000b02902e677003785sf2247037wmd.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 06:39:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629293978; cv=pass;
        d=google.com; s=arc-20160816;
        b=XKL0uN8ZhiGgknDg6o6f2qDxX3zEaRNhWoT1jMpBTLu6wqOPeNS59tU8MuGdk8BGrb
         jqIXLzMaoA1GI8Vj0gwWllLVqn2dps3DXqBnOpMm9/sSi/LfteO23VXkfYJMAKiw3RhY
         TfrVjdv6c8bJkcjnF/vDu6aUH5KhaP707NBxkBkBHey5BnskQc4dBj5rVRzLETcrUt8t
         ovCoK7aIqRLSPQl+zqvYzgnth12DrmTDf7jo1WjcTW0BTt/SpIFP45lbfZk5l88+cE0U
         iPTHs8z2SREnIUjv/iXRCGgkMLu/ThRotGkH5wckZdVn5uvutbmYzyYTCWNnZ25QCD4M
         obBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=vGa0NMRSJs7giE01WnFnt+jrnSJt8+ksKhU2qdG7vb4=;
        b=sFhT+RFznaUAmxf+1M9lfpBdgYfD0+2ZD6jcKwKIXrCD9wJ8mj4yzM2pgpzAjyjzKp
         5Xrp1VPm3pw/kSwOPJ7rXUNkn2+e/+RqiX89Qm8M4RWGvo4nmtzgiln5Nq9tOha75tVk
         knXIvIRbST1xnh51TkPH0jyYmU+ALiRU9ueUycORhaZyaBeGvUUKZQUnj2T+/w7UEqrH
         eN4bJX2aNMU/YDTeQqQjJPVwmKgc2F7APKI6xBrRxWiTFbjfnFMY7Kz0iOY+VFV2O0LO
         7b2Hh39QimvK3eI6t3V9nbukKNOZkZRr1+ml1iyKkdvCXcDOygwLHLHwToiiDlrckohM
         54Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@aaronballman-com.20150623.gappssmtp.com header.s=20150623 header.b=vxzCaT5U;
       spf=pass (google.com: domain of aaron.ballman@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=aaron.ballman@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=aaronballman.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGa0NMRSJs7giE01WnFnt+jrnSJt8+ksKhU2qdG7vb4=;
        b=VXBDDqCrpJBJ8g1q9szH8fI+TK9Kl+BpM9KbU8MzJ5q5NwwVAZAvzq4F6Qfx5xSpzB
         Wt5m9f+hqJ/sAKIrH5ivPpe/Qmo8HF0E0BG8lqIK7olDXeboSYW9AZebX3HY4nb2uePu
         wC4ndDkYVynldwiX7YAsTfAMuPux17ZaLmVzDVDztHWiMPXSyn41Y7SRlDY7D15oA0yO
         li3B5u2NJluhk9qD7Pelhhy4E6d365cDT0P8fE+WvcdtBuDj29mDykTM4+voyDg9dgar
         hFz6azrxd2xczkjqgfPrFQIxOHpvsM2wX4ASsOWc7lccCV7xloJOvgch3PdyBlS3u/3i
         g47A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGa0NMRSJs7giE01WnFnt+jrnSJt8+ksKhU2qdG7vb4=;
        b=j+he08uXnW1/j0nu3lTaEDlrt9m2A2LHpWIC+pqBgdvPoacUkvQnTqFpMt61V4I2Yr
         oJ430SAoTtdiT4OETrvN1YlIfeoY+W50cbv2cQ6enrjkB7pdSznsmT/dt17mPwEFXJkM
         PsBJW3zNWrL65RGrQ9v64ErraeMDMzMfjiohhI7QAts8wUfdUGlVcjqFGht1BBeKxHS1
         dmXN/sJjOisNIWVSZF0nb0JK/o2N/CmpLIYyUiXK+VZl3ONjypB3nGJWm6Bh1CzAFM9e
         E7MtiaEJVJbNb78xtVUPa7tKnK5cHvvUiFwMeFxk53zSV9PkvKSvk0s/lbMb2JryINFN
         l+Ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HXN82KAykH7KUqA81viaHbN9u4HitrlUbs8M6lfGeWn8yAwtb
	KDXv+U/95HEPlNMhBQdcuqI=
X-Google-Smtp-Source: ABdhPJyOi1rb0eAI58tBlybttgpqkS8/vNSn+Nql8m/iTc2JcgLVTZVH0Rz6v78XMWnIf/zLff2Gkw==
X-Received: by 2002:a1c:7f90:: with SMTP id a138mr8076352wmd.33.1629293978416;
        Wed, 18 Aug 2021 06:39:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a191:: with SMTP id u17ls211083wru.3.gmail; Wed, 18 Aug
 2021 06:39:37 -0700 (PDT)
X-Received: by 2002:adf:fb09:: with SMTP id c9mr10590255wrr.93.1629293977293;
        Wed, 18 Aug 2021 06:39:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629293977; cv=none;
        d=google.com; s=arc-20160816;
        b=cGUGyTBASVd0CUwA6s34sJX8uqhuyH3KUtebNV/PISgKONIfx/qXv9bgcZTngIgb4B
         HmoXqUUbLjCeCZniPLSFdWwZhO1FZF/E4sk4KWPKjUeCEi9cmtDIIyJpr3lsl+Oa5yP5
         DieYKIJkpcBRDSuexf18QwDUkstmghtI5EkV67hgClCsmdEkzEwyL1DmhjQhcG3+6ev7
         2Q07SbMdLKM2+IsRaE6oHevGcMu0p/C/wkOix2c41ND2e+RY1ftCDMCOHogvR1phSLu1
         r9bRV1S8/5OGc2Vy7vj9zsidN21AsRX1IRgaTB71HNnyd7f6lbIxfCxB9zCGXgm/EUVJ
         JEmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sly5cUSUf3UvmBxY2jT2KWZQWn4/Ot2TQ63Iq1VacCo=;
        b=oudVTu7tFK2lulfNROTcJPZrBLsKGo3Zd6nCUWygZmvFHRU7hoBltw6a+krTAgGj8e
         RVtZdM3BGcPKhX8S7p3QCDGniXHqUB2nAflGIodGmc/jqdJ4C3dYogNN8m1l2hvezoo6
         D38scH0Pbw510i6c5fGA0lwjTP1XRBqfsdSo3s9CUtthzPU0yI6HZZiokMT57+V/ZcEJ
         +QAZ6alWw5DwhWjR5s/qX9fjHa1G/8aXJ0ZKz0T4749cCvptb2UyePSjipLKKaCf1cFe
         xpmQWscqIfGOH8jevhjomjGG1CsXIzp7cKsdnpVPLLp2wJsloCVEXVz4OEKdAf8mz8Qu
         Ti5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@aaronballman-com.20150623.gappssmtp.com header.s=20150623 header.b=vxzCaT5U;
       spf=pass (google.com: domain of aaron.ballman@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=aaron.ballman@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=aaronballman.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id v10si333713wml.2.2021.08.18.06.39.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 06:39:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of aaron.ballman@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id t9so4715162lfc.6
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 06:39:37 -0700 (PDT)
X-Received: by 2002:ac2:4c06:: with SMTP id t6mr6630121lfq.111.1629293976944;
 Wed, 18 Aug 2021 06:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
 <CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9=eGENHHKhw@mail.gmail.com>
 <CAKwvOdnc3pGLUiKRdHMKUADkqb8OxeL8sKfFKxP5CM0xOb1A4w@mail.gmail.com> <CAAt6xTsQpCDWkC+GXrsmS_mfrVSfjLPnOi0ehAzLyZmnf0QoSA@mail.gmail.com>
In-Reply-To: <CAAt6xTsQpCDWkC+GXrsmS_mfrVSfjLPnOi0ehAzLyZmnf0QoSA@mail.gmail.com>
From: Aaron Ballman <aaron@aaronballman.com>
Date: Wed, 18 Aug 2021 09:39:25 -0400
Message-ID: <CAAt6xTsB+NRie=hO2uKy_ftjRRPAfh-nsAOKY4p2=4u2tv0NoQ@mail.gmail.com>
Subject: Re: painful llvm x86 bugs
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, 
	craig.topper@sifive.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: aaron@aaronballman.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@aaronballman-com.20150623.gappssmtp.com header.s=20150623
 header.b=vxzCaT5U;       spf=pass (google.com: domain of aaron.ballman@gmail.com
 designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=aaron.ballman@gmail.com;
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

On Tue, Aug 17, 2021 at 1:38 PM Aaron Ballman <aaron@aaronballman.com> wrote:
>
> On Tue, Aug 17, 2021 at 1:22 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman <aaron@aaronballman.com> wrote:
> > >
> > > On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > >  I was doing a bug scrub of
> > > > some of the missing features used by the Linux kernel that GCC
> > > > supports but LLVM doesn't.  Is there any chance that you can have some
> > > > folks on Intel's LLVM team take a look at some of the more x86
> > > > specific ones?
> > >
> > > Sure, I can pass these along to folks internally. No guarantees on any
> > > action on them, but I can at least prod folks. Thanks for getting in
> > > touch about them!
> > >
> >
> > Totally; we meet with ARM every other week.  I wish we had that
> > relationship with Intel.  Once we get a build up of bugs that are very
> > architecture-specific I try to reach out to some of the folks working
> > on those backends.  Next up is for me to reach out to Ulrich and
> > Nemanja at IBM about some s390 and PPC bugs.
>
> Ah, that's good to know that you meet regularly with ARM. I've passed
> your list of bugs over to Andy Kaylor internally, but he's not gotten
> back to me about the message yet. So at least the ball is slowly
> starting to roll.

I've heard back from Andy and he said he's happy to have some folks
take a look. I also mentioned that you have regular meetings with ARM
on this sort of thing and are hoping to do the same with Intel, so
we'll see if I can make some introductions between you and the right
backend folks here to get something set up if possible.

~Aaron

>
> ~Aaron
>
> >
> > >
> > > > * -mno-fp-ret-in-387: https://bugs.llvm.org/show_bug.cgi?id=51498
> > > > * -mskip-rax-setup: https://bugs.llvm.org/show_bug.cgi?id=23258
> > > > * -maccumulate-outgoing-args: https://bugs.llvm.org/show_bug.cgi?id=28145
> > > > * __builtin_ia32_readeflags_u64() unnecessarily forces a frame
> > > > pointer: https://bugs.llvm.org/show_bug.cgi?id=47531
> > > > * Inline asm constraint alternatives ignored:
> > > > https://bugs.llvm.org/show_bug.cgi?id=20197
> > > >
> > > > The last two in particular hurt virtualization; reading/writing eflags
> > > > is significant overhead in virtualization on x86 and with LLVM due to
> > > > those last 2 links we don't have a way to read/write them as
> > > > efficiently as possible (as GCC).
> > > >
> > > > --
> > > > Thanks,
> > > > ~Nick Desaulniers
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAt6xTsB%2BNRie%3DhO2uKy_ftjRRPAfh-nsAOKY4p2%3D4u2tv0NoQ%40mail.gmail.com.
