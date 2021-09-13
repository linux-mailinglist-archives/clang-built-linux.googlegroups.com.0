Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3PM72EQMGQEHTOVNDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id DABC2409E3B
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 22:37:01 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id v2-20020a2e2f02000000b001dc7ee2a7b8sf4686363ljv.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 13:37:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631565421; cv=pass;
        d=google.com; s=arc-20160816;
        b=G/H3dUozGVBT4guLf42U5iWU/B2W4UjY9owAhnJYkzZorzQ2Zo6lbq/tDn+W8zjRq0
         2EK8j4KjzDt1vxslEaGLR9JpL+agOW2Pf6cyPevxz9cQyU03OmeeN/UVOTu2nvOm0jIt
         YzioC2kdLyDnxpdMyrj9wXASJqlGTlSCqVcleMeIZ+9gIn96KpPZVA0fzYZlBcCcNAaY
         4xZVNtdvSoOZWPkQuJRIWtB78bLfQ29jb9HpRfVeXnVeOkR5SryFR/C6wn4vxgf+EwsM
         Y20mcP9YO4Boh6/mQdWC7Zoc3UrSpCLT2m+wegORPdAsipOLPYeJTe0x4b/KwyHawAsv
         8+TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=BCgxM+UYfhuqaV4UbgndgqOh+S1CrEwH1GXXygs7rec=;
        b=v57ulT4drXzPRybJEjhb4IzrDEJCF4L8GT5SYn2HR0YbkrfE8rPqdaq8vNArDafQcq
         xgkEt5VdKmvu6AwbyTmaixWHtZP0p4epQbwxJyeUvDXHqvirxC7VFgb2m3j8cmnIgY8l
         nWiK8KcdCm/uNmPGwn0X5BSsZu/tMtwcmghtdlZY6QspT2tevzO2uXWq86kiVw4TDyFD
         E6lEGKpxDvUBvFbh2Rlevu8dUXxrqdU0wn/TDSVOo4kvDvOYvbbnQM/9o2vX5+28m7Uv
         PsKEyM/TmimQO/wWy43KPe18Hv64p2RjRQcw5kOfXL8ETV4FEt1rcrE3B2TG8/sm1Fwv
         Fshg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ilWLGdi3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BCgxM+UYfhuqaV4UbgndgqOh+S1CrEwH1GXXygs7rec=;
        b=thjD0hKJWDtBsTqEnIxkzwLGAfFWe/aEzPiNG0keC4/I5CuFcPzYrfhdBkiyCo/G4C
         9kCXA747lEyp47IKpw2d9Qw6vgZioGPqvIch5Q0Yu/2rjx8D+eqgWVX6G5ceFfyYlKH4
         gIHsvR7R2Kp3el9iOKgqYs8ULSBhNGl7O9iyXPq7fPJY3ZW65siS9e9KBMi4BscK5CQ1
         qTMTQRpikuFyW37xhh/K0O+S8u+eEPqmp240DCI6TESS2h3Cx7LuN3K7DXawzjenHmdh
         r548YAR7z0pU4P591H5qcloHEn7Ps7ENZTz8bjzQIo7YU+kRDz5yEx2RWgl/jzm7AajV
         4GEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BCgxM+UYfhuqaV4UbgndgqOh+S1CrEwH1GXXygs7rec=;
        b=TtG26xBfNJFoJEDuFFjZWpvrY7Yu+HT6BYcFIbcS+eG52unPa00kteIRelR75uvkn4
         dQJwuTu3kZcsQdsDasIhj+KAeVij7VAEZNI8f3C9iAwss8z1EcQfL40KysA28jbu54z9
         ZJt0Hnkli54jPK5xxKCRHJFJtIkLGEgHbOOkJAP9WDC0ikM9iVQm9n7waqi+WPHbAvBv
         yy349VSS+/4cRcCg8+C+/zONfSqlLN6EbGOf77nF4riI9+pzthYeL3hbome6Yxn1JrGq
         Z3515r5S1RlVjppzRuzTKyqxJXogsr57nEvypz9uYNMlVUhsCnMp+fTPL+qqCqb4xIcE
         UbLQ==
X-Gm-Message-State: AOAM530H6/hHyB9gzUDZaAr2QSe26VFqcyJeTFgrNaVsm5QxXgjT+ail
	wkXSSyV20ITzWbvRv4d/vyc=
X-Google-Smtp-Source: ABdhPJyz3mTEwrAOpzS5obIOLJ+VUxs/1eUY5t5g0fRqphMYW4opVdg0ZowkEciPpomTkQ2FyLFiHA==
X-Received: by 2002:a05:6512:3183:: with SMTP id i3mr10211133lfe.104.1631565421483;
        Mon, 13 Sep 2021 13:37:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:13a9:: with SMTP id p41ls1213890lfa.0.gmail; Mon,
 13 Sep 2021 13:37:00 -0700 (PDT)
X-Received: by 2002:a05:6512:b91:: with SMTP id b17mr10053695lfv.453.1631565420515;
        Mon, 13 Sep 2021 13:37:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631565420; cv=none;
        d=google.com; s=arc-20160816;
        b=bF5JlxN4TsfxmoTzyvrFFm9sXmsLhIwbuP4vbBvIE60jg/j175395t940ViJS3lS+t
         ie8U7hnrl2McWihdTQ+A7axwciUfxE3tGMdzGQk7MwU3vYAD/ifFzvBAQk52PDOHnCFC
         G/G8dDQbn9coZE278/kkmlTIj1cJogAmCmcg029kn6DyHkYx1p5dIGoCNkF8644yIBO2
         8k+r7LCRMB79cyawJGW3qA8d8s84o7woBSMiMfiT+mNugYqs/s5Lj3IoU7cgw7a92WUg
         iyFjl4Gbi8GW7cQUj6lwuyx0TM6J6I6HGR8gVJeUbBzjdb3LhjvMn3oQP7sBcYxeFfFe
         go0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=uNcqj9xjWIfQIY0QflXDG20YjitmguOx4ywcCWl73/U=;
        b=kyKG9a8jfOORUm6ipao/8BbCshLY1D0C8u833+pvMEhwpSAi0u91gt6ZFf6j06iRN9
         I8yzOF1qVJzYUZfkRh2RHHSFwrV00kIZUXD8eCG9+WULHflvh31i+nTIcLf9cEnDF4Qu
         HCqIHt2kRIqweoK1cB5LufCUegRa9UAgaJlH7gC9LznruTh823Tu7c94QrVmCNf6VY3g
         PM59jOsgKiO9nulHbdWGYtFw7bqhDw+YA0TM6u/EX83McMdq5cR0yOpZk4fkLDN0Twsb
         Ct6LfVD4AtYKg9zZrnZXCO1Wj7ywIX1Ea39uxCz6OwBuuADSePiFv7Fk8WxnBxlhgqRa
         AMBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ilWLGdi3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id z26si759624lfu.6.2021.09.13.13.37.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 13:37:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id s10so23712800lfr.11
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 13:37:00 -0700 (PDT)
X-Received: by 2002:a05:6512:1114:: with SMTP id l20mt4770210lfg.550.1631565420008;
 Mon, 13 Sep 2021 13:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
 <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
 <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com>
 <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com> <CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA@mail.gmail.com>
In-Reply-To: <CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 13:36:49 -0700
Message-ID: <CAKwvOdkpsvNK2x+=S80crW0reFBH-vwuNop7-2mFayajFMcqog@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Naresh Kamboju <naresh.kamboju@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Baokun Li <libaokun1@huawei.com>, open list <linux-kernel@vger.kernel.org>, 
	linux-stable <stable@vger.kernel.org>, Hulk Robot <hulkci@huawei.com>, 
	Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	llvm@lists.linux.dev, Kees Cook <keescook@chromium.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Arnd Bergmann <arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=ilWLGdi3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Mon, Sep 13, 2021 at 1:16 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Sep 13, 2021 at 1:10 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Mon, Sep 13, 2021 at 1:02 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Ha! I pulled+rebased and this code disappeared...I thought I had
> > > rebased on the wrong branch or committed work to master accidentally.
> > > Patch to stable-only inbound.
> >
> > Side note: for stable, can you look into using _Generic() instead of
> > __builtin_choose_expression() with typeof, or some
> > __builtin_types_compatible_p() magic?
> >
> > Yes, yes, we use __builtin_choose_expression() elsewhere, but we've
> > started using _Generic(), and it's really the more natural model - in
> > addition to being the standard C one.
> >
> > Of course, there may be some reason why _Generic() doesn't work, but
> > it _is_ the natural fit for any "for type X, do Y" kind of thing.
> >
> > No?
>
> Man, c'mon, I just got the __builtin_choose_expression() working! It's
> not...too bad...ish. (Besides, I'd actually have to learn how to use
> _Generic...I've never quite gotten anything I've written trying to use
> it to actually compile).
>
> Do we have access to _Generic in GCC 4.9?

Follow up thread, sorry/not sorry for not taking the full cc list:
https://lore.kernel.org/stable/20210913203201.1844253-1-ndesaulniers@google.com/
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkpsvNK2x%2B%3DS80crW0reFBH-vwuNop7-2mFayajFMcqog%40mail.gmail.com.
