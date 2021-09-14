Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWFFQOFAMGQEFY5UGIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1CD40B544
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 18:50:33 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id v25-20020a2e9919000000b001bc160ab064sf6238489lji.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 09:50:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631638233; cv=pass;
        d=google.com; s=arc-20160816;
        b=uiiIrhxCl6RZN4sVo9bKAiAWhUXks9Qu8nLxY+xcKCSbFhyViFd37zftuzi9OK1b6N
         pQbEv1wjCjsXOE5cLN3oeX5YdYwj1u8akpjZyv9omuKEVSJQAi/WP0MIhkYN5qwYidcV
         4XDdujesp4kHpjp0D/1oiK2+PpQpjfW+8RvCb/rDfPtEx86e9/wDLO4ZaEgHYx3KBTv8
         Pg4Ky1KFkkx9L+g9TBqOo8Ihath60dLWeY3urDj+6RDvGfjbpUeZ+gpw8e2aGgDFmC32
         MEqbUD2P3GKBLgprOLnvFmSoV1tjWC7A65IBkZtRZ1wYiL9/S/PiKLWAHo6WPJuB3mCo
         PnOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EA4EkbVPavep+GxbvK90MwQzcAOfyWoUNnHyaeBxJBo=;
        b=e/02Sd4IEkJJ4FdOos8HgonnxR5G/HJ9u9LUwM/ri0Ps0rl8n/TK5eIrDAvdznZpF1
         EzuwUa7iO6MbTrYoD8qIbrDQzznfKLyLtlCmPFQm75fpBHH7uvrE557X4oZEXSbCNokL
         C1VDL+R7oUfLvQjndKEGXu6TBNqhB6sj6qH4U/4vPjgqHTGK1Z26x6qFX+2E9FtJZ0lk
         q0oq48du+UG3Cb04vlLl3ml7ff+6TEtJeHYyVwXAtkSvmWn57q/zDg9adHE+En4Na1xl
         hRBzDA1HeX+n9ADSmcdeu/0VNKzXV9XoSvJxbDqEUh4qX8q82W7SSh/9UvKs73YqNw6s
         Qe0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Xf+Sc+kB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EA4EkbVPavep+GxbvK90MwQzcAOfyWoUNnHyaeBxJBo=;
        b=KpakfzORn8UFjoLFIhAPCSGADDf+lbvV8s9+LVUH88HkiLMBfj+IOUznbkAAPg1eC8
         nyFEBvwthnv2h3ZiY6p8ktnIb7lioUqEJMdVzQVUY8Y65Ja/MbebMFRWxQrGaiXhP2q3
         je1fKwy447dkHlsnRBPUmOYW7BMc27gCe/xsQ8GFTU3vEaoZA7+QoWPP4vP7aXIbT1+o
         vtFVuBmDEsqZJfKq62GRkeo96BTtqQtHRRIhW92fryAsuccjrSl7bljwZWqfQR2ja0To
         vqsV3PcH2/VFjI4Omdg2tnZbsD9XbVVwBHoDjSdfZOQyZQEm+TNclLpVo9vDKq1MB4GX
         qMUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EA4EkbVPavep+GxbvK90MwQzcAOfyWoUNnHyaeBxJBo=;
        b=S1BDW3CLrVlIZiBajUxfE+85lOFigPB3Ij5KM+zpA+sAFZfxnW265lzDn7VI18LVFN
         WhRRMTTwB/bWx3o+bZjRas6zmb7mIMJG8ctfDgS7AXI34xdz3tS6EdXwUHNT1MzyIyoB
         R1oXEC61FUzK/7Vt3AfIRjXxulRqMo9bACeAg4Bb/w6Jga0UvwAmylRUm95EoRn05pEE
         NDQd0CWvqbJwhFjBM0IOlbR95C//uuac04Hczi8fDysB0hJW2ltEWEeTh3zAjS8jYZ3A
         BG2vhmFy9IB+sxGOsWQcMIViSKRsCEn6riM4UtUMIw3GslHbc+Z250wzSgvuJrKnaTXf
         R1MA==
X-Gm-Message-State: AOAM531rESteMF8N/6+I7a7+PKptKK/m/NsXDdjXuXk55iaBjHHNsEG9
	O6v+u2CRk/YjxZ7nFMmZz8o=
X-Google-Smtp-Source: ABdhPJzAYBv/EGhFOx7tNYXZ9LpiOmVRkrm/Pjs8YyX3RDq6DP3FzQUFhVH6RftIaZFc3pL97LeVow==
X-Received: by 2002:a2e:a413:: with SMTP id p19mr16846618ljn.412.1631638232910;
        Tue, 14 Sep 2021 09:50:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:10e:: with SMTP id a14ls3143057ljb.4.gmail; Tue, 14
 Sep 2021 09:50:32 -0700 (PDT)
X-Received: by 2002:a2e:860e:: with SMTP id a14mr16542619lji.215.1631638231917;
        Tue, 14 Sep 2021 09:50:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631638231; cv=none;
        d=google.com; s=arc-20160816;
        b=e2EDZOoV9Cr7vowxccMN3+F9DdQ2uSEl3MMRWQr/pxzZ6BJVODyk1NSSBD44t8kzRs
         fAr6jvIYMj9Khq6QLYIE1tOjLg4IajXwSOk2J0w2+/JXvX4VRDJhnXtWdT/vJWOpzdtH
         pg0TMM9cE2rZJDW0K/5TER40WRqWW5QVQKa92Yc8WSIhppKMQdW/hUcvESvyuaUtU2tZ
         xwXpsMATf7g4OlZmopMlauyEXsymC9Rn0ex9SDtqILznDE26hvFY5KJXkqr/4lT9HQLN
         toPAi8D71+TMI1IeNo+QBSlBoXTUiK1wBoFilUNJlcqItXpVj56MXCGkMC5eeKAcl6fR
         LNvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nYQ3ZHSQEnTrUvuJsAuD2XlUNVqNvQB63DyH5IBbzFs=;
        b=ac65O/kpZSHXEiPHMIWpcfv8C562W50z6Cjn25x+68yx1PAUoWxVaAP1UWuUZPFWjx
         oxC6a0GLYQv6d3u7N8gMIdvZn0pKQX55e4UYBe0WohG5OCBezsTRkctRP4Wz+FHeHm9g
         ZiHRYGrzbZxrV3DXHoo0KOsmSMUfxleteulEV9tZYgp3IAWAjqf/PMciqt6uwSBgFb9X
         39kJHHRh4rVK0c/1vk3IWLyxQEw1UO/a2kgUoQer7r70jz/Z3CIP0t2cYJgtxn8onba4
         Ls3Ll17HPxNZhwfunW+KYaN/aatpJzNsffrOEf7QATr1FZGuvsWo9fNJ54ZMQ6Uhlpxa
         NmrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Xf+Sc+kB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id e14si1069552lfs.11.2021.09.14.09.50.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 09:50:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id r3so25170217ljc.4
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 09:50:31 -0700 (PDT)
X-Received: by 2002:a2e:8808:: with SMTP id x8mr16802088ljh.220.1631638231368;
 Tue, 14 Sep 2021 09:50:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
 <CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9=eGENHHKhw@mail.gmail.com>
 <CAKwvOdnc3pGLUiKRdHMKUADkqb8OxeL8sKfFKxP5CM0xOb1A4w@mail.gmail.com>
 <CAAt6xTsQpCDWkC+GXrsmS_mfrVSfjLPnOi0ehAzLyZmnf0QoSA@mail.gmail.com>
 <55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n@googlegroups.com> <CAKwvOdkPYociOMPo7cYH2u13-+jjweCNWvmN3Erqzgx3cvEWhA@mail.gmail.com>
 <46627d85-ffe9-4d1b-a90a-611d2f774c47n@googlegroups.com>
In-Reply-To: <46627d85-ffe9-4d1b-a90a-611d2f774c47n@googlegroups.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 09:50:19 -0700
Message-ID: <CAKwvOdm_T+wE=YNJ9bd+v-sZPxmCYwe=frqBFE=6bji55bgV0g@mail.gmail.com>
Subject: Re: painful llvm x86 bugs
To: Annita Zhang <annita.zhang@gmail.com>
Cc: Clang Built Linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=Xf+Sc+kB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c
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

On Thu, Sep 2, 2021 at 11:25 PM Annita Zhang <annita.zhang@gmail.com> wrote:
>
> Hi Nick,
>
> Sorry I missed your email as I was on vacation last Friday. I'm in China time zone. My colleague, Andy Kaylor is in the same time zone with you. I will sync with him and propose some time slots to meet next week. Does it work for you?

Hi Annita,
This week and next week are full of technical conferences for the
Linux kernel; my schedule is packed.  Perhaps we could sync up after?
https://www.timeanddate.com/worldclock/meetingtime.html?iso=20210927&p1=283&p2=33
I'm very happy to meet in the evening or at night (rather than very early).

>
> Thx,
> Annita
>
> On Friday, August 27, 2021 at 1:59:10 AM UTC+8 Nick Desaulniers wrote:
>>
>> On Wed, Aug 18, 2021 at 12:38 AM Annita Zhang <annita...@gmail.com> wrote:
>> >
>> > Hi Nick,
>> >
>> > We got the message from Aaron, Andy Kaylor and Fangrui Song. We'd like to have a discussion with you for the requirement and specific issues. Can we set up a meeting for it?
>>
>> Hi Annita,
>> Sorry for the delay; I took time off while family was in town. Yes,
>> I'd love to set up time to chat more. I'm located in the Pacific time
>> zone; are you? If so, do you have time Tuesday August 31 before noon?
>> Otherwise September 1 after 3pm might work for us. We're also happy
>> to accommodate any timezone differences.
>>
>> >
>> > - Annita
>> >
>> > On Wednesday, August 18, 2021 at 1:38:33 AM UTC+8 Aaron Ballman wrote:
>> >>
>> >> On Tue, Aug 17, 2021 at 1:22 PM Nick Desaulniers
>> >> <ndesau...@google.com> wrote:
>> >> >
>> >> > On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman <aa...@aaronballman.com> wrote:
>> >> > >
>> >> > > On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
>> >> > > <ndesau...@google.com> wrote:
>> >> > > >
>> >> > > > I was doing a bug scrub of
>> >> > > > some of the missing features used by the Linux kernel that GCC
>> >> > > > supports but LLVM doesn't. Is there any chance that you can have some
>> >> > > > folks on Intel's LLVM team take a look at some of the more x86
>> >> > > > specific ones?
>> >> > >
>> >> > > Sure, I can pass these along to folks internally. No guarantees on any
>> >> > > action on them, but I can at least prod folks. Thanks for getting in
>> >> > > touch about them!
>> >> > >
>> >> >
>> >> > Totally; we meet with ARM every other week. I wish we had that
>> >> > relationship with Intel. Once we get a build up of bugs that are very
>> >> > architecture-specific I try to reach out to some of the folks working
>> >> > on those backends. Next up is for me to reach out to Ulrich and
>> >> > Nemanja at IBM about some s390 and PPC bugs.
>> >>
>> >> Ah, that's good to know that you meet regularly with ARM. I've passed
>> >> your list of bugs over to Andy Kaylor internally, but he's not gotten
>> >> back to me about the message yet. So at least the ball is slowly
>> >> starting to roll.
>> >>
>> >> ~Aaron
>> >>
>> >> >
>> >> > >
>> >> > > > * -mno-fp-ret-in-387: https://bugs.llvm.org/show_bug.cgi?id=51498
>> >> > > > * -mskip-rax-setup: https://bugs.llvm.org/show_bug.cgi?id=23258
>> >> > > > * -maccumulate-outgoing-args: https://bugs.llvm.org/show_bug.cgi?id=28145
>> >> > > > * __builtin_ia32_readeflags_u64() unnecessarily forces a frame
>> >> > > > pointer: https://bugs.llvm.org/show_bug.cgi?id=47531
>> >> > > > * Inline asm constraint alternatives ignored:
>> >> > > > https://bugs.llvm.org/show_bug.cgi?id=20197
>> >> > > >
>> >> > > > The last two in particular hurt virtualization; reading/writing eflags
>> >> > > > is significant overhead in virtualization on x86 and with LLVM due to
>> >> > > > those last 2 links we don't have a way to read/write them as
>> >> > > > efficiently as possible (as GCC).
>> >> > > >
>> >> > > > --
>> >> > > > Thanks,
>> >> > > > ~Nick Desaulniers
>> >> >
>> >> >
>> >> >
>> >> > --
>> >> > Thanks,
>> >> > ~Nick Desaulniers
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-li...@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n%40googlegroups.com.
>>
>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/46627d85-ffe9-4d1b-a90a-611d2f774c47n%40googlegroups.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm_T%2BwE%3DYNJ9bd%2Bv-sZPxmCYwe%3DfrqBFE%3D6bji55bgV0g%40mail.gmail.com.
