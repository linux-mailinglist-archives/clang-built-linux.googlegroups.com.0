Return-Path: <clang-built-linux+bncBC2ORX645YPRB46CWWEAMGQEYAYTLWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5633E2E45
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 18:21:08 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id j13-20020a0cf30d0000b029032dd803a7edsf6580885qvl.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Aug 2021 09:21:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628266867; cv=pass;
        d=google.com; s=arc-20160816;
        b=SeMfmeMpOfFfbD1RPSdo7ikLQQzS9lk2O/4sEnwyuw2J5CWEVlBT/ERbueNw9rf/rf
         KKYMcQSMlWT7v3SLS3CKCMUquJ/jKyMmxPK5ufQd754HGtZ6qynaER88zb6RRRVz6MG+
         lrcllJDINX3dEK00JIMitNaPLNFxX4ZYC2v3LM8S3XzhDyWKjj4bIH7s4VHuz4xDr39S
         O8sUeLJttyG2Q9EM/QumTaToiGVPSYK/Fv7uWx0APZF+WQl7FBOPyqzr2Ah33Ys90hhX
         hBbpV7Xw2Wh0juqMMoiwZA8Cx6ss+dYNrM2t9dydZblPlHC5RNLIiybMlnUUYZnsyCbk
         mp7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yW2gOn5iaZtZNU+KX4OjqrPnYXoEUAzrxyFPGuASMpM=;
        b=QFfbGsi5T7joKGEDsxEhIXy9JWJQUPZwiX/fiy7v4YrJXDlEx7i5Ruo6/XiAnR3Ong
         I9UxpEq54UZ37Hb3T/y1m/nTm/shAs7ILORfdlZLx6M16PVL9JB912spNRcZdPEDXwSx
         USUqdkmtW4GRsn7SZ1e9KqKVh377vz7tm8s0tLbwN2sXXicasroqg1N3OHs5M1z2ep9H
         HHqA15Efb686AVEffz3ouMrEd9c0vm++hT68igJKL+AYVlnA9NidrbLYfx7R7zUCb78E
         wnPD7He0/OAkead3ULH7DdVYIEozizbFLv0lLqi9Ak3jjm+UHHgT3xfE47OWrW3YIuLJ
         prdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZSgW6fw3;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yW2gOn5iaZtZNU+KX4OjqrPnYXoEUAzrxyFPGuASMpM=;
        b=FpNjuNFZ+4u67YdNKfmQ0IQ3MjRS+TbOsDV9GVowsXbHENQdf64Tb/nq9G/GBQdxK1
         oq978CDMzz2Y/qGhuppxgL0/wwSh5IY8vg04Jy7U+azvbIE9e8RvdSZ0OVq+UB9uI8Pw
         M4w0mS2rRIaXzcb8jm6wgYOQ94oCBHyfoSiFX3QCrXEbLxkRNhaHOhJTXM6gbHf3JkbW
         vPlIftvOttcZFN13XG23lqaFZRvwsINHsPlHrbQY+3Wc1DaHDQTnQzTGLXybLmay/03E
         wAhSpktBvWkbb12BXOGOsg/SoQPsw89LfTjKCRJIsOF5464izP3nIcRdPWzUhs/3KHvU
         7y+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yW2gOn5iaZtZNU+KX4OjqrPnYXoEUAzrxyFPGuASMpM=;
        b=e5dO1fkqJOcUGKaZDBEAGgvX0gO/VUU9cshETGJoOwr3qzrcWt4w3mtXs9svyz2llW
         tZReVI1hol4vFshbODsYrojd+cnOxTw1I6lLxHSy8dF/B5DYCSmSgn+ZBJ4Mc56/basE
         RyD7Ywqdz3ZAQ2mbBvUI2nPbDwU48ifHSl81jIBsf7+AG/mX5kbD308kky1YVi/l4+CH
         NPk1VKp91yJt9iwKXbOvDVo2twEBKW1XwtC0vjJXu6N5A5eFe7BNPoM7PBJsiafVKezv
         V01QJxsAiUkNtZSYxg5Lchpdpgg4dtTnADcD5hvfvq/WOUlY3/SuofIAdY/jQkEPcGMX
         0y4g==
X-Gm-Message-State: AOAM531bzLlmJYhYwZnc8XpA/lIKnrI23bflESPOosrADem4F8fA2jpL
	JuxC2AIPd7ddY44e/jP5bvo=
X-Google-Smtp-Source: ABdhPJyYXY0fNiSoual6/tVBIjFOfHdS3krIamCo2i669uWC3DhOzRH4Cgz/wEP/JTAMZgaNrvPnAw==
X-Received: by 2002:a05:620a:b9b:: with SMTP id k27mr10992146qkh.469.1628266867271;
        Fri, 06 Aug 2021 09:21:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:43c4:: with SMTP id w4ls3728750qtn.7.gmail; Fri, 06 Aug
 2021 09:21:06 -0700 (PDT)
X-Received: by 2002:ac8:5c16:: with SMTP id i22mr9726670qti.62.1628266866703;
        Fri, 06 Aug 2021 09:21:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628266866; cv=none;
        d=google.com; s=arc-20160816;
        b=LlM8W3lJT0QSjDWahZmBKJuJehgtWnMZ85FsJBZ81tkH6hWxYcsXkdXY3aMLE7DgiE
         mj6ykxo9XLg4VOFbHyAzh+rbkmShf1rd65Mv0cwRIfkzcA47WoLqMczh/SwcOR9detoS
         L0fxbU677FOnwuNIcl6bHxrxAAJSBl7p+rBbtoopEeZl+ibqhUB+wKdmMGOndKhFDlB5
         2S8Gqa4VTckjfHmbDulAJwz1kpdvZ2AUV221Aavgl2toAtsNgErZBAMJe0BN9iNBxdoa
         2vk0VoFLotSskk9WMTBnr3cwtJdHPshbVEK85wRDjXEJe2gKFdm7254LUPpDgjOq9yz7
         8ADA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M1g7puxrm202RhqkhqVJ0jdDnj+gHqRx1Pn/TRe45VY=;
        b=h0SA4P5OMK+kugq3QMf/IJIehyCwIlQfELPHxb2QgGQb1D1GYxKeCFCq8d6ssYLbIe
         cvfnwRKX4/z0JtRKOCeO+uTAACocRQ3Ve7WoOHeMEVgAroBp1dLl1yNAF4ZC4xkAvFoQ
         9w5/cRMpNOK4+4nEQilSjigsRuhfWvPgc7cgdQS420QrlonMAm1TWy60WBELRP4CeSyd
         rdzfZb/kcOWPrN9Q9r89ejAh4b/SUMt994Lg4AbA/cOpmTk/TjcWKNDd63zIpx7hIBq+
         YUpg8QsEdf2183ZN2FxfBQGph0Aa9ytiH6chOa18YiM/lsuchn0VKgM4qRAIBYMODo95
         JmEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZSgW6fw3;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com. [2607:f8b0:4864:20::b2e])
        by gmr-mx.google.com with ESMTPS id o13si392442qkp.0.2021.08.06.09.21.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 09:21:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) client-ip=2607:f8b0:4864:20::b2e;
Received: by mail-yb1-xb2e.google.com with SMTP id s48so16104142ybi.7
        for <clang-built-linux@googlegroups.com>; Fri, 06 Aug 2021 09:21:06 -0700 (PDT)
X-Received: by 2002:a25:2785:: with SMTP id n127mr13814414ybn.235.1628266866064;
 Fri, 06 Aug 2021 09:21:06 -0700 (PDT)
MIME-Version: 1.0
References: <08a2e179-3f5f-639e-946f-54cd07ae12fa@kernel.org> <20210707181814.365496-1-ndesaulniers@google.com>
In-Reply-To: <20210707181814.365496-1-ndesaulniers@google.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Aug 2021 09:20:54 -0700
Message-ID: <CABCJKue5Ay6_+8sibzh5wRh3gPzV1g72gJ9m2ot4E1ezj8bpHA@mail.gmail.com>
Subject: Re: [PATCH v4] kallsyms: strip LTO suffixes from static functions
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>, 
	"KE . LI" <like1@oppo.com>, Nathan Chancellor <nathan@kernel.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Andrew Morton <akpm@linux-foundation.org>, 
	Miroslav Benes <mbenes@suse.cz>, Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>, 
	Stephen Boyd <swboyd@chromium.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZSgW6fw3;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2e
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Jul 7, 2021 at 11:18 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Similar to:
> commit 8b8e6b5d3b01 ("kallsyms: strip ThinLTO hashes from static
> functions")
>
> It's very common for compilers to modify the symbol name for static
> functions as part of optimizing transformations. That makes hooking
> static functions (that weren't inlined or DCE'd) with kprobes difficult.
>
> LLVM has yet another name mangling scheme used by thin LTO.  Strip off
> these suffixes so that we can continue to hook such static functions.
>
> Reported-by: KE.LI(Lieke) <like1@oppo.com>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes v3 -> v4:
> * Convert this function to use IS_ENABLED rather than provide multiple
>   definitions based on preprocessor checks.
> * Add Nathan's suggested-by.
>
> Changes v2 -> v3:
> * Un-nest preprocessor checks, as per Nathan.
>
> Changes v1 -> v2:
> * Both mangling schemes can occur for thinLTO + CFI, this new scheme can
>   also occur for thinLTO without CFI. Split cleanup_symbol_name() into
>   two function calls.
> * Drop KE.LI's tested by tag.
> * Do not carry Fangrui's Reviewed by tag.
> * Drop the inline keyword; it is meaningless.
>
>  kernel/kallsyms.c | 43 ++++++++++++++++++++++++++++++-------------
>  1 file changed, 30 insertions(+), 13 deletions(-)
>
> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> index 4067564ec59f..a10dab216f4f 100644
> --- a/kernel/kallsyms.c
> +++ b/kernel/kallsyms.c
> @@ -171,26 +171,43 @@ static unsigned long kallsyms_sym_address(int idx)
>         return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
>  }
>
> -#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
> -/*
> - * LLVM appends a hash to static function names when ThinLTO and CFI are
> - * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
> - * This causes confusion and potentially breaks user space tools, so we
> - * strip the suffix from expanded symbol names.
> - */
> -static inline bool cleanup_symbol_name(char *s)
> +static bool cleanup_symbol_name(char *s)
>  {
>         char *res;
>
> +       /*
> +        * LLVM appends a suffix for local variables that must be promoted to
> +        * global scope as part of ThinLTO. foo() becomes
> +        * foo.llvm.974640843467629774. This can break hooking of static
> +        * functions with kprobes.
> +        */
> +       if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
> +               return false;
> +
> +       res = strstr(s, ".llvm.");
> +       if (res) {
> +               *res = '\0';
> +               return true;
> +       }
> +
> +       /*
> +        * LLVM appends a hash to static function names when ThinLTO and CFI
> +        * are both enabled, i.e. foo() becomes
> +        * foo$707af9a22804d33c81801f27dcfe489b. This causes confusion and
> +        * potentially breaks user space tools, so we strip the suffix from
> +        * expanded symbol names.
> +        */
> +       if (!IS_ENABLED(CONFIG_CFI_CLANG))
> +               return false;
> +
>         res = strrchr(s, '$');
> -       if (res)
> +       if (res) {
>                 *res = '\0';
> +               return true;
> +       }

Note that starting with https://reviews.llvm.org/D97484, the hash
separator is '.' instead of '$'. It looks like this change will be in
Clang 13.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKue5Ay6_%2B8sibzh5wRh3gPzV1g72gJ9m2ot4E1ezj8bpHA%40mail.gmail.com.
