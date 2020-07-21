Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMWY3T4AKGQEDGCXBYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id CC04F2287CF
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 19:56:04 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id fr7sf2844399pjb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 10:56:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595354163; cv=pass;
        d=google.com; s=arc-20160816;
        b=KQ1p7y1d+QJSs6Tr82MOM5kaxkVJEAFVHJDo7XErDpJoFEbNaFtFfu947wl4RuKooY
         NC3biSZveIIqn9ogePiRbslGyg9uCzA4kJJNp5K59q9G39blphzD/boa9ysgfj7+QBa2
         eu+/bZ8RGJLlHmBS0TTSUHrDOkGV1eNrr1pPKOENyEYg08asf2RnV344lbeTRJcmFvuS
         OSjy/aOZQTUhemKQPTQbpxeE6grxDaRr6ktr4m0pZbrJ/I6nXLOmL2z/ifBu7aQqWR0U
         FtVlox14LQ44XTQFWg0PlFrMW8SM4fDcVXpRb84Dnfqhjj5BFmIDdIfC5En6SZrGR4Lu
         ntHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/2UW23pFbnlcUSDu+8wMALdO06fMIFt1PWkT7+Kh4DA=;
        b=VQgeVYrvkhdzyZD/xFwcJ3p++8XS46BIM0XzeLcOh5XbpXnQYtcMzp6LBLVgdmo21d
         Y3z2uDEpr54Uzx5FLrK0UMyno88swSbw4I0R9P8ZmlZOs8lHnOQqcipm5OXtt14RDDmh
         uuqTGQuLMju0qH0ZY61Bngz+zKJUMxExZZxZX5LS/oG/VuJOeLce1TYFIhNjBssiJd9R
         UcFHuYZDLGrfVnYmeMApplgIkVtfYQgLIi71TFY3MTAMuBma5ORbEhhdjPj/gFgm5xr2
         3kqqVVaOJ7vEKBW1H3QoJiI2Sz0zf65x6hTxZP1jSrKq4PUq//w1bVTYHlTlbpKaNxSE
         pQyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K2vAwTSi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/2UW23pFbnlcUSDu+8wMALdO06fMIFt1PWkT7+Kh4DA=;
        b=hjYJfIKNkwS2pihp6kWLnxpQpaqPv10dENY1fX0stgQnysHDOtmd+YR1ya6C8Fy1Ba
         eEztTBYvKjHEUnqCb5KcADsg2FDMAsi87KZcDAxdM00pOTOyVCoDElqRdIDtGS3+ced+
         ssIb8sCpzhzwOLjdaF3lEG6PEW6mZMbDQATfGvN/Gv1cvJrjg4w+wM6jOIXUaWzIAdRZ
         /7Otr/9zvq/1J705d0pNTDRM4hc5GAkZz+bkmWXvvfjV6GIWn+n+Q0RlBfhBVSufLVQ7
         qL3WWhf/qrGmoWOuF63nAkYx00jSP5lyYHZ7pCmYk15FavWxKLCXs9pe6hUGkbQNj/v2
         MNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/2UW23pFbnlcUSDu+8wMALdO06fMIFt1PWkT7+Kh4DA=;
        b=jEZvS92Nx7+MBfL2A0q3aKhGs/ut/UOKrxoYOYWP3Zf18SLP2cBIP3FiGOEK5X3yoc
         hLhS6ByA/IoWWq3foNPXKHmqTEm0woGNBqsqxMHTOwqWuw/kVaODk9tAT6xtnpSCA2By
         ShwSHWsvhaxJYHVNClHKNHD6y1+Qz1u7cdwhEg5htaJ+dQLYfjLfxnfiM9WtqGT+vD1t
         CdH885tpz14cmPmsoSToOYSHO1o9uJs8CPMCxWg687gl6VYAuDDRc2xmVS3F7Gucw+9z
         7jm36A7r0VccUqRtwlnWlHDypEuw8SMEt+eyWsfyWOTS6ZEKtsbBRuFU5FY0PtkgEqY8
         u17w==
X-Gm-Message-State: AOAM532YhGcIorb/3dreH4tTxNJQ3vEZiIS4aOgDsCgi/19NsO+SEr5b
	qfKv6tKKNlIvkOHvk+qoTiI=
X-Google-Smtp-Source: ABdhPJyKiI/zag2fOoRg73VLEzP2Kzxvjh9I5iBPzZkYjLRbfmfDTKm5JXMpeANOVd4iyYknAx8LPg==
X-Received: by 2002:a17:902:e9d2:: with SMTP id 18mr23186787plk.40.1595354163063;
        Tue, 21 Jul 2020 10:56:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1bce:: with SMTP id b197ls6017030pfb.10.gmail; Tue, 21
 Jul 2020 10:56:02 -0700 (PDT)
X-Received: by 2002:aa7:8582:: with SMTP id w2mr26206451pfn.34.1595354162647;
        Tue, 21 Jul 2020 10:56:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595354162; cv=none;
        d=google.com; s=arc-20160816;
        b=Pn729DUziY+AutgmaiaYt23fMOWmcn1kA0mMAvVf5TGs7r9ZQK+cnch/b2Hhl2aQj9
         HSYAZS4Fl93RfhmLDo/b+EQGUl18sIg3JztgqzZmBX12llTjdm++UWXcsPQ7kAM1zMog
         xoD6M5F+FvgQGBDFN+BjhftN2v7Cxh8sd/13+FIgmGWm+vexjFiPkxilKJOtnDvWzEOR
         oOagBHXAdlry/++thaPQvjq38zvAaavZDks4EBZcuHGMEkCx1enrtR3JEUzT7bkgwYyE
         jhbXbakmnh8sUY3gL4y7uLXiEq3Z/7eXE03rFGHu1CVHrYNJpLW1ux5OLymmFbX+W439
         kVAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jzIH5N8X89auq1yzOeN+/XIVI9FfDEkSMipXnUL9KwI=;
        b=eLfNUHDQoV7DR0NiJFjnKstV7B12OO+e0naNKBz7/OO+CKOzz7dMltqeiR8FKyVZ4C
         oy7fNvNwbhq9dBzELLank/GysItt5KE4c1kRLBB4OK1jVQJe5YavPjTkPHWAOnT/ik61
         ELTMu8bZgLH45bTLkhltTTy6iKcBksXkkNNkM4gZVbqf0VxakHWjjee/KzNNzd9x0fxC
         UCAPvOpdoL+3nLJMPpsWYfPWleoHjpgRBFm4s8BoJIMnUrFWFlarUShkmbt8241EoSzz
         ByKVkuxug7UsD/OUpuMgZxqJrqztn+PFOONwvTRkx/QfpPyoxo7DIgX7f6h43+BOgBC8
         cUQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K2vAwTSi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id ng5si140717pjb.3.2020.07.21.10.56.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 10:56:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id t11so11067765pfq.11
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 10:56:02 -0700 (PDT)
X-Received: by 2002:aa7:84d7:: with SMTP id x23mr4452563pfn.169.1595354161941;
 Tue, 21 Jul 2020 10:56:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200721173125.1273884-1-maskray@google.com>
In-Reply-To: <20200721173125.1273884-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 21 Jul 2020 10:55:50 -0700
Message-ID: <CAKwvOdkXs+Z28XmNA5i35Bun4kZM1fn5j9msPo8ajSi7JjMyCw@mail.gmail.com>
Subject: Re: [PATCH v3] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
To: Fangrui Song <maskray@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>, 
	Bill Wendling <morbo@google.com>, Manoj Gupta <manojgupta@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=K2vAwTSi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Jul 21, 2020 at 10:31 AM Fangrui Song <maskray@google.com> wrote:
>
> When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
> $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
> GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
> /usr/bin/ and Clang as of 11 will search for both
> $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
>
> GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
> $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
> $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
>
> To better model how GCC's -B/--prefix takes in effect in practice, newer
> Clang (since
> https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
> only searches for $(prefix)$needle. Currently it will find /usr/bin/as
> instead of /usr/bin/aarch64-linux-gnu-as.
>
> Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
> appropriate cross compiling GNU as (when -no-integrated-as is in
> effect).
>
> Cc: stable@vger.kernel.org
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> ---
> Changes in v2:
> * Updated description to add tags and the llvm-project commit link.
> * Fixed a typo.
>
> Changes in v3:
> * Add Cc: stable@vger.kernel.org
> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 0b5f8538bde5..3ac83e375b61 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
>  ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> -CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)
> +CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>  GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
>  endif
>  ifneq ($(GCC_TOOLCHAIN),)
> --
> 2.28.0.rc0.105.gf9edc3c819-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXs%2BZ28XmNA5i35Bun4kZM1fn5j9msPo8ajSi7JjMyCw%40mail.gmail.com.
