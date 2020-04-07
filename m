Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK4QWP2AKGQE2H2USBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id D47AA1A13BE
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 20:36:28 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id f124sf377497qke.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 11:36:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586284587; cv=pass;
        d=google.com; s=arc-20160816;
        b=zFtRJ6dbrTvjh1FXF6jXApn/KlW2a7esDYzDzo97kt6Mk4jd/5QO/msJwNDFBoOWYQ
         1nk2KbnI6k3ypURyeXP3HzeWpL2kslzlKlriyE8ePDQ9kYsZWAtPZLl38msWf2QF/26v
         6xxX5J3cqcHWs7BpQv+AVRD6zKIJdfPgtrxfLA5cKEgmGU/7YNhCuH0n0wk0QKNO10b9
         utnlOyAFoJQ3eyP0J2oDsgmD7vo2DjrBLFg6mvx9kQbD8+QS8aK3e5+iETGLiIcvy0ka
         NPhlSI59KlFkWjXVJ4CmRdqUG6/fpEVptgOI5YJ7qNHli7/o6SBV3mmTK/H4PD8OFr2w
         8+RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OVMLTFMr1YKyFWx4yl86LbbY+F51rrW4w33z0xPI9l0=;
        b=oCfANqMZTHUlT+ft3nzvsGBECL/LXBjKK+jSbCIl8uaV4OD4mVNTF7VseCMzdslvbT
         voEIo+ZbGJV1n2PoJa4QsKURuxqY71qu0RVUysNunp1pQKD7VirRsVNEL1q05cjqHaTq
         zuoxepqrqFyyTuWybUlBcQZpyad/KiacSmP5n1WGowqoL6/ETtKgeBTtpJk1Xynyzb6H
         ZOzCfO7SQxnXRISqZGIlydDZ0J4WdOzoxOcvsF9Stza7f04uMh465LKc6tHe5+E7aG3E
         7xudzH6RrHc77YhcosFBlC/BI96obAflLsx/ldCSiwxFjQh29ZPzzY7JhRZJuYBgc6EI
         618Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wJVOKR7w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OVMLTFMr1YKyFWx4yl86LbbY+F51rrW4w33z0xPI9l0=;
        b=Rcg/fMcqg08zxOcxlZi6NkhzA/dSvWTd58LuIyDUJIhGqLoNFPYKBeeGdfveCgueej
         1564UaQ+IovudGoOPMTvxiA1krHVgtdt3EZxVs3sZnVuR+wDzKrJVMzIy0+cQ5ZqqFKa
         xc/moiUdt4UipXGyS4T0eOXLGex0BHR1+yZlT5SLaCIM++WRYaPxS6eW8ofg8UIpoVXS
         li6qT5KW8tfFIx0XhjeWnKU3EKSU6l7NqKSMxSPshdy+tr27+hERBQZXG0ErdAk5ecjH
         YHWBnoKgIoW8EXO7CAvlnqd3iZ+23BtPzYxlwljaWGE4tPKx/gjgh7s8Z8UC0ClOqnw5
         30XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OVMLTFMr1YKyFWx4yl86LbbY+F51rrW4w33z0xPI9l0=;
        b=GGTZK3fTW5BgNk+QTXIotc6bldb4CUU/x2TiA5iI6hfmKsaDSB4qWF73XnEn58QpMV
         ECRARgFcCBhiXeteicu7sYI8Cf416n1jT/tSisJLWp4o+oQj/XC/kq0b+gmTJCsJcghx
         p1mq0Jt/s5q7NY9lAUmD/t0YpEKPSoJ7bRjH6yGxnxEXRRSzsQUXl8oEPAnGkAyO1p/Y
         9IMHI/OWSqTUy3pktTQ7TnDPXvQMk5P1epukbvdu2l+qsJojcUkrUOkbOq8VAK2dltLY
         3acoObT0PDpkXa/cEePSo9VwmtRtdSW5ItEJl7ewWmaTbTHuTRVv+M/O0wkmoN2mk+u7
         hD+g==
X-Gm-Message-State: AGi0PuZ1lyiJwUNcntkwjRISuH5/+/MF6Uafg7CVpKyVzgeCeSc/KUcZ
	zm2KnVT3hv6YAk9L+PS3Zig=
X-Google-Smtp-Source: APiQypLZlyGTuMgKfgkXWAff5ZMVlZcwZdj8Ui+Ka69Wymhfhj1zp8hXjTxuXCZw8LMm6+M9TeC7xg==
X-Received: by 2002:ac8:514d:: with SMTP id h13mr3760125qtn.226.1586284587591;
        Tue, 07 Apr 2020 11:36:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b946:: with SMTP id j67ls2582227qkf.2.gmail; Tue, 07 Apr
 2020 11:36:27 -0700 (PDT)
X-Received: by 2002:a05:620a:1207:: with SMTP id u7mr3736886qkj.191.1586284587146;
        Tue, 07 Apr 2020 11:36:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586284587; cv=none;
        d=google.com; s=arc-20160816;
        b=pQBp+u7RPaDZrcQZOxoEVzTzow78G1/2EVw9Mb+UQOW+88s8xnDX528OMt2TgMVVTu
         L25pDNgu0GnL564hFhHh2z9I9DV1Q0el2EH1Noe8GM2r2iSaIgQFoV+QITISMmdg3TKm
         yal66n0IbLcHtUljLPIKlrRDeVWYaGpN1vKvWcCv3lcODfNelyu4Cgf6nwUUbhU5HW9z
         TOekDgVfTyGxF2msAMyNNN+n2J135Tk5GaCE+GhC+zQTxopxRQUNQEcO3F8sr34xiWfg
         aiHMyReU8mjezawMxFGvmIMNCG0NLaZXNKUbKen9rHd3R4ziWN+xIUldZu5rUgBcQKIg
         knDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KW92AmPNQrdEu3TX38Lo9Y+AKqMtBoUxQAp/sdyPXOc=;
        b=QYWdVQAUGhSHNx2tnpdnZIzQHGjCgsVDNt6DbKsR7SU5wjHS7JwzBs5Ja7Sxm2Aj79
         isQqgEFqp0zQ/4yyl7Q2IRuz6nzYxanU4+r/X3I6UEGryKDHj21OeWnxifiwVn+NphL/
         1013/4+LNAX4nXNEJygnP3CkfMgjSZY5ZSZ8Vl6v/lIjSI/EpWwEO1Uj09uVRLdswwlk
         69mGqxTY22WNdD2a4DRtfEaBAbdi56aTBbBTQ/2FEdVYT3mnAlLgH8WDbDh/gov0yzdf
         /EMxaEkPNzs+y7GfrqBsh/hE0tIEtCe2BXknvxtjH9CEYZ1phXy8yOYYI4PTUqDpVP4+
         lQRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wJVOKR7w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id 198si299936qkh.7.2020.04.07.11.36.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 11:36:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id h11so1555498plk.7
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 11:36:27 -0700 (PDT)
X-Received: by 2002:a17:902:988e:: with SMTP id s14mr3590173plp.179.1586284585912;
 Tue, 07 Apr 2020 11:36:25 -0700 (PDT)
MIME-Version: 1.0
References: <5e8cc1508696d_43fcca34131d8351344@97f8c055-3dec-4551-a274-cc45c3fb2092.mail>
 <CAEVzpNnCaYbs2t7DfbiDiytOXvNdi-z31m=ecFCM5325o5Eh2w@mail.gmail.com>
 <CAKwvOd=k+wQpoM1mcLAuAO=6aeru0Sxdijc5nkdSVdfnMMstOw@mail.gmail.com> <CAEVzpNnX2NGvEKZEKDbrX6PeZjrOM=A4qGVCuukJxbuSLM910g@mail.gmail.com>
In-Reply-To: <CAEVzpNnX2NGvEKZEKDbrX6PeZjrOM=A4qGVCuukJxbuSLM910g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 11:36:14 -0700
Message-ID: <CAKwvOdnLXrmnrjpydE9ikNW70p1p5=U-qxJ81e8fg2KJVwj=mA@mail.gmail.com>
Subject: Re: [CRON] Still Failing: ClangBuiltLinux/continuous-integration#1351
 (master - 09d8e9d)
To: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: multipart/alternative; boundary="00000000000041f1f605a2b7a977"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wJVOKR7w;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c
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

--00000000000041f1f605a2b7a977
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

+ PPC folks, mailing list, in case this is a known issue.

On Tue, Apr 7, 2020 at 11:33 AM Nathan Chancellor <natechancellor@gmail.com=
>
wrote:

> On Tue, Apr 7, 2020 at 11:30 AM Nick Desaulniers <ndesaulniers@google.com=
>
> wrote:
>
>>
>>
>> On Tue, Apr 7, 2020 at 11:11 AM Nathan Chancellor <
>> natechancellor@gmail.com> wrote:
>>
>>> This PowerPC failure is super flaky. I can reproduce it locally but it
>>> does not always happen so trying to bisect seems potentially pointless =
but
>>> I'll try to do it today.
>>>
>>
>> If we can figure out the first day it reproduces that might help to
>> mention to the ppc folks.  You could also try qemu boot 30 times (`seq`)=
 or
>> more to be confident.  It could be that the compiler has non-determinism
>> though, which would require build+boot multiple times in a loop.
>>
>
> Ack, I plan to try booting ten times and see what happens. Looks like
> next-20200402 was when it first started, which did have a bunch of PPC
> stuff merged in it.
>
>
>>
>>
>>>
>>> Cheers,
>>> Nathan
>>>
>>> On Tue, Apr 7, 2020 at 11:07 AM Travis CI <builds@travis-ci.com> wrote:
>>>
>>>> ClangBuiltLinux
>>>>
>>>> /
>>>>
>>>> continuous-integration
>>>>
>>>> <https://travis-ci.com/github/ClangBuiltLinux/continuous-integration?u=
tm_medium=3Dnotification&utm_source=3Demail>
>>>>
>>>> [image: branch icon]master
>>>> <https://github.com/ClangBuiltLinux/continuous-integration/tree/master=
>
>>>> [image: build has failed]
>>>> Build #1351 is still failing
>>>> <https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/b=
uilds/158986482?utm_medium=3Dnotification&utm_source=3Demail>
>>>> [image: arrow to build time]
>>>> [image: clock icon]6 hrs, 18 mins, and 45 secs
>>>>
>>>> [image: Nathan Chancellor avatar]Nathan Chancellor
>>>> 09d8e9d CHANGESET =E2=86=92
>>>> <https://github.com/ClangBuiltLinux/continuous-integration/compare/dc2=
72934f2cdbcb5f4614349969f3ec9cfd45dad...09d8e9d8a85d0825fa9d8e48537f68c77ca=
b2a8c>
>>>>
>>>> Merge pull request #259 from nathanchance/mips-lld
>>>>
>>>> Enable LLD for MIPS
>>>>
>>>> Want to know about upcoming build environment updates?
>>>>
>>>> Would you like to stay up-to-date with the upcoming Travis CI build
>>>> environment updates? We set up a mailing list for you!
>>>> SIGN UP HERE <http://eepurl.com/9OCsP>
>>>>
>>>> [image: book icon]
>>>>
>>>> Documentation <https://docs.travis-ci.com/> about Travis CI
>>>> Have any questions? We're here to help. <support@travis-ci.com>
>>>> Unsubscribe
>>>> <https://travis-ci.com/account/preferences/unsubscribe?repository=3D67=
18752&utm_medium=3Dnotification&utm_source=3Demail>
>>>> from build emails from the ClangBuiltLinux/continuous-integration
>>>> repository.
>>>> To unsubscribe from *all* build emails, please update your settings
>>>> <https://travis-ci.com/account/preferences/unsubscribe?utm_medium=3Dno=
tification&utm_source=3Demail>.
>>>>
>>>> [image: black and white travis ci logo] <https://travis-ci.com>
>>>>
>>>> Travis CI GmbH, Rigaer Str. 8, 10427 Berlin, Germany | GF/CEO: Randy
>>>> Jacops | Contact: contact@travis-ci.com | Amtsgericht Charlottenburg,
>>>> Berlin, HRB 140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsa=
tzsteuergesetz:
>>>> DE282002648
>>>>
>>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers
>>
>

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnLXrmnrjpydE9ikNW70p1p5%3DU-qxJ81e8fg2KJVwj%3DmA%4=
0mail.gmail.com.

--00000000000041f1f605a2b7a977
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">+ PPC folks, mailing list, in case this i=
s a known issue.<br><div><br></div></div><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Tue, Apr 7, 2020 at 11:33 AM Nathan Chanc=
ellor &lt;<a href=3D"mailto:natechancellor@gmail.com">natechancellor@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div dir=3D"ltr">On Tue, Apr 7, 2020 at 11:30 AM Nick D=
esaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com" target=3D"_blank"=
>ndesaulniers@google.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div di=
r=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Apr 7, 2020 at 11:11 AM Nathan Chancellor &lt;<a hr=
ef=3D"mailto:natechancellor@gmail.com" target=3D"_blank">natechancellor@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">This PowerPC failure is super flaky. I can reproduce=
 it locally but it does not always happen so trying to bisect seems potenti=
ally pointless but I&#39;ll try to do it today.<br></div></blockquote><div>=
<br></div><div>If we can figure out the first day it reproduces that might =
help to mention to the ppc folks.=C2=A0 You could also try qemu boot 30 tim=
es (`seq`) or more to be confident.=C2=A0 It could be that the compiler has=
 non-determinism though, which would require build+boot multiple times in a=
 loop.</div><div></div></div></div></blockquote><div><br></div><div>Ack, I =
plan to try booting ten times and see what happens. Looks like next-2020040=
2 was when it first started, which did have a bunch of PPC stuff merged in =
it.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div class=3D"gmail_quote"><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>C=
heers,</div><div>Nathan</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Apr 7, 2020 at 11:07 AM Travis CI &lt=
;<a href=3D"mailto:builds@travis-ci.com" target=3D"_blank">builds@travis-ci=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><u></u>

 =20
   =20
   =20
   =20
   =20
 =20
  <div style=3D"min-width:100%;height:100%;margin:0px;padding:0px">
    <table id=3D"gmail-m_2824416182309475684gmail-m_-9217589339280627954gma=
il-m_6799171407498284905gmail-m_1478316970419303017travis-ci-email-containe=
r" align=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" height=
=3D"100%" width=3D"100%" style=3D"height:100%;width:100%;padding:10px;font-=
family:&quot;Source Sans Pro&quot;,&quot;Helvetica Neue&quot;,Helvetica,Ari=
al,sans-serif;line-height:150%;text-align:center;color:rgb(51,51,51);backgr=
ound-color:rgb(244,245,249);background-image:url(&quot;&quot;)">
      <tbody><tr>
        <td align=3D"center" valign=3D"top" style=3D"padding-bottom:20px">
          <table id=3D"gmail-m_2824416182309475684gmail-m_-9217589339280627=
954gmail-m_6799171407498284905gmail-m_1478316970419303017email-content-cont=
ainer" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"width:500p=
x;padding:32px;background-color:rgb(255,255,255)">
           =20
            <tbody><tr>
              <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933928062=
7954gmail-m_6799171407498284905gmail-m_1478316970419303017repo-username-sec=
tion" align=3D"center" valign=3D"top" style=3D"padding-bottom:20px">
                <a id=3D"gmail-m_2824416182309475684gmail-m_-92175893392806=
27954gmail-m_6799171407498284905gmail-m_1478316970419303017repo-username-li=
nk" style=3D"color:rgb(51,51,51);border-bottom:1px solid rgb(51,51,51);text=
-decoration:none;padding-bottom:4px" href=3D"https://travis-ci.com/github/C=
langBuiltLinux/continuous-integration?utm_medium=3Dnotification&amp;utm_sou=
rce=3Demail" target=3D"_blank">
                  <p style=3D"margin:0px;display:inline;font-size:30px;font=
-weight:600;line-height:36px;padding-right:5px;padding-left:0px">ClangBuilt=
Linux</p>
                  <p id=3D"gmail-m_2824416182309475684gmail-m_-921758933928=
0627954gmail-m_6799171407498284905gmail-m_1478316970419303017repo-slug-divi=
der" style=3D"margin:0px;display:inline;font-size:30px;font-weight:100;colo=
r:rgb(158,163,168)">/</p>
                  <p style=3D"margin:0px;display:inline;font-size:30px;font=
-weight:600;line-height:36px;padding-left:5px">continuous-integration</p>
</a>              </td>
            </tr>
           =20
            <tr>
              <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933928062=
7954gmail-m_6799171407498284905gmail-m_1478316970419303017branch-name-secti=
on" align=3D"center" valign=3D"top" style=3D"padding-bottom:35px">
                <p id=3D"gmail-m_2824416182309475684gmail-m_-92175893392806=
27954gmail-m_6799171407498284905gmail-m_1478316970419303017branch-name" sty=
le=3D"margin:0px;font-size:28px;font-weight:300">
                  <img alt=3D"branch icon" style=3D"width: 16px; height: au=
to; padding-right: 8px; vertical-align: bottom;" src=3D"https://s3.amazonaw=
s.com/travis-email-assets/branch.png"><a id=3D"gmail-m_2824416182309475684g=
mail-m_-9217589339280627954gmail-m_6799171407498284905gmail-m_1478316970419=
303017branch-name-link" style=3D"color:rgb(51,51,51);text-decoration:none;b=
order-bottom:1px solid rgb(51,51,51);padding-bottom:2px;line-height:36px" h=
ref=3D"https://github.com/ClangBuiltLinux/continuous-integration/tree/maste=
r" target=3D"_blank">master</a>
                </p>
              </td>
            </tr>
           =20
            <tr>
              <td align=3D"center" valign=3D"top" style=3D"padding-bottom:2=
0px">
                <table cellpadding=3D"0" cellspacing=3D"0" style=3D"border-=
radius:3px;border:1px solid rgb(219,69,69);width:100%">
                  <tbody><tr style=3D"background:rgba(219,69,69,0.1)">
                    <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933=
9280627954gmail-m_6799171407498284905gmail-m_1478316970419303017status-icon=
-section" align=3D"center" valign=3D"top" style=3D"border-bottom:1px solid =
rgb(219,69,69);padding:15px">
                    <div style=3D"float:left">
                      <div style=3D"display:inline"><img alt=3D"build has f=
ailed" style=3D"display: inline; vertical-align: sub; width: 17px; height: =
17px; padding-right: 8px;" src=3D"https://s3.amazonaws.com/travis-email-ass=
ets/status-failed.png"></div><div style=3D"display:inline"><a id=3D"gmail-m=
_2824416182309475684gmail-m_-9217589339280627954gmail-m_6799171407498284905=
gmail-m_1478316970419303017status-section-message" style=3D"color:rgb(219,6=
9,69);font-size:16px;font-weight:600" href=3D"https://travis-ci.com/github/=
ClangBuiltLinux/continuous-integration/builds/158986482?utm_medium=3Dnotifi=
cation&amp;utm_source=3Demail" target=3D"_blank">Build #1351 is still faili=
ng</a></div>
                    </div>
                      <div style=3D"display:inline;float:left"><img id=3D"g=
mail-m_2824416182309475684gmail-m_-9217589339280627954gmail-m_6799171407498=
284905gmail-m_1478316970419303017arrow" alt=3D"arrow to build time" style=
=3D"width: 7px; height: auto; vertical-align: text-bottom; padding: 0px 8px=
;" src=3D"https://s3.amazonaws.com/travis-email-assets/failure-arrow.png"><=
/div>
                    <div style=3D"float:right">
                      <span><img id=3D"gmail-m_2824416182309475684gmail-m_-=
9217589339280627954gmail-m_6799171407498284905gmail-m_1478316970419303017bu=
ild-time-clock-icon" alt=3D"clock icon" style=3D"width: 15px; height: 17px;=
 padding-right: 8px; vertical-align: sub;" src=3D"https://s3.amazonaws.com/=
travis-email-assets/time.png"></span><span style=3D"font-size:14px">6 hrs, =
18 mins, and 45 secs</span>
                    </div>
                    </td>
                  </tr>
                  <tr>
                    <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933=
9280627954gmail-m_6799171407498284905gmail-m_1478316970419303017user-avatar=
-changeset-section" align=3D"center" valign=3D"top" style=3D"padding:20px 1=
5px 35px">
                      <div id=3D"gmail-m_2824416182309475684gmail-m_-921758=
9339280627954gmail-m_6799171407498284905gmail-m_1478316970419303017user-ava=
tar-changeset-left" style=3D"float:left">
                        <p style=3D"margin:0px;display:inline;font-size:14p=
x;font-weight:700;color:rgb(51,51,51)">
                          <img alt=3D"Nathan Chancellor avatar" style=3D"wi=
dth: 22px; height: auto; border-radius: 10px; vertical-align: middle; margi=
n-right: 8px;" src=3D"https://secure.gravatar.com/avatar/1d36f00c4e42e4b8cc=
45aeafd22b4765">Nathan Chancellor
                        </p>
                      </div>
                      <div id=3D"gmail-m_2824416182309475684gmail-m_-921758=
9339280627954gmail-m_6799171407498284905gmail-m_1478316970419303017user-ava=
tar-changeset-right" style=3D"float:right">
                        <a id=3D"gmail-m_2824416182309475684gmail-m_-921758=
9339280627954gmail-m_6799171407498284905gmail-m_1478316970419303017changese=
t-link" style=3D"font-size:14px;color:rgb(0,104,255);font-weight:600" href=
=3D"https://github.com/ClangBuiltLinux/continuous-integration/compare/dc272=
934f2cdbcb5f4614349969f3ec9cfd45dad...09d8e9d8a85d0825fa9d8e48537f68c77cab2=
a8c" target=3D"_blank">09d8e9d CHANGESET =E2=86=92</a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933=
9280627954gmail-m_6799171407498284905gmail-m_1478316970419303017commit-mess=
age-section" align=3D"center" valign=3D"top" style=3D"min-height:104px;padd=
ing:0px 15px 20px">
                      <p id=3D"gmail-m_2824416182309475684gmail-m_-92175893=
39280627954gmail-m_6799171407498284905gmail-m_1478316970419303017commit-mes=
sage" style=3D"margin:0px;font-family:cousine,monospace;font-size:14px;text=
-align:left;line-height:22px">Merge pull request #259 from nathanchance/mip=
s-lld<br><br>Enable LLD for MIPS</p>
                    </td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
          </tbody></table>
        </td>
      </tr>
     =20
     =20
      <tr>
        <td id=3D"gmail-m_2824416182309475684gmail-m_-9217589339280627954gm=
ail-m_6799171407498284905gmail-m_1478316970419303017update-section" align=
=3D"center" valign=3D"top" style=3D"padding-bottom:20px">
          <table id=3D"gmail-m_2824416182309475684gmail-m_-9217589339280627=
954gmail-m_6799171407498284905gmail-m_1478316970419303017update-container" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"width:500px;paddi=
ng:32px 32px 42px;background-color:rgb(255,255,255)">
            <tbody><tr>
              <td align=3D"center" valign=3D"top">
                <p id=3D"gmail-m_2824416182309475684gmail-m_-92175893392806=
27954gmail-m_6799171407498284905gmail-m_1478316970419303017update-header" s=
tyle=3D"margin:0px 0px 20px;border-bottom:2px solid rgb(0,104,255);padding-=
bottom:10px;font-size:24px;line-height:31px">Want to know about upcoming bu=
ild environment updates?</p>
                <p id=3D"gmail-m_2824416182309475684gmail-m_-92175893392806=
27954gmail-m_6799171407498284905gmail-m_1478316970419303017update-message" =
style=3D"margin:0px 0px 32px;font-size:16px;line-height:26px;font-weight:30=
0">Would you like to stay up-to-date with the upcoming Travis CI build envi=
ronment updates? We set up a mailing list for you!</p>
                <a id=3D"gmail-m_2824416182309475684gmail-m_-92175893392806=
27954gmail-m_6799171407498284905gmail-m_1478316970419303017sign-up-button" =
style=3D"font-size:14px;font-weight:600;color:rgb(255,255,255);background-c=
olor:rgb(0,104,255);text-decoration:none;padding:12px 20px;border-radius:3p=
x" href=3D"http://eepurl.com/9OCsP" target=3D"_blank">SIGN UP HERE</a>
              </td>
            </tr>
          </tbody></table>
        </td>
      </tr>
     =20
      <tr>
        <td align=3D"center" valign=3D"top" style=3D"padding-bottom:20px">
          <table id=3D"gmail-m_2824416182309475684gmail-m_-9217589339280627=
954gmail-m_6799171407498284905gmail-m_1478316970419303017documentation-cont=
ainer" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"width:500p=
x;padding:25px;background-color:rgba(222,239,255,0.3);border:1px solid rgb(=
102,164,255);border-radius:3px">
            <tbody><tr>
              <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933928062=
7954gmail-m_6799171407498284905gmail-m_1478316970419303017documentation-sec=
tion" align=3D"center" valign=3D"top">
                <div>
                  <img alt=3D"book icon" id=3D"gmail-m_2824416182309475684g=
mail-m_-9217589339280627954gmail-m_6799171407498284905gmail-m_1478316970419=
303017documentation-icon" style=3D"display: inline; vertical-align: bottom;=
 padding-right: 5px;" src=3D"https://s3.amazonaws.com/travis-email-assets/d=
ocumentation.png">
                  <p id=3D"gmail-m_2824416182309475684gmail-m_-921758933928=
0627954gmail-m_6799171407498284905gmail-m_1478316970419303017documentation-=
text" style=3D"margin:0px;font-size:26px;font-weight:300;color:rgb(0,104,25=
5);display:inline">
                    <a id=3D"gmail-m_2824416182309475684gmail-m_-9217589339=
280627954gmail-m_6799171407498284905gmail-m_1478316970419303017documentatio=
n-link" href=3D"https://docs.travis-ci.com/" style=3D"color:rgb(0,104,255)"=
 target=3D"_blank">Documentation</a> about Travis CI
                  </p>
                </div>
              </td>
            </tr>
          </tbody></table>
        </td>
      </tr>
     =20
      <tr>
        <td align=3D"center" valign=3D"top">
          <table id=3D"gmail-m_2824416182309475684gmail-m_-9217589339280627=
954gmail-m_6799171407498284905gmail-m_1478316970419303017travis-ci-email-fo=
oter-container" border=3D"0" cellpadding=3D"20" cellspacing=3D"0" style=3D"=
width:500px">
            <tbody><tr>
              <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933928062=
7954gmail-m_6799171407498284905gmail-m_1478316970419303017questions-section=
" align=3D"center" valign=3D"top" style=3D"color:rgb(0,104,255);font-weight=
:300">
                <span>Have any questions?</span>
                <span>
                  <a href=3D"mailto:support@travis-ci.com" style=3D"color:r=
gb(0,104,255)" target=3D"_blank">We&#39;re here to help.</a>
                </span>
              </td>
            </tr>
            <tr>
              <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933928062=
7954gmail-m_6799171407498284905gmail-m_1478316970419303017email-footer-sect=
ion" align=3D"center" valign=3D"top" style=3D"font-size:10px;line-height:20=
0%;text-align:center;color:rgb(158,163,168);padding-top:0px">
                <span>
                    <a href=3D"https://travis-ci.com/account/preferences/un=
subscribe?repository=3D6718752&amp;utm_medium=3Dnotification&amp;utm_source=
=3Demail" style=3D"color:rgb(158,163,168)" target=3D"_blank">Unsubscribe</a=
> from build emails from the ClangBuiltLinux/continuous-integration reposit=
ory.
                </span>
              </td>
            </tr>
            <tr>
              <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933928062=
7954gmail-m_6799171407498284905gmail-m_1478316970419303017email-footer-sect=
ion" align=3D"center" valign=3D"top" style=3D"font-size:10px;line-height:20=
0%;text-align:center;color:rgb(158,163,168);padding-top:0px">
                <span>
                  To unsubscribe from <strong>all</strong> build emails, pl=
ease update your <a href=3D"https://travis-ci.com/account/preferences/unsub=
scribe?utm_medium=3Dnotification&amp;utm_source=3Demail" style=3D"color:rgb=
(158,163,168)" target=3D"_blank">settings</a>.
                </span>
              </td>
            </tr>
            <tr>
              <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933928062=
7954gmail-m_6799171407498284905gmail-m_1478316970419303017travis-ci-footer-=
logo-section" style=3D"text-align:center">
                <a href=3D"https://travis-ci.com" target=3D"_blank"><img al=
t=3D"black and white travis ci logo" src=3D"https://s3.amazonaws.com/travis=
-email-assets/TravisCI-Logo-BW.png"></a>
              </td>
            </tr>
            <tr>
              <td id=3D"gmail-m_2824416182309475684gmail-m_-921758933928062=
7954gmail-m_6799171407498284905gmail-m_1478316970419303017email-footer-sect=
ion" style=3D"font-size:10px;line-height:200%;text-align:center;color:rgb(1=
58,163,168);padding-top:0px">
                <p style=3D"margin:0px">Travis CI GmbH, Rigaer Str. 8, 1042=
7 Berlin, Germany | GF/CEO: Randy Jacops |
                  <span>Contact: <a style=3D"color:rgb(158,163,168)" href=
=3D"mailto:contact@travis-ci.com" target=3D"_blank">contact@travis-ci.com</=
a> | Amtsgericht Charlottenburg, Berlin, HRB 140133 B | Umsatzsteuer-ID gem=
=C3=A4=C3=9F =C2=A727 a Umsatzsteuergesetz: DE282002648</span>
                </p>
              </td>
            </tr>
          </tbody></table>
        </td>
      </tr>
    </tbody></table>
   =20
  </div>



</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr">Thanks,<div>~Nick Desaulniers</div></div></div></div>
</blockquote></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Thanks,<div>~Nick Desaulniers</=
div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdnLXrmnrjpydE9ikNW70p1p5%3DU-qxJ81e8fg2K=
JVwj%3DmA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAKwvOdnLXrmnrjpydE9ikNW70p1p5%=
3DU-qxJ81e8fg2KJVwj%3DmA%40mail.gmail.com</a>.<br />

--00000000000041f1f605a2b7a977--
