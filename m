Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3VMT6EQMGQEIEJEOKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3A23F8D6D
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 19:59:16 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id s15-20020a2eb8cf000000b001cbf358ed4esf1517347ljp.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 10:59:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630000751; cv=pass;
        d=google.com; s=arc-20160816;
        b=kMOAZP1smMVIP+ZOCuXrEveLvP3RUuMiGhCxf4Om6fC07cOhEStoT1RLRQpvEZicsC
         iVSEOFzxUVf/FtTC6xdYayufUOYBVBGBe+uhCcMlPOuRr+hVyZCEhrogvi95M8mA0F5V
         fJG5PD/NUkhAU7WIjKZIAFVQHZ9jcDnfZCS8lRB8lBy4y82IxC+HMsjV0eKfIZcSvpxZ
         2gp39XPNwNcZc5cB2AOeusFora5wMK5m793lRG4TQttSMzYKl8HtvqmktYM4+6DIRlJy
         1Y0cRWrQkaOY576rcq4K/dlXB0xT35DiU7FtFPOGixePkYFklTPJPlcZZ5YAMwZkqzIL
         rYag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5DKZxt0U77Fdr+7dJ2RpHm8zB7+0K1DygIDQAsk82cc=;
        b=Wxk1sT/qeBBZ3NilPFSK3d/+Pvktxi5c3pMs/60Ecb0pyicg3GI46z5avuFYcLuii2
         msOSoSJZfoKw5Sf7XxtauoADzUUN0aI0vhJkxorm7LlACQwX7tZ3PAUVhRgumeUWi/lh
         At+nRKyZKnfVyP6d45QD3nSKcpXiqCaK/7gIJ3ydmCLgknwZs0bZJ+vp4bu1Ww4SYNp0
         H9xNcPACmBHcpJ1nSWc+6G9kSmvjZHgi65JsxMI3OOgC5+lySwhTVhBwXIUQuj0oHP20
         vV23NU2M23+7qdifh6AEfKHQfWpCx0cZWXHcwdw0koaIpBO1v9t9WceXKcZDLTpIHpzi
         1UTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TGyWjiTd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5DKZxt0U77Fdr+7dJ2RpHm8zB7+0K1DygIDQAsk82cc=;
        b=EcJ+F/syHEDTC7fO8REvhhuVsmJBVh3XM2cFyuVshqf2/vFpERPl52NWHO04FQLMc+
         J16bgC1A8T4Dbq6itvc/r+B5rIzLD7jzgjjgchRuHJyjMoqn0Gqxn+khmqx/MHCq3CE2
         nVXm82GL/F5KRXFBhPNaGRJpBtj2W/v/dQShNyymqBTcDbWTT1ZoU6MYgXIMXup6YkUg
         c9VeEqD948m0FoeZvRj0rRwcWWdU/d+KjHPBiV/oK9KSikN+AELlCGz3Z9LEUItmgo7P
         aq0LQok0cpWCsYlpNc4gEObD0kToCjgAlSpHwfIGcwDZiJVXq1zE/DDs2Tf93oh+Aid5
         +v1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5DKZxt0U77Fdr+7dJ2RpHm8zB7+0K1DygIDQAsk82cc=;
        b=rhJ3QCWrS+rp+oSBdVvKTt60JqQtv3I34qbX81bXGvnTmUnw9dOoucrj9W7j34mEp3
         0HoEVlArN4kbzpUXmXbE1+Uuwzeb8Bh/qgYtErA4wHkKTUNu2WzF6sBneI/PpaTlDypa
         sPzOwM2Q7CZD3xpdwe8HBBfT2453DNV82dvHVQUHvuK/Ti6VKzmoXAGf3/yc7zRQ9aX3
         +FwcphnoYf/25xlubu5t+RsjTIRayHiVqoquZV5U5cuAF2GRIg2MiPzwYv/gDM1A0lHf
         oYiA6AChsSAiO0hTUxX9WZVlUxxa0grbg5YmrLtF6jxkQu355PcQlC3EjY74h/KvmeT8
         HsnA==
X-Gm-Message-State: AOAM531RxnT0ZM5Qht0SDMQijBkZzzHjGYoICZGAU7X48JTuC6v1y+ZW
	OGHF4QTv1uzcAsP2UX31eIU=
X-Google-Smtp-Source: ABdhPJxQoLSTCq4ydQMJjbux+OQ7xUVqGivTNhgG4FYLsqbHD9L7+xo7nKjx+kl/m656ebEelzijgg==
X-Received: by 2002:a05:651c:118f:: with SMTP id w15mr4221122ljo.47.1630000750663;
        Thu, 26 Aug 2021 10:59:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf26:: with SMTP id c38ls1341506ljr.5.gmail; Thu, 26 Aug
 2021 10:59:09 -0700 (PDT)
X-Received: by 2002:a2e:7814:: with SMTP id t20mr4170681ljc.13.1630000749476;
        Thu, 26 Aug 2021 10:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630000749; cv=none;
        d=google.com; s=arc-20160816;
        b=fBu3pHnT6N2INd/BWuHlUFwcXjZ/Z8rnqNxiRZa/1n3LiZZhem07CLpOU31uih5BfD
         Q0oMEGhReHn04rLtJDKVk4Q4/UbLgvEyULZGV34W2nAK4OO1JF6wxhdgM3DFS1rSIHiE
         Qiz2My/VKwN6w4nkmgdquWiGvm42gnt+K0MtXxbZgutI488xhf5JTqOotAUgwM6w224E
         yOr1Bbgshaj4bSzyx0Vt3a7y7o4AUsPv3DZpOK+cF2EV+JD8mB+0GgMvpPwi/MdHO6KV
         lkdNjkbIVhlGa4qFxjKw+cDS6QCOZVRRrWe5eJWjHi2xDA9QXBcdMCZdjkYfsi9qxipG
         sNMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DHs+Ru/AKhB4k+afbIj9f/7T1OO+EUKI9m6ETVQ8LfY=;
        b=IOwo9sEPVkhD/yA3RdmBVDB9+7Q7C7NqV6FKgeZQf3lOhR89+QgX9y96unH0fQrISc
         cuKD9r2/vaQtqC+FoDklnOMyyqkCqySQR73euPvJU058SlZhQS53ThQoqzqiRQRODrn3
         LrO81FwJQAioe+XtENcPQzDLPOO3U28ZjQen4uF42FTbXyCbVm4MrgPRFQ5DSSaxF8LP
         oYcX5OnFFegdNUc7VRfUa8InJFRSAiWMxPTANc2L38mxzChlMAW9nFxOO0aBQO5SvqYv
         pJG2LaYcsNkfT1K1lCuYD6YmKX2Vc9z3ziB/JHYLbxYhq/ubdxYrEyyvZn3lr9cy49vj
         TkGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TGyWjiTd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id t9si219018lfk.1.2021.08.26.10.59.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 10:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id o10so8574590lfr.11
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 10:59:09 -0700 (PDT)
X-Received: by 2002:a05:6512:3a84:: with SMTP id q4mr3659213lfu.543.1630000748901;
 Thu, 26 Aug 2021 10:59:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
 <CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9=eGENHHKhw@mail.gmail.com>
 <CAKwvOdnc3pGLUiKRdHMKUADkqb8OxeL8sKfFKxP5CM0xOb1A4w@mail.gmail.com>
 <CAAt6xTsQpCDWkC+GXrsmS_mfrVSfjLPnOi0ehAzLyZmnf0QoSA@mail.gmail.com> <55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n@googlegroups.com>
In-Reply-To: <55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n@googlegroups.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Aug 2021 10:58:57 -0700
Message-ID: <CAKwvOdkPYociOMPo7cYH2u13-+jjweCNWvmN3Erqzgx3cvEWhA@mail.gmail.com>
Subject: Re: painful llvm x86 bugs
To: Annita Zhang <annita.zhang@gmail.com>
Cc: Clang Built Linux <clang-built-linux@googlegroups.com>, Stephen Hines <srhines@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TGyWjiTd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Wed, Aug 18, 2021 at 12:38 AM Annita Zhang <annita.zhang@gmail.com> wrote:
>
> Hi Nick,
>
> We got the message from Aaron, Andy Kaylor and Fangrui Song. We'd like to have a discussion with you for the requirement and specific issues. Can we set up a meeting for it?

Hi Annita,
Sorry for the delay; I took time off while family was in town.  Yes,
I'd love to set up time to chat more.  I'm located in the Pacific time
zone; are you? If so, do you have time Tuesday August 31 before noon?
Otherwise September 1 after 3pm might work for us.  We're also happy
to accommodate any timezone differences.

>
> - Annita
>
> On Wednesday, August 18, 2021 at 1:38:33 AM UTC+8 Aaron Ballman wrote:
>>
>> On Tue, Aug 17, 2021 at 1:22 PM Nick Desaulniers
>> <ndesau...@google.com> wrote:
>> >
>> > On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman <aa...@aaronballman.com> wrote:
>> > >
>> > > On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
>> > > <ndesau...@google.com> wrote:
>> > > >
>> > > > I was doing a bug scrub of
>> > > > some of the missing features used by the Linux kernel that GCC
>> > > > supports but LLVM doesn't. Is there any chance that you can have some
>> > > > folks on Intel's LLVM team take a look at some of the more x86
>> > > > specific ones?
>> > >
>> > > Sure, I can pass these along to folks internally. No guarantees on any
>> > > action on them, but I can at least prod folks. Thanks for getting in
>> > > touch about them!
>> > >
>> >
>> > Totally; we meet with ARM every other week. I wish we had that
>> > relationship with Intel. Once we get a build up of bugs that are very
>> > architecture-specific I try to reach out to some of the folks working
>> > on those backends. Next up is for me to reach out to Ulrich and
>> > Nemanja at IBM about some s390 and PPC bugs.
>>
>> Ah, that's good to know that you meet regularly with ARM. I've passed
>> your list of bugs over to Andy Kaylor internally, but he's not gotten
>> back to me about the message yet. So at least the ball is slowly
>> starting to roll.
>>
>> ~Aaron
>>
>> >
>> > >
>> > > > * -mno-fp-ret-in-387: https://bugs.llvm.org/show_bug.cgi?id=51498
>> > > > * -mskip-rax-setup: https://bugs.llvm.org/show_bug.cgi?id=23258
>> > > > * -maccumulate-outgoing-args: https://bugs.llvm.org/show_bug.cgi?id=28145
>> > > > * __builtin_ia32_readeflags_u64() unnecessarily forces a frame
>> > > > pointer: https://bugs.llvm.org/show_bug.cgi?id=47531
>> > > > * Inline asm constraint alternatives ignored:
>> > > > https://bugs.llvm.org/show_bug.cgi?id=20197
>> > > >
>> > > > The last two in particular hurt virtualization; reading/writing eflags
>> > > > is significant overhead in virtualization on x86 and with LLVM due to
>> > > > those last 2 links we don't have a way to read/write them as
>> > > > efficiently as possible (as GCC).
>> > > >
>> > > > --
>> > > > Thanks,
>> > > > ~Nick Desaulniers
>> >
>> >
>> >
>> > --
>> > Thanks,
>> > ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n%40googlegroups.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkPYociOMPo7cYH2u13-%2BjjweCNWvmN3Erqzgx3cvEWhA%40mail.gmail.com.
