Return-Path: <clang-built-linux+bncBCS7XUWOUULBBFPSYT3QKGQEZVGY6XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF5720443E
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 01:04:54 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id t20sf13698725qvy.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 16:04:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592867094; cv=pass;
        d=google.com; s=arc-20160816;
        b=i3Hm6IFWZM23Wh5XskXzdC5kTeyCy9dHnNXxYgYb1EIOmK4lIPDGT28rhRtzp4ZRbj
         R4yHnKsPI1o6gjyL7YI5uIlVSHTZC4LQVHLbzh77Jc9bz3IW4dgldG80+R1ZW6ZEfp4y
         DdKJKTmXUnBhPh9o1nC0iC7qn6N/sHHmQBf4PvkKV9wmM7/jD+/xpvCL9KkX0NLmQDRX
         usephzXYtJXOSHxrOucD1DabXQpWLX/D6AaPlhQg/T3bZB1FwJjdpzdzyiJOi5UIoyPD
         q8LvpF+M551y8cVp12ziKtTT09/TXZEM9OpERQKBhlO4zaiz24y5mvDIwLRA5S9deyhr
         zTrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Sy++jLU1dcJcUG/SBqi0On0zvBo1Dc7XHvE/GlHhXsc=;
        b=zRrR4FCXpyhMWnahRvcDAqpj8dTJcMNQhZyGReFWJyqg/mRnQneSLGl8Hhmyrxtr9L
         COh9jRKIPTX3G+pfL7Z1eJU7ZQgavbxA8r/8i0muflV6xrrJ0koL/kYl3XVSNX4XAMkD
         8pWCBv+y/XwWFLLXWPJMTQTOzPz+b6gJ1qExj5HTNE1g9YVe4kuo+N8POT5rnlwSNc0q
         ycMWYBBlGYzse4u3ASnsUwyTq4ZF9PNIslz4ipxMtCr3Q5tTzVLggX5CJSK9RiuoZpCk
         zGRgbNyA+3rLWYwtfQqJF4jjEm1+kUkCYg8uHHvfwU2ZDsBxplgpz6zOXAYVPMRVNhHn
         o9pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PhMXOA29;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sy++jLU1dcJcUG/SBqi0On0zvBo1Dc7XHvE/GlHhXsc=;
        b=lorlKSuQohZeVyOC9SF1IAtFpLDe15DFcGOXYLloqK05DTJuACpp3hLqgqofZzhZa9
         7t9xFe2U+1FvATv+4opS+426axoz6fdiDqFUToqkux8DQKkYyGEsmxnQK5uM4w9b5ANd
         VV4WZQmrtsRN854JGsIhztjXDh0E1YMNm5aZLLGcAtA+3eg2Kwk0B/DjsHtqUaKUjFcO
         Xo8dQq6Jwqu1Glo3cjX8wn0IIhQDOeHxY69lPepU0xvo4zZYlAGEncAdrL3dtBQY3eWE
         uhBeaep3X++PjXdwzTUmYFqiu2TdeTNsDsFy137DszK344pN2rkwQg7pEoVGUiHtjJxT
         9dIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sy++jLU1dcJcUG/SBqi0On0zvBo1Dc7XHvE/GlHhXsc=;
        b=Dl+Ca5AmssRsEQYh8zylpvJd4ZkhNGUsuHVzk9s/roK9jBsZLHGqRQ08DZsX5MLiKz
         wY2oFHptqXEB442784dSLAxL+JE+ISlNo4kWI48IZRH74Yd5iikhjHLnWy2Ph1lXi8UC
         FMw9FBSJnW2Xasjouz8omBZLWMsxxQDoyqv9e3yAEPwZjU4TkV56SpFGTqlEoyDga/XW
         9ga25dS5B4+Fu9Phg01F2hx2vijJBW4x0cPZQFEo2D7dEuIEHs6xlpcH/IQ7ymKtl6ac
         NTVxh+M9ksw2PnRGG2ECiYXpwwptOkPyJNeNgvLhU2KZ7VNOZqICCtS4ThWau8FFCklh
         JNZA==
X-Gm-Message-State: AOAM531etom+a1il2ecSKuf2qfn/9S/DZUUyEe3mtPzJwfnuDCf+2Ssr
	/ED6ApD7XLZbd2vkUmPZH4Q=
X-Google-Smtp-Source: ABdhPJwjmU1fIj1EAeatgJis/5UREJM8+E/efgpkuPFmxJfkxYGn+7QCMDMaU/ft0lMpsUwJfE/+8g==
X-Received: by 2002:ad4:4f23:: with SMTP id fc3mr24354038qvb.25.1592867093845;
        Mon, 22 Jun 2020 16:04:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:55c7:: with SMTP id bt7ls4298513qvb.3.gmail; Mon, 22 Jun
 2020 16:04:53 -0700 (PDT)
X-Received: by 2002:a05:6214:10e1:: with SMTP id q1mr22669899qvt.78.1592867092806;
        Mon, 22 Jun 2020 16:04:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592867092; cv=none;
        d=google.com; s=arc-20160816;
        b=VK2WzVBAZTDHGiDD0tzE9LnsQpq54BHdx3tZzMpN8G2nFIqGM53RhWSbr9AVWcMvMo
         7yNqSdcG2q67yuGU283LB9ATu9PTOAV6ojQn5ZajhUNSK4Fj3fYODYktRnM16MfN4k/a
         X4RC9EH9yxgmjmf7kNfB1j1SzGvzshQZSoJGFxq5cXd2OnNB8w+7SkJb5Cn6MGNiPFpg
         22ynxV8pIBH2BK/ZKOT0hkC5eZugpoGpzIvUTx2TNXjhAu9MZInN/LGsTiczt4ryqVWc
         LQYx2RvT1SOZ2fyl+TF2XEEsLiFVtBUBSmFQuSVLp65GpYHfuJ95wpzl0pN1o4TCQQKv
         Nz4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VqNx5+2kiVG9gpFn3910S15vAkYBqDSSedKViD8vzv4=;
        b=sI0c4+95A2adXwi62xMNfsORkocUoxAUBqYsIVz2bOqD3blDVBO4AYex1wMuH0QjgQ
         iBooIJYwGOQ6Ow4btYfLLeBIhIHX6tmaDBZvg0Z8OmmDWg90HZg/gNoPTzI1PAjMJTtt
         9h1fUIaKduDV9960N6x03ZagnaAjpk+10FiCqWY0Ol6NlDxOJYVbYl7cW0sb5Kd3iTtZ
         Q8ob3ATDwAu/CRAn1TdLdj/fIjCTFbwMtHixclAeT7Zdl0cPveGl8h4CNhfLW9/sWJeb
         uFLYxgfNr8Wx5DL/VOGoD69OOg+Ua5ayysNmxqPrvL8DlsUPZ6S/d4hiS8ybzxcrL+D8
         q17A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PhMXOA29;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id v199si947862qka.5.2020.06.22.16.04.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 16:04:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id k6so8237643pll.9
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 16:04:52 -0700 (PDT)
X-Received: by 2002:a17:902:49:: with SMTP id 67mr21218818pla.205.1592867091804;
 Mon, 22 Jun 2020 16:04:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-2-keescook@chromium.org> <20200622220043.6j3vl6v7udmk2ppp@google.com>
 <202006221524.CEB86E036B@keescook> <20200622225237.ybol4qmz4mhkmlqc@google.com>
 <202006221555.45BB6412F@keescook>
In-Reply-To: <202006221555.45BB6412F@keescook>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 16:04:40 -0700
Message-ID: <CAFP8O3KdGc9TtziFX7UzmxA-=wfPzm5oi6NCEwRiyyrp+JD3Xg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] vmlinux.lds.h: Add .gnu.version* to DISCARDS
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	X86 ML <x86@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-arch@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PhMXOA29;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Jun 22, 2020 at 3:57 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Jun 22, 2020 at 03:52:37PM -0700, Fangrui Song wrote:
> > > And it's not in the output:
> > >
> > > $ readelf -Vs arch/x86/boot/compressed/vmlinux | grep version
> > > No version information found in this file.
> > >
> > > So... for the kernel we need to silence it right now.
> >
> > Re-link with -M (or -Map file) to check where .gnu.version{,_d,_r} input
> > sections come from?
>
> It's not reporting it correctly:
>
> .gnu.version_d  0x00000000008966b0        0x0
>  .gnu.version_d
>                 0x00000000008966b0        0x0 arch/x86/boot/compressed/kernel_info.o
>
> .gnu.version    0x00000000008966b0        0x0
>  .gnu.version   0x00000000008966b0        0x0 arch/x86/boot/compressed/kernel_info.o
>
> .gnu.version_r  0x00000000008966b0        0x0
>  .gnu.version_r
>                 0x00000000008966b0        0x0 arch/x86/boot/compressed/kernel_info.o
>
> it just reports whatever file is listed on the link command line first.
>
> > If it is a bug, we should probably figure out which version of binutils
> > has fixed the bug.
>
> I see this with binutils 2.34...
>
> --
> Kees Cook

:( It deserves a binutils bug
(https://sourceware.org/bugzilla/enter_bug.cgi?product=binutils ) and
a comment..

With the description adjusted to say that this works around a bug

Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3KdGc9TtziFX7UzmxA-%3DwfPzm5oi6NCEwRiyyrp%2BJD3Xg%40mail.gmail.com.
