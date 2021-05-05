Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7XVZOCAMGQET7A3L3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B01374914
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 22:07:27 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id k129-20020a2556870000b02904f825078971sf3476386ybb.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 13:07:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620245246; cv=pass;
        d=google.com; s=arc-20160816;
        b=V0mPApfi7u6jhxuBJY3rOQbqJQvnLRu2S4vwLlee86O5aK/zeRasJy+YmEXDgEE3gG
         RMj8xUG4znCiLR7lsnJOY+Y6d/Me1Qh2bz/ari31tMt8bPFjq+69SStmCp47yDyNRTLQ
         JivrE0q4mst/lpj7H5+LsHe7EuRK3p6gJEVAaXNHD5VR23qbD1FeIVcTEG5Ms7Y9Ntp9
         PnDMIYXtQjv7GEFUNwT2FudJzqkjd+rqXtLGhCbQ2hSfLpUZe2PF3oOCHF0H6sufOFOo
         JDmMShX3bL8uh3GGH6uEftbFFdKtMVl+OPE2X+7g1vhr4y+LH0SSVTSFB2uDklXUtRBY
         pgdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CXvMFx2h0qq1ptClaauIwjBWcZz2mmHZEZ29x7/XNa8=;
        b=HQftJE0UsQpq7RdX/eJnQUUG9Z7pJ5MhW5FuOWwwzoTCcgBYDLec/gA6sV5WE9zYDL
         oVLXCvfOono2xWLz3I2HjlfUamUTZydxYYqrTM3VlBBRkAEqn71Xvg1V44Z+VGcGrlEl
         yGvT3HXuGz1/daiI9SnVcmZ9b2xqRuFet6W5L6x3yL7rMig5CgMNyOKl3E6dew43zOFG
         xfbEMMmACnCkH0eAKjtqheGrxU3nhGpYgwn3WZ9BxFw9ZiHN1GmKAzX6xKyxHfHffW+C
         RQ3LMxp8DP5/y8LoaMJ9opTOX+38PzGQ6Z3mEktMkQ+GcBGJNKG0slPy3p8xs49su8U9
         u32w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eLoIJzqh;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CXvMFx2h0qq1ptClaauIwjBWcZz2mmHZEZ29x7/XNa8=;
        b=KSsKlE+fKY6rjGJFufnmQYWsEgBodVnu2Rk7qatsz1NXRMm9W4Ji0QM3hMefJrBw+R
         Evw8JJwEiHF+Hd8L3FV3S9Rk6vNp7SPgPjnVgYvlzwCwKSxU1uUbusvIKKxwH/4g3hot
         fu5ZlFVKLLIObwH8fi0WFnDaSwGw8Yss9Q8vOVDWCaeEJtvWFUKXQWPKe8D8Im8epr//
         2MaRQHjAs4C239sLT6t97+ztTNT7dK8+Wkb5KE+6HzJtzvIqj4L22+o8rQXyHtG03QI1
         7hAa0Xzx6VRnje3U3mBZX0WS8HQaPzPNEOfIZMwLhNQRy+m7GdIBAKcODJGR5KLRwWPF
         znoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CXvMFx2h0qq1ptClaauIwjBWcZz2mmHZEZ29x7/XNa8=;
        b=uZisUfCn7n8nPEdhv6k48TMIaPjsX8yMslprqt876+EyQh1TsogAVRQj1Aik3PdihZ
         LqXxCOKyvvWHP9ub6Wst0HDFzB8uE1lqja6Etn4bcHa2xBWM9L4dcdJSs0mZsWg89g6T
         b4/vHo3I0SfwWSJ67pzoO41t2M9rf+Y7fWA5K109UPR8htVljv+iGEs10/YQ00x/4NhP
         wHV1ZdgfFkeF4Z9gG7LTe0odtaV520d8S0CLCmI1KEYjsldaAOWfcq9YW5OQIO3uebKZ
         S/eFjI2dPzSfkp+bpwttXSl85Kmy5FfvonlLYfNAKoGdkwrvzHfjVeNjqV3HXmiVGtGm
         m4ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oqbCuPDHMiyNS9O8ghevzB1Yra3Qg8akVXvGBQhLsGsUIQryl
	Zpq+VjK/JTRGw/e1wtKtWUs=
X-Google-Smtp-Source: ABdhPJyqVQTgoSsJNO1Sf/KuSgRoAYcl9ELFRavYbiPgkLN3o1YaK4BuXFS8OY3uHbL5VXN9GnBhaQ==
X-Received: by 2002:a25:b78c:: with SMTP id n12mr672305ybh.291.1620245246204;
        Wed, 05 May 2021 13:07:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b9cc:: with SMTP id y12ls261205ybj.0.gmail; Wed, 05 May
 2021 13:07:25 -0700 (PDT)
X-Received: by 2002:a05:6902:70e:: with SMTP id k14mr761042ybt.484.1620245245709;
        Wed, 05 May 2021 13:07:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620245245; cv=none;
        d=google.com; s=arc-20160816;
        b=sl/V/4CmUxBv/TiZ6DMGo3y73gvHcX/PhBYOMalhn1ez3oYoUaYcF1QzzVQwbRyR1K
         mcsWeEKBTdW3+ioRZxCfWxuE8VWgp3HEaYyfW/SKtJ2NRqufZgNRQyDTmYZSNQdI2rKF
         X0xUHOHPzIob9RitRj1v4ZfrGrLtnWlM7xADm8i32S8m1d6Urt5KQlAh1mgsA5jUr0DL
         o/GGe4avQaCRrrkbypB2oEzzo4vrl2oO0qT4cLeKblhH98PM2gZ/LGLkAQ5x0Gs0aOQC
         dUH1yVO1P6AGHvekb19oZWwbnDLbbgViDUBmjUQf5OzNuYRCxqyH/gn75foeEFnVg56x
         y2zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mvda/vUmunTQ6pND+cBC1nKCYV4z+m8MYuOOtaRcJz4=;
        b=CXzBuqipyE9QjOoBSx9l1vrWqIxulNuKCGoIs0md3SdWq+cb4iheVkD7PmIC7pozcs
         JDTp8znCucvs19noB2nhS74RXon7zXzSp8wa58NnHxPeGVKosyBVNoFCNNRciE4eDG//
         MRVm4Pv+TmAmkXNdx39iI1k82GAmpkX954k9pPoTLo+OjQfXSRZUJVaVnsB/bBTYoEHl
         BiV45IT3WqSCvAFhGfvh0gET0LaxOBbTST7ZQr7K8tAA6nGqsIjB1lMdnB5eC5zePI4E
         cVlGsL+OmORRYCOvyEy2d47MU0K3REcn9x+wbsU1bSgi6tSUcAcEbFtErBPtq+rqfZ9X
         ViuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eLoIJzqh;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l14si29966ybp.4.2021.05.05.13.07.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 13:07:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E36060241;
	Wed,  5 May 2021 20:07:21 +0000 (UTC)
Date: Wed, 5 May 2021 13:07:18 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@google.com>, Bill Wendling <morbo@google.com>,
	Fangrui Song <maskray@google.com>, Jann Horn <jannh@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Alexander Potapenko <glider@google.com>,
	Nathan Huckleberry <nhuck15@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Behan Webster <behanw@converseincode.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Peter Smith <Peter.Smith@arm.com>, Dmitry Golovin <dima@golovin.in>,
	Antonio Terceiro <antonio.terceiro@linaro.org>,
	Mathieu Acher <mathieu.acher@irisa.fr>
Subject: Re: Linux Plumbers Conf 2021
Message-ID: <YJL69qnCzEqXoNbd@archlinux-ax161>
References: <CAKwvOdndSoA8TxzDiv1Nhq7+AHZ_NETFNibhqmRuVcU6Ki=KOA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdndSoA8TxzDiv1Nhq7+AHZ_NETFNibhqmRuVcU6Ki=KOA@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=eLoIJzqh;       spf=pass
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

On Tue, May 04, 2021 at 10:34:31AM -0700, Nick Desaulniers wrote:
> This year the Linux Plumbers Conference (https://linuxplumbersconf.org) will
> be fully virtual, and will happen from September 20-24th 2021.
> 
> As part of the event, we are organizing a `Toolchains and Kernel
> Micro-conference' devoted to discuss specific topics involving kernel and
> toolchain.  It will cover both the GNU Toolchain and LLVM.
> 
> As in previous years, the emphasis will be in discussing specific topics that
> require collaboration/interaction between the kernel and the toolchain chaps.
> Examples of topics are wrapping of syscalls, specific features in the
> compiler/linker/etc that are used by the kernel, desired optimizations,
> features to alleviate security concerns on the kernel side, and the like.
> 
> In order to get the Micro-Conference accepted we need to provide a list of
> both topics and prospective attendants, so that's why I am reaching out to you
> asking for:
> 
> 1) Topics your project may want to discuss with the kernel hackers, during the
>    event.
> 
> 2) Whether you are willing to contribute and/or participate in the
>    micro-conference.
> 

I am certainly willing to participate in the micro-conference. I do not
currently have any ideas for topics to discuss other than maybe "where
are we at across all of the different architectures with all of the
different LLVM tools?". In other words, what architectures can use
LLVM=1, LLVM_IAS=1, etc.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJL69qnCzEqXoNbd%40archlinux-ax161.
