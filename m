Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSV3UD7AKGQEQE2EBKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7F72CCA3D
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 00:05:48 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id ca17sf152675qvb.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 15:05:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606950347; cv=pass;
        d=google.com; s=arc-20160816;
        b=0uP4n3cQGIvH8ArWnLh67LVtJp6drrB6JuVr/mkkUUwJqMtYVc6v8ICR43UtTC9Seb
         xUWBdgC0uffze3mOtGuaRnZ6/o4AcjGM9dbZTwABbQ0aMOm16+GVE4v4k1G1UbN8u+o3
         EULRXKNA9hqPbktYLr87ag/MopJeeewoLgNZbbZxZOQ2OuDvHjOnyb/T6BkBUiPPsV0i
         1NWv2jK17w3KWDQCzJF4UB1xzGS3O0iTy4reojB2AqwIP7EleYBVBciPfxxf86kFW7cn
         IGAaXjIbh6oX8Fg4b5zdOPuDqE8qhCjg1dDY2YIbzrRISi8F+ISWDOTKTENeq2x59UzS
         s4Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lQhdBQvwCX0Uw9ukYRHXlX44hHieIOhK7AyB2/DeNJU=;
        b=Cf6+yx25XKn3tgsfWrhI/ms+0sdDSqM/6dqYIxw3AG2XOGGiojJt7DL6UY2PMo8u3w
         HTLYUpJaTW7OUXNHCQhhb2DKSVvhO7VEIuLgUtl0Oac1M07NOKifQfp/ky0zC4AIHfmp
         PBdSq/WzcmU3k29b+vx/58vRWxXXJa3FLtukfMoQiXOT7BDFwuL534Zw669ovLl2ECLv
         rlWOOg/dHOfI3bpdTyslpMfrXVuUaLA2mfdweHOXKOeeWR1Ga7W236Mdnjgy+kxVj+0i
         andopevhZ4NK5WxVLlTT+LaYH4ug8gbj4CMaBH6+AsbL1es0aRkwskH6u8wMHCkEKIep
         IqFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v2ciABik;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lQhdBQvwCX0Uw9ukYRHXlX44hHieIOhK7AyB2/DeNJU=;
        b=FAv1nDieyFTLI37//sAztPvMkeSDtGIwXhYhOPqbCfZsvX+tl+fjquKHhg4dOxnuSC
         tkMEIC28nCY7gPaIBpGYdH3dU1OKEP9t9bU8c2ixOu/KEuD8xWnPzCk8nqZlospfplwb
         J6GiVKysTehyArDr5UWc577RL75u28FYWHVePe2gODGQmDaHbGMcMPZ+PPimt4ud5LQI
         ZgrvHLnlGX6YNPesVVWJ3lCEuJLI2ERbTRcivSNqjS2xDGAjv9BOIUCR8XZVT1IGugLS
         TuQDL/ZkHC7ZjwLk8W54GXAr2+Ob5DKRW4u7S+gFBV0iW97WoxNVqC8nTZQKDnXAAMZ+
         C1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lQhdBQvwCX0Uw9ukYRHXlX44hHieIOhK7AyB2/DeNJU=;
        b=H1nAQLXfwBudk9ELcnEsWvEjFPvL13FDnx8ln1hl3Ah+wx1pIhfPg/vEKhphUmsPCx
         BhUW45BrngI9fJ2Sp/7JXETu96Kh3Tm/j5jmHt3WmU7WuI2honWy98E9/44OZZZxHxc5
         U41rliNYDRD56QZtab1xVm+X26OHYIhjiGqvnZwBLr8GqPhxCCqqFvnodSpzweUp5IER
         HBniNZcRM4NvPMuo3pbdwSNOTVKSGeVpjPS7qXjbjhoe8udKZKy4AKVLx7ycHLROwCGo
         y6yB8ikO1EXrZsvGvrTPkJVLpeMejkYhgvkJ8KcWP4GhjnbWwxcfrpSyXpi0dXdrL+Vh
         HF1Q==
X-Gm-Message-State: AOAM530BzaUTx2a2ofsLa7I3mWpLIvlum5Omq3td/jlldPCuDym8emI5
	ArOLhQRnx02TZVeMOpCPYlo=
X-Google-Smtp-Source: ABdhPJwxBGkbbVWJOfNB4xW4PdTfngjvuvj87msjz+LZK8ehemfN3H0YnBIwdQ9f1n6208Zb36fwjQ==
X-Received: by 2002:a37:9ed3:: with SMTP id h202mr121380qke.126.1606950346917;
        Wed, 02 Dec 2020 15:05:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7dc5:: with SMTP id y188ls1571300qkc.6.gmail; Wed, 02
 Dec 2020 15:05:46 -0800 (PST)
X-Received: by 2002:a37:a595:: with SMTP id o143mr75563qke.373.1606950346474;
        Wed, 02 Dec 2020 15:05:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606950346; cv=none;
        d=google.com; s=arc-20160816;
        b=Uok7FCpfT0vKPuuiTGgo/BGYOMziIIaCm8q9UGRkYpi8Bv6t9x4nyf6pl1QMgRd9Eo
         jvv7YM7KVMRihai35Jfs2rF/9qsutjvEzpBjfdbzrP0+q51S2t2qCwzL132/DI8R9XKw
         D1WTrZfrpPUWjD2BE5c6QIpooTGMIJIoKqoPstrApNWm7ocPEnRmkBjCdROA8zNPx6TJ
         Bo0p/+Td4GTDcovxEVqbfEqZ0NyrrT87arCAXukb0pKIQbWCeJiqnhW+W066bS8+B+7l
         feTc8gAiH2MxE1/UutOCnWomyDKyGDKVU2PQmpna5nfMgPjpTK7C+5Ji9MnyB2zCrIyy
         BrXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QCXmb0ke9dEDGOMsPEI2jGLSLyijHxI1XuNtIp3bcNY=;
        b=nfyDazPTPrV5GYcVnKKNm6EeapatFBKULVGMclxnjJYXazIcdrZX0x81obxvSBZCvy
         5WR2LQ7rEJdzRVps0ym0Qdwuot6DXIomPxaPG6+ykLsNeP/MxGJXT0E3DkXlKL9rgCHf
         NVp6tm4jAUnl94txDwa5B4QONBtcDyL9kmKuvd5Bu2lkCLaAOL3jtHOHXZRjZL7iCGtH
         Q90/pK+esSrgjwCKFhdryXko7LnzX0SfzYikPn4w+9QKnrJMpFoRwlssyl1kyiM0ahQs
         u8vJ5ndF+hdfPeyE/AiKBbeswPoQo6RTMWOYfKM8xRz7JTjAWiiKuhI7f90cynPO+WfV
         TyHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v2ciABik;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id s190si13660qkf.4.2020.12.02.15.05.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 15:05:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id z12so26611pjn.1
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 15:05:46 -0800 (PST)
X-Received: by 2002:a17:902:e901:b029:d8:e727:2595 with SMTP id
 k1-20020a170902e901b02900d8e7272595mr320847pld.56.1606950345701; Wed, 02 Dec
 2020 15:05:45 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmqEmPGqbkg9KpgXh+jG7aWtFVn16SCUxqANBYQPLhoXg@mail.gmail.com>
 <20201110015632.2509254-1-natechancellor@gmail.com> <CAKwvOdm1uvFpG+zJkkQfuSoQkh46-Vy4NNex_koQ+RaKZD2q_w@mail.gmail.com>
 <CAKwvOdmfxrs=J8v3oKC=YCePJyFq6Kuwa9pOnrrFbKtAD4NPxQ@mail.gmail.com> <20201112025214.GA873083@ubuntu-m3-large-x86>
In-Reply-To: <20201112025214.GA873083@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Dec 2020 15:05:34 -0800
Message-ID: <CAKwvOdkpvYP5z3jO3-qHQRrzqWgTg+ps3gpum6gCjnGPBVS9=w@mail.gmail.com>
Subject: Re: [PATCH] ARM: Link with '-z norelro'
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>, Abbott Liu <liuwenliang@huawei.com>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Florian Fainelli <f.fainelli@gmail.com>, Jian Cai <jiancai@google.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=v2ciABik;       spf=pass
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

Does this need to get submitted to
https://www.armlinux.org.uk/developer/patches/section.php?section=0
since `-z norelro` will produce warnings in ld.bfd for architectures
that don't support that (the results of the thread on adding it
globally)?

On Wed, Nov 11, 2020 at 6:52 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Nov 10, 2020 at 10:49:32AM -0800, Nick Desaulniers wrote:
> > On Mon, Nov 9, 2020 at 6:05 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Mon, Nov 9, 2020 at 5:56 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > When linking a multi_v7_defconfig + CONFIG_KASAN=y kernel with
> > > > LD=ld.lld, the following error occurs:
> > > >
> > > > $ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1 zImage
> > > > ld.lld: error: section: .exit.data is not contiguous with other relro sections
> > > >
> > > > LLD defaults to '-z relro', which is unneeded for the kernel because
> > > > program headers are not used nor is there any position independent code
> > > > generation or linking for ARM. Add '-z norelro' to LDFLAGS_vmlinux to
> > > > avoid this error.
> > > >
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1189
> > > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > >
> > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> > > Thanks for the patch!
> > > See also: https://lore.kernel.org/linux-arm-kernel/20201016175339.2429280-1-ndesaulniers@google.com/
> > > where we just did the same thing for aarch64.
> >
> > I was thinking more about this last night.  If we're going to be
> > playing whack-a-mole for each architecture with this, would it be
> > worthwhile for us to raise this up to the top level Makefile?
>
> Sure, I can send a patch along tomorrow that adds '-z norelro' to
> LDFLAGS_vmlinux in the top level Makefile.
>
> Cheers,
> Nathan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkpvYP5z3jO3-qHQRrzqWgTg%2Bps3gpum6gCjnGPBVS9%3Dw%40mail.gmail.com.
