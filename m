Return-Path: <clang-built-linux+bncBAABBW4WVD2AKGQET55G7XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0C919ECB6
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Apr 2020 18:46:21 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id e22sf10821193pgm.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 09:46:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586105179; cv=pass;
        d=google.com; s=arc-20160816;
        b=LDaCgbEynoQ1Cs+OHCONjY2WlfXqqU/zQYfgTwDpq2IPYsiOniPYh0VjXrd7IUWHXZ
         jFhkrNJVW2ctFEStPErtXQIDW95LIevIFQwkhcLIVq3dV/vjvLSLGyI8tuO55z7xidT6
         OxOSZVm9BbcPXeU8nY0P2shjYNW8wbNuIluTd3hHP7bzchyD5I12mTvdscv7xVe2Gln6
         ZDWI+wV8eto+Wo2R/+TYLcuDC4r71wyEvyjD3RV5XditKQLA1vTeJrjiOO4uEEtnDOe2
         eI/JhefC3xVENQT1zWDMr+BJcTIhFZbQXLlZ3duqifZyqEh03+ur166j8Ob1weIykLwW
         FKIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=l5Ykt1yHuAk1lsE42RRgs6xmb2qjRVxVJo32RreJLFU=;
        b=hArxqYauBg9EsgjxZXsnDGO2X5YIJ/luER1GMN6aGUIFeR9ys/wNWuKyAhFRbbOvZU
         34dNpTC/jURa4a+drCnDmq3L0JO0ewe5yDNrRncsmhTIXIHYraPrYZlW9R3MWHsuT5Gu
         iUSfPlJkpup7LGRwoT+w0fYbNd6fXF1u9UIOEEHDAAXevFYOgWnyJQ6ri7P8W4RiNqSH
         ObO8BjYotIHOLIymxQtfFk38AujpE9jMs/eUn3dcqqwuLSyEx1nkmHE35M5YcDfbM41S
         x5/tnpkbiwFprDr6Y4gdMTp/H7CEuqL6reNAUW9C0BUXrcrttedG3gmWIrlDV006aFPT
         uZeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Y5QCnFoz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l5Ykt1yHuAk1lsE42RRgs6xmb2qjRVxVJo32RreJLFU=;
        b=ZozVPV4z/kTM3PyWmCyhQxcI8SGUFHJ2/wTZ4fieR7Ptj4tvSsXk6TQPvm26STrXKw
         ChxyfdCKq3zWbm1BzpAO/vARsyi/qwU2dLL3TrUpPqlDgDQSrBMZeb3RVVvbDS0Y16Z+
         Bn0s4Jc3AlP3PHakxo7RI1NmlGMDyG0bvGWRDDYdvybzjCafkt9obY4U/wyn39jQa7I8
         VA5iRqXiDv+f79RD28LTYiDF+JGIt0FMTxYkdcIa99KtSa5ck+sWfaVNQiPVBeBta+sn
         wBPeWkDHtvw1eo9ZEUm0g5LY3OH4KBaD+KlHGahMTqmC1cDbAfa/HFoAesngCpwqsNbN
         dIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l5Ykt1yHuAk1lsE42RRgs6xmb2qjRVxVJo32RreJLFU=;
        b=c8twcP6sW0m06nBLDEfFhoPSv0KKXiEcHmLssI9iUr4hRCLLDSNxz+dpY108PK9z2h
         ifdL6LlC7U5ULeGYNRDBA8QCI+6iNaLwvxa/lh7AKuVhsQERPoe9M2hSFTYVo2cUdppI
         7QlIS4ET5YIXqx/D6Oew+EAV5gL9iTXA0uPsdXqyJ7b7f3VPzeRihElX7JIfbl+tUXlt
         Wstmpy6ZzZyFEqpE2LYYS1yiGJrETUBp6Rk3PdzgAoRpToeRa6irJ/HfjNUldhzbQFlR
         543rVbdai+CWnL0W9zWA4QER6A5i7rjiduP9IcwFTkpZuzeqk+ekMKzmJ/bOWTn+lt7V
         DxSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZwswI/vh7tEWwD1YjG07f7iwSZxzuu4++X0SH+R/ysgauZ2cEJ
	fJ33PEAUkWUNWB1vebK5cAQ=
X-Google-Smtp-Source: APiQypKfp3MpiXeS63f1lOW5SeD/0CW/u3TE7zZtWf8M4mLOzc7S3W3fAuOZZD63RgF4WP2WQgUKUw==
X-Received: by 2002:a65:55c6:: with SMTP id k6mr18483757pgs.52.1586105179620;
        Sun, 05 Apr 2020 09:46:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff18:: with SMTP id f24ls9044308plj.0.gmail; Sun, 05
 Apr 2020 09:46:19 -0700 (PDT)
X-Received: by 2002:a17:902:d909:: with SMTP id c9mr17029341plz.6.1586105179257;
        Sun, 05 Apr 2020 09:46:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586105179; cv=none;
        d=google.com; s=arc-20160816;
        b=ZlCDWjs52Lwyh2qyypf8EcQ+KgbR/a+cjQ8NOtMlYp8sNm4UCoVYirL3X3mRCfY5bs
         Wh0uE68ZXp3F2/lzztv7J8t9eNjQG31R99OPfPm8P3NRekGDLwhyYJIVfUaFh3RHc0Vq
         T0c3d9S0QDoUNyihsQASuBX794Ahje1N0NrA1JZ0pfQozWbSa79YY0d3qNcPTu1MOgLA
         BDY7J6/DlsnIwQRlbggYwwyKAuMAo3mOQZ4frLODZJ3/fhObpXtmt98Nt6HHVFDUh3ny
         ggTtN7t8RS4rYLGcuyRhKAxge13/lAIYN1pQ+CSGwQ7/JqKfXzx8nLsKQa9cPeUIsrBG
         0qdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=LDPKC1ers4KTra5PaosAQKb9OtIhKkb2IRgJKJ1PucE=;
        b=Gi52tOtmqb8siMxIwlvIrXSZwtauefxmeyoAMdC0tJ4vfwTZzj99a+DK9c2ZDf+8cs
         FGrFVZ3cRVQZsLTv2veYmipMfAxZ1XEjnyGTnHX3NieAPY6ymoqzDGhUlSkbG80ADNyd
         AM1OsxmzMZymPVyn9WKvODPLsvlflmxYlvfsp/Dnf3gCWiOW0i6ychMi+XLnorwsIpTz
         6JGI2BZwTLpZFRRMoNb3BVpxpvCLo0cxNLP6kAoejDmbEvgB7btWfgJglUHNeXB61k0Z
         SYDGfkj1kR+DXGt+VEKxBuYHvpQ4rgBGcJ40Qv/qBRGzJIEyFq3WGKo7Uz0PfQfSSenQ
         8gNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Y5QCnFoz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id 19si992321pgb.2.2020.04.05.09.46.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Apr 2020 09:46:19 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 035GjvV5019762
	for <clang-built-linux@googlegroups.com>; Mon, 6 Apr 2020 01:45:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 035GjvV5019762
X-Nifty-SrcIP: [209.85.222.48]
Received: by mail-ua1-f48.google.com with SMTP id f9so4593695uaq.8
        for <clang-built-linux@googlegroups.com>; Sun, 05 Apr 2020 09:45:57 -0700 (PDT)
X-Received: by 2002:ab0:20d6:: with SMTP id z22mr12839027ual.121.1586105156303;
 Sun, 05 Apr 2020 09:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200403051709.22407-1-masahiroy@kernel.org> <CAKwvOdnaZ6qDVxaPY-GEH8pdUkzH6eqm16ok9_wzRSVRG-1kiQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnaZ6qDVxaPY-GEH8pdUkzH6eqm16ok9_wzRSVRG-1kiQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 6 Apr 2020 01:45:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQybfcYiosNU+ybd-Q7-Y2dbLqBVN2XA00wCRnFAoqdew@mail.gmail.com>
Message-ID: <CAK7LNAQybfcYiosNU+ybd-Q7-Y2dbLqBVN2XA00wCRnFAoqdew@mail.gmail.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        =?UTF-8?Q?Matthias_M=C3=A4nnich?= <maennich@google.com>,
        Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Y5QCnFoz;       spf=softfail
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

On Sat, Apr 4, 2020 at 3:24 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Thu, Apr 2, 2020 at 10:17 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
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
> Having this behavior change over time may be surprising.  I'd rather
> that if you want to not use the integrated assembler, you explicitly
> negate it, or just don't use the LLVM=1 syntax, ie. `make CC=clang
> LD=ld.lld ...`.
>
> We could modify how `-no-integrated-as` is chosen when LLVM=1.
>
> make LLVM=1 LLVMIA=0 ... # add `-no-integrated-as`
> # what the flag is doesn't really matter to me, something shorter might be nice.
> make LLVM=1 # use all LLVM tools
>
> Since we got rid of $(AS), it would be appropriate to remove/change it
> there, since no one really relies on AS=clang right now. (We do have 1
> of our 60+ CI targets using it, but we can also change that trivially.
> So I think we have a lot of freedom to change how `-no-integrated-as`
> is set.
>
> This could even be independent of this patch.


I also thought a boolean flag is preferred.

AS=clang will not live long anyway, and
I hesitated to break the compatibility
for the short-term workaround.

But, if this is not a big deal, I can
replace AS=clang with LLVMIA=1.



> >
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
> >
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
>
> update-alternatives assumes you've installed Clang via a package manager?
> $ update-alternatives --list cc
> /usr/bin/gcc
> On my system even though clang and friends are in my PATH.
>
> And previously, there was feedback that maybe folks don't want to
> change `cc` on their systems just for Clang kernel builds.
> https://lkml.org/lkml/2020/3/30/836
> https://lkml.org/lkml/2020/3/30/838
>
> A goal for ClangBuiltLinux is to build a kernel image with no GCC or
> binutils installed on the host.  Let the record reflect that.  And
> there's been multiple complaints that the existing syntax is too long
> for specifying all of the tools.
>
> LLVM=1 is meant to be one flag.  Not `make LLVM=1 HOSTCC=clang
> HOSTCXX=clang`.  If folks want fine grain flexibility, use the
> existing command line interface, which this patch does not change.
> LLVM=1 is opinionated, and inflexible, because it makes a strong
> choice to enable LLVM for everything.
>
> Another reason why I don't want to change these over time, and why I
> want them all to be in sync is that there are 4 different CI systems
> for the kernel, and they are currently fragmented in terms of who is
> using what tools:
>
> KernelCI: CC=clang only
> Kbuild test robot aka 0day bot: CC=clang LD=ld.lld
> Linaro TCWG: CC=clang only
> our CI: a complete mix due to combinatorial explosion, but more
> coverage of LLVM than everyone else.
>
> That is a mess that we must solve.  Having 1 flag that works
> consistently across systems is one solution.  Now if those were all
> using LLVM=1, but some were enabling Clang's integrated assembler, and
> some weren't because we changed the default over time, then we'd be
> right back to this mismatch between systems.  I'd much rather draw the
> line in the sand, and say "this is how this flag will work, since day
> 1."  Maybe it's too rigid, but it's important to me that if we create
> something new to solve multiple objectives (1. simplifies existing
> interface. 2. turns on everything.) that it does so.  It is a partial
> solution, if it eliminates some of the flags while leaving others. I
> want a full solution.
>
> If folks want the flexibility to mix and match tools, the existing
> interface is capable.  But for us to track who is using what, we need
> 1 flag that we know is not different depending on the cc of the
> system.  Once clang's integrated assembler is good to go, we will
> begin recommending LLVM=1 to everyone.  And we want feedback if we
> regress building the host utilities during a kernel build, even if
> there are not many.
>
> I'm on the fence about having all of the above satisfied by one patch,
> or taking this patch as is and following up on the above two points
> (related to disabling `-no-integrated-as` and setting HOSTCC).  I
> trust your judgement and respect your decisions, so I'll defer to you
> Masahiro, but I need to make explicit the design goals.  Maybe with
> this additional context it can help inform the design.
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>


Thanks for the comments.

I'd rather want to do this incrementally,
making sure I am doing right.


The meaning of LLVM=1 may change over time.
It means "the recommended settings" at the moment.

If CI does not want to change the behavior across
kernel versions, it can pass individual variables
explicitly.

--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQybfcYiosNU%2Bybd-Q7-Y2dbLqBVN2XA00wCRnFAoqdew%40mail.gmail.com.
