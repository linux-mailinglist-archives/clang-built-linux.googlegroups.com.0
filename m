Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBNW272EQMGQEMSGJBNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 814EA409D86
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 21:57:43 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id n189-20020a6b8bc6000000b005b92c64b625sf14536926iod.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 12:57:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631563062; cv=pass;
        d=google.com; s=arc-20160816;
        b=U6U1tbhmlKK+2Em7ra1ekGSZz5d861/Pi94UovuQZBA1rd4xsi2KiqBKAUbH8tft3L
         T9nPg4t9/7G6TQnoso8uZDthLErhfZgidIDYWqW51OkVZe5QUDXkLgGU0YmQajKnyiYV
         oSlhHSP9cXe2LQbmsNb03YsLm77cHUTt2aFJy5nHPbUM61ZCRrLmbuKffBd343ROGgsO
         tSCbVY2fEiR2CtgnkdJ5RJ0nYAlIkgOW8Y8xDa9H45OqH2GrsRbm6YFsV+K6e+R+ybuI
         TvmCb6q3tbP4aCQ+IGxnuElHz8NdarXgh1VK4zhLYSn7LOD2qUN9cpvgbkj5lHrCUx6Z
         kyUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=BfKTxEIC1cF6BR8Z9YM3Cm+/xl1qgaaDhrdKUmwMZ84=;
        b=A63B4ZiyzBOd6rd2clQkcTSYPZgWnQQ9MSbm838Pv4zqPkfhWnAEYVZ8oSIwDoTcg2
         +HeblJJTWtbg8awEWR+mPFkfRkmWTrfYLE0bsgaWCSKbf35Xv3B1M0pXnD0D4GJqyAh2
         wJanbenKQY2wD/uEIv9RV0Ac4JqCMM5Z8CaBQq+O4uujqUB6YLF17XbCcIN6HQeSS5Gw
         FykduKlN6PsY/mAvb9Y897XYecZwTKfxmDdt7Q9maCH1rOEr8wv2GLOhmmmbWsz/06lw
         oJpuw2xBmW46nxxBkT5VDeqGTNXeh0OZxme9wTR0AiAXJ0avfhx3lk8Xu3DPQBtT8BmE
         LLoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="C39pM3/I";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BfKTxEIC1cF6BR8Z9YM3Cm+/xl1qgaaDhrdKUmwMZ84=;
        b=JvOoAXpIrUyVx8Hl9/4EIfl3HaOPTsymnJBgO3Ty8W49no9apAqflCgPzct5qytzQL
         oTm2gUaNYEbYqGXXg8PhFoNvRJjSqG+WfrV3h18DXPDRl6weLe6JBG14afqOcemXRPIN
         4CFjaLmoX11NcozUDuPm5tGketh96DE1137B9cb1GXvjy/+x9hIamK4DljvbqLkGIAzS
         MBmoXaqxSoVwOzSwp+ErkWPBjOucN6/hmrOrTPXpm1ycnwSBoCuFFxP5gcYuyZyHdtCx
         5JhZeSVPBHpKDri9rJqnKBHnX6J4MBOeNOuFt1szZyM+/N2E3zFdvyDABSqq6HI7EDr9
         VUOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BfKTxEIC1cF6BR8Z9YM3Cm+/xl1qgaaDhrdKUmwMZ84=;
        b=diL+8vQxfMd8O2te74VIQeTJqzHwnAj5mGyZPRbRVvVevWF5t8sWr0m9Rxnp8p9e5y
         GnqEtgkbJjXH70+EQ8/Ea8u6v9E+2/Cwj4shmo1j2dhne84Ylc1x+No+0M6RA7C2c5Fe
         TAb6LPsPXi2Fkm11OUYIKiBp1KA1tgYShl1BLqNfR7womMbyJst3PTtC0/Ectx3lpwIP
         QD7ZJsZxqeT8QwrmkfyEGkGBX5K+kIBlmsUUMJVF7+5CJUTY1g2D53qrXLn9p5AQqYWX
         Vc4Bwsa/7hNNW13KtfIRC0YrNFo8+wlBYdqpmGiKePSx220iw6BW+272eZrQF39ilcMW
         GmpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BfKTxEIC1cF6BR8Z9YM3Cm+/xl1qgaaDhrdKUmwMZ84=;
        b=RMeiZoJj2sOa47b9eN1M8ZLPGrBKgMRctdilbsgl7mDIPPg9A4g699wqvZUt3p50RX
         bXniLfkz0t18XUfntwvDY89/VSAgL7rc/tIm+bighDXVeauToDk5N68H7YPJFgAEIf/P
         wAuj764K8yO+29C/k4F23Naa25SWYywy5JTj8XwL1Sb6jQknOqUoo+k6kQjxuzy7Ci0y
         QNfk6LNnEUt8qB9N+J30poIST40m/y9xf221kBNn4FzLhH7YyBLsP2a4gyOK8+Z9dtmu
         iuwJj0bNUry1lUzgI2nwkxnK/WE7CmeMoo8RRPy7PMEppZ4ceJZhDdBsAsBhm5xptj8E
         wh8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532f6Jhz7q372H/+Rre2GGBgpuF7/5dRTilF/vyeM8OTovkaJFTG
	S3mI3oS60lPyWTjpPMKOmFE=
X-Google-Smtp-Source: ABdhPJzCtILHnuLD17RDluCVe+6NdjBeByvDSZxIdxCizqXcQAiODcd4MIiWnfPnq9dfiNPsMPqE3A==
X-Received: by 2002:a92:cbc6:: with SMTP id s6mr9371218ilq.260.1631563062511;
        Mon, 13 Sep 2021 12:57:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:c93:: with SMTP id b19ls1227781ile.0.gmail; Mon, 13
 Sep 2021 12:57:42 -0700 (PDT)
X-Received: by 2002:a92:db0b:: with SMTP id b11mr5357957iln.275.1631563062077;
        Mon, 13 Sep 2021 12:57:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631563062; cv=none;
        d=google.com; s=arc-20160816;
        b=DwXH5Mh0b6oiuL4mjFufEe9OOM5iZgboTzhCZoyf/c4w2le1NALjcpQwuiS5YTkaEb
         bQX+D2TGaI01n/r5lncBKQVnn6NihdM6bexQ+vm/xwHP9InHBpoZ/lo2zNwhy/Q5iN5z
         z3Cxbi8vNmv0RWmCOSWWFoMgpg3+Yedd4L2Y7F6hlglh3u4NE351DNcEDgWuh/QudNZ8
         pmuDm/TpRSAlI61k0r9wOJoNUyCj6elsA68WaonLlTQJxTdx7XRYk/krQGRjAuXvM94a
         akUOgXnorRW+pT/Pgg9CLedtjy1+zlHu+WtL8T0PAP9f7sL3MruDQ0PGHUIzVsThPtha
         O3xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TWTMVvhvJotwJPk/ze26bZ/qP+vFniaofcsTjFnegRQ=;
        b=pHhiCedZ+ql/iC6wwlHGidLlshpt4o9icbqnA63HfkYtmn1jGKK5bnNiBO6RXMHmJS
         OC1AOzoylj9M6s7dZy8pV82B1WJoDHAaAv73GaOQ6QOure0Z56uKhinBPNDceXc/MgU4
         aWm50F3L7RnzwaLQ49zlj+qFwn8oirsikCdJpjLzX2poYrsc4KwraRskKw72KY0Exam3
         PnrXHKBJJC111NhBQm+n9pTNI4ze6sE0DwMHIKhxR9pXGo6eh62DP6kgxxELxFMhGFsL
         PlhuS1kor2mbUqj+tD82KP/n8bhCq4BtVPU7LpQ4slZf+491XS6uUj9J1GP+cH77RvRf
         Y7jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="C39pM3/I";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com. [2607:f8b0:4864:20::133])
        by gmr-mx.google.com with ESMTPS id o18si699204ill.1.2021.09.13.12.57.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 12:57:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) client-ip=2607:f8b0:4864:20::133;
Received: by mail-il1-x133.google.com with SMTP id a1so11391828ilj.6
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 12:57:42 -0700 (PDT)
X-Received: by 2002:a05:6e02:ee1:: with SMTP id j1mr9357308ilk.61.1631563061774;
 Mon, 13 Sep 2021 12:57:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
In-Reply-To: <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 13 Sep 2021 21:57:05 +0200
Message-ID: <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Baokun Li <libaokun1@huawei.com>, 
	open list <linux-kernel@vger.kernel.org>, linux-stable <stable@vger.kernel.org>, 
	Hulk Robot <hulkci@huawei.com>, Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkft-triage@lists.linaro.org, llvm@lists.linux.dev, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="C39pM3/I";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133
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

On Mon, Sep 13, 2021 at 9:53 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Sep 13, 2021 at 11:39 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Mon, Sep 13, 2021 at 10:58 AM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Mon, Sep 13, 2021 at 09:52:33PM +0530, Naresh Kamboju wrote:
> > > > [PATCH 00/10] raise minimum GCC version to 5.1
> > > > https://lore.kernel.org/lkml/20210910234047.1019925-1-ndesaulniers@google.com/
> > >
> > > Has anyone submitted a fix for this upstream yet?  I can't seem to find
> > > one :(
> >
> > That lore link has a series to address this, though that's maybe
> > something we don't want to backport to stable.
> >
> > I thought about this all weekend; I think I might be able to work
> > around the one concern I had with my other approach, using
> > __builtin_choose_expr().
> >
> > There's an issue with my alternative approach
> > (https://gist.github.com/nickdesaulniers/2479818f4983bbf2d688cebbab435863)
> > with declaring the local variable z in div_64() since either operand
> > could be 64b, which result in an unwanted truncation if the dividend
> > is 32b (or less, and divisor is 64b). I think (what I realized this
> > weekend) is that we might be able to replace the `if` with
> > `__builtin_choose_expr`, then have that whole expression be the final
> > statement and thus the "return value" of the statement expression.
>
> Christ...that...works? Though, did Linus just merge my patches for gcc 5.1?
>

"Merge branch 'gcc-min-version-5.1' (make gcc-5.1 the minimum version)"

- Sedat -

https://git.kernel.org/linus/316346243be6df12799c0b64b788e06bad97c30b

> Anyways, I'll send something like this for stable:
> ---
>
> diff --git a/include/linux/math64.h b/include/linux/math64.h
> index 2928f03d6d46..e9ab8c25f8d3 100644
> --- a/include/linux/math64.h
> +++ b/include/linux/math64.h
> @@ -11,6 +11,9 @@
>
>  #define div64_long(x, y) div64_s64((x), (y))
>  #define div64_ul(x, y)   div64_u64((x), (y))
> +#ifndef is_signed_type
> +#define is_signed_type(type)       (((type)(-1)) < (type)1)
> +#endif
>
>  /**
>   * div_u64_rem - unsigned 64bit divide with 32bit divisor with remainder
> @@ -112,6 +115,15 @@ extern s64 div64_s64(s64 dividend, s64 divisor);
>
>  #endif /* BITS_PER_LONG */
>
> +#define div64_x64(dividend, divisor) ({                        \
> +       BUILD_BUG_ON_MSG(sizeof(dividend) < sizeof(u64),\
> +                        "prefer div_x64");             \
> +       __builtin_choose_expr(                          \
> +               is_signed_type(typeof(dividend)),       \
> +               div64_s64(dividend, divisor),           \
> +               div64_u64(dividend, divisor));          \
> +})
> +
>  /**
>   * div_u64 - unsigned 64bit divide with 32bit divisor
>   * @dividend: unsigned 64bit dividend
> @@ -142,6 +154,28 @@ static inline s64 div_s64(s64 dividend, s32 divisor)
>  }
>  #endif
>
> +#define div_x64(dividend, divisor) ({                  \
> +       BUILD_BUG_ON_MSG(sizeof(dividend) > sizeof(u32),\
> +                        "prefer div64_x64");           \
> +       __builtin_choose_expr(                          \
> +               is_signed_type(typeof(dividend)),       \
> +               div_s64(dividend, divisor),             \
> +               div_u64(dividend, divisor));            \
> +})
> +
> +// TODO: what if divisor is 128b?
> +#define div_64(dividend, divisor) ({
>          \
> +       __builtin_choose_expr(
>          \
> +               __builtin_types_compatible_p(typeof(dividend), s64) ||
>          \
> +               __builtin_types_compatible_p(typeof(dividend), u64),
>          \
> +               __builtin_choose_expr(
>          \
> +                       __builtin_types_compatible_p(typeof(divisor),
> s64) ||   \
> +                       __builtin_types_compatible_p(typeof(divisor),
> u64),     \
> +                       div64_x64(dividend, divisor),
>          \
> +                       div_x64(dividend, divisor)),
>          \
> +               dividend / divisor);
>          \
> +})
> +
>  u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder);
>
>  #ifndef mul_u32_u32
> ---
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVuRaMs%3Dbx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A%40mail.gmail.com.
