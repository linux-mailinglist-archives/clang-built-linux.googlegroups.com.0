Return-Path: <clang-built-linux+bncBAABBMOPWL2AKGQEV7OOHKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFA81A1112
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 18:17:55 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id h191sf2791115pfe.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 09:17:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586276273; cv=pass;
        d=google.com; s=arc-20160816;
        b=AF4pbRgdAZx0L9wXMwOM36fZi05q9is1Y9XQLxerGuouo2omBvfHOqHp6AoCq5IQNa
         3SEyfg0Pl1uEHpd2APUlvhAmEgf9aEz1WyxJEtzOf77+CN4U1VfIjD/Nj7NlHb4kjekK
         FNxzXaw5ofVj+YfqXlvR+gK2xAvCQ+j0UWsN1/gQGJ6DGw6Jokw62CXXWLpxX31OfNp+
         HM7aZCvyx7N1gz/D8q4mxnoVL+EDNiSosoM32IbH//+20Xfv+4bYid6W4X5JYBwWa+Cg
         igYHYlT+cVJUou0fvoWCxoYLku8Q58h8KzyZcu/23ry6Chnq1vEvZ+12GFsJRvzWGguB
         6gCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=wBrj/3cPnT45AkWfBqBk2drhF3StpKm2U0tUY3WgTnU=;
        b=g/NPzb31Fbr7FrjrWGFVvwLwJHJoZG9gKzhI1AuHxfWh7/sat4Golm6MnAq6d1uNOs
         Up6xXJcmjirb2wEYYtFBW4WLLx3eYL37Mf10JzymD19TiIyHus5FwbealY0HOXImMqGb
         EzT6F4cO1/gLOYjMa88HleltQQN2wvPF+Bgypd7qibG886LaGqwyC56+/xb+CLrQ9v+c
         oT08sN1C0OCAgVEF/cd5LoLafQobM7QvCdaGOGx2BITlvzyrOXf2rRt0VazqjVKEHv0D
         q0JnZJrXIHaO6c8tlmJOnvZRpVU/IJWJnnYa3oPH5sd00Fz88zmgGd3oGv7lEnSuW/zH
         RZZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PSghkvhs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wBrj/3cPnT45AkWfBqBk2drhF3StpKm2U0tUY3WgTnU=;
        b=s6iz2/oD5jaN8XcvWXzqME4O2z318ugO5FYvFgH/9aHMqxWvCD0XLuamKVpy3mR/dr
         bL7nTiSH2wv3W1QwD4NELSi205nXZgNcR1QTO+ssgvWg7CF2T6EhUEs3UURd1BVSivGW
         y+HWlNuvpC2HniB0Qtu7ZgA6rOb8lrk0T2xn8yJBbo8gGz0CPDXtT1eWJTpHuuEsHufk
         mzfTz6Un6K/rlzhcSj3rAO66ef9EvGbxhCsxfcxex3f1Jak/jUg8m1hx7dO3xp5Zn8DX
         s2tYXE3gQORYTNWMTpecZWYIhY9a4l5LccuyvTYIT603rOanieiDBHftMj0xrtm+asTW
         x1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wBrj/3cPnT45AkWfBqBk2drhF3StpKm2U0tUY3WgTnU=;
        b=XqEjEd6aP7+Cp5Z/uGsVf9izGD42FrxeqDXCHZEj67nuEh+d8TkPUi8gRd6RPkHlH2
         0Mqh1f2pvmn5Utj4MSfOiyuyaQD+fa1mlQV0PJe7ePse/mh/eVTNyE+ujutRDLUmrrWC
         ajbfextEXrYPficNJaok/gtK3IJU0pxhi28hP78SdH/OWLwlnAfzZmRnA8aEaeOR2ReV
         q4yWdqLGw92rpG7kJ90ykUy+vL1e1taV8jODkQxIZZsN0EOMCejcnhIVJyQtlR0QMoW1
         vLUqFtOEYoogQHb6RWhpHYmuxE9lWxgt+txmZR15V3K5cHJLTiG0Vp1CIe46PhpMndpy
         GUnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaI2DO1Xdj1iSdt8MenKg3XhMyrNnI6vOySif1AAq8NsqGmrmyt
	hNcBy9C/0EucZPstwvlHciY=
X-Google-Smtp-Source: APiQypJX14Kh7+eY6480Y6guBnL1vaogQeFvVA1cGVAqJYnIYldIJIO33JTll5QMJSCoVI1joxuN+A==
X-Received: by 2002:a17:90a:3a8c:: with SMTP id b12mr131171pjc.48.1586276273319;
        Tue, 07 Apr 2020 09:17:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:8d1:: with SMTP id ds17ls327336pjb.1.canary-gmail;
 Tue, 07 Apr 2020 09:17:52 -0700 (PDT)
X-Received: by 2002:a17:902:9a03:: with SMTP id v3mr3032675plp.272.1586276272893;
        Tue, 07 Apr 2020 09:17:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586276272; cv=none;
        d=google.com; s=arc-20160816;
        b=afzH0S9cQW/2Ryz55Cuv5bTJO5V1J5CcArvRKDg+N67DFyOf4Tnr+f6X6qQGVCl1oZ
         r1TRS/INWkSzfuQ2RMFmjch2CG0fY/Ol0ZzD3Euo1sgFVrTF3ij8F9biwQHlVB+3nQ4j
         jmpPO+waBgMwsVu0KTrZSA/aueS/mufq6tl+1JNOAyu332ncDtzLIUGyJl5LDcvmwCVn
         hPl8XTounbTqy2XuVa2EFQTO42GsElwlhlC6in8iBJVj/H8R0AJoBOppp0p9mzeDp6uD
         xKGca+uVbkHrpwYwH76yiQbUjcEmJWPiYZ1yBNIu1ROCQHVG7fP/E1qVj1NNbWnOZWtA
         oS3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=DV4fQlgdI60yXyAogQu5G2vroWmj19GJw8loLCiMBRg=;
        b=Hi5zeW8gCjup0OQYqAvQcDlLkZtYg9d0qi5z7U6Obo8Zs5ctTbd2qhSC6kotcVUyiz
         i/XyWjguyQVNlcLKN4YARVdueaMHPOLRiZ43gvfeVnMhwKspIQmhmx+LTv1TbTs4N+ev
         PtjQb+LOXecRyyZFvpxiBft8MxIggt0FMYlHjgwa01q5e0ZP65mZ2q0AHdpnBwDvpLBA
         OwVvFWHZSH9MeW93qqHrSnFz1iuUi/anaoJPm7bt588iymYZiHx3ZNMmNNkoV25F3i93
         EGTudUwRZ4Y2aBqJZDzPTYG0IvZpOy85OHfRPj6kItpfpT7NCkT1EB8WcFka19rz+QLU
         4npQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PSghkvhs;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id y1si157311pjv.2.2020.04.07.09.17.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 09:17:52 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 037GHUJQ023892
	for <clang-built-linux@googlegroups.com>; Wed, 8 Apr 2020 01:17:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 037GHUJQ023892
X-Nifty-SrcIP: [209.85.222.51]
Received: by mail-ua1-f51.google.com with SMTP id c7so365322uap.12
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 09:17:31 -0700 (PDT)
X-Received: by 2002:a9f:28c5:: with SMTP id d63mr2335006uad.25.1586276250105;
 Tue, 07 Apr 2020 09:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200403051709.22407-1-masahiroy@kernel.org> <20200406112220.GB126804@google.com>
In-Reply-To: <20200406112220.GB126804@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 8 Apr 2020 01:16:53 +0900
X-Gmail-Original-Message-ID: <CAK7LNARkFN8jTD8F3CU7r_AL8dbqaKpUuou4MCLZvAYLGs9bYA@mail.gmail.com>
Message-ID: <CAK7LNARkFN8jTD8F3CU7r_AL8dbqaKpUuou4MCLZvAYLGs9bYA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
To: Matthias Maennich <maennich@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=PSghkvhs;       spf=softfail
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

On Mon, Apr 6, 2020 at 8:22 PM 'Matthias Maennich' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Apr 03, 2020 at 02:17:09PM +0900, Masahiro Yamada wrote:
> >As Documentation/kbuild/llvm.rst implies, building the kernel with a
> >full set of LLVM tools gets very verbose and unwieldy.
> >
> >Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
> >GCC and Binutils. You can pass LLVM=1 from the command line or as an
> >environment variable. Then, Kbuild will use LLVM toolchains in your
> >PATH environment.
> >
> >Please note LLVM=1 does not turn on the LLVM integrated assembler.
> >You need to explicitly pass AS=clang to use it. When the upstream
> >kernel is ready for the integrated assembler, I think we can make
> >it default.
> >
> >We discussed what we need, and we agreed to go with a simple boolean
> >switch (https://lkml.org/lkml/2020/3/28/494).
> >
> >Some items in the discussion:
> >
> >- LLVM_DIR
> >
> >  When multiple versions of LLVM are installed, I just thought supporting
> >  LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
> >
> >  CC      = $(LLVM_DIR)clang
> >  LD      = $(LLVM_DIR)ld.lld
> >    ...
> >
> >  However, we can handle this by modifying PATH. So, we decided to not do
> >  this.
> >
> >- LLVM_SUFFIX
> >
> >  Some distributions (e.g. Debian) package specific versions of LLVM with
> >  naming conventions that use the version as a suffix.
> >
> >  CC      = clang$(LLVM_SUFFIX)
> >  LD      = ld.lld(LLVM_SUFFIX)
> >    ...
> >
> >  will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
> >  but the suffixed versions in /usr/bin/ are symlinks to binaries in
> >  /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
> >
> >- HOSTCC, HOSTCXX, etc.
> >
> >  We can switch the host compilers in the same way:
> >
> >  ifneq ($(LLVM),)
> >  HOSTCC       = clang
> >  HOSTCXX      = clang++
> >  else
> >  HOSTCC       = gcc
> >  HOSTCXX      = g++
> >  endif
> >
> >  This may the right thing to do, but I could not make up my mind.
> >  Because we do not frequently switch the host compiler, a counter
> >  solution I had in my mind was to leave it to the default of the
> >  system.
> >
> >  HOSTCC       = cc
> >  HOSTCXX      = c++
>
> What about HOSTLD ? I saw recently, that setting HOSTLD=ld.lld is not
> yielding the expected result (some tools, like e.g. fixdep still require
> an `ld` to be in PATH to be built). I did not find the time to look into
> that yet, but I would like to consistently switch to the llvm toolchain
> (including linker and possibly more) also for hostprogs.


HOSTLD=ld.lld worked for me, but HOSTCC=clang did not.



HOSTCC=clang without CC=clang fails to build objtool.

The build system of objtool is meh.  :(


  HOSTCC  scripts/mod/sumversion.o
  HOSTLD  scripts/mod/modpost
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND  objtool
error: unknown warning option '-Wstrict-aliasing=3'; did you mean
'-Wstring-plus-int'? [-Werror,-Wunknown-warning-option]
  HOSTCC   /home/masahiro/workspace/linux-kbuild/tools/objtool/fixdep.o
  HOSTLD   /home/masahiro/workspace/linux-kbuild/tools/objtool/fixdep-in.o
  LINK     /home/masahiro/workspace/linux-kbuild/tools/objtool/fixdep
  CC       /home/masahiro/workspace/linux-kbuild/tools/objtool/exec-cmd.o
  CC       /home/masahiro/workspace/linux-kbuild/tools/objtool/help.o
  CC       /home/masahiro/workspace/linux-kbuild/tools/objtool/pager.o






> Cheers,
> Matthias
>
> >
> >  Many distributions support update-alternatives to switch the default
> >  to GCC, Clang, or whatever, but reviewers were opposed to this
> >  approach. So, this commit does not touch the host tools.
> >
> >Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> >---
> >
> > Documentation/kbuild/kbuild.rst |  5 +++++
> > Documentation/kbuild/llvm.rst   |  5 +++++
> > Makefile                        | 20 ++++++++++++++++----
> > 3 files changed, 26 insertions(+), 4 deletions(-)
> >
> >diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
> >index 510f38d7e78a..2d1fc03d346e 100644
> >--- a/Documentation/kbuild/kbuild.rst
> >+++ b/Documentation/kbuild/kbuild.rst
> >@@ -262,3 +262,8 @@ KBUILD_BUILD_USER, KBUILD_BUILD_HOST
> > These two variables allow to override the user@host string displayed during
> > boot and in /proc/version. The default value is the output of the commands
> > whoami and host, respectively.
> >+
> >+LLVM
> >+----
> >+If this variable is set to 1, Kbuild will use Clang and LLVM utilities instead
> >+of GCC and GNU binutils to build the kernel.
> >diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> >index d6c79eb4e23e..4602369f6a4f 100644
> >--- a/Documentation/kbuild/llvm.rst
> >+++ b/Documentation/kbuild/llvm.rst
> >@@ -55,6 +55,11 @@ additional parameters to `make`.
> >         READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> >         HOSTLD=ld.lld
> >
> >+You can use a single switch `LLVM=1` to use LLVM utilities by default (except
> >+for building host programs).
> >+
> >+      make LLVM=1 HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
> >+
> > Getting Help
> > ------------
> >
> >diff --git a/Makefile b/Makefile
> >index c91342953d9e..6db89ecdd942 100644
> >--- a/Makefile
> >+++ b/Makefile
> >@@ -409,16 +409,28 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
> > KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
> >
> > # Make variables (CC, etc...)
> >-LD            = $(CROSS_COMPILE)ld
> >-CC            = $(CROSS_COMPILE)gcc
> > CPP           = $(CC) -E
> >+ifneq ($(LLVM),)
> >+CC            = clang
> >+LD            = ld.lld
> >+AR            = llvm-ar
> >+NM            = llvm-nm
> >+OBJCOPY               = llvm-objcopy
> >+OBJDUMP               = llvm-objdump
> >+READELF               = llvm-readelf
> >+OBJSIZE               = llvm-size
> >+STRIP         = llvm-strip
> >+else
> >+CC            = $(CROSS_COMPILE)gcc
> >+LD            = $(CROSS_COMPILE)ld
> > AR            = $(CROSS_COMPILE)ar
> > NM            = $(CROSS_COMPILE)nm
> >-STRIP         = $(CROSS_COMPILE)strip
> > OBJCOPY               = $(CROSS_COMPILE)objcopy
> > OBJDUMP               = $(CROSS_COMPILE)objdump
> >-OBJSIZE               = $(CROSS_COMPILE)size
> > READELF               = $(CROSS_COMPILE)readelf
> >+OBJSIZE               = $(CROSS_COMPILE)size
> >+STRIP         = $(CROSS_COMPILE)strip
> >+endif
> > PAHOLE                = pahole
> > LEX           = flex
> > YACC          = bison
> >--
> >2.17.1
> >
> >--
> >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403051709.22407-1-masahiroy%40kernel.org.
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406112220.GB126804%40google.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARkFN8jTD8F3CU7r_AL8dbqaKpUuou4MCLZvAYLGs9bYA%40mail.gmail.com.
