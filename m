Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNG3WCEAMGQE6M7Z4HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE143E1B3D
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:28:05 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id x1-20020a05640218c1b02903bc7f97f858sf3589517edy.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:28:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628188084; cv=pass;
        d=google.com; s=arc-20160816;
        b=Raeu/TdA1KHu1k/yjE0lAZtrdhiWML6beIFdC7fyuF/dFZsvWqf66SzQFloUEXwjiK
         bcH1osLG5dUQj/GwE+BZcYXVZqiJ/exMY5pZ7gdkgC24Nl1Ov0RBvXOHY9RkbJpkQyod
         MHQ20d1zExw/zMyqFRvdIYUsFySRPeN3EeEohjexc3Q1oM2m7HMYcrlNou+XjaJQCLhj
         KtRYzDUkGYO4zX0nIxn8CEg0y3iANizcjuhKtKL6Oy/NwXvopRX47kQETd4es2XFiG/O
         HN5zTeClXXD9p7g0dhgD5vt/taeGKyvpX2XpVpcSS3iLyZMChG+iubWooFNCQ66OgxXY
         nHfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2BLgjTZQGv8myuog0dpDsCDwcbPCEoPoCGdaUaiUrH0=;
        b=bS1Q1SqVUChhG6pQSqi8x5Ae7ElU/ZCwsgLrbWB1FTdARNhPKcm/b9hTw5QFFRlW14
         KnhnPkl0+WCrUibWyqU6ILmwJlXS7viDgIqBqpyBWdR/w8Vt/PUEnXDwb1SkALSNGayD
         kzIIV5uDhEXJUMQYd/JmbMvJR7fixfKzR6MDKMg69vU5h+HbGmaey3ON6UgjSHgMbRJx
         sGxjtdN5S3in1UDrfkrU2qf3tZrYfo+U1BoYvSCZ2qZooGAcXq1P2NOd5K/HTZxvlPtC
         H1Ac+ZcRNL7escNoBQ53X6l1boQ4DIkyywCApjKResNhxDGE95PSBv8L6aHqpc4NUvP4
         jZCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uQ1LNJMz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2BLgjTZQGv8myuog0dpDsCDwcbPCEoPoCGdaUaiUrH0=;
        b=OaKKmUZh5ghvs7LBoxYZ82TWaJ3pvPon/q70B7LQK2EyNDpWfB8cxBQ3+rwriIK72L
         cgSkloiqarp1amdX7IX3MGeFuZaTwax5uNUzUpnNqrUnb+W0RBJk/QU1yDCSn+K3PGQu
         MYsF9upg6sppT6GZtvoh4HAsYYOH+RFsHfbLbgHnLtl7ERE4Ilpu6Fp+LAZxdzao3rbm
         7oQelKwahDEflqvLA88Tw0l1meVHeK3cuomnacWeoy+hk7H/KdZ/URdTSlvJkuJjE6Ai
         DaPURr2KXV2Lvco5tFiOU1TA+m7HUXTqLDGCodi+DdbpSyXVVB8EMTQlxrrv9FUMCO4i
         wJxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2BLgjTZQGv8myuog0dpDsCDwcbPCEoPoCGdaUaiUrH0=;
        b=F8QoB6RQB8Z6xOGQSgX/cIxbsffC+siT43vXETD4RS6UqqmVWQ7sd6+J8G9pK5kyHq
         +A9P7sDK7ojUAOYMxwg0sA44E0JnaRSUOyVyoM4nqcd4YRXEQ4yFhyMl+H69lrYQZ7tm
         ZKs2DgHSv3LTehD7i5cSLsuGkxZA45MzE+AuE4N12SW9aW4TstvDT32/92/HUzdfi58u
         jMVJnZOasG7in6dgdReVtWuiNQtxPFucIgVRhyE5/qKJFN9uWU572p2322Oguoe/092Q
         M0HN12njDAt0sIwf8G/XIl34dSETgFglG9bm6wRUV2Hxe86dU38XaLBqeD63MmQpBLqQ
         Eq9w==
X-Gm-Message-State: AOAM530vFce3Y4lC8TT7JlRjwesxTUVGcEJ+t45C2zAudCOCS5akJ03n
	qgn0dvC3ECZIVwNPNFKYsWI=
X-Google-Smtp-Source: ABdhPJzghAAWdzn4oPMZyb8136ooQzeV+xFHLUNYpkxGPYqOqG7dir+qOEk0af38yQpJg4uCwBJUVA==
X-Received: by 2002:a17:906:a108:: with SMTP id t8mr6063259ejy.407.1628188084763;
        Thu, 05 Aug 2021 11:28:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f98f:: with SMTP id li15ls3088280ejb.0.gmail; Thu,
 05 Aug 2021 11:28:03 -0700 (PDT)
X-Received: by 2002:a17:906:1691:: with SMTP id s17mr6163457ejd.297.1628188083897;
        Thu, 05 Aug 2021 11:28:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628188083; cv=none;
        d=google.com; s=arc-20160816;
        b=YzZRsAGYiE2LCgT/EA70CU81fuAIkKjR7nGD5Lmlyw+41J7FdZMOVikUp5zsU6gksU
         1I5NLVz653WpcHmPA1W1E8aI0UmnyI063UX4jxCfFCiAnwhoE4h4BkG/Q0+b0oH4SE/A
         Y7kEqTD5MU6w+VsN4xCSyY2QoQilneYDXrOjKVPy6Q403TGHvdd9c4N4z10wTX8FDunq
         WAVY4Q95eTJnulLZ/rrqSt48Mi+lKm+UacoTyj61tbqFcGt1g2kKI6FCotxLQH5rIQHE
         Fb2szY/Hkxlahr1nPOsM0MMxGHg72oD3TkMz6BXvSfFwatNFygUXR614CZugUkMqo52J
         8fPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9f5+UcRxykKWQrhwnvqPA86sI58gT75eqY66GROKyNA=;
        b=LivdGXv93kRz/p1QL8HntkMX8YMsriajVyOLX/ATvIIejyh7nC/QU5FKu4r21MxROy
         g2BSohkurFOJdeL4UkYjZ/6gvdIUp6q8YGkeiig4bUKY6LcF3un5irmOYH+nvathpadh
         YhWumhZgCWh52aVEUL/ZKOhI8g9sEBQTOMO84iDyaI7HyMoZ0VAJ28U2HKBBIJH3TccO
         3jW7KQnpaDbbaOybquSEabckH8U+/h09l87SXytSMJdZBOb5P+3il3q84OJuh0u2d8jK
         AarLQffiPw5t9wwtJpyAnCckGDFIEDGwTXTrzP9mP/vMQE55lsh7/dlhW6KRbDZGFWel
         3YGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uQ1LNJMz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id w12si408595edj.5.2021.08.05.11.28.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:28:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id p38so13011356lfa.0
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 11:28:03 -0700 (PDT)
X-Received: by 2002:a05:6512:39ca:: with SMTP id k10mr4737821lfu.547.1628188083378;
 Thu, 05 Aug 2021 11:28:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com>
 <20210802183910.1802120-4-ndesaulniers@google.com> <CAK7LNASkBNDzXWxweotPZGJH-z3J59rPQwGDV32rfH9hH+sVHQ@mail.gmail.com>
In-Reply-To: <CAK7LNASkBNDzXWxweotPZGJH-z3J59rPQwGDV32rfH9hH+sVHQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Aug 2021 11:27:52 -0700
Message-ID: <CAKwvOd=iyhky9jhw+UpYM7W5-7tqo02sxpZUASEk6XciS0wSwg@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] Documentation/llvm: update CROSS_COMPILE inferencing
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uQ1LNJMz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Thu, Aug 5, 2021 at 6:58 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Aug 3, 2021 at 3:39 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > index b18401d2ba82..f8a360958f4c 100644
> > --- a/Documentation/kbuild/llvm.rst
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -63,6 +63,23 @@ They can be enabled individually. The full list of the parameters: ::
> >  Currently, the integrated assembler is disabled by default. You can pass
> >  ``LLVM_IAS=1`` to enable it.
> >
> > +Omitting CROSS_COMPILE
> > +----------------------
> > +
> > +As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
> > +
> > +Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
> > +``--prefix=<path>`` to search for the GNU assembler and linker.
>
>
> Is there any place where we rely on --prefix
> to search for the linker?
>
> In general, the compiler stops after generating an object
> since it is passed with the -c option.
> The linking stage is separated.
>
> In the old days, VDSO was an exceptional case
> where $(CC) was used as the linker driver, but
> commit fe00e50b2db8c60e4ec90befad1f5bab8ca2c800 fixed it.

See my previous reply to Fangrui.
https://lore.kernel.org/lkml/CAKwvOdnK=SUm1_--tcLRO3LVeXd_2Srfv2tsZCUW0uXXa1W_pg@mail.gmail.com/

To be more specific, I believe this is still a problem for ppc vdso.
https://github.com/ClangBuiltLinux/linux/issues/774

I had sent patches for that, but binutils 2.26 would crash (IIUC,
newer GNU binutils are ok).  See this thread:
https://lore.kernel.org/lkml/b2066ccd-2b81-6032-08e3-41105b400f75@csgroup.eu/

So "we'd prefer the linker was used as the driver, but there's at
least one place I know of in the tree where that's not currently the
case."
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Diyhky9jhw%2BUpYM7W5-7tqo02sxpZUASEk6XciS0wSwg%40mail.gmail.com.
