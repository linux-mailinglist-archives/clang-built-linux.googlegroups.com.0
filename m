Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBO7XS37AKGQE3CAS54A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 225522C95F3
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 04:42:53 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id r7sf269587oor.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 19:42:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606794171; cv=pass;
        d=google.com; s=arc-20160816;
        b=vMrvhsFS8IqVRHaNO9BMvA7AQL+GLhXVJsc0hi2dYWNtQQsWzePLVqTAEZAa9TR5Ap
         9VWXpVP2jPR32KHwlg0ZIZkGfwVTLGui+Y2n1+xTBscJVQVorclWDWlMR6p5v5lojafr
         cHOyb7kyIzcisAhz3G35EIZdzJfKvgOqUcfFPwrAHoaS3Ym56klD+S8V8PrMWfNn061o
         yLzZJN1IGXIE+UbbHS65XkOqZ/87UownlK9/1Ztzc0HhQr35jvJji0+o3xghm33EdMhz
         AF+foeHGM1fcH9ak1Jch/bhnRT7Kt1OIizQG9uaocO8yMxHFOBLre0M4JqT3DZrrFvij
         hxaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=fyNuk8Vg7h4jDz+rf+kB85GhNpi1hi5ShaIrZo7GVqc=;
        b=XbDyBETNheGZzijVX0VaLm1BYgfGJusiXunw9hIVj6ZNMs//B0mpRHkhYmdJK9D4Zz
         yh7pd/TU0Ulfqi5zVTXdiHPmUNY72/xaZN33xz/3GBBv0RpGixz5woq0UBmUIwd+PXJc
         d9mwq1Iajbc9j405951hgWQ9GS5U34+lIYKYLvom7141HG9revoUmYJ56PcxfAInrBuK
         52+6gfImkfB5jWGicjXzgQomIhkpsj9TfWiGBa3tBV95YesYMudPlLcq4R44Kx/O7NVs
         00IEtehmPcER70MJ/7QKg2GF/QruCaXv+1cOJFFfSsoYRG92cDDAxeYOqj7vP8bAA+GF
         Cssw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JEK9kZtF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fyNuk8Vg7h4jDz+rf+kB85GhNpi1hi5ShaIrZo7GVqc=;
        b=poFnpVS5WRAOmpN5mG4B674H033iXWscwj3h6ZNje2mUWJtpVMKgUzmt2HjU/srXaz
         cq5nVmsXeWTvPOk5x5HxnNUfQ+ansYkY20d/bsv+vA81m7TP5viIObS+IMV3lFIYPvLA
         FW0LIH3mym2DIu86f6vX1MT3WIQjQHbD39qdp7cSHJyYweVoO2D5q7LBzuKbJmq/dD+7
         T+isACUFbmr2F//ZiVTiJ7+Kx69mRVJhzQ2Y4ZYflYZ3gH5mKLJM0ojCKslKdOKBHiKm
         g3G2BshaWtxa/DYZvxGZK6FKjfDjwezVaNs9WyVpMn9I1idfypi9WTrRMHQjPr4Shv4M
         aWTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fyNuk8Vg7h4jDz+rf+kB85GhNpi1hi5ShaIrZo7GVqc=;
        b=kz27XWy+z8q0FwrxM76U7+ZnK/lUFA+pPxgBTBDTnfnAM7bjykiUbsvuXm83G6xVbQ
         9LePQJtS043LeeC51mHsZ+5DAs85rZ7pPrMOVobwYEO+1A/Yez6qP3mnyNSzT3SlJimb
         COrR7AtIC0ncMbGZU8MSbRn5Z5w+ViKJtne+Od3yYXaPVagdI7X9RDFnnhcstmhtSpIo
         /F8j/uu+kZ6CUG/Z6zvIYrblj6Jw4czHIrcQAbLCwkzgKwzSBlBCmGTdFY0LOEaXuFsk
         DShO0fRqlbykyupw4wcHPuwCx38nwoNgpIU8PXyZDisiUwqyKXlZV52E5O+L4UgGb7tG
         6xVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zLT2ksbTWE+yBjoZ1Q7djS8y6QXDrGPs18A0+hr7oukERJ+z/
	9iWOqlMVdlR0OayNKlth8t4=
X-Google-Smtp-Source: ABdhPJyIwgiHxOTzjYa8qr942vxEnBZhVEgIoNkUOlEuHh8R3ANsAkBFXg9F1mUrlPAeJEdRGWrXSw==
X-Received: by 2002:a05:6830:232d:: with SMTP id q13mr603851otg.52.1606794171547;
        Mon, 30 Nov 2020 19:42:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ac3:: with SMTP id m3ls107982otn.2.gmail; Mon, 30 Nov
 2020 19:42:51 -0800 (PST)
X-Received: by 2002:a9d:6647:: with SMTP id q7mr600325otm.196.1606794171086;
        Mon, 30 Nov 2020 19:42:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606794171; cv=none;
        d=google.com; s=arc-20160816;
        b=pk7cAaNZDoisnlKWQJXwGwbs8jVtVKUXMlBSOL1PowGl7S1yWMrjF//7AMo4DYQZis
         8J8g+gQjIDx9OMS15ZWhpNCEImYCSSvR+Tb6EpA1xKvVNhjkj3TD8URLo8PgpH3R181x
         tAU3XMtQYYZTmRuJjJMJeOJb/kHUm5wkl7k6U1Kj3ZiVop6saN1uFEeqxRphSW+rsND/
         FiDrrQAuudZtIsTa/INfhSFVnAU6DSOX3Kpluqf+wPeMSyIat6z6Lpp8LuXCp/otguFA
         Z6zw+J1GMxj6T9mLvVVCG+nCN+AtjgoxIeZ4pyn5ynhenrq8+XeX1bKLE8rmAokUNmZe
         kaew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=BWVC7RRUjccNiBhgYJa1yg1OZmjJwaBDhMFEUkAYcN4=;
        b=WOUYoWE7/6/n2Poga/DQAzjh3Z9zYEsHHu86qJioXa954oUBikYb+gNlxXA+dOcTjQ
         KryTA026L220it1iPF4bSDrpJoSR5lrk48cmMyTr+2JutD/4MaQbRvc9aoKHcKn62mho
         6svomIK/ITXwX30B/3xmH9y4sOkfAQ2s7p2ucvDdT46bp4R2fuJJfiE3UJnBS6QX8YRe
         28g4opbtOTqzDKAKpw689wfUvqRwzSLtXtWv3ZugCkffMrYyrW+c6kQQ+DKk5tQKWMZ+
         vvChZwmjZVm5LBgUZ5z87SeLYetx+z96hQnoWrjJJIOjv9iN8Uht+KU762UKogfNwNE9
         X7cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JEK9kZtF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id j1si46990ooe.2.2020.11.30.19.42.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 19:42:51 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0B13gSeZ029246
	for <clang-built-linux@googlegroups.com>; Tue, 1 Dec 2020 12:42:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0B13gSeZ029246
X-Nifty-SrcIP: [209.85.215.171]
Received: by mail-pg1-f171.google.com with SMTP id w4so371371pgg.13
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 19:42:28 -0800 (PST)
X-Received: by 2002:a63:4821:: with SMTP id v33mr557464pga.7.1606794148022;
 Mon, 30 Nov 2020 19:42:28 -0800 (PST)
MIME-Version: 1.0
References: <20201201032748.486928-1-masahiroy@kernel.org>
In-Reply-To: <20201201032748.486928-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 1 Dec 2020 12:41:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR+rWTku5Lz+by3vEzsWNsdOpO30phkdwCvzJf28aXiUw@mail.gmail.com>
Message-ID: <CAK7LNAR+rWTku5Lz+by3vEzsWNsdOpO30phkdwCvzJf28aXiUw@mail.gmail.com>
Subject: Re: [PATCH] Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Fangrui Song <maskray@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Changbin Du <changbin.du@intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Peter Enderborg <peter.enderborg@sony.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "peterz@infradead.org" <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=JEK9kZtF;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Dec 1, 2020 at 12:29 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.
>
> You can see it at https://godbolt.org/z/6ed1oW
>
>   For gcc 4.5.3 pane,    line 37:    .value 0x4
>   For clang 10.0.1 pane, line 117:   .short 4
>
> Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
> version, this cc-option is unneeded.
>
> Note
> ----
>
> CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.
>
> As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.
>
>   ifdef CONFIG_DEBUG_INFO_DWARF4
>   DEBUG_CFLAGS    += -gdwarf-4
>   endif
>
> This flag is used when compiling *.c files.
>
> On the other hand, the assembler is always given -gdwarf-2.
>
>   KBUILD_AFLAGS   += -Wa,-gdwarf-2
>
> Hence, the debug info that comes from *.S files is always DWARF v2.
> This is simply because GAS supported only -gdwarf-2 for a long time.
>
> Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
> And, also we have Clang integrated assembler. So, the debug info
> for *.S files might be improved if we want.
>
> In my understanding, the current code is intentional, not a bug.
>
> [1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  lib/Kconfig.debug | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index cb8ef4fd0d02..7f80c25497a1 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
>
>  config DEBUG_INFO_DWARF4
>         bool "Generate dwarf4 debuginfo"
> -       depends on $(cc-option,-gdwarf-4)
>         help
>           Generate dwarf4 debug info. This requires recent versions
>           of gcc and gdb. It makes the debug information larger.
> --
> 2.27.


Maybe, this can be squashed into Nick's patch.




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR%2BrWTku5Lz%2Bby3vEzsWNsdOpO30phkdwCvzJf28aXiUw%40mail.gmail.com.
