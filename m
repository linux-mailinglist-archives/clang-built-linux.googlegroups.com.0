Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHWPSL3AKGQE72STUJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0241DA8B1
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 05:44:31 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id y4sf1465860pgo.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 20:44:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589946270; cv=pass;
        d=google.com; s=arc-20160816;
        b=uS1s7l3uSiOm/06CN/F/ainId/OmgiD4HPDe2lxjkB+D9quugCI9CqUFEVZyr1y8XX
         bRiULgY0DIvAGyrvxKLc1BBxhGW5Dbq78JvrqtOmIL2/xRksINJwbTLHNxmRaiSb55Q/
         rumVXEiPZCGEU5qc2IV5KkZ723EUKWQPHFQXYDy+E1MKm9CP8LcrM6osgm4p2Iw0N3aw
         5/sct/rsX+TLmxpwFYiEmxX8TQngnQFyeAEu0//a5ZoBhZH0+gzFxYAbN9JElF7GX7zP
         aaaZ3ek68m5264uaKgKp01NlLzgGfr7iKJ+C55sWICcRAGCkLSRbk8ZzDOOe3d/sPUM0
         jbmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=iV3mmnmxis/zhCjUtU4FOXbGte6RcluKtauaaN2oZXU=;
        b=A7jG47GfAWpmrkRwbB2dQip9zPqU65M8nOABI8GdA6k3vgGrEVhlsRpxfJ4n35IAbK
         LtWeoMq3i1+VMclfX+PHBeOUtjArJ9XscQFfigWw0uL5mOU5Xyrugc05/iGI+0iu/n3I
         5SG6a6fv+JButEv9lFLY3J0rDnf1kA/hfLhXP11bGfCuvu473lxU7GFKa0IUtVvsrTjp
         cUExNkjCcb46V7Um8cHHKakBzR4E5witt3AUQkl+ZmeKr41zrsFpPOT0p3gS4TmmYic6
         IBK54oOJ5Td4nDyceEbvnD0yitYFcl1g0EI+wNfeWT1ZNgPhBp0ZQzQqsB0KBBPnp3rS
         ImSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kt9bXylY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iV3mmnmxis/zhCjUtU4FOXbGte6RcluKtauaaN2oZXU=;
        b=PcwB6Qmbbroevty2ptBW5/999lR41IpyZhvs6f+pX1jBv1+FAcg+Zy1k8criMfOoPj
         YPyzn5sH2rXzV1wkEDx6h7b83pc/UrkyGSyFWoi7pLnCK12N6IBWdLJXm62jxVJY6jRO
         /sDRUwVHblrWyR1BZGgazMqVdXUw1W1ng4vlOB48r3fXRlSjrxIkaLMLMO0YW+6mTl8r
         VcZnQ0QyQePuijmE6MPx28V5t5uw+4wZldU6ELPaJVE+LT2RgCgBQpubNNHWEoLDWYI8
         NzbLxE0j36HPGPux4PWcJEc4t5QR+1J57yEBVdVpSgVMyixraO61lsm7f4olVUUWKIw7
         N0sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iV3mmnmxis/zhCjUtU4FOXbGte6RcluKtauaaN2oZXU=;
        b=SIrw9YaKmLmwnhwW+sVoqtMN5Ph9q54nXXL9Qta80QxZzcXLFLQDu+do0Ahw0bubVi
         K3g45QP0Egqh5SVwhHSbRVASl9o+xAcE7whOuLHiJMH1MdYyPmIA1GyAhNa4T1J1biYd
         7+SfnQMGtxPGBMatUj2tWJNRFr2GLpvh9z82ADNvaFBSB7lEXQ3zvBdeqnJpt94soZ2x
         KU3EMO/8taq1qhxJSWnLNAOw7C0DX63UXIdaxv7Gx+IJkUJuT6szlyVHP1Syvh5nqH4k
         OaP1GSeDZtDQ/9fSHXHyGi0kNAcdHHfR/5H1jghR+4vSn9aevWdpaG32AKKE1q4tADfU
         oy8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iV3mmnmxis/zhCjUtU4FOXbGte6RcluKtauaaN2oZXU=;
        b=fAJAXYDJoj+/sdRai2FbjOEMcJZgxqtauPQ/Xn1+m42R2PE+D6WOra2Uh54khAD0o8
         5e/1SrJoWe570REOSu7B00e4royaGm8+m58wGVc+9OXS0JGadNWxQZxAvrsomjUMslx8
         kQI1sa20K31+24RFPbh8i4T4gtj2rRLtKJ6SKIYS5hHPwNWu0hNp4C46kBfvz9enSnLK
         6D8K+a2xlb8/YUAhBNjM+1xsqf0L6uuscO9gbnqlioM8c7MXPM2oafcjkIoXnQ6NPyke
         Z+BADEcFElXSd2WDMAAvT61yhL3GKU8hSIksUv2K7zkROyv97Je7NVyZ2gYwpxyYV/XP
         eqXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326rXYnn2O9MTcu74M4wDpFtKCgccINNBvX552zQL+YkeTpVioJ
	4Acsw+YeFRSERPqTi12hGsw=
X-Google-Smtp-Source: ABdhPJz5hx7ZKdQSI97kY9iepy/VT3ehOxyzbJKB5xzjt0JI5VhIOfMIGvKnAl5E6aWXetgcouh5Lw==
X-Received: by 2002:a65:6251:: with SMTP id q17mr2210370pgv.4.1589946270606;
        Tue, 19 May 2020 20:44:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cca:: with SMTP id c193ls491789pfc.9.gmail; Tue, 19 May
 2020 20:44:30 -0700 (PDT)
X-Received: by 2002:aa7:8691:: with SMTP id d17mr2329695pfo.308.1589946270154;
        Tue, 19 May 2020 20:44:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589946270; cv=none;
        d=google.com; s=arc-20160816;
        b=BUJyCd3YvyP917+7Cigtdk7cxMmk+xAGwb+fWqriVXhq+LVLpniF8CIq1+bjBVWb4q
         ceeYfYovdlNFhLB2akLtdvXyMWlcu4MOZuXCd8Kf7pzE2htBg/hVRd+VKzqD9ym8bWbE
         HFHItcgDP3+UZFjsSj37dhRIJZLRQ6QDYHzbZ5ISH1Y6NdYgNfPuR4W0V4wVZbELnakq
         KB0HwLBXJvKyjgRXlb5nO51u2k8FuC/W7GaWTKS/jAz0cBbUcFXczCDOn3btUjJ8FD2X
         +MCyH9BYzMG12SROVWSLA/3UUobj5ZPsw5p/nubNEVbj/8a0ykib/Feal2UbDlZGqI5a
         +Zrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ONyQEflSz6Imoxq9sQgBsPIATKu6ZPvvMsByuX0h1+8=;
        b=NT87NkdARoU6oReHY0Kj7yO62Xhx14i9z7H7Kkj+6ZWm4p2Rqu7TqDf+z47Vz+pMYP
         8CUZ5J3N/t4+eioVFF3qQ1bbBVBzrHUMrGQlPxke1teQqFmDknnTz0XJ3NkmAXRzYDy8
         XKv7x0JXORfaI9JN5hmpDmhB7wc6YLfE/Yim5974STA+SFjkVrDzigmy8X1vPKQi8xvA
         Gk8f9fqe9By6/3iGwcS2IqfCVCPj2jPrEueMU7Bd5lD0HLDx6u9dirCz24X9M9h1xYoY
         27jWRYLNPSgxtizfhWoIwdYUrMS1KBxQJY4UWCaw/lKrPXUZx04UqlW2uHSQGK/E/P2q
         5TzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kt9bXylY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id s12si157398pfh.5.2020.05.19.20.44.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 20:44:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id w19so762298ply.11;
        Tue, 19 May 2020 20:44:30 -0700 (PDT)
X-Received: by 2002:a17:902:ea8a:: with SMTP id x10mr2625015plb.255.1589946269662;
        Tue, 19 May 2020 20:44:29 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h3sm745528pjk.10.2020.05.19.20.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 20:44:28 -0700 (PDT)
Date: Tue, 19 May 2020 20:44:26 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Qian Cai <cai@lca.pw>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marco Elver <elver@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	"Paul E . McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] READ_ONCE, WRITE_ONCE, kcsan: Perform checks in __*_ONCE
 variants
Message-ID: <20200520034426.GA1027673@ubuntu-s3-xlarge-x86>
References: <87y2pn60ob.fsf@nanos.tec.linutronix.de>
 <360AFD09-27EC-4133-A5E3-149B8C0C4232@lca.pw>
 <20200520024736.GA854786@ubuntu-s3-xlarge-x86>
 <CAG=TAF4M5s1kQ98ys_YCgRS9WqjV_9KEbPCFiS71MA_QK8epdA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAG=TAF4M5s1kQ98ys_YCgRS9WqjV_9KEbPCFiS71MA_QK8epdA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kt9bXylY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 19, 2020 at 11:16:24PM -0400, Qian Cai wrote:
> On Tue, May 19, 2020 at 10:47 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Tue, May 19, 2020 at 10:28:41PM -0400, Qian Cai wrote:
> > >
> > >
> > > > On May 19, 2020, at 6:05 PM, Thomas Gleixner <tglx@linutronix.de> w=
rote:
> > > >
> > > > Yes, it's unfortunate, but we have to stop making major concessions=
 just
> > > > because tools are not up to the task.
> > > >
> > > > We've done that way too much in the past and this particular proble=
m
> > > > clearly demonstrates that there are limits.
> > > >
> > > > Making brand new technology depend on sane tools is not asked too
> > > > much. And yes, it's inconvenient, but all of us have to build tools
> > > > every now and then to get our job done. It's not the end of the wor=
ld.
> > > >
> > > > Building clang is trivial enough and pointing the make to the right
> > > > compiler is not rocket science either.
> > >
> > > Yes, it all make sense from that angle. On the other hand, I want to =
be focus on kernel rather than compilers by using a stable and rocket-solid=
 version. Not mentioned the time lost by compiling and properly manage my o=
wn toolchain in an automated environment, using such new version of compile=
rs means that I have to inevitably deal with compiler bugs occasionally. An=
yway, it is just some other more bugs I have to deal with, and I don=E2=80=
=99t have a better solution to offer right now.
> >
> > Hi Qian,
> >
> > Shameless plug but I have made a Python script to efficiently configure
> > then build clang specifically for building the kernel (turn off a lot o=
f
> > different things that the kernel does not need).
> >
> > https://github.com/ClangBuiltLinux/tc-build
> >
> > I added an option '--use-good-revision', which uses an older master
> > version (basically somewhere between clang-10 and current master) that
> > has been qualified against the kernel. I currently update it every
> > Linux release but I am probably going to start doing it every month as
> > I have written a pretty decent framework to ensure that nothing is
> > breaking on either the LLVM or kernel side.
> >
> > $ ./build-llvm.py --use-good-revision
> >
> > should be all you need to get off the ground and running if you wanted
> > to give it a shot. The script is completely self contained by default s=
o
> > it won't mess with the rest of your system. Additionally, leaving off
> > '--use-good-revision' will just use the master branch, which can
> > definitely be broken but not as often as you would think (although I
> > totally understand wanting to focus on kernel regressions only).
>=20
> Great, thanks. I'll try it in a bit.

Please let me know if there are any issues!

Do note that in order to get support for Marco's series, you will need
to have a version of LLVM that includes [1], which the current
--use-good-revision does not. You can checkout that revision exactly
through the '-b' ('--branch') parameter:

$ ./build-llvm.py -b 5a2c31116f412c3b6888be361137efd705e05814

I also see another patch in LLVM that concerns KCSAN [2] but that does
not appear used in Marco's series. Still might be worth having available
in your version of clang.

I'll try to bump the hash that '--use-good-revision' uses soon. I might
wait until 5.7 final so that I can do both at the same time like I
usually do but we'll see how much time I have.

[1]: https://github.com/llvm/llvm-project/commit/5a2c31116f412c3b6888be3611=
37efd705e05814
[2]: https://github.com/llvm/llvm-project/commit/151ed6aa38a3ec6c01973b35f6=
84586b6e1c0f7e

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200520034426.GA1027673%40ubuntu-s3-xlarge-x86.
