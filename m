Return-Path: <clang-built-linux+bncBDRZHGH43YJRBUNX576AKGQEVLS4B6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 148E22A0152
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 10:24:36 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id v6sf4115311plo.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 02:24:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604049873; cv=pass;
        d=google.com; s=arc-20160816;
        b=EIvWu+C0OcDngrtboT9uc8/2JJwz9ZEPpS/WPaAKydRvnYKZQvEL5KnEVbl1jsy8on
         VTIjnshjUKaRuVbmWf+oTfFrtSwXPx3LyPzbEgiSCcJ8zN+VMzQ713ATytLfCm272NQ1
         kwp3rGC0dbZLvBvJamQis+lAA8b/X1521ck2WeFXXeqQTFwZp3Avd+ExaHyys1iLJ2L3
         8JkRhK41wTvKPMaw4qGZwgfEFCqQycih7MfU5W7aVMx0gupNeTQtKI3BkgPeJf6aVLAv
         G9xZ4hZ6tvpxZa3uuSnMlhLx6BuPB/qPiI9mDQU4Fl7+RURt88v1ySTUjsf++A6mhjm1
         h42A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=QYF1kbZ9CnwsVrO/HDFcW0YIbvfbMEbNiayRmywaCOg=;
        b=r0pxG+nGd2/eLl6wceBnAJCu/7o1EeRZ1a/p4hDjqILrYWwkPFosC+JmGUnFnetBRA
         1CK2rDR1PZHxR2F06fPkm7N5eLcAjNn2zjAzGIaBmNjc8W3oJNAn7p6t2Inr7Be3GvU9
         a4tjBN0j+xeLZPd39/xXxz1Dr85eCTHbsQiCDZI69+JtlxS5qfwf8E5PSwk/s/2JxxP5
         lD8CibGFb01vngyYi5RDl32e3jf+JVY69HTiytWS0yNgM7BDPYJ1GsZfZf/J2nEyefQ4
         508auWJlMabFJErUFGunx2uBEZpq3q8HQnHy1rm2vaqE+rSr1oO/NpmZPRdAtssyLzdj
         0H4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uR+S+1eT;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QYF1kbZ9CnwsVrO/HDFcW0YIbvfbMEbNiayRmywaCOg=;
        b=oyAytIK8bZv/76uHfPIw+jSz6RQ1XKGBIssRFjCwJeRd/woj6WJxUq6okW7vRCEtmO
         AE/3n7RlmXvFhpZx1da1AQrNzx0lIoZbuC6nHOYdZ2wjRG1D+f8amMbGDRtYTQPDgFly
         9El/dHUPefthGIv3LTYjTP9oqJTmgCbEnQRlXbp6EtCKGY2ZHI33datEj6YOyWDWoYqi
         5qOmGWaWTxYKl+Exig60z3qWjcqMevg9cZlZ4aKtD5xCIwQjfvgxxd6URO3xpYZJrcMq
         9NawMYXMcL790Alc2xcYFwdtlf6HuAPgQpUHrPLPyPRG9FVoPdoOAzMmdSCIPYEnyzOm
         mLYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QYF1kbZ9CnwsVrO/HDFcW0YIbvfbMEbNiayRmywaCOg=;
        b=qG46P/hnTpuGJBM57a+yL+8nqxUj5ulpGDWXtC5LVPW+Qndaobro5C99lAeXiEOOx1
         msVEHRRlF50ecVvReFpAjd7CKK8zQBxNYZpHsUhGg2Q2AuaMJpynGmY8O3IvJjQ4r5q3
         Fim18neibZxgUH0KW25EetRVWGR8ngs17Mucd3rLiMK4Jx9dbfKe4FAFjhqsmiP7cWBg
         z4t58I9ylkNnauRidMxEQG1UVqdtf2IJGx6SKwOJnSXM5vUIuttZyZt7MrwzANt1e/kw
         isHolQGW8W9KY/FH5QW19MmF9rugTreljjuWWw+eIMdkPO0YEzKfDblD7RwIrHnj/ZPQ
         31OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QYF1kbZ9CnwsVrO/HDFcW0YIbvfbMEbNiayRmywaCOg=;
        b=pm1cbaTqhUvbTw/7iz1W2vkCZIjGXSPo2bPBtySA4XOs9d/N0cldb/a/Hw3KBZtcvO
         Ike+dxwbOiPU/LSsKDUYJlHpLX/8vfjB9fUhW25YMPo9lzn1ehGwncmWULwl7zg2Yu3P
         R/7vsWz6FPke4GX1FtFx1hqBipol3ZwFzinPfI4rwQxEiXnp5WWC9jumkiJtwsbCelWn
         EC5IRCOaHeFXgYW94Khw6U36AvB1+S9wRhg4DMQFB5ATlIayVfJ9npEcWwbwceNArKCL
         HEBGTNc5bhNbzGqLXr6L03VHJJy4YVMqo5aAXUPwyZSTCywoSdLgqIr1u/3arrC1fHa7
         DZtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NX65VWPe1T5OzAOtJ0N9lfB8xohI5vr2tEBw/6aH5vrK70LbJ
	eHgiXBtJsTnZ2MGlLL9XdxA=
X-Google-Smtp-Source: ABdhPJyufglDfgxjci2f8DwrH8izKJOg/7NydiOEdMdANQp27s1hpYzvNe7IpoOEUDSg1OR7Wi9sUg==
X-Received: by 2002:a17:902:c404:b029:d6:30a7:dee8 with SMTP id k4-20020a170902c404b02900d630a7dee8mr8352927plk.78.1604049873584;
        Fri, 30 Oct 2020 02:24:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:543:: with SMTP id 64ls2136529pff.2.gmail; Fri, 30 Oct
 2020 02:24:33 -0700 (PDT)
X-Received: by 2002:a63:5914:: with SMTP id n20mr1404617pgb.69.1604049872995;
        Fri, 30 Oct 2020 02:24:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604049872; cv=none;
        d=google.com; s=arc-20160816;
        b=ervOqonL/DwZ+0xyn6WjZAKLxxjTUNh6/JqvYZcjgYu3BFLMhjYfx622/XieZKV8eW
         8k8darIN1qpuNf45cw/b9oiOng+nLtTfpU4M497oC5K2Ftn/Fjrn1/LRcnF2SHMVyV/h
         dxioDwjZ6yZoL/gY9Y79Um73Zfsnmgdln3Noers1nDdJnn2LPpCzBjqdLOdbMjgNPnI8
         joMft5atzakBBW7Ahd4DtJrsatnF6vuIMn3cIFy6bvJ3DGxbvipxUUQwfbSbb++4kzOu
         Zwr119917awitBHYm/+kXs4onQiosHUp5mEKbDw9JWROZ7+LgYjSp+IxGgMhz1Q3OAza
         Xa+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AT9nl2GUPzLTlSYpK+8OlDbwytVPpP6cQwtdlWueTMI=;
        b=0Q6u2hAwBJN7jyF/OtyG4sDED0+2uBEZSK4s3eP7H3emCNoeZgdIyxFya//WAJpOFG
         xxO38CHBXH1EQ6xTelah0cA6wz4ZNK701OK7LEdCOupZVL9doEEO+7H3kE97KorgF1hB
         kq4Qf3DM2iyLNgkckRaNOCV9vJ/6YozDMbX0lRkECAgctXv0vstIrNgpezwGo0qaTccD
         V7z8vuXdoNfFdKnRh3RlVQkO5Uob1KatjzRgkK1SI1ZstTwYa3s3RCMt3ebnDyci1cdK
         QJ9uSAzLaxAWjOc+XOgsEXsQCiziA5THhDsfWEr4oKe1ogO9RRItefKihEQvC3wXB2YG
         m4mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uR+S+1eT;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id l11si413876pgt.3.2020.10.30.02.24.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 02:24:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id m188so4575754ybf.2;
        Fri, 30 Oct 2020 02:24:32 -0700 (PDT)
X-Received: by 2002:a25:d441:: with SMTP id m62mr2320037ybf.422.1604049872377;
 Fri, 30 Oct 2020 02:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <8451df41359b52f048780d19e07b6fa4445b6392.1604026698.git.joe@perches.com>
In-Reply-To: <8451df41359b52f048780d19e07b6fa4445b6392.1604026698.git.joe@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 30 Oct 2020 10:24:21 +0100
Message-ID: <CANiq72nXkHeF26vY7EK5u0h8pFXwWq5YUUcSHDULvgh1caCNGA@mail.gmail.com>
Subject: Re: [PATCH] treewide: Remove stringification from __alias macro definition
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko <glider@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	linux-efi <linux-efi@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uR+S+1eT;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Oct 30, 2020 at 4:07 AM Joe Perches <joe@perches.com> wrote:
>
> Like the old __section macro, the __alias macro uses macro # stringification
> to create quotes around the symbol name used in the __attribute__.

Hmm... isn't this V2? It seems none of the Acks/Reviews were picked
up, did something major change?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nXkHeF26vY7EK5u0h8pFXwWq5YUUcSHDULvgh1caCNGA%40mail.gmail.com.
