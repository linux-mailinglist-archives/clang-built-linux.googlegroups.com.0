Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXXDWL2AKGQEPFU6J5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F81C1A125B
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 19:01:20 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id a21sf3138040oto.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 10:01:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586278879; cv=pass;
        d=google.com; s=arc-20160816;
        b=rXP8rjYZWwLg7KqE267xKXZ4PscznOBPHzavvUPo8xL+eB/pW5XK+nN5tir5TUSnoj
         pvayRq7/0x13avQXcErfPcgqd8A6RK5ylj3J/UhV3ivhWWKM3dLfZa2oa4297OQQI2e2
         KhE2bw5Q3/h2idaWiCiJfC8zW42XS/RDWChcF2ejwlxnbewZN6L9LeyjURPTOjUTrgkR
         X//r8jzTgrvw+ZiwgwYl/LIdJ+1NqAhuKB87ACjQbu+zbveGs9NwQODnJd4LIrzDAeEU
         a4+NVNk0RtJ7GS9/Pb6XJR2d1J6fMWPDd6udBvqTVJxxlRAnZcEAxXUuqdX9sQxG09v8
         St3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E5+QP7EIEWTf8BxU35fQAfCES/kXtR89fdLh6EncV8U=;
        b=PKVVewBmDwK0ZonqFUzuj9qCPVZQsuXRaGJ5Pinlv1jLEenaTMWGR17R3anYOcc63x
         QjHGPHmyPrh2Fs85lv2oX4nh8GW3iV1Z/Te5Jt2Sb+eTjkRWsMsOAGWSsX93UCjPX/cw
         pjeGvh56muyeo3hfOgYHHTvv/Er6gFBGy9+41pLguRpzp+cQ/N6Flx1k/Re4UNNjvTUW
         dRLpIKRFLX55zZvJI2bcxX8lU4o1+jWZnI1EJyuqEsnnvjNN7zkpca+li82UaCswC6ac
         9jGe6Q0+n5L04HRbWdrFDSVjvvyHXV+XO5/Na/PRXD0Xavfwt9yMzaI+wQaNo/u3PboW
         OIMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ma3VTOaM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E5+QP7EIEWTf8BxU35fQAfCES/kXtR89fdLh6EncV8U=;
        b=EPdFLflDO8Yg86dR1F4o6w0JBGg1fE8ttZuhMZyiSepU7PUe5F76G29mmhzRVQgYs5
         aWJ3DM2jScHCnL6obCZ7SrWQ4K19i+wNjzaR0rI+TEuGqaZL4ZXy3Fr6RfndYgtwA1Kg
         liBcwBZUDlBMkGgHqiL3c57vm9p5+q5Bj3Ny+zzqO1HDJcPzkcyCLuckaBXVkQLxPMnh
         Dj1LuFjezanNsEmCoh30fldkhUdUwVcjLsL1skomJx8G/achka6bCAJgPbTaxUtu03/i
         IFt/zFQ86yDKfd5z3JZnhTJlDkdB7lthJjE6dVGZ0q0UdelwInXvw4omeA12feZyl0oD
         742g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E5+QP7EIEWTf8BxU35fQAfCES/kXtR89fdLh6EncV8U=;
        b=U2O78oL8DoC/8KNJM1/qVUjEQxRYA7AS4jpYK1vKQjotB2X4lwp0KyXbpS+k2vJggL
         /H6ng6nL+vEJ3gur9iL8bHvw3q/mUcONLwzHF3W0ymD0sOmBSM1xgA/93xC66dp+f8Vs
         u2bZzGyeW94zw4PcikQaJbHfVr4GDRmCuIPG1iPxEiQ2Q0mIIlEsxwT2c+6V3yr1nvmO
         T3Ie+oQy2NFlwiAMuV8+XUCNUAJhamsgPxPoxKsHSLwxzJFce6fp5vS4a6lqidwHr304
         L8xkiGju7cQOKEdKhm1DS2X15o/S2Vu4LUyHK0DfBnvheYvpuz4ZfjemZOYDe2tuFZO0
         e9qw==
X-Gm-Message-State: AGi0PuZV7prvJYOLsWj417b+OB880lL0XAv5pE2DhA1bXbgt1pwyQbeU
	3Uw/1KuWMCa0Ljg5WSZ/HMk=
X-Google-Smtp-Source: APiQypIqlRTfH4kt4dp/QZHd5fDHs0RHlXE9UUHP09SAy3A5THPtC1lGqyjGzav46HW+ZWY4f6i+qA==
X-Received: by 2002:a9d:7a8:: with SMTP id 37mr2528395oto.209.1586278878806;
        Tue, 07 Apr 2020 10:01:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls1583784oif.3.gmail; Tue, 07
 Apr 2020 10:01:18 -0700 (PDT)
X-Received: by 2002:a54:4e13:: with SMTP id a19mr237939oiy.108.1586278878337;
        Tue, 07 Apr 2020 10:01:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586278878; cv=none;
        d=google.com; s=arc-20160816;
        b=vDJQgx38ky+OJQ2dgeAVkeHZSZ885yR7x3KKZe9Vn3OLBvzkLtTo8uCRodex7LTQ6E
         lUzXWriX+Thn/SiI3OPoi5wNUVm90f3Oeg3DcLAjqCtO1bAeI0qhylUcJdTarlYAFRnx
         0CcAIMYYkcXBljfmLj2+F//YSZxTx5R+TD5fEU/YpxL9ZAXPtoUQO2Fb36mK/zmu/avp
         57yhQKaL1d+OGTN6CXXYjPm9DbTpRR2IaLwHWU+XLLfnuYWUWBlsq5R2LNp8VUC6lOo/
         bma40qraf+YlgvDl0ZzDwPxObdIEwBRKucz2mLahFk2ZayDTMt0WVXcop4zrc1rINI5M
         wzJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BKA4RM51A82x/5SpJbkyD9gWBCDUmnDILyC/0E/dflg=;
        b=UkSOlkD5QojXdtHtjazPIbUupwOAX+slilElqo6PBPWCod/RrRicjUvLTUe6ekeSw0
         L/Xia+WdulY7wtQJdIuiJOWl/toV+NRgcmgFxCjNgBFazIFPVxZgQyrMYALDXmeRTCpU
         iX5ZlCjUcX23YzBS9ORCzngGD5KbR+XzIUA6oL7qLvKRR1P/xRhTEEEoFPj/zWa0qXMB
         XPRxS+ZJFRXJPldOFJjRePYDNjK6TiiQHbbcN0lzA6Fr4mj9BxkHZp/EMRR0y13sFtJt
         xe5USZJMXwWpUu2Vei3NDvACEwkRbRck/cPDRxCxU0R0DkvXRZYI1ZctSsvptQl1KwIf
         4cSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ma3VTOaM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id p9si370804ota.4.2020.04.07.10.01.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 10:01:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id fh8so17949pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 10:01:18 -0700 (PDT)
X-Received: by 2002:a17:90a:8085:: with SMTP id c5mr276765pjn.186.1586278877201;
 Tue, 07 Apr 2020 10:01:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200403051709.22407-1-masahiroy@kernel.org> <20200406112220.GB126804@google.com>
 <CAK7LNARkFN8jTD8F3CU7r_AL8dbqaKpUuou4MCLZvAYLGs9bYA@mail.gmail.com>
In-Reply-To: <CAK7LNARkFN8jTD8F3CU7r_AL8dbqaKpUuou4MCLZvAYLGs9bYA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 10:01:04 -0700
Message-ID: <CAKwvOdmHxeZ+T1OsOhW25pPygHM4D21OgZqRk141xbjP437-1w@mail.gmail.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Matthias Maennich <maennich@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Michal Marek <michal.lkml@markovi.net>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ma3VTOaM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Tue, Apr 7, 2020 at 9:17 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Mon, Apr 6, 2020 at 8:22 PM 'Matthias Maennich' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Fri, Apr 03, 2020 at 02:17:09PM +0900, Masahiro Yamada wrote:
> > >As Documentation/kbuild/llvm.rst implies, building the kernel with a
> > >full set of LLVM tools gets very verbose and unwieldy.
> > >
> > >Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
> > >GCC and Binutils. You can pass LLVM=1 from the command line or as an
> > >environment variable. Then, Kbuild will use LLVM toolchains in your
> > >PATH environment.
> > >
> > >Please note LLVM=1 does not turn on the LLVM integrated assembler.
> > >You need to explicitly pass AS=clang to use it. When the upstream
> > >kernel is ready for the integrated assembler, I think we can make
> > >it default.
> > >
> > >We discussed what we need, and we agreed to go with a simple boolean
> > >switch (https://lkml.org/lkml/2020/3/28/494).
> > >
> > >Some items in the discussion:
> > >
> > >- LLVM_DIR
> > >
> > >  When multiple versions of LLVM are installed, I just thought supporting
> > >  LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
> > >
> > >  CC      = $(LLVM_DIR)clang
> > >  LD      = $(LLVM_DIR)ld.lld
> > >    ...
> > >
> > >  However, we can handle this by modifying PATH. So, we decided to not do
> > >  this.
> > >
> > >- LLVM_SUFFIX
> > >
> > >  Some distributions (e.g. Debian) package specific versions of LLVM with
> > >  naming conventions that use the version as a suffix.
> > >
> > >  CC      = clang$(LLVM_SUFFIX)
> > >  LD      = ld.lld(LLVM_SUFFIX)
> > >    ...
> > >
> > >  will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
> > >  but the suffixed versions in /usr/bin/ are symlinks to binaries in
> > >  /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
> > >
> > >- HOSTCC, HOSTCXX, etc.
> > >
> > >  We can switch the host compilers in the same way:
> > >
> > >  ifneq ($(LLVM),)
> > >  HOSTCC       = clang
> > >  HOSTCXX      = clang++
> > >  else
> > >  HOSTCC       = gcc
> > >  HOSTCXX      = g++
> > >  endif
> > >
> > >  This may the right thing to do, but I could not make up my mind.
> > >  Because we do not frequently switch the host compiler, a counter
> > >  solution I had in my mind was to leave it to the default of the
> > >  system.
> > >
> > >  HOSTCC       = cc
> > >  HOSTCXX      = c++
> >
> > What about HOSTLD ? I saw recently, that setting HOSTLD=ld.lld is not
> > yielding the expected result (some tools, like e.g. fixdep still require
> > an `ld` to be in PATH to be built). I did not find the time to look into
> > that yet, but I would like to consistently switch to the llvm toolchain
> > (including linker and possibly more) also for hostprogs.
>
>
> HOSTLD=ld.lld worked for me, but HOSTCC=clang did not.
>
>
>
> HOSTCC=clang without CC=clang fails to build objtool.
>
> The build system of objtool is meh.  :(

Let's tackle that in a follow up, with the goal of build hermiticity
in mind.  I think there's good feedback in this thread to inform the
design of a v2:
1. CLANG_AS=0 to disable integrated as.  Hopefully we won't need this
much longer, so we don't need to spend too much time on this, Masahiro
please just choose a name for this.  llvm-as naming conventions
doesn't follow the rest of binutils.
2. HOSTCC=clang HOSTLD=ld.lld set by LLVM=1 for helping with build hermiticity.

>
>
>   HOSTCC  scripts/mod/sumversion.o
>   HOSTLD  scripts/mod/modpost
>   CALL    scripts/checksyscalls.sh
>   CALL    scripts/atomic/check-atomics.sh
>   DESCEND  objtool
> error: unknown warning option '-Wstrict-aliasing=3'; did you mean
> '-Wstring-plus-int'? [-Werror,-Wunknown-warning-option]
>   HOSTCC   /home/masahiro/workspace/linux-kbuild/tools/objtool/fixdep.o
>   HOSTLD   /home/masahiro/workspace/linux-kbuild/tools/objtool/fixdep-in.o
>   LINK     /home/masahiro/workspace/linux-kbuild/tools/objtool/fixdep
>   CC       /home/masahiro/workspace/linux-kbuild/tools/objtool/exec-cmd.o
>   CC       /home/masahiro/workspace/linux-kbuild/tools/objtool/help.o
>   CC       /home/masahiro/workspace/linux-kbuild/tools/objtool/pager.o
>
>
>
>
>
>
> > Cheers,
> > Matthias
> >
> > >
> > >  Many distributions support update-alternatives to switch the default
> > >  to GCC, Clang, or whatever, but reviewers were opposed to this
> > >  approach. So, this commit does not touch the host tools.
> > >
> > >Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > >---
> > >
> > > Documentation/kbuild/kbuild.rst |  5 +++++
> > > Documentation/kbuild/llvm.rst   |  5 +++++
> > > Makefile                        | 20 ++++++++++++++++----
> > > 3 files changed, 26 insertions(+), 4 deletions(-)
> > >
> > >diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
> > >index 510f38d7e78a..2d1fc03d346e 100644
> > >--- a/Documentation/kbuild/kbuild.rst
> > >+++ b/Documentation/kbuild/kbuild.rst
> > >@@ -262,3 +262,8 @@ KBUILD_BUILD_USER, KBUILD_BUILD_HOST
> > > These two variables allow to override the user@host string displayed during
> > > boot and in /proc/version. The default value is the output of the commands
> > > whoami and host, respectively.
> > >+
> > >+LLVM
> > >+----
> > >+If this variable is set to 1, Kbuild will use Clang and LLVM utilities instead
> > >+of GCC and GNU binutils to build the kernel.
> > >diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > >index d6c79eb4e23e..4602369f6a4f 100644
> > >--- a/Documentation/kbuild/llvm.rst
> > >+++ b/Documentation/kbuild/llvm.rst
> > >@@ -55,6 +55,11 @@ additional parameters to `make`.
> > >         READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> > >         HOSTLD=ld.lld
> > >
> > >+You can use a single switch `LLVM=1` to use LLVM utilities by default (except
> > >+for building host programs).
> > >+
> > >+      make LLVM=1 HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
> > >+
> > > Getting Help
> > > ------------
> > >
> > >diff --git a/Makefile b/Makefile
> > >index c91342953d9e..6db89ecdd942 100644
> > >--- a/Makefile
> > >+++ b/Makefile
> > >@@ -409,16 +409,28 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
> > > KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
> > >
> > > # Make variables (CC, etc...)
> > >-LD            = $(CROSS_COMPILE)ld
> > >-CC            = $(CROSS_COMPILE)gcc
> > > CPP           = $(CC) -E
> > >+ifneq ($(LLVM),)
> > >+CC            = clang
> > >+LD            = ld.lld
> > >+AR            = llvm-ar
> > >+NM            = llvm-nm
> > >+OBJCOPY               = llvm-objcopy
> > >+OBJDUMP               = llvm-objdump
> > >+READELF               = llvm-readelf
> > >+OBJSIZE               = llvm-size
> > >+STRIP         = llvm-strip
> > >+else
> > >+CC            = $(CROSS_COMPILE)gcc
> > >+LD            = $(CROSS_COMPILE)ld
> > > AR            = $(CROSS_COMPILE)ar
> > > NM            = $(CROSS_COMPILE)nm
> > >-STRIP         = $(CROSS_COMPILE)strip
> > > OBJCOPY               = $(CROSS_COMPILE)objcopy
> > > OBJDUMP               = $(CROSS_COMPILE)objdump
> > >-OBJSIZE               = $(CROSS_COMPILE)size
> > > READELF               = $(CROSS_COMPILE)readelf
> > >+OBJSIZE               = $(CROSS_COMPILE)size
> > >+STRIP         = $(CROSS_COMPILE)strip
> > >+endif
> > > PAHOLE                = pahole
> > > LEX           = flex
> > > YACC          = bison
> > >--
> > >2.17.1
> > >
> > >--
> > >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403051709.22407-1-masahiroy%40kernel.org.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406112220.GB126804%40google.com.
>
>
>
> --
> Best Regards
> Masahiro Yamada
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARkFN8jTD8F3CU7r_AL8dbqaKpUuou4MCLZvAYLGs9bYA%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmHxeZ%2BT1OsOhW25pPygHM4D21OgZqRk141xbjP437-1w%40mail.gmail.com.
