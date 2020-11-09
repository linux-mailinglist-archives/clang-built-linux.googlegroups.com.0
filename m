Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLNKU76QKGQEBM66LIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 543C32AC98A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 00:47:58 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id o5sf7855701ilh.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 15:47:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604965677; cv=pass;
        d=google.com; s=arc-20160816;
        b=F0SvGLwG/zst7lc49KmucwDdEi06obreAKDHB1a9dtpnsvD5BHRPuMkzW4nYNXZyHW
         CrSIKQE1pU/7zIOCWx/I9gDpuFyC5zYVYbsmh0NheF+xUTLScNFTRhwMRm5KUIauThgY
         GESyRuV+/hvdBql2pKf/QiD4pAHi9es6+jY6SGvAx98S4RQnadXTsFsXuWruXP7MWr9j
         2vHMWRUlX8+HOAS4zc+Ao6FEugvuwhFt4eHUjw3u1qZKRNXprmH2iWyQxQ16uZWnPYip
         6lrgtrOJ5LY3nHODmKbhzd/WmsceAHzdHXPy3zcIeQN7emUHKEgHeW8XDMwA60Y74Tbu
         JUmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9b8yd1MYWtbk7X1+rNQ9crSQm6l2bcbQwrCZAkWSYGI=;
        b=s1+FjbBfiQQ8Pfj9NoddjtubOhLn6Lt6qRIFBfUTrYIhtZBCAkJ2V8qD0ZPfe+RAtX
         mNoAkH0l/GAnE9b/OoV41BA7uqsBv+JxI61DbfXUhcKpYoGU83y8AJknXKseH/zGjaIz
         Tpf4/4Lbiw/GcqDmgKJEb/AQO93fyddeyN7bfBNJBnVqA6hkRwreVxiCqaJiwguS6pfh
         /DcEvxBQUUjD+Gj37gFFvMJ//wwOf+zkLSNxLsVTgJwgu34s6GMt6DyaAnwqirBU+ZeX
         Rf9TEzlZKlF9SZ81FAGlrmsMUo2R1RD9fX23zqau20ogNPet/kjFeSZ2c+MS+aKsn9f8
         GkCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uyECh08l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9b8yd1MYWtbk7X1+rNQ9crSQm6l2bcbQwrCZAkWSYGI=;
        b=eQ0fZdBzWNqW40QT9uXa3CPqIkkH0wgpdF43auH8vQdlF/Z9I0UCn7+I3evGzzjhCw
         l1yamkL31bIM883XbGNcTJgON3cDc9rwRnyo39c0ZaAOHKZQ5Iw4e6XpJ1sTTFqkWO+G
         iWrWqhfPjbsH1uf+wI78bfRZ64lxZd854nXKTP91pquZCVLAp7xIxvijOMvOJsv+S8Za
         ZGylCDe2TD/GTQUxmQPxocv4+RWc7U4lnfO1Lw9F5Y6374zozrlCBBENw61Y1pVsrTYg
         bAgtMr/MYMgJU7EWj9C57HUPK8rBcJ6Lk9x6mgVf0p5P+i7KvMC5A8FBrsL+ko8V0rc7
         ahgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9b8yd1MYWtbk7X1+rNQ9crSQm6l2bcbQwrCZAkWSYGI=;
        b=dzIh2PmzNuhv008uLZO5wGV/ZeXndfz6kiM3sAEr5pS1I0CMXk2NR6a4FzDsDRECfa
         JRArzOysrE2K6F/D2thsE73snGGi8M7Hiq3IFwLaIIhNs/+VYVi/91ChKDYnwEXahzcj
         yq+hAqssINgObJi8w5q4gC1OBCJPhrY/FEPgBxsagqB69w/I9kZpOfj8gDX4RxctDTf5
         3l/BrwLqQn/bsII3FPw6uH0pJGi2FnqieAy23+dT2oM5hnYdwoeHKe1VZbj+YqWlua6e
         C6uXpzFU4nRUKXnONGKc7bO3+urkXS6KnpZtBpubNx6gOlN5iyRVUwX3Kp49SgXCYasB
         ufAw==
X-Gm-Message-State: AOAM531/bMrkViWXUvYRE+RcLn6DgWM1F2z2jXfvxrHLFTS13oXjvAXQ
	7YiSJhQKdlWKUPmdQWljzYE=
X-Google-Smtp-Source: ABdhPJwVZ6x57zo2sl1/NljSQsPM2HwYva9eS+N085GCZ8zYn46PuKWWTxX4up+Td3FCjLmzre/hKg==
X-Received: by 2002:a92:7109:: with SMTP id m9mr12133846ilc.232.1604965677355;
        Mon, 09 Nov 2020 15:47:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:84ce:: with SMTP id y75ls2189919ilk.1.gmail; Mon, 09 Nov
 2020 15:47:57 -0800 (PST)
X-Received: by 2002:a05:6e02:dee:: with SMTP id m14mr12085575ilj.211.1604965677004;
        Mon, 09 Nov 2020 15:47:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604965677; cv=none;
        d=google.com; s=arc-20160816;
        b=k3X4RTe2884oQRITG0iasn0ZnqDYRvgzcNLgPKXU30+tHv6Bn76GtB6VG3IXgPIooT
         1s2f0fqk9J9ouvFy408EeHSXs+4HV7Te+7kjCRhVHq3d/rCvHNvczDswPHDzoQkq/ot9
         qiDPmQbFVD1rIsGj296TkGI8+jFv+g01y1SgpoYBIjklyYeRT/tEqhZLi9UPM3QRaqEp
         R2JUzLI+jyHCskqmQdvhpAMmhTojBmWK1pAe/TxEgXzrnhLTnMWKcDl+44Wn85Jc/M2J
         K7hezaL9QBGtbQ5JO3mcDFPy8XGFyvF0fVCBcpoCe9OS/XYn0B5aHzt97n763IWtZ+gN
         ZgCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q2033CZHdf26N3r62fgSCGBIIY5b1/tcitpf4DemETA=;
        b=I5IwMJg8rzK+Jl/0d4dHN5iS7+H0Mb08Xt3UDqaW2y1ScXC711HPJ+eIVDisIMGiVC
         1CDCIzvZW0q0TR/Lmd0ZRxwadVGsU63RpZFCJB5jvOMQdjL7b//xs+XzwHUTAWK8nTvD
         eUeqCQFeab1EC3is5TTH71iIqQxgkbxxFBhUAcZQbXhUQhkBOJnviP5YQPPSeFwczwKN
         UfdziM3Gv9H33XoXMCvlGxPGIJpWsbneUJLnqoAJsaVB2l9VP9PEere5tiiGhX3tbLU0
         RIgfctTkUH1ARRpUppvyBctKEddepf9kbYItXXjCfaa0Xsgw+w7gBoel5njuZoBQDYSj
         ahWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uyECh08l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id o19si668992ilt.2.2020.11.09.15.47.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 15:47:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id b12so5527760plr.4
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 15:47:56 -0800 (PST)
X-Received: by 2002:a17:902:d309:b029:d7:cc2d:1ee7 with SMTP id
 b9-20020a170902d309b02900d7cc2d1ee7mr1138913plc.10.1604965676191; Mon, 09 Nov
 2020 15:47:56 -0800 (PST)
MIME-Version: 1.0
References: <20201019084140.4532-1-linus.walleij@linaro.org>
 <20201030002900.GA2248731@ubuntu-m3-large-x86> <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86>
In-Reply-To: <20201030013228.GA2519055@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 15:47:45 -0800
Message-ID: <CAKwvOdmqEmPGqbkg9KpgXh+jG7aWtFVn16SCUxqANBYQPLhoXg@mail.gmail.com>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>, 
	Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Mike Rapoport <rppt@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uyECh08l;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Thu, Oct 29, 2020 at 6:32 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Oct 29, 2020 at 05:38:22PM -0700, Nick Desaulniers wrote:
> > On Thu, Oct 29, 2020 at 5:29 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > After this series was applied and available in -next, ARCH=arm LLVM=1
> > > allyesconfig builds started failing:
> > >
> > > $ make -skj"$(nproc)" ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- KCONFIG_ALLCONFIG=<(echo CONFIG_CPU_BIG_ENDIAN=n) LLVM=1 distclean allyesconfig vmlinux
> > > ...
> > > ld.lld: error: section: .exit.data is not contiguous with other relro sections
> > > ...
> >
> > relro? smells like:
> > https://lore.kernel.org/lkml/20201016175339.2429280-1-ndesaulniers@google.com/T/#u
> >
>
> Huh, did not even realize that the error messages were the same, my bad!
>
> This issue is simple enough to produce by just adding CONFIG_KASAN=y to
> multi_v7_defconfig. I tried adding '-z norelro' to LDFLAGS_vmlinux in
> arch/arm/Makefile and it fixes the build error but the resulting kernel
> does not boot in QEMU.

> '-z norelro' boots fine without KASAN so I assume there is something up
> specifically with KASAN and LLVM for ARM.

Regardless, we still want `-z norelro`. Can you please send a patch if
you still have the diff locally?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmqEmPGqbkg9KpgXh%2BjG7aWtFVn16SCUxqANBYQPLhoXg%40mail.gmail.com.
