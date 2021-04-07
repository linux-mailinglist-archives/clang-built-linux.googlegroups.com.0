Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBP6EWSBQMGQESQQEYJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC7D3561C2
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 05:08:48 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id m4sf1922943plx.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 20:08:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617764927; cv=pass;
        d=google.com; s=arc-20160816;
        b=p7871KBgYWMwqkpmG+/vbdd/9A1Hji+GgJCX4YGb+n0WVgqsf+vIOYUBXXptBZAQiE
         UC34IUXO754r8lSjn4eLLSO0bWWsup6nNkQeElxt7BanfK9vgFuV5EiDlzE0TsZRUwus
         q8vOzsBhdXDh8EiITVHaaHfeBMaybTOW4PklW6OMm2a1eHs4GEEzJfEf87TvHnM2rBiU
         NjCeFpevQn+ZuJHOhmJ7zDx8AENkH8ggbRLGzJhJHlxYMzqaBQdAeGqVEyWUS4yYwVuG
         f6/IBiJSvsNrd7pNGFZmACWFEjk+Acfw5K/fRyWczB62r73PFIDKhWSaYOxQM6C6KeLu
         90ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=xc8rlx/E4TwVmX9Hdn8u3EeCYUd+swujCjOYF3LDjwU=;
        b=zwc7ddsA5KZI58tvpKkhQbSWhkYbI8XwHOEPFbs22xcJcv/OjFpHpiVlb/V1nLPUgl
         I0KphPiYwDl31G2wUuwoPKuI+TFwXd7jR0pGyOzQ4dspUQMTF0RzG9YduR5P/YlrKbXi
         s7zbVkgztcpCJU1SSsr6H6g/Kenwm2HaEeRDmELpC6ufuI/WnSfgc+CT2xsENJDMNNzA
         fKn0Z5di5ULXkRwHUGfKBVLyjZg1bE7dsFe91t55m6zUmBgwGakUzgg5TSLL/IuevEXm
         rTkve4dnFloCZGv2bijwCpHShXt5acEgD410yphaewUEjEDbi++4gsc2qFaQCPR6H69i
         O4/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DAtnx0sO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xc8rlx/E4TwVmX9Hdn8u3EeCYUd+swujCjOYF3LDjwU=;
        b=sr8Qx8/Os7B4rx5hZ62FKGHoun4kJb1BT5G2E8OjjMv45h9hmLFstxId9BY28I3Pv/
         T0lzklPhF7ShKRZ2VQuXu2ycS0L5RUNLxuTzcaG6Nr5fb3gz5TLNceP5MBiiRsS4gt71
         tYdhxPLP0TjMqO8l8V17xxlRxrhaLfhM395gCUZliikj5xAi8fYc1tW+dGkczYdqcXzA
         KAwyB48gNy9iOyTEGjMA7nUyiLZ8PDN5rK80xgJo4PJYIsNOxEAP+PyfuOaXgzaxZglu
         5ptE0EAhSKdSdsgXSRiFUi/PpxSQxBCqY8xkwTv3eHRkjhg+CQIaa0S02gPdUjMer2wN
         Xo+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xc8rlx/E4TwVmX9Hdn8u3EeCYUd+swujCjOYF3LDjwU=;
        b=vXE4fPRDK6JRykJqan2EIDbnFI95dQqn5cKs2UMADqS1S2TBCAqKjNEKBtbsUFdQHG
         ynywaPouqwxw1gUB944sxYE3WaBIrAvqmPkJS+mZmBH/9ZzIrmVqe+LbZISI16JuvZ7Z
         ++WvmI1D/gCaXrXgvFiBlBZJwLEZnxS1xgi2aJMYao6VIF+jA1puYIZ2r44KliBKnqau
         n1gQ90J5FzIZ1CHynjO/x5GtZJ/mICJ6jvzPptR6nbChUwaXipj9/xLWLEcw8A61FKVb
         dJORZGpi7tE3dRCwt/WvSu1N3+IkTLp95zGV2RRn+UaPti3bqRw66Kg17N83zjCsCAGg
         XT0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xc8rlx/E4TwVmX9Hdn8u3EeCYUd+swujCjOYF3LDjwU=;
        b=E4IKwehUk5/t4juADELhr/jMydUOtpK6GK1nFPVbqBauI54bnn5OSVtZ9CNnvEhQR3
         uD95kZWZG3hAgKYTpKKI7WzSxtXdpC6+UP/VW8BWvhyXvznOpKUa9rUJggVczOF3EQ/I
         IA9B88WeeTwjrGAFHiUA+1cWAvBW7AC+0PNK+dTevSFiPE+xQ4NYO6dnU3AD1HWkch/7
         AoOfWR30PHBgogs8TJgE3cIofJnwmCEdXtJZX1LIb/+qQ77z+zuZrZsv2cGW+DCy/jiR
         hl1XuWPlpIpP7tSIedO3l+p/SiQWEpkYHzJAel+9hxq4ulZXyZ1LdYqc+nxjYW1K9i/7
         U/ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AmCtvKIYUDQsffRITfe01O5c3N+TyxeTmKA+AKc5r+AaFQ2Sd
	L31/Qezs7TRSK7PSNYYL2ys=
X-Google-Smtp-Source: ABdhPJxkKEJCT9WE+QIH5yKCEbukZt6KtzGpG1ZWI04SEpNRN3Rsg0Ra1K1/odipAD39fPejAPqQ3A==
X-Received: by 2002:a17:90a:5b0b:: with SMTP id o11mr1175772pji.150.1617764927449;
        Tue, 06 Apr 2021 20:08:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b48:: with SMTP id a8ls425452pgl.10.gmail; Tue, 06 Apr
 2021 20:08:46 -0700 (PDT)
X-Received: by 2002:a62:de83:0:b029:23e:6d5f:b166 with SMTP id h125-20020a62de830000b029023e6d5fb166mr1122697pfg.78.1617764926881;
        Tue, 06 Apr 2021 20:08:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617764926; cv=none;
        d=google.com; s=arc-20160816;
        b=MP7IYHGLPgb44NsO8QAFYSfgoQ8/7gIvOIFzFSMGklIhbbIiR/iE8AfT9Y3BkqNAxo
         TSKdIn3gZDuK5BPoxAiPfQRgisDsTzZWQ8+9368OaIRZ7Xr//xJrlGGD15Z7K5ZPPoRE
         hCCn5jhCuh2Xy6aPD9tNZ38ClHKaBrAqLn/VnnA0TUXAA4gt7b67XG2IfOeDcR18MQhi
         wp2zWsiKBPK1VOvdVHQw7UjfiCxOdp6+SsO1TmklchWPFCXXZcB1tvlcZTfxIz/ZONyA
         L0jPByrKLTjm0Efa50An57M/BUCkI/53FChCMoK8wgSRskoIN80rpUl+k40XvSQTycOe
         qJsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=e2pLq3OLQfZBYQICJXzaNJ/+w/Ju/sSFyM+oWhdPVqA=;
        b=cIfeoMdnKrtsdEhkbmOQp6WrzAZlw7Mi7qZ1B6c6zD2UThGuJk6wvtPPpdTt2sp6IH
         P72vTUn32MQtPC82qWz9lGSR0AMpikfD8E7YPCQqIoEbZ9epCUK9KUU4B5XOPKJ4ezrq
         MOWDqJD/pZXrAXHZIW+Atyx3xP6jy518iBsAwcJZWGjiNU5JvlU6oys/5JQ8mCx4Qeza
         j80Y2Klf795kZMRmYWGUaY8aw6GlBAv5d3hLvyn6UoOsWrqNIMCs8UYe52CLM0mYunG7
         aKyVm7GokFxLkt/YHdhNOXEs8ptMzHSb9y96oy32FEDOoU+9b/rlr3YyOoGqxnu9+xNC
         Lb1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DAtnx0sO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com. [2607:f8b0:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id u21si43766pfc.0.2021.04.06.20.08.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 20:08:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) client-ip=2607:f8b0:4864:20::12c;
Received: by mail-il1-x12c.google.com with SMTP id c3so6868005ils.2
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 20:08:46 -0700 (PDT)
X-Received: by 2002:a92:d78f:: with SMTP id d15mr1076467iln.112.1617764926269;
 Tue, 06 Apr 2021 20:08:46 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUVm8RQX7wevim_7R_mTPr88TEdonBZNGq72NxsDMKmBOw@mail.gmail.com>
 <43e1416c-4597-8f29-e3d9-f1d45c9c6d33@debian.org> <CAKwvOdk5uDpTfVvXiuKOGVXDcnRdQcC5PdNxzsdLHh91Zmdkxg@mail.gmail.com>
In-Reply-To: <CAKwvOdk5uDpTfVvXiuKOGVXDcnRdQcC5PdNxzsdLHh91Zmdkxg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 7 Apr 2021 05:08:17 +0200
Message-ID: <CA+icZUWkoMvgH7WWM5aop=CkjPExRQASW=V-ByXX+JqWvDw_Lg@mail.gmail.com>
Subject: Re: The LLVM host/target TRIPLE padding drama on Debian
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sylvestre Ledru <sylvestre@debian.org>, lvm-dev@lists.llvm.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Fangrui Song <maskray@google.com>, 
	Matthias Klose <doko@debian.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DAtnx0sO;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12c
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Tue, Apr 6, 2021 at 7:29 PM Nick Desaulniers <ndesaulniers@google.com> w=
rote:
>
> On Tue, Apr 6, 2021 at 1:57 AM Sylvestre Ledru <sylvestre@debian.org> wro=
te:
> >
> > Hello
> >
> > Could you please report a bug https://bugs.llvm.org/ with a shorter ver=
sion of this email ?
> > (with less jokes ;)
>
> Heh, I got a laugh. Let me highlight below precisely what should be in
> the bugreport.
>
> >
> > Thanks
> > Sylvestre
> >
> > Le 06/04/2021 =C3=A0 10:50, Sedat Dilek a =C3=A9crit :
> > > [ CC some ClangBuiltLinux and Debian GNU/LLVM toolchain folks ]
> > >
> > > Hi,
> > >
> > > this is not a late April-1st-joke.
> > > "This is a REAL DRAMA written by (my) LIFE."
> > > ( See the end of this Email. )
> > >
> > > [ INTRO ]
> > >
> > > /me uses LLVM/Clang and tools - Debian folks call this "LLVM
> > > toolchain" - for building latest upstream Linux-kernels.
> > >
>
> include from here ---->
>
> > > On Debian x86-64 I see this dpkg-architecture warning in my
> > > Linux-kernel build-logs:
> > >
> > > specified GNU system type x86_64-linux-gnu does not match CC system
> > > type x86_64-unknown-linux-gnu, try setting a correct CC environment
> > > variable
>
> <----- to here
>
> Also, how do you check the logs? This is during a kernel build?  If so
> then it sounds like something wrong with that build script.
>
> > >
> > > [ CHECK ]
> > >
> > > Check "GNU system type" on my Debian system:
> > >
> > > $ dpkg-architecture --query DEB_HOST_GNU_TYPE
> > > x86_64-linux-gnu
> > >
> > > What says clang (here: Selfmade LLVM version 12.0.0-rc4 - Debian's
> > > clang show the same "Target:"):
> > >
> > > $ /opt/llvm-toolchain/bin/clang --version
> > > dileks clang version 12.0.0 (https://github.com/llvm/llvm-project.git
> > > 04ba60cfe598e41084fb848daae47e0ed910fa7d)
> > > Target: x86_64-unknown-linux-gnu
> > > Thread model: posix
> > > InstalledDir: /opt/llvm-toolchain/bin
> > >
> > > [ ABOUT KNIFES AND TRIPLE(S) ]
> > >
> > > You remember the famous quote from Crocodile Dundee cinema movie?
> > > "*This* is a KNIFE!"
> > >
> > >      This is a TRIPLE: x86_64-linux-gnu
> > > This is NOT a TRIPLE: x86_64-unknown-linux-gnu
>
> Heh, yes, "triples" (3) actually have 4 segments.
> https://clang.llvm.org/docs/CrossCompilation.html#target-triple
>
> I would think they're equivalent if the "vendor" is left out, so to me
> it's a bug in whatever is printing that message.
>

I pass to cmake:

CLANG_VENDOR=3D"dileks"
BASIC_OPTS=3D" ... --clang-vendor ${CLANG_VENDOR}"

Dunno what impact this has on my issue.

Might be worth including as an information in the BR.

- Sedat -

> > >
> > > Personally, I do not see a benefit in having an "unknown" but I am no=
t
> > > familiar with other operating systems and (its) architectures.
> > > Maybe, there is a real need for this extra "padding" (3 -> 4).
> > >
> > > [ "SOURCE (OF) TRUST" ]
> > >
> > > I do not follow LLVM development that much.
> > > But I know to check the source-code.
> > >
> > > NOTE: Here: Latest <llvm-project.git#release/12.x>
> > >
> > > [ clang/test/Driver/program-path-priority.c ]
> > >
> > > /// We cannot trust clang --version, or cmake's LLVM_DEFAULT_TARGET_T=
RIPLE
> > > /// to give us the one and only default triple.
> > > /// Can't trust cmake because on Darwin, triples have a verison
> > > appended to them.
> > > /// (and clang uses the versioned string to search)
> > > /// Can't trust --version because it will pad 3 item triples to 4 e.g=
.
> > > /// powerpc64le-linux-gnu -> powerpc64le-unknown-linux-gnu
> > > /// (and clang uses the former to search)
> > > /// So we write to both names which is a bit odd but still proves tha=
t the
> > > /// lookup is working.
> > >
> > > LIFE is about TRUST :-).
> > > No TRUST - No nothing!
> > >
> > > [ INSPIRED-BY ]
> > >
> > > Initially, I was inspired by this change in "tc-build" - the Swiss
> > > army knife (YES, this is a KNIFE) from/for ClangBuiltLinux folks.
> > >
> > > commit 227a77175f81fc9b2e76b2d11b91b686ce41b35b
> > > "build-llvm.py: Define LLVM_HOST_TRIPLE for certain distributions"
> > >
> > > Link: https://github.com/ClangBuiltLinux/tc-build/commit/227a77175f81=
fc9b2e76b2d11b91b686ce41b35b
> > >
> > > As a man-child I played with...
> > >
> > > DEB_HOST_GNU_TYPE=3D"x86_64-linux-gnu"
> > > LLVM_HOST_TRIPLE_OPTS=3D"-D LLVM_HOST_TRIPLE=3D$DEB_HOST_GNU_TYPE"
> > >
> > > ...in my custom LLVM toolchain build-script.
> > >
> > > Unfortunately, this results in a ***mixture of target TRIPLEs***.
> > >
> > > This is from my comment when playing with LLVM v13-git (see below lin=
k).
> > >
> > > Link: https://github.com/ClangBuiltLinux/tc-build/pull/141#issuecomme=
nt-791179738
> > >
> > > LLC and llvm-dwarfdump say "x86_64-linux-gnu":
> > >
> > > $ /opt/llvm-toolchain/bin/llc --version
> > > LLVM (http://llvm.org/):
> > >    LLVM version 13.0.0git
> > >    Optimized build.
> > >    Default target: x86_64-linux-gnu
> > >    Host CPU: sandybridge
> > >
> > >    Registered Targets:
> > >      bpf    - BPF (host endian)
> > >      bpfeb  - BPF (big endian)
> > >      bpfel  - BPF (little endian)
> > >      x86    - 32-bit X86: Pentium-Pro and above
> > >      x86-64 - 64-bit X86: EM64T and AMD64
> > >
> > > $ /opt/llvm-toolchain/bin/llvm-dwarfdump --version
> > > LLVM (http://llvm.org/):
> > >    LLVM version 13.0.0git
> > >    Optimized build.
> > >    Default target: x86_64-linux-gnu
> > >    Host CPU: sandybridge
> > >
> > > Whereas clang says "x86_64-unknown-linux-gnu":
> > >
> > > $ /opt/llvm-toolchain/bin/clang --version
> > > dileks clang version 13.0.0 (https://github.com/llvm/llvm-project.git
> > > 9c0274cdeae904089806be6faee72b9126d2cf5b)
> > > Target: x86_64-unknown-linux-gnu
> > > Thread model: posix
> > > InstalledDir: /opt/llvm-toolchain/bin
> > >
> > > As said I am an end-user of LLVM not an LLVM developer and I do not
> > > follow LLVM upstream development.
> > > If there was progress on this topic, please let me know.
> > >
> > > Final quote from Mark Twain (translated from German):
> > > "In my LIFE I had several DRAMA(S) - some of them REALLY happened."
> > >
> > > For me this is NOT a drama.
> > > But I do not know about the consequences of having a mixture of targe=
t
> > > TRIPLEs in my Debian system.
> > > Thus, I dropped above LLVM_HOST_TRIPLE_OPTS from my build-script.
> > >
> > > Please, let me know if you need further information.
> > >
> > > Thanks.
> > >
> > > Regards,
> > > - Sedat "A real drama queen" -
> > >
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUWkoMvgH7WWM5aop%3DCkjPExRQASW%3DV-ByXX%2BJqWvDw_=
Lg%40mail.gmail.com.
