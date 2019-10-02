Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBIEW2TWAKGQEATTFX7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCECC92F2
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 22:40:00 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id e1sf8875lfb.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 13:40:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570048800; cv=pass;
        d=google.com; s=arc-20160816;
        b=09D0kM0uIt8gTnfAb2UtY9Xgkwo6sVuiScweYHX7HBd+fvSoq7apHqsJECjVneoYUB
         YCTCZy6QwueKy33hJ0c+74JrWb+zOjURIKqSftbiO9hZROTvAYhkij87GuczF4ut8/5/
         4ALBKMuKnwsV1v4h8TYCkM5cJJp7eXyA9Zkdu6aKfXtKLBmZXtCkvvIsWYoI/Rcm7XHX
         qZADtO2rpqONcoSKl2PoSfAveocDUim/4hdI++/ns9tGJ6Y8+5XV6Pl861jmQqeRzsqJ
         LZFbnJQi5QrYdoiG3EoXix0XUJbY6jnKlMC2Ngi4oLkUDz3r58YI3sdAZH3+bwEx9yuV
         lbmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=bzi9sTO3Skl/vWjaN4p4a5snIUvIXTQNLNKBkJSKG2E=;
        b=CBWKAv/VXipwqyhcT/heAkGba4n8EN8j3LUYfMeHaq+cBVazdgLyaYswdmkxERw3ve
         y1TRpHtn8SOihc3nGXUriUS06K8CcaEOhhc8DBd+zSbd30cgc6Gv1ffq2GY1ewZSepy0
         mft1PWbzKUJQRXEnGlFfCul2NusKrdDcUNp16TVJrMCcqDVq2uvWIoNkoVJcwHBztNh1
         vj9mwcF2BBlC4ftkvTtIHkB+kgZJd1bYBbWAohU9NmsoS5nvWIH0zRE+seQ62562K0WC
         63jDBXq4+R2ESSWl/Xg9Wt5Va0h8lr3N4SssMclf6BjUQEsSQaOZKH4xS6Gbh6YMnOB7
         N8LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=WgH48i53;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bzi9sTO3Skl/vWjaN4p4a5snIUvIXTQNLNKBkJSKG2E=;
        b=CaiG7MaKSIqA7Di+9mMYrWFzi16C5jXStAiDPT0TVRFYBFctbk9x9gm+tw3DfptyIq
         v4Rvsb/9BYhuMBUib6YdJUmy9MrxF5nJVTjMooKSqwadu13J+bddgg9crGxIjS9NdLjh
         23u+9MlOKCYpXM760to7eB1s99ywlBEa+4t2WzMJfjDN69HWPTNDeHF5pSXcFHWv1kFj
         kw0T5atnQPTYMS8hqpbm/CkhNuXUg/IwsEnJX4uBVFImVnbGDno21JbfWhu6fR0UH/r1
         m66P85SASUTVmW/bHyiFtxdQtH3sDW54cNLwGu4A1MTd/ti9s/xx+xLyK+1aMqNLVUuu
         TWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bzi9sTO3Skl/vWjaN4p4a5snIUvIXTQNLNKBkJSKG2E=;
        b=fzmj9zv2gKV+IYx5uYKgjP0AJ1gTSHB/xjgxYIEIwQUavzWIGalDUR/D0CZmYbNGvf
         w1ERxRAZ8NKDEmV+nuYxR26W8Ot6TxrLHVcKtxx63ghCKrZT7K0xb6M+p4tKeGP4G3vx
         GqAR7U5OwU/rExX19gqKOpRjYeg7co+o78EtDvdi8z8FuSgVk1Ws3F7SLw61uVs6oLxB
         PUzvV2ZPQBV7CyspPqW1/Dns+5ZSMAF2clyg0pSn0geRroaDmmtug1TnsHT93bg3kAB3
         XH4F4CRDwQ+hEDUUEH1KgDL9+Ms4dZTQpnHlD9NkuqpbbZZLvgAM9Tuy63ANe4Ap/gYn
         m3AQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUuNX+p3NLnPplxYwVwOyN4UuwSmoAIxPOKxh4khdSo755JJe6j
	JojT2O06+QIogeroxXr+Ies=
X-Google-Smtp-Source: APXvYqwVVt53MurW10jpnxLMavqYi2ahp2lVe1f7N7okCaFJZwVSbgP3WlIC2uwNZfW8Ea0iWmJxfg==
X-Received: by 2002:a05:651c:20a:: with SMTP id y10mr3573048ljn.163.1570048800276;
        Wed, 02 Oct 2019 13:40:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d9a:: with SMTP id c26ls482862ljj.9.gmail; Wed, 02 Oct
 2019 13:39:59 -0700 (PDT)
X-Received: by 2002:a2e:9450:: with SMTP id o16mr3732359ljh.178.1570048799493;
        Wed, 02 Oct 2019 13:39:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570048799; cv=none;
        d=google.com; s=arc-20160816;
        b=T9APMg82Hi4O+sa0q4TVcPfBGYipOBdxwkdAGiLQxtG548dDa0fuoKdL1pRUswELX9
         6DcZpSFfs41MyyPaGRCUSpgFNYBloaKVR5Us9MzZ5qNrIKxKPx5QhDOklGUcH89pW/YP
         EM2FKaHvzNb38IDjrRDoNnt0EWrCHeNXyYeDtqI2b/Fjlnjvff37UTwtTbCvi05Bbdlc
         D5YaDnGlLAGDjn4M0lcMfr/y6IyqOX5IbhCNPevJ5O9w9qDnxzs2RvQp2RvXYkIjoN5m
         NgZrFoGL+6XgPA483P9FlGxpxSnZ1APlXNKGVh12AdhpbBRoz9uebVUPjMJjyWLTTkbj
         NvEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CZoX6/kAyBlNzPm3PxVJHHET8XR6oaEdHzpQ1JHxlxk=;
        b=WhYl99c3IF9gUt8In5xXh7juE6NOLQxpe4PxhvsCcojE4SWH8f1XJUD9wiApY1sfR/
         hSYHqYH71pW4ojc7dTwc85z6komyLWaNvgv7Te8sfcf7+vh04hg/zdIF6+8FEgAmbbnU
         1QLfrm4n9AN+J8Wxl0WoffyFciWsXOaaOszF0iKaORDqea4lwMXOiPZS9ZYb0XyYZq6S
         kzclVGnXuDbiyymVQ5JCFzyIUH1tAgzZnLGuJzGRfGJP+SHx96Mv5/mhqI7b+RbYHJdZ
         rcVav/SGJq/Dbkzr3vFnjefhQ7bGgai2PB8x4nMTBHo/ywvarPMnFBZQ05RgoPTCxCt/
         hrjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=WgH48i53;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c25si30079lji.2.2019.10.02.13.39.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 13:39:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id f5so259506ljg.8
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 13:39:59 -0700 (PDT)
X-Received: by 2002:a2e:9853:: with SMTP id e19mr3646505ljj.57.1570048798798;
        Wed, 02 Oct 2019 13:39:58 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com. [209.85.167.54])
        by smtp.gmail.com with ESMTPSA id o13sm103668lji.31.2019.10.02.13.39.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 13:39:57 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id u28so92721lfc.5
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 13:39:57 -0700 (PDT)
X-Received: by 2002:ac2:47f8:: with SMTP id b24mr3502326lfp.134.1570048796885;
 Wed, 02 Oct 2019 13:39:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
In-Reply-To: <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 2 Oct 2019 13:39:40 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
Message-ID: <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=WgH48i53;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Wed, Oct 2, 2019 at 5:56 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> >
> > Then use the C preprocessor to force the inlining.  I'm sorry it's not
> > as pretty as static inline functions.
>
> Which makes us lose the baby^H^H^H^Htype checking performed
> on function parameters, requiring to add more ugly checks.

I'm 100% agreed on this.

If the inline change is being pushed by people who say "you should
have used macros instead if you wanted inlining", then I will just
revert that stupid commit that is causing problems.

No, the preprocessor is not the answer.

That said, code that relies on inlining for _correctness_ should use
"__always_inline" and possibly even have a comment about why.

But I am considering just undoing commit 9012d011660e ("compiler:
allow all arches to enable CONFIG_OPTIMIZE_INLINING") entirely. The
advantages are questionable, and when the advantages are balanced
against actual regressions and the arguments are "use macros", that
just shows how badly thought out this was.

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ%40mail.gmail.com.
