Return-Path: <clang-built-linux+bncBDAY5645XELBB3PR6KEAMGQEHX37X4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0895B3EFDD8
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 09:38:23 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id l31-20020a0568302b1fb0290517c75c0a54sf569573otv.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 00:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xcjzy8EqlSsvR48ZBfiCzYQzC5hM2mZEhdybKBMQtps=;
        b=DDZDsoirZRCXH+e/FSl2/H96IHFeB/srvM3dO7OsV79UlZCcWUZCO7hK6D/6WsJI9C
         Z4/dgXWJOXPE3BfUbEIqvvoqek9Oif9LzcHniuPoWf+5lh4MtFBxwG23PYe5mga5t5dA
         K941O2Z8RdRqNZW/dVoLlEBscPQheX4TCrVtAlLOeNqz/m4p8G5GpwWlGDJQBqupHJwF
         nTOW52WSVft4lxsXT777v9X6RUq9nhPivm+ZYigs4SJZSVx7Blg/oJocqfk6RfTGIvzU
         EI00B1QgJ/v6rVG10SdiGGD7cSTW/fvVWgKTL/wBCVIhGihCbJqrfXMjhygVnPziGG+r
         Idyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xcjzy8EqlSsvR48ZBfiCzYQzC5hM2mZEhdybKBMQtps=;
        b=BX17vyZvrn4Y34KLs7UsPSJpz1SeXT8SzK35Mez2w38/HPWiW/TuxPFcKSP+zJvR/Y
         UvpSeo/v1haNS6nUn4WXWiSTzeydtnAi5LXN6H61FFN3MtWY0ZU9QAUta/7GYHPL0brM
         il4abKD7rE6WyyCbegyw08awzBdluqiBfM+1KiHf84jXh5qhEAQt4SvF1VshzYjm1onb
         vDorpZybRxSod+PprzueZNdNkUyLqubgp9Rz41zEBoQcvxnY/xeM6SW4RE61zkjX9PtB
         Hww+i8hONtu9awK4ZaIupmN8nDw4M0PQ/cKKKz9z/y6AjimFhDsvDb8EFhRgYk+P7P2l
         YVkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xcjzy8EqlSsvR48ZBfiCzYQzC5hM2mZEhdybKBMQtps=;
        b=eoqMVzwm+P54aky3TyIWmHuID4Sk1bnPb8DrPeB3wJ05VPlyiaUvLFCozLgrYZUsZ9
         63qbc5dmgbHzk4gXQCiTTi2nVjd22Z3ur8OWI3vZvUIs3M2ULI/0xkbjo+DNKEwVytFM
         jPEp4LhrKdchdgl5RZMBq5c2VFWQ6KYgNbVNbKIUQVsU6yBpbucVcDY34UA53k04nxTH
         KsMtf+1jvOBk9FnxY00Si7GflIu6+adHEJ84+0dU04Kw8FErAXg/t+qjzGSCw2tBmTGq
         Mn3PvvqGj5b9dMTiuBVS6fFxfxixPCuHke3mo3XpCG65JPhDkon5Hv+rt97RHymFDhUH
         uD9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IjeSiVC41lRPMBQ2dVBOhFDup3szxI8MpjKk6gyz3drDmoj2Q
	5O4xoco5jmxFJmooVMTtfLM=
X-Google-Smtp-Source: ABdhPJy9YRvrz9koQUzX9swo+TzQ6Rxcdy4pjKhvqv25sCzTl/8TULrmEGjQ/NhBlzPCVpzU5hIuXA==
X-Received: by 2002:aca:180c:: with SMTP id h12mr6096947oih.60.1629272302062;
        Wed, 18 Aug 2021 00:38:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2689:: with SMTP id l9ls345249otu.8.gmail; Wed, 18
 Aug 2021 00:38:21 -0700 (PDT)
X-Received: by 2002:a9d:738b:: with SMTP id j11mr5828664otk.297.1629272301546;
        Wed, 18 Aug 2021 00:38:21 -0700 (PDT)
Date: Wed, 18 Aug 2021 00:38:20 -0700 (PDT)
From: Annita Zhang <annita.zhang@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n@googlegroups.com>
In-Reply-To: <CAAt6xTsQpCDWkC+GXrsmS_mfrVSfjLPnOi0ehAzLyZmnf0QoSA@mail.gmail.com>
References: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
 <CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9=eGENHHKhw@mail.gmail.com>
 <CAKwvOdnc3pGLUiKRdHMKUADkqb8OxeL8sKfFKxP5CM0xOb1A4w@mail.gmail.com>
 <CAAt6xTsQpCDWkC+GXrsmS_mfrVSfjLPnOi0ehAzLyZmnf0QoSA@mail.gmail.com>
Subject: Re: painful llvm x86 bugs
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_912_679981406.1629272300875"
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

------=_Part_912_679981406.1629272300875
Content-Type: multipart/alternative; 
	boundary="----=_Part_913_1943751167.1629272300875"

------=_Part_913_1943751167.1629272300875
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

We got the message from Aaron, Andy Kaylor and Fangrui Song. We'd like to 
have a discussion with you for the requirement and specific issues. Can we 
set up a meeting for it?

- Annita

On Wednesday, August 18, 2021 at 1:38:33 AM UTC+8 Aaron Ballman wrote:

> On Tue, Aug 17, 2021 at 1:22 PM Nick Desaulniers
> <ndesau...@google.com> wrote:
> >
> > On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman <aa...@aaronballman.com> 
> wrote:
> > >
> > > On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
> > > <ndesau...@google.com> wrote:
> > > >
> > > > I was doing a bug scrub of
> > > > some of the missing features used by the Linux kernel that GCC
> > > > supports but LLVM doesn't. Is there any chance that you can have some
> > > > folks on Intel's LLVM team take a look at some of the more x86
> > > > specific ones?
> > >
> > > Sure, I can pass these along to folks internally. No guarantees on any
> > > action on them, but I can at least prod folks. Thanks for getting in
> > > touch about them!
> > >
> >
> > Totally; we meet with ARM every other week. I wish we had that
> > relationship with Intel. Once we get a build up of bugs that are very
> > architecture-specific I try to reach out to some of the folks working
> > on those backends. Next up is for me to reach out to Ulrich and
> > Nemanja at IBM about some s390 and PPC bugs.
>
> Ah, that's good to know that you meet regularly with ARM. I've passed
> your list of bugs over to Andy Kaylor internally, but he's not gotten
> back to me about the message yet. So at least the ball is slowly
> starting to roll.
>
> ~Aaron
>
> >
> > >
> > > > * -mno-fp-ret-in-387: https://bugs.llvm.org/show_bug.cgi?id=51498
> > > > * -mskip-rax-setup: https://bugs.llvm.org/show_bug.cgi?id=23258
> > > > * -maccumulate-outgoing-args: 
> https://bugs.llvm.org/show_bug.cgi?id=28145
> > > > * __builtin_ia32_readeflags_u64() unnecessarily forces a frame
> > > > pointer: https://bugs.llvm.org/show_bug.cgi?id=47531
> > > > * Inline asm constraint alternatives ignored:
> > > > https://bugs.llvm.org/show_bug.cgi?id=20197
> > > >
> > > > The last two in particular hurt virtualization; reading/writing 
> eflags
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
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n%40googlegroups.com.

------=_Part_913_1943751167.1629272300875
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nick,<div><br></div><div>We got the message from Aaron, Andy Kaylor and =
Fangrui Song. We'd like to have a discussion with you for the requirement a=
nd specific issues. Can we set up a meeting for it?<div><br></div><div>- An=
nita</div><div><br></div></div><div class=3D"gmail_quote"><div dir=3D"auto"=
 class=3D"gmail_attr">On Wednesday, August 18, 2021 at 1:38:33 AM UTC+8 Aar=
on Ballman wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"marg=
in: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1=
ex;">On Tue, Aug 17, 2021 at 1:22 PM Nick Desaulniers
<br>&lt;<a href data-email-masked rel=3D"nofollow">ndesau...@google.com</a>=
&gt; wrote:
<br>&gt;
<br>&gt; On Tue, Aug 17, 2021 at 3:29 AM Aaron Ballman &lt;<a href data-ema=
il-masked rel=3D"nofollow">aa...@aaronballman.com</a>&gt; wrote:
<br>&gt; &gt;
<br>&gt; &gt; On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
<br>&gt; &gt; &lt;<a href data-email-masked rel=3D"nofollow">ndesau...@goog=
le.com</a>&gt; wrote:
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt;  I was doing a bug scrub of
<br>&gt; &gt; &gt; some of the missing features used by the Linux kernel th=
at GCC
<br>&gt; &gt; &gt; supports but LLVM doesn&#39;t.  Is there any chance that=
 you can have some
<br>&gt; &gt; &gt; folks on Intel&#39;s LLVM team take a look at some of th=
e more x86
<br>&gt; &gt; &gt; specific ones?
<br>&gt; &gt;
<br>&gt; &gt; Sure, I can pass these along to folks internally. No guarante=
es on any
<br>&gt; &gt; action on them, but I can at least prod folks. Thanks for get=
ting in
<br>&gt; &gt; touch about them!
<br>&gt; &gt;
<br>&gt;
<br>&gt; Totally; we meet with ARM every other week.  I wish we had that
<br>&gt; relationship with Intel.  Once we get a build up of bugs that are =
very
<br>&gt; architecture-specific I try to reach out to some of the folks work=
ing
<br>&gt; on those backends.  Next up is for me to reach out to Ulrich and
<br>&gt; Nemanja at IBM about some s390 and PPC bugs.
<br>
<br>Ah, that&#39;s good to know that you meet regularly with ARM. I&#39;ve =
passed
<br>your list of bugs over to Andy Kaylor internally, but he&#39;s not gott=
en
<br>back to me about the message yet. So at least the ball is slowly
<br>starting to roll.
<br>
<br>~Aaron
<br>
<br>&gt;
<br>&gt; &gt;
<br>&gt; &gt; &gt; * -mno-fp-ret-in-387: <a href=3D"https://bugs.llvm.org/s=
how_bug.cgi?id=3D51498" target=3D"_blank" rel=3D"nofollow" data-saferedirec=
turl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://bugs.llvm.org/sh=
ow_bug.cgi?id%3D51498&amp;source=3Dgmail&amp;ust=3D1629358206923000&amp;usg=
=3DAFQjCNFQWZhINASygCNxXf1eJcBheIllIg">https://bugs.llvm.org/show_bug.cgi?i=
d=3D51498</a>
<br>&gt; &gt; &gt; * -mskip-rax-setup: <a href=3D"https://bugs.llvm.org/sho=
w_bug.cgi?id=3D23258" target=3D"_blank" rel=3D"nofollow" data-saferedirectu=
rl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://bugs.llvm.org/show=
_bug.cgi?id%3D23258&amp;source=3Dgmail&amp;ust=3D1629358206923000&amp;usg=
=3DAFQjCNEZqWd_fKgqh7R3YDBMuf2eQxi4hQ">https://bugs.llvm.org/show_bug.cgi?i=
d=3D23258</a>
<br>&gt; &gt; &gt; * -maccumulate-outgoing-args: <a href=3D"https://bugs.ll=
vm.org/show_bug.cgi?id=3D28145" target=3D"_blank" rel=3D"nofollow" data-saf=
eredirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps://bugs.llv=
m.org/show_bug.cgi?id%3D28145&amp;source=3Dgmail&amp;ust=3D1629358206923000=
&amp;usg=3DAFQjCNGalJ9P__ZCG5AvP4O4dsguFwKdRQ">https://bugs.llvm.org/show_b=
ug.cgi?id=3D28145</a>
<br>&gt; &gt; &gt; * __builtin_ia32_readeflags_u64() unnecessarily forces a=
 frame
<br>&gt; &gt; &gt; pointer: <a href=3D"https://bugs.llvm.org/show_bug.cgi?i=
d=3D47531" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https=
://www.google.com/url?hl=3Den&amp;q=3Dhttps://bugs.llvm.org/show_bug.cgi?id=
%3D47531&amp;source=3Dgmail&amp;ust=3D1629358206923000&amp;usg=3DAFQjCNFrHa=
Bwk1p2s2Tc8GWmy7jCyQV_Bg">https://bugs.llvm.org/show_bug.cgi?id=3D47531</a>
<br>&gt; &gt; &gt; * Inline asm constraint alternatives ignored:
<br>&gt; &gt; &gt; <a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D20197=
" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.go=
ogle.com/url?hl=3Den&amp;q=3Dhttps://bugs.llvm.org/show_bug.cgi?id%3D20197&=
amp;source=3Dgmail&amp;ust=3D1629358206923000&amp;usg=3DAFQjCNH-RbGXcADJ63x=
LrskY_p1sXu_fbg">https://bugs.llvm.org/show_bug.cgi?id=3D20197</a>
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt; The last two in particular hurt virtualization; reading/=
writing eflags
<br>&gt; &gt; &gt; is significant overhead in virtualization on x86 and wit=
h LLVM due to
<br>&gt; &gt; &gt; those last 2 links we don&#39;t have a way to read/write=
 them as
<br>&gt; &gt; &gt; efficiently as possible (as GCC).
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt; --
<br>&gt; &gt; &gt; Thanks,
<br>&gt; &gt; &gt; ~Nick Desaulniers
<br>&gt;
<br>&gt;
<br>&gt;
<br>&gt; --
<br>&gt; Thanks,
<br>&gt; ~Nick Desaulniers
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/55b27a4f-67d6-48b9-84ed-e1ab95ae42c0n%40googleg=
roups.com</a>.<br />

------=_Part_913_1943751167.1629272300875--

------=_Part_912_679981406.1629272300875--
