Return-Path: <clang-built-linux+bncBCS7XUWOUULBB4GCV35QKGQE7DCCVOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 814B1276104
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 21:26:42 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id b1sf454947pje.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 12:26:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600889201; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5cpwyVZABCY6IS9ylxfIw2SnhFN/N1XxsATy0LDdgx+ZcMyL4G8kV68aeL4DPIxrq
         f/QcIH6dwYFenQNaD9RKISB3Rx31AahCiLMkE4tYrMqgfzK5+otkou1Dp98XuDG7hOXR
         cwDCEAC2T2wch+sdtxGGv3dqffiUBWdlxeJrZ43foa11OJuuBm5+qVVvIXFsmxsjaqRY
         l2nlikK129Ry+bCvADgAZYiqk2OjqqnI/lSrbI8Q5m8QJO7ZjMtiLS4MgfUeyEIaTfDu
         bez1nfD+0nqhUqpVCaomp82PKuXLSE4E+svaaczI7wUcLtlYwfCNh6yHGHpF+8/8dE/y
         fDYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BM/KwW57cVvj951PzYxA+e2WskGGh25aNPxtWEx2kiM=;
        b=z/cqRAujsx22szNYSal4SRfsEFvySBzqt4HDQWjPtni5KnAUEJJO2owAnXCsV9dgUD
         zx7AMZKQgW89Po3Y75d+6YLCksNc7UQ5siI+hDxgLqnWzDm1NVrYGZZxyF6htUnIt7eR
         vZFslbP0obm9IFf7K93Fv/d20SYb8mC0GhKhN2xw7bGCDCIEq0qBQ5tWs/YtIi80Farz
         /Lj25dcKaS3W8c+0IQNVDzoPTMRzqNUB//10oOFhjMnFL5yDSeNUWyAqhJ8nt0oGFzp+
         l53KBdPcLVlNV/mqC3f9y9MPTpJmEr8OxgFj14e6vCZGkO59wnXsc1kQuL5XAuJZjkWR
         qf/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gcr3QjBB;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BM/KwW57cVvj951PzYxA+e2WskGGh25aNPxtWEx2kiM=;
        b=I84vAwfAtuseJSwLaDWbVp5iPrVZPA1P/lI9tMU1hWaxZuif8A+fR8SpIKleGHF8EH
         eGBfJiSDMiOwN+l9x2PrsEZDcc/N0L1babSpjeT7+Q3bWSrAHgwG1q6DfuZ/00+pcwVK
         /Ivx2Rv8IveeUJVxuI4yqCId5X3sxUrx7/Ukx2JSu73gq3T66kv6jJBvpBt33QYie08B
         UiLSFyB2Xz4l3YUo4nYYw+Yh3w1vxkI8bjv/rELbYBx+pxndKaKD16vnBYpk9Jl+sHkJ
         yFN4bXRyJbQUdkpHUqGnldvVxuv1WDZQhrER9mLwnhPvKmHC3UZybLWFy8HTQcwM1qx0
         c7KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BM/KwW57cVvj951PzYxA+e2WskGGh25aNPxtWEx2kiM=;
        b=cRlNRDodTzVuDwce5/13EZjBfEo5fPKWlu2FYn0ZXgAYIKeUfJO0G3pwZ7fT5Kskz7
         7qDI5ejvG3N4SkvqxA0NUk3C4bZ6lDwXYd51kfhbKAs0G93uqSQsm+8nsphZYYFGMvRF
         9b6nwQz7pRFwSTMEAqgWcyaCkSoeNxHANsv3Gs1g3lujs9Xm2VHu1dZdLUYmo7pnHofK
         cjimJ4P2sSAf85NQI2qL00kvaA5Y8kSfCTchyMXqolSj1bmE6n9JRi+6k9A3TB407cYl
         eimiQsP5vQmFozuCwr4q3rNA8CN1A6ZAQzeUXGaLqSfEh406OspqIIar8QiJQFOxR+br
         E/fw==
X-Gm-Message-State: AOAM530zUS0yc2cIWsCGJ3r1+FOk9weT7jtCLJON/rE/9EKeIh+ovdu6
	xm468NI2SKKz2lgZ0v27PF8=
X-Google-Smtp-Source: ABdhPJx1ODWY9B3lf1j0QAMjdJX/cP0h3kEs0kv3wf/Mbdx6Lq71r8h10Fy6EzQpfCFLYiO7viS+Qg==
X-Received: by 2002:aa7:9f04:0:b029:13e:d13d:a08c with SMTP id g4-20020aa79f040000b029013ed13da08cmr1283331pfr.35.1600889200960;
        Wed, 23 Sep 2020 12:26:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8514:: with SMTP id v20ls229377pfn.2.gmail; Wed, 23 Sep
 2020 12:26:40 -0700 (PDT)
X-Received: by 2002:a62:7e13:0:b029:14b:fcbd:60dd with SMTP id z19-20020a627e130000b029014bfcbd60ddmr1217017pfc.46.1600889200125;
        Wed, 23 Sep 2020 12:26:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600889200; cv=none;
        d=google.com; s=arc-20160816;
        b=XLmPeeU+h9wEGDLnykkrNkc1WrMLxCGgSm6YWTgMzxxKnPQ5Qkod8LmbzZdMSjSflz
         5pN/WHgffsmtFnqqKZPKXUBKFnm0QfYp26CBS1wOC/6gnaQOkopRU+howqBo0Ov3Pe/V
         6D7JEdst2BQh+xlg7nv/bZEyq9IvhXnf5hDAh0pEyOb3h8dtJaz9mmbMp9og00A+6qx3
         cl7JEqjRotwSOhjngXmtQAB7CR1BAq6vRT/uCGqhsw0vkvSioVQ6S7GsFdr45TKiOj7Z
         +slmqM7SRQupLg+S9gf9pSrGg6tMQ1y17p8iItKwb1U4rV/LmJ8o6tvEE7TwH0gmIMQi
         kWkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YKNshdh/sgPHNUs4VthTazvUkoUHQn7pj44JislSO6g=;
        b=B52DtGtU1/p8Q1Z8fB0QzI3hv0Dqv7V+/8XxQGB5BxEvd0a7BNL7vAC0emuOK6CGmK
         +eSwOdL2Ijz7G6kTgXlNVM/iuoEFPHSN/ZCy7SSDTD1D+RZ0lstx9T0aeG3QRdUkv5bp
         VN/ifmEws2snz3bFFgcijAfbvcJHb1xC34hM/QyZO/4AtHErsJGd1YRppkay4OVoEhj+
         faERe4pP2i7IMK3LEaFRmxDUSA49SEFjKmtETmHq88rcDVnhRESbN0zDJdFGKT94zgqp
         9qCeCQsFgVz/MZoIpqcrbHyZQXzMvSWYiwpAxSHmHGt60enJXbF0zVpH4hwY3EZuKfOc
         tsQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gcr3QjBB;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id t16si117921pgu.1.2020.09.23.12.26.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 12:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id j7so217936plk.11
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 12:26:40 -0700 (PDT)
X-Received: by 2002:a17:90b:1256:: with SMTP id gx22mr810965pjb.47.1600889199512;
 Wed, 23 Sep 2020 12:26:39 -0700 (PDT)
MIME-Version: 1.0
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu>
 <20200922163519.GL28786@gate.crashing.org> <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com>
 <20200922215325.GM28786@gate.crashing.org> <CAFP8O3LaxHqpeUu-iifJMC=YkYmNXSUyxCbRnSdsMRD-pKwMGQ@mail.gmail.com>
 <20200922232956.GO28786@gate.crashing.org>
In-Reply-To: <20200922232956.GO28786@gate.crashing.org>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Wed, 23 Sep 2020 12:26:27 -0700
Message-ID: <CAFP8O3+XC59aJGG4RcSAW_pysftpobXQ=sbjqgeNDoF=TBP7sw@mail.gmail.com>
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40:
 Error: syntax error; found `@', expected `,'
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, 
	kernel test robot <lkp@intel.com>, Michael Ellerman <mpe@ellerman.id.au>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gcr3QjBB;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Tue, Sep 22, 2020 at 4:32 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> Hi!
>
> On Tue, Sep 22, 2020 at 03:51:12PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wr=
ote:
> > On Tue, Sep 22, 2020 at 2:55 PM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > > This is the 32-bit @local relocation; its history predates binutils C=
VS
> > > (so older than 1999).  It is the same as @local24pc (which is documen=
ted
> > > in even the oldest ABI documents).  It *uses* the GOT (or PLT).
> > >
> > > If you do have @local24pc, just add an alias @local for it?
> >
> > R_PPC_LOCAL24PC is a legacy thing.
>
> I have no idea what you call "legacy".  It is very much an active
> feature.

R_PPC_LOCAL24PC and R_PPC_PLTREL24 are not inherited by ppc64. That is
a pretty good sign that they are "legacy" :)

> > GCC appears to emit it when
> > referencing hidden/internal/local symbols.
>
> GCC uses it for PIC (and other things).
>
> > It was invented probably
> > because a couple of decades ago people think having relocation types
> > to encode symbol properties was a good idea.
>
> It *had* to be invented.  The ABIs clearly say what it does, and no
> other mechanism provide for that.  It has nothing to do with symbol
> properties.

They may have overloaded edge-case semantics in binutils but their
general purpose use cases aren't any different from _REL24.

> > This is not useful
> > because symbol information can change when merging information from
> > other translation units (a default visibility can become hidden). Such
> > properties are really the symbols', and not the relocation types'.
> > ppc64 has unified R_PPC_LOCAL24PC/R_PPC_REL24/R_PPC_PLTREL24.
>
> It is not clear to me what you are saying here.
>
> > When I implemented R_PPC_LOCAL24PC for LLD
> > (https://reviews.llvm.org/D62464 ) I simply treated it as an alias for
> > R_PPC_REL24.
>
> But it very obviously is *not*.  It might not matter for the one use
> case you wanted to support, of course.
>
> In any case, you should implement @local as well?  That is used as an
> alias to @local24pc for over twenty years now.
>
> > It is clear that LLVM integrated assembler needs to support @local24pc
> > .... There isn't even a test case in binutils-gdb.
> >
> > If there is a @local24pc use case, just change it to @local. The
> > suffix can probably be deleted as well.
>
> If you want to claim to support the older ABIs, you need to implement
> support for them.
>
>
> Segher

clang ppc32 supports @local and LLD supports R_PPC_LOCAL24PC, which
are sufficient. Even GNU as does not have a test for @local24pc and I
cannot find usage in the wild, so clang probably does not need to
support @local24pc.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3%2BXC59aJGG4RcSAW_pysftpobXQ%3DsbjqgeNDoF%3DTBP7sw=
%40mail.gmail.com.
