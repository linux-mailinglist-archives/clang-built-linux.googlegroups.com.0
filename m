Return-Path: <clang-built-linux+bncBCS7XUWOUULBBI5NQCBAMGQEVIBJ36A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C8632BF0E
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 00:07:16 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id y62sf14206304oiy.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 15:07:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614812835; cv=pass;
        d=google.com; s=arc-20160816;
        b=FcrqldHGGFSaDWFACGmR804qoo1EUQNhRXklAIGCc5JuhMtOWB90UdymqbPTW5pk0s
         UEQiPjk9JWZBILo2IufaHZIY9184oqf8bJ8eYFXTdEg80+3a3+O9zdNSLqGVZgthFr2x
         g6F+nPWN6Aioj0p78puzMHx9I0Qwo0Nqf+rO1S1A3GuH4hyL8BGn9qSRX5PrQ7Ib6/FR
         TEztNYSUqeAnD2XdNF3wDFiiSeGkazZ5F1gLJgnUaD21aT4sEyrJFXaHudOhkxzta46W
         3DkveYxi6TMRmD01ybvt7BjpXS3dcO7BaoznQwHGTVmCWoHSFv234LGI/B38808GG++W
         LP1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:dkim-signature;
        bh=UpK5g6W94pjKZULtID/PZnLYwFAX7td7RBXy10cjOcU=;
        b=tYYa8rSpj1kl9ZPPrHz7sN4RMinL3L/h+fVNCr+c3lGdGoVDpdPY81pggnDzJ8Y12g
         4mqfFdo79LLZsA1DPpoTZ8K3uaubBCfv4IvYo+6Q8RsJ/bHLsPvfrzjK+SEH8UMOUoBz
         4uptuepuY9OZHolVhzrJTpdJgDC1Qttyz0V4e4Ca9v9GdTSlWcq94Fg3Q7uyfYisnm5T
         bvjN7d73y7gbW/s7B9kiZ0s9nYsoyrh0Yibe2cOLVNQi6QCh1x6RPhqjqT2DLc9JEe23
         POq52w5v3uV0Plbz3Xn3eNTQRoEbUGMNp9pUzx7nhOlZ5gEyHqL3/OP7Ule80Dw/NL6+
         I6zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g8WXhnhQ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UpK5g6W94pjKZULtID/PZnLYwFAX7td7RBXy10cjOcU=;
        b=Mb9jx4C/dBhFhVKSu5it5FSjR/uBl6rffbNlh0eRNNV+Me1JBPAF02PUdxtLneSZBq
         542XBp78NGdWh4ahTgVkWO0Vj33eC9hQsoUmE/lXvEHjLAdEgl1A62aEFnyZBEkVwQsY
         xz6lqdWAzqY6DbRCq7W+2q34sJNJzvm2lIO+/CL8OuxiVJjVhbRJcJM2GwVGBjmSwE5Q
         OiNE+GASahaK85KvqE0h8Yl7kILuaM4kS9u8ZxmMQnXP6I9tg1Jp4/+sZk/yKJ4yG73G
         6QxBHfRRB70WzB9ocgO/qD5/+wwBhZnYs0Z5YGKXzHCnnHuiLn9a+aUpXwYoE7BtkFO5
         50IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UpK5g6W94pjKZULtID/PZnLYwFAX7td7RBXy10cjOcU=;
        b=kM+HYfJbcAaHrQvqFYvlYkTFzAJziFqc4c3ONPuxUlprDq+bdjOHQgwZEztPJUnvLw
         KvL4Egl8HaWmROz1FKEUv2PwaYJUBpsXPbuqwWMAFUiIEUaeEhjJs5abeRHruEVFibN0
         spzGu1tUIDLfDvkSOKUNAKJIwAuE4jiZyO3kFykESPf4zVpI7rrUoDK12odNA26t5Pa0
         TALzPt6GqDrL+qiZKrDZ360daMwKz9UVMe3N4vduB2/DLhcYknL8htp56memdhoGn6iF
         4S8xf2uoR8qLNQo4mdqbRbxvqWML/E/k4dg2/SO2MhDlixEW1Cpi0g/z3mwVmLBCN41z
         3cag==
X-Gm-Message-State: AOAM532Hyp1UQHsjk6vWy8H1HyG3tDkNL9oqSYVwi/1XY5QnPpoFrPve
	apDuh0SdW/ZBerqOKf5Z2UQ=
X-Google-Smtp-Source: ABdhPJwrliHiUylb4/t/p90ReM+iqKmIiWPYSiFNgwTAaQVouuJYbs6inBTnqTt/64/83/CU0sCmag==
X-Received: by 2002:aca:4915:: with SMTP id w21mr899863oia.95.1614812835785;
        Wed, 03 Mar 2021 15:07:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:68d0:: with SMTP id i16ls1054163oto.7.gmail; Wed, 03 Mar
 2021 15:07:15 -0800 (PST)
X-Received: by 2002:a05:6830:240f:: with SMTP id j15mr1194808ots.288.1614812835115;
        Wed, 03 Mar 2021 15:07:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614812835; cv=none;
        d=google.com; s=arc-20160816;
        b=ywyZfDOaX3Vcnurqi5Paw1VTXHLFRJ6Yp4k+xddhlPfqJzWK103kz6Fun9Vo3MPWF7
         mOm5xj4vPYcwzGAfojD7pUQHravtF4m8D8c8Uph9RrD+nGl2nGgl1c5jFSUfm5sHpsRh
         Bv2mShQjy8IVrPkx8+rSZ14ecaddhW6CKxOF4EZXbi9l+QSZW6Ju0QrTO7T+XRQLBSLJ
         G8mF0reFkVgekFHWzsV1WiMxaNYkW8QzRPpLkhoXJQfSiioNrvLS0ib8sfQfBAnerB6M
         6h68s44S57fZlF0gfa6sTfnIIExIeEuesEAVzUBfU7OIec7K5o5GIUljP/rFmySVM+5c
         1cdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=TFaM8t9jUylFBQoMqrkAf69dnUf3tqhRo/if2M1bURU=;
        b=Q5Wfaj2UVYVd3GSPAXO9IvQbAOXwHj0FMYKilGykvcN+PdMu9Xpc88wYKuRsc2bMee
         O8KMTDw7jCr6jng12LQqciXJchA2QEezh1509a/51pWx2YzUGiJ2c7Lnn3zz93ot/LvJ
         vcrQr98+RsiDRlRc74Xls/jmmq8RiztiGvB1xq0QJXnCtgoeE8k39FFJeAeEatBe9+Cn
         ePpApQHxdoSk2mj97W4/WNxkeUAPWyT/q0n04eGYWxQP2OwGZKb62p1Oh3i77bDYK9Jn
         1e2gsX/CPL3UKtvkgcv3g4iqjEE/HK8ypJLeFewIhypPy2Z5I2MkyEUKKfdrpYG6abLj
         Azuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g8WXhnhQ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id v4si937219oiv.4.2021.03.03.15.07.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 15:07:15 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id m6so17408952pfk.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 15:07:15 -0800 (PST)
X-Received: by 2002:a63:f549:: with SMTP id e9mr1158204pgk.114.1614812834191;
        Wed, 03 Mar 2021 15:07:14 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:fce5:88bc:1857:36b4])
        by smtp.gmail.com with ESMTPSA id c78sm25651274pfc.212.2021.03.03.15.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Mar 2021 15:07:13 -0800 (PST)
Date: Wed, 3 Mar 2021 15:07:08 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 1/2] Makefile: Remove '--gcc-toolchain' flag
Message-ID: <20210303230708.l6pbk5o5nc2qa5of@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g8WXhnhQ;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::433
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


On 2021-03-03, Masahiro Yamada wrote:
>Hi.
>
>On Wed, Mar 3, 2021 at 6:44 AM Fangrui Song <maskray@google.com> wrote:
>>
>> Reviewed-by: Fangrui Song <maskray@google.com>
>>
>> Thanks for the clean-up!
>> --gcc-toolchain= is an obsscure way searching for GCC installation prefixes (--prefix).
>> The logic is complex and different for different distributions/architectures.
>>
>> If we specify --prefix= (-B) explicitly, --gcc-toolchain is not needed.
>
>
>I tested this, and worked for me too.
>
>Before applying this patch, could you please
>help me understand the logic?
>
>
>
>
>I checked the manual
>(https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-b-dir)
>
>
>
>-B<dir>, --prefix <arg>, --prefix=<arg>
>    Add <dir> to search path for binaries and object files used implicitly
>
>--gcc-toolchain=<arg>, -gcc-toolchain <arg>
>    Use the gcc toolchain at the given directory
>
>
>Hmm, this description is too concise
>to understand how it works...
>
>
>
>I use Ubuntu 20.10.
>
>I use distro's default clang
>located in /usr/bin/clang.
>
>I place my aarch64 linaro toolchain in
>/home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-gcc,
>which is not in my PATH environment.
>
>
>
>
>From my some experiments,
>
>clang --target=aarch64-linux-gnu -no-integrated-as \
>--prefix=/home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-  ...
>
>works almost equivalent to
>
>PATH=/home/masahiro/tools/aarch64-linaro-7.5/bin:$PATH \
>clang --target=aarch64-linux-gnu -no-integrated-as ...
>
>
>Then, clang will pick up aarch64-linux-gnu-as
>found in the search path.
>
>Is this correct?
>
>
>On the other hand, I could not understand
>what the purpose of --gcc-toolchain= is.
>
>
>Even if I add --gcc-toolchain=/home/masahiro/tools/aarch64-linaro-7.5,
>it does not make any difference, and it is completely useless.
>
>
>I read the comment from stephenhines:
>https://github.com/ClangBuiltLinux/linux/issues/78
>
>How could --gcc-toolchain be used
>in a useful way?

--gcc-toolchain was introduced in
https://reviews.llvm.org/rG1af7c219c7113a35415651127f05cdf056b63110
to provide a flexible alternative to autoconf configure-time --with-gcc-toolchain (now cmake variable GCC_INSTALL_PREFIX).

I agree the option is confusing, the documentation is poor, and probably very few people understand what it does.
I apologize that my previous reply is not particular correct.
So the more correct answer is below: 


A --prefix option can specify either of

1) A directory (for something like /a/b/lib/gcc/arm-linux-androideabi, this should be /a/b, the parent directory of 'lib')
2) A path fragment like /usr/bin/aarch64-linux-gnu-

The directory values of the --prefix list and --gcc-toolchain are used to detect GCC installation directories. The directory is used to fetch include directories, system library directories and binutils directories (as, objcopy).
(See below, Linux kernel only needs the binutils executables, so the include/library logic is really useless to us)

The logic is around https://github.com/llvm/llvm-project/blob/main/clang/lib/Driver/ToolChains/Gnu.cpp#L1910

   Prefixes = --prefix/-B list (only the directory subset is effective)
   StringRef GCCToolchainDir = --gcc-toolchain= or CMake variable GCC_INSTALL_PREFIX
   if (GCCToolchainDir != "") {
     Prefixes.push_back(std::string(GCCToolchainDir));
   } else {
     if (!D.SysRoot.empty()) {
       Prefixes.push_back(D.SysRoot);
       // Add D.SysRoot+"/usr" to Prefixes. Some distributions add more directories.
       AddDefaultGCCPrefixes(TargetTriple, Prefixes, D.SysRoot);
     }

     // D.InstalledDir is the directory of the clang executable, e.g. /usr/bin
     Prefixes.push_back(D.InstalledDir + "/..");

     if (D.SysRoot.empty())
       AddDefaultGCCPrefixes(TargetTriple, Prefixes, D.SysRoot);
   }

   // Gentoo / ChromeOS specific logic.
   // I think this block is misplaced.
   if (GCCToolchainDir == "" || GCCToolchainDir == D.SysRoot + "/usr") {
     ...
   }

   // Loop over the various components which exist and select the best GCC
   // installation available. GCC installs are ranked by version number.
   Version = GCCVersion::Parse("0.0.0");
   for (const std::string &Prefix : Prefixes) {
     auto &VFS = D.getVFS();
     if (!VFS.exists(Prefix))
       continue;

     // CandidateLibDirs is a subset of {/lib64, /lib32, /lib}.
     for (StringRef Suffix : CandidateLibDirs) {
       const std::string LibDir = Prefix + Suffix.str();
       if (!VFS.exists(LibDir))
         continue;
       bool GCCDirExists = VFS.exists(LibDir + "/gcc");
       bool GCCCrossDirExists = VFS.exists(LibDir + "/gcc-cross");

       // Precise match. Detect $Prefix/lib/$--target
       ScanLibDirForGCCTriple(TargetTriple, Args, LibDir, TargetTriple.str(),
                              false, GCCDirExists, GCCCrossDirExists);
       // Usually empty.
       for (StringRef Candidate : ExtraTripleAliases) // Try these first.
         ScanLibDirForGCCTriple(TargetTriple, Args, LibDir, Candidate, false,
                                GCCDirExists, GCCCrossDirExists);
       // CandidateTripleAliases is a set with "x86_64-linux-gnu", "x86_64-unknown-linux-gnu", ...
       // This loop detects directories like $Prefix/lib/x86_64-linux-gnu.
       for (StringRef Candidate : CandidateTripleAliases)
         ScanLibDirForGCCTriple(TargetTriple, Args, LibDir, Candidate, false,
                                GCCDirExists, GCCCrossDirExists);
     }
     for (StringRef Suffix : CandidateBiarchLibDirs) {
       const std::string LibDir = Prefix + Suffix.str();
       if (!VFS.exists(LibDir))
         continue;
       bool GCCDirExists = VFS.exists(LibDir + "/gcc");
       bool GCCCrossDirExists = VFS.exists(LibDir + "/gcc-cross");
       for (StringRef Candidate : CandidateBiarchTripleAliases)
         ScanLibDirForGCCTriple(TargetTriple, Args, LibDir, Candidate, true,
                                GCCDirExists, GCCCrossDirExists);
     }
   }


The comment
// Loop over the various components which exist and select the best GCC
// installation available. GCC installs are ranked by version number.

is important. If you specify --prefix=$dir but not --gcc-toolchain, 
the system cross toolchains (/usr/lib/gcc-cross) are also candidates and they may win.

Specifying just --gcc-toolchain (due to if (GCCToolchainDir != "")) can effectively ignore system cross toolchains.



In the Linux kernel use case, We specify -nostdinc and -nostdlib so GCC include/library directories are not used.
We seem to prefer the non-directory use of --prefix: CROSS_COMPILE=arm-linux-gnueabi-
So all the directory detection logic can be dropped.


A better commit message is along the lines of:
--gcc-toolchain specified directory is used to detect GCC installations
for include/library directories and binutils executables.

We already specify something like --prefix=aarch64-linux-gnu- to inform
Clang of the binutils executables, and we do not need include/library
directories, so we can drop --gcc-toolchain.
>
>
>
>
>
>
>
>> On 2021-03-02, Nathan Chancellor wrote:
>> >This is not necessary anymore now that we specify '--prefix=', which
>> >tells clang exactly where to find the GNU cross tools. This has been
>> >verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as well as a
>> >distribution version of LLVM 11.1.0 without binutils in the LLVM
>> >toolchain locations.
>> >
>> >Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>> >---
>> > Makefile | 4 ----
>> > 1 file changed, 4 deletions(-)
>> >
>> >diff --git a/Makefile b/Makefile
>> >index f9b54da2fca0..c20f0ad8be73 100644
>> >--- a/Makefile
>> >+++ b/Makefile
>> >@@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
>> > CLANG_FLAGS   += --target=$(notdir $(CROSS_COMPILE:%-=%))
>> > GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>> > CLANG_FLAGS   += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>> >-GCC_TOOLCHAIN := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
>> >-endif
>> >-ifneq ($(GCC_TOOLCHAIN),)
>> >-CLANG_FLAGS   += --gcc-toolchain=$(GCC_TOOLCHAIN)
>> > endif
>> > ifneq ($(LLVM_IAS),1)
>> > CLANG_FLAGS   += -no-integrated-as
>> >
>> >base-commit: 7a7fd0de4a9804299793e564a555a49c1fc924cb
>> >--
>> >2.31.0.rc0.75.gec125d1bc1
>> >
>> >--
>> >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302210646.3044738-1-nathan%40kernel.org.
>
>
>
>--
>Best Regards
>
>Masahiro Yamada
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS4Ri%3DK6M39hYU%2B17JVf0Z%3DhbRgSxuTdX5ZaVYLpmJRtA%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210303230708.l6pbk5o5nc2qa5of%40google.com.
