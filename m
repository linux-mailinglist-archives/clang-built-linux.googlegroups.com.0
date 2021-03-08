Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB6W3TCBAMGQEQGAULBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF9A331040
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Mar 2021 15:00:28 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id z13sf4638568plo.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Mar 2021 06:00:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615212026; cv=pass;
        d=google.com; s=arc-20160816;
        b=HGIYzQQL9zJ+xRUSmy47TLBuiV+y11EfQgwdvfDM1t0/j6T4WgRb1Fvjr+3MXoZHno
         5iC2LghsLTBZENm3Q5hcSRv8bE2qa9A+o8mkG+L+gKDBFe5/3HJUOW0gXGW5BOiLtFFi
         tEnqJKpYXfaHyVoyLhwZuPvDvbC8EEDdGrnzqXy5oZ4AYy02gUmq/MlOOlN5AA/hxwTk
         n4QT7V8m0VQw+qAzHCtWY9u1QctXBLvKUFjZMpDsmNXMTG6vzD6PlsYdUf+CNmJclE8V
         0JGjaTrANQDD4j9+a5IwJyWXBSzONLVzDpyXxklPKE6k22ZmYx4oaZxVmjJ3V7YzvKPI
         1cuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=dnkWnVTT5lfJi+ksswx5WBXMlqi9q9/CrdaesWGPfmg=;
        b=aFTuJKHyncbaeh73J4hNeUW0/ZO+c8X0HEE0Kuz7FAAX6sGqpQ8dpsOO7QUS/QHbi5
         Wmnyy/yj01nuMi8jQbXt8whCvctJE4EZVvuC9kZbQhx5P+2N4jKYPTdD+GB2OYAnekUP
         Fmdh+/fReNAbIPm6JJO4WKmKXylAmoSNQMyjE1fldjE4wQKnRn5E7zH5I2LZmlJfuK53
         XSLIxtpCOekRQ0g9fntxQ5/qVFuNTQRfV65LSL3XROWqqHP1CcNw+0jBcZXO5xpoSYZ1
         3HSF7ZHbpjcRqLh+52HGyFUxCgoqNd7XEsArExp+kDeXS2HdcUll+iSP9w4FpLXEPCPG
         go5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PLpQmDpU;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dnkWnVTT5lfJi+ksswx5WBXMlqi9q9/CrdaesWGPfmg=;
        b=oFBeYeGG7QedJTCPnTy0ZJSKphhLmetUND9ePgVyE7JCcpqkK0LeRn1fjFtSTm9hZZ
         LQd9QzgM2J1/0nDNS+EfQx+1ds7UJuLSY41Nyb4iPFgZF8+g3d1qaQMUU3IXOBawz70L
         mAxhgYSLdayAcdw6zfjAIK2Ov4blejwm1jBag9F06coI5TbaWgxks2MvhbiuhvEtEofr
         fJU9Kcm/D9jg6OTOKK/CgtgwSAz5+Mo9ye/DheFeSMiZo02e7XAjwl0nU+XhifRS88HM
         P9rYvmwPvE8SoofflWuiLJd6+RliyTIuE1zhVc7IfTJFMY3Yqzq9HTeAyS8tnHBQBOSJ
         P5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dnkWnVTT5lfJi+ksswx5WBXMlqi9q9/CrdaesWGPfmg=;
        b=fe4NRj0SG4FLBnHNek8h5g6oA1Au31lfuy4+92qqRAh8CHFzlB2yE5kS7XInQNOn7I
         Cokm7YUVEU2lT9zL37XhSnlK2wsCi0xQF8dvTDBPW1VaeAoGhDzR2oN0NmzOnll8Pohm
         nULjA7KWTdGoDwgmYg62sFWNjWPLV1MLI7mHZowbwUZGWCIFPb2PRJbnhxMulfendasw
         YCgmjaFffMyhD7G1D5L1s7iK9AwvxNTIksACw5HmlQnd1oDGIHRiG2z1gLyoVCrEysJq
         bfn1bYRocdZXh+CCmDX3YrVVtxuUv7WNfLx61m6X1VzIPsblaMRRmnvsaacKEN0QEeQZ
         PpmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531omblRByhvUd1lz3198m1Jt/j7n0GAaqvXvw2CoLFxCLwCMWw8
	WuGTKbCYchveR7Z/MtWpkLM=
X-Google-Smtp-Source: ABdhPJyGjgknN7licufrRZOSW7e7JP5JGIHN+b/Nj6nePIjmQsovXWIwxL23LxINNeoBpxQQIzzKAQ==
X-Received: by 2002:aa7:8ad5:0:b029:1df:5a5a:80e1 with SMTP id b21-20020aa78ad50000b02901df5a5a80e1mr21231247pfd.52.1615212026322;
        Mon, 08 Mar 2021 06:00:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5302:: with SMTP id m2ls5125926pgq.5.gmail; Mon, 08 Mar
 2021 06:00:25 -0800 (PST)
X-Received: by 2002:a62:6585:0:b029:1b9:d8d9:1af2 with SMTP id z127-20020a6265850000b02901b9d8d91af2mr21131352pfb.17.1615212025771;
        Mon, 08 Mar 2021 06:00:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615212025; cv=none;
        d=google.com; s=arc-20160816;
        b=raBUyEaM5H7dIXw0ga4zwNern4JxaJoxb8dDIHzIdZ3CiO8scdGn6UWQp7ceaCrako
         u4cfXGACN5UdT3WeuWS2XPaZkgEVTE6WHIurOShE/+qNyJZvsbrVH5/Ih7lHlpxV3plv
         ZKeD4TAl3oI4CeEmHTO2vCpKJv16R/EOLTjadOq2jSlcYRKeUubgmcRKPOVbLMr8Icoc
         2xGgk8CHnb8wiA7ydN+LM6N1cCW0fX/QEkLACDGDjrhhDQ/63IlWJYQmYofMFFg9IFdy
         U07DLIcG0WUfTeabnd+jl8urjnG2pXYgLeaqqYn1FjOac5pSJM3qlIl3AHAGuQJF4RuD
         3VMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=gzhSmz17oaFgKOrAhHhvVHj9muKOmMP9AqzFQpD1CY8=;
        b=JA+WFQtqyW15rYgoGYt+rhEys3J+M2CQED5nbhvrs5sOsTz7ukgUBklhap08upl0Wr
         iSUy9zzBrlidCbF5SAh8/5+lc+WtdUE4tPSpj3+7y5wYmtslZwnFOtXoSBqumhXZKdcK
         +lElb/rmxfp1lwNNi+imSjMynkI9h4DfLu1P2e+WkHDi/p533iPNDXo0d5CVJiQcoAxA
         5Ml3jTpp47uh0d4PaBdvfkCSDEPFBl0X03LktDxm/LDiZ1tNpMQGWW3Z7mMKkdLNMlGL
         J68G7qYzIhqt3CXYswaXFzQyfE03+SG8VKoW/d8omVNqF/0/K1f1DiD+pYf04iDCqy2D
         n+Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PLpQmDpU;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id e4si1035914pge.1.2021.03.08.06.00.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Mar 2021 06:00:25 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 128E01Fp026717
	for <clang-built-linux@googlegroups.com>; Mon, 8 Mar 2021 23:00:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 128E01Fp026717
X-Nifty-SrcIP: [209.85.216.51]
Received: by mail-pj1-f51.google.com with SMTP id kr3-20020a17090b4903b02900c096fc01deso3166641pjb.4
        for <clang-built-linux@googlegroups.com>; Mon, 08 Mar 2021 06:00:01 -0800 (PST)
X-Received: by 2002:a17:902:c48c:b029:e4:c093:593a with SMTP id
 n12-20020a170902c48cb02900e4c093593amr20779549plx.1.1615212000926; Mon, 08
 Mar 2021 06:00:00 -0800 (PST)
MIME-Version: 1.0
References: <20210303230708.l6pbk5o5nc2qa5of@google.com>
In-Reply-To: <20210303230708.l6pbk5o5nc2qa5of@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 8 Mar 2021 22:59:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS3hcOWWK764ddpUPzPFBidoQHyC+b5M-Kbdy+Z093DPA@mail.gmail.com>
Message-ID: <CAK7LNAS3hcOWWK764ddpUPzPFBidoQHyC+b5M-Kbdy+Z093DPA@mail.gmail.com>
Subject: Re: [PATCH 1/2] Makefile: Remove '--gcc-toolchain' flag
To: Fangrui Song <maskray@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=PLpQmDpU;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Mar 4, 2021 at 8:07 AM Fangrui Song <maskray@google.com> wrote:
>
>
> On 2021-03-03, Masahiro Yamada wrote:
> >Hi.
> >
> >On Wed, Mar 3, 2021 at 6:44 AM Fangrui Song <maskray@google.com> wrote:
> >>
> >> Reviewed-by: Fangrui Song <maskray@google.com>
> >>
> >> Thanks for the clean-up!
> >> --gcc-toolchain= is an obsscure way searching for GCC installation prefixes (--prefix).
> >> The logic is complex and different for different distributions/architectures.
> >>
> >> If we specify --prefix= (-B) explicitly, --gcc-toolchain is not needed.
> >
> >
> >I tested this, and worked for me too.
> >
> >Before applying this patch, could you please
> >help me understand the logic?
> >
> >
> >
> >
> >I checked the manual
> >(https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-b-dir)
> >
> >
> >
> >-B<dir>, --prefix <arg>, --prefix=<arg>
> >    Add <dir> to search path for binaries and object files used implicitly
> >
> >--gcc-toolchain=<arg>, -gcc-toolchain <arg>
> >    Use the gcc toolchain at the given directory
> >
> >
> >Hmm, this description is too concise
> >to understand how it works...
> >
> >
> >
> >I use Ubuntu 20.10.
> >
> >I use distro's default clang
> >located in /usr/bin/clang.
> >
> >I place my aarch64 linaro toolchain in
> >/home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-gcc,
> >which is not in my PATH environment.
> >
> >
> >
> >
> >From my some experiments,
> >
> >clang --target=aarch64-linux-gnu -no-integrated-as \
> >--prefix=/home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-  ...
> >
> >works almost equivalent to
> >
> >PATH=/home/masahiro/tools/aarch64-linaro-7.5/bin:$PATH \
> >clang --target=aarch64-linux-gnu -no-integrated-as ...
> >
> >
> >Then, clang will pick up aarch64-linux-gnu-as
> >found in the search path.
> >
> >Is this correct?
> >
> >
> >On the other hand, I could not understand
> >what the purpose of --gcc-toolchain= is.
> >
> >
> >Even if I add --gcc-toolchain=/home/masahiro/tools/aarch64-linaro-7.5,
> >it does not make any difference, and it is completely useless.
> >
> >
> >I read the comment from stephenhines:
> >https://github.com/ClangBuiltLinux/linux/issues/78
> >
> >How could --gcc-toolchain be used
> >in a useful way?
>
> --gcc-toolchain was introduced in
> https://reviews.llvm.org/rG1af7c219c7113a35415651127f05cdf056b63110
> to provide a flexible alternative to autoconf configure-time --with-gcc-toolchain (now cmake variable GCC_INSTALL_PREFIX).
>
> I agree the option is confusing, the documentation is poor, and probably very few people understand what it does.
> I apologize that my previous reply is not particular correct.
> So the more correct answer is below:
>
>
> A --prefix option can specify either of
>
> 1) A directory (for something like /a/b/lib/gcc/arm-linux-androideabi, this should be /a/b, the parent directory of 'lib')
> 2) A path fragment like /usr/bin/aarch64-linux-gnu-
>
> The directory values of the --prefix list and --gcc-toolchain are used to detect GCC installation directories. The directory is used to fetch include directories, system library directories and binutils directories (as, objcopy).
> (See below, Linux kernel only needs the binutils executables, so the include/library logic is really useless to us)
>
> The logic is around https://github.com/llvm/llvm-project/blob/main/clang/lib/Driver/ToolChains/Gnu.cpp#L1910
>
>    Prefixes = --prefix/-B list (only the directory subset is effective)
>    StringRef GCCToolchainDir = --gcc-toolchain= or CMake variable GCC_INSTALL_PREFIX
>    if (GCCToolchainDir != "") {
>      Prefixes.push_back(std::string(GCCToolchainDir));
>    } else {
>      if (!D.SysRoot.empty()) {
>        Prefixes.push_back(D.SysRoot);
>        // Add D.SysRoot+"/usr" to Prefixes. Some distributions add more directories.
>        AddDefaultGCCPrefixes(TargetTriple, Prefixes, D.SysRoot);
>      }
>
>      // D.InstalledDir is the directory of the clang executable, e.g. /usr/bin
>      Prefixes.push_back(D.InstalledDir + "/..");
>
>      if (D.SysRoot.empty())
>        AddDefaultGCCPrefixes(TargetTriple, Prefixes, D.SysRoot);
>    }
>
>    // Gentoo / ChromeOS specific logic.
>    // I think this block is misplaced.
>    if (GCCToolchainDir == "" || GCCToolchainDir == D.SysRoot + "/usr") {
>      ...
>    }
>
>    // Loop over the various components which exist and select the best GCC
>    // installation available. GCC installs are ranked by version number.
>    Version = GCCVersion::Parse("0.0.0");
>    for (const std::string &Prefix : Prefixes) {
>      auto &VFS = D.getVFS();
>      if (!VFS.exists(Prefix))
>        continue;
>
>      // CandidateLibDirs is a subset of {/lib64, /lib32, /lib}.
>      for (StringRef Suffix : CandidateLibDirs) {
>        const std::string LibDir = Prefix + Suffix.str();
>        if (!VFS.exists(LibDir))
>          continue;
>        bool GCCDirExists = VFS.exists(LibDir + "/gcc");
>        bool GCCCrossDirExists = VFS.exists(LibDir + "/gcc-cross");
>
>        // Precise match. Detect $Prefix/lib/$--target
>        ScanLibDirForGCCTriple(TargetTriple, Args, LibDir, TargetTriple.str(),
>                               false, GCCDirExists, GCCCrossDirExists);
>        // Usually empty.
>        for (StringRef Candidate : ExtraTripleAliases) // Try these first.
>          ScanLibDirForGCCTriple(TargetTriple, Args, LibDir, Candidate, false,
>                                 GCCDirExists, GCCCrossDirExists);
>        // CandidateTripleAliases is a set with "x86_64-linux-gnu", "x86_64-unknown-linux-gnu", ...
>        // This loop detects directories like $Prefix/lib/x86_64-linux-gnu.
>        for (StringRef Candidate : CandidateTripleAliases)
>          ScanLibDirForGCCTriple(TargetTriple, Args, LibDir, Candidate, false,
>                                 GCCDirExists, GCCCrossDirExists);
>      }
>      for (StringRef Suffix : CandidateBiarchLibDirs) {
>        const std::string LibDir = Prefix + Suffix.str();
>        if (!VFS.exists(LibDir))
>          continue;
>        bool GCCDirExists = VFS.exists(LibDir + "/gcc");
>        bool GCCCrossDirExists = VFS.exists(LibDir + "/gcc-cross");
>        for (StringRef Candidate : CandidateBiarchTripleAliases)
>          ScanLibDirForGCCTriple(TargetTriple, Args, LibDir, Candidate, true,
>                                 GCCDirExists, GCCCrossDirExists);
>      }
>    }
>
>
> The comment
> // Loop over the various components which exist and select the best GCC
> // installation available. GCC installs are ranked by version number.
>
> is important. If you specify --prefix=$dir but not --gcc-toolchain,
> the system cross toolchains (/usr/lib/gcc-cross) are also candidates and they may win.
>
> Specifying just --gcc-toolchain (due to if (GCCToolchainDir != "")) can effectively ignore system cross toolchains.
>


Thanks for all the detailed info.
I cannot say I understood them all,
but this information is worth knowing.
(I didn't even know --prefix can take a directory).

I applied these patches.
Thanks.





>
> In the Linux kernel use case, We specify -nostdinc and -nostdlib so GCC include/library directories are not used.
> We seem to prefer the non-directory use of --prefix: CROSS_COMPILE=arm-linux-gnueabi-
> So all the directory detection logic can be dropped.
>
>
> A better commit message is along the lines of:
> --gcc-toolchain specified directory is used to detect GCC installations
> for include/library directories and binutils executables.
>
> We already specify something like --prefix=aarch64-linux-gnu- to inform
> Clang of the binutils executables, and we do not need include/library
> directories, so we can drop --gcc-toolchain.
> >
> >
> >
> >
> >
> >
> >
> >> On 2021-03-02, Nathan Chancellor wrote:
> >> >This is not necessary anymore now that we specify '--prefix=', which
> >> >tells clang exactly where to find the GNU cross tools. This has been
> >> >verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as well as a
> >> >distribution version of LLVM 11.1.0 without binutils in the LLVM
> >> >toolchain locations.
> >> >
> >> >Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> >> >---
> >> > Makefile | 4 ----
> >> > 1 file changed, 4 deletions(-)
> >> >
> >> >diff --git a/Makefile b/Makefile
> >> >index f9b54da2fca0..c20f0ad8be73 100644
> >> >--- a/Makefile
> >> >+++ b/Makefile
> >> >@@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
> >> > CLANG_FLAGS   += --target=$(notdir $(CROSS_COMPILE:%-=%))
> >> > GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> >> > CLANG_FLAGS   += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> >> >-GCC_TOOLCHAIN := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> >> >-endif
> >> >-ifneq ($(GCC_TOOLCHAIN),)
> >> >-CLANG_FLAGS   += --gcc-toolchain=$(GCC_TOOLCHAIN)
> >> > endif
> >> > ifneq ($(LLVM_IAS),1)
> >> > CLANG_FLAGS   += -no-integrated-as
> >> >
> >> >base-commit: 7a7fd0de4a9804299793e564a555a49c1fc924cb
> >> >--
> >> >2.31.0.rc0.75.gec125d1bc1
> >> >
> >> >--
> >> >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >> >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >> >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302210646.3044738-1-nathan%40kernel.org.
> >
> >
> >
> >--
> >Best Regards
> >
> >Masahiro Yamada
> >
> >--
> >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS4Ri%3DK6M39hYU%2B17JVf0Z%3DhbRgSxuTdX5ZaVYLpmJRtA%40mail.gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS3hcOWWK764ddpUPzPFBidoQHyC%2Bb5M-Kbdy%2BZ093DPA%40mail.gmail.com.
