Return-Path: <clang-built-linux+bncBDFZ7QNLWEFBBAVZ4CEQMGQEUPXQ4WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAD3403288
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Sep 2021 04:14:28 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id 62-20020a3706410000b02903d2cdd9acf0sf1092000qkg.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 19:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631067267; cv=pass;
        d=google.com; s=arc-20160816;
        b=YDSrDnKs7Tbvb072OmTXxHjJQQ8K7+OarJQO0jWHooZQ2HnXWylPnXfzLCy09PERiZ
         R6VA7eVIUyJeVdmPLQmzCj+yJSu+mHdJkWOUfluROlEYBQYAq1zHyrjdZiVXjIm7HtvT
         zGPTwcmAya8v0K7o+iqcrfubmPqTfpZk1CDwq6QjvodgRWYAhEa/Vgcn2euhsNLcbAw5
         vbeBTtVLU9U9qwWKS5RHrJeeWJQoCo2XtZMp+QcGjNW9cgnUUKMmoKyqJ7ldrkdJHlys
         iVhaNO6EDuEWsiX0eggXqRMI40KfcdAiqUclh86Foj8YJu/iKFuyjtsiFnYJxgeD/HFG
         gLIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DfSgvHZbqHqfrUixzl4vtSlKieBu2jGfRxirkXyYQGA=;
        b=i8T/sSBTmHQh/hWRhd2VqlpbZLBM3AvTC9YeZ9rdLNDAyCfug4I0lYBXz2PKrIfQLs
         f6kgYHc9CpupovMIPDEZ44dD39P6NyHImccDX5LMSwBW+hqdI+wTRCCErCnFqeXJcY8h
         ++T66KJ5eZcMec1XHPLIEh3yKJ/GUYSUKexurKcnvCmQGdjRPuOBO1rZmTDTfBh+46lF
         SlXrLwVrEA8ZmmN3tkv91RLlym6JUBNX2e6k9VPDjDBXbjs5qXnz0D90s51F6MDBo1/A
         ZqF0yq5ALJd6+ZkNTshFyVDos0i+IRVPNiwztZ5ceqnfwZoyybbzVG1jb6tFeTU8k3QN
         FF2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=l1aIuod4;
       spf=pass (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::92d as permitted sender) smtp.mailfrom=kortanzh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DfSgvHZbqHqfrUixzl4vtSlKieBu2jGfRxirkXyYQGA=;
        b=rJJjWsEBnkUnwq+1A9pVgrEBlAJpc1RXxeJu2y1lBCgjE16MJbEPwH5D/vV7CFjXsL
         VwmY4fJkGK+hBxiy0zVzece2/uwdFqictVcqEDGhxg/Y5pEcgMAUrX5NojTYUaiU96up
         oMrbbC6jTIO7ey5YskZmn/m1ZFnlapdDp/mKlxKuaiT8LcaReNn3LV5pawPvt6CxJgEV
         5eqQOMUyt/5L/NMvdBzeakNYlgDLHFQSwqbyRFCDWn21h6GaBAaQYU3EmGKGvFSFvWQW
         sZz84BIFLURIytePijowM+6g1kpWqYjig9pQM/0pgeTqmlH9wNXqm1JlnSIFzOBTRHvh
         hwFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DfSgvHZbqHqfrUixzl4vtSlKieBu2jGfRxirkXyYQGA=;
        b=J7FFbvVNePi8+DY9LXT4m8+q7yMNUzf0Hhd88h58D2a17BlDRwPeSX4l9eu8Uuo78P
         Zw4aFn03Pg6yWk7bS0wBCP+C/gjcK5tguwYs6+ykUQyz9u4aP40yPLF0QdKAkGd0XBJw
         6M0jrzhFGQtb1iktPqTOjJfeDwEMx/smHhVAo3F1xz86vRDRGs88Ezu4xlumEb6IAcG0
         wC3jLknDYmXal4MMmdDrZrCbkLAlYBiked3xNxf8KL+gp6olkVOZuP5swp6ybWjFHMqP
         TUirVku1MxgGt10RUHx5NMTBX32ajWR2IH4nMO8LhRr/Wa/Y9M3gXrb5cMNVCR28oiDW
         05nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DfSgvHZbqHqfrUixzl4vtSlKieBu2jGfRxirkXyYQGA=;
        b=EH2F+iZerDHHMTkpbXEEO4Q8D68Np6V4AWKclXDzJ+dYmHccdsszbA4pdwCUOUBanX
         JAqKdiTPzcacuO+5+8yWFljzkmR356lvbIHVNotFwcbzcUoywG4POjUitewj2Vbla2xR
         2hI/10PbNy8l88XQCAN5GM3tdJxsHzS0nWW4oC5j174FVMXJHnMg4SL8uRa9c42CAS2O
         aM7EkRwXNGSd62kHATAIKyqEw1diwDrGsD3+Y4KADcTBGYmn8KRIGL3IdX3VJt00bQUW
         R7oaSW/tzfarzjP7SNfTboLqr39wYgLScjSmR7u++Q/7waYYHAO0P2+ZtjVNt1TjWSSD
         yn8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530x6+pdc/O7SPaU3pp8c5OCNAFNvPg486rqVYbGsFIYLrRxdoa+
	KABKqbN9gavFFHN+QVv+3y4=
X-Google-Smtp-Source: ABdhPJw4sC9qDIyefmvg07NTuWHt33yprLQ/2VHDfXfCCxwyEhn+b8K6o278k7S5KiEdwU7xx3TyBw==
X-Received: by 2002:ac8:78c:: with SMTP id l12mr1585487qth.112.1631067266733;
        Tue, 07 Sep 2021 19:14:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f90b:: with SMTP id l11ls566199qkj.0.gmail; Tue, 07 Sep
 2021 19:14:26 -0700 (PDT)
X-Received: by 2002:a05:620a:1e8:: with SMTP id x8mr1302457qkn.153.1631067266301;
        Tue, 07 Sep 2021 19:14:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631067266; cv=none;
        d=google.com; s=arc-20160816;
        b=kGcj7WdQA4nZGokpYVV/83RHsXLeVxqW1K8GYImxADf+LNF0g9oDqxSOtwVyOLpmJL
         199uLvPpnig5pCVyEfkDHewGRvDVrfvCjFEYSDYHSvSC74CqPMrVXCrolhyIOcXuyAS+
         iSD3u4Ot7UkFFTsl93T9mmi4oA25uauiSBktb60nNUoQk67UVLexciy5mYT7ANKfmPzs
         4ps0dNMF0aOaLKUkqnavj+AtUG6O1tiDIm1JBuM+zatlPP5+bfteDQYXMh5HJTl4SQL3
         z+RNPuR23G+JIFNIJV4QwKHGJh0N5gb++QX3mXXOKyMHhCEYrjCrkUBcDlrVxqWtm1P5
         Pj8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8o0fxdHzOCkEZCGYXfRE2za1H5L/C1470xBMgivAhss=;
        b=fQwb307bOSvq8tSpobwt8QcgxOZV5R7xCRgdRVkFWN6IUmQ8A//ZztdiTd3ik0zEb9
         U6Pc/qLq6+RibNmLXcE8R+PzjNeGBMuEEbdhVKVa1zbiU8V9ivG2aifw/0kVO2CQn2TS
         JoYcHD66OVr1+ljnqvWeiBpbDPER9b3Ki6lWtPa++QkmlFxe4dQWZIoFZ3X5zEFNalrB
         BFfPdymNOoBYv9s3TaaW7ESnrrVQfKeTUCVE/8UtQALo3xBOUtP1aexcj0kywnU8IBp9
         uyJcthalwaFMSsvq5ks661GchU0b4BGDzA5r82/pSgFWcXjm6Hye5EVJVWOKwkHmT6Tl
         QntQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=l1aIuod4;
       spf=pass (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::92d as permitted sender) smtp.mailfrom=kortanzh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x92d.google.com (mail-ua1-x92d.google.com. [2607:f8b0:4864:20::92d])
        by gmr-mx.google.com with ESMTPS id m8si104477qtn.5.2021.09.07.19.14.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 19:14:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::92d as permitted sender) client-ip=2607:f8b0:4864:20::92d;
Received: by mail-ua1-x92d.google.com with SMTP id j31so457263uad.10
        for <clang-built-linux@googlegroups.com>; Tue, 07 Sep 2021 19:14:26 -0700 (PDT)
X-Received: by 2002:ab0:3d86:: with SMTP id l6mr818196uac.99.1631067266036;
 Tue, 07 Sep 2021 19:14:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210907094336.16558-1-kortanzh@gmail.com> <YTfGXn4cTZ87zTP1@archlinux-ax161>
In-Reply-To: <YTfGXn4cTZ87zTP1@archlinux-ax161>
From: Kortan Zh <kortanzh@gmail.com>
Date: Wed, 8 Sep 2021 10:14:16 +0800
Message-ID: <CANEM3dQ3CBTrd+sxcHqzYYJeW+k6EkdjgE2D7b5LgOhPBbydEg@mail.gmail.com>
Subject: Re: [PATCH] fix missing 'sys' package
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Content-Type: multipart/alternative; boundary="000000000000ff398905cb7270cc"
X-Original-Sender: kortanzh@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=l1aIuod4;       spf=pass
 (google.com: domain of kortanzh@gmail.com designates 2607:f8b0:4864:20::92d
 as permitted sender) smtp.mailfrom=kortanzh@gmail.com;       dmarc=pass
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

--000000000000ff398905cb7270cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the detailed explanation! I'll send corrected patch later.

Kortan


Nathan Chancellor <nathan@kernel.org> =E4=BA=8E 2021=E5=B9=B49=E6=9C=888=E6=
=97=A5=E5=91=A8=E4=B8=89 04:07=E5=86=99=E9=81=93=EF=BC=9A

> Hi Kortan,
>
> Thank you for the patch! I have some comments inline.
>
> The commit title/subject should have a prefix to it. You can see the
> prefix for this particular file by running:
>
> $ git log --oneline --format=3D%s scripts/clang-tools/gen_compile_command=
s.py
> gen_compile_commands: extract compiler command from a series of commands
> gen_compile_commands: prune some directories
> scripts/clang-tools: switch explicitly to Python 3
> Makefile: Add clang-tidy and static analyzer support to makefile
>
> So your commit title would be:
>
> gen_compile_commands: fix missing 'sys' package
>
> On Tue, Sep 07, 2021 at 05:43:36PM +0800, Kortan wrote:
>
> There needs to be a message here. It is obvious once you look at the
> file that we call sys.exit() so we need the import but that needs to be
> explained up front here. checkpatch.pl would have warned you about this:
>
> WARNING: Missing commit description - Add an appropriate one
>
> total: 0 errors, 1 warnings, 7 lines checked
>
> Otherwise, the change looks good to me. Please make these corrections
> and send a v2 of the patch, which can be done with the '-v#' flag to
> 'git format-patch' (e.g. '-v2' in this case).
>
> > Signed-off-by: Kortan <kortanzh@gmail.com>
> > ---
>
> Describe the diff between v1 and v2 here like:
>
> v1 -> v2:
>
> * Fix commit title
>
> * Improve commit message
>
> then be sure to also include Masahiro Yamada and the linux-kbuild
> mailing list as he will pick up the patch.
>
> Masahiro Yamada <masahiroy@kernel.org>
> linux-kbuild@vger.kernel.org
>
> Please use our new mailing list as well:
>
> llvm@lists.linux.dev
>
> Cheers,
> Nathan
>
> >  scripts/clang-tools/gen_compile_commands.py | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/scripts/clang-tools/gen_compile_commands.py
> b/scripts/clang-tools/gen_compile_commands.py
> > index 0033eedce003..1d1bde1fd45e 100755
> > --- a/scripts/clang-tools/gen_compile_commands.py
> > +++ b/scripts/clang-tools/gen_compile_commands.py
> > @@ -13,6 +13,7 @@ import logging
> >  import os
> >  import re
> >  import subprocess
> > +import sys
> >
> >  _DEFAULT_OUTPUT =3D 'compile_commands.json'
> >  _DEFAULT_LOG_LEVEL =3D 'WARNING'
> > --
> > 2.33.0
> >
> >
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CANEM3dQ3CBTrd%2BsxcHqzYYJeW%2Bk6EkdjgE2D7b5LgOhPBbydEg%4=
0mail.gmail.com.

--000000000000ff398905cb7270cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks for the detailed explanation! I&#39;ll send correc=
ted patch later.<div dir=3D"auto"><br></div><div dir=3D"auto">Kortan</div><=
br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gm=
ail_attr">Nathan Chancellor &lt;<a href=3D"mailto:nathan@kernel.org">nathan=
@kernel.org</a>&gt; =E4=BA=8E 2021=E5=B9=B49=E6=9C=888=E6=97=A5=E5=91=A8=E4=
=B8=89 04:07=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">Hi Kortan,<br>
<br>
Thank you for the patch! I have some comments inline.<br>
<br>
The commit title/subject should have a prefix to it. You can see the<br>
prefix for this particular file by running:<br>
<br>
$ git log --oneline --format=3D%s scripts/clang-tools/gen_compile_commands.=
py<br>
gen_compile_commands: extract compiler command from a series of commands<br=
>
gen_compile_commands: prune some directories<br>
scripts/clang-tools: switch explicitly to Python 3<br>
Makefile: Add clang-tidy and static analyzer support to makefile<br>
<br>
So your commit title would be:<br>
<br>
gen_compile_commands: fix missing &#39;sys&#39; package<br>
<br>
On Tue, Sep 07, 2021 at 05:43:36PM +0800, Kortan wrote:<br>
<br>
There needs to be a message here. It is obvious once you look at the<br>
file that we call sys.exit() so we need the import but that needs to be<br>
explained up front here. <a href=3D"http://checkpatch.pl" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">checkpatch.pl</a> would have warned you abou=
t this:<br>
<br>
WARNING: Missing commit description - Add an appropriate one<br>
<br>
total: 0 errors, 1 warnings, 7 lines checked<br>
<br>
Otherwise, the change looks good to me. Please make these corrections<br>
and send a v2 of the patch, which can be done with the &#39;-v#&#39; flag t=
o<br>
&#39;git format-patch&#39; (e.g. &#39;-v2&#39; in this case).<br>
<br>
&gt; Signed-off-by: Kortan &lt;<a href=3D"mailto:kortanzh@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">kortanzh@gmail.com</a>&gt;<br>
&gt; ---<br>
<br>
Describe the diff between v1 and v2 here like:<br>
<br>
v1 -&gt; v2:<br>
<br>
* Fix commit title<br>
<br>
* Improve commit message<br>
<br>
then be sure to also include Masahiro Yamada and the linux-kbuild<br>
mailing list as he will pick up the patch.<br>
<br>
Masahiro Yamada &lt;<a href=3D"mailto:masahiroy@kernel.org" target=3D"_blan=
k" rel=3D"noreferrer">masahiroy@kernel.org</a>&gt;<br>
<a href=3D"mailto:linux-kbuild@vger.kernel.org" target=3D"_blank" rel=3D"no=
referrer">linux-kbuild@vger.kernel.org</a><br>
<br>
Please use our new mailing list as well:<br>
<br>
<a href=3D"mailto:llvm@lists.linux.dev" target=3D"_blank" rel=3D"noreferrer=
">llvm@lists.linux.dev</a><br>
<br>
Cheers,<br>
Nathan<br>
<br>
&gt;=C2=A0 scripts/clang-tools/gen_compile_commands.py | 1 +<br>
&gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt; <br>
&gt; diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/cla=
ng-tools/gen_compile_commands.py<br>
&gt; index 0033eedce003..1d1bde1fd45e 100755<br>
&gt; --- a/scripts/clang-tools/gen_compile_commands.py<br>
&gt; +++ b/scripts/clang-tools/gen_compile_commands.py<br>
&gt; @@ -13,6 +13,7 @@ import logging<br>
&gt;=C2=A0 import os<br>
&gt;=C2=A0 import re<br>
&gt;=C2=A0 import subprocess<br>
&gt; +import sys<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 _DEFAULT_OUTPUT =3D &#39;compile_commands.json&#39;<br>
&gt;=C2=A0 _DEFAULT_LOG_LEVEL =3D &#39;WARNING&#39;<br>
&gt; -- <br>
&gt; 2.33.0<br>
&gt; <br>
&gt; <br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CANEM3dQ3CBTrd%2BsxcHqzYYJeW%2Bk6EkdjgE2D7b5Lg=
OhPBbydEg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CANEM3dQ3CBTrd%2BsxcHqzYYJeW%2B=
k6EkdjgE2D7b5LgOhPBbydEg%40mail.gmail.com</a>.<br />

--000000000000ff398905cb7270cc--
