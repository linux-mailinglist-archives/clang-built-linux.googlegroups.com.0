Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYWGWL6QKGQELCWN6VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C90272AFD87
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 03:52:19 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id z18sf2880638ioz.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 18:52:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605149538; cv=pass;
        d=google.com; s=arc-20160816;
        b=fTjT4rRZNwOmdvUKMuJwJV2+HyRsa92xGCPBMjWjEFQdeFdkY3XswQWPcRpP3cbTS5
         w4Dh+h9k25Gon6lheNVlGsyyiZIMprPqpPxUy3vlqXWTzPnrwDZKFJ5ICl9gdDsnm4CF
         lp0GGR2c3yUYxoDKqWA4RQKLOykAkKHRxiZoL6CPFn5+nnnd931VAuNouR3kCUdxj/al
         DKZElv0wQyKJAk6BNCcjwEErzX0xAwptO40VmTRnDiSrOZ3mTKIw9XCcZ2k+jCosxZyi
         a35xBAZ5pZzfF3RZYJpABWUhyZ7NvCivIeyDxy9INEo26VnQh4aPOdWN1Reqhf9IMyw0
         USDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=V3qmzhsD1JzJKs3Db5v8Gq158qqR/eP0f3rFJbfqhvs=;
        b=bj5LYhUVnvROiZXjBQ9fkCUoZs8OCyIgt4H3AG5NAYRG7WZz+tvGbfgzeCedBr6Imk
         9H3QwWl2vj1prY+LS/N4j3ljVGmjIMcmJEI7F5lVMompbX3UAM8Vz7pKR0pwVeClTFVe
         DqEgfPvjIlUYu2xM+Gisr/T22wLkvwgY5EBJitTJCsPJ6xfRfas6k0uu2Wp1ZxEKinTr
         EQuzg93HAABm2VjLjalpNYAbqydMeL4UkhqrYXrlE58pZXvlxutZxQZZSMnojLPEUDZJ
         SSFO6NHYi/knBp3j8CwJWoVLEXIrKWe2E5K4rizhlelrNgCNyul0HTcNnDBt5H7mSdrO
         VVzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KqqGzdji;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V3qmzhsD1JzJKs3Db5v8Gq158qqR/eP0f3rFJbfqhvs=;
        b=rviWEHZvAQAiTDe6jFgk4SbIBY/cXwKFN8QjPbQZmWuyZsvy0FGVSh6QaBSsbrfWPm
         MWCnb7YKLQYYaxNCX13KDW24meuJJ2GPuGhRI0fjXA49rgCy+yIGy+guA86MAFYWu4S6
         K8PYiyB/ifJIP3XsvLjpyVXG18N7pYdhswNusfvhjYysdHzzJ8XiSfwDioAq+BpwkHL3
         tLz+WkFv6c2VE+NLSwCzRnyfkA+w8oJOn/0eRqYiYoQcWmUB1ELpqvDq1wYdF3mBasof
         YU6f+B7YPb7s9dJURU5hVmql5En4ZalNDFuzPiWnOZAw/srS29Q/kASH+i3USDfUqZAc
         tk1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V3qmzhsD1JzJKs3Db5v8Gq158qqR/eP0f3rFJbfqhvs=;
        b=lIt0+ae2QGD6CteuZyqxARS6YtGuN1UhpIaGXF7mzIDLMh7sfg8HpQHrzjtKQy6yO0
         PO+2+HSGEeq3mjr50PUjQn7tnsSllOVmSsfTXiu6s2ZxGSWxazRy1/AN+nO2GVhosugD
         ynjtO45UXnW/TTdDHDtGtlDh2IvSQENcZyRxIycrFDWo0peSk9wvUmwHMSj8XW88bGIr
         4AL50xLVIZTkTZANhiVO7X0RoYpju1VUr66ZN9mlIpIW0gA0BSTL1Ol966mKFkcj66y3
         pzdRNX40QLfeWzV+vidSulzweg/EAnI8gT3anuWifwIVZy7OkkWmdaaka1r4ldV4VhNi
         O5dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V3qmzhsD1JzJKs3Db5v8Gq158qqR/eP0f3rFJbfqhvs=;
        b=PPR5djtnmOdatXbgzdsTRjjKqSyN8uymRmQO28jqSjQ1tqfHQ+rC95ilXpNFvHzrct
         jUI200UWfTLwXwtpGsPFWZT2OTEXKai3vaSTaNl4grdyVc9r9kC8q3X32q/27Eh8XsC9
         xDarjnZo+XHIAcF7kbsWJWfZxcKDiMNNmGBCK7pEPi2qKYTRI2db1bRlNF9VXsHKat2K
         00/GWbgoK6CwLGkir3sl2PWt/xQwBlY3vg9SEAVM3/iytqapsGQlibmWPPt5esKD+Z2q
         e6BQnB0zaVc7Sf8SyFr5JBgKHtJIWfVcEg/hf6BQqFrAeLwuZ5Wwha9aq4D/spumQCKK
         TlNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Nnpixf+hKwXLI5QsEy6cH3E5B+aWp3LN066HB6Iu/z7hhTuQ/
	ozYd+Sa80O9tq3nftw8ukzs=
X-Google-Smtp-Source: ABdhPJwxMR/v/8KJG0rwJ/JmcosYCOAVjK6GfPRkyVFeikGrszVQ7b5d2EcqOfSbc1AxxZVZRDBoFA==
X-Received: by 2002:a92:7914:: with SMTP id u20mr21389837ilc.203.1605149538511;
        Wed, 11 Nov 2020 18:52:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9e47:: with SMTP id j7ls245906ioq.8.gmail; Wed, 11 Nov
 2020 18:52:18 -0800 (PST)
X-Received: by 2002:a05:6602:21c2:: with SMTP id c2mr21471439ioc.184.1605149538106;
        Wed, 11 Nov 2020 18:52:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605149538; cv=none;
        d=google.com; s=arc-20160816;
        b=UvDKWTS5hKMfXGiWQqkBmKBk0A5aP4lN2Y8OaoQAHq8h+3WKFj+gCmrGBq1xzHoCBu
         FzKW4iwiFRyXLdkHoHvZVpK0xOw5ZS6oIsefTWJusqzD0lWsuoYn/PL7pCDqHSiU3wWI
         vTnQ/Hx4K+DsiCnQ164KbcnplhXDretTaKwwo038TGx1cZ/IljLgIXZWBKPF3432IMKi
         OobdRS7kaFoBLe0NPrQzqxwrgyIyKvV9zDvNQpKe9j4EKy074vDTA67fINWXDRocTN+u
         h0/C47F3vMgCK7BvrgItMeqgI06+QsauEDh7kXoJQ2yji6khcE4dB6FnGBONucuKAFS5
         m06w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pL9ufWnatBsN8NM+WDk6biI39JI4t6PDl6rvSdpayEw=;
        b=E5ReIeDOvrBlZ112y938pHeHFBDWfVV3CCd/SwQNbe8Yb52/ZpAugbihwVfnWse+3r
         4jiK59vMNbThiVxfBYCMRS7dQn9RgYEGnT6kJOXjhxqj+Ck0or2k34U1cfEroX3hdzE2
         Vg7jZzpxEIK/IcSdPMW6bRzziDWMHUSFfs1AKM7Sf16To3inUmjin3/5kPgyNoJpEILx
         oYlb3DPgy/fLtiXfAgP891Q3ljL22WVzFLFGGoFEgs1/VLwjkqYKm8QUbN52oYY3lrZ0
         CzLWj6FwoUNDGrYgElf9hJhBuXHt9LqTduW5Eh3F1h+F0XWOKX8H3nD6H3E0SjNGJbxD
         mBlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KqqGzdji;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id n9si153068iom.3.2020.11.11.18.52.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 18:52:18 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id v11so2991310qtq.12
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 18:52:18 -0800 (PST)
X-Received: by 2002:ac8:679a:: with SMTP id b26mr19694990qtp.79.1605149537509;
        Wed, 11 Nov 2020 18:52:17 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id j19sm4127986qkk.119.2020.11.11.18.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 18:52:16 -0800 (PST)
Date: Wed, 11 Nov 2020 19:52:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>,
	Abbott Liu <liuwenliang@huawei.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jian Cai <jiancai@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mike Rapoport <rppt@linux.ibm.com>, Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: Link with '-z norelro'
Message-ID: <20201112025214.GA873083@ubuntu-m3-large-x86>
References: <CAKwvOdmqEmPGqbkg9KpgXh+jG7aWtFVn16SCUxqANBYQPLhoXg@mail.gmail.com>
 <20201110015632.2509254-1-natechancellor@gmail.com>
 <CAKwvOdm1uvFpG+zJkkQfuSoQkh46-Vy4NNex_koQ+RaKZD2q_w@mail.gmail.com>
 <CAKwvOdmfxrs=J8v3oKC=YCePJyFq6Kuwa9pOnrrFbKtAD4NPxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmfxrs=J8v3oKC=YCePJyFq6Kuwa9pOnrrFbKtAD4NPxQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KqqGzdji;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Nov 10, 2020 at 10:49:32AM -0800, Nick Desaulniers wrote:
> On Mon, Nov 9, 2020 at 6:05 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Mon, Nov 9, 2020 at 5:56 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > When linking a multi_v7_defconfig + CONFIG_KASAN=y kernel with
> > > LD=ld.lld, the following error occurs:
> > >
> > > $ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1 zImage
> > > ld.lld: error: section: .exit.data is not contiguous with other relro sections
> > >
> > > LLD defaults to '-z relro', which is unneeded for the kernel because
> > > program headers are not used nor is there any position independent code
> > > generation or linking for ARM. Add '-z norelro' to LDFLAGS_vmlinux to
> > > avoid this error.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1189
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > Thanks for the patch!
> > See also: https://lore.kernel.org/linux-arm-kernel/20201016175339.2429280-1-ndesaulniers@google.com/
> > where we just did the same thing for aarch64.
> 
> I was thinking more about this last night.  If we're going to be
> playing whack-a-mole for each architecture with this, would it be
> worthwhile for us to raise this up to the top level Makefile?

Sure, I can send a patch along tomorrow that adds '-z norelro' to
LDFLAGS_vmlinux in the top level Makefile.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112025214.GA873083%40ubuntu-m3-large-x86.
