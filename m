Return-Path: <clang-built-linux+bncBDM53AWYT4LBBSEJZTVQKGQE4LDNKXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD6EAC3D1
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 03:15:52 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id x1sf3338136wrn.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 18:15:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567818952; cv=pass;
        d=google.com; s=arc-20160816;
        b=oeISt3QfPVdnYpmnDNZkqmGF5yAYpi+FMxcG2FvLb3OuEiDEcp0htRLuQOYmyqKqmc
         jzsEFM+C81Jwcppl7Yefmrm2gvVsTaoPpAN+EgzAytc5i18nyc87bMIhZWtFxIdOyV1h
         bqgU20InodOJngtfAo0p9kWXCx0iVJzPqxXR4znzg46ibPu3hzkvX/bv/QZV7jw+wpw/
         dpGTz1h9o0tuVFIiccZ+CT8sQzOhF85gPtO1vCRvFCrGEbQ0Rc+O2BLVIx3Rr1u5tipA
         zwE+QmYcIh73lJcYHWNco7CY4vDfjYYB+ZvB5d/6X9ky0Bu4lFI8yEkRYIXJaNZ2/BSw
         xo7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0jjLfrkC66GmqPB2qP1TzyLvfmWEApiP9mht5zDdlYU=;
        b=XOio3ayzSKZ9Zijxiu22aVsx5bbTJ86UmgfHOmFcEhn4eRhOxebBKJkCLZqNVHv+ys
         TyzVAFMLVDxTnL3Ej8AoT3w/Bn5b5X8o0MSgwpZF5R3EfxleT4VGi6zwabDeydW8DQNj
         pQx6HARuYMqpQA5W/nUP4gsXBp7K8ecZJFM+KllTnLnvieGs4UiT55DTYcfr4TDy1Z/D
         /J2wo7N0nPSO2h9MakbmXaeMidW9Ohi9bm7jh4i6wpYdN8kPCYXoCh1kdplAUbHrDKKb
         2FVC6ejwnFjSh98CzqTx/HhLk5U+osIr9TrlpmbGEDW2IG5RN0jXnvGOAeEziSJyjR3t
         WGDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IBfjRCsf;
       spf=pass (google.com: domain of srhines@google.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=srhines@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jjLfrkC66GmqPB2qP1TzyLvfmWEApiP9mht5zDdlYU=;
        b=GTquwfotG1pc/d8tsJrhx53tJVsyVldsN2Lim5vYE3kOBZpEhCDS6GivNsFPjzCexj
         r7rUPW1DyYUQ59tipB+OcZ6u1F+fS45LRQCrWr439da0VuPFA3KgUdyI06ymrQ9mvRig
         RmQYZ70LS2mItgaIzv6o7C3ryZslkVEPHQ5a4WNk537RxoIT1DGcdidkn5zaV9bNiZ/Z
         BHtHELTdyEDoNK+HPbfzpKJEH8yh+zBrY7yuHmeJUEY+Bm41O2RTZ0Ku9GuKzj0dDi/v
         EGQTg4dMv3SH3MpXvApLl7hMtxxPlDx0RPjSYp1iI8wI95C+3ol7i1qaxe0W/BbMFCmL
         4jWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jjLfrkC66GmqPB2qP1TzyLvfmWEApiP9mht5zDdlYU=;
        b=MwZPYe4RRau2mvbJ5ZHAaMSaYnD/+BAN9SBGN2nfUFT6AtiDpIX3TT4yDSvd4zi5aY
         uKiIbxPQaYM5fKOz3CYMgk8lYS3s70v35RjFrvJoD/eHXoflXP+AhpGX31ZQm8niZevg
         WRj2bYPmvOmiRWrWcKqbTF3DPIg2yepSyiUXyrWzTnInAb07Tfw9vY7PBNFdJnVTzz3G
         UBlEc4XtsHrGza+NksfvOZoK5c6lGVuSJdRNP0b6QgZi/+7c/ugGcFuBDCTYNYbjY7j8
         eVit/tqDMWBQ0IY8rzmOQnhWoCoZ1HrTgdSii7YVi5+aa0coXaGzBJKa1U/XfVX75V7n
         usCg==
X-Gm-Message-State: APjAAAUXE18tS9tI7lAqqkaE9vH34iwQRekMZsBFifjDYbpW5PqOCMvj
	9lMoS/dHAJYVUlgoFiEqpjk=
X-Google-Smtp-Source: APXvYqzyzVo5eHJNtgLn7jsN9C37PgUN0VUPKFCwqY04IMbIZa1lJnMc4jCJjzylOn7G+JzIGi1U6A==
X-Received: by 2002:adf:f284:: with SMTP id k4mr9644151wro.294.1567818952178;
        Fri, 06 Sep 2019 18:15:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3c4:: with SMTP id g4ls2055613wrp.4.gmail; Fri, 06 Sep
 2019 18:15:51 -0700 (PDT)
X-Received: by 2002:adf:dd04:: with SMTP id a4mr9454576wrm.340.1567818951686;
        Fri, 06 Sep 2019 18:15:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567818951; cv=none;
        d=google.com; s=arc-20160816;
        b=UlpR0qmGvHxczGznwvBaVZwiYpA+1KsD2+tFVJWbfgQZADMI2BiLtvQGg4roTBzC4F
         Mf3jVM+mwE9JhCxB/qsLdpTelaAG4NgqgYXt801IVWQpPlLvJ9u1QlnkYn02PUCEyp4i
         VkuJHlCzae/av4vBLzMl5DR+TCm7XXEUvODH9qi3lnBpSNATm6bXdYBDtOsxHUKGPCe2
         QOdzjo5TYXytg0IsnpbziqIGsAX9FSL/wy3V7EkmhZZ/qghqxVkWJLMOB7ExPgpW3DDx
         5IN0ypdRvvV+goLiuJn/5Xudls86oyCTEn5dLci8G5VDGmMM+Zp4pFn9MlrGrOLk4acY
         2CVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NT3dSUD40beQ6Uaqhz4yDsZsg6TZe3k1DAg0c4NEkKA=;
        b=VO7P/u4rMY5PHNRMrnovrYZ9HZFiXMkc8TVKdYG0pTO6XbE+76oHb00iaLYFrU7Tyo
         axhkVh8kQYDMoCWaFiqbpEEBaBmuGmX66ExaYS12dRPaLu8fG7uLz/qOqTkjSIDxZTPr
         i64OQypRfkCUrEZ+ACQFKtC4I26zbLNfYt1nXrfY4TXCTrhx/DeUFiS9WfjZPo3oFwpU
         R1QdhvxuZP0XPc0BJQ4ivXJ07lr9MYdvqur7KSwg7hVI8mzMhT+ya4YpqrV9ThN7MNC8
         HfJub5EWXj9k6EimkRVhjmjOTyxBVzdZXRy8dN35Niwivb4iktjyDNatugQPsYTIyMm1
         J0zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IBfjRCsf;
       spf=pass (google.com: domain of srhines@google.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=srhines@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id x13si631328wmk.0.2019.09.06.18.15.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 18:15:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of srhines@google.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Received: by mail-ed1-x52a.google.com with SMTP id f19so8141680eds.12
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 18:15:51 -0700 (PDT)
X-Received: by 2002:aa7:d8c8:: with SMTP id k8mr12804179eds.8.1567818950935;
 Fri, 06 Sep 2019 18:15:50 -0700 (PDT)
MIME-Version: 1.0
References: <bug-43121-8919@http.bugs.llvm.org/> <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com>
 <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
 <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com>
 <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com> <CAKwvOd=vmQL6pJVCGkxee3LQUEPOyeGG1AH+syya-FF4gGtpaA@mail.gmail.com>
In-Reply-To: <CAKwvOd=vmQL6pJVCGkxee3LQUEPOyeGG1AH+syya-FF4gGtpaA@mail.gmail.com>
From: "'Stephen Hines' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Sep 2019 18:15:39 -0700
Message-ID: <CAAzmS68Y=Y0zjLO0g30wQtWCX2e0tLt4DkgmB5hA4QSF5iCSPg@mail.gmail.com>
Subject: Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Hans Wennborg <hwennborg@google.com>, Eli Friedman <efriedma@quicinc.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000a4fd980591ec4b22"
X-Original-Sender: srhines@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IBfjRCsf;       spf=pass
 (google.com: domain of srhines@google.com designates 2a00:1450:4864:20::52a
 as permitted sender) smtp.mailfrom=srhines@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Stephen Hines <srhines@google.com>
Reply-To: Stephen Hines <srhines@google.com>
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

--000000000000a4fd980591ec4b22
Content-Type: text/plain; charset="UTF-8"

Nice! Thanks, everyone, for working through these bugs at the last (but
hopefully not past the last) minute.

Steve

On Fri, Sep 6, 2019 at 6:12 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Fri, Sep 6, 2019 at 10:46 AM Hans Wennborg <hwennborg@google.com>
> wrote:
> >
> > Thanks for the detailed reply!
> >
> > On Fri, Sep 6, 2019 at 7:03 PM Nick Desaulniers <ndesaulniers@google.com>
> wrote:
> > >
> > > On Fri, Sep 6, 2019 at 1:10 AM Hans Wennborg <hwennborg@google.com>
> wrote:
> > > >
> > > > I'm a bit nervous about taking changes to the optimizer so close to
> the release. If we take them, they would be shipping with very little
> testing..
> > >
> > > Let me tell you the current issues, then I'll trust your judgement on
> > > the risk assessment.  I want these things to soak, but I also don't
> > > want to finally ship "asm goto" support that's not usable out of the
> > > box.
> > >
> > > > I've left a comment on r371111, and I see the fix for PR43222 is in
> review but not committed yet.
> > >
> > > Link: https://reviews.llvm.org/D67203#1660386.
> > >
> > > > How bad would it be if these fixes have to wait for 9.0.1 instead?
> I.e. what is broken for the end user here? Does the kernel no longer build
> with clang 9?
> > >
> > > One is a build failure for an obscure driver, one is a boot failure
> > > for all builds of one ISA.
> > >
> > > When someone builds a linux kernel, they first have to configure it,
> > > which is mainly selecting which drivers to support but some options
> > > have much larger consequences.  Typical configurations folks use for
> > > testing are "defconfig" which is a curated list of sane configuration
> > > options, and "allyesconfig" which turns on as many configurations as
> > > possible.
> > >
> > > Of the 2 patches I'm requesting for clang 9.0, the IfConverter
> > > (https://reviews.llvm.org/D67203) fixes a compile error for a lone
> > > driver for an arm32 allyesconfig build.  That driver is for some
> > > obscure piece of hardware and isn't critical, but "allyesconfig" arm32
> > > kernel builds are broken without it.  I think IfConverter is only used
> > > for ISAs w/ predication, so Eli's change may affect other ISAs than
> > > arm32 (I don't know who else uses predication).  Our arm32 support is
> > > a little behind relative to arm64 and x86_64, and we can always
> > > disable this driver when building w/ clang-9, but I'm hoping we don't
> > > add things to the kernel that ban specific releases of a compiler (ie.
> > > clang-9.0 is banned but clang-9.0.1 is allowed).  That said, there's
> > > now three reported bugs that it fixes:
> > > https://bugs.llvm.org/show_bug.cgi?id=43121
> > > https://bugs.llvm.org/show_bug.cgi?id=41121
> > > https://bugs.llvm.org/show_bug.cgi?id=42012
> > >
> > > The other fix in CallBrInst (https://reviews.llvm.org/D67252) fixes a
> > > boot issue in "defconfig" builds for arm64.  arm64 kernels do
> > > something insane where they detect the presence of an ARMv8.1 ISA
> > > extension "LSE atomics" then patch all of their atomic instructions if
> > > LSE is supported.  As soon as an arm64 kernel does any atomic
> > > operation (when built w/ Clang-9), it hangs.  This is due to a recent
> > > change in Linux that perturbs the control flow just enough to trigger
> > > SimplifyCFG to modify the successor to a callbr (asm goto's LLVM IR
> > > representation).  This change is limited to the callbr IR instruction
> > > added to clang-9 for implementing the GNU C extension "asm goto" that
> > > the Linux kernel makes heavy use of on all architectures for runtime
> > > self modification.  While we've fixed many bugs since the initial
> > > implementation landed, I worry that this one will make it such that
> > > "asm goto" appears outright broken in clang-9 and that the kernel
> > > community would move to ban clang-9 from being used to compile the
> > > kernel.
> > >
> > > Some relevant threads for debugging the atomics bug:
> > >
> https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678330.html
> > >
> https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678479.html
> > >
> https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678484.html
> > >
> https://lists.infradead.org/pipermail/linux-arm-kernel/2019-September/678493.html
> > >
> > > If I had to choose, both are important to me, but I worry that the bug
> > > fixed by https://reviews.llvm.org/D67252 is probably pervasive, and
> > > likely to make `asm goto` unusable in clang-9 with more changes to the
> > > kernel sources.
> > >
> > > How much time do we have until you wrap the clang-9 release?  Would
> > > there be a few days to soak these to avoid any potential reverts of
> > > these patches immediately after they land that would then need to also
> > > be cherry picked into clang-9?
> >
> > The release is on overtime since August 28th. That's no cause for
> > alarm since we usually slip a little, but I really don't want to slip
> > too much.
> >
> > These do seem worth waiting for; there's no point shipping on time if
> > we're not shipping something good.
> >
> > If the one in review lands soon, we can ship them immediately in rc4
> > and let them bake in trunk in parallel. If something comes up, we'd do
> > another release candidate with the fix, and if nothing comes up within
> > some number of days we could tag rc4 as final.
> >
> > > What's the schedule for the clang-9.0.1 release? (Sorry, I don't have
> > > a good sense for timeline of LLVM releases yet)
> >
> > Ideally it should be released in the middle between two major
> > releases, so typically December, but it varies a little.
>
> Cool, just landed my fix, and Eli put up another patch that fixes the
> arm32 issue for me (big thanks Eli).  So having:
> - https://reviews.llvm.org/D67306
> - https://reviews.llvm.org/rG7a7bba289521e6d4da199565cf72dc9eaed3d671
>
> in clang-9 and then that's zero bugs related to asm goto that I'm aware of.
>
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAzmS68Y%3DY0zjLO0g30wQtWCX2e0tLt4DkgmB5hA4QSF5iCSPg%40mail.gmail.com.

--000000000000a4fd980591ec4b22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Nice! Thanks, everyone, for working through these bugs at =
the last (but hopefully not past the last) minute.<div><br></div><div>Steve=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Fri, Sep 6, 2019 at 6:12 PM Nick Desaulniers &lt;<a href=3D"mailto=
:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Sep 6, 2019 at 10:=
46 AM Hans Wennborg &lt;<a href=3D"mailto:hwennborg@google.com" target=3D"_=
blank">hwennborg@google.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Thanks for the detailed reply!<br>
&gt;<br>
&gt; On Fri, Sep 6, 2019 at 7:03 PM Nick Desaulniers &lt;<a href=3D"mailto:=
ndesaulniers@google.com" target=3D"_blank">ndesaulniers@google.com</a>&gt; =
wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Fri, Sep 6, 2019 at 1:10 AM Hans Wennborg &lt;<a href=3D"mailt=
o:hwennborg@google.com" target=3D"_blank">hwennborg@google.com</a>&gt; wrot=
e:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;m a bit nervous about taking changes to the optimizer =
so close to the release. If we take them, they would be shipping with very =
little testing..<br>
&gt; &gt;<br>
&gt; &gt; Let me tell you the current issues, then I&#39;ll trust your judg=
ement on<br>
&gt; &gt; the risk assessment.=C2=A0 I want these things to soak, but I als=
o don&#39;t<br>
&gt; &gt; want to finally ship &quot;asm goto&quot; support that&#39;s not =
usable out of the<br>
&gt; &gt; box.<br>
&gt; &gt;<br>
&gt; &gt; &gt; I&#39;ve left a comment on r371111, and I see the fix for PR=
43222 is in review but not committed yet.<br>
&gt; &gt;<br>
&gt; &gt; Link: <a href=3D"https://reviews.llvm.org/D67203#1660386" rel=3D"=
noreferrer" target=3D"_blank">https://reviews.llvm.org/D67203#1660386</a>.<=
br>
&gt; &gt;<br>
&gt; &gt; &gt; How bad would it be if these fixes have to wait for 9.0.1 in=
stead? I.e. what is broken for the end user here? Does the kernel no longer=
 build with clang 9?<br>
&gt; &gt;<br>
&gt; &gt; One is a build failure for an obscure driver, one is a boot failu=
re<br>
&gt; &gt; for all builds of one ISA.<br>
&gt; &gt;<br>
&gt; &gt; When someone builds a linux kernel, they first have to configure =
it,<br>
&gt; &gt; which is mainly selecting which drivers to support but some optio=
ns<br>
&gt; &gt; have much larger consequences.=C2=A0 Typical configurations folks=
 use for<br>
&gt; &gt; testing are &quot;defconfig&quot; which is a curated list of sane=
 configuration<br>
&gt; &gt; options, and &quot;allyesconfig&quot; which turns on as many conf=
igurations as<br>
&gt; &gt; possible.<br>
&gt; &gt;<br>
&gt; &gt; Of the 2 patches I&#39;m requesting for clang 9.0, the IfConverte=
r<br>
&gt; &gt; (<a href=3D"https://reviews.llvm.org/D67203" rel=3D"noreferrer" t=
arget=3D"_blank">https://reviews.llvm.org/D67203</a>) fixes a compile error=
 for a lone<br>
&gt; &gt; driver for an arm32 allyesconfig build.=C2=A0 That driver is for =
some<br>
&gt; &gt; obscure piece of hardware and isn&#39;t critical, but &quot;allye=
sconfig&quot; arm32<br>
&gt; &gt; kernel builds are broken without it.=C2=A0 I think IfConverter is=
 only used<br>
&gt; &gt; for ISAs w/ predication, so Eli&#39;s change may affect other ISA=
s than<br>
&gt; &gt; arm32 (I don&#39;t know who else uses predication).=C2=A0 Our arm=
32 support is<br>
&gt; &gt; a little behind relative to arm64 and x86_64, and we can always<b=
r>
&gt; &gt; disable this driver when building w/ clang-9, but I&#39;m hoping =
we don&#39;t<br>
&gt; &gt; add things to the kernel that ban specific releases of a compiler=
 (ie.<br>
&gt; &gt; clang-9.0 is banned but clang-9.0.1 is allowed).=C2=A0 That said,=
 there&#39;s<br>
&gt; &gt; now three reported bugs that it fixes:<br>
&gt; &gt; <a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D43121" rel=3D"=
noreferrer" target=3D"_blank">https://bugs.llvm.org/show_bug.cgi?id=3D43121=
</a><br>
&gt; &gt; <a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D41121" rel=3D"=
noreferrer" target=3D"_blank">https://bugs.llvm.org/show_bug.cgi?id=3D41121=
</a><br>
&gt; &gt; <a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D42012" rel=3D"=
noreferrer" target=3D"_blank">https://bugs.llvm.org/show_bug.cgi?id=3D42012=
</a><br>
&gt; &gt;<br>
&gt; &gt; The other fix in CallBrInst (<a href=3D"https://reviews.llvm.org/=
D67252" rel=3D"noreferrer" target=3D"_blank">https://reviews.llvm.org/D6725=
2</a>) fixes a<br>
&gt; &gt; boot issue in &quot;defconfig&quot; builds for arm64.=C2=A0 arm64=
 kernels do<br>
&gt; &gt; something insane where they detect the presence of an ARMv8.1 ISA=
<br>
&gt; &gt; extension &quot;LSE atomics&quot; then patch all of their atomic =
instructions if<br>
&gt; &gt; LSE is supported.=C2=A0 As soon as an arm64 kernel does any atomi=
c<br>
&gt; &gt; operation (when built w/ Clang-9), it hangs.=C2=A0 This is due to=
 a recent<br>
&gt; &gt; change in Linux that perturbs the control flow just enough to tri=
gger<br>
&gt; &gt; SimplifyCFG to modify the successor to a callbr (asm goto&#39;s L=
LVM IR<br>
&gt; &gt; representation).=C2=A0 This change is limited to the callbr IR in=
struction<br>
&gt; &gt; added to clang-9 for implementing the GNU C extension &quot;asm g=
oto&quot; that<br>
&gt; &gt; the Linux kernel makes heavy use of on all architectures for runt=
ime<br>
&gt; &gt; self modification.=C2=A0 While we&#39;ve fixed many bugs since th=
e initial<br>
&gt; &gt; implementation landed, I worry that this one will make it such th=
at<br>
&gt; &gt; &quot;asm goto&quot; appears outright broken in clang-9 and that =
the kernel<br>
&gt; &gt; community would move to ban clang-9 from being used to compile th=
e<br>
&gt; &gt; kernel.<br>
&gt; &gt;<br>
&gt; &gt; Some relevant threads for debugging the atomics bug:<br>
&gt; &gt; <a href=3D"https://lists.infradead.org/pipermail/linux-arm-kernel=
/2019-September/678330.html" rel=3D"noreferrer" target=3D"_blank">https://l=
ists.infradead.org/pipermail/linux-arm-kernel/2019-September/678330.html</a=
><br>
&gt; &gt; <a href=3D"https://lists.infradead.org/pipermail/linux-arm-kernel=
/2019-September/678479.html" rel=3D"noreferrer" target=3D"_blank">https://l=
ists.infradead.org/pipermail/linux-arm-kernel/2019-September/678479.html</a=
><br>
&gt; &gt; <a href=3D"https://lists.infradead.org/pipermail/linux-arm-kernel=
/2019-September/678484.html" rel=3D"noreferrer" target=3D"_blank">https://l=
ists.infradead.org/pipermail/linux-arm-kernel/2019-September/678484.html</a=
><br>
&gt; &gt; <a href=3D"https://lists.infradead.org/pipermail/linux-arm-kernel=
/2019-September/678493.html" rel=3D"noreferrer" target=3D"_blank">https://l=
ists.infradead.org/pipermail/linux-arm-kernel/2019-September/678493.html</a=
><br>
&gt; &gt;<br>
&gt; &gt; If I had to choose, both are important to me, but I worry that th=
e bug<br>
&gt; &gt; fixed by <a href=3D"https://reviews.llvm.org/D67252" rel=3D"noref=
errer" target=3D"_blank">https://reviews.llvm.org/D67252</a> is probably pe=
rvasive, and<br>
&gt; &gt; likely to make `asm goto` unusable in clang-9 with more changes t=
o the<br>
&gt; &gt; kernel sources.<br>
&gt; &gt;<br>
&gt; &gt; How much time do we have until you wrap the clang-9 release?=C2=
=A0 Would<br>
&gt; &gt; there be a few days to soak these to avoid any potential reverts =
of<br>
&gt; &gt; these patches immediately after they land that would then need to=
 also<br>
&gt; &gt; be cherry picked into clang-9?<br>
&gt;<br>
&gt; The release is on overtime since August 28th. That&#39;s no cause for<=
br>
&gt; alarm since we usually slip a little, but I really don&#39;t want to s=
lip<br>
&gt; too much.<br>
&gt;<br>
&gt; These do seem worth waiting for; there&#39;s no point shipping on time=
 if<br>
&gt; we&#39;re not shipping something good.<br>
&gt;<br>
&gt; If the one in review lands soon, we can ship them immediately in rc4<b=
r>
&gt; and let them bake in trunk in parallel. If something comes up, we&#39;=
d do<br>
&gt; another release candidate with the fix, and if nothing comes up within=
<br>
&gt; some number of days we could tag rc4 as final.<br>
&gt;<br>
&gt; &gt; What&#39;s the schedule for the clang-9.0.1 release? (Sorry, I do=
n&#39;t have<br>
&gt; &gt; a good sense for timeline of LLVM releases yet)<br>
&gt;<br>
&gt; Ideally it should be released in the middle between two major<br>
&gt; releases, so typically December, but it varies a little.<br>
<br>
Cool, just landed my fix, and Eli put up another patch that fixes the<br>
arm32 issue for me (big thanks Eli).=C2=A0 So having:<br>
- <a href=3D"https://reviews.llvm.org/D67306" rel=3D"noreferrer" target=3D"=
_blank">https://reviews.llvm.org/D67306</a><br>
- <a href=3D"https://reviews.llvm.org/rG7a7bba289521e6d4da199565cf72dc9eaed=
3d671" rel=3D"noreferrer" target=3D"_blank">https://reviews.llvm.org/rG7a7b=
ba289521e6d4da199565cf72dc9eaed3d671</a><br>
<br>
in clang-9 and then that&#39;s zero bugs related to asm goto that I&#39;m a=
ware of.<br>
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
om/d/msgid/clang-built-linux/CAAzmS68Y%3DY0zjLO0g30wQtWCX2e0tLt4DkgmB5hA4QS=
F5iCSPg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAAzmS68Y%3DY0zjLO0g30wQtWCX2e0tL=
t4DkgmB5hA4QSF5iCSPg%40mail.gmail.com</a>.<br />

--000000000000a4fd980591ec4b22--
