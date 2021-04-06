Return-Path: <clang-built-linux+bncBC55V4M54EJBB5G4X6BQMGQE2DVUFAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1782F35951B
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Apr 2021 08:04:37 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id b18sf2530826qte.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 23:04:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617948276; cv=pass;
        d=google.com; s=arc-20160816;
        b=XEkUsT7FTDR4Q2+w5+e2Tua6pE4CGLjVXlTU6ugroA6NgzYsJKP5L5Y+PhR3PQmtpk
         C7FXjdq/ZdpnVJVyEqEQMTuQZ8643SGtO+y63cOK6r5+9LrH+YSXUjfVR4fI4Fd4rrap
         2QwPFz8ivUdYs+ToQXLse1mNH3Db8WEzt0WW9WRdk5ZWCAASpQ92lQnUOOVknCU/duin
         290SbK211ta681lcrAWHljdr1vFUjwLkbcusx5TREWJkk0FBDsY4BF/Fl4FkMGgJ8s8e
         KAA5UD4QV6Xhmb+JpjP/xkFXLQ/C+qbPMhkk1ucCIlk8RQwExcZPH0qcEMJ2vL66LhbA
         9UKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=CuKFaqZBb8YUBl04QXkY+Q1NmlZmf0Wl5tbdTKm5VSc=;
        b=zow2z6eP8FKcSs7qJxW7M4tXEbzxH3SZFL41fd7UEDE5iMx5A/aDNjRpIkDU0r1Tkd
         IfmfINC/O8wLmWckqAr02anklvVWeifvbpJVpP/qvNjfpGCh8jLF6OFMhC3+PysRzYgl
         NQJhKX11GT6OV3McegyIIneMG4caw38ArbRyk7Q956WeAM71mKlcYC+zlcVZK1vGYZIS
         hkbd/TUr1b5UTqfBjxheRfanBAifGT2jH5xBzskPws8uvvf6icaiyq2A5HziKa3t9/nU
         CYxdEHnfOsV9ahJSuYAL/Aw9KlCR9TwzPCDDehhHavZNWAbHIlyDWEcCYfeJYRVhYkRO
         UBJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 68.183.223.41 is neither permitted nor denied by best guess record for domain of sylvestre@debian.org) smtp.mailfrom=sylvestre@debian.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CuKFaqZBb8YUBl04QXkY+Q1NmlZmf0Wl5tbdTKm5VSc=;
        b=P/lcz7z4oL52O/zRG3F1efWrFEnpuhhHrbVNYrasdD/8OAnaGyy58VkZKAZ9Xd+5hC
         BFwqAlrM7eyx/paMCT+JSAXgVBVeQMi+20abubKxiApEj579LVarf6TrktV43Y2dJOY4
         abuDkOYMU5SOjP7jAF/fTRaZKHktaFd3yOOCctF3RQ8UJ0JmIJyV1CUAbOvk1sb7ZFPP
         EbUNEpNo5yBnw6zJMJ5hW4oRSrZNqUyTDnlS+2us6kouTRlMzVOhY/6Zf3rXUgYukcak
         gp8uu/4N5H+DMufWUpPxzkNsPwL7loEciBZkMqf6++I52SUMFa8RdIj5rj6nCINayLP7
         KBxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CuKFaqZBb8YUBl04QXkY+Q1NmlZmf0Wl5tbdTKm5VSc=;
        b=IwRxcOqgMs8U4rpXwji/FohqbLQLWsMweepcqY+4XzsKOVbVKnjZ245bxrcfeFNzgn
         tBN+M02mru+fr0dsAZORjfF66M6cB6UOAz6ebu/rUSll2pezV2lxcguky6RbYiDspWUY
         dJ9ra+2VvIRginSEg+TQXgS8e2m0ZHpG0Wf1l/J8W2oS2aNKiwBnDA1W6af7cJl8LaKr
         teh8kR/9w1IimO6HpOwGgalqIUOlcwuqPigW1G6eGu8NU7a9VCHZ2N09n9LY8oC8EvuS
         Gj2Y4Pe8Wx9OyIMLY1UlwzYI7lhdRrHPP/+33BgoMc6W6rfygtaWD99Yge9qvSGyXZyi
         /oCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Zjo/vaTga7rvhraWI4dL3Hod1TSgMT+JSu2hNh+0l+ZIV5wfg
	v7uc1BanU8CgqtmN2+tIYf4=
X-Google-Smtp-Source: ABdhPJy+HZqZkgHyLAEZ/mcr4u9m1fYytkKzKpRweSHKmk0DIv5I1ZIZxhoLdKIng5GU0DywIWB/BQ==
X-Received: by 2002:a05:6214:da5:: with SMTP id h5mr11056074qvh.29.1617948276129;
        Thu, 08 Apr 2021 23:04:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:400e:: with SMTP id h14ls4563442qko.11.gmail; Thu,
 08 Apr 2021 23:04:35 -0700 (PDT)
X-Received: by 2002:a37:6294:: with SMTP id w142mr12266831qkb.255.1617948275842;
        Thu, 08 Apr 2021 23:04:35 -0700 (PDT)
Received: by 2002:a05:620a:2446:b029:281:145d:e270 with SMTP id h6-20020a05620a2446b0290281145de270msqkn;
        Tue, 6 Apr 2021 01:58:03 -0700 (PDT)
X-Received: by 2002:a17:907:105c:: with SMTP id oy28mr14581411ejb.552.1617699482131;
        Tue, 06 Apr 2021 01:58:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617699482; cv=none;
        d=google.com; s=arc-20160816;
        b=EnqRS7LFIALxaR4Yq84w0ArzUu+8zu2+7a7Il3xmS/OPVgQ6RrTFxhDkKh5DE3YYGD
         3rfQZKHPNjD9BWxUqM3Csc0BWgsqrwO/UdsJqPUryzaSo4c3CE3wwUJzUxBEUNN55n/b
         cb/x+8pPZ04Rj1f1Ti6BQjCduMn9B8ct/9A+DcdPhbD1Pb8QnhLpz4JN2speGtR7aN55
         AJ5cRpSO9dnDv4H3CLCeOkE8qk1XnnJSlLB9uXtjemxVvg2nCscob38HN7914c6EpmVT
         daQY4HBlpEc84i7Uc1ztBxjKm4qQpQoXePNC97BcRNLR1lN6lQ8LhNVG4iSjWhqDIdeL
         3F0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=7ekzd6jhV0pUsYoPlDPwr9ZmZ2oQcyrlN0sLTig4cYM=;
        b=zNUQPrtpklg1XRocRZtFfsUT2MjtU2lwbgAXvxzPQomDZH52CU+5CA3y/CZizrLOJ4
         GHxWEq8+ALMnm3ij08DR6R+9neeaJ8y/DnfURj+Z3BsWmFx3QZo26XurKrs1ApFrR3XC
         HANscUMRrrBd8y3QmQm5XblN990tsUoaIx5USOd9rLZGN6PBhQ89V69379Y8kj33nsvK
         z28IKUGHJjCoeDEONCjTPciCQOoLy4kxpmSy8KpdMlailqk726p41OU47g9lGpAkIeu7
         8uagF7OAuE2FrLNo47+mxP0ggcXGu/60afBMVw2JxXtmG6zzJAOa2edBUyTGAjkR5a29
         bjdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 68.183.223.41 is neither permitted nor denied by best guess record for domain of sylvestre@debian.org) smtp.mailfrom=sylvestre@debian.org
Received: from cocoro.ecranbleu.org (cocoro.ecranbleu.org. [68.183.223.41])
        by gmr-mx.google.com with ESMTPS id ck26si2785780edb.1.2021.04.06.01.58.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 01:58:02 -0700 (PDT)
Received-SPF: neutral (google.com: 68.183.223.41 is neither permitted nor denied by best guess record for domain of sylvestre@debian.org) client-ip=68.183.223.41;
Received: by cocoro.ecranbleu.org (Postfix, from userid 997)
	id C34AB75CB; Tue,  6 Apr 2021 10:57:31 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on cocoro.ecranbleu.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Received: from [192.168.10.10] (unknown [88.126.111.87])
	(Authenticated sender: sylvestredeb@ledru.info)
	by cocoro.ecranbleu.org (Postfix) with ESMTPSA id CD70862;
	Tue,  6 Apr 2021 10:57:29 +0200 (CEST)
Subject: Re: The LLVM host/target TRIPLE padding drama on Debian
To: sedat.dilek@gmail.com, lvm-dev@lists.llvm.org
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Fangrui Song <maskray@google.com>, Matthias Klose <doko@debian.org>
References: <CA+icZUVm8RQX7wevim_7R_mTPr88TEdonBZNGq72NxsDMKmBOw@mail.gmail.com>
From: Sylvestre Ledru <sylvestre@debian.org>
Message-ID: <43e1416c-4597-8f29-e3d9-f1d45c9c6d33@debian.org>
Date: Tue, 6 Apr 2021 10:57:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:85.0) Gecko/20100101
 Thunderbird/85.0
MIME-Version: 1.0
In-Reply-To: <CA+icZUVm8RQX7wevim_7R_mTPr88TEdonBZNGq72NxsDMKmBOw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sylvestre@debian.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 68.183.223.41 is neither permitted nor denied by best guess
 record for domain of sylvestre@debian.org) smtp.mailfrom=sylvestre@debian.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hello

Could you please report a bug https://bugs.llvm.org/ with a shorter version=
 of this email ?
(with less jokes ;)

Thanks
Sylvestre

Le 06/04/2021 =C3=A0 10:50, Sedat Dilek a =C3=A9crit=C2=A0:
> [ CC some ClangBuiltLinux and Debian GNU/LLVM toolchain folks ]
>=20
> Hi,
>=20
> this is not a late April-1st-joke.
> "This is a REAL DRAMA written by (my) LIFE."
> ( See the end of this Email. )
>=20
> [ INTRO ]
>=20
> /me uses LLVM/Clang and tools - Debian folks call this "LLVM
> toolchain" - for building latest upstream Linux-kernels.
>=20
> On Debian x86-64 I see this dpkg-architecture warning in my
> Linux-kernel build-logs:
>=20
> specified GNU system type x86_64-linux-gnu does not match CC system
> type x86_64-unknown-linux-gnu, try setting a correct CC environment
> variable
>=20
> [ CHECK ]
>=20
> Check "GNU system type" on my Debian system:
>=20
> $ dpkg-architecture --query DEB_HOST_GNU_TYPE
> x86_64-linux-gnu
>=20
> What says clang (here: Selfmade LLVM version 12.0.0-rc4 - Debian's
> clang show the same "Target:"):
>=20
> $ /opt/llvm-toolchain/bin/clang --version
> dileks clang version 12.0.0 (https://github.com/llvm/llvm-project.git
> 04ba60cfe598e41084fb848daae47e0ed910fa7d)
> Target: x86_64-unknown-linux-gnu
> Thread model: posix
> InstalledDir: /opt/llvm-toolchain/bin
>=20
> [ ABOUT KNIFES AND TRIPLE(S) ]
>=20
> You remember the famous quote from Crocodile Dundee cinema movie?
> "*This* is a KNIFE!"
>=20
>      This is a TRIPLE: x86_64-linux-gnu
> This is NOT a TRIPLE: x86_64-unknown-linux-gnu
>=20
> Personally, I do not see a benefit in having an "unknown" but I am not
> familiar with other operating systems and (its) architectures.
> Maybe, there is a real need for this extra "padding" (3 -> 4).
>=20
> [ "SOURCE (OF) TRUST" ]
>=20
> I do not follow LLVM development that much.
> But I know to check the source-code.
>=20
> NOTE: Here: Latest <llvm-project.git#release/12.x>
>=20
> [ clang/test/Driver/program-path-priority.c ]
>=20
> /// We cannot trust clang --version, or cmake's LLVM_DEFAULT_TARGET_TRIPL=
E
> /// to give us the one and only default triple.
> /// Can't trust cmake because on Darwin, triples have a verison
> appended to them.
> /// (and clang uses the versioned string to search)
> /// Can't trust --version because it will pad 3 item triples to 4 e.g.
> /// powerpc64le-linux-gnu -> powerpc64le-unknown-linux-gnu
> /// (and clang uses the former to search)
> /// So we write to both names which is a bit odd but still proves that th=
e
> /// lookup is working.
>=20
> LIFE is about TRUST :-).
> No TRUST - No nothing!
>=20
> [ INSPIRED-BY ]
>=20
> Initially, I was inspired by this change in "tc-build" - the Swiss
> army knife (YES, this is a KNIFE) from/for ClangBuiltLinux folks.
>=20
> commit 227a77175f81fc9b2e76b2d11b91b686ce41b35b
> "build-llvm.py: Define LLVM_HOST_TRIPLE for certain distributions"
>=20
> Link: https://github.com/ClangBuiltLinux/tc-build/commit/227a77175f81fc9b=
2e76b2d11b91b686ce41b35b
>=20
> As a man-child I played with...
>=20
> DEB_HOST_GNU_TYPE=3D"x86_64-linux-gnu"
> LLVM_HOST_TRIPLE_OPTS=3D"-D LLVM_HOST_TRIPLE=3D$DEB_HOST_GNU_TYPE"
>=20
> ...in my custom LLVM toolchain build-script.
>=20
> Unfortunately, this results in a ***mixture of target TRIPLEs***.
>=20
> This is from my comment when playing with LLVM v13-git (see below link).
>=20
> Link: https://github.com/ClangBuiltLinux/tc-build/pull/141#issuecomment-7=
91179738
>=20
> LLC and llvm-dwarfdump say "x86_64-linux-gnu":
>=20
> $ /opt/llvm-toolchain/bin/llc --version
> LLVM (http://llvm.org/):
>    LLVM version 13.0.0git
>    Optimized build.
>    Default target: x86_64-linux-gnu
>    Host CPU: sandybridge
>=20
>    Registered Targets:
>      bpf    - BPF (host endian)
>      bpfeb  - BPF (big endian)
>      bpfel  - BPF (little endian)
>      x86    - 32-bit X86: Pentium-Pro and above
>      x86-64 - 64-bit X86: EM64T and AMD64
>=20
> $ /opt/llvm-toolchain/bin/llvm-dwarfdump --version
> LLVM (http://llvm.org/):
>    LLVM version 13.0.0git
>    Optimized build.
>    Default target: x86_64-linux-gnu
>    Host CPU: sandybridge
>=20
> Whereas clang says "x86_64-unknown-linux-gnu":
>=20
> $ /opt/llvm-toolchain/bin/clang --version
> dileks clang version 13.0.0 (https://github.com/llvm/llvm-project.git
> 9c0274cdeae904089806be6faee72b9126d2cf5b)
> Target: x86_64-unknown-linux-gnu
> Thread model: posix
> InstalledDir: /opt/llvm-toolchain/bin
>=20
> As said I am an end-user of LLVM not an LLVM developer and I do not
> follow LLVM upstream development.
> If there was progress on this topic, please let me know.
>=20
> Final quote from Mark Twain (translated from German):
> "In my LIFE I had several DRAMA(S) - some of them REALLY happened."
>=20
> For me this is NOT a drama.
> But I do not know about the consequences of having a mixture of target
> TRIPLEs in my Debian system.
> Thus, I dropped above LLVM_HOST_TRIPLE_OPTS from my build-script.
>=20
> Please, let me know if you need further information.
>=20
> Thanks.
>=20
> Regards,
> - Sedat "A real drama queen" -
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/43e1416c-4597-8f29-e3d9-f1d45c9c6d33%40debian.org.
