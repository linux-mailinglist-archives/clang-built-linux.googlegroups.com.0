Return-Path: <clang-built-linux+bncBAABB34CTT2AKGQE7P3HM5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id DA03419D397
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 11:27:12 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id g79sf6301333ild.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 02:27:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585906031; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vfcs3rtpLt89NJJJUHjuVzKJ/YT5Sbh98FCikDM8yr00DooVTIcX7UpkJbEym8M30x
         zQd4fov6o5DV7rceCb2aKcFfIot2c8qtgTF12M59mOEfqhki6ysdyIAXkegp+/oIUrTp
         RYjIkf8QpHrrGI7pb/I1KBDwcQ/HCzaoiZ6ynhMc+NWE/NJJpZZSjC+vFcc5/dZsfLuC
         YWnubbgdH560BR3TQcfS7u6+uwUoRmYmdeO5s2jMYYY7IteUUaafch2fNzejnBtp2YK1
         ii9np1JfOz7bIuaohxT9E5weS6LQXC3NI02InqmZR6wTroTCZH/FYJOSqho9OoL61Zhm
         WXTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=WjroHE1X9tWlvM8VfN4P1xRNb7fP+cIN8kXXWhaD6FM=;
        b=PK2tf/VvfOL9WZCATILQ3yaFYrE9iPJZWb+sr9OAb88h+MXEoXJkPVp/p91zUwCeUr
         c6x/SsqwLu2v42SnetGpEJ7MIHUvspKQ0ygBmhzEP7Yt8ngFs0IVTGafTOJzpNL1GmSf
         Y1Vll6brWWMp6+5CqQXNeULzpzM8e/v6z5beor8S72W+jtkjyxC47pfVuo5WgN9Qhgbn
         gExcpqbaMsAVXYw5QPlUNGWjSjj/8HMvmyCWOqiM6Zj26wVsS6ygP8yiye4rWzSHfkci
         Om/TyaZWJj3uvHpOoTXjFCpFQfrYHEONdQXWrfHQ2ON21Bf8Z6fVUMCX6TpqxvvEoo4v
         lzPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vPSn6fqu;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WjroHE1X9tWlvM8VfN4P1xRNb7fP+cIN8kXXWhaD6FM=;
        b=ooOD5Umgy1LvM08ByxkbvOLHyjOmIPJiX4X8jKyQQLbllDVHE0E1S1s0rfyN9VMFX7
         +Bt3nPnsVuicVwXiGxHfvpIvgEqZ+B6bruCMSFJ2qTwTYw9eHy6K+3qtI3rC3cqapu75
         EWsrQkO4N1pb1ebj0Yx+Ze+Kf757GZFnWe9MSGWm2an5FRnbCtzTRhmhylJajkGogzS8
         edXcFZM6vkYpmDFZ3sZD6r74dS25bo1aGUg6aOEK4lSVJV02adAp9unQ2PKlcsnP6mqy
         p1qOwVUr5djpgfrBHVzyx1JThY3BUUabqOElX1ydjsPdp00PE/qFcP0cC8YI1tENKyDg
         evAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WjroHE1X9tWlvM8VfN4P1xRNb7fP+cIN8kXXWhaD6FM=;
        b=M+J3+Zlfxj2sxMChw6NiSrDUEPp182uYenl90+SscvM7RwVZ8KJVCC1j/5EE25oA/j
         dH47iXtBnl6ux9JCE9Kwiz9urXqzy003Wo//lm8nm9rP3zRt9U1TRh+2g8d5fXeUvzZi
         Q7wB7OQ8XWQq88L+y28S3BiO+TPeIN4uCSM3dQ/hwmwjUwQ8qmW4HBhKTpLbbUwivECk
         hJn1FVURRkCbAAIVerPYPqU2laPFiMbVw8JrNgV80PX4Rf+zZcIbFZrEPBxBtykuPk5o
         CSr8sqydmeGen2O7y0UusrBHrY9gPBtBNemaeVkrXCvsFk4G5DcoarjxWjY82FtjgyZS
         8DMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubvoqGVBehb3qZaJvCJx0NO8mnHjjjItbIjxW/t9z416o9/1sZa
	QRHqzpvsykHHU9RibHcwIe8=
X-Google-Smtp-Source: APiQypLAezTtucfXbTC+Gr0l+C6mr7ByduMzw6s3YVnY/hv38wgvVoNWmvinmPCZcNwv8p/q8+8tAA==
X-Received: by 2002:a05:6638:20d:: with SMTP id e13mr7286241jaq.56.1585906031392;
        Fri, 03 Apr 2020 02:27:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:608:: with SMTP id t8ls3419740ils.11.gmail; Fri, 03
 Apr 2020 02:27:11 -0700 (PDT)
X-Received: by 2002:a92:ba01:: with SMTP id o1mr7429507ili.217.1585906031053;
        Fri, 03 Apr 2020 02:27:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585906031; cv=none;
        d=google.com; s=arc-20160816;
        b=tyoigFX9gEQ+NzKsm9yWq66v19+y4ORu4iUQTSW8Nh9M3XRwTjcNF8ojeh0pQX4K8w
         lyYzVICWYGKLNAh1LZ+hdmocF303q8dj8dHUHzFoneQXUOxZ2I2NRaLxUgK9RzXFizwu
         r4O4ZSe8OopVHKTBQNZ+nFtpuyI2CZUb3QeBO908RsR3GkVh3TcWCrs8JMqthWyjc+xr
         BHXEc63WRU7KLdbtyBpnK4xmrpnviVQPsyz8zAR8hWIwABqky1VSqLXCZR+QS0REr+Vn
         /yZVRIYr+AeLJVBovKD3GpLJO5THpZc0uEkDosIo3jawZuilRcZL4ePk1ZvxirTnntR8
         at3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=MstVQUcgSZG0zMpYAd6uwUB9YIo5n+SWfVQSoNG7zYs=;
        b=SMW3kvfC9a6I/NkuRqUz1VdtnJ5NvjYJROxk9NCWilKtu6Bbf193lHpMCKvCOWP9p3
         pEFZi6FyztsIoKWtx/FOATA1DlFi1uvJqTFn8pWKkZ6Qrtk2GwLvalFTNSNPBtBwjX0v
         IKbp+dSIyCdr9molksdxXntjvpxsLJ6OPuKV6FvhSbTUGkpvoFPvaDsFG3WGTkGDST/z
         Chnzat5EVg4jpuA3hSsKKbkWsy0zRav5SMtRZkseMRmtQSKgwkCH05LacwxuUupdoLza
         CGXf6SH0TcdwENjmmzCiLBw0vdTWXc/D4NfgVabvf4BCNGitUzfrn+RWMRJnGrwSThVe
         QBhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vPSn6fqu;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id d207si640482iof.3.2020.04.03.02.27.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 02:27:11 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 0339Qsv3008660
	for <clang-built-linux@googlegroups.com>; Fri, 3 Apr 2020 18:26:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 0339Qsv3008660
X-Nifty-SrcIP: [209.85.222.52]
Received: by mail-ua1-f52.google.com with SMTP id z7so2460807uai.6
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 02:26:54 -0700 (PDT)
X-Received: by 2002:ab0:2790:: with SMTP id t16mr5779840uap.40.1585906013243;
 Fri, 03 Apr 2020 02:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200403051709.22407-1-masahiroy@kernel.org> <20200403085719.GA9282@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200403085719.GA9282@ubuntu-m2-xlarge-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 3 Apr 2020 18:26:17 +0900
X-Gmail-Original-Message-ID: <CAK7LNATtqe_vSYTUD+7G8du46F3Kksx6F2yHK4Tw9PLdybqL7A@mail.gmail.com>
Message-ID: <CAK7LNATtqe_vSYTUD+7G8du46F3Kksx6F2yHK4Tw9PLdybqL7A@mail.gmail.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vPSn6fqu;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Hi Nathan,


On Fri, Apr 3, 2020 at 5:57 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Masahiro,
>
> On Fri, Apr 03, 2020 at 02:17:09PM +0900, Masahiro Yamada wrote:
> > As Documentation/kbuild/llvm.rst implies, building the kernel with a
> > full set of LLVM tools gets very verbose and unwieldy.
> >
> > Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
> > GCC and Binutils. You can pass LLVM=1 from the command line or as an
> > environment variable. Then, Kbuild will use LLVM toolchains in your
> > PATH environment.
> >
> > Please note LLVM=1 does not turn on the LLVM integrated assembler.
> > You need to explicitly pass AS=clang to use it. When the upstream
> > kernel is ready for the integrated assembler, I think we can make
> > it default.
>
> I agree this should be the default but I think it should probably be
> called out somewhere in the documentation as well since users might not
> expect to have to have a cross assembler installed.


I will add the following info to llvm.rst:

`LLVM=1` does not turn on the LLVM integrated assembler, so you still need
assembler from GNU binutils. You can pass `AS=clang` to use the integrated
assembler, but it is experimental as of writing.




> > We discussed what we need, and we agreed to go with a simple boolean
> > switch (https://lkml.org/lkml/2020/3/28/494).
> >
> > Some items in the discussion:
> >
> > - LLVM_DIR
> >
> >   When multiple versions of LLVM are installed, I just thought supporting
> >   LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
> >
> >   CC      = $(LLVM_DIR)clang
> >   LD      = $(LLVM_DIR)ld.lld
> >     ...
> >
> >   However, we can handle this by modifying PATH. So, we decided to not do
> >   this.
> >
> > - LLVM_SUFFIX
> >
> >   Some distributions (e.g. Debian) package specific versions of LLVM with
> >   naming conventions that use the version as a suffix.
> >
> >   CC      = clang$(LLVM_SUFFIX)
> >   LD      = ld.lld(LLVM_SUFFIX)
> >     ...
> >
> >   will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
> >   but the suffixed versions in /usr/bin/ are symlinks to binaries in
> >   /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
> >
> > - HOSTCC, HOSTCXX, etc.
> >
> >   We can switch the host compilers in the same way:
> >
> >   ifneq ($(LLVM),)
> >   HOSTCC       = clang
> >   HOSTCXX      = clang++
> >   else
> >   HOSTCC       = gcc
> >   HOSTCXX      = g++
> >   endif
>
> I would personally like to see this but I do not have the strongest
> opinion.
>
> >   This may the right thing to do, but I could not make up my mind.
> >   Because we do not frequently switch the host compiler, a counter
> >   solution I had in my mind was to leave it to the default of the
> >   system.
> >
> >   HOSTCC       = cc
> >   HOSTCXX      = c++
> >
> >   Many distributions support update-alternatives to switch the default
> >   to GCC, Clang, or whatever, but reviewers were opposed to this
> >   approach. So, this commit does not touch the host tools.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  Documentation/kbuild/kbuild.rst |  5 +++++
> >  Documentation/kbuild/llvm.rst   |  5 +++++
> >  Makefile                        | 20 ++++++++++++++++----
> >  3 files changed, 26 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
> > index 510f38d7e78a..2d1fc03d346e 100644
> > --- a/Documentation/kbuild/kbuild.rst
> > +++ b/Documentation/kbuild/kbuild.rst
> > @@ -262,3 +262,8 @@ KBUILD_BUILD_USER, KBUILD_BUILD_HOST
> >  These two variables allow to override the user@host string displayed during
> >  boot and in /proc/version. The default value is the output of the commands
> >  whoami and host, respectively.
> > +
> > +LLVM
> > +----
> > +If this variable is set to 1, Kbuild will use Clang and LLVM utilities instead
> > +of GCC and GNU binutils to build the kernel.
> > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > index d6c79eb4e23e..4602369f6a4f 100644
> > --- a/Documentation/kbuild/llvm.rst
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -55,6 +55,11 @@ additional parameters to `make`.
> >         READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> >         HOSTLD=ld.lld
> >
> > +You can use a single switch `LLVM=1` to use LLVM utilities by default (except
> > +for building host programs).
> > +
> > +     make LLVM=1 HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
> > +
> >  Getting Help
> >  ------------
> >
> > diff --git a/Makefile b/Makefile
> > index c91342953d9e..6db89ecdd942 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -409,16 +409,28 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
> >  KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
> >
> >  # Make variables (CC, etc...)
> > -LD           = $(CROSS_COMPILE)ld
> > -CC           = $(CROSS_COMPILE)gcc
> >  CPP          = $(CC) -E
> > +ifneq ($(LLVM),)
> > +CC           = clang
> > +LD           = ld.lld
> > +AR           = llvm-ar
> > +NM           = llvm-nm
> > +OBJCOPY              = llvm-objcopy
> > +OBJDUMP              = llvm-objdump
> > +READELF              = llvm-readelf
> > +OBJSIZE              = llvm-size
> > +STRIP                = llvm-strip
> > +else
> > +CC           = $(CROSS_COMPILE)gcc
> > +LD           = $(CROSS_COMPILE)ld
> >  AR           = $(CROSS_COMPILE)ar
> >  NM           = $(CROSS_COMPILE)nm
> > -STRIP                = $(CROSS_COMPILE)strip
> >  OBJCOPY              = $(CROSS_COMPILE)objcopy
> >  OBJDUMP              = $(CROSS_COMPILE)objdump
> > -OBJSIZE              = $(CROSS_COMPILE)size
> >  READELF              = $(CROSS_COMPILE)readelf
> > +OBJSIZE              = $(CROSS_COMPILE)size
> > +STRIP                = $(CROSS_COMPILE)strip
> > +endif
> >  PAHOLE               = pahole
> >  LEX          = flex
> >  YACC         = bison
> > --
> > 2.17.1
> >
>
> I have verified that the variables get their correct value with LLVM=1
> and that they are still overridable.
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403085719.GA9282%40ubuntu-m2-xlarge-x86.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATtqe_vSYTUD%2B7G8du46F3Kksx6F2yHK4Tw9PLdybqL7A%40mail.gmail.com.
