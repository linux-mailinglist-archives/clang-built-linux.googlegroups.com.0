Return-Path: <clang-built-linux+bncBDRZHGH43YJRBHHBX73QKGQEMFPZF3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AD0202DB4
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 01:43:24 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id v7sf168829ede.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 16:43:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592783004; cv=pass;
        d=google.com; s=arc-20160816;
        b=dq5231Vo7TMH9gPuzEI4QEityAWEKQU774auBvxjbs+V6hLJvm6D3I/JG+HRt8sNs3
         sY9Ii0V0mAzRFgzakxv4kfoTui+eqk7MlCCIqfxnWDU6pCLUNimpkyA/njCLQUfd3/Ql
         1x7nq3tXGaTOprjMVrSiVEjTJk3A/wjoAI8Xr/rNSEzXve5s8bTLEghRGS00r0ih09cs
         pj2YIOWeEcaOaz7IKMmeXVKw9CLKF0J3kqFodV+Mo+SDCgG9V54D5OtfJX3wAiwB0XRY
         FfMG6OhR+bQO8AQXODNVLuvKnQ4eY0tDlWSe7Uh4FGqmHs99UBwkOkA1yj11Hr4p+Hrg
         X9Pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=qSdAnmLddDTE5zW21Zem2VLFIj7baVTZ/WCx7UU4H+M=;
        b=msa4SdfynyOCv6788M9VOPBb5oqFEKMw+3i5Vtk+JssE3ZdLMGpd/7tn1ORIH/w5MM
         un2a1fYnLWmucecinyTiFWC0OnN2+K5IkOGe/Zhg0cYUlPolkFYQUuKsZfHRDfeCf5T6
         sBJnICB2PdEjMfYWxO0zRqtjN6nA+HCBkTc6KyaKzeGMk7bghXrJXEDS22WvFgVK1Zbg
         aheCBd/M8fFPLgmTTX36Aaa2TUHA/TJyi40Asnfl0AMwVnDk+t7vIYwhIbdidxn3GIJD
         q0Y3eGQLE2h0Db1c4mh1bUmkAS2JPx1Yv+9fui0b6ifZLEWpFLGBzz3vVR/ii+Ac9ISm
         yf0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hNJtisAx;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qSdAnmLddDTE5zW21Zem2VLFIj7baVTZ/WCx7UU4H+M=;
        b=VLt19MpagdWlSiMubecnjovJdF/0UlT4yZacrmPRpSY3QV6U6+5eIjG2RTFYNKIaM+
         hI5Lxn/tBe2yBQpj5wfonJactp2ppl7aLqjokQI1DV2GMv+sPf5e8zk38KpJrwdDSfph
         HclTxtcJjQngXDFFiW42EkGaCht6bDVwS+/EB7dGyklCWapk0GFxZCUGqRhE5mLRR0Ti
         PQ1SxHQOdTP3x6hrFTvf5WoocNN+i3k3AwV7Egau7IEEeG3bi8VPxDIdoPRPzRMEpzM3
         zhquShjAeUETCRnbg1edhFYcnIuoFCD6oMQc9LpWiRMh/+HgTMFBhC06mFNcnCsoj9kM
         xK5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qSdAnmLddDTE5zW21Zem2VLFIj7baVTZ/WCx7UU4H+M=;
        b=nOeoPJZPKxDzVWcOtwLHEoVMDf0VYYvN72612sE7+S6qyqXJFW/GT9F8Ur34Vm5Toj
         2RiEDaQkqHWTqg2Y/BJuz44mxn9wcSTq7953nz60GA7jwrzx3X1lRRtH818AYbTEr6qg
         DD5xHNQiCNCaxjbfx1DyELID5m97R0qS9+C2stfsiT9p5mEmdEUeaSDNnPdHnwQke0Qh
         cSUs14vQYbP/v2htlEL1eZJjryWBCNlDOz0ZH33BMkD50YwQFntQ7KCW9kNNVgaUcen5
         xNOlNF4lR8IBYZM7CIehanPI+8Deh4pvXfkEMH5mW6uHS3rOJwZj6lnkMTYRFWypfHAG
         /Mdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qSdAnmLddDTE5zW21Zem2VLFIj7baVTZ/WCx7UU4H+M=;
        b=hF/LnACklmqbpLIlfxyXAr9/fKelnm9Zl3uNECuhoc7gyNvb2oPug97/ic0fSTgsaU
         DUqD52OC/S1ZUMQHJxh4C0w0YvcdETDQzE+iKR78MiG0DxHhN7NwOTLa7Tk9NHsgg778
         jo93qDmwhZzORCvdaTioIx3hGUIxPj5gPtVGrOBHHdz5bNe3+TqfmGqyra1jhidTAQpi
         A0LPmQLc+LtsBifcsSxTLJVw1VwBUhpw4UiHbndfp/xgOglQyITlY8xV0myfp0VnUh1E
         CQzBdDwX+Igw9bZdhSa0aSVRi/OVH73kZXOGrsn9EV8sL35t3sgC+YU6l63AtmqOvWZX
         Hswg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JqXgTXjxspP99l3BSKGYHBqbF/SzlxdIO1hzRkywKXeSaBUSq
	eZ5TmhYqkfjcz7Fp+3066cs=
X-Google-Smtp-Source: ABdhPJzxOJBjq3PVIL6hfsORzKAfeslZdxzZYPYMzZeAQ87FXDhL9ToojNJDpLfn1ccsrpWNocah2Q==
X-Received: by 2002:a17:906:4155:: with SMTP id l21mr6542143ejk.438.1592783004070;
        Sun, 21 Jun 2020 16:43:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:df16:: with SMTP id c22ls4073622edy.3.gmail; Sun, 21 Jun
 2020 16:43:23 -0700 (PDT)
X-Received: by 2002:aa7:c3d3:: with SMTP id l19mr14984816edr.126.1592783003476;
        Sun, 21 Jun 2020 16:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592783003; cv=none;
        d=google.com; s=arc-20160816;
        b=FrLlCrYElB2mghId5+aAl0m8OUTkP4/n1XfUKxC8gOUm0GSMYba71CsmLYgZgqgo46
         ReQ6EYqK86+ImTtZ/4tnn4GbynT6qf1NBHAkqNvtq8ZU1Nhfp8a1GMwl6HEzhoKT9aQA
         7MCykpMNTGF/USwpH/WQXIiZGSg35l1j0+s+cpJmNMR8dfsIoaj4sQoplv+1FrJHejI2
         3nFLT+htd1pvXOubsvePlyrwU1C/RB+EKpFhZNb0opGAPXJ/eBPdjfZx4Zmb/mab4uX+
         Jbq2RFMdQrNWiqtZM56/EU1wYKQ0xT6O0O19u3khVsrWwlKsBexl9qQXncHrMon28ZH+
         4Uqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UWYK99IQmZVG/8JvsyPASoCIo4JVfhtAHl2NOeIaFVA=;
        b=x6Kml3HsXbv/1UqAJg8ynABvylJHtZgAcweB3yrdL+W9kDVpQsA+Vs2fte8tYSvKZL
         pUFrf2wTaS1xDvF41WwFR6ndlDSeSRGuwCIkDbJcmseM6vcvud7vsxO+82ymnQlg9QUm
         fXNjAa07U+av2mkktbFsks31AOV02+Xxmi996L6/tETidsulLPavKxn2Oecbaq89Qwp7
         AKgSWkkoh5nSjKSMYIcO6zIpoIPtSqrWrJh8g5SChgeDIaGph2N65dWLKN+jeC5bfamu
         Lq0l8iHzGOIRDZwazWmk+74wP8LWwTbzFotk0zchDrTonSBOqFjwBzH/YAlbx5MN9ZhS
         GaDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hNJtisAx;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id b6si453094edr.3.2020.06.21.16.43.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jun 2020 16:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id y13so8548510lfe.9
        for <clang-built-linux@googlegroups.com>; Sun, 21 Jun 2020 16:43:23 -0700 (PDT)
X-Received: by 2002:a19:22d6:: with SMTP id i205mr8200290lfi.50.1592783003103;
 Sun, 21 Jun 2020 16:43:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
 <CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com> <b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de>
In-Reply-To: <b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 22 Jun 2020 01:43:12 +0200
Message-ID: <CANiq72=Y+beqZ8Dmieo_GKbyaLN8Nf1n3bVntj_o90Cn-nADRQ@mail.gmail.com>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: Documentation/process
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>, 
	Tony Fischetti <tony.fischetti@gmail.com>, 
	Chris Packham <chris.packham@alliedtelesis.co.nz>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>, Will Deacon <will@kernel.org>, 
	"Chang S. Bae" <chang.seok.bae@intel.com>, Joe Perches <joe@perches.com>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Kees Cook <keescook@chromium.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Jacob Huisman <jacobhuisman@kernelthusiast.com>, 
	Federico Vaga <federico.vaga@vaga.pv.it>, =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>, 
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hNJtisAx;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Alexander,

On Sun, Jun 21, 2020 at 4:30 PM Alexander A. Klimov
<grandmaster@al2klimov.de> wrote:
>
> Which discussion? 93431e0607e5 ? IMAO the patches don't depend on each
> other.

The one we had the other day. It does not matter that the patches
depend on each other. It is information for whoever sees this commit.

> IMAO:
>
> * The script should not be neccessary once all of my changes[1] arrive
> in torvalds/master. Instead reviewers should say like C'mon dude, what's
> this new plain-HTTP link doing in your patch? We have 2020! Look at e.g.
> 93431e0607e5 .

In an ideal world, yes, but that won't happen unless enforced somehow.

Nevertheless, even in such a case, it would be best to have a script
to check the entire tree from time to time.

> * The program language agnostic algo description of mine should be
> enough. If it's not enough, I shall improve the description.

Then you are asking the next person to re-do the work.

> * Today I've added "If not .svg:". Imagine Torvalds merges the script,
> closes the merge window *and then* someone runs it on a random subsystem
> and discovers a missing condition. Do they have to patch the script,
> wait for the patch to arrive in torvalds/master *and then* patch the
> (other) subsystem, so they can refer to the now patched script? W/o a
> such central "rule on how to HTTPSify links" they'd just describe
> *their* algo. Or (even better) there wouldn't be much more insecure
> links, so the algo could be omitted.

I don't follow. They can patch the script if they want (or not), but
even if they do patch it, they don't need to wait for the patch to land.

> After all please show me one of the big bosses (Torvalds, K-H, ...)
> who'd tolerate to have a...
>
> * written w/o focus on maintainability
> * not documented at all
> * *Golang* file
>
> ... in the kernel tree.

It is a script, not part of the kernel building process. We already
have Perl, Python, C++, Makefile, Coccinelle...

But yes, it would be better to write it in a language that we already
have rather than add another. In particular, there is no need for a
compiled language for a script.

> If I correctly understand, you kernel devs write code so that if even
> the maintainer leaves the project, another one could just take over.
>
> How many kernel devs would read and understand (all of them I guess)
> *and maintain that Go script* of mine?

What is the problem reading and maintaining a Go script
(notwithstanding the point above)?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DY%2BbeqZ8Dmieo_GKbyaLN8Nf1n3bVntj_o90Cn-nADRQ%40mail.gmail.com.
