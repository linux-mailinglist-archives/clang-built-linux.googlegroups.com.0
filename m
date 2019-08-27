Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTUIS3VQKGQEPI4X6KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A119F34C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 21:28:15 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id j8sf23224lja.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 12:28:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566934094; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Aq30Rgs+zhN19Mi7IVWH7OypVcX92hq2Let+nPFCtPTw3EpnZ1KbwVwIONb9Ts0Ds
         xKJpUtIHKIw2n/u88fHKPR63t+LndSkLPjqHccT0s9qgucaAq3B5zJOtdpIWP75QcofI
         NYe8llTQJOU+F8pnccKubmYsooeYRz15OIuEfF0d21w9p8FHMPD8VAXXOm1JwsL24+L5
         manOTT4HYEMUc8Q1nP4dNluBlkxUaYx1IZc1WB6DE6lo21jdswMyALhvvwS9W0O0pi6h
         1OgaHHEEOMr72O74Gy3SaBynmYbUn7NXs+3FVLvemHVUfBlCfsGsySOXvzZnHlQ0LmLW
         LM1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=oITfzcb2mnyZq11EborssAzldltIDkOweWfU5qNhzZQ=;
        b=YDfKyrWYm1mwTTW2CpEUoKldVEZNJUv6hakk0gjKXNAjZuzoSRjUtcl0+DMYHi3avV
         p4GO0EhpChorgp5Y5fjcx2ivEdLLk49PmeFr4zIb3vft4PiuB0eOmY7x3XZ7QJYIQYN/
         1RZsngL9mQBODePtad8PnUqN5b6YP8Ex8+4ylFm097J19fss6LZf3Q5K5gmGQ6c7bsUE
         yr23CaHqkDs+aaOLq4LvEVFj7IGtxcRTyJv73IJZZs541wPRGpwm9S5g/TsFG6xGOa1a
         Jo1kFKiLTurYLBquA9KGiLMLUuRjFqgqnthd5AxRixqbEuBeJ7zYi3PjZ+vrEX+wJqAz
         XF2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hq2tqphi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oITfzcb2mnyZq11EborssAzldltIDkOweWfU5qNhzZQ=;
        b=Z+6CNoVvvIPG2UyaNYvfo+kEoghBwTdKGuDRTcfIBqODvi1oCtBDyC6oxPuK1K0h0z
         awzM9hIJcgcEF1KXlETfkMbP5anQXX8JEjiDEu1RJdAFS1l9SOGVIVWq4AuvNF5Km/8l
         fg1Nb+EMjrqPYLYofNqCyOGxAe+cuG9LAFuFULWh0r9MzjZ825WEJAwO/agE85niWC7/
         fSYy3MtqB8XnOSV7CTI4aOXI0Wl8xYHBaZWoc5mKo28pc8F9Ecs7i5qL+Jt2ra6y3Y2l
         92U+w5TFJF+yW/Ch37gzsfEt0gaGrAaQZ8PuIShQaYb0ou7YB7ep4hhpLo1qoBpeOpi9
         wWQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oITfzcb2mnyZq11EborssAzldltIDkOweWfU5qNhzZQ=;
        b=jm1VbLt6QcfbiK8+6LEL/pcaT5Lnvr9JO8t8VfAwkqTM9GDuVUntOltCCy2/oXRUgN
         JkcA7UafXp6DiGeRHPxngk5D9XRDlqBr5mW2J92ZTuQqiFW0qN7P5FRwfvKCZurp5C34
         DZKia33Tb8o/pgKOIgsi6SObhCMuBY5ZQsB67jCRwbQooQvIOLphDNyzXgZ0z9mQi9HA
         bFpJ5FGAAfBfBrsIh/X6i8wETIx1sCtY7rezb3QzOm58tCZv0LefzENKiHJaeSbiJ+Do
         yn0iZzyBlir7iSI/isZu67M8UzHXTif+hkP0ltrmhi0IsZPYWK6bab6zyTjpc3d3msJ3
         Je7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oITfzcb2mnyZq11EborssAzldltIDkOweWfU5qNhzZQ=;
        b=JCEDbiYdbx14XWZrSXwULZty4VYqXeRcEKkaFHM+wwyA9+jaIzUTv8/GyZ5uAxm4Jz
         uz/t628b6eGyji8EfabtpeIzuOKmQS5jFvEuO4vv4rbK16ypPQRIJUEhhwgNkagExaru
         fOD/odp+b5Ffkdd/3qsGR0igWUyckO9m0xF2EuGW8pEtjlBLKtvuXmqPrfNenzPwPzUK
         ZWiBkKrfWcmUWNAHHl2mr9gnKqNa8gcvWzmXY+L4K9Zc144Z8oGFmKCAXWmE5XysYZDR
         g2yrD9E44Sl1fvGGM2eU1QuEWkdlyIAkHqI1kS+8ovq2GeZ14XGQ/wQUz7AP38fuVzGl
         AzNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMc0KIzLorsuYCqkzxrURwXS98ygm/yvzYrQ0qK/a5y0bHVgDC
	B2hgaBjB+TIonk8kq9zo1u8=
X-Google-Smtp-Source: APXvYqwlNIa4SRXosTc6aCpq234XR6Q4lanlbunIlaOjtHUsyucKGGUYMVSF0bnMFgtIZ3lK8bY6AQ==
X-Received: by 2002:a2e:9ad1:: with SMTP id p17mr15082204ljj.170.1566934094609;
        Tue, 27 Aug 2019 12:28:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:95c5:: with SMTP id y5ls2413525ljh.8.gmail; Tue, 27 Aug
 2019 12:28:14 -0700 (PDT)
X-Received: by 2002:a2e:9ad4:: with SMTP id p20mr15453171ljj.49.1566934094100;
        Tue, 27 Aug 2019 12:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566934094; cv=none;
        d=google.com; s=arc-20160816;
        b=qCNVyJIJcPkgYJYVTFxLjb5MByMG8ATP7YXCZDifqh5QW4CQMfaDz9tuQRq7ofpwNo
         RCx42wp71sgPIBTl54YIwLD5d6DP6rtSNjHwMyCWLpM+jwLKDGBy3JR64JChl/ErBa8v
         QCZ2BFxocfiDsDq+ELF+h+1borjp/x8WUTY3FRSTmPyi+309SUoZKBbl1wTtZ3OLaA9N
         G3j4FEyYmCR1f+bvp734lKH+5afSMkfJkDiKRLZ/xK2QUKdTxVB+D/gPyPrmqupjLOap
         elHXdHxbX+MewTO0wlpLRjXnsXYGleAb2dE5gloU4OssIVAkktRLr3N6B7O04906lmNz
         PDJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SeFHORwP0KKGlcV55f8im298zyWvbw1KHenZzAs1bo8=;
        b=yjPry+PVc4TSeKjgelhsBxV964QQBpUtk+fyqeGLPJ6aEHHqy88qsTo92UZetrUTOD
         Z3CnzTUbFsaX2ce1pfI4eSR4PyGaKRd5wmGUjItX6VIOhWg5Bn5GmlVa9l4lP54h6apr
         hbIWMxeXjpYLyRQ/76kIH3mAgX1AuanE/9+Ykrld7Wz9HaHriRtekwi5PsIKCkjapWx2
         kBSeb0BZRlhb+VbkzMGzpXtmlogldc8mPaHwebBjXzksRY1mKAjFcDRs8oeM9uyEwqgb
         tLPdKag759qhnR6XZyf5oS+t9bDwgIwHuS44RN1Kwtn9YXx80y7xz2IFhIquSLiP9pT2
         Q2hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hq2tqphi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c12si17392lji.0.2019.08.27.12.28.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 12:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id p17so19934555wrf.11
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 12:28:14 -0700 (PDT)
X-Received: by 2002:a5d:4b8c:: with SMTP id b12mr33150527wrt.26.1566934093318;
        Tue, 27 Aug 2019 12:28:13 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id k9sm14405337wrq.15.2019.08.27.12.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2019 12:28:12 -0700 (PDT)
Date: Tue, 27 Aug 2019 12:28:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] kbuild: enable unused-function warnings for W= build
 with Clang
Message-ID: <20190827192811.GA24626@archlinux-threadripper>
References: <20190827103621.1073-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190827103621.1073-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hq2tqphi;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 27, 2019 at 07:36:21PM +0900, Masahiro Yamada wrote:
> GCC and Clang have different policy for -Wunused-function; GCC never
> reports unused-function warnings for 'static inline' functions whereas
> Clang reports them if they are defined in source files instead of
> included headers although it has been suppressed since commit
> abb2ea7dfd82 ("compiler, clang: suppress warning for unused static
> inline functions").
> 
> We often miss to remove unused functions where 'static inline' is used
> in .c files since there is no tool to detect them. Unused code remains
> until somebody notices. For example, commit 075ddd75680f ("regulator:
> core: remove unused rdev_get_supply()").
> 
> Let's remove __maybe_unused from the inline macro to allow Clang to
> start finding unused static inline functions. As always, it is not a
> good idea to sprinkle warnings for the normal build, so I added
> -Wno-unsued-function for no W= build.
> 
> Per the documentation [1], -Wno-unused-function will also disable
> -Wunneeded-internal-declaration, which can help find bugs like
> commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
> mlxplat_mlxcpld_msn201x_items"). (pointed out by Nathan Chancellor)
> I added -Wunneeded-internal-declaration to address it.
> 
> If you contribute to code clean-up, please run "make CC=clang W=1"
> and check -Wunused-function warnings. You will find lots of unused
> functions.
> 
> Some of them are false-positives because the call-sites are disabled
> by #ifdef. I do not like to abuse the inline keyword for suppressing
> unused-function warnings because it is intended to be a hint for the
> compiler's optimization. I prefer __maybe_unused or #ifdef around the
> definition.
> 
> [1]: https://clang.llvm.org/docs/DiagnosticsReference.html#wunused-function
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

I am still not a big fan of this as I think it weakens clang as a
standalone compiler but the change itself looks good so if it is going
in anyways:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

I'm sure Nick would like to weigh in as well before this gets merged.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827192811.GA24626%40archlinux-threadripper.
