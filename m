Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSX6TX2AKGQEUR7IHRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9DD19DDE3
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 20:24:12 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id c10sf6843223ioc.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 11:24:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585938251; cv=pass;
        d=google.com; s=arc-20160816;
        b=THen79PrSJQ8GY7Jtq1os9EiNj31aNxx7Uusi0RpI0sZ2w2hcf+D8vN1euDX8UUscr
         2vP6gq5FKSlvJf72b2Z3z/2jZjd7tO7pcmHMD6C3Pmz5XqZmxgwrrLBSqPQzkXm+TEPL
         Sf5E8C/DFqVOnzrIMXDS4F8wYFkY/aY4dmc0CRmDevJ3giVdKTITstC6/wdPRtjpRCFM
         txQ9z+AU9PiQKqDezH77d9EoaG05UxkzjGWeepev/olS0m5DZV9T0HfFFpgvh3Szrrhz
         9I2c+fqFpgZQeX4ggj8d364ZkT4P9cl3HZDJUxX0ID7yiBrpMHKuXqw7mG2wFJ5kEoDy
         NBXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VMVHWPrshw4gcRGV6QATQjE58jQnYWgb9EeL6Ws/cX4=;
        b=dxvDV/mn/weavgOMAT1BH2R+78j6vistzsEyQBRt/nRh9A336hRTp8Nn0Y+ctk9pNy
         zfbZRBParwJPbnqJZt79dnqMNFSNgqrvKq6iHXHKy8s8eebExDpJMN5m+Q05oO7SyJvl
         DU7uANrAG5BtKFsW1Bk/VsRSQok1xXRu5YYegZStWzcw4nXNIiYM0Pw1ubp7dgwsyTQS
         6fYxVXGx8c983PoAmrSjd52Xb6hvouYICPsf+l9A5uiPQdgUw9vAKmqgLFz8vNPUVdWK
         BW31fWVav0zaI+Sb4/SHli8tVAD64eypvZHZlFNdXNz4DgPpADqzjZBXE7zFJQgC0JcY
         75tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hSiP+tbh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VMVHWPrshw4gcRGV6QATQjE58jQnYWgb9EeL6Ws/cX4=;
        b=pz9lIB8CrD16JhcjS5iiRxlbSdPs5TR5MLRzasdQEwzHWtSg0YQADxPVuR9ks33dDv
         RM3JHUDfDpjhp33TjkEydvrhUPLZg9hir6JHUqHqPA2n7iyIoCaKZLOonnepAiHcjvcS
         qVydpIHQKv559OYNM2buMI9/UNClH/zTAd0ZPmd1bFwPVWwPnUo4aZvbrTvIR6PK77Cb
         x5XF1bAwb+JYqqygLR6PoH+icYQkdm5DlH64KSBOLhKYtRjL+jxg16zWbyQUOmR/5/dU
         CcjRNLRKD2fRrErpGkczt6uFUxEA7w/sT/lRIsZFiXY5WAe2qcicEh5C62aNpYtAfr2x
         8XnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VMVHWPrshw4gcRGV6QATQjE58jQnYWgb9EeL6Ws/cX4=;
        b=Azb9qeC+iFVZBnpCGVMzW1kFzvms/YHs1+ZMryLMRvgJdPSEaH3PTXIC6HEGL0LFWO
         IbJYW9/pH290A7yPHsdtSw2qwLhGble6fDWdaC3LoqQzM7uxrF8ZTPSIS8Drw6MLzRN1
         R1mmfFwZI7pZPZm2elNFx62USrEFQYDFzaW8P+ruIxKH1R0fXWaxgMBGb6U5LO+nJu/J
         lUB13E+DHSIcsbsavdbXO5yps6tvlV7oWQqJTRjq1JaE2ZX2b0l8XUhekXAXkaaJdW86
         ayvIzTL2z6rYHNsYaYdRM4nShTEoaeGu2BWYocTD+T2ImFIOytm/HOF3Zxs9ZDWop7Km
         pW6w==
X-Gm-Message-State: AGi0PubATPjZ0nDN8L3AxrukOdB/KzqByNnBrGRfC9It+ir6VMKc1UuR
	dIsFtQe3EDjTWEu5MBDW60o=
X-Google-Smtp-Source: APiQypKka24y0c+EIe9faCkwe7B1HCU2A9vgP+Uiz4DuYn0fs0rFxN79/EbwtVl8KL6RJ2cz5yiXPQ==
X-Received: by 2002:a92:5dc4:: with SMTP id e65mr10450733ilg.133.1585938251117;
        Fri, 03 Apr 2020 11:24:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a49:: with SMTP id 70ls1865908jaw.0.gmail; Fri, 03 Apr
 2020 11:24:10 -0700 (PDT)
X-Received: by 2002:a05:6638:951:: with SMTP id f17mr9502102jad.35.1585938250530;
        Fri, 03 Apr 2020 11:24:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585938250; cv=none;
        d=google.com; s=arc-20160816;
        b=uMxfs5xi8BFqePoB5aAH1UAQIXTS+FBSmmdO64up+CJJLp6NABWHU0/ArOG5XD6Ig1
         bi2ZVi18itgkkI2if6MbU+4HLF3e9obmIV4Y4CagrKKnDHST1Mt+gR0x4XFv2tFFsiHt
         ae2c5/jga3sUAd7fsC/868HR9B/6Wc5h0ry2McisHny8MsA5dCOOOnK5l1JDIuQ/iZ5k
         ap37PHDBnu9ZVvczObfUynvWovI+cA+1Y/uG6bmkNghD9dpKwgyiANfzm/CWlh0FO4rg
         V34R0mYhFCxXxqANg7bKEZ9MnlmyJULhzmTfivOK/XhuI+wxAGR7RwnFqI5CuK9Yw9Ph
         ZL7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=F6nEi34wGHl5ptuJvEUUsZZ8ppzvgbFtnHK/ANYoAz4=;
        b=Ju+lQ/i+xLPlkLFvT94eqXDSm3F95AYX5cGWnd1TDwH7gBZcyf0U9BnnN3hEMJ98J4
         RWyJrHnUSaPYRxkxGOK0HQhLrZA5MVT782UYyAHR7/xDnrzU2Cuz0sqoRv2je+lnjail
         BTei6ZJmltyZPX9cd1Z1Duw8vIKvM0upRgL9Lrf7L/xxEFG3S8TUoa5niwe4olXXe8xs
         Y0wKWbkcYMGegp2tCwF5PQqHOqblC1Dm44EI0KI7n9tkKe6L35Us5YXAfVOFWjtxGpHw
         RPxyW02ws8znTtGD+OkPmd9uzPSoBZMJa2Y/Uv9dSEQuWDMT265uzlD4ffOps2XUopcj
         DiOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hSiP+tbh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s201si676847ilc.0.2020.04.03.11.24.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 11:24:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id ay1so3039365plb.0
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 11:24:10 -0700 (PDT)
X-Received: by 2002:a17:90a:c08c:: with SMTP id o12mr11521946pjs.27.1585938249318;
 Fri, 03 Apr 2020 11:24:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200403051709.22407-1-masahiroy@kernel.org>
In-Reply-To: <20200403051709.22407-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 3 Apr 2020 11:23:57 -0700
Message-ID: <CAKwvOdnaZ6qDVxaPY-GEH8pdUkzH6eqm16ok9_wzRSVRG-1kiQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	=?UTF-8?Q?Matthias_M=C3=A4nnich?= <maennich@google.com>, 
	Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hSiP+tbh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Thu, Apr 2, 2020 at 10:17 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> As Documentation/kbuild/llvm.rst implies, building the kernel with a
> full set of LLVM tools gets very verbose and unwieldy.
>
> Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
> GCC and Binutils. You can pass LLVM=1 from the command line or as an
> environment variable. Then, Kbuild will use LLVM toolchains in your
> PATH environment.
>
> Please note LLVM=1 does not turn on the LLVM integrated assembler.
> You need to explicitly pass AS=clang to use it. When the upstream
> kernel is ready for the integrated assembler, I think we can make
> it default.

Having this behavior change over time may be surprising.  I'd rather
that if you want to not use the integrated assembler, you explicitly
negate it, or just don't use the LLVM=1 syntax, ie. `make CC=clang
LD=ld.lld ...`.

We could modify how `-no-integrated-as` is chosen when LLVM=1.

make LLVM=1 LLVMIA=0 ... # add `-no-integrated-as`
# what the flag is doesn't really matter to me, something shorter might be nice.
make LLVM=1 # use all LLVM tools

Since we got rid of $(AS), it would be appropriate to remove/change it
there, since no one really relies on AS=clang right now. (We do have 1
of our 60+ CI targets using it, but we can also change that trivially.
So I think we have a lot of freedom to change how `-no-integrated-as`
is set.

This could even be independent of this patch.

>
> We discussed what we need, and we agreed to go with a simple boolean
> switch (https://lkml.org/lkml/2020/3/28/494).
>
> Some items in the discussion:
>
> - LLVM_DIR
>
>   When multiple versions of LLVM are installed, I just thought supporting
>   LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
>
>   CC      = $(LLVM_DIR)clang
>   LD      = $(LLVM_DIR)ld.lld
>     ...
>
>   However, we can handle this by modifying PATH. So, we decided to not do
>   this.
>
> - LLVM_SUFFIX
>
>   Some distributions (e.g. Debian) package specific versions of LLVM with
>   naming conventions that use the version as a suffix.
>
>   CC      = clang$(LLVM_SUFFIX)
>   LD      = ld.lld(LLVM_SUFFIX)
>     ...
>
>   will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
>   but the suffixed versions in /usr/bin/ are symlinks to binaries in
>   /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
>
> - HOSTCC, HOSTCXX, etc.
>
>   We can switch the host compilers in the same way:
>
>   ifneq ($(LLVM),)
>   HOSTCC       = clang
>   HOSTCXX      = clang++
>   else
>   HOSTCC       = gcc
>   HOSTCXX      = g++
>   endif
>
>   This may the right thing to do, but I could not make up my mind.
>   Because we do not frequently switch the host compiler, a counter
>   solution I had in my mind was to leave it to the default of the
>   system.
>
>   HOSTCC       = cc
>   HOSTCXX      = c++
>
>   Many distributions support update-alternatives to switch the default
>   to GCC, Clang, or whatever, but reviewers were opposed to this
>   approach. So, this commit does not touch the host tools.

update-alternatives assumes you've installed Clang via a package manager?
$ update-alternatives --list cc
/usr/bin/gcc
On my system even though clang and friends are in my PATH.

And previously, there was feedback that maybe folks don't want to
change `cc` on their systems just for Clang kernel builds.
https://lkml.org/lkml/2020/3/30/836
https://lkml.org/lkml/2020/3/30/838

A goal for ClangBuiltLinux is to build a kernel image with no GCC or
binutils installed on the host.  Let the record reflect that.  And
there's been multiple complaints that the existing syntax is too long
for specifying all of the tools.

LLVM=1 is meant to be one flag.  Not `make LLVM=1 HOSTCC=clang
HOSTCXX=clang`.  If folks want fine grain flexibility, use the
existing command line interface, which this patch does not change.
LLVM=1 is opinionated, and inflexible, because it makes a strong
choice to enable LLVM for everything.

Another reason why I don't want to change these over time, and why I
want them all to be in sync is that there are 4 different CI systems
for the kernel, and they are currently fragmented in terms of who is
using what tools:

KernelCI: CC=clang only
Kbuild test robot aka 0day bot: CC=clang LD=ld.lld
Linaro TCWG: CC=clang only
our CI: a complete mix due to combinatorial explosion, but more
coverage of LLVM than everyone else.

That is a mess that we must solve.  Having 1 flag that works
consistently across systems is one solution.  Now if those were all
using LLVM=1, but some were enabling Clang's integrated assembler, and
some weren't because we changed the default over time, then we'd be
right back to this mismatch between systems.  I'd much rather draw the
line in the sand, and say "this is how this flag will work, since day
1."  Maybe it's too rigid, but it's important to me that if we create
something new to solve multiple objectives (1. simplifies existing
interface. 2. turns on everything.) that it does so.  It is a partial
solution, if it eliminates some of the flags while leaving others. I
want a full solution.

If folks want the flexibility to mix and match tools, the existing
interface is capable.  But for us to track who is using what, we need
1 flag that we know is not different depending on the cc of the
system.  Once clang's integrated assembler is good to go, we will
begin recommending LLVM=1 to everyone.  And we want feedback if we
regress building the host utilities during a kernel build, even if
there are not many.

I'm on the fence about having all of the above satisfied by one patch,
or taking this patch as is and following up on the above two points
(related to disabling `-no-integrated-as` and setting HOSTCC).  I
trust your judgement and respect your decisions, so I'll defer to you
Masahiro, but I need to make explicit the design goals.  Maybe with
this additional context it can help inform the design.
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  Documentation/kbuild/kbuild.rst |  5 +++++
>  Documentation/kbuild/llvm.rst   |  5 +++++
>  Makefile                        | 20 ++++++++++++++++----
>  3 files changed, 26 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
> index 510f38d7e78a..2d1fc03d346e 100644
> --- a/Documentation/kbuild/kbuild.rst
> +++ b/Documentation/kbuild/kbuild.rst
> @@ -262,3 +262,8 @@ KBUILD_BUILD_USER, KBUILD_BUILD_HOST
>  These two variables allow to override the user@host string displayed during
>  boot and in /proc/version. The default value is the output of the commands
>  whoami and host, respectively.
> +
> +LLVM
> +----
> +If this variable is set to 1, Kbuild will use Clang and LLVM utilities instead
> +of GCC and GNU binutils to build the kernel.
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index d6c79eb4e23e..4602369f6a4f 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -55,6 +55,11 @@ additional parameters to `make`.
>           READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
>           HOSTLD=ld.lld
>
> +You can use a single switch `LLVM=1` to use LLVM utilities by default (except
> +for building host programs).
> +
> +       make LLVM=1 HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
> +

I would like this to be the preferred method of building to LLVM, so
it should go first, followed by a footnote that says something along
the lines of "if you need something more flexible, the tools can be
specified in a more fine grain manner via the traditional syntax
below:"

>  Getting Help
>  ------------
>
> diff --git a/Makefile b/Makefile
> index c91342953d9e..6db89ecdd942 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -409,16 +409,28 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
>  KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>
>  # Make variables (CC, etc...)
> -LD             = $(CROSS_COMPILE)ld
> -CC             = $(CROSS_COMPILE)gcc
>  CPP            = $(CC) -E
> +ifneq ($(LLVM),)
> +CC             = clang
> +LD             = ld.lld
> +AR             = llvm-ar
> +NM             = llvm-nm
> +OBJCOPY                = llvm-objcopy
> +OBJDUMP                = llvm-objdump
> +READELF                = llvm-readelf
> +OBJSIZE                = llvm-size
> +STRIP          = llvm-strip
> +else
> +CC             = $(CROSS_COMPILE)gcc
> +LD             = $(CROSS_COMPILE)ld
>  AR             = $(CROSS_COMPILE)ar
>  NM             = $(CROSS_COMPILE)nm
> -STRIP          = $(CROSS_COMPILE)strip
>  OBJCOPY                = $(CROSS_COMPILE)objcopy
>  OBJDUMP                = $(CROSS_COMPILE)objdump
> -OBJSIZE                = $(CROSS_COMPILE)size
>  READELF                = $(CROSS_COMPILE)readelf
> +OBJSIZE                = $(CROSS_COMPILE)size
> +STRIP          = $(CROSS_COMPILE)strip
> +endif
>  PAHOLE         = pahole
>  LEX            = flex
>  YACC           = bison
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnaZ6qDVxaPY-GEH8pdUkzH6eqm16ok9_wzRSVRG-1kiQ%40mail.gmail.com.
