Return-Path: <clang-built-linux+bncBCS7XUWOUULBBU7BQSBAMGQE3JUYEKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7E832DA18
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 20:11:17 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id z140sf1722353ooa.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 11:11:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614885076; cv=pass;
        d=google.com; s=arc-20160816;
        b=PZqzvkKhqum5pCgFP5Nok7HEUvx/Q1GDf4zWhXLTITcWJhWU3Usgw4ndrYIxYmFW5B
         1/9KHZo3b+uFQE4LUne1RupZbCYXINRpiZVidRIeInm7m988Y6qyh3FYc1qloW537ZJr
         FSNmqqb4UFADt4rNMD8PpHw/9J0FxTx70NXYLhlKGFLdaMJc1vcCmACmIY9Z83DHPAvQ
         PmMdEcoSeuC+dL/AK479GMgqe5LdyMugi8Zwst0MRc+EUmLyF04nzN3kut/3P7MtkNJs
         C+mW4lWW66gZTF7K1jJgx2c4ksJI1Q02X7h+CrGNyn5CtOx85LLGSaMKwfFu3uHREDqI
         aAHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=U079/UrlceyU20yyEqHKqa2wTmnNNSaXVqJi7T/8ICU=;
        b=isaYqUl4ti0jmT45e9ANS4RtNQpq6zztcjjYOnWenTg1KTmyYrT2vDg8QYLWz7KFqC
         Q86dB101I7ZfhCxTwMXksQQxSQR3/ayV4W8bXGVAUIimHmsVp/1K+erTQAVEbz/dMm9o
         4b1ewkGjigNoa52mqBn0ltFgq2RPqGybzFoLxXVGDGbhQCkd6pAnKewo/fezsE6oMJIm
         dDBpTvGUIsJeLN2B+/Z87W1HnrTeAu1UNZD8nJxjL2y72jdlaHGeHOQsZLQ/+5ONN1nL
         myo0M/GE5732UCYyjxFmq0dMFNMDVravDkb0bFkPqTvgv9v+yIIqla/mEYH+kC96Sc3M
         oC3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IilvZn5V;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U079/UrlceyU20yyEqHKqa2wTmnNNSaXVqJi7T/8ICU=;
        b=J4/S21pE/+PQcsDLUW3bxQ+IYMWm/d8ZjiDfzMENxLmeifCIC1YtD4kGYhAqfFB4kc
         SeAfPczMEByIPT0RuWrKtBfABkiXwgCTNs329D1Iv0Y0tymbj5XE5lfD+VpHSSf2RIvG
         BWA3iYQ2MtNF6xeVcbLD4yc3O2F6HAyB3R+TA6AVqj3V3WYvBNyWwooZYQxNX8bFdDEu
         g/0f3T3YsdEuRrCDkrG4Yd4tWUxvFO5IE7tTVcPc9tlvN883gzf8c9SkWHeyf6/hGOXi
         XHZVJ6FDIgvOmBHPGxzVPH3ixEh37uyJ0XpAvRV3pe/NnsUQG1/gW8LFEi7dtUXNnpcl
         DT+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U079/UrlceyU20yyEqHKqa2wTmnNNSaXVqJi7T/8ICU=;
        b=ImzomxUu0WelN3TuzVcBcR6E3rjcHwi8BuYEuKeVXmgaLusYr2pOJhRNJOI/ka688V
         FIyNz1l8u1npH1C+9QyF50tAtTByXKNw087OpqFzLIlm0Cy+QCLREXa2vYmMqdZaGHS9
         GYNuFh+8SpitiSlq1u1SutVeREE5O7JVsIjRiJtIK/s1Mgw5HGejbZg9Hn6Yw2TT61fU
         5gEQveQw6rc6p73fXravi9Hknxak7IEPz5CXulmeKObK0ZLrIebzxfl9GvicuHU38Xlw
         dnUtmLzq4XHjTsCISR4PRb40AhX1txHtI6BxjniDmXx+hFXmUdF0CfVIhsZCXxSV788n
         makQ==
X-Gm-Message-State: AOAM5301Ce8cMWwBI86pUiH1Z2r2/x5xHJjXd6daJC3IHCEONI6dCdDA
	ccCMlHpTZMFZxlvaX9k/uyo=
X-Google-Smtp-Source: ABdhPJyAA7p36ODJWW6vG9EyWm5H+LieJTRaOWtORDJOtw/yGbu8OW65IkuFxU0XTbaV1uB9YauyWg==
X-Received: by 2002:a4a:d781:: with SMTP id c1mr4566443oou.44.1614885076067;
        Thu, 04 Mar 2021 11:11:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1156:: with SMTP id u22ls1748136oiu.6.gmail; Thu,
 04 Mar 2021 11:11:15 -0800 (PST)
X-Received: by 2002:aca:de82:: with SMTP id v124mr4083981oig.125.1614885075602;
        Thu, 04 Mar 2021 11:11:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614885075; cv=none;
        d=google.com; s=arc-20160816;
        b=DkvFGr2H7vdKjYVuun07bGrBHdmGJHqgEQYowvuc02URKYlJehqO1CfgJll8dRktfS
         EjH2ntPlIzMouEAe0xkzSIudsUiaTLX15QoJFNXwkYiCV6A6E29+IGxE+ZJShF0cfXSa
         XbUufwDHMylncDD5RbF/7SeF3g8T3q+0KFEmghCRaJx6UGeYwwtAce2onioOuAZZWZvo
         I2YlreDmlYDLZTt0w3noojT5uPDecFP1Uxu9eYMb22dwFCEwrRO8AN+BcSTpoESrXzLK
         EITfFCSJPYOnCDW2aXi+X+6mf2G9TCMHO0BsWKxHte0Vlmb+g+o2gHssIop+bC2EpcVB
         7wAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=55l/p5w7xRBRzeE5LFWuLvvcDqxofKt6XTrgAWZQcus=;
        b=BZciNGXfnvyo8ppJgcBMKTmWlGWW9HYMaNL368QHzy3pQ3xU65Kt6cVUC/vJhAGEZc
         O+WcMqgeRuIAMgsGs7ZQpCQVcZlzwZqk6fn4lMz4iZcpf6Kq7iOtYE+9qWMlLqlhr5Bj
         fKtXMk6eTEqJt4Yilar91FXMvvcokqEiKjkbWzA6AmLmG1PJ7lh8oYSPNmMFpuNkmBiO
         6WgamxrtwjRiSimDxnfmnhjVEOqXXwmiTN3T9MXI7yOlKY6pccHMpt88/kDSaAhHYK+F
         UhG93cc11YtwuN2ihZ1ZJjnozvmZkiDT3sVRKUr7pgO1PXr1Lagg1YK5ZOzVxnbL4KNp
         zXQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IilvZn5V;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id v4si18701oiv.4.2021.03.04.11.11.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 11:11:15 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id s7so9512566plg.5
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 11:11:15 -0800 (PST)
X-Received: by 2002:a17:90b:3550:: with SMTP id lt16mr5870688pjb.47.1614885074754;
 Thu, 04 Mar 2021 11:11:14 -0800 (PST)
MIME-Version: 1.0
References: <20210303230708.l6pbk5o5nc2qa5of@google.com>
In-Reply-To: <20210303230708.l6pbk5o5nc2qa5of@google.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Thu, 4 Mar 2021 11:11:03 -0800
Message-ID: <CAFP8O3Jn7G5=8W-FiFRZoa-JhuTYsA=r_DJW_9OgWm3K-K_H5g@mail.gmail.com>
Subject: Re: [PATCH 1/2] Makefile: Remove '--gcc-toolchain' flag
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IilvZn5V;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62f
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Wed, Mar 3, 2021 at 3:07 PM Fangrui Song <maskray@google.com> wrote:
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
>
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

I've sent https://reviews.llvm.org/D97902 to improve the -B and
--gcc-toolchain documentation, and posted
https://lists.llvm.org/pipermail/cfe-dev/2021-March/067820.html
(Message-Id: CAFP8O3JZBWx6OYm14KhP0f+RNU_OHLPLZnyX7jDtCL_yvnJDfA@mail.gmail.com)
to discuss Clang's current weird behaviors.

* --gcc-toolchain suppresses GCC detection under sysroot, -B doesn't.
 I'd like that -B suppresses GCC detection under sysroot as well but
unsure whether some folks are dependent on this behavior.
* With -B -B -B --gcc-toolchain, the largest version instead of the
first wins. I think it makes sense to select the first option where a
GCC installation is found.

Hey, this list has a lot developers using cross compilers. Do you have
thoughts to share? :)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3Jn7G5%3D8W-FiFRZoa-JhuTYsA%3Dr_DJW_9OgWm3K-K_H5g%40mail.gmail.com.
