Return-Path: <clang-built-linux+bncBDAY5645XELBBYX7Y2EQMGQED35ILMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id A519C3FFA5B
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Sep 2021 08:25:39 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id g93-20020a9d12e6000000b0051b1ee4745dsf2463023otg.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Sep 2021 23:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iqCx19mAseSZhVcU+0eO57U7WYBQSIWec+tnJxpwZrU=;
        b=sZUvYibrvZ26nPag7+hUhCpr5jCL0nDXLmQ76CPw/3fEKLcT5IbYKBOikwHSYvkNmn
         lb//SNWQ0eaxYmPh3NWTBduTI8o14VHreBMo35kX/FZCgqBqhf0k4YWrFCwntV2snOed
         xAJSV9kk75z1QXpveOFL2jdXVjlDQNt3wa4LD2katBjVkRgrlTZUV0ujDVs+BBEfLCjv
         Sm/fRo/pk4NHVe7ZjBSD0rcX964QtNAEUKSgW0W+GPkC2waULxvKnGh19jX1ignwKfFd
         NFGzGTcOSH8tLoCiZE9LT/Uc9KIzdmkO3MmrqxVku2UiFzt3CbhVNdrBnagVriKdHFlT
         SxTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iqCx19mAseSZhVcU+0eO57U7WYBQSIWec+tnJxpwZrU=;
        b=T2a2jke7SNZc1gE5N9dwzsO50ayqS+ZPIDuPGkqoVXDhqfAj7Zs3FT9KfwaHBFViam
         k+aKL+gJJQMMKhvzKxGQNaF52XcsekeO/H0BDNcY9C775gHRmjIsTtSgb67jsI00H78i
         Piidg8o+amjGVU/LCcMWCEJ6dLZOdWnVu/E4PjsbSa9kechs+Gw8oiOrYYTbbV1hqnUg
         snHZMytC6uO9JIYm/INymq8Y98moWzINMmq8kkQ4KYHS9tOI5Yrh0KQGGyYluYjt7ws1
         8drHJanPJnEatF4gDgR8opYuKytsN8WlF6T6sECNCE47KchN4RhosaKG8ZaZBWSnKndB
         R/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iqCx19mAseSZhVcU+0eO57U7WYBQSIWec+tnJxpwZrU=;
        b=os0LuwoZexKAMA44TNl78i3RQ7MvMNXRNaiVNmeGfV5WmUVzxzdLOMb/eTwn//m+Zz
         Zvn9yaQ+fRLnKSuzdcJ6Vcj034M4teEmYAnsRhSUJTazByhX4P1ozr4CK/oyEA5MQND3
         NDYto6eUQfsaX7B3NaHnTSyWb3bD7uJ+iD3LtqL/HNHj/moJ865smyjZLOc5NgF3pz5K
         BbTXTOVQ9GYd++GP1aVOTeDHcDIGKPmxsVks+6okdT3ELWgg+jxEVPnTDq19rrKkJnTL
         E+wlloI8iTjjR12N/TSL4J2d/NyvWMNC5H+TNMZpvJsdYBEiHkbqVPqUsVJSdyZsFrpK
         SLrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530x5sVP2nEgacszvLJJNxG0qgTZCVQHD/4G1GAtOMo5utq09azq
	cgREO1/bkYU84QLo3/Ve6nI=
X-Google-Smtp-Source: ABdhPJxY/UgPDzer8OfwFoFb8qlc4mOWdk6zTsYOdhF2WIzpgnxyKRS1YjfLRknSolb9QJQvhXm3SQ==
X-Received: by 2002:a05:6808:8e3:: with SMTP id d3mr1563285oic.92.1630650338263;
        Thu, 02 Sep 2021 23:25:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c15:: with SMTP id o21ls1352036otk.11.gmail; Thu, 02
 Sep 2021 23:25:37 -0700 (PDT)
X-Received: by 2002:a9d:4e98:: with SMTP id v24mr1753203otk.228.1630650337668;
        Thu, 02 Sep 2021 23:25:37 -0700 (PDT)
Date: Thu, 2 Sep 2021 23:25:37 -0700 (PDT)
From: Annita Zhang <annita.zhang@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <46627d85-ffe9-4d1b-a90a-611d2f774c47n@googlegroups.com>
In-Reply-To: <CAKwvOdkPYociOMPo7cYH2u13-+jjweCNWvmN3Erqzgx3cvEWhA@mail.gmail.com>
References: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
 <CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9=eGENHHKhw@mail.gmail.com>
 <CAKwvOdnc3pGLUiKRdHMKUADkqb8OxeL8sKfFKxP5CM0xOb1A4w@mail.gmail.com>
 <CAAt6xTsQpCDWkC+GXrsmS_mfrVSfjLPnOi0ehAzLyZmnf0QoSA@mail.gmail.com>
 <55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n@googlegroups.com>
 <CAKwvOdkPYociOMPo7cYH2u13-+jjweCNWvmN3Erqzgx3cvEWhA@mail.gmail.com>
Subject: Re: painful llvm x86 bugs
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1344_1632987512.1630650337157"
X-Original-Sender: annita.zhang@gmail.com
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

------=_Part_1344_1632987512.1630650337157
Content-Type: multipart/alternative; 
	boundary="----=_Part_1345_1201045562.1630650337157"

------=_Part_1345_1201045562.1630650337157
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

Sorry I missed your email as I was on vacation last Friday. I'm in China 
time zone. My colleague, Andy Kaylor is in the same time zone with you. I 
will sync with him and propose some time slots to meet next week. Does it 
work for you?

Thx,
Annita

On Friday, August 27, 2021 at 1:59:10 AM UTC+8 Nick Desaulniers wrote:

> On Wed, Aug 18, 2021 at 12:38 AM Annita Zhang <annita...@gmail.com> wrote:
> >
> > Hi Nick,
> >
> > We got the message from Aaron, Andy Kaylor and Fangrui Song. We'd like 
> to have a discussion with you for the requirement and specific issues. Can 
> we set up a meeting for it?
>
> Hi Annita,
> Sorry for the delay; I took time off while family was in town. Yes,
> I'd love to set up time to chat more. I'm located in the Pacific time
> zone; are you? If so, do you have time Tuesday August 31 before noon?
> Otherwise September 1 after 3pm might work for us. We're also happy
> to accommodate any timezone differences.
>
> >
> > - Annita
> >
> > On Wednesday, August 18, 2021 at 1:38:33 AM UTC+8 Aaron Ballman wrote:
> >>
> >> On Tue, Aug 17, 2021 at 1:22 PM Nick Desaulniers
> >> <ndesau...@google.com> wrote:
> >> >
> >> > On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman <aa...@aaronballman.com> 
> wrote:
> >> > >
> >> > > On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
> >> > > <ndesau...@google.com> wrote:
> >> > > >
> >> > > > I was doing a bug scrub of
> >> > > > some of the missing features used by the Linux kernel that GCC
> >> > > > supports but LLVM doesn't. Is there any chance that you can have 
> some
> >> > > > folks on Intel's LLVM team take a look at some of the more x86
> >> > > > specific ones?
> >> > >
> >> > > Sure, I can pass these along to folks internally. No guarantees on 
> any
> >> > > action on them, but I can at least prod folks. Thanks for getting in
> >> > > touch about them!
> >> > >
> >> >
> >> > Totally; we meet with ARM every other week. I wish we had that
> >> > relationship with Intel. Once we get a build up of bugs that are very
> >> > architecture-specific I try to reach out to some of the folks working
> >> > on those backends. Next up is for me to reach out to Ulrich and
> >> > Nemanja at IBM about some s390 and PPC bugs.
> >>
> >> Ah, that's good to know that you meet regularly with ARM. I've passed
> >> your list of bugs over to Andy Kaylor internally, but he's not gotten
> >> back to me about the message yet. So at least the ball is slowly
> >> starting to roll.
> >>
> >> ~Aaron
> >>
> >> >
> >> > >
> >> > > > * -mno-fp-ret-in-387: https://bugs.llvm.org/show_bug.cgi?id=51498
> >> > > > * -mskip-rax-setup: https://bugs.llvm.org/show_bug.cgi?id=23258
> >> > > > * -maccumulate-outgoing-args: 
> https://bugs.llvm.org/show_bug.cgi?id=28145
> >> > > > * __builtin_ia32_readeflags_u64() unnecessarily forces a frame
> >> > > > pointer: https://bugs.llvm.org/show_bug.cgi?id=47531
> >> > > > * Inline asm constraint alternatives ignored:
> >> > > > https://bugs.llvm.org/show_bug.cgi?id=20197
> >> > > >
> >> > > > The last two in particular hurt virtualization; reading/writing 
> eflags
> >> > > > is significant overhead in virtualization on x86 and with LLVM 
> due to
> >> > > > those last 2 links we don't have a way to read/write them as
> >> > > > efficiently as possible (as GCC).
> >> > > >
> >> > > > --
> >> > > > Thanks,
> >> > > > ~Nick Desaulniers
> >> >
> >> >
> >> >
> >> > --
> >> > Thanks,
> >> > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google 
> Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to clang-built-li...@googlegroups.com.
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n%40googlegroups.com
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/46627d85-ffe9-4d1b-a90a-611d2f774c47n%40googlegroups.com.

------=_Part_1345_1201045562.1630650337157
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nick,<div><br></div><div>Sorry I missed your email as I was on vacation =
last Friday. I'm in China time zone. My colleague, Andy Kaylor is in the sa=
me time zone with you. I will sync with him and propose some time slots to =
meet next week. Does it work for you?</div><div><br></div><div>Thx,</div><d=
iv>Annita<br><br></div><div class=3D"gmail_quote"><div dir=3D"auto" class=
=3D"gmail_attr">On Friday, August 27, 2021 at 1:59:10 AM UTC+8 Nick Desauln=
iers wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 =
0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">O=
n Wed, Aug 18, 2021 at 12:38 AM Annita Zhang &lt;<a href data-email-masked =
rel=3D"nofollow">annita...@gmail.com</a>&gt; wrote:
<br>&gt;
<br>&gt; Hi Nick,
<br>&gt;
<br>&gt; We got the message from Aaron, Andy Kaylor and Fangrui Song. We&#3=
9;d like to have a discussion with you for the requirement and specific iss=
ues. Can we set up a meeting for it?
<br>
<br>Hi Annita,
<br>Sorry for the delay; I took time off while family was in town.  Yes,
<br>I&#39;d love to set up time to chat more.  I&#39;m located in the Pacif=
ic time
<br>zone; are you? If so, do you have time Tuesday August 31 before noon?
<br>Otherwise September 1 after 3pm might work for us.  We&#39;re also happ=
y
<br>to accommodate any timezone differences.
<br>
<br>&gt;
<br>&gt; - Annita
<br>&gt;
<br>&gt; On Wednesday, August 18, 2021 at 1:38:33 AM UTC+8 Aaron Ballman wr=
ote:
<br>&gt;&gt;
<br>&gt;&gt; On Tue, Aug 17, 2021 at 1:22 PM Nick Desaulniers
<br>&gt;&gt; &lt;<a href data-email-masked rel=3D"nofollow">ndesau...@googl=
e.com</a>&gt; wrote:
<br>&gt;&gt; &gt;
<br>&gt;&gt; &gt; On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman &lt;<a href=
 data-email-masked rel=3D"nofollow">aa...@aaronballman.com</a>&gt; wrote:
<br>&gt;&gt; &gt; &gt;
<br>&gt;&gt; &gt; &gt; On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
<br>&gt;&gt; &gt; &gt; &lt;<a href data-email-masked rel=3D"nofollow">ndesa=
u...@google.com</a>&gt; wrote:
<br>&gt;&gt; &gt; &gt; &gt;
<br>&gt;&gt; &gt; &gt; &gt; I was doing a bug scrub of
<br>&gt;&gt; &gt; &gt; &gt; some of the missing features used by the Linux =
kernel that GCC
<br>&gt;&gt; &gt; &gt; &gt; supports but LLVM doesn&#39;t. Is there any cha=
nce that you can have some
<br>&gt;&gt; &gt; &gt; &gt; folks on Intel&#39;s LLVM team take a look at s=
ome of the more x86
<br>&gt;&gt; &gt; &gt; &gt; specific ones?
<br>&gt;&gt; &gt; &gt;
<br>&gt;&gt; &gt; &gt; Sure, I can pass these along to folks internally. No=
 guarantees on any
<br>&gt;&gt; &gt; &gt; action on them, but I can at least prod folks. Thank=
s for getting in
<br>&gt;&gt; &gt; &gt; touch about them!
<br>&gt;&gt; &gt; &gt;
<br>&gt;&gt; &gt;
<br>&gt;&gt; &gt; Totally; we meet with ARM every other week. I wish we had=
 that
<br>&gt;&gt; &gt; relationship with Intel. Once we get a build up of bugs t=
hat are very
<br>&gt;&gt; &gt; architecture-specific I try to reach out to some of the f=
olks working
<br>&gt;&gt; &gt; on those backends. Next up is for me to reach out to Ulri=
ch and
<br>&gt;&gt; &gt; Nemanja at IBM about some s390 and PPC bugs.
<br>&gt;&gt;
<br>&gt;&gt; Ah, that&#39;s good to know that you meet regularly with ARM. =
I&#39;ve passed
<br>&gt;&gt; your list of bugs over to Andy Kaylor internally, but he&#39;s=
 not gotten
<br>&gt;&gt; back to me about the message yet. So at least the ball is slow=
ly
<br>&gt;&gt; starting to roll.
<br>&gt;&gt;
<br>&gt;&gt; ~Aaron
<br>&gt;&gt;
<br>&gt;&gt; &gt;
<br>&gt;&gt; &gt; &gt;
<br>&gt;&gt; &gt; &gt; &gt; * -mno-fp-ret-in-387: <a href=3D"https://bugs.l=
lvm.org/show_bug.cgi?id=3D51498" target=3D"_blank" rel=3D"nofollow" data-sa=
feredirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://bugs.ll=
vm.org/show_bug.cgi?id%3D51498&amp;source=3Dgmail&amp;ust=3D163073626699400=
0&amp;usg=3DAFQjCNHHsjfYkC8OwtB_3x8q31YwtWwMnA">https://bugs.llvm.org/show_=
bug.cgi?id=3D51498</a>
<br>&gt;&gt; &gt; &gt; &gt; * -mskip-rax-setup: <a href=3D"https://bugs.llv=
m.org/show_bug.cgi?id=3D23258" target=3D"_blank" rel=3D"nofollow" data-safe=
redirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://bugs.llvm=
.org/show_bug.cgi?id%3D23258&amp;source=3Dgmail&amp;ust=3D1630736266994000&=
amp;usg=3DAFQjCNGZRzry_0ncJx7ZgZRVBTzZjgbVeA">https://bugs.llvm.org/show_bu=
g.cgi?id=3D23258</a>
<br>&gt;&gt; &gt; &gt; &gt; * -maccumulate-outgoing-args: <a href=3D"https:=
//bugs.llvm.org/show_bug.cgi?id=3D28145" target=3D"_blank" rel=3D"nofollow"=
 data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps:/=
/bugs.llvm.org/show_bug.cgi?id%3D28145&amp;source=3Dgmail&amp;ust=3D1630736=
266994000&amp;usg=3DAFQjCNEOawQ-ANyg73rU1PUpeZNJjqaBCQ">https://bugs.llvm.o=
rg/show_bug.cgi?id=3D28145</a>
<br>&gt;&gt; &gt; &gt; &gt; * __builtin_ia32_readeflags_u64() unnecessarily=
 forces a frame
<br>&gt;&gt; &gt; &gt; &gt; pointer: <a href=3D"https://bugs.llvm.org/show_=
bug.cgi?id=3D47531" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=
=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://bugs.llvm.org/show_b=
ug.cgi?id%3D47531&amp;source=3Dgmail&amp;ust=3D1630736266994000&amp;usg=3DA=
FQjCNHa2H6ik0UyT5dt_Q5SQKRusqXqYg">https://bugs.llvm.org/show_bug.cgi?id=3D=
47531</a>
<br>&gt;&gt; &gt; &gt; &gt; * Inline asm constraint alternatives ignored:
<br>&gt;&gt; &gt; &gt; &gt; <a href=3D"https://bugs.llvm.org/show_bug.cgi?i=
d=3D20197" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https=
://www.google.com/url?hl=3Den&amp;q=3Dhttps://bugs.llvm.org/show_bug.cgi?id=
%3D20197&amp;source=3Dgmail&amp;ust=3D1630736266994000&amp;usg=3DAFQjCNHuoq=
hEPcZb2ikWDzpU1s_WN20q5w">https://bugs.llvm.org/show_bug.cgi?id=3D20197</a>
<br>&gt;&gt; &gt; &gt; &gt;
<br>&gt;&gt; &gt; &gt; &gt; The last two in particular hurt virtualization;=
 reading/writing eflags
<br>&gt;&gt; &gt; &gt; &gt; is significant overhead in virtualization on x8=
6 and with LLVM due to
<br>&gt;&gt; &gt; &gt; &gt; those last 2 links we don&#39;t have a way to r=
ead/write them as
<br>&gt;&gt; &gt; &gt; &gt; efficiently as possible (as GCC).
<br>&gt;&gt; &gt; &gt; &gt;
<br>&gt;&gt; &gt; &gt; &gt; --
<br>&gt;&gt; &gt; &gt; &gt; Thanks,
<br>&gt;&gt; &gt; &gt; &gt; ~Nick Desaulniers
<br>&gt;&gt; &gt;
<br>&gt;&gt; &gt;
<br>&gt;&gt; &gt;
<br>&gt;&gt; &gt; --
<br>&gt;&gt; &gt; Thanks,
<br>&gt;&gt; &gt; ~Nick Desaulniers
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;Clang Built Linux&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href data-email-masked rel=3D"nofollow">clang-built-li.=
..@googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n=
%40googlegroups.com" target=3D"_blank" rel=3D"nofollow" data-saferedirectur=
l=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://groups.google.com/d=
/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n%2540googlegr=
oups.com&amp;source=3Dgmail&amp;ust=3D1630736266994000&amp;usg=3DAFQjCNG0bc=
g5AaxRWLaGGTizSNutwTIpeQ">https://groups.google.com/d/msgid/clang-built-lin=
ux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n%40googlegroups.com</a>.
<br>
<br>
<br>
<br>--=20
<br>Thanks,
<br>~Nick Desaulniers
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/46627d85-ffe9-4d1b-a90a-611d2f774c47n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/46627d85-ffe9-4d1b-a90a-611d2f774c47n%40googleg=
roups.com</a>.<br />

------=_Part_1345_1201045562.1630650337157--

------=_Part_1344_1632987512.1630650337157--
