Return-Path: <clang-built-linux+bncBCS7XUWOUULBB66QWOBQMGQELZ6WQDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id DC92D355F30
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 01:02:20 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 38sf10397428otx.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 16:02:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617750140; cv=pass;
        d=google.com; s=arc-20160816;
        b=KZiBMowz+CSeOh3elnyjVM/ce5wgFRD6vsb2jx14AHxRFoMbBIJNhLhDlu0D9qastm
         7ZTn1nUpJCKwH5tbKv2TSFzVKTS8VNJfKG/gPcJtP4heWPuS8k4k7YvuOyJ+G5WMxq3t
         JCw61szP4RN/BjpBfL8gSfmEbFlg4zI5Hl6Rw8RLUNv+IhRU3hp+a0GR6SETsTL94fUJ
         AjleBJyd8ndHinRYmqVgxYFp2BaxbmKX8wVbfVV+vvb5rXnkxggO8ileeFm9QmQ+T9kX
         NJbM5gzqF2w8/+mnVvA+sUGQRzVDZz7RKULtUHtdLCMMOArF71nhsuzHNi+rp6BByupJ
         Y7jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=EbjifsB+bPp8YSeHE/TTnHbihzrbR4rg9BqkGPBdfEg=;
        b=Z4VDXK7WHNFmkUlw1py1XXJnIujx313bKjEI561gSRHS/51unCKKRHn57n0tG8JQhl
         ABfN0yks139qT21QdR3sGLrbRjdkjut6QHVOMzpi4lhmKerCxt85yjiYtS/ZjoKPd0jj
         bTxR9Eh1F2JAS7HeZEc8FrmN3yVipBvrBpHlSgeN+o1OgUtYyFyFeSwJKj2eELC/fx8w
         JlZfz4LidUc8xA61ueNFwmOe3JbJflKyGmR4AqqoA+jYrCxTcDSRH3vO1g4iuUFy+cgg
         ZBHfD1aIf61bzGznsx2UHJEGu0pGuZSflYsdR03d81eViw6bR29wEl8DJmz/YEoQ319t
         uGQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EBcuVCmY;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EbjifsB+bPp8YSeHE/TTnHbihzrbR4rg9BqkGPBdfEg=;
        b=jhTnMF7hEo+7BokM0dEZmx+ZxJRWvQsJROeOxlEsKUWu3NKLP5LOpZjlkgcFvIP76C
         8tQoikz2GvzhuiGAAHfP1PDoQ4N9qUTBzYNwq0EzQMIsyAaMUTiWFSQFrtTEF9jIKL62
         fZz2B86ZFtL2rxkkJALuy0UcDB6BxHLaDYddk5t2g2ACePlmBvgJgNJRfySnejRrNdoV
         RwDrajsAaVDmMDa+VCiszQvAc308vnFgNZPYCa92dhC2GtAjZsYpT+Cr/rkv16nn0WQg
         ge7cBsRFwzGPmbLEDL72kLPCh5SxDfndVsAMYuav2xKyDfhJfjpxRA2f2hwjxjQ99aD/
         m57Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EbjifsB+bPp8YSeHE/TTnHbihzrbR4rg9BqkGPBdfEg=;
        b=nBAVX5rzRBjTxegMiG6rOnrQ3kLMF8HSv3NMDrYPthHbFjSv2KCT0LlW2wDcEXaTnN
         TBEMLuy9MagfPeLX5S8ejjcgFWPq81l47gwp8nRkiSsWQVZScVyuUL2/XsgxZw6D5o1V
         IMijKXIsX7YU6mPDkC04JGAf11yk+lcxk/waWFZsJkhwuWcO2/AIM/boJH+Up3tBSrDi
         VSBCLGjm3Cxv7ybFGAYwlWV9fWNyJ5uAUqKmQQUp1V5EwjXt68MyjaL5A5+KggCuoD/U
         KPX9/tETIGjvEb8wNL7TiqbVZym+KMiTxkumn1RmyX/TtzVek6gHFkXGCsiGA3V2kKdd
         w0LA==
X-Gm-Message-State: AOAM532oGTt+BMUvXs0oYqfwBvaAuUnrvO9/C6LWvWDfe/YxbEurWnoF
	Mee6MzdM4WGt12ol9SW3oCg=
X-Google-Smtp-Source: ABdhPJyFcHBv2jeSoGYJWZqlLurW9kWj1kWvPubXgJalcQYTTW3n7HKnyvofBJ1HbCCZApQfQMqI9w==
X-Received: by 2002:a9d:bf4:: with SMTP id 107mr375874oth.252.1617750139895;
        Tue, 06 Apr 2021 16:02:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:71cf:: with SMTP id z15ls87182otj.2.gmail; Tue, 06 Apr
 2021 16:02:19 -0700 (PDT)
X-Received: by 2002:a9d:7d8e:: with SMTP id j14mr331216otn.227.1617750139527;
        Tue, 06 Apr 2021 16:02:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617750139; cv=none;
        d=google.com; s=arc-20160816;
        b=rtOM4V4cdcnUTBpI4WStMJbD9TkIe7uFkkHCRZL3fvCcJOQGQ7vWR/UMR7y0evmfra
         ktZnYKvj7K/BEccEPEJCZD2trVe3HQm9Tbcwq7hxvd1s65XXt05O53PgvQP7D1yURFbJ
         I45n0XfUX8Zju/YncQegJL70KcIl1MjWWYcYc7gH0kh7NFP4hFl07WFqvGnHJx2RWSa8
         cfjP7PG79WdC9LVoqcCSSciUZjflbbq3T/muLzVZwjr5ApBWGeOpCm4z8FBZkhM6mM9R
         7zO2WzSjK4vQJAWFp6Wu/slxOtAbW+UjzczjXBKC11cyuv6QH05feyOiYFKJPs4yUqjo
         BEcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=8WicHY+2UgtTW3xYwz6ScopZ/oa1MqfpYeYAKKOwbdU=;
        b=CGAJ3M1Ta89CjqFysSpevxsazHw8tPE/gAHLZVIXAsCKHaBZWQjEiuHXuRmTqdJ/Ww
         c4HXiTlQ4aNpaeU0WGkpC10fOGfExzj+7lITCS8qxope9Y8/011ZVI5vMv0nvekdpAYZ
         gOO5qamCYlIWYDsBcGH2x08S75pArG/WMP47g6vOCdmPS3ua4YTmxLkwDYli2vcyi/Wq
         h7YYHKVozZBEELQUF9H1W2Kbwrr9HnT2/tUgRie+/y/hDTzk7Ily1VdxBMY3OBOnZrl8
         anJ7ptbsOepvU0CvMtdiqC2+fO22pO9QRYAZIceCYRbilSjr2VXemxI832sLFI8TYJJ5
         sF/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EBcuVCmY;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id x143si1464646oif.2.2021.04.06.16.02.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 16:02:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id p12so7541850pgj.10
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 16:02:19 -0700 (PDT)
X-Received: by 2002:a63:be0f:: with SMTP id l15mr444504pgf.39.1617750138928;
        Tue, 06 Apr 2021 16:02:18 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:c4dd:ad3:31cc:bdf2])
        by smtp.gmail.com with ESMTPSA id i10sm3876273pjm.1.2021.04.06.16.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 16:02:18 -0700 (PDT)
Date: Tue, 6 Apr 2021 16:02:16 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Sylvestre Ledru <sylvestre@debian.org>,
	Nick Desaulniers <ndesaulniers@google.com>, cfe-dev@lists.llvm.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Matthias Klose <doko@debian.org>
Subject: Re: The LLVM host/target TRIPLE padding drama on Debian
Message-ID: <20210406230216.ofnohyyzybhmbqgt@google.com>
References: <CA+icZUVm8RQX7wevim_7R_mTPr88TEdonBZNGq72NxsDMKmBOw@mail.gmail.com>
 <43e1416c-4597-8f29-e3d9-f1d45c9c6d33@debian.org>
 <CAKwvOdk5uDpTfVvXiuKOGVXDcnRdQcC5PdNxzsdLHh91Zmdkxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdk5uDpTfVvXiuKOGVXDcnRdQcC5PdNxzsdLHh91Zmdkxg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EBcuVCmY;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::532
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

[Remove lve-dev which I think does not exist.  Add cfe-dev.]

On 2021-04-06, Nick Desaulniers wrote:
>On Tue, Apr 6, 2021 at 1:57 AM Sylvestre Ledru <sylvestre@debian.org> wrot=
e:
>>
>> Hello
>>
>> Could you please report a bug https://bugs.llvm.org/ with a shorter vers=
ion of this email ?
>> (with less jokes ;)
>
>Heh, I got a laugh. Let me highlight below precisely what should be in
>the bugreport.
>
>>
>> Thanks
>> Sylvestre
>>
>> Le 06/04/2021 =C3=A0 10:50, Sedat Dilek a =C3=A9crit :
>> > [ CC some ClangBuiltLinux and Debian GNU/LLVM toolchain folks ]
>> >
>> > Hi,
>> >
>> > this is not a late April-1st-joke.
>> > "This is a REAL DRAMA written by (my) LIFE."
>> > ( See the end of this Email. )
>> >
>> > [ INTRO ]
>> >
>> > /me uses LLVM/Clang and tools - Debian folks call this "LLVM
>> > toolchain" - for building latest upstream Linux-kernels.
>> >
>
>include from here ---->
>
>> > On Debian x86-64 I see this dpkg-architecture warning in my
>> > Linux-kernel build-logs:
>> >
>> > specified GNU system type x86_64-linux-gnu does not match CC system
>> > type x86_64-unknown-linux-gnu, try setting a correct CC environment
>> > variable
>
><----- to here
>
>Also, how do you check the logs? This is during a kernel build?  If so
>then it sounds like something wrong with that build script.
>
>> >
>> > [ CHECK ]
>> >
>> > Check "GNU system type" on my Debian system:
>> >
>> > $ dpkg-architecture --query DEB_HOST_GNU_TYPE
>> > x86_64-linux-gnu
>> >
>> > What says clang (here: Selfmade LLVM version 12.0.0-rc4 - Debian's
>> > clang show the same "Target:"):
>> >
>> > $ /opt/llvm-toolchain/bin/clang --version
>> > dileks clang version 12.0.0 (https://github.com/llvm/llvm-project.git
>> > 04ba60cfe598e41084fb848daae47e0ed910fa7d)
>> > Target: x86_64-unknown-linux-gnu
>> > Thread model: posix
>> > InstalledDir: /opt/llvm-toolchain/bin
>> >
>> > [ ABOUT KNIFES AND TRIPLE(S) ]
>> >
>> > You remember the famous quote from Crocodile Dundee cinema movie?
>> > "*This* is a KNIFE!"
>> >
>> >      This is a TRIPLE: x86_64-linux-gnu
>> > This is NOT a TRIPLE: x86_64-unknown-linux-gnu
>
>Heh, yes, "triples" (3) actually have 4 segments.
>https://clang.llvm.org/docs/CrossCompilation.html#target-triple
>
>I would think they're equivalent if the "vendor" is left out, so to me
>it's a bug in whatever is printing that message.
>
>> >
>> > Personally, I do not see a benefit in having an "unknown" but I am not
>> > familiar with other operating systems and (its) architectures.
>> > Maybe, there is a real need for this extra "padding" (3 -> 4).
>> >
>> > [ "SOURCE (OF) TRUST" ]
>> >
>> > I do not follow LLVM development that much.
>> > But I know to check the source-code.
>> >
>> > NOTE: Here: Latest <llvm-project.git#release/12.x>
>> >
>> > [ clang/test/Driver/program-path-priority.c ]
>> >
>> > /// We cannot trust clang --version, or cmake's LLVM_DEFAULT_TARGET_TR=
IPLE
>> > /// to give us the one and only default triple.
>> > /// Can't trust cmake because on Darwin, triples have a verison
>> > appended to them.
>> > /// (and clang uses the versioned string to search)
>> > /// Can't trust --version because it will pad 3 item triples to 4 e.g.
>> > /// powerpc64le-linux-gnu -> powerpc64le-unknown-linux-gnu
>> > /// (and clang uses the former to search)
>> > /// So we write to both names which is a bit odd but still proves that=
 the
>> > /// lookup is working.

I created https://reviews.llvm.org/D99996 to drop $DEFAULR_TRIPLE-gcc
from appearing in an unrelated target triple cross compilation.

>> > LIFE is about TRUST :-).
>> > No TRUST - No nothing!
>> >
>> > [ INSPIRED-BY ]
>> >
>> > Initially, I was inspired by this change in "tc-build" - the Swiss
>> > army knife (YES, this is a KNIFE) from/for ClangBuiltLinux folks.
>> >
>> > commit 227a77175f81fc9b2e76b2d11b91b686ce41b35b
>> > "build-llvm.py: Define LLVM_HOST_TRIPLE for certain distributions"
>> >
>> > Link: https://github.com/ClangBuiltLinux/tc-build/commit/227a77175f81f=
c9b2e76b2d11b91b686ce41b35b
>> >
>> > As a man-child I played with...
>> >
>> > DEB_HOST_GNU_TYPE=3D"x86_64-linux-gnu"
>> > LLVM_HOST_TRIPLE_OPTS=3D"-D LLVM_HOST_TRIPLE=3D$DEB_HOST_GNU_TYPE"
>> >
>> > ...in my custom LLVM toolchain build-script.
>> >
>> > Unfortunately, this results in a ***mixture of target TRIPLEs***.
>> >
>> > This is from my comment when playing with LLVM v13-git (see below link=
).
>> >
>> > Link: https://github.com/ClangBuiltLinux/tc-build/pull/141#issuecommen=
t-791179738
>> >
>> > LLC and llvm-dwarfdump say "x86_64-linux-gnu":
>> >
>> > $ /opt/llvm-toolchain/bin/llc --version
>> > LLVM (http://llvm.org/):
>> >    LLVM version 13.0.0git
>> >    Optimized build.
>> >    Default target: x86_64-linux-gnu
>> >    Host CPU: sandybridge
>> >
>> >    Registered Targets:
>> >      bpf    - BPF (host endian)
>> >      bpfeb  - BPF (big endian)
>> >      bpfel  - BPF (little endian)
>> >      x86    - 32-bit X86: Pentium-Pro and above
>> >      x86-64 - 64-bit X86: EM64T and AMD64
>> >
>> > $ /opt/llvm-toolchain/bin/llvm-dwarfdump --version
>> > LLVM (http://llvm.org/):
>> >    LLVM version 13.0.0git
>> >    Optimized build.
>> >    Default target: x86_64-linux-gnu
>> >    Host CPU: sandybridge

sys::getDefaultTargetTriple()

>> > Whereas clang says "x86_64-unknown-linux-gnu":
>> >
>> > $ /opt/llvm-toolchain/bin/clang --version
>> > dileks clang version 13.0.0 (https://github.com/llvm/llvm-project.git
>> > 9c0274cdeae904089806be6faee72b9126d2cf5b)
>> > Target: x86_64-unknown-linux-gnu
>> > Thread model: posix
>> > InstalledDir: /opt/llvm-toolchain/bin

The vendor part "unknown" may be added by=20
computeTargetTriple in clang/lib/Driver/Driver.cpp

If you specify --target, "Target: " will be overridden.

% clang --version --target=3Daarch64-linux-gnu
clang version 13.0.0
Target: aarch64-linux-gnu
Thread model: posix
InstalledDir: /tmp/RelA/bin

I think this is a matter of finding the right place and removing the extra
normalization...

>> > As said I am an end-user of LLVM not an LLVM developer and I do not
>> > follow LLVM upstream development.
>> > If there was progress on this topic, please let me know.
>> >
>> > Final quote from Mark Twain (translated from German):
>> > "In my LIFE I had several DRAMA(S) - some of them REALLY happened."
>> >
>> > For me this is NOT a drama.
>> > But I do not know about the consequences of having a mixture of target
>> > TRIPLEs in my Debian system.
>> > Thus, I dropped above LLVM_HOST_TRIPLE_OPTS from my build-script.
>> >
>> > Please, let me know if you need further information.
>> >
>> > Thanks.
>> >
>> > Regards,
>> > - Sedat "A real drama queen" -
>> >
>>
>
>
>--=20
>Thanks,
>~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210406230216.ofnohyyzybhmbqgt%40google.com.
