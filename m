Return-Path: <clang-built-linux+bncBAABBRWKTODQMGQE6IIL6NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC7C3BF94A
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 13:45:11 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id m62-20020acad5410000b02902411a37ddbdsf248717oig.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 04:45:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625744710; cv=pass;
        d=google.com; s=arc-20160816;
        b=yYPA0BMCFvCmksfePbieaqnLyqBWbiDZV/A6tfqAEzWtGmdWssJbeIPeq/Nc+rhLZK
         vajjFUdFH16cxt9DERafBRZc/FqyeTU0iqd5EOwrj+8Px4UNDFDvrjrHCHpYQmU1Sikc
         e+FFXmOHv8XIHWDYoBpqB3UsJAm5kJzx53ATg8o6VKmGvtZUwNWVro5l/1DC0R7pCsmA
         3N40gJdzFPM25rAFS8Z0iuoJZoxRa2lOFCxdK1t66AIQp9rfdQNahjvmLznDtzElVhq/
         t3+JjpNuIlMcB6sYt86NbkLbPi65ANoNBKjVfqQv6h2AMN2qCGcbdX9jJq+Rdqh7WRSW
         qsBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=zPa3maK7t31HOT/xr78U8d5yuHjNtpIphJF81bG9k5c=;
        b=NwJTrq2I7TMa/pPHgcKI2C3aXBOoeAX84lfCyUI1Rs/emb/cCxkCuZRDU+TzpO2ede
         +ddKQ0hI0H4dUOIb7u0HrQcGU6k2RVIFioM4bOruoeA4n4hBZaAgjSVpkx/C2IJHIKWH
         5IVJFCReqS+DR9gk+FI1cqkTqfezi0E9BV1dEr3wn1mrFXyj5B0JScXCZr0CaCSc9Xs4
         hXPh7p0kmDuDOJDmPIZLFnZFaUOtX1NfpT+hIeY8fM6Wj1kGTWU4nXL5fU71uSwUd2zb
         VFdbfkc2YhMfAg4+MbQhjcllw7VICLoLDq3FzAoIKVS0EM7RxLVAzhZkSIWWpZZYlXpD
         wWiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=biSn9xXd;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zPa3maK7t31HOT/xr78U8d5yuHjNtpIphJF81bG9k5c=;
        b=szl4lzKztxxO4Z6pU1z9FSpCNDXtAu3YqY6LpnaXuiJaPS8F4eCVNnwLK4ltxPGlX3
         /u1rTJEmqFioTO5QKhfoDB4ClJ3kk/5Vh8tisTwbIzAQR1D3I7jiQwNmJ9E/2a4ryEGN
         EHiBf3m6XBc5k+lGYzCtqXDmUJAquuPLhXsxxsFg57vO01RBaKCt9xx4ckO1eRCOk6Y2
         Yl3VVEUnyQ3h4AfPpQ+5tAmd52maea0wGYDvQD2ZL79wMalNI6deGtqV8MjKadAySs2b
         qFmM0g0o1NUByD0eT9/QdSsF2pEI5dKen4e+QlppIM5E1KKue5+kxeMHHUdcaLt+YK2+
         A4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zPa3maK7t31HOT/xr78U8d5yuHjNtpIphJF81bG9k5c=;
        b=U4Eb8btpGjI0/NEptZO+eyIx1NM3dqR8F7tUvkSf8R24/jGO1Colbn0EytV6E2UsSo
         7CUt62p/eTN8h3lZ1pgYdv9hVI05YPqw45TRUeK+kGodIA7gEi+hDGRA9/l0FySQiANe
         4gpuLqR17HScXlHz8S+86o4w5f0/V/IfXZbMz8fi6OmpVAZpH2SQ6SC4Rm/VOZY2/+Xo
         2yizmp6Q0dxO5Ss6wHo0FJg/lHfO5bIx8GdRvHYwI0sJP9IhZWmx6x+DaEcMSmTH71Ia
         nv8S3ssaUaCootPWBRis3lx8+WVo4oCI8LIYZsOe1rW8m7wBw50EaTo3kpyVW0Bnt/kM
         vs6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LTJwOq0oA8uK3hrsepUDmyFYpUCDyeZLRXDeGe9lfdVCv1qpO
	+Ls9klT4vAUgx+ORhw63ZPI=
X-Google-Smtp-Source: ABdhPJxG86T00cLGI+VUl/Wm4mYkmGC+Ip5fAvScYwp2ORaxwMk9cR/c9Cqc5i7wf/BZ/ldJISpeGg==
X-Received: by 2002:a9d:8d3:: with SMTP id 77mr9151567otf.6.1625744710523;
        Thu, 08 Jul 2021 04:45:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2150:: with SMTP id r16ls642828otd.6.gmail; Thu, 08
 Jul 2021 04:45:10 -0700 (PDT)
X-Received: by 2002:a9d:754b:: with SMTP id b11mr3950242otl.149.1625744710155;
        Thu, 08 Jul 2021 04:45:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625744710; cv=none;
        d=google.com; s=arc-20160816;
        b=oGM3yDeToVrvZGZJqYc4dBY90ffGjj1kD+C4zUflJUSHLjWmUrortCC71VqdMl+fp0
         xGvtJX1K5RM9CMzWQKbWwIVOxwDpvceqRYCC9LXm3AJQiSR/7Ytw7yuzPc+rBr/BgGsi
         d/dQCu9sizC2eLml97lqWpQctnSBiSYVvlgDTRfqTBCCnxc0XBNLFUTT0hAg8IOqdb4Y
         JUmm69KMqj8slInFm0TXHe5s1C+xcqWpW6iw1PZn+ts5sYHYahRzt9+OmGxGhsFTdBu0
         A/aZNIXQIWVwpnZ1+Bw+Z7A0WQ51yLLbO8cdIMaSVXL56akNAgdVw+tqzaGYQouF5fWG
         1UoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1LfQZyFa4XF4WpQf1Q41z67K0cp6BkB9l3cbyeUR9TI=;
        b=sArPbw2pptDinxZkrW+6jlt7cTdgeSxaZwJ5thhRaespVVQmOsm1TqJ5mYrH186NsW
         O8ziQPqA8TNtzZpPg5sVs1fZixtCet4g8A60JxK6L1SuQ5lw/Z+iZ3OThxos1mzVdKOt
         Ib4t43JjVUf8m5h6YynHeic1yxmtTjRcsCEvB3HwJ7vEKNEbVOq2uJE649J+csnsXvzY
         UNhHjcFttYqMAiJlGSC3a535DA5SHLLLgRX5aLxEMtbG1SY7OLyrwRog+W5VwGCCrTmf
         R7KAgMj4c2DG3Hkucew5i29mKhvp12LE7j1eKiVrE/d2CmpcxzXU3u2gbMSlKoBptC2P
         IuUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=biSn9xXd;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m16si246894oih.4.2021.07.08.04.45.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jul 2021 04:45:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 63BBB6143A
	for <clang-built-linux@googlegroups.com>; Thu,  8 Jul 2021 11:45:09 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id f9so1479305wrq.11
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 04:45:09 -0700 (PDT)
X-Received: by 2002:adf:e107:: with SMTP id t7mr34238667wrz.165.1625744708010;
 Thu, 08 Jul 2021 04:45:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
 <20210707224310.1403944-3-ndesaulniers@google.com> <CAK7LNAR66iE0w4bjpMVEz6W==mnc59MEnRWm1MXrqApP0aE4Qw@mail.gmail.com>
In-Reply-To: <CAK7LNAR66iE0w4bjpMVEz6W==mnc59MEnRWm1MXrqApP0aE4Qw@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 8 Jul 2021 13:44:52 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1MW9hYzDT-iL4CpwaJ5NUuQODT3XgheocrnF7496GKFw@mail.gmail.com>
Message-ID: <CAK8P3a1MW9hYzDT-iL4CpwaJ5NUuQODT3XgheocrnF7496GKFw@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=biSn9xXd;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Jul 8, 2021 at 12:23 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> On Thu, Jul 8, 2021 at 7:43 AM 'Nick Desaulniers' via Clang Built
>
> We must rely on this behavior of Clang because
> --target (which is contained in CLANG_FLAGS)
> must be specified before the Kconfig time.
> Then, a user can toggle CONFIG_64BIT any time
> from menuconfig etc.
>
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

I think we usually only have to provide the architecture
name, as in "--target=x86_64", though for arm I get a
warning "clang: warning: unknown platform, assuming
-mfloat-abi=soft" unless I provide the full triple.

> For example for ARCH=arm, which is better
> --target=arm-linux-gnueabi or
> --target=arm-lnux-gnueabihf or something we don't care about?

The kernel is always soft-float itself, so it does not matter either way.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1MW9hYzDT-iL4CpwaJ5NUuQODT3XgheocrnF7496GKFw%40mail.gmail.com.
