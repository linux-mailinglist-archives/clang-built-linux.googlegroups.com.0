Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY5O4T4AKGQEU6KECXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D1B22A6B6
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 06:51:48 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id u12sf5225047ybj.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 21:51:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595479907; cv=pass;
        d=google.com; s=arc-20160816;
        b=zypcgCJTrUy9ccbXnaR6VSrXvkLPtKKzAjgSrk+47wZv0EW5D0+o+ZkgKUqhPCfIBo
         oXarxu9TdlQjAxeh4C7EVHhpqHD4ffYfBr6/s5FAVmtRQQkf5QHA5mY5fVP6PXsglD92
         XwIgvDnaJE8K+85qisUfxf2F9xJZEJfaY1vIwNhtWXwKnOsGCll73M+bb7ZNWSZLN+F4
         1vs0+ruaV2q8iDn+lAqmW+YtTWUddIUmGrUQAZtmQGr94Pu1paMXVzkmiiBBxg1nYDBe
         JcnBNDp1PXjez/B3lEvcriyZd8SVGiERSM5MRm1X07Vf9g0UUiIe+TTOo1KUh6rjQ3b6
         zd8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=mg2dWA0EJvuY6MIJJDZHoM9Gzqakz+TzrbAsV6g9H00=;
        b=F6VfGHscAutxes6m6aN2px0ZUEeyV26j3sT2fPFTWbsKPSi8/AGZtaqwcAiGRsP3Mn
         EwMx7/YGJ53UIxxplbWHaADaP5KyuPDdUIiRqhgSnbcdJi+c7Sx/1NzQIkhHKKs6rWaj
         jL7kal1kW3uOwD+aMZF7Gn3HjBwJPnyeyk8UGhO1aCm/Pfts/0PdmXbYXt+p1Tf3Ds/+
         HSwc36SzeUCN4Faic0HSKNlemBm+Om8PMvfU/kW2nnQyKKdujg6eM/DHgyXDAG8agZ9O
         QKmEcJ45kmOCdhJO0t1YImj/inv9rArJqBlhAQ3wJMaE0b56UfnaLkXnkGSF5TnyARLn
         NxWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HKRkrUia;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mg2dWA0EJvuY6MIJJDZHoM9Gzqakz+TzrbAsV6g9H00=;
        b=RHP/DGhyVOf/de7LT0kz1w3gpyQ3i1NXyb/Tajy84JCV/4QVhpP6yqW9bdO8Z7ni6H
         p8ArKeK/8xwQurcAlWEadHko0VTi8gvI+qCNj8ooBMF/yZb6vLWAEUV3ZePDC5e7w6O9
         OZrGgVpNNf+Z6GbAzwVw9+630K99CKzig3SqJXfxFEgP66u5aVcrRK6iNkJdxrjxDn4Z
         DuOrJ/TGVuYkM0MRxD82qwjzLNuKKUGTxvcfiKfymO0CBJQx0Kaw09Q/QNVxlcrSQTJy
         43O2gJXV1HzuhAbaknZzppXliSwXHP0PnpuufOxzpTnhd60aIh6w6m24VLpDp+ZHHznu
         qIVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mg2dWA0EJvuY6MIJJDZHoM9Gzqakz+TzrbAsV6g9H00=;
        b=MYjVCrSoDbR4UJtRDersKP0t7+JOrSEikzjAMDIuIeMiw8z3XVVSWts3abogRZOlDX
         nNMatNKsSaAxeNAN1yTlM+cRcBrkgdnLs/S/IpmwFpeld0hkS4qtfkiCpein8DuA7Z/D
         fsACcnQb+Vca7oXCXJjCN5J9QaYu+bllQnRPNGT0HqlYEkujHUb4tx0FPxqFhDiknKn1
         IJr2eA24CieXJKrrsOmEte7aml12PogRejtTYq+B+KDAx+gWgnpN9EoQRN0ZEZMq6xDP
         RpSV0blJ7D7uP9JAlSNVQMIQcJmTSpZpVWNAarul3t4aCPEgRgrDZurwrI9DxQDC7GNm
         G3Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mg2dWA0EJvuY6MIJJDZHoM9Gzqakz+TzrbAsV6g9H00=;
        b=ZGogNVb9ewWKGKnYNg9eMkQlR4JEgJak1X8yaH8XCU8aCFmwvMNQtK72Slrwy41mdH
         /E8MuYpLZELyR7wI9Gz6GdDUQ4g/iAiDFZI4w5DPpImY6p519Lo5aiiVbrXGrP3bSD8t
         kKNspq1a3AQo+7FoSrAqqsaTN60/pFWaOPBQ1PSopa7noatTIJPTAEiQotjfcIrA/gpr
         Yt9cEzn6PjP5ov/tUiDIaALSeqt/Xt9doOZGST16DxYvXWUxUv469vBsot7346GH2p0y
         ktrLpOBmJvNWhhA44dd9vwku6nU2Nz9ps/wxutd+KCEd7wYckPknFLHtoKW+117wRSYB
         ERyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530e1INHMUUqo8A4B8Fa56dy+Ch9EFP9qGinUgNcNgxl4cJTKKCJ
	oIB3Jlucswmku9JoZlImIak=
X-Google-Smtp-Source: ABdhPJzds+J1i08dHSikiqCcLgZSnAYtfm4a+R87EnTn1tsFdiwCIJ9xYQDz1rKiTsZ8cbZUjYEjDQ==
X-Received: by 2002:a5b:34e:: with SMTP id q14mr4083900ybp.501.1595479907754;
        Wed, 22 Jul 2020 21:51:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:500f:: with SMTP id e15ls1690021ybb.4.gmail; Wed, 22 Jul
 2020 21:51:47 -0700 (PDT)
X-Received: by 2002:a25:e90a:: with SMTP id n10mr4471716ybd.71.1595479907420;
        Wed, 22 Jul 2020 21:51:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595479907; cv=none;
        d=google.com; s=arc-20160816;
        b=EOVVW1E/Fck4xDwgeh+2YFbM3Zkr+wLVBTI6dqkRvIt1lZyJ5ANtKxYB5bzuTOotTK
         UviaZhMa98ickR55PxJUJ2bBHxLAJMEZhk+Fb6/w8IwCmMT4C2YHA33s55jGIyH1oJiq
         EFxk9lA7sUfoBDW3huCEpGLy5t0GxiNDV1YtUrbSdhHf/mW02/QfVgtqdtv3OJFpJJEX
         K3ZfVJiJCqGzufq01KeV5oSQhcPQ0j7TEMAF5zVvMywBkGzRdGImHmpQWIYZGsly+Ktj
         hdt8j3vqPBvoTXxLu/m9OSv6Thfu06D8SQoKOjs3DrIkdP6b2oCXtwUklezKEiCjPfny
         cYpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rvBqlrD6Q5JTwbMgKl8jawCIv/MTpPv1KCBt3CoZeTM=;
        b=CjzJ5zpxSRBNpeAl9RXaz14gDflI+CN8Zx0O4oPE5DOnmtZUN/f6o8ddG4XLYksNfK
         JeGNC1QaqjS0q0Bu+IlOdcjKpVMlNcVvOedru3TL4hbNw01+dmgAwLCCvb5cx2Z3O+Lp
         7txqy9OHSDRw6FCMXDXLcokq7RogeA38gbI44y0N5RySGWt8RcEMvUppRC598LBqkgDh
         sfNrYsD2L/Awj7d2lisQd3QOiRXUOF4pXCjRQR9mKmzyiv1eoud62s5Zz+RCSuETmO/P
         rgjtcjFudmx1hnoYb2HD38U7OLi293F/5HmBU86qZxB1PpjgN1R+5nGd3n6A7bg4zKxo
         w18w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HKRkrUia;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id l126si156358ybf.4.2020.07.22.21.51.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 21:51:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id g26so4283005qka.3
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 21:51:47 -0700 (PDT)
X-Received: by 2002:a37:9bca:: with SMTP id d193mr511954qke.131.1595479907011;
        Wed, 22 Jul 2020 21:51:47 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id f130sm1677053qke.99.2020.07.22.21.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 21:51:46 -0700 (PDT)
Date: Wed, 22 Jul 2020 21:51:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	stable@vger.kernel.org,
	Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] arm64: vdso32: Fix '--prefix=' value for newer versions
 of clang
Message-ID: <20200723045145.GA448242@ubuntu-n2-xlarge-x86>
References: <20200723041509.400450-1-natechancellor@gmail.com>
 <CA+icZUVUSnC9F5RKzRLV50CU8SwortEFGH5f2LHTu=UQx8dT8g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVUSnC9F5RKzRLV50CU8SwortEFGH5f2LHTu=UQx8dT8g@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HKRkrUia;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jul 23, 2020 at 06:45:07AM +0200, Sedat Dilek wrote:
> On Thu, Jul 23, 2020 at 6:15 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Newer versions of clang only look for $(COMPAT_GCC_TOOLCHAIN_DIR)as [1],
> > rather than $(COMPAT_GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE_COMPAT)as,
> > resulting in the following build error:
> >
> > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > CROSS_COMPILE_COMPAT=arm-linux-gnueabi- LLVM=1 O=out/aarch64 distclean \
> > defconfig arch/arm64/kernel/vdso32/
> > ...
> > /home/nathan/cbl/toolchains/llvm-binutils/bin/as: unrecognized option '-EL'
> > clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> > make[3]: *** [arch/arm64/kernel/vdso32/Makefile:181: arch/arm64/kernel/vdso32/note.o] Error 1
> > ...
> >
> > Adding the value of CROSS_COMPILE_COMPAT (adding notdir to account for a
> > full path for CROSS_COMPILE_COMPAT) fixes this issue, which matches the
> > solution done for the main Makefile [2].
> >
> 
> [ CC Masahiro ]
> 
> Masahiro added a slightly adapted version of [2] in <kbuild.git#fixes>.
> Shall this go through kbuild subsystem or folded into [1]?
> 
> - Sedat -
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51

Sorry, should have cc'd Masahiro, slipped my mind.

Note, I kept this separate as the patches have to go back different
distances; only 5.7 has working clang support for vdso32, see
commit a5d442f50a41 ("arm64: vdso32: Enable Clang Compilation") in
Linus' tree, which appeared in 5.7-rc1 so this only needs to go into
linux-5.7.y. The main patch needs to back all the way to 4.4 so we would
need to drop this hunk when backporting, which would be annoying, as the
main patch backports cleanly to 4.9.

It could be routed via the kbuild tree but the arm64 maintainers are
pretty good at getting these fixes into the hands of Linus so I see no
reason to go around them.

Cheers,
Nathan

> > [1]: https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90
> > [2]: https://lore.kernel.org/lkml/20200721173125.1273884-1-maskray@google.com/
> >
> > Cc: stable@vger.kernel.org
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  arch/arm64/kernel/vdso32/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> > index d88148bef6b0..5139a5f19256 100644
> > --- a/arch/arm64/kernel/vdso32/Makefile
> > +++ b/arch/arm64/kernel/vdso32/Makefile
> > @@ -14,7 +14,7 @@ COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
> >  COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
> >
> >  CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> > -CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
> > +CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE_COMPAT))
> >  CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
> >  ifneq ($(COMPAT_GCC_TOOLCHAIN),)
> >  CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
> >
> > base-commit: d15be546031cf65a0fc34879beca02fd90fe7ac7
> > --
> > 2.28.0.rc1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723041509.400450-1-natechancellor%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723045145.GA448242%40ubuntu-n2-xlarge-x86.
