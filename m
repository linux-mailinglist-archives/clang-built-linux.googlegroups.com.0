Return-Path: <clang-built-linux+bncBAABBLWJYT7AKGQENSYATII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBB02D4A06
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 20:25:36 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id c9sf3709878ybs.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 11:25:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607541935; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cv6ds7b20L+atWe5GkaatTP9BAq6Go5E1Na7yfgw//dsGWmlvYTqNqwXCYsj34uD6y
         b1w5CbPfWnC/NBHp/0M8YRLLZLG4MCMQ4ZPGQxveohwB+Ur2qrhLN8defLDTQj0z8OOs
         0o11T4L4wD219xRvnpG4sLxMNwGOORyla7Ohf1XsAFye8bCA9tNSBp+1E/3RjCzcKhtm
         8X5JRCRUAWslVoK5xmBfGIasm8rrzUBCgST468H6WfkHt05vopttjUM/vl/C//xM1VIz
         1iLe2cYhNIk4brtLfAYdcbIosDIVcTt+mkT7/24seKcAy1jiTnJ7ol8gjJhPrs9X542b
         zUlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VSl2slFxnXeKS8f53SAhcrJGt73DLydgIuYde0Q8RQI=;
        b=D3OsR0rH4WoCkn9iYOz/MzqgbFIR801VCBzRkbT60BSMKb8JTNntz1qyiiqzetbKRf
         WIbbo3gdEJ5xv/tOd3Qk1OdjYUGxozEDtRHJSZUs/Hl90pjiba8dDauyAJWiFj0BbgVs
         XfFi+f/d+UrwFT4wvhnGyKAPrO6VtZrTeax8sDwef6UlhVlxDdRwgrF5u45JSeH/Eaq2
         uFLzWcu+KuKzjDbnPPp4K8+mlzS7QJ0/i9X0ZoWASOh5+hABv8UY5DY2Dkpng0lfHjbg
         t1vEu4o0Y4YwisEAudKBFz9RlNXTzxR0LxpdSSDpqhG0LZLAulCFaej2pLqrjkbn0ItH
         RXEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GWtFdSjm;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VSl2slFxnXeKS8f53SAhcrJGt73DLydgIuYde0Q8RQI=;
        b=FwBOrojCRb9p4TwqkGU0qMrK0FxTXZxXSf7HDa4c1BWDwKhGbDtT0pivGt2uBFxyKN
         yNAf0pn3fUKCPEau9gLvVIPy/ly2T/B9MS6iP9E5uxGvZSrR9mriGi8MMdnfufPhSwCV
         jkHPVqkBVmEEU9KUwdhR078KJOzm1zuwHQmTABC0nOuiEnoUqH9DzgRqzEw/w7OQLICe
         jYbe399PZI8hbDF9rvlHvrjuoDk2VqllVngAnVJAbXrKBrE3JQ4ywd0dILQX2Ww1OKRR
         ku2LWJyPadEMmJzaUgrefAA5WM/RWDsTBoKFE6fpow5F98i7NfRLiJuPBaTlxScBGLr8
         TRuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VSl2slFxnXeKS8f53SAhcrJGt73DLydgIuYde0Q8RQI=;
        b=idK38hhkyt+fbrYYe4Me0uMbeaxpleZ3/wiVfDayhOYKvk2nBHeQ4lkbBC+ehKuK5+
         47oNeMZPcYFnrwZxt/AGJzcXN8UaOgFCGD2R6rf3PTh6SDzwUSswlisnOjYBvL4tKRVW
         NFwlPCml0RSxmN4BEvag7wYpboWlBltrxCbSCzhWsyD8ufperTzEs0AUbcgoSezQoduS
         mc2yvOlSV7Mr/gu46hsv/etYCMoWUZXZMZvJCVxrR+DWZuYYVPqKys2FOsPLe/SFmybB
         mYkOIXpq+oU8bFld8ozYeKYugbh2HrtpEck7Y+pBrbCeWP5LEBObOs4pab5YtKTXOH88
         VjgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53061vjMVl/jccaHT6OCE+6dmKUQEDs6HFZZy1NGYe7mBIk4eZ52
	ghTrtKQzZfMz93Pwb/JV8aM=
X-Google-Smtp-Source: ABdhPJzUaL/Q+qvX4h75IFbK7W325hd0ohkl3R2bg+bim7YnlZWFRDepDZYNDdB2FsgFXHz2DTdQlw==
X-Received: by 2002:a25:c301:: with SMTP id t1mr5711188ybf.297.1607541935124;
        Wed, 09 Dec 2020 11:25:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7b41:: with SMTP id w62ls1323802ybc.8.gmail; Wed, 09 Dec
 2020 11:25:34 -0800 (PST)
X-Received: by 2002:a25:3cf:: with SMTP id 198mr6207328ybd.409.1607541934763;
        Wed, 09 Dec 2020 11:25:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607541934; cv=none;
        d=google.com; s=arc-20160816;
        b=Eej3WTsr0+69PiZNJagqNUyJmY1p58mCucmMFGkoECcguakoHOX/Lg82g9JkmxSZGG
         2cbHYI/HrJtSADiTeaiGEPfCsqTPEu6osF3kT3zes4x6vuSjkLR4NePWRMenvn3K09Ze
         xd7oR1bo7YrKrmPMxHw7HyxpkkWHf273tl/dobUFNbPt7ObCF+jOXOgP4tZWWpwcQ6/6
         ecAWFH+p+U3/4uPJUQ8zXxF2QifRXYjaesE7EBBiRoXrCaH3kxVDCRH0dpdTz7M6JNls
         bI39LREI7WM4yNJF9agDntytf0LbYKzNeALMrtlAg0BCtSodX/NInBpiKJjyQWg3JKXS
         e6Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ysvDSVqpz5oe3MOnjRTohlFHF3gUIF+D2m8ojSojjYM=;
        b=yGQoo4ibK83sR5OGhvZ3kA2xb9bNNOg1qJ7jIDKNFHAU/bvRr6xAYjxtNwdMrhpcBW
         gP/olXmAeGjjVCvnG/aXvHY7OZhzJg565NJXMreFI+Lac9ZdF3K3jU3gkD+0S9E/PTD5
         T0A3w/d5TbrtPibo6oVinB9icapKZ2NQ/fHwMcDcyAlLpk8EtkCp6k9SieJb4JWbpn7i
         zxmnNpXW2deAVAm/bpwOkdqhXzhbqE6HkHsUdfDRJTIMwsCfuMQMZ9LOqo3fGTQrd7QN
         PIs4ySnvX76HGJHD3Hei8WR0MYNJsKS5COZ3Unc0Nv1hN4jtiyRNBRmAomUIQp5ASviL
         jA+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GWtFdSjm;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u13si186000ybk.0.2020.12.09.11.25.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 11:25:34 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a9d:7a4b:: with SMTP id z11mr3125363otm.305.1607541932750;
 Wed, 09 Dec 2020 11:25:32 -0800 (PST)
MIME-Version: 1.0
References: <20201203004437.389959-1-keescook@chromium.org>
 <20201203004437.389959-6-keescook@chromium.org> <CAK8P3a1Br8JFJX2PxyjVxMPMhi-y8mxf+vdEAZQq_Wm2wYP7ZA@mail.gmail.com>
 <202012091045.34E3CC3FA@keescook>
In-Reply-To: <202012091045.34E3CC3FA@keescook>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 9 Dec 2020 20:25:16 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0SUthL19AsA0ZXRzngfgwHjM7mKootqAPbdbeJD7xEtw@mail.gmail.com>
Message-ID: <CAK8P3a0SUthL19AsA0ZXRzngfgwHjM7mKootqAPbdbeJD7xEtw@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] ubsan: Enable for all*config builds
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Marco Elver <elver@google.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Dmitry Vyukov <dvyukov@google.com>, 
	George Popescu <georgepope@android.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GWtFdSjm;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Dec 9, 2020 at 7:46 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Dec 03, 2020 at 09:51:40AM +0100, Arnd Bergmann wrote:
> > On Thu, Dec 3, 2020 at 1:44 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > With UBSAN_OBJECT_SIZE disabled for GCC, only UBSAN_ALIGNMENT remained
> > > a noisy UBSAN option. Disable it for COMPILE_TEST so the rest of UBSAN
> > > can be used for full all*config builds or other large combinations.
> > >
> > > Link: https://lore.kernel.org/lkml/CAHk-=wgXW=YLxGN0QVpp-1w5GDd2pf1W-FqY15poKzoVfik2qA@mail.gmail.com/
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > Have you checked if this has a notable impact on allmodconfig compile speed
> > with gcc or clang? I think I've seen significant increases in build times before
> > with this, but I don't remember the actual magnitude.
> >
> > Making it 20% slower would probably be ok, but making it twice as slow might
> > be too much.
>
> And for Clang, it's about 7m40s before and 8m30s after, so roughly 12% slower.

Ok, that doesn't sound too bad then.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0SUthL19AsA0ZXRzngfgwHjM7mKootqAPbdbeJD7xEtw%40mail.gmail.com.
