Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKNC2L6QKGQEFWHPVYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8BA2B7492
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 04:12:42 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id n203sf309522oif.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 19:12:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605669161; cv=pass;
        d=google.com; s=arc-20160816;
        b=DPugeGBkgJji4Dp2ybJTIPsSnITfUmyBIaWEUfvELSTGp2hmbYjrzv7pk54J6HcYIp
         sLtCK56q7CsJeLdRj1IMAmSDlQlCh5Bun96Rg+zUgxmgHHQ+d2dIATJRqF6yXpJTk+r2
         w1l851gta3Ci3vALH/V5sXs3CFES04NABd+oIV4GnjMHHXr+b9EUFEB86XWQ3S7TXIaV
         pWjmds1zhNTVMseZSusA7rtvAQEYIrG6GwWLhLKypDVQzrsTIKhaasmrT+JmaTOZP6GH
         JE4ikQULoN0se0ZwlmqZqup4tG/papHgLdArCCMjsD8QqoRLJaW56LdGn/L3Rx7QNHcw
         whzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=SY70YXTngK+gSXYUuiwp7gv/kitu+R2rtVQJkL258UQ=;
        b=tf2a9i5XOKrmLD1/sxFlLuJKzU3FEeGB2nY4XQhdkHQvawi7yok813/Xep93k7XdQY
         aAQ/nNlFjL4gngmSVRm4Adi1sa3SFVXpAYk60bss5L9vKKVDaoyIozTP+5yGKGR1qzrZ
         7yWLODSHOVwBG3T5Or3Vz3HmzV1rfvWkiETm7ESkixuc2hRtTBsBJdKqQjdkOB3k7t2a
         62HlO5Ilqekw9or9sYVYbiX67vBmbM9PpGiq3WnbuD8JB+VFvxQsX56ssXUsmHRlquUx
         XWY0VyQb45hFr0bqT/DRVxfCPN8h/xyIpsirkjJ+KFjmqfJxpogMmqwEZ4ZU84jkNVcf
         6dKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o34wWzdF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SY70YXTngK+gSXYUuiwp7gv/kitu+R2rtVQJkL258UQ=;
        b=sXRWnWlfgaNCtpYQlPQgx8Y5O2LU65DPQOzgmsgyJPLvsD0K3i0OwbmXYvmsyxcvaP
         LOeAybmVu07r0gaf9ZbZJikOPqLDfGo7zOhI82/z0Ph44ozkRqYQivbrAFK0wK8/Lta+
         D7GN+Er4x5hSSFwXRgGai2HJ2libgOf/lkVesQWCOxML2UfAMirMqD+8ZOQvCrGRoa9s
         Mtr2z7ku49Ey3gBmCGSLZHOSMyB2nECdAjIHhjS8xNDKWmYTvz+ae0ipsoBFnuPns81s
         N1OC2oZtybYSXvnu5G+4k6M1jbodJqZBAhhoqJaRfjhcGWTcAGa9MnspKEICRx6LBWJe
         UVFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SY70YXTngK+gSXYUuiwp7gv/kitu+R2rtVQJkL258UQ=;
        b=qrofBkqjCLZWsYiwEO/b5BKuNVS9PigSE/RVRX40NY4MkMejkhFnS++nyesulUrddt
         KcQeOC1rauDJkmE2fMlsRle/emnbOsQMtDiXxes6SA8lb5Lll2hI6z38T4uy3XH6RTkV
         tCYIWqlzyBBCfUrPcINAbIBJj1/VbNOK4hetrfHKB/G2kxtH3fYBcPQOsTTfQRST/adw
         +PVN51ZLSTGUqyZGg4LOtdfLg98el4eT8bpooGuj1WwDazeI8A054BviXXYo5hoHSxk+
         rY8LEpQ+rI5eijX5rErWyLnZeqMUj5YVNpene9at6ONXnxXgFlvUhcZZ9Jh6xNcEFrWq
         37SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SY70YXTngK+gSXYUuiwp7gv/kitu+R2rtVQJkL258UQ=;
        b=GBgF/JXCxfoYrVhoHpZzPbOo2R1i/ifnyiUY41Irtz522PpZPzXXQrsFrjJP6xEO7/
         qK3PbPTjqtbtopYJomtc4wgNy0bxa6BBTNZTvGc7DzWGtszRnQ23Q7jO1hWwor7Fd0Ec
         if58oUwss85G+Q0t60Vw8dnCh2POc0q4vq2Y0MQ9EsIFMoaSdHFfTzpa0nY1rzU2F0dJ
         iistkWwyYgSUFeFJ5VEhsF8dsUQHvHKTlVM5qUXoy9HEAmauKTu46nxhoSGirs3h56i4
         Ua53AJkgU11P9v8iu4tlcqjjWOrjh0Q+HP+GuRK/OfPywaF3KvTeakxVZBtA7oO2Autf
         vseg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Bqww6TvBPT98kVbr3vSBal3gyULMpt/WYrd6CcUOCh68R3LbA
	MGF/zNB4ChC8SgNRlb4d3MA=
X-Google-Smtp-Source: ABdhPJyqe4vnOnThLBZQYhkKeLo1XWZW/ecqj7Rk83G3Vp3+3syrnUyEuQq4hRyrpr//kb1x3BW45Q==
X-Received: by 2002:aca:cf4b:: with SMTP id f72mr1490934oig.157.1605669161239;
        Tue, 17 Nov 2020 19:12:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dd84:: with SMTP id u126ls3257423oig.6.gmail; Tue, 17
 Nov 2020 19:12:40 -0800 (PST)
X-Received: by 2002:aca:1b0a:: with SMTP id b10mr1514151oib.9.1605669160876;
        Tue, 17 Nov 2020 19:12:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605669160; cv=none;
        d=google.com; s=arc-20160816;
        b=1GQ8McnGwfONmowUJFCGLG/wfVVqy2k/uXpKak11JhDPZYoCFwTZ+eq3b6/lPzOds1
         vZJsFO85wqmaBOlZXlz7kql0qxo6BQjvM2sEXfh4+3nFcoY4C9+hc753hA3xU6y0Z2ie
         Nlj5MhkhHWOK5kWDLuwBZTU6SD9xsOiIgbX0c6AbDNH1fNAFiNPJuR2NMn1t7Op616oE
         macXf9YaxkzvcRtT53NohKhPNayyqeSFXTcNRj2gkgZiWhM7C5LfS1InsVd8yCzObZ8U
         BBaD77XqwWbqq7fvZ4OAeP8TQVs9n3P4wtH4C+80EsmBRZnIl93PaQVNa93eJpjgjfYE
         ppzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fXDEaamCc9cNe2G88QdF1xReSrB2zl6AsnQsnXkLyag=;
        b=upC1NZganNGmNc1OyNicNZCByo1OmEdagcf9lnJ3rLTep30da3fmGgTAzwjxsmyULC
         1YduESpg3xPRoF14mQEiJbDn4iXq5JZSERVjwsvKuv0ki+YCl14QmZR8R64Mh0hdQ64u
         NBVHmdaVrbk+aZNCziN5zMIK2WiY0BvAlPFsBByE540r6jMSp+/bMX6FxhFNdotwwV1j
         5c0JRusG0XF5ZrtQhEzp3aMFwfczyHOAPrCOeoQ0TXiyWxa9zfPPbfHvHsRnGiPYd0nC
         dQhS80XWR92S/dxhmbNikvQyCeGhwRVewuUcOLxaucvHNKyBemcwzKLoj+z0+OuPyfP8
         G2MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o34wWzdF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id d20si2359619oti.1.2020.11.17.19.12.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 19:12:40 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id y197so490382qkb.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 19:12:40 -0800 (PST)
X-Received: by 2002:a37:4a8e:: with SMTP id x136mr2917466qka.434.1605669160339;
        Tue, 17 Nov 2020 19:12:40 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id a6sm1877666qkg.136.2020.11.17.19.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 19:12:39 -0800 (PST)
Date: Tue, 17 Nov 2020 20:12:37 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Kees Cook <keescook@chromium.org>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld
 10.0.1
Message-ID: <20201118031237.GA1001457@ubuntu-m3-large-x86>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <20201113195553.1487659-2-natechancellor@gmail.com>
 <CAKwvOdni24b_70xm+xK_7r2N77WrsOk4_OgoLiwSzZ5f+6vqfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdni24b_70xm+xK_7r2N77WrsOk4_OgoLiwSzZ5f+6vqfA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o34wWzdF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Nov 17, 2020 at 11:41:15AM -0800, Nick Desaulniers wrote:
> On Fri, Nov 13, 2020 at 11:56 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
> > along with a few others. Newer versions of ld.lld do not have these
> > warnings. As a result, do not add '--orphan-handling=warn' to
> > LDFLAGS_vmlinux if ld.lld's version is not new enough.
> >
> > Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Reported-by: kernelci.org bot <bot@kernelci.org>
> > Reported-by: Mark Brown <broonie@kernel.org>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1193
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  MAINTAINERS            |  1 +
> >  init/Kconfig           |  6 +++++-
> >  scripts/lld-version.sh | 20 ++++++++++++++++++++
> >  3 files changed, 26 insertions(+), 1 deletion(-)
> >  create mode 100755 scripts/lld-version.sh
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 3da6d8c154e4..4b83d3591ec7 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4284,6 +4284,7 @@ B:        https://github.com/ClangBuiltLinux/linux/issues
> >  C:     irc://chat.freenode.net/clangbuiltlinux
> >  F:     Documentation/kbuild/llvm.rst
> >  F:     scripts/clang-tools/
> > +F:     scripts/lld-version.sh
> >  K:     \b(?i:clang|llvm)\b
> >
> >  CLEANCACHE API
> > diff --git a/init/Kconfig b/init/Kconfig
> > index a270716562de..40c9ca60ac1d 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -47,6 +47,10 @@ config CLANG_VERSION
> >         int
> >         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> >
> > +config LLD_VERSION
> > +       int
> > +       default $(shell,$(srctree)/scripts/lld-version.sh $(LD))
> > +
> >  config CC_CAN_LINK
> >         bool
> >         default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
> > @@ -1349,7 +1353,7 @@ config LD_DEAD_CODE_DATA_ELIMINATION
> >           own risk.
> >
> >  config LD_ORPHAN_WARN
> > -       def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn)
> > +       def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn) && (!LD_IS_LLD || LLD_VERSION >= 110000)
> >
> >  config SYSCTL
> >         bool
> > diff --git a/scripts/lld-version.sh b/scripts/lld-version.sh
> > new file mode 100755
> > index 000000000000..cc779f412e39
> > --- /dev/null
> > +++ b/scripts/lld-version.sh
> > @@ -0,0 +1,20 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +#
> > +# ld.lld-version ld.lld-command
> 
> ^ it looks like this format was copied from scripts/gcc-version, but
> it's kind of curious/cryptic to me for a comment about usage.  Is it
> necessary?  A comment in the form:
> 
> # Usage: ./scripts/lld-version.sh ld.lld
> 
> Would be clearer to me.
> 
> > +#
> > +# Print the linker version of `ld.lld-command' in a 5 or 6-digit form
> > +# such as `100001' for ld.lld 10.0.1 etc.
> > +
> > +linker="$*"
> > +
> > +if ! ( $linker --version | grep -q LLD ); then
> > +       echo 0
> > +       exit 1
> > +fi
> > +
> > +VERSION=$($linker --version | cut -d ' ' -f 2)
> 
> This is going to invoke the linker potentially twice if it's LLD.
> Would it be nicer to capture the output of `$linker --version`, check
> which linker it is, then slice that up via `cut` to get the version?
> 
> This version is fine to me, but if you're going to send a v2, that
> might be a nice slight cleanup.  Otherwise,
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> (Please drop those tags if you modify this for v2 and I'll rereview/retest).

Below is the impending v2 if you wanted to give it an early test, I plan
to send it along formally Thursday morning with all of the addressed
feedback so far.

Cheers,
Nathan

======================================================================

From 1ef9b12daf2b19ed6687423483d5bb1f5cf82e13 Mon Sep 17 00:00:00 2001
From: Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 17 Nov 2020 20:11:26 -0700
Subject: [PATCH] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld 10.0.1

ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
along with a few others. Newer versions of ld.lld do not have these
warnings. As a result, do not add '--orphan-handling=warn' to
LDFLAGS_vmlinux if ld.lld's version is not new enough.

Link: https://github.com/ClangBuiltLinux/linux/issues/1187
Link: https://github.com/ClangBuiltLinux/linux/issues/1193
Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
Reported-by: kernelci.org bot <bot@kernelci.org>
Reported-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 MAINTAINERS            |  1 +
 init/Kconfig           |  9 ++++++++-
 scripts/lld-version.sh | 20 ++++++++++++++++++++
 3 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100755 scripts/lld-version.sh

diff --git a/MAINTAINERS b/MAINTAINERS
index e451dcce054f..e6f74f130ae1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4284,6 +4284,7 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
 F:	scripts/clang-tools/
+F:	scripts/lld-version.sh
 K:	\b(?i:clang|llvm)\b
 
 CLEANCACHE API
diff --git a/init/Kconfig b/init/Kconfig
index a270716562de..b9037d6c5ab3 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -47,6 +47,10 @@ config CLANG_VERSION
 	int
 	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
 
+config LLD_VERSION
+	int
+	default $(shell,$(srctree)/scripts/lld-version.sh $(LD))
+
 config CC_CAN_LINK
 	bool
 	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
@@ -1349,7 +1353,10 @@ config LD_DEAD_CODE_DATA_ELIMINATION
 	  own risk.
 
 config LD_ORPHAN_WARN
-	def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn)
+	def_bool y
+	depends on ARCH_WANT_LD_ORPHAN_WARN
+	depends on !LD_IS_LLD || LLD_VERSION >= 110000
+	depends on $(ld-option,--orphan-handling=warn)
 
 config SYSCTL
 	bool
diff --git a/scripts/lld-version.sh b/scripts/lld-version.sh
new file mode 100755
index 000000000000..d70edb4d8a4f
--- /dev/null
+++ b/scripts/lld-version.sh
@@ -0,0 +1,20 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
+# Usage: $ ./scripts/lld-version.sh ld.lld
+#
+# Print the linker version of `ld.lld' in a 5 or 6-digit form
+# such as `100001' for ld.lld 10.0.1 etc.
+
+linker_string="$($* --version)"
+
+if ! ( echo $linker_string | grep -q LLD ); then
+	echo 0
+	exit 1
+fi
+
+VERSION=$(echo $linker_string | cut -d ' ' -f 2)
+MAJOR=$(echo $VERSION | cut -d . -f 1)
+MINOR=$(echo $VERSION | cut -d . -f 2)
+PATCHLEVEL=$(echo $VERSION | cut -d . -f 3)
+printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118031237.GA1001457%40ubuntu-m3-large-x86.
