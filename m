Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHUKQSDQMGQENC6YTLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5203BAABD
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Jul 2021 02:47:27 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id e9-20020ac859890000b0290250be770d0fsf7681214qte.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Jul 2021 17:47:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625359646; cv=pass;
        d=google.com; s=arc-20160816;
        b=nWXvVKOtG0Nkkwl84kd26Ta9rXaLQXH2cCIMwMb5P/HoVWK1xmal/SuzqFOkS6LNpR
         5l2EingyJfxQrVNQzSLzzqkS75VMMnu7UBGN7j+s4nSQMdt+JFP9a8yIqGhhjae2rug4
         omAC8SbZxYnSffNH3PUDcXiHvk7lyj8FPpCRrlQuJt1D2egDwZmjn7S/WFA0UVu+y7Vf
         M9c7SUmL88GINEbzuN7waoWjHohTNOtsfd10bIvIFpf/sqfmSXC9jB6+mFSI63OzgSFK
         W1tXFr+BefhNrnS+FXMYgVLcLiQh9IflEvm4HXcfowhK730RWrjHrayIfaUjLipJ12Gu
         FPYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PsEwxOdNuSniefzw+Jlq4Tz/cGN2sg4WGf2JD+E3FCo=;
        b=JMkO9uXleBOHNXRBtJ7yCsbbhlV9rQ+xiSeT/B0d++LlNZAkvq/p3EzqB1kZU5+IQk
         HGetPJZ64GB9h38sULwNFk7TvSAf8zwDFXLp+P0G+2AT3a+TvNjTwUqobBiuJQpbgagq
         LGPD3VJ/qKIaxoXc/YCVyUSxXZVyaglyfL43qjisuLRZqbyi7OH8g8Ok7ZZqjQhJ+1Nk
         AFWahSrKRwBzYLjAgW1O+Z27xy/+JyoidFp4GAurGdl5AGA8H4iO5Pq06T7eqLE+zpqp
         7hr6xhSP8nD0/VRAqVbTGgGTQnF257wFxIM4/zF9OnK9JuH+peG0WNVkd4nW+4PP+/aE
         klWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=htslqKoG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PsEwxOdNuSniefzw+Jlq4Tz/cGN2sg4WGf2JD+E3FCo=;
        b=ADimGuCGbqb7OWQeKtc6eQCi0acx7dcd7eiklQbJRjUyC5E2oZ9mZVF8NAD5RZuHlu
         1uGFBUIDM3igLWbPk3+mgbAFyOfHwn3y5F85FvWOOY8/L4HyOVMLf2JD1tKT1xi6fWPz
         Y2v66bL/a7qtiALRhjYbVr6dko3/HV+buturObvz9D6l5VKW29fhCh7ADNb7oheK6Pf7
         ZqumY4mqH9QWQ4vEkLEGL/54aPysAeZwINjTATbjWkBL4wyfCKFPmEzWIdT7reXZlqLc
         Extmu1LPbQi6BpHLdkhwtNoTqD0mXycmCMIpBnqNi66LqHuHT+gye6G7eJC6Iq8p2uoS
         +utA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PsEwxOdNuSniefzw+Jlq4Tz/cGN2sg4WGf2JD+E3FCo=;
        b=U6nRQNvaycdM1k1ytyQk9gwnv20np+06miCqxppbzap22jQqUvTEzECYNl1jEsoVcr
         7lDT32N6jpQxG8kYSuBzCJzyQ8LhlTU+CFCLGQvUGhV1Rn1eoO2xypOLi7Y69IFuApSo
         PO28jGpemSG3ObA60lEZmcU2dIMufZEeTcP5Iufma6RMjN8tE1kXNQbYFJYv38rZRbht
         MVTcG0SCpxTzFu54i9gmIAsaQToTiVvzvE8ihsa37u2+kpXKW4j0JVHFcrspnlIjIIhg
         Oe0AC42S5jJWzGJD0SeYyrseeOo3Xj7NJTjGzA7PoWbj+sUjzLhTRFJldmeE9JjmOrnh
         5SPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nFOEUYUVoNJa9rSKA9VTMh9E0y/ALD9j6l5TL7r2A7OGKP6/p
	AwFVKcmLLHg2QqsKT5WUXc8=
X-Google-Smtp-Source: ABdhPJz6raRg5ZxwehAfBIImu0C+OGWEwO4eUrrdweGF2xHya5YJh+rraFxfOYphJVcjHVCXEb5yEA==
X-Received: by 2002:a37:a2cb:: with SMTP id l194mr7408455qke.190.1625359646175;
        Sat, 03 Jul 2021 17:47:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5c15:: with SMTP id i21ls6238399qti.2.gmail; Sat, 03 Jul
 2021 17:47:25 -0700 (PDT)
X-Received: by 2002:a05:622a:453:: with SMTP id o19mr6433541qtx.122.1625359645672;
        Sat, 03 Jul 2021 17:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625359645; cv=none;
        d=google.com; s=arc-20160816;
        b=fy7UxalXZ2NQQxzu5eS1dE9Z7c/3eNzHyKfHYuwwfY7k3EkcYcRMjGwKLbuAcqeL1p
         peAn6qcSjH01tivNfDcIdybEssl6jH3sgeEh2wLwcmnKuSpht71Y0USNsSXYLn9e02w/
         Wezzv+q07PRwj+FebC2jb4o/QydSTs2g4ppKsaTEgg0hJX4oaUYMj0jBZI5DlsG3n9MD
         C6QTsad7iubH2esrBQql79PkQ5YaIWXLFlitWl7LutXiCbZrISxci7j2tfk7z88YDM3U
         sCjoohWqK7AZhL+g8yhYpAjqmQQQs3DFfxxHHMw8kDmZ+vP1iZ+r5BJsCr7U/Abe3xXb
         U5vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=np9lNBSWqpFW+tay+FZLu+teV0mCRq7c0OGZ5lwb2iQ=;
        b=KKlcDt9kNcF4kwh3E8PlVye2Pf3RCU2ToBEzvvFCYXfe06toWamzvHv93PoKU/4SP+
         0K0EuJ96DDcngtiTosLf36gF1HQGwI5U5rNDYFWCmDcCYR6IgUFGuVR4rzjoC5iEgr9f
         rbIQMS70Iaox0oIl6L/rd6JJLvA6T7H/QpABMtbVxWSFxdf4Xmuq1q+j6JcxeXBhCmtF
         cmZD57iNdDfBLX7o2r6Y6r7LaHgxKlobhaofxT5JdrCsA30zeEUnLzHkA335R6lw+uW0
         6TGYTopqjkQPiQwXkGXTrkoOUFLnSAZHuEVVq4wwFv70n1YHoTiPc1S41rO+b6gH8ch5
         fUGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=htslqKoG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t8si654528qkp.6.2021.07.03.17.47.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Jul 2021 17:47:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D4AF5615A0;
	Sun,  4 Jul 2021 00:47:23 +0000 (UTC)
Date: Sat, 3 Jul 2021 17:47:21 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Fangrui Song <maskray@google.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
Message-ID: <YOEFGcTJC6AWFgs1@Ryzen-9-3900X.localdomain>
References: <20210701235505.1792711-1-ndesaulniers@google.com>
 <CAK8P3a1EfBNxaMbsp+s2BiYHGKPK4NeRR+ugM82jfY43Pq7-Uw@mail.gmail.com>
 <CAKwvOdkgEeQktLgEN7CAh7bTjTN+TQNE27aETgvbXep9=xb1DQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkgEeQktLgEN7CAh7bTjTN+TQNE27aETgvbXep9=xb1DQ@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=htslqKoG;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jul 02, 2021 at 11:29:31AM -0700, Nick Desaulniers wrote:
> On Fri, Jul 2, 2021 at 4:59 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Fri, Jul 2, 2021 at 1:55 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > +ifneq ($(LLVM),)
> > > +ifneq ($(LLVM_IAS),)
> > > +ifeq ($(CROSS_COMPILE),)
> > > +CLANG_TARGET   :=--target=aarch64-linux
> > > +CLANG_FLAGS    += $(CLANG_TARGET)
> > > +KBUILD_CFLAGS  += $(CLANG_TARGET)
> > > +KBUILD_AFLAGS  += $(CLANG_TARGET)
> > > +endif
> > > +endif
> > > +endif
> >
> > I think only the "CLANG_TARGET   :=--target=aarch64-linux" line should
> > go into the
> > per-architecture Makefile. It doesn't hurt to just set that
> > unconditionally here,
> > and then change the CLANG_FLAGS logic in the top-level Makefile to use this
> > in place of $(notdir $(CROSS_COMPILE:%-=%)).
> 
> I don't think we can do that. Based on the order the arch/ specific
> Makefiles are included, if we don't eagerly add --target to the
> KBUILD_{C|A}FLAGS, then cc-option, as-option, and as-instr macros
> (defined in scripts/Makefile.compiler) checks in per arch/ Makefiles
> may fail erroneously because --target was not set for
> KBUILD_{C|A}FLAGS yet.
> 
> Another issue is the order of operations between the top level
> Makefile and the per arch/ Makefiles.  The `notdir` block you
> reference occurs earlier than the per-arch includes:
> 
>  609 TENTATIVE_CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
> ...
>  648 include $(srctree)/arch/$(SRCARCH)/Makefile
> 
> We would need the opposite order to do what you describe. Reordering
> these would effectively be a revert of
> commit ae6b289a3789 ("kbuild: Set KBUILD_CFLAGS before incl. arch Makefile")
> which I'm not sure we want to do.  But maybe there's another way I'm
> not seeing yet?

Is there any reason we cannot just add this sort of logic to the main
Makefile?

Such as (indentation to emphasis diff):

ifeq ($(CROSS_COMPILE),)
ifneq ($(LLVM),)
ifeq ($(LLVM_IAS),1)
	ifeq ($(ARCH),arm64)
		TENTATIVE_CLANG_FLAGS	+= --target=aarch64-linux
	else ifeq ($(ARCH),s390)
		TENTATIVE_CLANG_FLAGS	+= --target=s390x-linux
	else ifeq ($(ARCH),x86_64)
		TENTATIVE_CLANG_FLAGS	+= --target=x86_64-linux
	else
		$(error Specify CROSS_COMPILE or add '--target=' option to Makefile)
	endif
endif
endif
else
TENTATIVE_CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
ifeq ($(LLVM_IAS),1)
TENTATIVE_CLANG_FLAGS	+= -integrated-as
else
TENTATIVE_CLANG_FLAGS	+= -no-integrated-as
GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
TENTATIVE_CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
endif
endif

I know this looks a little cumbersome but it does help us avoid
duplication across architecture Makefiles and ordering dependencies.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YOEFGcTJC6AWFgs1%40Ryzen-9-3900X.localdomain.
