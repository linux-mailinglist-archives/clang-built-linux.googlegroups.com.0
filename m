Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIH672EQMGQEGZEWTHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C46409EEF
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 23:14:09 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id h3-20020ac25d63000000b003f11192275esf3664681lft.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 14:14:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631567649; cv=pass;
        d=google.com; s=arc-20160816;
        b=yFhLojtDWEwQLAvut7fr1g8XdIDVWT6idtFARd1Keq/vbocPtmtkcSrkAmJ/uji0BU
         tJtPNsSbFcehs7pSSdoc3wP9nEkpyh6e3hykzWLWwMAkv6kIe0rqwUJWuOHMC0NDyNI8
         FY3NGEqhQBeEDQFj0O6EcbRxQ2EXbsscYwzBh+DAympC4e0OR1AJwZiOVZ5CDKymTQuc
         +jHyWMZaOQhgRTb0WiPTJU1barjRpWTNQMCs5shylmAEOya7SUmqXSJA9HzQYR2I0S+i
         vlkAkwWhmjuJb5b/E+GNrfngGKaxTsYsHkrQHfL7tbTWspKauXtGzDTF2PWMf6AFVTKs
         VGuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2autMUPDCKZ+vzp1GGsCEMNdudH//d3VHKIrFdv7w1M=;
        b=gF/E80ku9y+wtxSAcSLt3GW0BkJka/ssuXo3AlvE1ffHiAuuYwrbugRV4LVNYocYqd
         rR4YxluPzluI+zZGq6W05mCBvHPUT2ZyV/QAzALfSbL+GLrA2WYnqYnX6Wsc+QJYy5FI
         8OwwJHYZ5U9S2HUVaA/8i6tOj9JCWBEh1B/JbmV93EIDhBn9D2iYD4iJPY6tpMpazkH1
         HiHmISysTmNtCgY583SYAKNq6YX3xZuYwoFWuZDiFpsYLT6w/GbN+u/o8vuoQd0/N00M
         FC4wFIeOCfqygC8VgpKR0ZdJzatk63XLKh/J+mW1+k1ak3EIW1HGE7bhQQppGfYItxJO
         Ykrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=SEu7xaZS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2autMUPDCKZ+vzp1GGsCEMNdudH//d3VHKIrFdv7w1M=;
        b=VkQB+cOaMMfCrC+9p8PrNm9VcJLcfBqnLnSWkchPxukHPw0yDLTEyUKUZYwId70ZNS
         4AOcFGoGrgunbmV5I7DmddGpWSlUrz64O3AEX+RLYwuwTEUFBtz0ApmD/4K7qtUFumg/
         BQ2A8DgIlR0zdgeunDm46ofumfqK8V0BhGt2wVPIaVVYooEwSZcPVe+/QTHe2/JgnMB7
         E+/3kc1I87DfvU8og5ru5QI7GPfZCrud+oj6hA7oHPptdlZNTkCBOuJDE6Fkea3ElSht
         ZBuV/f9D+s8ySs5XohJfJQnTM1/xXOSZBeDt9VEEgAEa5lD92/xZAKZz24shSrtUk1W+
         KX2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2autMUPDCKZ+vzp1GGsCEMNdudH//d3VHKIrFdv7w1M=;
        b=XPwg1futb631RhxiS7UJ3TRUrYz2bj2s8pLqyyUatoN6tD8aJ1QS+XT2SVKysrYMCy
         J3WQhoYUHe2/HOB0J3rCypR6L9qPAMkLjnvG28tb+B+NgP3N3jbvsa+cW8Enpbb0J/V4
         5QtFmO+N+ig813bzpPWW/6k8UgIchFn5+BE7p0nPoTaq7klRikr/R2RkjFXtINPIETpB
         Tf6r4i4rJulP8mJMB8Ev082b3D6jqRw8mlTqNeFAFktqQo3D2bs9EMa7HcujjpPQTKt2
         WurGgPg52yomZ4dEA/sL7pwBU1XhFoBeYgi/u1JzBkfX8KKaPLd4H5t5SnChU7meNwPE
         hz/Q==
X-Gm-Message-State: AOAM531n0yEVkFuMSkwvw7fLEl7hBw9040hwzyeicAyPxOo7KEsd2dRs
	8jv3kNiMYW+g3WZBdewwKSw=
X-Google-Smtp-Source: ABdhPJx1qztc8XqkeTXnnb7Q5LGoJiybLsU+MP7j702GM/pBorzHovxFIyj63SO7HjMoe2qg/32DjQ==
X-Received: by 2002:a05:6512:376a:: with SMTP id z10mr3879163lft.496.1631567649181;
        Mon, 13 Sep 2021 14:14:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls1639624ljf.7.gmail; Mon, 13 Sep
 2021 14:14:08 -0700 (PDT)
X-Received: by 2002:a2e:a449:: with SMTP id v9mr9443649ljn.86.1631567648195;
        Mon, 13 Sep 2021 14:14:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631567648; cv=none;
        d=google.com; s=arc-20160816;
        b=LwAcNf2TdNPBBeTBhfPMRoxy5ZBN3gUkQQbRx5atdnZ1G/sAqTIi0AQ/zB9+Cja5CZ
         iE2Wqcdd6Af+lF6PbmUVj3uFxQNaAqKfOvy5C4tgzzUoo7+Byhnbi61U34O1FQy/SUsu
         QkycTUtXN3jI/7hWqbLAGceJYXxDlLnqtHtUJ/cNffjb2ulvlVLZnZ4aRjxoOn3GzW0l
         wnLPASsB2YqjWB4o5dt/VtP9xhxOol5n6bi8eaDB1F6/OTEjCmUWOiUh6E73iYRdreRu
         zFh0A8QBW9JYWfeAXrj5tbvSBYNNRMaEUD6e1IziqOZaBZjTe+n0E7ryUtjpVXh5aLtn
         ZWhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=h6laIf/b4mPqz9ieIo0BoLxfadBv/pBLzz57FwMCWS8=;
        b=gXOcq/+0HrGaNn/ydb99d818EgHp8Gzr4nWhg+8Lws1uPtZCt8eIZBi5lJg1yl8bkA
         NpVE/9oraqM4/daarbgdMnCSqm1xv36ZsKhRj1opWuXzZxBC/ixEPyv0Dvy+o6Ak1led
         X1T8SLF0z4m4OUmOVnkaTwfqgtenrZs/vRLbqx52tpQArS2JX2QklT8LFUV0xhbkMktB
         pM3ONVPsGYedsTYs+qT16YK/TMv6zvgsVRRKDGikBp86+UTOj/OhHODLNDz3aFZ1Zx5N
         U9AzJJS45sE8lI2caIbWF9NSm00X2LFVw0Pmb0H+WOBXlIiN1RIdg64bQRiIiHV/ZBax
         o1yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=SEu7xaZS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id h13si905605ljj.7.2021.09.13.14.14.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 14:14:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id k4so23905678lfj.7
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 14:14:08 -0700 (PDT)
X-Received: by 2002:a05:6512:3b9e:: with SMTP id g30mr10188187lfv.651.1631567647760;
 Mon, 13 Sep 2021 14:14:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
 <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
 <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com>
 <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com>
 <CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA@mail.gmail.com>
 <CAHk-=wjP2ijctPt2Hw3DagSZ-KgdRsO6zWTTKQNnSk0MajtJgA@mail.gmail.com> <CAKwvOd=ZG8sf1ZOkuidX_49VGkQE+BJDa19_vR4gh2FNQ2F_9Q@mail.gmail.com>
In-Reply-To: <CAKwvOd=ZG8sf1ZOkuidX_49VGkQE+BJDa19_vR4gh2FNQ2F_9Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 14:13:56 -0700
Message-ID: <CAKwvOdkz4e3HdNKFvOdDDWVijB7AKaeP14_vAEbxWXD1AviVhA@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Baokun Li <libaokun1@huawei.com>, 
	open list <linux-kernel@vger.kernel.org>, linux-stable <stable@vger.kernel.org>, 
	Hulk Robot <hulkci@huawei.com>, Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkft-triage@lists.linaro.org, llvm@lists.linux.dev, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=SEu7xaZS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Mon, Sep 13, 2021 at 1:50 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Sep 13, 2021 at 1:42 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Mon, Sep 13, 2021 at 1:16 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Do we have access to _Generic in GCC 4.9?
> >
> > We've ended up using it unconditionally since last year, so yes.
>
> Sorry, grepping would have taken < 1s. I'm very lazy.
> http://threevirtues.com/
>
> >
> > In fact, the compiler version tests got removed when we raised the gcc
> > version requirement to 4.9 in commit 6ec4476ac825 ("Raise gcc version
> > requirement to 4.9"):
> >
> >    "In particular, raising the minimum to 4.9 means that we can now just
> >     assume _Generic() exists, which is likely the much better replacement
> >     for a lot of very convoluted built-time magic with conditionals on
> >     sizeof and/or __builtin_choose_expr() with same_type() etc"
> >
> > but we haven't used it much since.
> >
> > The "seqprop" code for picking the right lock for seqlock is perhaps
> > the main example, and staring at that code will make you go blind, so
> > look away.
>
> Looking at my patch:
> https://lore.kernel.org/stable/20210913203201.1844253-1-ndesaulniers@google.com/
> I don't think _Generic helps us in the case of dispatching based on
> the result of is_signed_type() (the operands could undergo type
> promotion, so we'd need lots of cases that are more concisely covered
> by is_signed_type()). It could replace the nested checks in div_64
> with nested _Generics, I think. Not sure it's a huge win for
> readability.  Maybe cut the number of expansions of the parameters in
> half though. Let me give it a try just to see what it looks like.

Is this more readable? Same line count.  I'm not sure if there's such
a thing as "fallthrough" between the "cases" of _Generic to minimize
duplication, or whether this could be factored further.  Needs lots
more () around macro param use and tab'ed out line endings...






diff --git a/include/linux/math64.h b/include/linux/math64.h
index 8652a8a35d70..8fc4d56a45b9 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -162,17 +162,17 @@ static inline s64 div_s64(s64 dividend, s32 divisor)
                div_u64(dividend, divisor));            \
 })

-#define __div_64(dividend) _Generic((divisor), \
-  s64: div64_x64,      \
-  u64: div64_x64,      \
-  default: div_x64)
+#define __div_64(dividend, divisor) _Generic((divisor),        \
+  s64: div64_x64(dividend, divisor),   \
+  u64: div64_x64(dividend, divisor),   \
+  default: div_x64(dividend, divisor))

 #define div_64(dividend, divisor) ({
         \
        BUILD_BUG_ON_MSG(sizeof(dividend) > sizeof(u64),
         \
                         "128b div unsupported");
         \
        _Generic((dividend),    \
-               s64: __div_64(dividend)(dividend, divisor),     \
-               u64: __div_64(dividend)(dividend, divisor),     \
+               s64: __div_64(dividend, divisor),       \
+               u64: __div_64(dividend, divisor),       \
                default: dividend / divisor);   \
 })

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkz4e3HdNKFvOdDDWVijB7AKaeP14_vAEbxWXD1AviVhA%40mail.gmail.com.
