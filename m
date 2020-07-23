Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBSNQ4T4AKGQEBHARWJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 9818822A6BC
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 06:55:38 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id v202sf2369542oia.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 21:55:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595480137; cv=pass;
        d=google.com; s=arc-20160816;
        b=DJqUeynTu8FCFmmgZkEXD1LYuW5sL2U3eTUk7GbmdArfeSHCa3/rUlAOuQ6FGQrZqY
         /++cUPZaPmC6vbHbowfeLkzWDV/X7PjUA89TnCijqZUdDN+HpYZVbpHotniG6iF1QHAP
         G16Dd51K3d5gy31aS8Ad/KnyzSMIUYb9XYOSaFI4rrrqRcEXGQe39UFNOWPN7ShE+tc/
         SQ3mDMnNNTJ0/5Kl03lgCSxPPRV++sTZBXfNGAEsU4MIOo1YEqG17m9B8Ha16p9Jv5Jv
         KUWUIfJLM8sHP3Um1bbk6yXLp4TdHdykoxcloHV/++OWcPQE0mbRu8UeQ0nZYd0ItdCp
         fSGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=m/8/Xk3TGv3HMdodCz7fMZJ8SFp1LyK6e0IFg+gZuyw=;
        b=mdj+dq0tTYhxGH8tyqgJdv0ZuSrn5bKWCyIyDbCBA8SOFTAfSSLUsNVv+dbssWx/62
         D0MHdIam1uzHBMwkU09zfZPxVh5gZAn373WEmrumjGDqN0L+9uSs2wa8uSu/IbjQgSiS
         PnAcH6hkOYpt9urhWNtIGOI3cfoBRS+mEOT3jNRyHG58e1P3O5rA9mCbLowXrDqwU8n/
         pJ1CsmSQbElx08xNCRIV+8kRUe2gJ9Ms0n5FKpHWAbuWtFjBTr3VMZ5T33d9LaYkiSxm
         tCPf1oBR+8xmweISUwo7WVZQCgT79YrGbQcLN19hmx8j1aw4rR1CxO6rXbhFcrlqWj5y
         0AUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WGtj4Y5k;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m/8/Xk3TGv3HMdodCz7fMZJ8SFp1LyK6e0IFg+gZuyw=;
        b=kPgwIi/hLG5NXeDDsuchQnWV5dgB/MunHCoMcrKvSS5Fux5VxQQRvjpZj0Q7QkVNlY
         uZeqEqhCZMXOAiSEcLFpp19849mKGthWgADykRlpyTpuwBNxoHNPz5wx7erh2ZGMdYwD
         b7GAKyqh2mCW2aVqXqKRcJeszQ0AZbAbEBYjodDADE7/vlwkxgKvKEcueFz60yPjfkTb
         WPndxgT8aVm8tjPBlmeydZWdwLFQGm7jDRwKNDhFuA7ND//DDXIrn/oVXnNvdQDoBf68
         vpFCGVNMCUuDvZpIJ7EsRrUB8tYhSJRNduZ9rWWw5FaXKYl0vqiNDBKMxhLzkiJxAyd5
         L08A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m/8/Xk3TGv3HMdodCz7fMZJ8SFp1LyK6e0IFg+gZuyw=;
        b=KqOQwiFiXpyP39Z+pHLr5YOajb7fqzRE4r6+bDS7eLYhPnonQfL7vUgLSQB7Isti4g
         UxIimF7IFj8IfXWQeFiikq9mbCuINCQXjO6I3P7BFDsAZvgo6BUnUpo3y7BeVw1Bxy8Q
         PZveRfXpp9Yk+9F5XEPnrA86qVr6jfxjcK8TJ1ueJJWCLKTyQ7poAx/UnZ9ql/wUYJmW
         ELVIcb0VOOyszVJ9vZz3NkiJZWhLJfunKplZIyc7YnZd1ZActf4s3+teHJxcBCC1OiAe
         +duyKm9/QCd4Ch6hf5T7JYRs/hhSTWfWYtWlEjulLwSdlVKwPEt8I/CfdAxbDoH7VZWB
         Q4GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m/8/Xk3TGv3HMdodCz7fMZJ8SFp1LyK6e0IFg+gZuyw=;
        b=atOjXOS55NvYSEepH2cetBCGF4cJhgNAaNXweaOjHOSgg8ptoed3b/OSh9OCVJH8h9
         zjrDe3AG3sWN+xf7OMitXxyUXGeR1sEGHQup6RV5cl6Xo511OGXoPnJtQs5Og6SApgwS
         Q5dfolmkVfyGSJOojSPaYUWBSf3vXWgwVImMN3jpXHmZdn+Vd5gA8RHiznH4xdTado0I
         hs6zRqY3WrhgDcQOrt3zSD4QFVfHAUrd73HduVMfWDGaZZKLtuPgm4CjCWTE7GCUGN3D
         1gydvnQG+IukbbS6vpZYE6QztrHF/zntyqlGKQZ3lUsubI76ovoUGj4ahEuhNuKR8qo1
         Idxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KmYwPFPjW0k+tfM+GR7fSl13TuaCUSM79+70J0FdgQGdIg0Yr
	mRdad0TvWyfuziJgvpFUIUk=
X-Google-Smtp-Source: ABdhPJwpKYskfdYlNgCe5pxaGZ64Ks1RHZIZWRJOwfnKkTloS91vtSZTfLAaoWePJ7rWZNeGxf+Bog==
X-Received: by 2002:a9d:5f92:: with SMTP id g18mr2601141oti.95.1595480137535;
        Wed, 22 Jul 2020 21:55:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f413:: with SMTP id s19ls863315oih.8.gmail; Wed, 22 Jul
 2020 21:55:37 -0700 (PDT)
X-Received: by 2002:aca:dc08:: with SMTP id t8mr2523462oig.170.1595480137228;
        Wed, 22 Jul 2020 21:55:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595480137; cv=none;
        d=google.com; s=arc-20160816;
        b=URSA1vxaILlAQOBJayntylPWv/Ru/TQAaLSCKEcvTKUqHxFTv6WzTenf1bKhNSpzKW
         KGuRyIIMC4ydYU52AxXVvbulYmVrBU6snu1bxYl85BaORSJEF4cOkkj2xTCd/722ZrJT
         kxR94Vtf2EcYJGZIq4SeLLqSDHw0vWp+u6uHBkAekeEPadqw9/+RJjMoprJQtwGFbUEh
         VW8T7BX/vmfgeSACyWEe9xgRQSs5yqexRf8xMsxs6w2Dvt4Kllf6B9QLE2Y4o9g5Fzr+
         NLxVlzeSs2Kb2IO168U+x+ycA06dwiXosGmi4lwF8Sa427QhKJ87c/STvJZrovcx9OvV
         zqMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9zEAOSiaWo87pEOphY61gvGs/JjkhFbMIfi5ABUGzWw=;
        b=GvatKo1yCZLbG6xjdY1JG/yBV1NUyQvKS6vKegvpf2YwvoLCjSsZTxKVW0D/5exszG
         dEkt9TGacAet2zJP7GUZXtKcQNfP0cqrIXSlYzVsRQ7xpbkZASlKJxXmTNOWDcxZM7GQ
         PIhrIdc0t4ZkxUStsezU6uIQQ1VhKZnx+89GVnY1fvUWMklzQQtl/oNvby+uQ2CzxyXm
         +x6aa+lOFi+LQsA39QAUBFfWRO1gcgj17QEFdz4uiDn/1XGk7Jl+wcmj++ckCKpZyy/C
         IJnOwzn+FdkUqn1xYgMofm88wETKxm10Gqf15wvaRx+qlPsDElwF2k/BnL4ORZbw5hG2
         E9DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WGtj4Y5k;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id d65si228791oib.2.2020.07.22.21.55.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 21:55:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id v8so4971441iox.2
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 21:55:37 -0700 (PDT)
X-Received: by 2002:a6b:b4d1:: with SMTP id d200mr862526iof.70.1595480136862;
 Wed, 22 Jul 2020 21:55:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200723041509.400450-1-natechancellor@gmail.com>
 <CA+icZUVUSnC9F5RKzRLV50CU8SwortEFGH5f2LHTu=UQx8dT8g@mail.gmail.com> <20200723045145.GA448242@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200723045145.GA448242@ubuntu-n2-xlarge-x86>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 23 Jul 2020 06:55:25 +0200
Message-ID: <CA+icZUUOjYoCoEYyRzBdMoh_Fh4DszWoNhpmapqgYOAt8wHO-g@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso32: Fix '--prefix=' value for newer versions
 of clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, stable@vger.kernel.org, 
	Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WGtj4Y5k;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jul 23, 2020 at 6:51 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Jul 23, 2020 at 06:45:07AM +0200, Sedat Dilek wrote:
> > On Thu, Jul 23, 2020 at 6:15 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > Newer versions of clang only look for $(COMPAT_GCC_TOOLCHAIN_DIR)as [1],
> > > rather than $(COMPAT_GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE_COMPAT)as,
> > > resulting in the following build error:
> > >
> > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > CROSS_COMPILE_COMPAT=arm-linux-gnueabi- LLVM=1 O=out/aarch64 distclean \
> > > defconfig arch/arm64/kernel/vdso32/
> > > ...
> > > /home/nathan/cbl/toolchains/llvm-binutils/bin/as: unrecognized option '-EL'
> > > clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> > > make[3]: *** [arch/arm64/kernel/vdso32/Makefile:181: arch/arm64/kernel/vdso32/note.o] Error 1
> > > ...
> > >
> > > Adding the value of CROSS_COMPILE_COMPAT (adding notdir to account for a
> > > full path for CROSS_COMPILE_COMPAT) fixes this issue, which matches the
> > > solution done for the main Makefile [2].
> > >
> >
> > [ CC Masahiro ]
> >
> > Masahiro added a slightly adapted version of [2] in <kbuild.git#fixes>.
> > Shall this go through kbuild subsystem or folded into [1]?
> >
> > - Sedat -
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
>
> Sorry, should have cc'd Masahiro, slipped my mind.
>
> Note, I kept this separate as the patches have to go back different
> distances; only 5.7 has working clang support for vdso32, see
> commit a5d442f50a41 ("arm64: vdso32: Enable Clang Compilation") in
> Linus' tree, which appeared in 5.7-rc1 so this only needs to go into
> linux-5.7.y. The main patch needs to back all the way to 4.4 so we would
> need to drop this hunk when backporting, which would be annoying, as the
> main patch backports cleanly to 4.9.
>

Clarify your patch by adding...?

Cc: stable@vger.kernel.org # 5.7

> It could be routed via the kbuild tree but the arm64 maintainers are
> pretty good at getting these fixes into the hands of Linus so I see no
> reason to go around them.
>

As you and arm64 maintainers prefer.

- Sedat -

> Cheers,
> Nathan
>
> > > [1]: https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90
> > > [2]: https://lore.kernel.org/lkml/20200721173125.1273884-1-maskray@google.com/
> > >
> > > Cc: stable@vger.kernel.org
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> > >  arch/arm64/kernel/vdso32/Makefile | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> > > index d88148bef6b0..5139a5f19256 100644
> > > --- a/arch/arm64/kernel/vdso32/Makefile
> > > +++ b/arch/arm64/kernel/vdso32/Makefile
> > > @@ -14,7 +14,7 @@ COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
> > >  COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
> > >
> > >  CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> > > -CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
> > > +CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE_COMPAT))
> > >  CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
> > >  ifneq ($(COMPAT_GCC_TOOLCHAIN),)
> > >  CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
> > >
> > > base-commit: d15be546031cf65a0fc34879beca02fd90fe7ac7
> > > --
> > > 2.28.0.rc1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723041509.400450-1-natechancellor%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUOjYoCoEYyRzBdMoh_Fh4DszWoNhpmapqgYOAt8wHO-g%40mail.gmail.com.
