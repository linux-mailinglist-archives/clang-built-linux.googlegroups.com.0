Return-Path: <clang-built-linux+bncBCLI747UVAFRBYESRP2AKGQEOHQEWBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4C5198B5F
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 06:38:58 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id k25sf18264557iob.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 21:38:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585629537; cv=pass;
        d=google.com; s=arc-20160816;
        b=pAdNceYOU+uE1sv0Jhimh/akAKJ7zT+9mzOzUUhqbOXFrPf+TA2c/D3QQQ0uu7sWgj
         c1NA9JGemzaNVNWo+xC+cMmGklpYm04t8G9OfAQExuLQMQHB984ILzpkHcvJ4AeLRcih
         goPhmNcxhKPc1l/cFU8LH33HPYRvcGIRDybDtj0NqjspvugqliOHNY4qu8HzZbprczs9
         X2fabffxmosJwrjRmVVhtbZEHoL87x1/0pffkWmI/axeLilq+nF+d1jWHQIiMMFG/a25
         al8iZudhVP0CvKVpOhMXjMnAVh5krtltxcImmDQYPZTMinwYxUt4tUkJWGYGk3PmMt4X
         SEcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LNlRhK5jzBz2C+GEYGPGmoW9Y2b8Ml/mvTWWT1ImQ7c=;
        b=Vy/k+UuwSMq4udF26d1d0IBKoDOZJt7lBtpahGn9FKmqVTCKk89+cMfZgILdrBao0f
         ZzIuNklZ6drKG+TyLT5abN9ECxF9KsLAZBW0+T6/1+pEt1eeuwWLS9GbplJKTtC4Rh3a
         1GQCkkaRfFgXuZ+t2vAkkuaqzoPhHoS7hR8uSUjambS6mk6aDjPMbs7Wh7ju1OYNuxJs
         fCC0X4tDS1o1f0/K+W8vSpjQsoqYtrnD+lP1+x3YFDdu47FNgG00P36KcdR22MHbVdtp
         J5rsCXo7lNz+L1HCS2KqGJow59UobEjTDn580id9z6kcvuNfIOE6oSODtwg5yD1TlK08
         CxCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=cl8Isx+K;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LNlRhK5jzBz2C+GEYGPGmoW9Y2b8Ml/mvTWWT1ImQ7c=;
        b=bmZsFjAdY36fjGLqoy4J7oCFLkobKmp0cAc+PhQ0l8+EE8hg6WY/QTCLf/6p2XkSze
         uZT3m/uoWkA8W9ofoXipV2HNWxiZF40HQ31VGqnCbfIJxy2L3Ib9W9tm25Ck65oCYkGc
         8yE7+oIS8fwcEzGiKFvG9F9bB+ew7zYyHIX6KFjLvBG1GfGYuYWq08Q164uCOmBYnhRr
         rtqPFfOHR4I+6igRxu4YxDhMgWZu8K9+4kd3em2j2+IwrhfQqhd/Ai/JvE+GeDWn7Rwv
         fngBi8/c/TTtaydZXRrrd7LiPTOh/kYOglVrLhLFzViY48DcjoHpCRycS4DZO0uXSN6G
         EcIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LNlRhK5jzBz2C+GEYGPGmoW9Y2b8Ml/mvTWWT1ImQ7c=;
        b=P3rNvUb77DURh4xtz3zNUt3WtIPpJ6j8G8Ny1tJm/da8FIRnPFduND0OD+9EvT6UX1
         Wn1H97UT7t2f4grc2EnzzrJpIU2ypl2Wi9+hSqyX8GX+91Hm1aRZSuPxAO4ZCb/t6cCn
         sCPBKzRbt+lGen1KSOmhY8jycBie4IbLUnWznFUkPvcLaHme3WZ507taEgKwu5XyAnE7
         4z63DThFDaLtLOhNt+gZuAJRgMXvc4A5RiIa32xJANlt86PSRhZcI3/gEAmFJ01Ez+nA
         afSqTUu2B4Jwzy0iJ+w2qavsBmbqV2PxVwoY+ynQ1kEI3osSG77x2L60aHCb7IRbSQYt
         L8Lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0aFbuHGsOmjrW5Nt/sybezHjGrWBsZsLxDeZNKyT762Ph4TP2M
	K+hm9zbDE61gEQ+TWiIsoR8=
X-Google-Smtp-Source: ADFU+vvnYt4lRV8YJhYsgTTSThcZ+gTFZ/s0adhpv/66ErRrdx4N6+Q6tEqLHIbcd4hqd0aHTX2SDg==
X-Received: by 2002:a92:3a8c:: with SMTP id i12mr14966384ilf.69.1585629536757;
        Mon, 30 Mar 2020 21:38:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9ac1:: with SMTP id x1ls4082942ion.11.gmail; Mon, 30 Mar
 2020 21:38:56 -0700 (PDT)
X-Received: by 2002:a6b:b70a:: with SMTP id h10mr13987384iof.54.1585629536371;
        Mon, 30 Mar 2020 21:38:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585629536; cv=none;
        d=google.com; s=arc-20160816;
        b=dNv61LNLNqmrZ6QER4ZpzVwuzFgWYcRXpsGBHiYLowXIp8wVZwZd/0n3BT5OSyGydB
         mRAEXhFEglcrh0OmlYWGAUvB0f/0jvLwpsaHWtW6iIH50kNs5ViLaQzPl3d/sG0lZHhj
         OpY09gT8U2OEr+QcYGSvRmIgv/OBE2GoGtk13k58Wz6fqsi7jyA/25f2yLg8HIpN31f7
         BvhXqAr0pIP+9IiAAr5xJMn5FJ06YUDEelSBbpaXnYo/aTQkN/rK6/o7h6t/cOZtvJSh
         BOgfQJ74eVgqrAHoKklZ7d/n4zwCRD/3v9hmETcDMCTZG1AJmVRTPyUEZzJ6b3fX7s7j
         gjfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rFW8v+HHruKv4Ha97tfy4QUdbtVMMKDK8K1wf/Ymn+s=;
        b=DqKrXm0qAN5XXsFxAIUr+5fViRWz8D6SemBWVXlrGfCZ8MbWSz5899yZr9tFFQ6S24
         kNU04270j+6GxTfnGMBd4zBg+tBnJNAv2FkEArD7AcB3LUfuy8cT+sqlOi6fieUK1eX3
         Iof5Hbl66S0pbpXkV2TdvfXZGfNnPBLYMdRE1OXZB5dnO2tE07XWeItf0p2FiyaiL1L7
         rnd05OLZ6iP0d+x+X9XPXIlyybc3nahl0IFvUfBnfxlh7P+26+14FdgTc4L25hLsdOZM
         076yqRC4xpD6v3ZNPg4DtM6VpkfnBThQT3f37l0NZuwvu8NVvdRenIzP5yzGQ7Xj6n8C
         fYnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=cl8Isx+K;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id s201si979098ilc.0.2020.03.30.21.38.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 30 Mar 2020 21:38:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 18c11684
	for <clang-built-linux@googlegroups.com>;
	Tue, 31 Mar 2020 04:30:56 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id f1093239 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Tue, 31 Mar 2020 04:30:55 +0000 (UTC)
Received: by mail-il1-f174.google.com with SMTP id t6so14559645ilj.8
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 21:38:54 -0700 (PDT)
X-Received: by 2002:a92:d785:: with SMTP id d5mr14420226iln.207.1585629533774;
 Mon, 30 Mar 2020 21:38:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <20200326080104.27286-9-masahiroy@kernel.org>
 <CAK7LNARueG4wM-_z+xDjwHci=wwAad8CqP1UF5mFJpPf8Zg71Q@mail.gmail.com>
In-Reply-To: <CAK7LNARueG4wM-_z+xDjwHci=wwAad8CqP1UF5mFJpPf8Zg71Q@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 30 Mar 2020 22:38:41 -0600
X-Gmail-Original-Message-ID: <CAHmME9q=Ymmot+c55uQGxy+ztc6ZMgiM0340RGF8wcE3D3TtvQ@mail.gmail.com>
Message-ID: <CAHmME9q=Ymmot+c55uQGxy+ztc6ZMgiM0340RGF8wcE3D3TtvQ@mail.gmail.com>
Subject: Re: [PATCH v2 08/16] x86: replace arch macros from compiler with CONFIG_X86_{32,64}
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Borislav Petkov <bp@alien8.de>, 
	Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Al Viro <viro@zeniv.linux.org.uk>, 
	Randy Dunlap <rdunlap@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=cl8Isx+K;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Mon, Mar 30, 2020 at 8:42 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Also, I slightly prefer
>
>    #if defined(CONFIG_X86_32) && !defined(CONFIG_UML)
>
> to
>
>    #if defined(__i386__) && !defined(__arch_um__)

I would much prefer that too.

At some point it'd be nice to see this whole mess cleaned up with UML.
I've seen this a few places -- UML thinks its x86, except where it's
not, and then there are problems. For example, a lot of SIMD related
code has this.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9q%3DYmmot%2Bc55uQGxy%2Bztc6ZMgiM0340RGF8wcE3D3TtvQ%40mail.gmail.com.
