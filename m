Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWEXTWDQMGQEJOETBMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B43F13C198D
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 21:02:48 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id h22-20020a7bc9360000b0290215b0f3da63sf1196719wml.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 12:02:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625770968; cv=pass;
        d=google.com; s=arc-20160816;
        b=CO3jFe1h8zy1BaCIlWuGwZ91LKbSEhmIRK85T6OOtgI8BxYBMO5Db045xiSCqT3L5S
         D2Xxeru6qt2xy3Okpe5BQbYl0lrg/zjeIX37Srq1+Ft24FJc+9NndrxjfuoduueevQsE
         8EVaIYNdWQBanRDjse4dtAt46ckEuNP1ls+MBq52YMPSGiCSB40IL1JBDvkoaEBl4kH5
         2hIDs28iCsYWJHwNDyw6qZ17cwQKIXTASKlgxHkkLLqkzauQnegE+kntQdHH51Kfu+uT
         GFKi1kSR5gg5kv2XzfufsLhcbjoSK2qj95TCbbjFOE+iFdraYrDVhDhaYz/gYrt/lkwW
         L8xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ws7606Zpnn7lDVyARSxSZQi/BFzFNEeTjUCx6APfBpU=;
        b=vbPiwFXK4sZKq5jh5Gbt0DJ35bDeu2tjFnCnzHp3UBVOAq57//O1cl1gYWkpc0WYDN
         mQr5hJcqybqzo7OFIVLaCi1UzkMSKovfRuotxg2laV6h8AbjjgxFa80RGEELb/I1EwcG
         6ZgntCbZF6ethsdhvAoaQklmt0kY16N4Mr3LmJjH5QdnXOXFlimxCMMhgQzm060v1D4n
         te7TC2w5P/opPtnrxg+Fui0wXLVYmyQN7rEvwWLEC+laKUpTRbVP8sbphrFx5EQHQTGC
         Gc5uZ4SuK1rGJVYL8NAZk2AZoWuHAyjqAUn/4cJf5KmxVK9Vdslrpgwer5NlGW0A63Tf
         kHdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SWRi6RCp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ws7606Zpnn7lDVyARSxSZQi/BFzFNEeTjUCx6APfBpU=;
        b=aqTzuRXeUuGdf1k/md9meSVe/Aj4fcvuzkgpeZ+qvyOsZ2f8sfmPYVSMJcH9oPgtuu
         L10FnmqDSltBa29FmWtAToJS3vi+0PPOUDFmPXZlrcnQAcfVCG8AMORuDu7Tp203gHbL
         kQpGscz+ldzeGr0PJPQOLroWc/MhrbIXDxCNCSYt2eBNDSo2yegXou6rD1l+LVZrciUp
         VnvKa5odTp03KGF98W+fciVG9KK82Kb+pHbGRmIGETnkFYFvO2V0f30OhRDSW2IQUTP+
         WkJxwW7iOEl9yxpH1Ohy2JPLzKFdBQgEH2BQK5ttIY4OXLMONwbYH8HlQ8Mt5v8yR8pX
         RRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ws7606Zpnn7lDVyARSxSZQi/BFzFNEeTjUCx6APfBpU=;
        b=Kl832n297XSg4vdLxu5wOO8lKRDVsDLv0L4ZNj0TFuKcJ7z9FMypw/CYmnS5VdhCH1
         tNi6Jx+Ftfsf49nL4FlfUd5uZevoR1NXh11WWJ7IpZ7B4UDcyaASJCTmSuxOyb6LwdpZ
         SsDH/ni2SX4X7RmBbXbsRqw8rtekXKtLbAE9nO5j+x9QmIWmyik8DPkObe7eBJzF+xTO
         YPpB6eKttJy6tvudnhF/caS4Ae2xxbJvI+182UxGePBzUFjnr8hYGQ6NaMRdF5W0tn2w
         8Hqkl6rxIPAvXP58g5NTF6kCaj8Be2FzknRnwB9ZSyIppFe2BLwdjmdv+m8G8B9Zyvl6
         Qirw==
X-Gm-Message-State: AOAM531oLK0o2Aqj00Q9y/aq7TxxB9yhwN8Gkktf+nRHbTZ9mGAJ7sEg
	C50kHZ5qeh6nYDR08SylV20=
X-Google-Smtp-Source: ABdhPJzmNNT5CkeJTFsxDpDL2ym9NtOXRThJ/4RvIEUg2BEKvwf9iE17/E0yCzEtq8xkajAazjFgjA==
X-Received: by 2002:adf:f2d1:: with SMTP id d17mr18230137wrp.254.1625770968411;
        Thu, 08 Jul 2021 12:02:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4c50:: with SMTP id n16ls2694289wrt.2.gmail; Thu, 08 Jul
 2021 12:02:47 -0700 (PDT)
X-Received: by 2002:a5d:6506:: with SMTP id x6mr5768654wru.86.1625770967598;
        Thu, 08 Jul 2021 12:02:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625770967; cv=none;
        d=google.com; s=arc-20160816;
        b=fwvMUW2dTRh5rgj1sN396u0TFKlMKes4usFeFcCugjZARC4kiC+mErwBWWBZkOzosS
         x5rTaMISOn9QD8dKV0xTYhcSSAlcy5QwjaDucJu4Cxb9lr3uo0KrkRPEQ3U+uQwaNWWB
         D16JKgz6mAekjDkbnZsy3+QcbsuioEkeZdjH+rW8SKx29QU4zIpPrwzytyiB9Y29ezgh
         Y3elU5M3sZ1zModuBZOkx1gqsJEUHHCYVzJEnZ1YRXXJ/XrZ1RbXVen16tcVyxcUsG5Z
         3oLDGqp2Eyq+7lINLedzepbPsP6nU49XOBpTiEggy3in+TJhjWc9l9WHPQRyB1wvGvot
         5AjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iCjglDRVYYfDMnEWeZjnuRPIHpWzdHVzJbk3D4IPcVA=;
        b=LHpNgH3gr3/go3iEKQSADroGtq9Cl7HPZKZxkztalfvRhku3umbdxtwwVQEz0iZcae
         xNMec0lZ1tGEU8Is3Jdq4v6Q1azRsazGgNKXg0Ilvj8NDkPtWt80v+cD8ZsZD6FmT1lL
         /oRZ0gMSddm/ZshSWbNNK2qqrYTLfiDvvISVIT3rJPES+5uQ6qxZH8XA/UCK02UiRKte
         nqTeYeQsV+oPyr+aYnYEJOPI1IwUrtY3YyQQJj6Q1eKyKCVNTNLZHvKMYOayo1zmc2yU
         tWaTurDhW4rY8zirsB1iAN8o+/hcbuNoJKMIjgvlx37arch6lQnLqaKlqTJs9+JfKISV
         aZ0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SWRi6RCp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id m12si222917wms.2.2021.07.08.12.02.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 12:02:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id a18so18199712lfs.10
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 12:02:47 -0700 (PDT)
X-Received: by 2002:a05:6512:3884:: with SMTP id n4mr24859969lft.547.1625770966574;
 Thu, 08 Jul 2021 12:02:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
 <20210707224310.1403944-3-ndesaulniers@google.com> <CAK7LNAR66iE0w4bjpMVEz6W==mnc59MEnRWm1MXrqApP0aE4Qw@mail.gmail.com>
In-Reply-To: <CAK7LNAR66iE0w4bjpMVEz6W==mnc59MEnRWm1MXrqApP0aE4Qw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 8 Jul 2021 12:02:35 -0700
Message-ID: <CAKwvOdmufESjYQVZmaPdTXgZO5Ogz+OppVSUGAn6BZaC+YZhbw@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>, Fangrui Song <maskray@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SWRi6RCp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Thu, Jul 8, 2021 at 3:23 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Thu, Jul 8, 2021 at 7:43 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > We get constant feedback that the command line invocation of make is too
> > long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> > target triple, or is an absolute path outside of $PATH, but it's mostly
> > redundant for a given ARCH.
> >
> > If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
> > KBUILD_CFLAGS, and KBUILD_AFLAGS based on $ARCH.
> >
> > Previously, we'd cross compile via:
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linxu-gnu make LLVM=1 LLVM_IAS=1
> > Now:
> > $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> > Suggested-by: Arnd Bergmann <arnd@kernel.org>
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes RFC -> v1:
> > * Rebase onto linux-kbuild/for-next
> > * Keep full target triples since missing the gnueabi suffix messes up
> >   32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
> >   drop references to arm64.
> > * Flush out TODOS.
> > * Add note about -EL/-EB, -m32/-m64.
> > * Add note to Documentation/.
> >
> >  Documentation/kbuild/llvm.rst |  5 +++++
> >  scripts/Makefile.clang        | 38 +++++++++++++++++++++++++++++++++--
> >  2 files changed, 41 insertions(+), 2 deletions(-)
>
>
>
>
>
>
>
>
> When I was considering a similar idea, my plan was
> to implement this in Kconfig instead of in Makefile
> because that will pass the compiler information
> in one direction (only from Kconfig to Kbuild), but
> that is not so important. We can change it later
> if needed.
>
> I did not complete it because I was investigating
> some issues (especially [3] below), but maybe
> that is something we don't care about.
>
> Can you address [2] below at least?

Sure!

> If we do not have any concern, I can merge it.
> It is likely so because people are only discussing
> "We want to omit omit CROSS_COMPILE".
>
>
>
>
>
>
>
> [1] explicit target triple for native builds
>
> The default target of my distro clang
> is x86_64-pc-linux-gnu.
>
> $ clang --version
> Ubuntu clang version 11.0.0-2
> Target: x86_64-pc-linux-gnu
> Thread model: posix
> InstalledDir: /usr/bin
>
> So, previously, the kernel was built with
> implied --target=x86_64-pc-linux-gnu.
>
>
> With this patch, --target=x86_64-linux-gnu will be
> explicitly specified.

Correct. We've been doing this for x86 builds of Android kernels for a
while without issue.

I can add this note to the commit message:
```
For native builds (not involving cross compilation) we now explicitly
specify a target triple
rather than rely on the implicit host triple.
```
The only downside I can think of now is that we've encountered E2BIG
for excessively long command line arguments in the past (mostly for
out of tree drivers in Android).  I'm having trouble imagining how the
implicit host triple could differ in a way from these explicit ones
that would break native compilation.  Then again, someone did just
submit patches for building Linux on BSD.

If we don't want to do that, perhaps we could check `cross_compiling`.
Why did you make that variable lowercase in
commit f02aa48dde8b ("kconfig: use /boot/config-* etc. as
DEFCONFIG_LIST only for native build")?
Because the "origin" is not the environment?

> The same applies to native-builds of other architectures.
> For example, when a user builds the arm64 kernel on
> an arm64 server, --target=aarch64-linux-gnu is
> explicitly forced.
>
> I guess, this is a good direction because the produced
> code will be more deterministic, irrespective of the
> Clang's configuration.
>
>
>
> [2] 32/64-bit configuration is toggled in Kconfig time.
>
> Initially, you submitted only arm64. Maybe, it was intentional
> since arm64 is the simplest case.
>
> In the kernel tree, arch/arm and arch/arm64 are very special
> cases where 32-bit and 64-bit are separated by directory.
>
> Some of the other architectures are bi-arch, and
> 32-bit/64-bit is specified by CONFIG_64BIT in Kconfig time.
>
> When Makefiles are being parsed, we actually do not know
> whether the user is planning to configure the kernel
> for 32-bit or 64-bit because CONFIG_64BIT is not
> specified at this point.
>
> ARCH=x86 + CONFIG_64BIT=y
> will build the x86_64 kernel, and
> ARCH=x86 + CONFIG_64BIT=n
> will build the i386 kernel.
>
>
> Then, you may wonder
>
>   else ifeq ($(ARCH),x86)
>   CLANG_FLAGS    += --target=x86_64-linux-gnu
>
> ... works?
>
> Yes, it does fortunately.
>
> -m32/-m64 takes precedence over the
> {x86_64,i386} part of the target triple.
>
> As far as I tested,
>
>       clang --target=x86_64-linux-gnu -m32
>
> produced i386 code.
>
> Interestingly,
>
>     clang --target=i386-linux-gnu  -m64
>
> produced x86_64 code.

Correct. -m32/-m64 and -LE/-BE refine the target triple that the
driver builds up.

> We must rely on this behavior of Clang because
> --target (which is contained in CLANG_FLAGS)
> must be specified before the Kconfig time.
> Then, a user can toggle CONFIG_64BIT any time
> from menuconfig etc.

Correct. So we can't quite move all clang flags into one Makefile
under scripts/ if they rely on Kconfig being run first. This new
makefile is a "pre-kconfig" set of flags.

> With this in mind, using $(ARCH) as if-else
> switches is pointless.
> $(SRCARCH) is the only meaningful input.
>
>
>   else ifeq ($(ARCH),i386)
>   CLANG_FLAGS    += --target=i686-linux-gnu
>   else ifeq ($(ARCH),x86)
>   CLANG_FLAGS    += --target=x86_64-linux-gnu
>   else ifeq ($(ARCH),x86_64)
>   CLANG_FLAGS    += --target=x86_64-linux-gnu
>
> should be replaced with:
>
>   else ifeq ($(SRCARCH),x86_64)
>   CLANG_FLAGS    += --target=x86_64-linux-gnu

Sure, it looks like this would simplify the i386 vs x86_64 handling,
and the use of SRCARCH does seem more prevalent throughout the
codebase. I will fix in v2.

> Some architectures are not only bi-arch, but also bi-endian.
>
>
> You hardcoded 64bit little endian for ppc:
>
>    else ifeq ($(ARCH),powerpc)
>    CLANG_FLAGS    += --target=powerpc64le-linux-gnu
>
>
> But, we must rely on the fact that
>
>    clang  --target=powerpc64le-linux-gnu -mbig-endian -m32
>
> produces big-endian 32-bit code.
>
> This makes the "64le" part meaningless.
>
>
> This should be noted. Otherwise it is difficult

It is noted; in the top part of the newly added make file.
```
  1 # Individual arch/{arch}/Makfiles should use -EL/-EB to set
intended endianness
  2 # and -m32/-m64 to set word size based on Kconfigs instead of
relying on the
  3 # target triple.
```
Is there somewhere/somehow else you'd like me to note that?

> to understand why --target=x86_64-linux-gnu works fine
> with building the i386 kernel.
>
>
>
> [3] User-space compilation
>
> This does not matter to the kernel itself, but
> Kbuild compiles some userspace programs for
> the target architecture.
> See the samples/ directory for example.
>
> Another example is net/bpfilter/Makefile, which
> embeds the user mode helper when
> CONFIG_BPFILTER_UMH=y.
>
> For this purpose, Kconfig checks if $(CC) is
> capable of linking the userspace.
> (CONFIG_CC_CAN_LINK).
>
> When cross-building with Clang, I cannot see
> CONFIG_CC_CAN_LINK set.

Yes, that is a known issue.
https://github.com/ClangBuiltLinux/linux/issues/1290

>
> If we care about CONFIG_CC_CAN_LINK, probably,
> --sysroot or something should be set according to:
>
> https://clang.llvm.org/docs/CrossCompilation.html
>
> This is an existing issue, but I have no time
> for looking into this.
>
> On debian systems, sysroot for cross-compilation
> are located in /usr/aarch64-linux-gnu,
> /usr/arm-linux-gnueabi, /usr/arm-linux-gnueabihf,
> /usr/i686-linux-gnu/ etc. but I do not know if it
> is the same across distros.

Right. If I remember the glibc/binutils/gcc bootstrap dance, I thought
gcc was configured with a known path to a particular version of glibc.
So a cross toolchain knew where to look for its cross libc.

Clang doesn't have such configure time step; it can cross compile
easily with one binary, but cross linking a working executable is
still a PITA due to not knowing which cross libc to link against.  I'm
not sure whether we need to improve Clang's logic when cross compiling
to look in "sane default" paths for a cross libc, or if we should just
add some flag when cross compiling with clang in Kbuild (such as
--sysroot) in order for CONFIG_CC_CAN_LINK to work as expected.
Fangrui probably has a good opinion about this.

Zig (the compiler, but also the language name) can do this quite
nicely. I'm envious.
https://twitter.com/andy_kelley/status/1241409388532948992?lang=en
https://www.youtube.com/watch?v=pq1XqP4-qOo

But this is also somewhat orthogonal to the goal of "infer
CROSS_COMPILE (or really, --target=) from ARCH (or really, SRCARCH)" I
think.  It's still interesting for us all to discuss on-list though.

>
>
>
>
>
> [4] What is the best target if we hard-code it?
>
> Currently, we require the correct CROSS_COMPILE
> is provided by users.
>
> The target might impact the performance
> or the ABI.
> It was difficult for me to define
> which one is better than another.
>
> For example for ARCH=arm, which is better
> --target=arm-linux-gnueabi or
> --target=arm-lnux-gnueabihf or
> something we don't care about?

Yes, this is a case I was interested in.  I've used either
interchangeably without issue for years.  That's not to say we get the
same binary image with either.

I get the same .config for the defconfig target with either.

If I zero out KBUILD_BUILD_TIMESTAMP and the build number, I still get
different sha1sums.  Though that assumes clang, lld, and kbuild are
all deterministic, which I also haven't spent time to verify.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmufESjYQVZmaPdTXgZO5Ogz%2BOppVSUGAn6BZaC%2BYZhbw%40mail.gmail.com.
