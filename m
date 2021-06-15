Return-Path: <clang-built-linux+bncBCS5F7M6QIOBBQXTUGDAMGQEBQDLINY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B97AC3A7B4F
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 11:58:27 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id g14-20020a926b0e0000b02901bb2deb9d71sf9844572ilc.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 02:58:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623751106; cv=pass;
        d=google.com; s=arc-20160816;
        b=kOLSK4kfeA8sizJ6XOqG+PscgdpFB81/bvo7INRLD9B3FDjdqJEYU+b69zqyANaxzG
         TvJaFSQe1EjnMi65Z4+NlISqqhKlZAStf0oIAG+U86qt8PEWu+0+am1pGdpuym7jstGA
         xDcf2sP6eT1ajtDDHoy+L1c+d5zIePSsnIwZklWK712RzhS1YbzJ8CyE0ZDSzhgIrvzF
         lE8NF7VRDG/2wkBZCXXCXFPnoXp6B+1RB/UEEViKDtiPAigcwzpzgCWYsV16jd1dPZjS
         F7Iw6Akqt+AIsJC6g+AGOzYUac0ym6Uwjsc0H8KnRpFvBt35vdSN5Ay5T4oShc6vx+Ci
         nhsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Bb5JfylPSpBW5C4r4AMnVS5jQg1uKRySkNENPoN6YoY=;
        b=WJftr4tNQk4mSuz5MAAfiz/JEaAyRSLu8GR2ZlYO+Q7YyPB/yYtRBRSBg6TpxEefSy
         TrdodPdbOwwI9rciJB0ppvn+psqrX9zkicTTfqugMyS2b/Q9jTt2opuccU90ebBIts51
         vYOfG3tJWAI36AudxmsTJofsCHd+Q4yym63fHeImJdPUJkBOuTPZLwLEwBVPndbmGSZb
         al1X3dmOxwkOIB7BDjs67m7e4TX65PzTAHpegPRlGqpE2LHfs5wpxdvlOamEOJZMEjR7
         WNNVfFELpEn/v+zrUYJq6bgpDl2r10ZY/HrarXajXKc3AyM+5+fJsVaTTL230sJc5vC5
         jC0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=g9CfJe+V;
       spf=pass (google.com: domain of nkondras@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=nkondras@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bb5JfylPSpBW5C4r4AMnVS5jQg1uKRySkNENPoN6YoY=;
        b=RB1/BmukpWFrOdgY0v+YlPcbUy2hzva2SacrfZPLP2477vFEXyTVXwUdxRQhyhToBM
         8wtktIJkC/TlmIDDUj1o7E++1hkIjysNLq7VVszUX5ehs+ujdDzx8dAAwLmlmoswJIKV
         TlH8MMKrbs6gfyUjUTNNPWJdN6vgEOvtAF5dp+rnGTivYNPVkuoPOvCDGKRM3lSxG9+N
         V/Z9AnDN0yoYUso1PBiUlPeA/KVi+cUe8CAe1YRRSK+gAk13Mc/6y0yO50pSiSEo0vIJ
         TC4PPhV1y96njk3vp0/bbtC/1lE4DLy3FgjBI/QBqPTKyIWQ/X86TqN8SAsLVOl5WloY
         yMVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bb5JfylPSpBW5C4r4AMnVS5jQg1uKRySkNENPoN6YoY=;
        b=L9zhtPwjVjpjhETNFmfn2qqGuyZoAneFn6RnsXm4jniYUmons0IPiroStfz2Wv+EdQ
         Y/JXhCy4iVgwP6PAYa74r+ttFGZlUQ4Az5erIlYNLdfumACkpF3sgGY4JcBFVvGRPEmp
         1cyeQg08xz5+0pGLtdmwvxp3avGYK9KA3rZJFO5c6gThzcBA5+ZfV55wil1+3QiJNAl5
         poiMExlqdmdYU6VXFONeLTxVMSpid+r9HHDZSArCtXdcuYAyCV7C89qFSk9hiSX53pti
         kk4KymBl1VAXJI58OjzzvZDSDfx/ZvZIuBHXerP+oa7OOlvt0o1Zs4zBSLloCTLByecs
         Cbvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532X9b3UC9nOCipzUmypgoAYXcfg8dhWjPYu0yPQF4M8lKZ2lxfz
	Gxx3PUIoVcfUu3jXhWpmq64=
X-Google-Smtp-Source: ABdhPJyDmU87xoT6s8/IeVoQcb3LmrKtc0hqTcBtezxVpmRzVgDFRYv5yS3UTNCYX60j6HgihN1A3g==
X-Received: by 2002:a05:6602:140e:: with SMTP id t14mr17814405iov.42.1623751106333;
        Tue, 15 Jun 2021 02:58:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:191b:: with SMTP id p27ls2923617jal.5.gmail; Tue,
 15 Jun 2021 02:58:25 -0700 (PDT)
X-Received: by 2002:a02:c894:: with SMTP id m20mr1712950jao.53.1623751105686;
        Tue, 15 Jun 2021 02:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623751105; cv=none;
        d=google.com; s=arc-20160816;
        b=eYGA8NcMlgUrNzYSjz3PWgwkWpYbwsuCTMrS2QBpBiuflcXjjaHxnqfGXOJx6TJUZw
         iLI/PAHPq5pn5ZG8WAx4i710alf0FLI+RopIxHGdQNcDs/5rzYk53s4DIG/9MgK63KKv
         tADwJiRfKXasF6+tAXApCtR17aD+zPEkWCHeZ6UtunD5g7xN6vK/JkzhsOfO9VNTV6VU
         q7SIgcDjuLnDHRuGhiPfJPp2AIZvQ5mcuJ/3Uzl92Mbtkv1F6iYBAHaGj+5al7Q/4kRv
         y3O5VG2xC+qR6yC1NilGOfYq5xvC8mWu0R9kFiFJArMAhTQb1tJa52bsj00Ni+pS7/d7
         5/6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YRrgoeqs6+FsT8PAMVqpJ3DeYrjxe9AzS6rcZLE2bO0=;
        b=nKqm6HLR1QdXL4GOHGYzWn3DnbTZ81xNUe80eyPHHbG1C+GmPRMqxHpAVx+/kohalp
         VYdyVva+EG58fThKO6FzQTwbVKAYCRMlyyo9e6Y46+Z1nF3Koh2oAKq+p3EA+GMkcoLl
         oO+W/tZuMic1sj0O5oX7+ThgYpgXefdMLTVfuDUo8FR9zR0BIG1B6ooorkJh5Ca6ZvkW
         JNf5rdzHvJQMdL5jBHj/K8GAvnPe2kBWy9VZemd3JuxrOs/Hl9AaMM5LDAhsRywVS8Iq
         IKKp4qdFjePbjZe+GmsdPgtTfKd07sg52m7VaTC2tqetC8y2Oy4upuMD2C8R2SLzlCpA
         b1iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=g9CfJe+V;
       spf=pass (google.com: domain of nkondras@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=nkondras@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id g16si221623ion.0.2021.06.15.02.58.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 02:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nkondras@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-Oz39ze03NhCj08_3CmB-Vw-1; Tue, 15 Jun 2021 05:58:21 -0400
X-MC-Unique: Oz39ze03NhCj08_3CmB-Vw-1
Received: by mail-ed1-f69.google.com with SMTP id y16-20020a0564024410b0290394293f6816so4520668eda.20
        for <clang-built-linux@googlegroups.com>; Tue, 15 Jun 2021 02:58:21 -0700 (PDT)
X-Received: by 2002:a17:907:1c20:: with SMTP id nc32mr19461661ejc.21.1623751099971;
        Tue, 15 Jun 2021 02:58:19 -0700 (PDT)
X-Received: by 2002:a17:907:1c20:: with SMTP id nc32mr19461650ejc.21.1623751099827;
 Tue, 15 Jun 2021 02:58:19 -0700 (PDT)
MIME-Version: 1.0
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <202106011315.432A65D6@keescook> <774899c5-c20a-3d7e-3289-ee257b86e06e@collabora.com>
In-Reply-To: <774899c5-c20a-3d7e-3289-ee257b86e06e@collabora.com>
From: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>
Date: Tue, 15 Jun 2021 12:58:08 +0300
Message-ID: <CAMbaCcc4-n022x97S-6ur8P9xKcp3cNMhK31y2GJLnd5PVOM-g@mail.gmail.com>
Subject: Re: #KCIDB engagement report
To: kernelci@groups.io, guillaume.tucker@collabora.com
Cc: keescook@chromium.org, Nick Desaulniers <ndesaulniers@google.com>, 
	"automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Vishal Bhoj <vishal.bhoj@linaro.org>, 
	Antonio Terceiro <antonio.terceiro@linaro.org>, Remi Duraffort <remi.duraffort@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000825e6905c4cb03c3"
X-Original-Sender: nikolai.kondrashov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=g9CfJe+V;
       spf=pass (google.com: domain of nkondras@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=nkondras@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

--000000000000825e6905c4cb03c3
Content-Type: text/plain; charset="UTF-8"

Guillaume,

I checked the database, and the submission queue logs and could only find
the build itself, but no tests. They were probably lost somewhere before
KCIDB.

Nick
P.S. Sorry Debian broke Thunderbird with GMail, so I have to use WebUI and
my messages might be extra ugly.

On Fri, 11 Jun 2021 at 19:12, Guillaume Tucker <
guillaume.tucker@collabora.com> wrote:

> Hi Kees,
>
> On 01/06/2021 21:26, Kees Cook wrote:
> > On Mon, May 24, 2021 at 10:38:22AM -0700, 'Nick Desaulniers' via Clang
> Built Linux wrote:
> >> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
> >> <Nikolai.Kondrashov@redhat.com> wrote:
> >>> [...]
> >>>      KernelCI native
> >>>          Sending (a lot of) production build and test results.
> >>>          https://staging.kernelci.org:3000/?var-origin=kernelci
> >>> [...]
> >
> > Apologies for the thread hijack, but does anyone know what's happening
> > with kselftest? It seems missing from the listed[1] build artifacts, but
> > it is actually present[2] (and I see the logs for generating the tarball
> > there too), but I can't find any builds that actually run the tests?
> >
> > (Or how do I see a top-level list of all tests and search it?)
>
> The kselftest results are all there on the KernelCI native
> dashboard, for example the futex tests:
>
>
> https://linux.kernelci.org/test/job/mainline/branch/master/kernel/v5.13-rc5-74-g06af8679449d/plan/kselftest-futex/
>
>
> Here's a set of passing results on a "coral" x86 Chromebook, with
> a bunch of unknowns but that's because other kselftests are being
> run when they shouldn't (net, mqueue, ptrace) so it's noise which
> should get resolved with a fix soon:
>
>   https://linux.kernelci.org/test/plan/id/60c2bf67ed48b86ffe0c0df8/
>
>
> And here are the full kernel build details:
>
>   https://linux.kernelci.org/build/id/60c2bdeea60229633d0c0f0c/
>
> and artifacts (logs, binaries, meta-data in JSON):
>
>
> https://storage.kernelci.org/mainline/master/v5.13-rc5-74-g06af8679449d/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/
>
>
> So this is the original data, now let's look at what we have in
> KCIDB.  Here's the matching build:
>
>
> https://kcidb.kernelci.org/d/build/build?orgId=1&var-dataset=kernelci04&var-id=kernelci:kernelci.org:60c2bdeea60229633d0c0f0c
>
> However there's no results, probably because submitting the data
> failed for some reason.  It could be due to some invalid
> characters in the test names.  The Log link works though, it
> takes you to the directory with all the log files - to be
> improved as it's advertised as a single build log...
>
> So we'll take a closer look, see if there were any errors in the
> logs to find out why the results aren't in KCIDB.  But the
> kselftests were definitely run.
>
>
> Thanks,
> Guillaume
>
> > [1]
> https://kcidb.kernelci.org/d/build/build?orgId=1&var-dataset=kernelci04&var-id=kernelci:kernelci.org:60b654321456eb7654b3afa6&fullscreen&panelId=17
> > [2]
> https://storage.kernelci.org//mainline/master/v5.13-rc4-11-gc2131f7e73c9/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Groups.io Links: You receive all messages sent to this group.
> View/Reply Online (#1136): https://groups.io/g/kernelci/message/1136
> Mute This Topic: https://groups.io/mt/83045962/3616695
> Mute #kcidb:https://groups.io/g/kernelci/mutehashtag/kcidb
> Group Owner: kernelci+owner@groups.io
> Unsubscribe: https://groups.io/g/kernelci/unsub [
> Nikolai.Kondrashov@redhat.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMbaCcc4-n022x97S-6ur8P9xKcp3cNMhK31y2GJLnd5PVOM-g%40mail.gmail.com.

--000000000000825e6905c4cb03c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Guillaume,</div><div><br></div><div>I checked the dat=
abase, and the submission queue logs and could only find the build itself, =
but no tests. They were probably lost somewhere before KCIDB.</div><div><br=
></div><div>Nick</div><div>P.S. Sorry Debian broke Thunderbird with GMail, =
so I have to use WebUI and my messages might be extra ugly.<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, 11 Jun 2021 at 19:12, Guillaume Tucker &lt;<a href=3D"mailto:guillaume.tu=
cker@collabora.com">guillaume.tucker@collabora.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi Kees,<br>
<br>
On 01/06/2021 21:26, Kees Cook wrote:<br>
&gt; On Mon, May 24, 2021 at 10:38:22AM -0700, &#39;Nick Desaulniers&#39; v=
ia Clang Built Linux wrote:<br>
&gt;&gt; On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov<br>
&gt;&gt; &lt;<a href=3D"mailto:Nikolai.Kondrashov@redhat.com" target=3D"_bl=
ank">Nikolai.Kondrashov@redhat.com</a>&gt; wrote:<br>
&gt;&gt;&gt; [...]<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 KernelCI native<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Sending (a lot of) productio=
n build and test results.<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://staging.k=
ernelci.org:3000/?var-origin=3Dkernelci" rel=3D"noreferrer" target=3D"_blan=
k">https://staging.kernelci.org:3000/?var-origin=3Dkernelci</a><br>
&gt;&gt;&gt; [...]<br>
&gt; <br>
&gt; Apologies for the thread hijack, but does anyone know what&#39;s happe=
ning<br>
&gt; with kselftest? It seems missing from the listed[1] build artifacts, b=
ut<br>
&gt; it is actually present[2] (and I see the logs for generating the tarba=
ll<br>
&gt; there too), but I can&#39;t find any builds that actually run the test=
s?<br>
&gt; <br>
&gt; (Or how do I see a top-level list of all tests and search it?)<br>
<br>
The kselftest results are all there on the KernelCI native<br>
dashboard, for example the futex tests:<br>
<br>
=C2=A0 <a href=3D"https://linux.kernelci.org/test/job/mainline/branch/maste=
r/kernel/v5.13-rc5-74-g06af8679449d/plan/kselftest-futex/" rel=3D"noreferre=
r" target=3D"_blank">https://linux.kernelci.org/test/job/mainline/branch/ma=
ster/kernel/v5.13-rc5-74-g06af8679449d/plan/kselftest-futex/</a><br>
<br>
<br>
Here&#39;s a set of passing results on a &quot;coral&quot; x86 Chromebook, =
with<br>
a bunch of unknowns but that&#39;s because other kselftests are being<br>
run when they shouldn&#39;t (net, mqueue, ptrace) so it&#39;s noise which<b=
r>
should get resolved with a fix soon:<br>
<br>
=C2=A0 <a href=3D"https://linux.kernelci.org/test/plan/id/60c2bf67ed48b86ff=
e0c0df8/" rel=3D"noreferrer" target=3D"_blank">https://linux.kernelci.org/t=
est/plan/id/60c2bf67ed48b86ffe0c0df8/</a><br>
<br>
<br>
And here are the full kernel build details:<br>
<br>
=C2=A0 <a href=3D"https://linux.kernelci.org/build/id/60c2bdeea60229633d0c0=
f0c/" rel=3D"noreferrer" target=3D"_blank">https://linux.kernelci.org/build=
/id/60c2bdeea60229633d0c0f0c/</a><br>
<br>
and artifacts (logs, binaries, meta-data in JSON):<br>
<br>
=C2=A0 <a href=3D"https://storage.kernelci.org/mainline/master/v5.13-rc5-74=
-g06af8679449d/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/" rel=
=3D"noreferrer" target=3D"_blank">https://storage.kernelci.org/mainline/mas=
ter/v5.13-rc5-74-g06af8679449d/x86_64/x86_64_defconfig+x86-chromebook+kself=
test/gcc-8/</a><br>
<br>
<br>
So this is the original data, now let&#39;s look at what we have in<br>
KCIDB.=C2=A0 Here&#39;s the matching build:<br>
<br>
=C2=A0 <a href=3D"https://kcidb.kernelci.org/d/build/build?orgId=3D1&amp;va=
r-dataset=3Dkernelci04&amp;var-id=3Dkernelci:kernelci.org:60c2bdeea60229633=
d0c0f0c" rel=3D"noreferrer" target=3D"_blank">https://kcidb.kernelci.org/d/=
build/build?orgId=3D1&amp;var-dataset=3Dkernelci04&amp;var-id=3Dkernelci:ke=
rnelci.org:60c2bdeea60229633d0c0f0c</a><br>
<br>
However there&#39;s no results, probably because submitting the data<br>
failed for some reason.=C2=A0 It could be due to some invalid<br>
characters in the test names.=C2=A0 The Log link works though, it<br>
takes you to the directory with all the log files - to be<br>
improved as it&#39;s advertised as a single build log...<br>
<br>
So we&#39;ll take a closer look, see if there were any errors in the<br>
logs to find out why the results aren&#39;t in KCIDB.=C2=A0 But the<br>
kselftests were definitely run.<br>
<br>
<br>
Thanks,<br>
Guillaume<br>
<br>
&gt; [1] <a href=3D"https://kcidb.kernelci.org/d/build/build?orgId=3D1&amp;=
var-dataset=3Dkernelci04&amp;var-id=3Dkernelci:kernelci.org:60b654321456eb7=
654b3afa6&amp;fullscreen&amp;panelId=3D17" rel=3D"noreferrer" target=3D"_bl=
ank">https://kcidb.kernelci.org/d/build/build?orgId=3D1&amp;var-dataset=3Dk=
ernelci04&amp;var-id=3Dkernelci:kernelci.org:60b654321456eb7654b3afa6&amp;f=
ullscreen&amp;panelId=3D17</a><br>
&gt; [2] <a href=3D"https://storage.kernelci.org//mainline/master/v5.13-rc4=
-11-gc2131f7e73c9/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/" =
rel=3D"noreferrer" target=3D"_blank">https://storage.kernelci.org//mainline=
/master/v5.13-rc4-11-gc2131f7e73c9/x86_64/x86_64_defconfig+x86-chromebook+k=
selftest/gcc-8/</a><br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Groups.io Links: You receive all messages sent to this group.<br>
View/Reply Online (#1136): <a href=3D"https://groups.io/g/kernelci/message/=
1136" rel=3D"noreferrer" target=3D"_blank">https://groups.io/g/kernelci/mes=
sage/1136</a><br>
Mute This Topic: <a href=3D"https://groups.io/mt/83045962/3616695" rel=3D"n=
oreferrer" target=3D"_blank">https://groups.io/mt/83045962/3616695</a><br>
Mute #kcidb:<a href=3D"https://groups.io/g/kernelci/mutehashtag/kcidb" rel=
=3D"noreferrer" target=3D"_blank">https://groups.io/g/kernelci/mutehashtag/=
kcidb</a><br>
Group Owner: <a href=3D"mailto:kernelci%2Bowner@groups.io" target=3D"_blank=
">kernelci+owner@groups.io</a><br>
Unsubscribe: <a href=3D"https://groups.io/g/kernelci/unsub" rel=3D"noreferr=
er" target=3D"_blank">https://groups.io/g/kernelci/unsub</a> [<a href=3D"ma=
ilto:Nikolai.Kondrashov@redhat.com" target=3D"_blank">Nikolai.Kondrashov@re=
dhat.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAMbaCcc4-n022x97S-6ur8P9xKcp3cNMhK31y2GJLnd5P=
VOM-g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAMbaCcc4-n022x97S-6ur8P9xKcp3cNMhK=
31y2GJLnd5PVOM-g%40mail.gmail.com</a>.<br />

--000000000000825e6905c4cb03c3--

