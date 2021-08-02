Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJOAUCEAMGQEMXFT6NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ECF3DDDDC
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 18:41:10 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id k20-20020a0565123d94b02903788300276esf6898321lfv.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 09:41:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627922470; cv=pass;
        d=google.com; s=arc-20160816;
        b=xqQjAJEZrNGEZVPxRXDHDhnT6gc1ENUBbitowfHQ7LnKtsFK4mB9muu6fMHehdGI9k
         r8gXlxnhbJ8C8WXjl6XNldiofvWdvuJXO9C5b4T8bqV8Wczz2x/0NakyxJGQN6Yk5cki
         fDmWWf4YruDYikf5vaLkxWioXo8NmYsenDprp4gNSZDS7QwvEJkmpXa18EzXp/3hc5XL
         Wh63c7wCEKvwzr6zaDRkvIw80ieHQEWEVp22SszvQHemWYupmxfCV3619aNvgv4ofTti
         friQqIgm+khPqNo1rDDq0GLl4UImDzOnQojvHov9yogeZf3kJymrU4I7pFpwRjz/hGnS
         gAAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OrDZnRJMScRT8epsqGdmgzpKqO/OFEy2uE5siBvyvpI=;
        b=rA2wnyb4jT/PMGJxbM2sqDmliXcZ1t3wtIs1V2l/t3boDxUclqSGLhSDKVrsdblna1
         YooGtM8uleUaDBTrnYQyC83LBM4TxIX0ZE/SPPUSmnotnw4p5ORpLumX+IcmbNYXcymD
         yX5pl+t92Q/Qyb0XH0dxwNtDnTXSKqU4M10C4YEBJXY+lt3P8X6CZhjy9oK/zRoI8g4U
         g1TP5zNeLMt1FZ6LYOshq7FfrpuSgM2VSVkXha1QEeo9qePWan4hdu8piFfijDk1rjeM
         KTWTOX0ToAxdvh7BhIuGK3cp1qwd/u/zKzwIFp7OK+wfV5Lvtl1KCyzNeEkz3mpRkCd7
         VZ4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iqhh7BSh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OrDZnRJMScRT8epsqGdmgzpKqO/OFEy2uE5siBvyvpI=;
        b=MIgCoAf367su1eS27DTgVKMkOMN6sRIEGUfKJAQCRr2j4iFiWXapI53Cp5TCUHqavj
         QQkk9/sArShVFIrMS2ULoyqK0UZaueY41WcdpNvTkX0LYym9O//hK+vBykNWh5NbB4mt
         7Dugb6Nmi5KLQzLE8Su3eomSyZgNX7LOR4GCpD+PPI8ExRzzgOYvxrXJGQbDFRKA7q/g
         WRl4te7wASk/kMaliu/ZJzwuxRQI3TGM2QAbUzO6m6jWKIfcYOrI5BToaY1+gH8dDCCx
         QDaKNii/xmyXjkM5ihDt7LMlyXiYp5pBg25eWAg/9EHCZ8rMJNTOZfbSoVN0er8l/Z28
         1avw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OrDZnRJMScRT8epsqGdmgzpKqO/OFEy2uE5siBvyvpI=;
        b=K98Oy04LDl0+vYvrunSJ0yks3McRqBaR5x9Wnb9qgSIftOfipApLeT/q/2Nfqy9bWy
         ZwTHOxlWuZkVLkanecoUdpb8OPRgtJzC0zkF7FDfDG7l1OKlpKtgAi6is3gJmNj+4ghT
         OAllSkSMtCMqBPsSiwMXNlKi3BWiJi4gA5Q29s8VSIczvdLKfSAfdgMmOJlgzIqXNYpd
         MMi66a23eysyJnEGcIYxORKvYRE3CfZzsevu/+Sesw+nGenKYxtrk38YrI3vf48UP1i3
         MflrHte9eQdg5AgZ8hzc49mOHFaLYOLtxD6MEJTyGla8B5ZTt+qEsdlr5L1m3NffxqrM
         It4g==
X-Gm-Message-State: AOAM533nsJ2i5oHd95R7Zqo/lQi279M+XFM6OGhKebjQmbjBvbLoJXhX
	qaoqycnEhJ2crkDYNy1Y9g0=
X-Google-Smtp-Source: ABdhPJyxQrwbJg0EfedsLSPdSmWQ8WBnMPfA8AhpzeX+njxqDkD/VdIdJ47OBVqM+be3xm816B2HjQ==
X-Received: by 2002:a2e:c52:: with SMTP id o18mr175118ljd.181.1627922470090;
        Mon, 02 Aug 2021 09:41:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f02:: with SMTP id y2ls2113395lfa.3.gmail; Mon, 02
 Aug 2021 09:41:09 -0700 (PDT)
X-Received: by 2002:a05:6512:224d:: with SMTP id i13mr12837649lfu.541.1627922468962;
        Mon, 02 Aug 2021 09:41:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627922468; cv=none;
        d=google.com; s=arc-20160816;
        b=GkpoNqw6tazBqI/mk8bZUWcOjqQH2tNFXBywAWvDfONxBACaC+9vj766Xh4ISEjzRR
         T0YN3uOmDqiAfB7isblMgzmlvYT/Tv7nUtkyIKWJfmH5VAbkxvur8ClrH2O1IlPOB68H
         bge/0jFW243MC2g8sMM+I2uQHV41YmScdyrhRUs1FYEMfvCeTCCRbGe64bWlf/6XEvBH
         nMSePlSXuZChSpHY92+EWksQkVJjSZENKDxyYupn++r8hLO50b4CLSXdiLNHe5UxfDar
         gso7rCIzurpk95CZyaDkdI/G3V70YOxzD2YQRH0r+DXNin7/1UmXk3iT3cg3rE3LC+0w
         Pr4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Mpn7PG82ctGVboEylkUCiZGj+PBEuHBMPwSjZySIC0s=;
        b=PRp1sGEh+ZsKutV/KaR0viRbxTcYurXmU1HId23f43hD9FqQKV7Cw4r4Ni3SWgNJhQ
         55BoxKXnJNfUWlgLJYYobdlc99ADX6ycT1ANr+IkzCB7ANNjFClejP+L+526RiL4tnKu
         NVs0UNE2JSpfCUg2Lcz4qSt83/E3yVu3/Yp8ot+sJNoTon23AbxEqWR/bvvqLNEBUPjb
         DXnszkcC7n4ITUkyQsRDqV94367xTDt6HnaSOFwOs/0Is4a6Lhv9dvR+/YaRmS1tBIE8
         TUElnT34AfYR4/PQRa7fpEHJYXrdxWiuduhFleoMpUUI7R9RAgEnUS7EiQJiwYGlR2zU
         jq8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iqhh7BSh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id j26si46289lfh.0.2021.08.02.09.41.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 09:41:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id b6so12015390lff.10
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 09:41:08 -0700 (PDT)
X-Received: by 2002:ac2:4ac6:: with SMTP id m6mr13931061lfp.73.1627922468420;
 Mon, 02 Aug 2021 09:41:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210730223815.1382706-1-nathan@kernel.org> <20210731023107.1932981-1-nathan@kernel.org>
In-Reply-To: <20210731023107.1932981-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Aug 2021 09:40:56 -0700
Message-ID: <CAKwvOdk3xPjqidz=wmxuRjkSR0Q51Lygg1kkC1tn8vZWWc9NOA@mail.gmail.com>
Subject: Re: [PATCH v2] vmlinux.lds.h: Handle clang's module.{c,d}tor sections
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Fangrui Song <maskray@google.com>, Marco Elver <elver@google.com>, linux-arch@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, 
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Iqhh7BSh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Fri, Jul 30, 2021 at 7:33 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> A recent change in LLVM causes module_{c,d}tor sections to appear when
> CONFIG_K{A,C}SAN are enabled, which results in orphan section warnings
> because these are not handled anywhere:
>
> ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_ctor) is being placed in '.text.asan.module_ctor'
> ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_dtor) is being placed in '.text.asan.module_dtor'
> ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.tsan.module_ctor) is being placed in '.text.tsan.module_ctor'
>
> Fangrui explains: "the function asan.module_ctor has the SHF_GNU_RETAIN
> flag, so it is in a separate section even with -fno-function-sections
> (default)".
>
> Place them in the TEXT_TEXT section so that these technologies continue
> to work with the newer compiler versions. All of the KASAN and KCSAN
> KUnit tests continue to pass after this change.
>
> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/1432
> Link: https://github.com/llvm/llvm-project/commit/7b789562244ee941b7bf2cefeb3fc08a59a01865
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> v1 -> v2:
>
> * Fix inclusion of .text.tsan.* (Nick)
>
> * Drop .text.asan as it does not exist plus it would be handled by a
>   different line (Fangrui)
>
> * Add Fangrui's explanation about why the LLVM commit caused these
>   sections to appear.
>
>  include/asm-generic/vmlinux.lds.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 17325416e2de..62669b36a772 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -586,6 +586,7 @@
>                 NOINSTR_TEXT                                            \
>                 *(.text..refcount)                                      \
>                 *(.ref.text)                                            \
> +               *(.text.asan.* .text.tsan.*)                            \
>                 TEXT_CFI_JT                                             \
>         MEM_KEEP(init.text*)                                            \
>         MEM_KEEP(exit.text*)                                            \
>
> base-commit: 4669e13cd67f8532be12815ed3d37e775a9bdc16
> --
> 2.32.0.264.g75ae10bc75
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk3xPjqidz%3DwmxuRjkSR0Q51Lygg1kkC1tn8vZWWc9NOA%40mail.gmail.com.
