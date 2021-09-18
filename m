Return-Path: <clang-built-linux+bncBDAY5645XELBBMV4S2FAMGQELGUDT5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8B64104F7
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Sep 2021 10:07:15 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id bq3-20020a056512150300b003ee49c29389sf8591197lfb.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Sep 2021 01:07:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631952435; cv=pass;
        d=google.com; s=arc-20160816;
        b=TyF+bJfBZpgHsthQTeUYK0H9Q3CwEN9V7dI0JxzDVcPOHfA84LXRZHbkrFe2FGRxr1
         V4sgoIZ9CBzBerMxmPX76KkZKwzbBCY/rRQSsyRWarHrxn7vLpxg98b0MwSwN5H0lXFp
         LfNu3JpYml9bQ9ZqHR0O4RSHmLLGZ1044O/TKtmuaat78+FrbDeYzQEnk0UmQuvH6jo1
         grcZhHYt8pvlGsUqfTWH1FjfibW0LG1ScJxDjedNUOdHGVWYgjbpFbNJYGktyZLzvKtu
         vHR+glQptPEkAl2NYYz8kikP9pggqXN4nhJmPtldvY+ZQrmNBlXM7M9dJCzHCnUf6y4C
         J5TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=oIiRmi/alZitKtopD8fp7vPnOIRleK3JL4rNp8erpKY=;
        b=adAHn25YkwfjLOmVvcbz1+s+a1N/Ds3OURX9ZXdk5BADSPxZuf4s5CMqNxCSadnKTY
         GRClaG/Z+Puu3yIEhre7RX8lVTLQMEZM7yVOCpA2OASscBFKtcmxtAenaCJ1u8K+ZuBb
         sDLC/8ddRANoXlI82bkaUvsRWA/oj/EWDWqej1FXjKWWZSPzLoNIDI5UFqFQzyaAesjG
         /JigGNkwdWCOd1FjRr6AqnD2OPW+f1fdQPdOKWVX9KCHOZQaJztYBlYZ1JY26c0DoLFo
         UBvrjD+PPAFx8dNCbuS63BiiMDO8vO+cSU8uVnwr8/rRU22aGtJn1kscXOn2YVdYuP2x
         aS9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=WEfKZd6p;
       spf=pass (google.com: domain of annita.zhang@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=annita.zhang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oIiRmi/alZitKtopD8fp7vPnOIRleK3JL4rNp8erpKY=;
        b=t4rAIz2h/3AVGAWwBXSm8SF56uumIViJMzJGVNBeDzJJ+VrfNpmFmgfp5ztI76bzv8
         veYO5PxOBTvDJse7dXFRk3MNwC7u0d22u1xipisGQGgMltEH5nSGtyi0X1ia7NcBPH4i
         Bp86TdjMI3ffskJT9GDrDePseAVno8t/hasDd1uhOt0xcPH/mViuoR1ZSqQNSmPJsIV0
         QjFZ7JXZietbaLSUVSrBknwi1vN7rnYjgaa7C0t+yKR47Fv1goxvPw5dsgCZP/EjeXAc
         8mVLCQZWqOFBtCNIa1/Q3D0THjAIWSQ5hpADGd2OROslPe+whoQIBgFwMO9u4Plz+6bF
         67Nw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oIiRmi/alZitKtopD8fp7vPnOIRleK3JL4rNp8erpKY=;
        b=bfnHOtLMCYtmHjHkLn295HJA7Wm3v9U2mzkRJs+2nmGAzSknOD8oymbEecRWSN2tsG
         z9Aojcz92MyMVEBACt+YlzMsGUwMWpPn/OdYX3m8tbW2vctzkHqlrm4oPcF0Gu1jH4Tg
         PPiJs88dKZ3TxQtWz2mKYy8dvpxZwW1wDkS/RbNx2+tPFFe/0D2FCrwqb7Sey4ZYb73T
         PJFEK5rMphNNNhj+CSJgWU9JfsI4968w/d5TJHrdsgCvhWgoWMkxmXfy/bTBHBH6h+9R
         dJX6zXT45ptqv6o46hqZ1MX3LUcYYBimWJqQ7KtaGJFDt7x+1DmWe1Pq9LZyNnQHrbvc
         tmHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oIiRmi/alZitKtopD8fp7vPnOIRleK3JL4rNp8erpKY=;
        b=4c5FAptj6yLNzwrVvZEx+sT28pAiOn42IZleGdLmRfx72Q101JB9xxkRZK5QVQBKOw
         4Zq9Q56i/w+SB8e+mcqyZ3wFAFVZ8kyTFPl11e8WKb9agA31bxGY5OwHz+8s5W6D3k2Y
         qu+g4wiOoTg1HmN87J548eJdEP2lWx7KAR1uJS879uH5NMh+AIQ5fI8TshteI1W13b+d
         lGimid2ig+90qA2FophVMfc4FV87XlCMoyWuqlWuZ6t7W54D/rqoWBJLBfZo6VUcwZgm
         lcD5rqxiRh6X66lfoWSLKAxWhoPgP2VZE5S/Wnw/qZfG59FwJT08cM4Fz4TIyL9hUWL5
         Ycpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DUejDRwRwxA5KKGIbGDmweG/nzLIqf2BIh3e9Wskys131Dap/
	GG8Ya5SsYcRYMxRT9O9E0OM=
X-Google-Smtp-Source: ABdhPJy/0iueNUiFAexfkxWn+FmUkMFvuPYuUopwjP4LFtkfhs/pWSycMbPWcV170Roz9o7t6TIzKg==
X-Received: by 2002:ac2:4e10:: with SMTP id e16mr3495124lfr.632.1631952434929;
        Sat, 18 Sep 2021 01:07:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:aa14:: with SMTP id bf20ls211258ljb.7.gmail; Sat, 18 Sep
 2021 01:07:13 -0700 (PDT)
X-Received: by 2002:a2e:b001:: with SMTP id y1mr13392920ljk.360.1631952433769;
        Sat, 18 Sep 2021 01:07:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631952433; cv=none;
        d=google.com; s=arc-20160816;
        b=0r1xSPWfJ5GBY0yFWggLoPXSXoPn8ZX0Gf+bID0i2ymu7OQYqVdJGe9Z1GeNhy7pAy
         5BQIVNAt3G6fJaxVPCYWZ9VdrWBWlN7xKTjxj8dKIHrZ77GZ6hh8xs3BpdcYEl4q15RD
         Si6rW3Yl0GOqO4paki5sQpjl8SwvaxE8h4bjyqYsYDvW3lgRj7Dkt3XRS1IptoCDbWdg
         CFGkh/WsIYyqI2RqJOyL5FZPBrOk9WuUsXnqh5XcbGk/auMtzCTsPxqQaIrqs54g/qhD
         aV1J/A0aD+SPwDi6ZhpT0mNj/TmoRR4DcrpnXsATpjifL9bMVh2K6nczVcYNIBd+r3t4
         o5Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=T7oVXIrHG8XzfV11fpQONkEy7jiVYOVi+LZwQQJ3iXA=;
        b=EaulxeXcijRy28oH4Qsv2mlQ4VS5nqmvfOYrHPvzMJgjsLhb2W+zWZ35VuF4ImaZnd
         RQaS26tdPu1IxbJpqPYgiQ75cEGjuX3IY5H95kgXOLLIpZPDHAChvFNLJspw1oAG06+S
         D/Y6MrN/CxQ9wBsTAmmWiEHVaGetv4hMeLDg8NH4xibChnDNw0rYcHsQdLrFWzk3LVqs
         bhcJvPQ8dcL71cXmsCX4P3csSs5X2M/NynRlI3TT0uneN49O7soxVNqTTcHGYGDajX/v
         C2AcxL+DceI217UnslFey1/PLX5pleaCrPzrSFjfVpp4qm2KrwI2eHP9ia3ioPt6C1vp
         PKfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=WEfKZd6p;
       spf=pass (google.com: domain of annita.zhang@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=annita.zhang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id e17si803714ljo.2.2021.09.18.01.07.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Sep 2021 01:07:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of annita.zhang@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Received: by mail-ed1-x532.google.com with SMTP id v22so34587057edd.11
        for <clang-built-linux@googlegroups.com>; Sat, 18 Sep 2021 01:07:13 -0700 (PDT)
X-Received: by 2002:a17:906:1b15:: with SMTP id o21mr17330777ejg.473.1631952433406;
 Sat, 18 Sep 2021 01:07:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
 <CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9=eGENHHKhw@mail.gmail.com>
 <CAKwvOdnc3pGLUiKRdHMKUADkqb8OxeL8sKfFKxP5CM0xOb1A4w@mail.gmail.com>
 <CAAt6xTsQpCDWkC+GXrsmS_mfrVSfjLPnOi0ehAzLyZmnf0QoSA@mail.gmail.com>
 <55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n@googlegroups.com> <CAKwvOdkPYociOMPo7cYH2u13-+jjweCNWvmN3Erqzgx3cvEWhA@mail.gmail.com>
 <46627d85-ffe9-4d1b-a90a-611d2f774c47n@googlegroups.com> <CAKwvOdm_T+wE=YNJ9bd+v-sZPxmCYwe=frqBFE=6bji55bgV0g@mail.gmail.com>
In-Reply-To: <CAKwvOdm_T+wE=YNJ9bd+v-sZPxmCYwe=frqBFE=6bji55bgV0g@mail.gmail.com>
From: Annita Zhang <annita.zhang@gmail.com>
Date: Sat, 18 Sep 2021 16:07:01 +0800
Message-ID: <CANtBnQcfE+FVt+AsyoqbM=w+1xX68cbJofjROopzQ13pbSzoUA@mail.gmail.com>
Subject: Re: painful llvm x86 bugs
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Clang Built Linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000015654905cc4089af"
X-Original-Sender: annita.zhang@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=WEfKZd6p;       spf=pass
 (google.com: domain of annita.zhang@gmail.com designates 2a00:1450:4864:20::532
 as permitted sender) smtp.mailfrom=annita.zhang@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--00000000000015654905cc4089af
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

I talked to Andy Kaylor. He plans to schedule a meeting with you, me and
Pengfei. Since you are busy these 2 weeks, I think we can meet in ww40. @
andrew.kaylor@intel.com

Thx,
Annita

On Wed, Sep 15, 2021 at 12:50 AM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Thu, Sep 2, 2021 at 11:25 PM Annita Zhang <annita.zhang@gmail.com>
> wrote:
> >
> > Hi Nick,
> >
> > Sorry I missed your email as I was on vacation last Friday. I'm in China
> time zone. My colleague, Andy Kaylor is in the same time zone with you. I
> will sync with him and propose some time slots to meet next week. Does it
> work for you?
>
> Hi Annita,
> This week and next week are full of technical conferences for the
> Linux kernel; my schedule is packed.  Perhaps we could sync up after?
>
> https://www.timeanddate.com/worldclock/meetingtime.html?iso=20210927&p1=283&p2=33
> I'm very happy to meet in the evening or at night (rather than very early).
>
> >
> > Thx,
> > Annita
> >
> > On Friday, August 27, 2021 at 1:59:10 AM UTC+8 Nick Desaulniers wrote:
> >>
> >> On Wed, Aug 18, 2021 at 12:38 AM Annita Zhang <annita...@gmail.com>
> wrote:
> >> >
> >> > Hi Nick,
> >> >
> >> > We got the message from Aaron, Andy Kaylor and Fangrui Song. We'd
> like to have a discussion with you for the requirement and specific issues.
> Can we set up a meeting for it?
> >>
> >> Hi Annita,
> >> Sorry for the delay; I took time off while family was in town. Yes,
> >> I'd love to set up time to chat more. I'm located in the Pacific time
> >> zone; are you? If so, do you have time Tuesday August 31 before noon?
> >> Otherwise September 1 after 3pm might work for us. We're also happy
> >> to accommodate any timezone differences.
> >>
> >> >
> >> > - Annita
> >> >
> >> > On Wednesday, August 18, 2021 at 1:38:33 AM UTC+8 Aaron Ballman wrote:
> >> >>
> >> >> On Tue, Aug 17, 2021 at 1:22 PM Nick Desaulniers
> >> >> <ndesau...@google.com> wrote:
> >> >> >
> >> >> > On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman <
> aa...@aaronballman.com> wrote:
> >> >> > >
> >> >> > > On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
> >> >> > > <ndesau...@google.com> wrote:
> >> >> > > >
> >> >> > > > I was doing a bug scrub of
> >> >> > > > some of the missing features used by the Linux kernel that GCC
> >> >> > > > supports but LLVM doesn't. Is there any chance that you can
> have some
> >> >> > > > folks on Intel's LLVM team take a look at some of the more x86
> >> >> > > > specific ones?
> >> >> > >
> >> >> > > Sure, I can pass these along to folks internally. No guarantees
> on any
> >> >> > > action on them, but I can at least prod folks. Thanks for
> getting in
> >> >> > > touch about them!
> >> >> > >
> >> >> >
> >> >> > Totally; we meet with ARM every other week. I wish we had that
> >> >> > relationship with Intel. Once we get a build up of bugs that are
> very
> >> >> > architecture-specific I try to reach out to some of the folks
> working
> >> >> > on those backends. Next up is for me to reach out to Ulrich and
> >> >> > Nemanja at IBM about some s390 and PPC bugs.
> >> >>
> >> >> Ah, that's good to know that you meet regularly with ARM. I've passed
> >> >> your list of bugs over to Andy Kaylor internally, but he's not gotten
> >> >> back to me about the message yet. So at least the ball is slowly
> >> >> starting to roll.
> >> >>
> >> >> ~Aaron
> >> >>
> >> >> >
> >> >> > >
> >> >> > > > * -mno-fp-ret-in-387:
> https://bugs.llvm.org/show_bug.cgi?id=51498
> >> >> > > > * -mskip-rax-setup:
> https://bugs.llvm.org/show_bug.cgi?id=23258
> >> >> > > > * -maccumulate-outgoing-args:
> https://bugs.llvm.org/show_bug.cgi?id=28145
> >> >> > > > * __builtin_ia32_readeflags_u64() unnecessarily forces a frame
> >> >> > > > pointer: https://bugs.llvm.org/show_bug.cgi?id=47531
> >> >> > > > * Inline asm constraint alternatives ignored:
> >> >> > > > https://bugs.llvm.org/show_bug.cgi?id=20197
> >> >> > > >
> >> >> > > > The last two in particular hurt virtualization;
> reading/writing eflags
> >> >> > > > is significant overhead in virtualization on x86 and with LLVM
> due to
> >> >> > > > those last 2 links we don't have a way to read/write them as
> >> >> > > > efficiently as possible (as GCC).
> >> >> > > >
> >> >> > > > --
> >> >> > > > Thanks,
> >> >> > > > ~Nick Desaulniers
> >> >> >
> >> >> >
> >> >> >
> >> >> > --
> >> >> > Thanks,
> >> >> > ~Nick Desaulniers
> >> >
> >> > --
> >> > You received this message because you are subscribed to the Google
> Groups "Clang Built Linux" group.
> >> > To unsubscribe from this group and stop receiving emails from it,
> send an email to clang-built-li...@googlegroups.com.
> >> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n%40googlegroups.com
> .
> >>
> >>
> >>
> >> --
> >> Thanks,
> >> ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/46627d85-ffe9-4d1b-a90a-611d2f774c47n%40googlegroups.com
> .
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANtBnQcfE%2BFVt%2BAsyoqbM%3Dw%2B1xX68cbJofjROopzQ13pbSzoUA%40mail.gmail.com.

--00000000000015654905cc4089af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Nick,<div><br></div><div>I talked to Andy Kaylor. He pl=
ans to schedule a meeting with you, me and Pengfei. Since you are busy thes=
e=C2=A02 weeks, I think we can meet in ww40.=C2=A0@<a href=3D"mailto:andrew=
.kaylor@intel.com">andrew.kaylor@intel.com</a></div><div><br></div><div>Thx=
,</div><div>Annita</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Sep 15, 2021 at 12:50 AM Nick Desaulniers &=
lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Thu=
, Sep 2, 2021 at 11:25 PM Annita Zhang &lt;<a href=3D"mailto:annita.zhang@g=
mail.com" target=3D"_blank">annita.zhang@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Nick,<br>
&gt;<br>
&gt; Sorry I missed your email as I was on vacation last Friday. I&#39;m in=
 China time zone. My colleague, Andy Kaylor is in the same time zone with y=
ou. I will sync with him and propose some time slots to meet next week. Doe=
s it work for you?<br>
<br>
Hi Annita,<br>
This week and next week are full of technical conferences for the<br>
Linux kernel; my schedule is packed.=C2=A0 Perhaps we could sync up after?<=
br>
<a href=3D"https://www.timeanddate.com/worldclock/meetingtime.html?iso=3D20=
210927&amp;p1=3D283&amp;p2=3D33" rel=3D"noreferrer" target=3D"_blank">https=
://www.timeanddate.com/worldclock/meetingtime.html?iso=3D20210927&amp;p1=3D=
283&amp;p2=3D33</a><br>
I&#39;m very happy to meet in the evening or at night (rather than very ear=
ly).<br>
<br>
&gt;<br>
&gt; Thx,<br>
&gt; Annita<br>
&gt;<br>
&gt; On Friday, August 27, 2021 at 1:59:10 AM UTC+8 Nick Desaulniers wrote:=
<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Aug 18, 2021 at 12:38 AM Annita Zhang &lt;<a href=3D"mailt=
o:annita...@gmail.com" target=3D"_blank">annita...@gmail.com</a>&gt; wrote:=
<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi Nick,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; We got the message from Aaron, Andy Kaylor and Fangrui Song. =
We&#39;d like to have a discussion with you for the requirement and specifi=
c issues. Can we set up a meeting for it?<br>
&gt;&gt;<br>
&gt;&gt; Hi Annita,<br>
&gt;&gt; Sorry for the delay; I took time off while family was in town. Yes=
,<br>
&gt;&gt; I&#39;d love to set up time to chat more. I&#39;m located in the P=
acific time<br>
&gt;&gt; zone; are you? If so, do you have time Tuesday August 31 before no=
on?<br>
&gt;&gt; Otherwise September 1 after 3pm might work for us. We&#39;re also =
happy<br>
&gt;&gt; to accommodate any timezone differences.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; - Annita<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wednesday, August 18, 2021 at 1:38:33 AM UTC+8 Aaron Ballm=
an wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Tue, Aug 17, 2021 at 1:22 PM Nick Desaulniers<br>
&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:ndesau...@google.com" target=3D"_bl=
ank">ndesau...@google.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman &lt;<a=
 href=3D"mailto:aa...@aaronballman.com" target=3D"_blank">aa...@aaronballma=
n.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulnier=
s<br>
&gt;&gt; &gt;&gt; &gt; &gt; &lt;<a href=3D"mailto:ndesau...@google.com" tar=
get=3D"_blank">ndesau...@google.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; I was doing a bug scrub of<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; some of the missing features used by the L=
inux kernel that GCC<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; supports but LLVM doesn&#39;t. Is there an=
y chance that you can have some<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; folks on Intel&#39;s LLVM team take a look=
 at some of the more x86<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; specific ones?<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; Sure, I can pass these along to folks internall=
y. No guarantees on any<br>
&gt;&gt; &gt;&gt; &gt; &gt; action on them, but I can at least prod folks. =
Thanks for getting in<br>
&gt;&gt; &gt;&gt; &gt; &gt; touch about them!<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Totally; we meet with ARM every other week. I wish w=
e had that<br>
&gt;&gt; &gt;&gt; &gt; relationship with Intel. Once we get a build up of b=
ugs that are very<br>
&gt;&gt; &gt;&gt; &gt; architecture-specific I try to reach out to some of =
the folks working<br>
&gt;&gt; &gt;&gt; &gt; on those backends. Next up is for me to reach out to=
 Ulrich and<br>
&gt;&gt; &gt;&gt; &gt; Nemanja at IBM about some s390 and PPC bugs.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Ah, that&#39;s good to know that you meet regularly with =
ARM. I&#39;ve passed<br>
&gt;&gt; &gt;&gt; your list of bugs over to Andy Kaylor internally, but he&=
#39;s not gotten<br>
&gt;&gt; &gt;&gt; back to me about the message yet. So at least the ball is=
 slowly<br>
&gt;&gt; &gt;&gt; starting to roll.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; ~Aaron<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; * -mno-fp-ret-in-387: <a href=3D"https://b=
ugs.llvm.org/show_bug.cgi?id=3D51498" rel=3D"noreferrer" target=3D"_blank">=
https://bugs.llvm.org/show_bug.cgi?id=3D51498</a><br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; * -mskip-rax-setup: <a href=3D"https://bug=
s.llvm.org/show_bug.cgi?id=3D23258" rel=3D"noreferrer" target=3D"_blank">ht=
tps://bugs.llvm.org/show_bug.cgi?id=3D23258</a><br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; * -maccumulate-outgoing-args: <a href=3D"h=
ttps://bugs.llvm.org/show_bug.cgi?id=3D28145" rel=3D"noreferrer" target=3D"=
_blank">https://bugs.llvm.org/show_bug.cgi?id=3D28145</a><br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; * __builtin_ia32_readeflags_u64() unnecess=
arily forces a frame<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; pointer: <a href=3D"https://bugs.llvm.org/=
show_bug.cgi?id=3D47531" rel=3D"noreferrer" target=3D"_blank">https://bugs.=
llvm.org/show_bug.cgi?id=3D47531</a><br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; * Inline asm constraint alternatives ignor=
ed:<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; <a href=3D"https://bugs.llvm.org/show_bug.=
cgi?id=3D20197" rel=3D"noreferrer" target=3D"_blank">https://bugs.llvm.org/=
show_bug.cgi?id=3D20197</a><br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; The last two in particular hurt virtualiza=
tion; reading/writing eflags<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; is significant overhead in virtualization =
on x86 and with LLVM due to<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; those last 2 links we don&#39;t have a way=
 to read/write them as<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; efficiently as possible (as GCC).<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; --<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; Thanks,<br>
&gt;&gt; &gt;&gt; &gt; &gt; &gt; ~Nick Desaulniers<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt; &gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt;&gt; &gt; ~Nick Desaulniers<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; You received this message because you are subscribed to the G=
oogle Groups &quot;Clang Built Linux&quot; group.<br>
&gt;&gt; &gt; To unsubscribe from this group and stop receiving emails from=
 it, send an email to <a href=3D"mailto:clang-built-li...@googlegroups.com"=
 target=3D"_blank">clang-built-li...@googlegroups.com</a>.<br>
&gt;&gt; &gt; To view this discussion on the web visit <a href=3D"https://g=
roups.google.com/d/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae=
42c0n%40googlegroups.com" rel=3D"noreferrer" target=3D"_blank">https://grou=
ps.google.com/d/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c=
0n%40googlegroups.com</a>.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Thanks,<br>
&gt;&gt; ~Nick Desaulniers<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;Clang Built Linux&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups=
.com" target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.=
<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/clang-built-linux/46627d85-ffe9-4d1b-a90a-611d2f774c47n%40g=
ooglegroups.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google=
.com/d/msgid/clang-built-linux/46627d85-ffe9-4d1b-a90a-611d2f774c47n%40goog=
legroups.com</a>.<br>
<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CANtBnQcfE%2BFVt%2BAsyoqbM%3Dw%2B1xX68cbJofjRO=
opzQ13pbSzoUA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">http=
s://groups.google.com/d/msgid/clang-built-linux/CANtBnQcfE%2BFVt%2BAsyoqbM%=
3Dw%2B1xX68cbJofjROopzQ13pbSzoUA%40mail.gmail.com</a>.<br />

--00000000000015654905cc4089af--
