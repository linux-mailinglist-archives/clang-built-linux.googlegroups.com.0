Return-Path: <clang-built-linux+bncBCF4ZUOHXUEBBIPS2KFQMGQEYEDVRMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F4643863D
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 Oct 2021 03:38:43 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id w16-20020a9d5a90000000b0055036b7abd9sf4644241oth.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Oct 2021 18:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nTiS2LDsRZQT4cWOey3+5ELptAX/r/UdoxpVsEBqwb8=;
        b=Ibep65OSmAPXm8o7Xt6cg5WEi73nYS3eemlex0v20t0Sjh9sWhwn0LqETNlz9OjujN
         o/laKJtCHrBtiHRQRLVFCtuYB2QQ7xS0tou3XvOfq7zDKZJ93Ouup/FLYrdbZy1wxMi+
         OoihrT3/+up5l3zf2yYLGoxakBWaAlSRCp1JucZbYJAG8ZRAwiC9BTKIFIvXEFKbhcCH
         4tARGdE9NvdHEMuxXgxDNLziljAeSjyyUgwi9kmMCtBDdunl8KG96+maR5jJ2l2bvfeP
         lLcgqcJ/cwgccPzXxvxe1ay5NvdoixMKI3I6cf8V4g/dWvnOi10OOR5d4JXYemc81jg0
         Ro0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nTiS2LDsRZQT4cWOey3+5ELptAX/r/UdoxpVsEBqwb8=;
        b=iVQpw2EGyDV3QZC2PbWxf49KPi2dLPy0mZ4gTSQAJhc3IUM5XoC1GOENe30K45IUMu
         PKFYFiSE4au0PXNwY2P5tF70Xpa9M1pFMmwrCN5qx1t1Y4YLhE2mqeCqUEtMckRPVgFd
         j0I/Jbo7SHUQcBjafuxRbKsuyBiLlhW4R0Bt1UKjTG6ftPKcoKr3uX9pKAHcq0hHtHTC
         EJOb57OQgTmqkOXmipYIWGZiWQeYUuO0xWJ22UW4GiBg9KJ0rtjsh0AfXKreAuRoYwMd
         +2iAxAPdyQs4rWa2k433EOfB36bdQ7uZh60fl3AByubSGLRvk4byyZTdHExQpsF1fW8Y
         FhJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nTiS2LDsRZQT4cWOey3+5ELptAX/r/UdoxpVsEBqwb8=;
        b=wSQEFlFRw+eeYMUjHL6h8rXNdwi7U+2UOdtGVSby0aUDwpe5YQ+411yGsP5NljnyPJ
         w8bh/P+MlRYBVHR/7RklDQcWtZCv6ifFSuQdGwMsnDhK57/fAG5PM5e/UDS4EsPk0Cwu
         n60MegDDxvdAnM4RW3WxHGeYFc26op1Ri9pAiYi1hKdG85caSllW+8QHfhzuPGprTRFI
         RiRgPlctASlugp2mt8Qn0FGx1pQegYn51Soz/qghP85ZbkQWQc5/feDcUPLK8eh5m8Yv
         WBCNnRKqR06a5riNFNJhsrynZrH/wGwhfbujCMyX/zNMEpZ8PljmzpMPHXmHuGMoMxYh
         qBTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vnaEE4HjwmKUeI61K3hBWBdXRCtUVWIm4RBV6dqsd6tGgKZBy
	qipOjscve5d/qN2vWfn4qRc=
X-Google-Smtp-Source: ABdhPJxOHDJW0d2Z8wiVnkFlEzaz14/7aUghh+DtwHQgtglICzRFFhQ3pPEG1fqh6zG1G+IPaCBWLQ==
X-Received: by 2002:a05:6830:1c2e:: with SMTP id f14mr7473194ote.202.1635039521600;
        Sat, 23 Oct 2021 18:38:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6155:: with SMTP id c21ls3744890otk.10.gmail; Sat, 23
 Oct 2021 18:38:41 -0700 (PDT)
X-Received: by 2002:a05:6830:1f2a:: with SMTP id e10mr7090516oth.118.1635039521089;
        Sat, 23 Oct 2021 18:38:41 -0700 (PDT)
Date: Sat, 23 Oct 2021 18:38:40 -0700 (PDT)
From: Jesse T <mr.bossman075@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <9c5b16b1-d773-4b18-842e-6e6db7509e61n@googlegroups.com>
In-Reply-To: <CAK8P3a04ZGgxNf6mmufwOmCY37JJkN9CHDJGQe2wY4CabwafuQ@mail.gmail.com>
References: <20210830213846.2609349-1-ndesaulniers@google.com>
 <CAK8P3a2JJ=5t16enn2LaZE_zT1ZqNVyi9FQpTUrgVsQWiMtDkw@mail.gmail.com>
 <CAK8P3a04ZGgxNf6mmufwOmCY37JJkN9CHDJGQe2wY4CabwafuQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: select HAVE_FUTEX_CMPXCHG
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1540_1417252816.1635039520613"
X-Original-Sender: mr.bossman075@gmail.com
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

------=_Part_1540_1417252816.1635039520613
Content-Type: multipart/alternative; 
	boundary="----=_Part_1541_342939895.1635039520614"

------=_Part_1541_342939895.1635039520614
Content-Type: text/plain; charset="UTF-8"

Hai all,
This seems to fix another issue i have encountered at
https://github.com/Mr-Bossman/linux/tree/imxrt_test
On this system it accesses a null pointer due to this test and causes a 
hard fault.
there is no MMU which may be the problem.
Thomas Gleixner's fix for this seems to work, but the patch 
7bbd7403526a2a9f398f360fcb97f256052ca6bf does not.
Any ideas as to what could be a fix.

Im very sorry about inline responses and broken reply, i dont know why i 
can reply all.

On Friday, September 17, 2021 at 4:34:09 PM UTC-4 arndbe...@gmail.com wrote:

> On Fri, Sep 17, 2021 at 9:11 AM Arnd Bergmann <ar...@arndb.de> wrote:
> >
> > Nice! I did remember that we had come up with a number of solutions
> > for the build error and that at least one of them was an obvious and
> > nice fix, but I could never figure out what it was. This is clearly 
> better
> > than any of the other ones I had found when I last looked.
>
> Actually it turns out that I had come up with another approach, removing
> the need for HAVE_FUTEX_CMPXCHG and the boot time check altogether:
>
>
> https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/commit/?h=randconfig-5.13&id=7bbd7403526a2a9f398f360fcb97f256052ca6bf
>
> Guo Ren fixed the missing csky bit in there, but since the sparc32 support
> is still missing, I never sent this before forgetting about it.
> I think the only users of sparc32 these days are LEON CPUs, which have
> usable atomics and could implement this properly but support for that was
> not upstreamed.
>
> Arnd
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9c5b16b1-d773-4b18-842e-6e6db7509e61n%40googlegroups.com.

------=_Part_1541_342939895.1635039520614
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hai all,<br><div>This seems to fix another issue i have encountered at<br>h=
ttps://github.com/Mr-Bossman/linux/tree/imxrt_test<br>On this system it acc=
esses a null pointer due to this test and causes a hard fault.<br>there is =
no MMU which may be the problem.<br>Thomas Gleixner's fix for this seems to=
 work, but the patch 7bbd7403526a2a9f398f360fcb97f256052ca6bf does not.<br>=
Any ideas as to what could be a fix.<br><br>Im very sorry about inline resp=
onses and broken reply, i dont know why i can reply all.<br></div><br><div =
class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Friday, Sep=
tember 17, 2021 at 4:34:09 PM UTC-4 arndbe...@gmail.com wrote:<br/></div><b=
lockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: =
1px solid rgb(204, 204, 204); padding-left: 1ex;">On Fri, Sep 17, 2021 at 9=
:11 AM Arnd Bergmann &lt;<a href data-email-masked rel=3D"nofollow">ar...@a=
rndb.de</a>&gt; wrote:
<br>&gt;
<br>&gt; Nice! I did remember that we had come up with a number of solution=
s
<br>&gt; for the build error and that at least one of them was an obvious a=
nd
<br>&gt; nice fix, but I could never figure out what it was. This is clearl=
y better
<br>&gt; than any of the other ones I had found when I last looked.
<br>
<br>Actually it turns out that I had come up with another approach, removin=
g
<br>the need for HAVE_FUTEX_CMPXCHG and the boot time check altogether:
<br>
<br><a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playgro=
und.git/commit/?h=3Drandconfig-5.13&amp;id=3D7bbd7403526a2a9f398f360fcb97f2=
56052ca6bf" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"http=
s://www.google.com/url?hl=3Den&amp;q=3Dhttps://git.kernel.org/pub/scm/linux=
/kernel/git/arnd/playground.git/commit/?h%3Drandconfig-5.13%26id%3D7bbd7403=
526a2a9f398f360fcb97f256052ca6bf&amp;source=3Dgmail&amp;ust=3D1635120255109=
000&amp;usg=3DAFQjCNEUOEYfyex9-z86jxP7WORdpY9cDw">https://git.kernel.org/pu=
b/scm/linux/kernel/git/arnd/playground.git/commit/?h=3Drandconfig-5.13&amp;=
id=3D7bbd7403526a2a9f398f360fcb97f256052ca6bf</a>
<br>
<br>Guo Ren fixed the missing csky bit in there, but since the sparc32 supp=
ort
<br>is still missing, I never sent this before forgetting about it.
<br>I think the only users of sparc32 these days are LEON CPUs, which have
<br>usable atomics and could implement this properly but support for that w=
as
<br>not upstreamed.
<br>
<br>        Arnd
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/9c5b16b1-d773-4b18-842e-6e6db7509e61n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/9c5b16b1-d773-4b18-842e-6e6db7509e61n%40googleg=
roups.com</a>.<br />

------=_Part_1541_342939895.1635039520614--

------=_Part_1540_1417252816.1635039520613--
