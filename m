Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT7QU2GAMGQEV7QHVRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A2B449F36
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Nov 2021 00:52:47 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id q7-20020adff507000000b0017d160d35a8sf4481140wro.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Nov 2021 15:52:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636415567; cv=pass;
        d=google.com; s=arc-20160816;
        b=qbuGSnS2wkbTaf1GNdgb5BFXuPqx02nMDOHSlpmAW7GkYLnqzBY7ygs//FamXjkVg/
         Ozpae2nimIZgxm5V8OCS3aVKzSru9WOb16L1bo6X3IN1puQUIAxiHWdaCPnoulZfDD0P
         hJc0uFGo1g2P+b0nS4KuUezbmPOM5YH9UDpUP8olpNF7BHfHOJ0UR/g26OME82hl0ZrZ
         M3vkhdwys8N50olwH246Kous0D5ySQ0hwxK+FB5P+sce6MvHY0RyafZTP0Hqily1347V
         oaNEJznL9djaRkR7Ho65xiGU59+mZ1aJkWiLAzTrS96YNq1iqLZDH3+zcMzRw989IgJB
         8OSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8TqIVjGQYyH655mBvmD6SscnWQfcgq0AJv4IE+g7kI0=;
        b=OLWeORUEIqmUR32Z9FGpdmy8Ocg69p4cr/M8CPNgpHyG9gj9aTEOOV5sABNtMCFYOR
         vAPO/Kx6erG1+JUy3uQW6aN7zgX2gm5VKZtanzVFephN+5gQvPb0F6gXQyASIXx6nkfc
         BpOJSqYTbca2RueGcUAj7KlLr/C4ACqrn8Rsn0t7qqyxKvDANnrCyVtauhoyi3W5kmYP
         R3RTikT6nNWJzywGSzp0ohC6BrRXSzF+UwsUcJS7BRLtIadyIc0oeQ0oGFcdTPaASQgw
         02FIKPIfrZOhZMR6wQlR56JAKoqof9lxUE6aJ9IIsTWBEC8LuEGI6Dmb9v/h3JKtErzV
         ZHsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=FzgTBxK8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8TqIVjGQYyH655mBvmD6SscnWQfcgq0AJv4IE+g7kI0=;
        b=X/9+3JyDCX7nXIL6HE28R3HltH7PCoytD8s0Ha8Tw76onb+7i2ssTU8fp86ZxPSQ7J
         Ovv1nV03B9qIHx3824bc3TSbQDRBeajXQth1waNQSf9P13Ygr293k7fBFXgxVQf/QLqU
         FRSsvnckNSkTKECYyt5u9gFM3zMLPMAa0/53II82zmXlLzNxodPbRxHL1lE1Wom+Sf5h
         7bXDGA9elD2OuMIsLpdUkE8544EfCotDlklJ7W793zSPT8XM3289j8x5ORx+8YRFSnHK
         OedNp34Mydqwcw9B4fJXxVGbfj9HdhIbOy9QNMsj6qWX0auVZtAdPUxENyDXEhPZgUEZ
         Y7Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8TqIVjGQYyH655mBvmD6SscnWQfcgq0AJv4IE+g7kI0=;
        b=PMUm15z5ta/sE1Y9pLgmXQLCE5ECEOsKwm+yxbemWiOBg3XjRchthSWTw+uMFDhBxG
         QpjNy7UxRdLb7yYvUrh/Gq9oanoTfNuUD39jORvIxwb/pkb0dFdYEggB0u5e3VzPAMlU
         R5TIEvA0YHQ/DGijXKetChECsvOD7znE3Zxnv23orIn7HLa6Hltrlxy7/3YS6OGOnDDC
         NnbKnX0H4XHrW+lkInFnYiYx0r7ozirDxHB5y6GcC3q98/hhnU/J++NRQcHyX3d/UO+u
         IGyU1v5Ddo3CBNJaoGHzqLe2/Sddytcd+pOWEKH0k4fmTNL5kUb56m0jLDEtuX8ddzi+
         99Mg==
X-Gm-Message-State: AOAM531BzPmOffNkYQ0vgVS+3QEuTwUum0nQ/1VszA80HMl35ecmr8B5
	XQSuajz5hlgOgkJYqngxf1E=
X-Google-Smtp-Source: ABdhPJy5klDHLGOAz7wJXPhQSS8PBMloDorwcc9+Wxdu6bD16U2X1IYBw9h4QWzmzUtAfukaZzv39g==
X-Received: by 2002:a05:600c:6016:: with SMTP id az22mr1513557wmb.11.1636415567592;
        Mon, 08 Nov 2021 15:52:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe0b:: with SMTP id n11ls1060031wrr.0.gmail; Mon, 08 Nov
 2021 15:52:46 -0800 (PST)
X-Received: by 2002:a5d:5504:: with SMTP id b4mr3918435wrv.307.1636415566793;
        Mon, 08 Nov 2021 15:52:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636415566; cv=none;
        d=google.com; s=arc-20160816;
        b=oMlPtSZRH6Y7xhOWHnKCK8FiM5GF8fUqS8KaoliMf6anvRmFILJP2mak/p/Xehpu8j
         BKeTA/vxTCNirfnwD6/zj83z6QJfISgBmD6cEN1cb7utLx+bM7m6dtzsfjAlB/eQ8Pql
         L9FPL8ZXsPCgefFMrfftxkhk2smUzxmoVg4MxtPzOj6LWy5E8WAmVED9JutEbhXrWYqn
         1IGfMVAIMFsXhwoICJHN9esisiPCAq5v7zyAe4HQ+aksBKbP92hPL59uUQv1GoT3paxr
         GpGh3Jft9Ex0XwefiL//MyY6N1YpsyOM4/1MP5t74E9wzRup2q4/kmwGfKY+x4WPf5KI
         weFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xQoakJHTcWwfHa/NS4KPgpKolL7O0uuBUoyy7jYi4UY=;
        b=qgrexslL5I2S/ixWLzqhisHVl4Hppr4aT3aBwpUJX04ykXTkhppLF4Zhg4gzGwQjdx
         eQJvsDnb/IR8c/m5sTVUfYLNFJrobAJhSukWV9+NgYYv4w7rhA1iLFSN4HixnhrimYb7
         5YqtC2NiMXCpTwnF21CQxYRgvROEuBHZFDl9WYLtFfVVjIMofQDmezzKO7E20R+64vrS
         X4vuTf2actTGWCEc+v3VtGomTWSoDK7hiL/GlMiyiCudD6SzWZzmo4LdMfTjduQm1rKy
         PiXUzaCfVDgKb7u7HpxE2JyhwGiV5PGXCUf+yYx3GOpGq5d6hlwawEAvfMJFA4p5gkfR
         Oe+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=FzgTBxK8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id s138si112518wme.1.2021.11.08.15.52.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Nov 2021 15:52:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id p16so40051825lfa.2
        for <clang-built-linux@googlegroups.com>; Mon, 08 Nov 2021 15:52:46 -0800 (PST)
X-Received: by 2002:a05:6512:b29:: with SMTP id w41mr2875410lfu.240.1636415566309;
 Mon, 08 Nov 2021 15:52:46 -0800 (PST)
MIME-Version: 1.0
References: <20211107162641.324688-1-masahiroy@kernel.org> <20211107162641.324688-2-masahiroy@kernel.org>
In-Reply-To: <20211107162641.324688-2-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 8 Nov 2021 15:52:35 -0800
Message-ID: <CAKwvOdmCaXAMvouD7bsWqmgOUxQ9vpdt3LY7qWpzTVm-2gddEw@mail.gmail.com>
Subject: Re: [PATCH 2/2] x86/purgatory: remove -nostdlib compiler flag
To: Masahiro Yamada <masahiroy@kernel.org>, Fangrui Song <maskray@google.com>
Cc: x86@kernel.org, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, clang-built-linux@googlegroups.com, 
	Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org, 
	llvm@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=FzgTBxK8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Sun, Nov 7, 2021 at 8:27 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The -nostdlib option requests the compiler to not use the standard
> system startup files or libraries when linking. It is effective only
> when $(CC) is used as a linker driver.

Is that right? ld.lld recognizes --nostdlib and has --help text for it.

>
> $(LD) is directly used for linking purgatory.{ro,chk} here, hence
> -nostdlib is unneeded.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  arch/x86/purgatory/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> index 95ea17a9d20c..ae53d54d7959 100644
> --- a/arch/x86/purgatory/Makefile
> +++ b/arch/x86/purgatory/Makefile
> @@ -16,7 +16,7 @@ CFLAGS_sha256.o := -D__DISABLE_EXPORTS
>
>  # When linking purgatory.ro with -r unresolved symbols are not checked,
>  # also link a purgatory.chk binary without -r to check for unresolved symbols.
> -PURGATORY_LDFLAGS := -e purgatory_start -nostdlib -z nodefaultlib
> +PURGATORY_LDFLAGS := -e purgatory_start -z nodefaultlib
>  LDFLAGS_purgatory.ro := -r $(PURGATORY_LDFLAGS)
>  LDFLAGS_purgatory.chk := $(PURGATORY_LDFLAGS)
>  targets += purgatory.ro purgatory.chk
> --
> 2.30.2

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmCaXAMvouD7bsWqmgOUxQ9vpdt3LY7qWpzTVm-2gddEw%40mail.gmail.com.
