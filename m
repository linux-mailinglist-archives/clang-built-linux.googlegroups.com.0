Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRGDWCBQMGQELXLMFKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B2B354F1C
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 10:54:30 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id e15sf12582611ioe.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 01:54:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617699268; cv=pass;
        d=google.com; s=arc-20160816;
        b=uwLkuYLv50NqVHmvdztyckzOZW0RRuXelaW4qC6sdr/tySoahtH/aonJRWdV4Pj6sP
         8cAHfC/++CwqFSgy28FjjGNCgvBv6XuYsKS8KL8sNlFxEfpjfA7OVGnGvAhEejA7PLP3
         lzomGbdptte3iwm4iCg1p0fxcmb17GTvFg9fD5El+uyWU+k/3NPPt/yip1U8vk1IACWW
         upxdyzB5O5wBNr+SZhGY5uqpV+D6HLLsYYYZKN9LPqXKVgfwDpuIrLAwAz6efDfEbmAy
         Voa8DJxHsamI0zMIexV+6N5XIlDpBvNfT7uDLzBi4rlx+XpgB2SCAfWBC8GxoSg3UOC9
         yitA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=360/5fuGY1xlU/yHQSL8REwtDxEvcfDPgCuO8SfwH3k=;
        b=CMmcAWoH16m4DjewIcli55C9CsSzum4y/WWNMMKHYwQ/tO3cCdG4SyuyGLS8kxb8P6
         MqBryzch6Hz+MPemcr2fCxZiwjSlS84u17eoRwRoidwzkzF8ZDXhunT9bcLM8pa+1qxf
         IzcU14JiDQrZMfEbwKa9HkbpgE79keS9uVYmYdPSGExWi5nn7rUBzCDbb/mHSFji7hjf
         c92qJZFth5mw1cH3pAyyntXC9hG3E+8TVcNzB3nDUWL9rd3B9pjqik3KN3NoPd+oefHn
         trZmFvDaNr/bz6hT8qowjaF8M4819HwWKZQNRf/UpsSq8a3DVISwiY0GnTc3B1sIQhTE
         4vng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V2lFfFfP;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=360/5fuGY1xlU/yHQSL8REwtDxEvcfDPgCuO8SfwH3k=;
        b=XRSKBrSMECjVQ7+vd/F1x0f3W4m9F3CZ7GS/lQMdX9FEkzEG6vLDOSGyCV4t1c1apa
         b+xLEL9b4G75r4evDrC9ADRq5UjBXTUUQQsZxmfKFi5cP18Vt/kgQKE0R2oYB8VHjmxm
         3YHwGqYpQLXBFPi1l8RdtW2tgL4+SoKk0yySji49WIRlKcVdMgzc7QRHrs9C7dRGjmc1
         pVw7cTmtcHS62int6QgqJOJOmPZhH3V0cxy69BVtLh1oiteUGjFYK6PjqZ5O+ISXzB3X
         QvJIEilbSlYdbpvje1OPwezu/1C+A+tDAyGWep0wugpmXgXuONjzUSGqTnYTsI1a9Qzc
         0CwQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=360/5fuGY1xlU/yHQSL8REwtDxEvcfDPgCuO8SfwH3k=;
        b=ZjgPjj1kVQ6cxeGf7cgkSFzvji8V+FWB3zDeSE+7nVgEh1rrHaGrGyRgk5kDGkl2pQ
         5V77xxKVkJu3o1jiIGIDG1FDJYiyxcfhwytKoXSJyo6hoqHMRiOeMtHdcFlpPqUimi8X
         FbrExDYgpLh+1ZirK97pUkYwvN7WL+1H57ERetDSHAqpufS8PG1nlw/ZJQb15+GKE2Nm
         YAV2UPOm9QcIPLQARwTY892iW7zeZGXMEvU0kEPz4qr9eRKB4/OcLcHQBmVxI9GPwJsA
         6bjsCCIoEaiCvUcxgyt7kuM58OSfr3dHEr2zN0Dyu4k4wu+xnAbf47SST8u5iIX4smak
         NmTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=360/5fuGY1xlU/yHQSL8REwtDxEvcfDPgCuO8SfwH3k=;
        b=Gf8i5OGCCd2pAaPX8o76E96qJLbhZawYktg6UxhO4F/qKn3PbuhMtGDI5iExI5WwDW
         Ao+QPIm4dtM4/326hSCcQHTbwDRMUp9pMhbPFAYIDZo6sNYy3gK0a19ceh26N8kPmrbq
         u3yKJQ/Df3l+FlusBhaWkq599dOV0acalpZOYFn9yspnbEHBtq7t07ICEOSXHm2W7EJO
         7BdXZiOs8lnKpF6eaL7suzIPY9j/tc6fSrT1HMEzmgfKvkZ+bK5Iq9YVK/+pC40s/pXi
         9fuNGRipqHJncndQn89mn66kV9hLlOHBKvw61qR3xiqyIISjEplNhCak/PFz9ZN3wb4t
         b1mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QvtHWh3s3mBDjQlOkwE3t12mw1J8mEC44DfbJ9JXHpVxvaDhv
	Pnm+sz3pmJFTWj3ZmtLnT0g=
X-Google-Smtp-Source: ABdhPJyRsGjEcS1gVtPThu2DVD5qI3f6GqmTOPFrLmRtei/9ZTPKt6mlWGv3vMWeFWgDQE8EamcFYg==
X-Received: by 2002:a92:60d:: with SMTP id x13mr21664492ilg.139.1617699268225;
        Tue, 06 Apr 2021 01:54:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce88:: with SMTP id r8ls2003900ilo.6.gmail; Tue, 06 Apr
 2021 01:54:27 -0700 (PDT)
X-Received: by 2002:a92:cd51:: with SMTP id v17mr5637160ilq.227.1617699267913;
        Tue, 06 Apr 2021 01:54:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617699267; cv=none;
        d=google.com; s=arc-20160816;
        b=WCAKuSoXjVjP9W+cV3rtom/fHVEHVdgWAAYzqgRjmPnc8lKTx8Qrlam//Tq22sFC0E
         XFVMH3QP8vY/RuqPFxj8ptx7mYau4xwjQexMKkUeCJfhfn5k7f15cTNdzfPgBjK2S0VE
         fiJHdAey5jVn7FlwScqELbel2GYNPWoHWrkfYLLjaE+2C8C+oIFXLwyojIEMVog34xQe
         lFe9w56qfxEmCzQWBKnosaBjCa4kwntm2VbDBoLYgTMaVCDP8DM/mht0vpmh7yn4QRoK
         eQmKIWqejgnB6VvEgN1h+G/SA+TeRE0ZlH4kl/OjLrLcbEjiogA0qH9mWYmUvKNih0X7
         Lz3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GGd2qNfhN4QvapK8i03tEC+fWjeaAArTGgk/7F5Tx6w=;
        b=pSI6Dd+BJZBv079+tsaOL0oV6ikEY2KvHY/yNsKV3vke+ZQHqtC47TkKayXmQ5SDk+
         OKSSbR0nJwjBf07pvwE6611D7Tlr7f/73TQgKEW0KcNeB7xtiwoNN02aDVbD2LIDUw4/
         qUGLYgS1rdmnHfZgfBVi6jHVLpGqNeLK/VM1oe9sSii4WNoAR09rDFa01XlfH2J/TRd1
         Fwn+TbWeleuxAxoGIcJAVAGBUK2V3i82fyOGHKJjmCoT0qQzQeWjruvgK3WKoFy3HizC
         lN5WTYr6kI/WS28EWT+X9Lxgml6uaSoCXW+nmQufVTZ/EIG1IcYOYIUXNZ/TsBF7lJ2B
         HcuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V2lFfFfP;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id n13si550464iop.3.2021.04.06.01.54.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:54:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id z9so12410427ilb.4
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 01:54:27 -0700 (PDT)
X-Received: by 2002:a05:6e02:ee3:: with SMTP id j3mr7180152ilk.215.1617699267621;
 Tue, 06 Apr 2021 01:54:27 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUVm8RQX7wevim_7R_mTPr88TEdonBZNGq72NxsDMKmBOw@mail.gmail.com>
In-Reply-To: <CA+icZUVm8RQX7wevim_7R_mTPr88TEdonBZNGq72NxsDMKmBOw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 6 Apr 2021 10:53:55 +0200
Message-ID: <CA+icZUU1neumO03yN8gjCPEEsayoawM6Rh3ddmtoCqENqX=snw@mail.gmail.com>
Subject: Re: The LLVM host/target TRIPLE padding drama on Debian
To: lvm-dev@lists.llvm.org
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Fangrui Song <maskray@google.com>, Sylvestre Ledru <sylvestre@debian.org>, 
	Matthias Klose <doko@debian.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V2lFfFfP;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e
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

Hmmm.... New drama :-)

Subscribing through this Mailman form is currently disabled due to abuse.
Please email subscribe@llvm.org with the list name you would like to
subscribe to.
We are sorry for this extra step and are working quickly to fix the problem.

[1] https://lists.llvm.org/cgi-bin/mailman/listinfo/llvm-dev

On Tue, Apr 6, 2021 at 10:50 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> [ CC some ClangBuiltLinux and Debian GNU/LLVM toolchain folks ]
>
> Hi,
>
> this is not a late April-1st-joke.
> "This is a REAL DRAMA written by (my) LIFE."
> ( See the end of this Email. )
>
> [ INTRO ]
>
> /me uses LLVM/Clang and tools - Debian folks call this "LLVM
> toolchain" - for building latest upstream Linux-kernels.
>
> On Debian x86-64 I see this dpkg-architecture warning in my
> Linux-kernel build-logs:
>
> specified GNU system type x86_64-linux-gnu does not match CC system
> type x86_64-unknown-linux-gnu, try setting a correct CC environment
> variable
>
> [ CHECK ]
>
> Check "GNU system type" on my Debian system:
>
> $ dpkg-architecture --query DEB_HOST_GNU_TYPE
> x86_64-linux-gnu
>
> What says clang (here: Selfmade LLVM version 12.0.0-rc4 - Debian's
> clang show the same "Target:"):
>
> $ /opt/llvm-toolchain/bin/clang --version
> dileks clang version 12.0.0 (https://github.com/llvm/llvm-project.git
> 04ba60cfe598e41084fb848daae47e0ed910fa7d)
> Target: x86_64-unknown-linux-gnu
> Thread model: posix
> InstalledDir: /opt/llvm-toolchain/bin
>
> [ ABOUT KNIFES AND TRIPLE(S) ]
>
> You remember the famous quote from Crocodile Dundee cinema movie?
> "*This* is a KNIFE!"
>
>     This is a TRIPLE: x86_64-linux-gnu
> This is NOT a TRIPLE: x86_64-unknown-linux-gnu
>
> Personally, I do not see a benefit in having an "unknown" but I am not
> familiar with other operating systems and (its) architectures.
> Maybe, there is a real need for this extra "padding" (3 -> 4).
>
> [ "SOURCE (OF) TRUST" ]
>
> I do not follow LLVM development that much.
> But I know to check the source-code.
>
> NOTE: Here: Latest <llvm-project.git#release/12.x>
>
> [ clang/test/Driver/program-path-priority.c ]
>
> /// We cannot trust clang --version, or cmake's LLVM_DEFAULT_TARGET_TRIPLE
> /// to give us the one and only default triple.
> /// Can't trust cmake because on Darwin, triples have a verison
> appended to them.
> /// (and clang uses the versioned string to search)
> /// Can't trust --version because it will pad 3 item triples to 4 e.g.
> /// powerpc64le-linux-gnu -> powerpc64le-unknown-linux-gnu
> /// (and clang uses the former to search)
> /// So we write to both names which is a bit odd but still proves that the
> /// lookup is working.
>
> LIFE is about TRUST :-).
> No TRUST - No nothing!
>
> [ INSPIRED-BY ]
>
> Initially, I was inspired by this change in "tc-build" - the Swiss
> army knife (YES, this is a KNIFE) from/for ClangBuiltLinux folks.
>
> commit 227a77175f81fc9b2e76b2d11b91b686ce41b35b
> "build-llvm.py: Define LLVM_HOST_TRIPLE for certain distributions"
>
> Link: https://github.com/ClangBuiltLinux/tc-build/commit/227a77175f81fc9b2e76b2d11b91b686ce41b35b
>
> As a man-child I played with...
>
> DEB_HOST_GNU_TYPE="x86_64-linux-gnu"
> LLVM_HOST_TRIPLE_OPTS="-D LLVM_HOST_TRIPLE=$DEB_HOST_GNU_TYPE"
>
> ...in my custom LLVM toolchain build-script.
>
> Unfortunately, this results in a ***mixture of target TRIPLEs***.
>
> This is from my comment when playing with LLVM v13-git (see below link).
>
> Link: https://github.com/ClangBuiltLinux/tc-build/pull/141#issuecomment-791179738
>
> LLC and llvm-dwarfdump say "x86_64-linux-gnu":
>
> $ /opt/llvm-toolchain/bin/llc --version
> LLVM (http://llvm.org/):
>   LLVM version 13.0.0git
>   Optimized build.
>   Default target: x86_64-linux-gnu
>   Host CPU: sandybridge
>
>   Registered Targets:
>     bpf    - BPF (host endian)
>     bpfeb  - BPF (big endian)
>     bpfel  - BPF (little endian)
>     x86    - 32-bit X86: Pentium-Pro and above
>     x86-64 - 64-bit X86: EM64T and AMD64
>
> $ /opt/llvm-toolchain/bin/llvm-dwarfdump --version
> LLVM (http://llvm.org/):
>   LLVM version 13.0.0git
>   Optimized build.
>   Default target: x86_64-linux-gnu
>   Host CPU: sandybridge
>
> Whereas clang says "x86_64-unknown-linux-gnu":
>
> $ /opt/llvm-toolchain/bin/clang --version
> dileks clang version 13.0.0 (https://github.com/llvm/llvm-project.git
> 9c0274cdeae904089806be6faee72b9126d2cf5b)
> Target: x86_64-unknown-linux-gnu
> Thread model: posix
> InstalledDir: /opt/llvm-toolchain/bin
>
> As said I am an end-user of LLVM not an LLVM developer and I do not
> follow LLVM upstream development.
> If there was progress on this topic, please let me know.
>
> Final quote from Mark Twain (translated from German):
> "In my LIFE I had several DRAMA(S) - some of them REALLY happened."
>
> For me this is NOT a drama.
> But I do not know about the consequences of having a mixture of target
> TRIPLEs in my Debian system.
> Thus, I dropped above LLVM_HOST_TRIPLE_OPTS from my build-script.
>
> Please, let me know if you need further information.
>
> Thanks.
>
> Regards,
> - Sedat "A real drama queen" -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU1neumO03yN8gjCPEEsayoawM6Rh3ddmtoCqENqX%3Dsnw%40mail.gmail.com.
