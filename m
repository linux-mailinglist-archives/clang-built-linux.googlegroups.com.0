Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBM5GSSEAMGQET5I7G5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A80D83DC540
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 11:09:08 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id v21-20020a67af150000b02902baea699248sf1364187vsl.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 02:09:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627722547; cv=pass;
        d=google.com; s=arc-20160816;
        b=wtLmH2cnr0RDPywGMNiW+QJg5umDxldqzp/S+de1fbKG4XoxEZRrq31Gu+vQgc4JZh
         JbH/0orueJ9V+251y548kZUNEbydLKqWgvR7GwJVBFp/KXuemdrNyu9gBzx6YlnBOENk
         aU+WH89/I587PKO8FGjgcZD0J9MFjOoI6Ia319b3CnGHyIDSIxqnxVsxrt5UcTclfzVf
         XKQftqqtwBK9a3Eg4cBplFpXHJdiehbnBHZYqWzagZ0h93N30c8kLYYxAsJxnaSnZjBB
         JN1xsDf2l/K6pSAb2izTnKGtWH5oBt4wJ0zd2idEQupoHssVegy9zs02gq+fkrJKe/MA
         RSwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tH91itZtq2rKRULO1IQwI/n++UoaXvqXfRurENTuczw=;
        b=ZFLuTlcngm97Ll6PLyaeOKIBH6GzAts7VgWsN5cLikJVTEuspVpmsDjLGgc0vpZiWn
         X+kZ+2ACGgGML3lOKA/B2vI6chWqlgrw1/zJCJDTi1WmXCJGazGeuWR9B8+PyJl3wF3b
         mazsGIxWGCrOVFeikIl1G6TWt0Xv+oX4JUoJM4Eks2a1ho3llygGohAmJAeXhfjKG/+r
         bXcT82zIavVpEUz2Q1vhy0dQFwjh8F4WkcQ71os+yfHv1ePwu2gl2shomD1gIEX20xBP
         sd2faYoRWHIBlz2l8oq+hTF1GviWUqoyr2WcxQdUUVq5t8coWJZwFqb1wRZJMik/+dts
         UUXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gp8ddgcS;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tH91itZtq2rKRULO1IQwI/n++UoaXvqXfRurENTuczw=;
        b=ljn2Y4pm5aWfNJEj203J4gjymlDA4gjA1PYA5f4Lh1O97HXL6B4LjWHwMmvBEvXkRH
         mgrS9DRhuOiDwg+x/wAWcJrMHt0jaYBUbZwsUZq28HhmSJPZvq6cbLutNcWyGK5on3m9
         Ah/ZKR2OjbwQvVFUhuKl+qWFJC05dMZSOL9uCcSRWp9GZrUs8QkpJvzyOAy3x6LvCAPj
         sQfTXdR4Dq3wju3jDXQozFnoGQnBqZcBwLvNP0PKpddwER8UPNJphZ9GWWymGNSOkFrq
         ngAioxQo0KJoj54UsotG22D7VNdQxC2fHI3DeogkU28PvJMG6Naid6+sVp+y6zxHuJrQ
         5dIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tH91itZtq2rKRULO1IQwI/n++UoaXvqXfRurENTuczw=;
        b=OrK5ZmN1yG1Mli0AGGN0Drkppys7P9A5oBRPzAaTkLiSA3T+fmOtjF//qvY4s3mvGj
         ZwtWVR0RBqT0g7X0GKg9Leg3x3UKUqjKlAoo7fHGXqX91csctNT6xk53W9QYP9UraHxI
         WPAwb1Hhz+D9JiCMMSe3e6/ZC0kwvJmRSMy0D/JsGJQi1tKF14FpKx91ospzZoSrA6rG
         4aweXeOGTp0sd35QyWShW/SSZMMTXEBz2tcqrmBr7tKRTnhoZn7hjT470ZqwdhQe6H/z
         9a1P36CpEhhSEGvQFQxr+oKoK7YrusLbVI6nTU4ad+N/+kgxNGx/9eisHt4H5a+jjYBn
         4+yg==
X-Gm-Message-State: AOAM531ofSs9YnJQEQjfq5FFhaDeXw4gOs4WUgWLnIWm3b1iI6dqJMwS
	pPVXigAseVofkGZZdTC5EV0=
X-Google-Smtp-Source: ABdhPJxP3kGOBIkeP+WNeeUlhvyS6T1tTAlUKHub4iIeEBsNyC+gbIU22NRe3+9ahtaeHNkqgnedZw==
X-Received: by 2002:a1f:3808:: with SMTP id f8mr4377435vka.2.1627722547599;
        Sat, 31 Jul 2021 02:09:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:48a6:: with SMTP id x35ls516786uac.2.gmail; Sat, 31 Jul
 2021 02:09:07 -0700 (PDT)
X-Received: by 2002:ab0:7649:: with SMTP id s9mr5713935uaq.134.1627722547044;
        Sat, 31 Jul 2021 02:09:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627722547; cv=none;
        d=google.com; s=arc-20160816;
        b=G8Eh4gtFPTSLFympD6A7KQHXLa+wSqnNXHlUkscVFwlw83xDE64SBdtqypCi4TmQD8
         +lTBOTiTdcJYJtbeTt2/o9BJX0SJo49z+wU12XSv2ueeelHgTBw+iKoZjh6hzsm3oWpA
         ZlrLsXpcRFBjRj/qFlwGj1qo6QIhZ71kELmkUM37bRi9KAwZmlgcS5ldyIxSGW3hdb2M
         qlSz9N4SvgNOPyw0KrSBJswGfVEdDZdEKWuTgZ5m9dbkPs98TpiuDgYi3+87XTSYtnDL
         RzAZhJbbX1p1PdcuKhXeSb7ca4OIlw4phYVshK5+IzdI/rkwLxFLMREMCoX7yCalHrCR
         wn3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vaAWrkzE49kpA8JCIiCiOMwaEcjf5J0qZweefCaV6Js=;
        b=ZLT2VBgNTQ/D2AI3qG/Qy1uBfkdUre3AZ24tk3CIVNdsLKUnC5UPzSzc0UwHJQHYQn
         7uPrZo0T3j9iNCUXguusA2sCZM+FtQr6zdDvh70dqd9ISD6xGnUKsbeDLYSJNiL3gjS8
         6UiVRAnc3neSd7QDEzAUbg18rcb8qhnjeuPxkORVWqTDfW4ZXKeyKcAQ1oNmVhmi4xcM
         5JvQf7iIWKtCAge+FbHHv3auO6XZjdMlrM6F+VxbFGlVVuZFsti1LdDaja2oGU16Z5/k
         ievQCBvAVFTeSsYL3iv5iQLudf2r5PCCzuXL6W5pCjCBb7fGovsJwrjmF4TbtsHKScnG
         U9Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gp8ddgcS;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com. [2607:f8b0:4864:20::330])
        by gmr-mx.google.com with ESMTPS id m184si225966vkg.1.2021.07.31.02.09.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 02:09:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::330 as permitted sender) client-ip=2607:f8b0:4864:20::330;
Received: by mail-ot1-x330.google.com with SMTP id 19-20020a9d08930000b02904b98d90c82cso12239988otf.5
        for <clang-built-linux@googlegroups.com>; Sat, 31 Jul 2021 02:09:07 -0700 (PDT)
X-Received: by 2002:a05:6830:23a7:: with SMTP id m7mr5218486ots.17.1627722546365;
 Sat, 31 Jul 2021 02:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210730223815.1382706-1-nathan@kernel.org> <20210731023107.1932981-1-nathan@kernel.org>
In-Reply-To: <20210731023107.1932981-1-nathan@kernel.org>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 31 Jul 2021 11:08:54 +0200
Message-ID: <CANpmjNMJR7A5FyPLuK+mWLKjZ7z4qJfygXWFpsADxicYE=Kx=g@mail.gmail.com>
Subject: Re: [PATCH v2] vmlinux.lds.h: Handle clang's module.{c,d}tor sections
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, linux-arch@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, 
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Gp8ddgcS;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::330 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Sat, 31 Jul 2021 at 04:33, Nathan Chancellor <nathan@kernel.org> wrote:
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

Acked-by: Marco Elver <elver@google.com>

For KASAN module_ctors are very much required to support detecting
globals out-of-bounds: https://reviews.llvm.org/D81390
For KASAN the test would have revealed that at the latest.

KCSAN does not yet have much use for the module_ctors, but it may
change in future, so keeping them all was the right call.

Thanks,
-- Marco

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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMJR7A5FyPLuK%2BmWLKjZ7z4qJfygXWFpsADxicYE%3DKx%3Dg%40mail.gmail.com.
