Return-Path: <clang-built-linux+bncBDXZPHUMZQCBBKEVV36QKGQERBSURQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F1F2AE941
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 07:54:33 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id j129sf326695vkb.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 22:54:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605077672; cv=pass;
        d=google.com; s=arc-20160816;
        b=gQWELZMU6UPW3+MR8U1k6nCtuAY6Z0z5Pqp0GNKyngUbkHjamouu61skNwqXzEtfGl
         WeSp/BMDcb61DbaCNDP0AEyDW1Tn2zjVkgF2/jqLRMNjNreZQPtLWnr30y9+GKVjVQ7h
         u6nw3uXVHnsOH4HM4YCtH0h2Exp3fcPFpsaEJfer9XmkAOOzW5N7euMlgL2itZ1PWqPz
         qRVJwB//5JjowhkbcCkbBUd6MRw3gwdyRFeGCAW2p4xtybs8aRwj5S3x8z0l8cjI3gRH
         FCndovQuhn1z66teZAwv8sK89LTxDdktX4xc1Zhb+ACySrWAdMQQTHXKvH6U13ocenwZ
         bjhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=InXNQaDcvzLR0IJyDOWSQOY8V10YWxPmGlG3X2Zf9VY=;
        b=zWpro+IwhLZkViG5TrcQqNrosUshQhYamWrnnfAZPVk2q8MYJTo9hpt9pFxhHjB+8p
         io2t8YZ2muVJ4idHUWrLCjqWVeH39grNt9CqqO0arH+bLlO6sybP2VquPtO37Yfow7zY
         CXHtY1IvsWXHlVwSjYGhMSnHBe4qVCtXlmhkMK+hm5EjZ2H0BYRibMzaa1Y4LHbhCOJH
         wHvza1F8dK738MjvVw+mlGJpRgEoCYpbKDahaKXRv+jRlAROWa5CwRCLdgVU5jsmqyim
         RVnI+j9QjzmQJK1QsAu7M6GsiqzOIfTRcDQHBowSQbvpLXEHtcJpuyVSTh9hfbocZ+T8
         kMqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S1+dxiF5;
       spf=pass (google.com: domain of tpgxyz@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=tpgxyz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=InXNQaDcvzLR0IJyDOWSQOY8V10YWxPmGlG3X2Zf9VY=;
        b=TITBBuV/8Ql5GllV2tfQg5rjfZV1QGO1Hp/idjze8uPW5Fpi2dVsniBprtovPmm4LQ
         TvFDOJxiBO3CNil9K68MoYp6yN4NgvLBU+3bH/xf0wU/eXLbHboB3Q//EJmPBdJu1NHC
         kJxPX8JnWShGthtVRn87Oj1D0HixJcxIAbk1hladrJ+xtf0gepxuX/V85Max5Hg2gPuH
         iNr7Q08OVb+C0N+g/mHtB0mbJfB6q78xnqkLf/4xyBQWezeZe4VohpsCmQE0KelgvooN
         eGFeQSTxjUQ0Mvy6gBZpEzZYLZcgxrY+wlSNcaJe/5abH8GOi4i4r8La9tmNBzaWxNFb
         RU/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=InXNQaDcvzLR0IJyDOWSQOY8V10YWxPmGlG3X2Zf9VY=;
        b=kVE/0qVyHvDrVHwOF0UCLQdvkRuoEQ6sDlc6z1LgOKr3KPBGoqMYmhVOBrP+0CdNLr
         HIEr9uSyD42Qha9ufolBWOWYcGJLxxDNC4VjSQtr7Tlmms/N/Ne/ZXCCmIvCQOrbeljB
         xhXCfqql8tiuCG7UouBgv9wXz1vA1Isk5JYzgttKgaV+phgPhmf9gqSEvZTtKjh19Ifo
         vCMxtJwRnPOrUKSb+YouoEtoaU90IkabiFS0nOk8/GOg+cSoymnBWPcjeGUm0zeArxJy
         Lp3Gy6MWKK9SEGzRI1wxjyh7zWn3OuUlpbPQ+Zua+H0GXEDXH/1zS4OWkSKL/wWesGiW
         4I0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=InXNQaDcvzLR0IJyDOWSQOY8V10YWxPmGlG3X2Zf9VY=;
        b=APY9l2P2XkwWzeNbdgfAV96/Kx9fMA6hHCUYLPyBUi3IjEKFOn3jTU9sGw7Bbk8F3a
         m5ta25oChFItHDnxWnTSYA9d3mMTIzcDDgrdMojJt8fWt/D2giERfSTHiBGT4dse+8VY
         b/2GJhsdaC3REEc4PrTBJewmWd4FO+sXxX0rV9WWbAMQ22USP0v6z+R83e8czt1TDk27
         slI57r1YstJU81gkzBt6XPSnckrXiJK2kuAW5cLMEVNY1aOlVl0+cXPzWv04Tv3sqg16
         A2pKPy1t800CMNbepb+OvqteFYg2OFzBXWRc8NIXa594ObjpBUD0i9Esbyk0YHbyaqPW
         P53Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RKMYnHkxaePht4N2NK8kcKN79TMreMbALDk6RNLIr8z4KQrDp
	3A7UixxkqRjFmlv4N9ShPJU=
X-Google-Smtp-Source: ABdhPJzfnbtu2Quf19I0bpqgItMCYR7tyiqiYrU3maWaIvVkntnSpcCvpXbiVECVMa+rrT7qlGqBAw==
X-Received: by 2002:a67:ead4:: with SMTP id s20mr13146531vso.23.1605077672704;
        Tue, 10 Nov 2020 22:54:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ef8c:: with SMTP id r12ls1799339vsp.7.gmail; Tue, 10 Nov
 2020 22:54:32 -0800 (PST)
X-Received: by 2002:a05:6102:2439:: with SMTP id l25mr15060364vsi.44.1605077672169;
        Tue, 10 Nov 2020 22:54:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605077672; cv=none;
        d=google.com; s=arc-20160816;
        b=heXA+TMSJukZpSQtwUtpdk4YpYJHd5bBejbwMPJXLjkdNgMIkWDDee/JauM37EG0N7
         kZivMvliavKtOIIFwA7ugF0v7TUxyxZMinLS4uy7raNg0ArIoihZhIwS0RL7pSjC7anI
         g5xI1rsBS7RIKvOa3SPoWdVzuX+GUQ0eflkJiypZozwst90GNiJjAg00KkgM5mvcqryl
         KoaszoEY3+ejtm7z0a6VmWexxfHSUAwkh9aw28lR8chRRrmB/VVA82PfnL3NCfXgzFpc
         xk6fNtETXrxz7pmFitaHT3nj6DWuiZvF1ONQUaN95aQnJC/Nf+czovkIKEOjhrTvoMIF
         O2Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LbE4svx818pqhYLSoF689/MHLFO8j+SMUa9NJryHp0c=;
        b=Afr6aRXBny45ectqnRu143FTPwhEvHh848jj6i8yv9mc4thU6l0qle6IIUHC780N5Z
         GqFESZ8VvM/aFBzVvoQ3bVvmE85Qff6TNy4hjbB4bEpb8RfN68lNcQJDuot3o9uqqs13
         DNU2ZC8jsG9B0sAbgiz+v5zZfXLe8k+sSXuME77y+GG1ZLjJfvLsmOoKosqgmBoJ9DA7
         Skx80Gf1BXs+lcUQIF6cgG8z+txMP6p6SbXLj45vHr6buHqtHwDFPuCNmqVhH4OAY/6H
         9Oqn6NpQ+cVApf10umTfjVo9HwvCJqVQBsM1GJZhHPF5PupnnIBfFuCaqIRqt3xaBnnz
         W/ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S1+dxiF5;
       spf=pass (google.com: domain of tpgxyz@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=tpgxyz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id n1si70719vsr.2.2020.11.10.22.54.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 22:54:32 -0800 (PST)
Received-SPF: pass (google.com: domain of tpgxyz@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id i26so855739pgl.5
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 22:54:32 -0800 (PST)
X-Received: by 2002:a63:fc1c:: with SMTP id j28mr19529659pgi.95.1605077671210;
 Tue, 10 Nov 2020 22:54:31 -0800 (PST)
MIME-Version: 1.0
References: <9263a93d-bbaf-451f-9c2d-369351a3ee76n@googlegroups.com>
 <CAKwvOd=d=OnY=SH7jowx-79J=ows4D1VDr=YX69fZxnK02nQAA@mail.gmail.com>
 <E066D685-782B-4266-B334-9F71D4981916@gmail.com> <44b5c961-8a09-0048-3557-a54da0964d4f@mozilla.com>
 <852218e0-9034-c49f-0a36-bcf9e24672dd@redhat.com>
In-Reply-To: <852218e0-9034-c49f-0a36-bcf9e24672dd@redhat.com>
From: Tomasz Gajc <tpgxyz@gmail.com>
Date: Wed, 11 Nov 2020 07:54:20 +0100
Message-ID: <CAEkne-pC38qXTfYd9kfyN3RG8CVTiaAa6enTgu7fKKaCxjGO1A@mail.gmail.com>
Subject: Re: Userspace coordination on ClangBuiltLinux GitHub space
To: tstellar@redhat.com
Cc: Sylvestre Ledru <sylvestre@mozilla.com>, Behan Webster <behanw@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang Built Linux <clang-built-linux@googlegroups.com>, 
	Bernhard Rosenkraenzer <bero@lindev.ch>
Content-Type: multipart/alternative; boundary="0000000000006df0e105b3cf446c"
X-Original-Sender: tpgxyz@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=S1+dxiF5;       spf=pass
 (google.com: domain of tpgxyz@gmail.com designates 2607:f8b0:4864:20::541 as
 permitted sender) smtp.mailfrom=tpgxyz@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000006df0e105b3cf446c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi
as an OpenMandriva contributor I remember that we started our adventure
with LLVM/clang as default compiler from 2014. Over these years amount of
patches that adds support for this compiler has reduced th the level
"nothing comes to my mind just like that". If I'll find anything in our
github's repo then I add it to yours userspace collection. Thanks.


=C5=9Br., 11 lis 2020, 01:06 u=C5=BCytkownik Tom Stellard <tstellar@redhat.=
com>
napisa=C5=82:

> On 10/21/20 2:03 PM, Sylvestre Ledru wrote:
> > Hello,
> >
> > Thanks Behan!
> >
> > Le 21/10/2020 =C3=A0 19:27, Behan Webster a =C3=A9crit :
> >> It=E2=80=99s worth talking to Sylvestre Ledru as he=E2=80=99s been bui=
lding the Debian
> >> archive with clang and finding and fixing issues there for a very long
> >> time.
> >>
> >> https://clang.debian.net/ <https://clang.debian.net/>
> >>
> >> Behan
> >>
> >>> On Oct 21, 2020, at 12:44 AM, 'Nick Desaulniers' via Clang Built
> >>> Linux <clang-built-linux@googlegroups.com
> >>> <mailto:clang-built-linux@googlegroups.com>> wrote:
> >>>
> >>> On Tue, Oct 20, 2020 at 6:42 PM Tom Stellard <tstellar@redhat.com
> >>> <mailto:tstellar@redhat.com>> wrote:
> >>>>
> >>>> Hi,
> >>>>
> >>>> I'm working on doing builds of  Fedora packages using clang, and I'm
> >>>> trying to find a way to coordinate this work with other
> >>>> distributions so that we aren't all fixing the same bugs.  I would
> >>>> like to create a GitHub repo for storing build-fix patches and also
> >>>> tracking issues for userspace projects.
> >>>>
> >>>> I could create a new GitHub organization for this, but I wanted to
> >>>> see if this community would be interested in hosting something like
> >>>> this in the ClangBuiltLinux organization.
> >>>>
> >>>> I don't have a strong preference either way, but it seems like there
> >>>> could be some benefits of sharing a space for this with the ongoing
> >>>> linux kernel work.
> >
> > Thanks!
> >
> > We fixed a bunch of packages over the years [1] [2] and I have been
> > keeping track of them. Example:
> > https://clang.debian.net/status.php?version=3D10&key=3DEXPECTED_DECLARA=
TION
> > However, as there isn't a strong incentive to switch to clang (Debian
> > and Ubuntu, in general, are happy with gcc),
> > it is hard to get traction.
> >
> > So, I am more than happy to see that it is interesting more folks :)
> >
> > In general, I found that the best course of action is:
> > * Implement missing features in clang when possible (or push for it)
> >
> > * Report bugs on gcc to get some new features. So that packages get
> > fixed upstream when the new version gcc
> > is released.
> > Example:
> https://clang.debian.net/status.php?version=3D10&key=3DSPACE_LITERAL
> >
> > * Fix bugs in the build blocs libraries or workaround them.
> > Example: https://bugreports.qt.io/browse/QTBUG-68139 (I had to
> > workaround it)
> > https://gitlab.freedesktop.org/xorg/util/imake/-/issues/1
> >
> > * Fix some differences between gcc/clang like
> > https://bugs.llvm.org/show_bug.cgi?id=3D45322
> >
> > Distro specific:
> > * Make it available in the CI close to the packagers.
> >
> > * As much as possible, merging patches upstream (I know I am stating th=
e
> > obvious)
> >
> > Anyway, happy to see this initiative and a github repo works for me (we
> > will have to take in account
> > different naming of packages but I think we have precedent for this).
> >
> > Happy to help on this!
> >
>
> Hi all,
>
> I have set up the repo[1] now.  I pushed a commit, created an issue,
> and made a pull request to give an example of how I thought the repo
> could be used.  Let me know what you think.
>
> -Tom
>
> [1]https://github.com/ClangBuiltLinux/userspace/
>
> >
> > Cheers,
> > Sylvestre
> > https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D756336
> > https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D740019
> >
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEkne-pC38qXTfYd9kfyN3RG8CVTiaAa6enTgu7fKKaCxjGO1A%40mai=
l.gmail.com.

--0000000000006df0e105b3cf446c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi</div><div dir=3D"auto">as an OpenMandriva contrib=
utor I remember that we started our adventure with LLVM/clang as default co=
mpiler from 2014. Over these years amount of patches that adds support for =
this compiler has reduced th the level &quot;nothing comes to my mind just =
like that&quot;. If I&#39;ll find anything in our github&#39;s repo then I =
add it to yours userspace collection. Thanks.</div><div dir=3D"auto"><br><b=
r><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_a=
ttr">=C5=9Br., 11 lis 2020, 01:06 u=C5=BCytkownik Tom Stellard &lt;<a href=
=3D"mailto:tstellar@redhat.com">tstellar@redhat.com</a>&gt; napisa=C5=82:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">On 10/21/20 2:03 PM, Sylvestre Ledru=
 wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; Thanks Behan!<br>
&gt; <br>
&gt; Le 21/10/2020 =C3=A0 19:27, Behan Webster a =C3=A9crit=C2=A0:<br>
&gt;&gt; It=E2=80=99s worth talking to Sylvestre Ledru as he=E2=80=99s been=
 building the Debian <br>
&gt;&gt; archive with clang and finding and fixing issues there for a very =
long <br>
&gt;&gt; time.<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://clang.debian.net/" rel=3D"noreferrer noreferrer=
" target=3D"_blank">https://clang.debian.net/</a> &lt;<a href=3D"https://cl=
ang.debian.net/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://cl=
ang.debian.net/</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; Behan<br>
&gt;&gt;<br>
&gt;&gt;&gt; On Oct 21, 2020, at 12:44 AM, &#39;Nick Desaulniers&#39; via C=
lang Built <br>
&gt;&gt;&gt; Linux &lt;<a href=3D"mailto:clang-built-linux@googlegroups.com=
" target=3D"_blank" rel=3D"noreferrer">clang-built-linux@googlegroups.com</=
a> <br>
&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:clang-built-linux@googlegroups.co=
m" target=3D"_blank" rel=3D"noreferrer">clang-built-linux@googlegroups.com<=
/a>&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Oct 20, 2020 at 6:42 PM Tom Stellard &lt;<a href=3D"ma=
ilto:tstellar@redhat.com" target=3D"_blank" rel=3D"noreferrer">tstellar@red=
hat.com</a> <br>
&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:tstellar@redhat.com" target=3D"_b=
lank" rel=3D"noreferrer">tstellar@redhat.com</a>&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I&#39;m working on doing builds of =C2=A0Fedora packages u=
sing clang, and I&#39;m <br>
&gt;&gt;&gt;&gt; trying to find a way to coordinate this work with other <b=
r>
&gt;&gt;&gt;&gt; distributions so that we aren&#39;t all fixing the same bu=
gs.=C2=A0 I would <br>
&gt;&gt;&gt;&gt; like to create a GitHub repo for storing build-fix patches=
 and also <br>
&gt;&gt;&gt;&gt; tracking issues for userspace projects.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I could create a new GitHub organization for this, but I w=
anted to <br>
&gt;&gt;&gt;&gt; see if this community would be interested in hosting somet=
hing like <br>
&gt;&gt;&gt;&gt; this in the ClangBuiltLinux organization.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I don&#39;t have a strong preference either way, but it se=
ems like there <br>
&gt;&gt;&gt;&gt; could be some benefits of sharing a space for this with th=
e ongoing <br>
&gt;&gt;&gt;&gt; linux kernel work.<br>
&gt; <br>
&gt; Thanks!<br>
&gt; <br>
&gt; We fixed a bunch of packages over the years [1] [2] and I have been <b=
r>
&gt; keeping track of them. Example: <br>
&gt; <a href=3D"https://clang.debian.net/status.php?version=3D10&amp;key=3D=
EXPECTED_DECLARATION" rel=3D"noreferrer noreferrer" target=3D"_blank">https=
://clang.debian.net/status.php?version=3D10&amp;key=3DEXPECTED_DECLARATION<=
/a><br>
&gt; However, as there isn&#39;t a strong incentive to switch to clang (Deb=
ian <br>
&gt; and Ubuntu, in general, are happy with gcc),<br>
&gt; it is hard to get traction.<br>
&gt; <br>
&gt; So, I am more than happy to see that it is interesting more folks :)<b=
r>
&gt; <br>
&gt; In general, I found that the best course of action is:<br>
&gt; * Implement missing features in clang when possible (or push for it)<b=
r>
&gt; <br>
&gt; * Report bugs on gcc to get some new features. So that packages get <b=
r>
&gt; fixed upstream when the new version gcc<br>
&gt; is released.<br>
&gt; Example: <a href=3D"https://clang.debian.net/status.php?version=3D10&a=
mp;key=3DSPACE_LITERAL" rel=3D"noreferrer noreferrer" target=3D"_blank">htt=
ps://clang.debian.net/status.php?version=3D10&amp;key=3DSPACE_LITERAL</a><b=
r>
&gt; <br>
&gt; * Fix bugs in the build blocs libraries or workaround them.<br>
&gt; Example: <a href=3D"https://bugreports.qt.io/browse/QTBUG-68139" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://bugreports.qt.io/brows=
e/QTBUG-68139</a> (I had to <br>
&gt; workaround it)<br>
&gt; <a href=3D"https://gitlab.freedesktop.org/xorg/util/imake/-/issues/1" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://gitlab.freedesktop.=
org/xorg/util/imake/-/issues/1</a><br>
&gt; <br>
&gt; * Fix some differences between gcc/clang like <br>
&gt; <a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D45322" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://bugs.llvm.org/show_bug.cgi?id=
=3D45322</a><br>
&gt; <br>
&gt; Distro specific:<br>
&gt; * Make it available in the CI close to the packagers.<br>
&gt; <br>
&gt; * As much as possible, merging patches upstream (I know I am stating t=
he <br>
&gt; obvious)<br>
&gt; <br>
&gt; Anyway, happy to see this initiative and a github repo works for me (w=
e <br>
&gt; will have to take in account<br>
&gt; different naming of packages but I think we have precedent for this).<=
br>
&gt; <br>
&gt; Happy to help on this!<br>
&gt; <br>
<br>
Hi all,<br>
<br>
I have set up the repo[1] now.=C2=A0 I pushed a commit, created an issue,<b=
r>
and made a pull request to give an example of how I thought the repo<br>
could be used.=C2=A0 Let me know what you think.<br>
<br>
-Tom<br>
<br>
[1]<a href=3D"https://github.com/ClangBuiltLinux/userspace/" rel=3D"norefer=
rer noreferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/usersp=
ace/</a><br>
<br>
&gt; <br>
&gt; Cheers,<br>
&gt; Sylvestre<br>
&gt; <a href=3D"https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D756336"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://bugs.debian.org/cg=
i-bin/bugreport.cgi?bug=3D756336</a><br>
&gt; <a href=3D"https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D740019"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://bugs.debian.org/cg=
i-bin/bugreport.cgi?bug=3D740019</a><br>
&gt; <br>
<br>
</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAEkne-pC38qXTfYd9kfyN3RG8CVTiaAa6enTgu7fKKaCx=
jGO1A%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAEkne-pC38qXTfYd9kfyN3RG8CVTiaAa6e=
nTgu7fKKaCxjGO1A%40mail.gmail.com</a>.<br />

--0000000000006df0e105b3cf446c--
