Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6FUWKBQMGQECDLJRLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id AB352355A65
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 19:29:28 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id e9sf10353011wrg.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 10:29:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617730168; cv=pass;
        d=google.com; s=arc-20160816;
        b=xoZusIl/+zAREIhPmWsgY2WVILw4XuEvF5mSMrZFq2JjPEbrPo8hLBHAoAvZHOD9jr
         RcGu2LMsaK+LWOIWQQ48xWUDB7EzGnUzkWXOGWn9ke4T7EbM/cBTMKllCYBQXTHJdPwH
         e5NsPL4V5Qfb8Wy6W1v1g/7LZ865fu8RNcz5tak8p7OjEjK8ezuOsfKDyhyQWAC7Zr95
         xmDYzc+BX7TWDyX4zbWzao5nZJgiBssJT3FqsP1ZFQhluVzE0f0a+rd4kn9ua5+tNZl6
         Yw/X1TQQgiGqjH0jxmWT+GU174p6Y5jzL289xlYAax9AwRe6x5vs+fAU3KAEpDPdrT3M
         flLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=euU1v8/CbKLnU2jgTAJmiNbw+KtOTtix56TLKz1dJvk=;
        b=hiBWStl/KYisdufTaBj9e0PuNMEWLhBl1e4aWByNCzWy8AdFJpFeBWyhepPpN6GbSz
         J4ulZLOuMCBM/ZvBa1+BM53KrnQ6XSGX4Ki9OezApquyEEqsp7ucwtiCMKmk8dJ0IjQk
         09Y9i72Wq0F03xDSiHQEBxX3V7HFVoqOKQpC3wYmJZp70LuoV4aV3il2RW8ygk0Rw4zO
         rZSMe8Bz7lStgcxrVT4LF2W46aql4/XcToEZuF2A93bxmc9T3ikPaxjA98sWr3rmwhDo
         NWpPpqVVrVDthh4hqjnJGLBusMGjkeJFeknCH0/RxKnLWlC70GzUHr6I69yKWPWz6eDn
         G8iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F28cLhAu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=euU1v8/CbKLnU2jgTAJmiNbw+KtOTtix56TLKz1dJvk=;
        b=WVxDV54UYEBTaZXnJGn6zPX1GqKThlG/pZORjTR9V7XOVPCuCpaUJ37WdscBiTf64y
         ba39pYupHfNGUP4gIy5bQQQVzStxN4hyyII0rchWlGpsfYAetsuEx4KlLvwzm3F1OEDt
         ma/SzfdMRJiudEMtRFZjjuZTJdaW5hr6C2n5Qn8vnbkp4ZaOTp+f8bT+xYt3u1gKQDTz
         NOq687zR1v+QP5nsOXNcVSiiiUeOO31maUbCA2KK3owAqq7KlUFr3yAVZhvV9OZiKBbV
         fg4WGLiofunNx6aKQ7xy15GNw3Gely8lNlTPwmNOdp6bWzbY4uGQkXhklEXulhCGwLM9
         8sKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=euU1v8/CbKLnU2jgTAJmiNbw+KtOTtix56TLKz1dJvk=;
        b=CufY8M5wWoDYPYGhtek+Lb6nodW6w5hD77JWhffyUlIRK8T20PwkJ/vtcH4fIaqgU1
         4xO//E8ycWKo/Ro/HlVa+Q6fIv5M38le3vNrDcATCUxm23Gsr7MJKRahf5dR8XQ9H1HA
         8KMrf7+w229+Y5GiiZALLOwTDx9zQesNP4SjSbeP6bNDrMtKU9E2/YAeZ9Y1Pzq1Cfp1
         GxY926aI9aTiNiXZZpFtPQXK+VdVk4HsC45Dr0HqPtOvSNHvPvQYOtHd2drdODjxl0Az
         dCCICIEWT4dPR1FlLcYhWRw0lbas50kFaFBnWXyDmf03noYMxLbfb1Eb32iH/8tWyzeR
         HPuA==
X-Gm-Message-State: AOAM532UtX6fKhjMrabOvdthnNaVeDzf9xX5CYiUbKvTBwuGGYVr+2Va
	NdlK7kvZ506eU7qkSKKSVH0=
X-Google-Smtp-Source: ABdhPJynElPi03T6PsR26T+nFoh7ZJIftd0OwGJey6jkNFwSXmZxhVtuxpGJYeXp2cgFCNVpHKhkjw==
X-Received: by 2002:a05:600c:2204:: with SMTP id z4mr5323515wml.31.1617730168442;
        Tue, 06 Apr 2021 10:29:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls182504wrd.3.gmail; Tue, 06 Apr
 2021 10:29:27 -0700 (PDT)
X-Received: by 2002:a5d:6d48:: with SMTP id k8mr36556864wri.93.1617730167592;
        Tue, 06 Apr 2021 10:29:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617730167; cv=none;
        d=google.com; s=arc-20160816;
        b=YKHMJWiZf4GC8Lr5MJzbf+gx45Vn6HgJ9Dl86Udf5gZMZOKUChryNIjvVXONKO0KPs
         EiPIX6klQYkFUG91ts8pGCsR7KHOHn9vHHH6dznDemC006Zsphe8bg4Bar9UmpebEmeF
         arTu2OJqihWSupXWp3+UTpFTA5+PEBKojxkoU2CnZWF8pBdvPjKpSjxGxOhnLh1+Wi6H
         VRnWn4RCqonahm9lzixz1MK3IxQSFMJyx7wRw5Fg6i6JnhnG7T3gv9WpD7894UH9EdE4
         Laq9M+/Kp7Z6ukReXu7wQnDcj0mzUzBJ1pArGcTUcaJdcC7/DSFYFJYs9oEaX9PUUtXT
         0QYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YIf9WhHJHCe3lAZ1+ZaAIZrPQ6TXzUNG003rAVhSR1s=;
        b=XdjhuTKhLWGsZhvUFncY3rS18ZHKNrQ1EWCbDEwrDYrGivIK7ttZ3peu+QWxshxdtx
         ZnHahVZpUNt1BNdx0U1Y3YVttKteJPTalFJqhBpyfKbsAU11jXfFrkoeEckQXRoG3XS2
         QbLnC8JJa8MTLjj8uOe9MjEonAwjTbFfjcaQRE+WmVePFqSIrrXUzxpli9EVXjG30njy
         EyJMuyPJTUrec9w8GWUtXsUzJHmRrjBxJsre0egSEjWAfy7l5j9ETrrFXw3yM8JvJ8ff
         wD64j8P3PBnibsT/+1459hgCSM/NC4OVvV0D+D9YUTdvSqUkhuTKAXW6Rl84eaiix5Ak
         Pi5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F28cLhAu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id k187si265069wme.2.2021.04.06.10.29.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 10:29:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id v140so6231481lfa.4
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 10:29:27 -0700 (PDT)
X-Received: by 2002:a19:5055:: with SMTP id z21mr21664534lfj.297.1617730166893;
 Tue, 06 Apr 2021 10:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUVm8RQX7wevim_7R_mTPr88TEdonBZNGq72NxsDMKmBOw@mail.gmail.com>
 <43e1416c-4597-8f29-e3d9-f1d45c9c6d33@debian.org>
In-Reply-To: <43e1416c-4597-8f29-e3d9-f1d45c9c6d33@debian.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Apr 2021 10:29:15 -0700
Message-ID: <CAKwvOdk5uDpTfVvXiuKOGVXDcnRdQcC5PdNxzsdLHh91Zmdkxg@mail.gmail.com>
Subject: Re: The LLVM host/target TRIPLE padding drama on Debian
To: Sylvestre Ledru <sylvestre@debian.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, lvm-dev@lists.llvm.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Fangrui Song <maskray@google.com>, 
	Matthias Klose <doko@debian.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F28cLhAu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

On Tue, Apr 6, 2021 at 1:57 AM Sylvestre Ledru <sylvestre@debian.org> wrote=
:
>
> Hello
>
> Could you please report a bug https://bugs.llvm.org/ with a shorter versi=
on of this email ?
> (with less jokes ;)

Heh, I got a laugh. Let me highlight below precisely what should be in
the bugreport.

>
> Thanks
> Sylvestre
>
> Le 06/04/2021 =C3=A0 10:50, Sedat Dilek a =C3=A9crit :
> > [ CC some ClangBuiltLinux and Debian GNU/LLVM toolchain folks ]
> >
> > Hi,
> >
> > this is not a late April-1st-joke.
> > "This is a REAL DRAMA written by (my) LIFE."
> > ( See the end of this Email. )
> >
> > [ INTRO ]
> >
> > /me uses LLVM/Clang and tools - Debian folks call this "LLVM
> > toolchain" - for building latest upstream Linux-kernels.
> >

include from here ---->

> > On Debian x86-64 I see this dpkg-architecture warning in my
> > Linux-kernel build-logs:
> >
> > specified GNU system type x86_64-linux-gnu does not match CC system
> > type x86_64-unknown-linux-gnu, try setting a correct CC environment
> > variable

<----- to here

Also, how do you check the logs? This is during a kernel build?  If so
then it sounds like something wrong with that build script.

> >
> > [ CHECK ]
> >
> > Check "GNU system type" on my Debian system:
> >
> > $ dpkg-architecture --query DEB_HOST_GNU_TYPE
> > x86_64-linux-gnu
> >
> > What says clang (here: Selfmade LLVM version 12.0.0-rc4 - Debian's
> > clang show the same "Target:"):
> >
> > $ /opt/llvm-toolchain/bin/clang --version
> > dileks clang version 12.0.0 (https://github.com/llvm/llvm-project.git
> > 04ba60cfe598e41084fb848daae47e0ed910fa7d)
> > Target: x86_64-unknown-linux-gnu
> > Thread model: posix
> > InstalledDir: /opt/llvm-toolchain/bin
> >
> > [ ABOUT KNIFES AND TRIPLE(S) ]
> >
> > You remember the famous quote from Crocodile Dundee cinema movie?
> > "*This* is a KNIFE!"
> >
> >      This is a TRIPLE: x86_64-linux-gnu
> > This is NOT a TRIPLE: x86_64-unknown-linux-gnu

Heh, yes, "triples" (3) actually have 4 segments.
https://clang.llvm.org/docs/CrossCompilation.html#target-triple

I would think they're equivalent if the "vendor" is left out, so to me
it's a bug in whatever is printing that message.

> >
> > Personally, I do not see a benefit in having an "unknown" but I am not
> > familiar with other operating systems and (its) architectures.
> > Maybe, there is a real need for this extra "padding" (3 -> 4).
> >
> > [ "SOURCE (OF) TRUST" ]
> >
> > I do not follow LLVM development that much.
> > But I know to check the source-code.
> >
> > NOTE: Here: Latest <llvm-project.git#release/12.x>
> >
> > [ clang/test/Driver/program-path-priority.c ]
> >
> > /// We cannot trust clang --version, or cmake's LLVM_DEFAULT_TARGET_TRI=
PLE
> > /// to give us the one and only default triple.
> > /// Can't trust cmake because on Darwin, triples have a verison
> > appended to them.
> > /// (and clang uses the versioned string to search)
> > /// Can't trust --version because it will pad 3 item triples to 4 e.g.
> > /// powerpc64le-linux-gnu -> powerpc64le-unknown-linux-gnu
> > /// (and clang uses the former to search)
> > /// So we write to both names which is a bit odd but still proves that =
the
> > /// lookup is working.
> >
> > LIFE is about TRUST :-).
> > No TRUST - No nothing!
> >
> > [ INSPIRED-BY ]
> >
> > Initially, I was inspired by this change in "tc-build" - the Swiss
> > army knife (YES, this is a KNIFE) from/for ClangBuiltLinux folks.
> >
> > commit 227a77175f81fc9b2e76b2d11b91b686ce41b35b
> > "build-llvm.py: Define LLVM_HOST_TRIPLE for certain distributions"
> >
> > Link: https://github.com/ClangBuiltLinux/tc-build/commit/227a77175f81fc=
9b2e76b2d11b91b686ce41b35b
> >
> > As a man-child I played with...
> >
> > DEB_HOST_GNU_TYPE=3D"x86_64-linux-gnu"
> > LLVM_HOST_TRIPLE_OPTS=3D"-D LLVM_HOST_TRIPLE=3D$DEB_HOST_GNU_TYPE"
> >
> > ...in my custom LLVM toolchain build-script.
> >
> > Unfortunately, this results in a ***mixture of target TRIPLEs***.
> >
> > This is from my comment when playing with LLVM v13-git (see below link)=
.
> >
> > Link: https://github.com/ClangBuiltLinux/tc-build/pull/141#issuecomment=
-791179738
> >
> > LLC and llvm-dwarfdump say "x86_64-linux-gnu":
> >
> > $ /opt/llvm-toolchain/bin/llc --version
> > LLVM (http://llvm.org/):
> >    LLVM version 13.0.0git
> >    Optimized build.
> >    Default target: x86_64-linux-gnu
> >    Host CPU: sandybridge
> >
> >    Registered Targets:
> >      bpf    - BPF (host endian)
> >      bpfeb  - BPF (big endian)
> >      bpfel  - BPF (little endian)
> >      x86    - 32-bit X86: Pentium-Pro and above
> >      x86-64 - 64-bit X86: EM64T and AMD64
> >
> > $ /opt/llvm-toolchain/bin/llvm-dwarfdump --version
> > LLVM (http://llvm.org/):
> >    LLVM version 13.0.0git
> >    Optimized build.
> >    Default target: x86_64-linux-gnu
> >    Host CPU: sandybridge
> >
> > Whereas clang says "x86_64-unknown-linux-gnu":
> >
> > $ /opt/llvm-toolchain/bin/clang --version
> > dileks clang version 13.0.0 (https://github.com/llvm/llvm-project.git
> > 9c0274cdeae904089806be6faee72b9126d2cf5b)
> > Target: x86_64-unknown-linux-gnu
> > Thread model: posix
> > InstalledDir: /opt/llvm-toolchain/bin
> >
> > As said I am an end-user of LLVM not an LLVM developer and I do not
> > follow LLVM upstream development.
> > If there was progress on this topic, please let me know.
> >
> > Final quote from Mark Twain (translated from German):
> > "In my LIFE I had several DRAMA(S) - some of them REALLY happened."
> >
> > For me this is NOT a drama.
> > But I do not know about the consequences of having a mixture of target
> > TRIPLEs in my Debian system.
> > Thus, I dropped above LLVM_HOST_TRIPLE_OPTS from my build-script.
> >
> > Please, let me know if you need further information.
> >
> > Thanks.
> >
> > Regards,
> > - Sedat "A real drama queen" -
> >
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
clang-built-linux/CAKwvOdk5uDpTfVvXiuKOGVXDcnRdQcC5PdNxzsdLHh91Zmdkxg%40mai=
l.gmail.com.
