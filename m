Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBG5OSX4QKGQEQZOK2ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 076782351ED
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 13:50:53 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id n18sf212973ilm.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 Aug 2020 04:50:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596282651; cv=pass;
        d=google.com; s=arc-20160816;
        b=k8RRvNvG8UjKoKkLY9+yOTAGC+duW+bVibdEwE7H0rLkGPezo6+p91heFV7BfPa6n2
         zKAS2u4rD74lce154FABfNdyg5+FR+2q3ANXg8XxTDg27TZZDCCZ4Mi2gZ7pjqYgLCFi
         cagNhtebLRHmGhdAAC6TowhxKaEic9somaWaozXwuxIbl4C0iCsEUsjmrIZTpiQUiCAQ
         XjmCfeJrPbdd28J27YzKNsO6dhWOVt0v/5usLwnnbnpSBYrev+wlHUJCNPF5S8SyxV51
         +FpORtfDe/7m6ur8c/aE4tYnP7bMixPJ4tYMpMSeXMYHuVp4GoBnWNHtCyXrTRqk2XWq
         7Pfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=v5rxyzVQwZQ1jKV5xtg6JyV2snMFSLLQUQGXxo/WW2c=;
        b=xMkOD0XI+gEwMcpXO5OKquB1H/3aUrMUnDkujCe2Qvj8ujgOHDfZfZsLb3xqHQPhSe
         IUUVKr+VdJtl0s4CIaLho0cQgEYWmxLj3drEU1p2U3NgZY2rWVOOjFdR8iXGb9nNVtFK
         0viu4ve67k58D4ot65zOZ+cIxR8zadE3viXaeq3HfNYqRpPFAZiFfualQTU7tD97yFfB
         07rQ/MaW4Jm2F6nHNtG0IXWe5iwCwsn+/khhv2UP16e2Tpb/HSMkws1n7nM4CpAgFZzS
         8v0JVCYq5Vz8ZJbExoe3fNI8aXTtPvugw1yaxIxZVUHYs+L23jBUsvoo+ErINri3OUQ1
         ytaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LCpZ5ZAy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v5rxyzVQwZQ1jKV5xtg6JyV2snMFSLLQUQGXxo/WW2c=;
        b=hEht4UVp3UOFh6kmwnhlS6M4kXAX5mMWzmCTmZ7zNx70ZU6DjVsAy7ohPNHz9DWeuL
         tqyxXvCdwyaMX7sRzhylSagfGNLhfWvvZgqgx/6Qz34qyZ5zx2w36SajsmbraeulQniW
         esJ6iS0roZi2aHhV8EDoeIsXnnITJPYmYkWRfb0p4LFkmriNBKPRq6jegZDweDI1F9Yf
         2UtMI/En2sMp9CnEFAwIVuAKEjCyVkOCObQNFAMcfU+ghSsR2ACBcyc+f4g8omwci1mu
         JUTdoCVCh+yBM+/WHGOLb/g8hi0kSL6pQCBd2/kCBpZ9M2yCg3gdB2gqX35FFkb68QcH
         z6Hw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v5rxyzVQwZQ1jKV5xtg6JyV2snMFSLLQUQGXxo/WW2c=;
        b=WybrkZdoSU21Dxk2qA2Q300n9NrQov3rzZSutzVeCBiWr2Zq9XJ3bfjT791zivWGZu
         CQohFE7VBQr7F9WJEWOZRJa3HGWMFenPdEoYbfT1zdAlO4d76Z3UCUV1BPT+d/XJq/XI
         84FWMErkKAso+KRCxsHjBd5/ftTzgizRsNP6cxaBrhwqduTma5R85ZOJMo4NtAEz6vgd
         uXU2ztdWK+d3AWdaLopN74V16zGTMweC7+pvLarjAU8VmplDFM9y/w8Nn8E+aO+wSqEr
         ZIX8eV/ruL0ErdcE8k6D9beQbDaWPOTCiYGOhXPaJqcJVNNdagqVVe2xbISTOLPGRxDB
         yxOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v5rxyzVQwZQ1jKV5xtg6JyV2snMFSLLQUQGXxo/WW2c=;
        b=jVwvALUaCBj6LjK9h5qTrvkDWASVUsZcAODGPKt6wqrX66AQSvK3xvFo3kP3+Nj4X2
         Ylth4cfu+Ie6ihPqLlfDIHF0fiMscDtnn1/52W2Y4+zm3ywdEo5BMFHzm/iB7Xu9OWoh
         Oi85oUELcdXlVVZMhD15y7Q77RkU8cp2dnuLvBtUNo19sb73YhTq2ATItPtTwPQF1BlT
         z0lfavFmn60N91ZTMyDQ8rRs/1rouJRA4jTadmkOCGUyjbkltB8uDAwxXChWMSV4fl2a
         dOk87WP6wrGmbcB8RRVfIFcHJHMFBjssH9qdqjpCRUl9lXG4z6cKwkoiH7rSKwnnOZWj
         HGOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532m6vZbqGr3bFzUQRIGx9ITMwJNwd5RRaiI++v3VVYDnjWD6wIW
	nBeOQf3cm/2FjbqMINZBekM=
X-Google-Smtp-Source: ABdhPJzNW9E5FWdpATr0OQUDhNct7LCpDaviR759waMOB/cS8BkP2LikcCqlnxCDUot1w+b/5qjpEg==
X-Received: by 2002:a92:874b:: with SMTP id d11mr8407641ilm.192.1596282651690;
        Sat, 01 Aug 2020 04:50:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:87d1:: with SMTP id q17ls2110957ios.1.gmail; Sat, 01 Aug
 2020 04:50:51 -0700 (PDT)
X-Received: by 2002:a6b:7945:: with SMTP id j5mr8049858iop.143.1596282651359;
        Sat, 01 Aug 2020 04:50:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596282651; cv=none;
        d=google.com; s=arc-20160816;
        b=MOH2GnWh/nV63igydjm0nc8STJQg7WFUTv4utUUc5Q2AbOAIi0y4b3p/Tt5IutET0n
         YcmwdTngUzPnyMynbH6eNmW4sm1WF5KlzgQBrGQUEspmBp207O96p3v89toRSTaqlAU0
         nnWRe53/och0r9L+J7eR/qdp7cOIYcBPZ2lUiMg7GLQbT6vgTTtjrJynie/XxNfP1cCi
         O9J8zSVy4cBdOHMTlXcimiTX4HmTLgtv+ocTdB+jzXF2692u5Vo8dLhfynkiHDvPVn45
         9zAfaTachN7RmtmFGIAlJBaDbWf012MgyG2tZXPW3E9/lydHHk+Esl4qV1xtWFlSvaNU
         FTTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vqmbfMdG1XwSN9CCMReRgW8QhRBkkbu9OHpIkCz9yJw=;
        b=RJeywYz4XSTJFiTWRXL+43jdQUsxFGCKjQ/BiLB/13Sh+CaUFIlj0K1JT4uNnePIom
         YLi1ZTF+81crGCW4YQwE5At/uxbyOhlqI3OT36uJQOLYeW2I6iZeFeqQFH/qqyYLQ9NX
         XN8u/dksCajyWewNwICei81U2HWOdLTUcaP+YdHk3pmOrG3220P6MDWzwiMAUj6IioDU
         DAj32kXVMWKDY0oqwofH2KzX56OYzr/QaVZz9VAiKyo/PmJuAoNrRd5a6irWomTDNyGR
         wRgWXlzFcJMtUr4XUoMZl5C4N7x9gd8q99mBYEDbVNmBNA2C2R6U1IkO/x4dbVS8d/7r
         6Nnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LCpZ5ZAy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id t6si593508ioi.1.2020.08.01.04.50.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2020 04:50:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id k4so29154858oik.2
        for <clang-built-linux@googlegroups.com>; Sat, 01 Aug 2020 04:50:51 -0700 (PDT)
X-Received: by 2002:aca:4e92:: with SMTP id c140mr5955996oib.70.1596282650952;
 Sat, 01 Aug 2020 04:50:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de>
In-Reply-To: <20200527135329.1172644-1-arnd@arndb.de>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 1 Aug 2020 13:50:39 +0200
Message-ID: <CA+icZUUcH91QDDEin9GyEoD8kqrQSPAnkZJyMnXU40Sk5FAo3A@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Arnd Bergmann <arnd@arndb.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LCpZ5ZAy;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241
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

On Wed, May 27, 2020 at 3:53 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> When using the clang integrated assembler, we get a reference
> to __force_order that should normally get ignored in a few
> rare cases:
>
> ERROR: modpost: "__force_order" [drivers/cpufreq/powernow-k6.ko] undefined!
>
> Add a 'static' definition so any file in which this happens can
> have a local copy.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Hi,

what is the status of this patch?

I needed this one to be able to build VirtualBox via DKMS as an
out-of-tree kernel-module.
Package: virtualbox-dkms version 6.1.12-dfsg-8 (Debian/unstable)

To quote myself (see [1]):
Passing LLVM_IAS=1 results in:

  AR      /var/lib/dkms/virtualbox/6.1.12/build/built-in.a
  MODPOST /var/lib/dkms/virtualbox/6.1.12/build/Module.symvers
ERROR: modpost: "__force_order"
[/var/lib/dkms/virtualbox/6.1.12/build/vboxdrv/vboxdrv.ko] undefined!

Arnd's patch is mandatory to build with Clang's Integrated Assembler
(make LLVM_IAS=1).
Here: LLVM toolchain version 11.0.0-rc1

Feel free to add:
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Can one of the tip maintainers pick this up, please?

Thanks.

Regards,
- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/1104#issuecomment-667470053


> ---
>  arch/x86/boot/compressed/pgtable_64.c | 2 ++
>  arch/x86/include/asm/special_insns.h  | 7 +++++++
>  2 files changed, 9 insertions(+)
>
> diff --git a/arch/x86/boot/compressed/pgtable_64.c b/arch/x86/boot/compressed/pgtable_64.c
> index c8862696a47b..8595194cea41 100644
> --- a/arch/x86/boot/compressed/pgtable_64.c
> +++ b/arch/x86/boot/compressed/pgtable_64.c
> @@ -12,7 +12,9 @@
>   * It is not referenced from the code, but GCC < 5 with -fPIE would fail
>   * due to an undefined symbol. Define it to make these ancient GCCs work.
>   */
> +#ifndef CONFIG_CC_IS_CLANG
>  unsigned long __force_order;
> +#endif
>
>  #define BIOS_START_MIN         0x20000U        /* 128K, less than this is insane */
>  #define BIOS_START_MAX         0x9f000U        /* 640K, absolute maximum */
> diff --git a/arch/x86/include/asm/special_insns.h b/arch/x86/include/asm/special_insns.h
> index 82436cb04ccf..7081e587c1ea 100644
> --- a/arch/x86/include/asm/special_insns.h
> +++ b/arch/x86/include/asm/special_insns.h
> @@ -16,8 +16,15 @@
>   * A memory clobber would solve the problem, but would prevent reordering of
>   * all loads stores around it, which can hurt performance. Solution is to
>   * use a variable and mimic reads and writes to it to enforce serialization
> + *
> + * Clang sometimes fails to kill the reference to the dummy variable, so
> + * provide an actual copy.
>   */
> +#ifdef CONFIG_CC_IS_CLANG
> +static unsigned long __force_order;
> +#else
>  extern unsigned long __force_order;
> +#endif
>
>  void native_write_cr0(unsigned long val);
>
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527135329.1172644-1-arnd%40arndb.de.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUcH91QDDEin9GyEoD8kqrQSPAnkZJyMnXU40Sk5FAo3A%40mail.gmail.com.
