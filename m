Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO77TKEQMGQEZF75PZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3CF3F7E1D
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:10:04 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id d12-20020a056000186cb02901548bff164dsf284274wri.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:10:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629929404; cv=pass;
        d=google.com; s=arc-20160816;
        b=wd8x2v9wNuaeeesYsHl8vdMLcsctZ02hBdrYPtRQpxCot9ap9/MI4vO5awmCEzdfJt
         sI2YkMTk9OmU6MNiSjwdX2lWylnJMP+90707Sky+NJgILq5b33yWRioHWGR4WlyeyHre
         BH2Ne8yYeUebk0zrgJz55jv0u8ZnW1mVqi5EqcAORmQNO/dS7oX8G9DMNSeQxd3kval0
         jXzHDSyTfJSYgZaLZMQeHWbUM9fPyRVQ1V5Nx1+KEcSoYq0kB+HVUZEwEnzNMfG6b50U
         VP3yKa5aHmxeyV1Ay1HcrAEkRqkg3dfZv52CamlKgcOwDs5Pn810d9LyhXbnvyy4IbG8
         qo3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4L2e13c9HO6GU4gc57nZrex9TfjogO7hbZAzI8EX6Dw=;
        b=hR2z3Plgm/7cg1nfXP0isNdIp0zRslXQweIqywo4sFlDHm+ejlidvu55v7vAQ37IWK
         XyoCXXQcwPqWRbL8FvQmKxZaSHDmtdfpVenIvJ1N3Z9V8tyAQ/x8HoXqcekkN7PVV19Q
         R7jqql+hSgoauCcRNWpP3gHycW0RsooY/4lTPkXUGt9UUI/5XyYRx3iL2yHgKNu8dFOw
         cU+l+42tQrK4/u5QKDqBCZmndHUP/ktjwgVcJgXEcH8qIgJWAKEmTQgmAfSAR481U39M
         8GpATKGPlYlGc3mi0237oHANHQTIHCXGunTBwUP0I7lNzKcaDUzWcaZET8PudNCUqVl3
         7Dsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E0x8czOu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4L2e13c9HO6GU4gc57nZrex9TfjogO7hbZAzI8EX6Dw=;
        b=MPaGw89LRqZvmcf12qdhbJfnRUhc7Ru76o5EoqArlagDwaJrUeEoTAg6cEeHlQIUXL
         OgyZosBZWwD5qCNMOi2WP8tl56BkcJqn9TBcnzgnGdB8geouVm8Q/6K7knyT5ZItYhE5
         NZjr7IR5yhkCDUpzawXWhtLsATBPJj0ha5Wg9XDX7LlPI+iRkboTzhFR+9N/6wq71P4T
         be7TYvWs0SZm/15FErql17jTQQj+/qofd9G11+cccDNxr/uYh7pO9Hm4KuwSgsAkUFrI
         xFtUPggrIyujyjoQvxK9vMhKJec9U7GZZkVZgA2wEgFVAd6j/8CHMTDsHatxlJatKTij
         tJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4L2e13c9HO6GU4gc57nZrex9TfjogO7hbZAzI8EX6Dw=;
        b=pFtHOBsFXz7tY0IL5axmTovbSdYswBdhNsDQNphseyfJBWdXIU2wNivMQWUqYDVREN
         wgftDTyqKQegEe0x3jjM0JCw/lZabGKVpdTdtz4v4JB7m+MXT3wx/SrcFoOt+CQZUIfz
         x+n55fTXEf6BKso1yt3jUQYAKbIGq23v3vVQmY2tGhrf7xoOto+LIqB4mQvpjOaGAO/r
         gFnyaEHMyhSj1ABm/dI8VCE+Mg+Uyc7TIk/fN5x97HcTL2CxGIFny1CJ9KJBOiA8seZp
         WnxXgkKm6T2bd18AExEdnPsrtmkNOUD6FsLqHcxiuIKnk+rIUhiZwflvdLUmstQ2oBaH
         OcaA==
X-Gm-Message-State: AOAM532NP292jdsr+47yGnICHHzazP1/XXODiAVsN0uNk138gLrmm28I
	dTnwqKyGnMIQ7AMRqqTj/Mk=
X-Google-Smtp-Source: ABdhPJwhJ/lwxIWJWFrIC/yxqRiv9J3HDTE0qiYK1tf31GrSfyf0SK858e47LW7JfK4vV9k3qT8wWg==
X-Received: by 2002:a05:6000:1248:: with SMTP id j8mr346073wrx.97.1629929403936;
        Wed, 25 Aug 2021 15:10:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1:: with SMTP id g1ls3602255wmc.3.canary-gmail;
 Wed, 25 Aug 2021 15:10:03 -0700 (PDT)
X-Received: by 2002:a1c:3954:: with SMTP id g81mr11152762wma.125.1629929403044;
        Wed, 25 Aug 2021 15:10:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629929403; cv=none;
        d=google.com; s=arc-20160816;
        b=wPNrLP0UhjwnjAi6/ByThCwNaU4RVDYvDitY7rALsAy4AgMzuXe3HLZlvoFH1Fg0xq
         QWBco9FoCYLaIxAofdoxZYLtMFQCOiyrXYv1OLrI4NDsvi9Ekl7WXXmBdVsHuohHS2Oh
         oud+oBLNwTPopypk8vgkEhXwbFRX9vkwTL5yQdMjoNll/LvLDCwEl0rD67cJtTDAJ/rh
         cogQDYfKLBINprlM+SD8GSTTTZ3/4sJXsfushWv5R8IockaG0Mh2X04jPAT35pYMTaji
         hT6hJZwZZwh/Gj+fxyNHVbjT361WB2aieRyQMr8p7bX9mERPF/MmihA1zTlqm6c611Kp
         OVKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ghFbFPwORK1+Bz2wOxhpN/SoN4TRNRW43zNAEvuCWSY=;
        b=C+iHDCLugcLeolO6BNpz51cUKOkMWiwJRCkd/MLGSzcfpWcUn+O8U3fmhDc6+9R5D2
         mA0I1uulHzk7fZsGOQMbYlD9xg6a3NrRyPWT5/q6yVD2VFvKbKJC/ET2Dz/qmk8E9xVE
         nIBvv5D1A+d5ocqsfO5ZX4c70hTvZz/1+tecOuuaqLeBjtqVboLUCRnPeSBUW/D7a6+d
         o8EGm6usKxuno6TyazqEfM7YJL/SVS8T0AFU+PE3CZNG7/KiZ2C3jh+M2FIayT6w1Ukw
         rpnFssl/PPStGy/1haFr48lhWOyZ0EICacZyYeoZgH5DkollP0eZ/SHgjA9MKqI0BX+z
         C8oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E0x8czOu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id w3si476457wmk.1.2021.08.25.15.10.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:10:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id s12so1359276ljg.0
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:10:03 -0700 (PDT)
X-Received: by 2002:a2e:a40c:: with SMTP id p12mr323288ljn.479.1629929402286;
 Wed, 25 Aug 2021 15:10:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210825211823.6406-1-nathan@kernel.org> <20210825211823.6406-2-nathan@kernel.org>
In-Reply-To: <20210825211823.6406-2-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:09:51 -0700
Message-ID: <CAKwvOdmtd0PUH-=_OqTzhFYh=XimHDpFWP9bmcnMprioTSKHBw@mail.gmail.com>
Subject: Re: [PATCH 2/3] Documentation/llvm: Update mailing list
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=E0x8czOu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Wed, Aug 25, 2021 at 2:18 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> We are now at llvm@lists.linux.dev.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  Documentation/kbuild/llvm.rst | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index b18401d2ba82..06b8f826e1a3 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -111,7 +111,8 @@ Getting Help
>  ------------
>
>  - `Website <https://clangbuiltlinux.github.io/>`_
> -- `Mailing List <https://groups.google.com/forum/#!forum/clang-built-linux>`_: <clang-built-linux@googlegroups.com>
> +- `Mailing List <https://lore.kernel.org/llvm/>`_: <llvm@lists.linux.dev>
> +- `Old Mailing List Archives <https://groups.google.com/g/clang-built-linux>`_
>  - `Issue Tracker <https://github.com/ClangBuiltLinux/linux/issues>`_
>  - IRC: #clangbuiltlinux on chat.freenode.net
>  - `Telegram <https://t.me/ClangBuiltLinux>`_: @ClangBuiltLinux
> --
> 2.33.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmtd0PUH-%3D_OqTzhFYh%3DXimHDpFWP9bmcnMprioTSKHBw%40mail.gmail.com.
