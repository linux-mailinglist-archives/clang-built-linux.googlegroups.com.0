Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVEP3XZAKGQEVWGS67A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E99170FB4
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 05:38:45 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id w13sf1179433ply.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 20:38:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582778324; cv=pass;
        d=google.com; s=arc-20160816;
        b=fQ8TDcqQ2lhPhJFq3Fwp1GGq7Cm+ezX2nBYoSpOmngbemqPxgT+DJxAu1ShQNqnuRz
         x6RFbhb/fRPPzw09cmEAk9EdrmLFymkeyoWjqVpQLr0GKEMBF9Oe+FvTt45XCk1Ts3aC
         4EQ3O/BGPhS+WaRT2LLd2uDSwP2Q2XsuFC88hbQGmyI4C878fHgtx5I9ovCIa+neKVgE
         fQGoKXGpP1XnIOloa4fD5veawbc4Cv7ZmSxWZw/XaFx1SJnwmpZWbwKAO+SHzdHDLkxL
         Q1nQq3VKI8w9jSx6vC7oSxz4Up//Zmoxv4FibTg394Q5JsM1CmoV8WHEnMvOrGZnrXor
         UGEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=IhTbvPyi7XiGQAjpt59hOE1YoGEKuG7bHa5y9CkXxkM=;
        b=lnPp1LJ9GVA0EG6tuG6Ot3ccSXofHmFIIqpFjFs9gyuSLKpsbx5jhAIq+LYJ6yalll
         DUE2WMr4Z+ZR4w2nVN+NO8pAOm6kG2Z3mMjHuOEgUQ4mjJLF9ZpymYwyt7ISssjKuG1y
         nKYi0SmFfJZQtvCvUow/g/rQBXcCTPNWEVfTY4NAT1Ase4Mtn4HahuXZfMDFz6dTeQsP
         Sb/jgknZzQOcXcCg7SvLE5JB3JjOXrDf8vyrRDVf0tsuIF4JiVCbCk+pFRQnn6b2N4UE
         PV1zosxXi2ezPtkPuznu0LGx+dawj2wJHHzA6UGlbOcqyqp8tjIY/1LRIb4AISIsvU14
         CI9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kdLDp3x1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IhTbvPyi7XiGQAjpt59hOE1YoGEKuG7bHa5y9CkXxkM=;
        b=JGJ4c3+cyZUpRlOEBS6SNwiYAgNOiCSn92XFHs0UgcpiNc06qFqmVBaP8p1B4YbMZn
         isOLOIeY49zFx6s3LnpOvgcN7drB3Mf6qJoLI1OAs+MwSOi5R1YnJ6jHjh96UQp/Cd0y
         1mr9cNrZi8uiJIWTrQq6eyiTNiowahhyksJu5R1gFEghqrWKShOXgMsih1YCXWsu0j9w
         lkp9vrtq71eIKM8b/DD720oCUVW474+8jPJyh/GdIdoUgKmXzMtHLLk+bWpINX8exryQ
         BRLv2TTRewHSwPgfCPQ0GYllBL3cadL2PL4w6k4y5IaTPjkti677r9rU0C5DTcCRpuej
         kgLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IhTbvPyi7XiGQAjpt59hOE1YoGEKuG7bHa5y9CkXxkM=;
        b=KFEA5yfkuefAdzxXDohGX7xofqoOoX5kKwWRGMBWKSvwf3dzm8tPXQxtG9Vjncosfq
         pTQnLwC/voTJl7l5o/wRj8hU5Y4liMJDSs3Q2B9j9yHD59WNXlpsnwFZ1/7JEvlZA4Ci
         4eSpxt2E5Qe5mIX/tikHIXFbBnFuddNM7/6ak9KRx9ZSyiknA8rLmfKs7nwnbng9wAGi
         dxsfYKgW2gIrVlnb+61ezINyjcYUfBeYJJ0iQ/vuJI5if/RZl+u8qMGFJ/tTYwSWsVP1
         kcemcVSfWtCZZlUVTjNnaAwaqRrlaq4bHy704GEXplX0lJ3BRfnUr63QH8UmSeL3q5gs
         dunA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IhTbvPyi7XiGQAjpt59hOE1YoGEKuG7bHa5y9CkXxkM=;
        b=GR7E1bM16VeKUIOScfNlvtoL1vHP3ZE0z9ILRkNC9fTh9r/Mbd1pTzztAcAl+IrCy0
         eBbWbu7jLBhK/VL0WaTyZj7H05yZYboI+NWkimYRi0ZfBYl4O6nSrkmnqf6nYAtJfiK8
         oIto6QYJHtle7azpT1NALBDGLJRDZM59DdaNKvPBZWlNISM7ax8ycU17fM+biTqSUmnU
         KNRTifjjT04AKwfFZfut6+BTrW1zZ8tpKV5ruhSfzgRwnIdfqZPr5iJk/e0Q9RU8a4wB
         ZXKkdgFID0hAyxDdixJ4G/4j2cyA0y650ZRpz/A9UZpMj/gCrcquDrJK1jvOk9fodEbv
         4AKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1zggLyd8H5ZUrTGVViHHVJOsmczn89NE1MctZ4y2vTbrc3uBA
	6WyXvnyKOqqn2zyaY6IQVAA=
X-Google-Smtp-Source: APXvYqyc3OZwzD4i7aHtlxSzrHbZny/ichS4+ZpDDCkNeEq7GyxKgDajLIxEH785peWzB+lUjRUpOA==
X-Received: by 2002:a17:902:8682:: with SMTP id g2mr2671205plo.336.1582778324437;
        Wed, 26 Feb 2020 20:38:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7a47:: with SMTP id v68ls527839pfc.8.gmail; Wed, 26 Feb
 2020 20:38:44 -0800 (PST)
X-Received: by 2002:a63:a1e:: with SMTP id 30mr2365978pgk.238.1582778323977;
        Wed, 26 Feb 2020 20:38:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582778323; cv=none;
        d=google.com; s=arc-20160816;
        b=L13bUu8sJ/Kj0x5QG9BuvAoQTqV527aaQvEQ4/W6Iwd9JTbuBzxm+YYpSeS7+4gMro
         xxiiXfwLSWvo9dMsXsa01nkjBSVPsO9KwUw6Y83Sjs8KliKyYGkSYZWFDbk8NOvjnCRF
         L9DWOCjwZ7JfWuh/6j5G2vtg++H7i23skC3B0PQeR5N1BffqhhV99eT0pSDLku9bntXI
         QVzfFZb439LZ/WH91TyhLYp4t9eRyd1zL7nuZjSnxlaOxiTs8qkjUifLoLijQK63lkyD
         JNmrLhVF92mUQQhV8V8PqdfTYf0/vmRDgNfo1lFJhKScsK7ycAKv89lz87EdTqmzGRiW
         TwJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ByzwXjxxAjc7Zga7QIoH1Dg/JplDufewPb/z1LrV5Dk=;
        b=rDv4maxuKClSpr1FV+lvdeQ/e9A5vbHtTHNk817E2Fp/S6YbaoNjewRxfvCqRmJcFr
         b0W9XnVAVngCuZUzqePVMBLYQN59R4bJJrp5TsBworQHySD+PbCHEovbE1VFbdYxyora
         qUJJkAPFvXwzTpQBtRVJHchyxm4v2fpBhIo6PDfu/hBSIn1WPkNSWbB74rRIZl1iN8pB
         piWfyNmNMVSkuQzMdrf/mGM1avB5sysHluormOsInctqctYKXfBKlPF2e3PPhNtd+ink
         vpV8mObMH97j4PrXLR0Otyvt9yiRJBg9DF31CXTBgFhiEC0yZm9oOB3rl0UfwRAwYGYy
         I6DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kdLDp3x1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id i16si169761pju.1.2020.02.26.20.38.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 20:38:43 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id a22so1958341oid.13
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 20:38:43 -0800 (PST)
X-Received: by 2002:aca:c3c2:: with SMTP id t185mr1990201oif.26.1582778323474;
        Wed, 26 Feb 2020 20:38:43 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n25sm1592674oic.6.2020.02.26.20.38.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 26 Feb 2020 20:38:42 -0800 (PST)
Date: Wed, 26 Feb 2020 21:38:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jonathan Corbet <corbet@lwn.net>, Kees Cook <keescook@chromium.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/
 Clang/LLVM
Message-ID: <20200227043841.GA55684@ubuntu-m2-xlarge-x86>
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <CAK7LNASNsOmyqFWYtJHB4UcHAed5C_isWvMJ4MKHu0O=yUy=8w@mail.gmail.com>
 <CAKwvOd=mPg79CrYnDm8=z0iJpKL0FHm9J5qZF0_A6BFXBv8Dow@mail.gmail.com>
 <CAK7LNAQ83rLAm1GcvrgJbinyAVPpM_SoxfO7RdOAfmXyg2tBdQ@mail.gmail.com>
 <CA+icZUWSQkYD2MzEY_8U1NMY8LO5NzD0CCuZ8+cH+dBndJm=yQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWSQkYD2MzEY_8U1NMY8LO5NzD0CCuZ8+cH+dBndJm=yQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kdLDp3x1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Feb 26, 2020 at 01:33:13PM +0100, Sedat Dilek wrote:
> On Wed, Feb 26, 2020 at 1:01 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Wed, Feb 26, 2020 at 5:52 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Mon, Feb 24, 2020 at 4:34 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > On Tue, Feb 25, 2020 at 2:41 AM Nick Desaulniers
> > > > <ndesaulniers@google.com> wrote:
> > > > >
> > > > > Added to kbuild documentation. Provides more official info on building
> > > > > kernels with Clang and LLVM than our wiki.
> > > > >
> > > > > Suggested-by: Kees Cook <keescook@chromium.org>
> > > > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > > ---
> > > >
> > > >
> > > > Perhaps, is it better to explicitly add it to MAINTAINERS?
> > > >
> > > > --- a/MAINTAINERS
> > > > +++ b/MAINTAINERS
> > > > @@ -4118,6 +4118,7 @@ W:        https://clangbuiltlinux.github.io/
> > > >  B:     https://github.com/ClangBuiltLinux/linux/issues
> > > >  C:     irc://chat.freenode.net/clangbuiltlinux
> > > >  S:     Supported
> > > > +F:     Documentation/kbuild/llvm.rst
> > > >  K:     \b(?i:clang|llvm)\b
> > >
> > > I'm happy to leave it to the maintainers of Documentation/.  Otherwise
> > > we have a file for which there is no MAINTAINER, which seems
> > > ambiguous.
> >
> > It is common that MAINTAINERS lists per-file (per-driver) maintainers.
> > It does not necessarily mean a person who picks up patches.
> >
> > scripts/get_maintainer.pl lists maintainers that
> > match any F:, N:, K: patterns.
> > So, both Doc and Kbuild maintainers/ML will still be listed.
> >
> > Having said that, it is up to you. Either is fine with me.
> > Another pattern 'K: \b(?i:clang|llvm)\b'  covers this file anyway.
> >
> >
> > (BTW, I am also happy to see your name as the maintainer of this entry.)
> >
> 
> +1 (Please drop the BTW - This was suggested in the brainstorming
> session on the ClangBuiltLinux Meetup in Zurich).
> 
> I suggest to add Nathan and Kees if they are willing to be responsible
> for the maintainer job.
> 
> - Sedat -

I would not mind having my name added under this MAINTAINERS entry but I
definitely think that is a conversation for a different thread.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200227043841.GA55684%40ubuntu-m2-xlarge-x86.
