Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBNUS2CQMGQEM6BZPYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id AC39E389993
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 01:06:46 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id c4-20020a05651c0144b02900d41930170esf6676603ljd.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 16:06:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621465606; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y+Fx9RiRm2XWEKoQX+Bu0ZYaK5L7VX5Hk2vu1Z3D2y45GY15DaHRmcuVAiHhhI3heK
         BbRIWRQkh6zGLUM934PE0UOOiZvpGk3v/7/js08A8iD0GxL2F7KOQn6PmfyETknMXIeD
         ECMUgk9yafXYxMsmFlFda6FLYuYrvq9Zx31UL1SVHm2cb90nwIlpbORFx3RG+uWgyGWX
         erqW+Sm/Nzbbn3ynGQjyt8gVvFcWgNNHfzloX1nJ7fc10sW83F4trxknuVsihQf/LWbq
         vWTbRWYp3mISxjCRk0LI3IHsglYY3A09cZ9cyXX3GZe27pOEA9zvIrqTD1ZoWLqnFyC4
         wmzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=areyS6EUwbtiO4+1mrIR665dxi8r4y1slkE48QpHksg=;
        b=CPEL0wnB3TaBp1yeoI409DBZRpodhIdiL/IvMFfKFypHBYN68Spfx3UHvppnsuDX2v
         /0fNqk0rkqEZl2aFqkMgezZU5vWHOn3hMpsmc+XdatG5G6hDRUeE9wzeoJ4dHmEQhq1w
         WPfiQCxg8GeBjlnqK5uCqJq6G0MXbbXihuWZJbuhOO36i0EVhsijC/wZCNk9EwVPK9pZ
         hpuOS0bLHiGnCF9xF0BJk6JE5UIxEYU38yY5knKQCPhyMGkL5ORnPJGR24/pC0s8TXFz
         bnv+4ulFSXxFYBZrgoQ/eJmkVBKZSUuc2gaB2Mb+mA118rEb63oszzso39ALjCzvmLdR
         GrPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b4urCb4o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=areyS6EUwbtiO4+1mrIR665dxi8r4y1slkE48QpHksg=;
        b=FFVqxgQgM6COkw6oxe4nJn8qQSQ4Dk60QQJEeSxoohmSLXaQGVZSPGVnBL3RG8VWS2
         f6erRE2GxybQqQtH6kQoVNDikX7EjPIrsWMI93gGptHTJ0CcwRzdW1/ozGS+FFC3Q6Et
         VzfsfgD+73G6eQF25Map3A2gt71Cne4EPErXkP0FZswmW20iBMQtqgEL6Hk3hDYFVSg5
         3k7aTwnA64XR7yHsWwrGBeOaKlbGnw57QKaC8bTLW4VgMpxoXRT51fPN3cc1/a7aQNub
         w73EgZfhy3Pvdbz5lSSGhjm/yf/wZ59r6mJ+5+rsPms1wS0SSZ9pQuOgHT/fFIfTMD5J
         M4Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=areyS6EUwbtiO4+1mrIR665dxi8r4y1slkE48QpHksg=;
        b=XGv++Gp7not2bmOa0TZ8+7lWodDZqNCK0yHTGtuende8uxlySGn/uvXLSOITkA7pHO
         izG9dGOK6H7WGu2J0NU6kWvQE1lSJNVwTzcIPcTGZ1FdVxlvd3oV6TBozzmQJPGY8FTG
         ry5JfI2N/68Fjxgl98Q/rFIVMwNM8GPeFQbXCaEsGIG9YjgSqcs08wqntEBAH4UHvEFm
         shW0HsyCf1mgaoGGFMiuL/VAgqp3hPROHl3qLP3+faby+NKKXpfntDdmvxs6W8iBnr5p
         9XJ4fkoluu5bf+zbYr1jRFp83icYABcDJROLRpOebYyP5G3+Whu54puQNTa5IMsLH7vc
         099g==
X-Gm-Message-State: AOAM531lLerCXQcOZ/X6C1Bqc0JeKB0y5mcGs7Io46rirdJRrWlm9m8l
	ySwAVWhOY40Bb4CfU5UC4oA=
X-Google-Smtp-Source: ABdhPJxSt+vtYddeh/xTgOTtAmrxfYTD56LSJmo7c9lSJbWOFY/Y76yBmCDx65GVycRKyCPvZQILVQ==
X-Received: by 2002:a19:770c:: with SMTP id s12mr1252163lfc.535.1621465606231;
        Wed, 19 May 2021 16:06:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls474287lff.3.gmail; Wed, 19
 May 2021 16:06:45 -0700 (PDT)
X-Received: by 2002:a19:7607:: with SMTP id c7mr1255951lff.58.1621465605162;
        Wed, 19 May 2021 16:06:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621465605; cv=none;
        d=google.com; s=arc-20160816;
        b=W62TT0QMk5n6kxmY1gl0ZxWT/+vTN9khttQdekFbz709ova69nwn9S2YG0hnluvUDH
         kzRFh4/JJ7lLMaAIy9ZFDy3BqC1m0zvUYWg0TViM3NZ7g4b9+2Ra+D8wV00tOmYAYziB
         lQIqVl58zU2Q8TwgtM4Icv/hBagt2Mb7sau+3K+zA7vXnZEu+YlpRyZWg/x7dC0mmk+W
         qx4Cu658t1K+UGRPo0Ns0kuol36j3OzazYcye4WSdESzc6yLanxm9h0H17OK+uH87jCe
         rhEBabq+oS9GmflpVnK7UigdXDX9xXL7mAK+/Cn5azMhF3WtSuAjz5vabhXSasMSDnQY
         XKjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Jwk0saAKOxxux1qLucTjT7RVUUV0SrqEWvSDUW8ts5s=;
        b=aCcmdS74qPejYmuwYVU4rUpdsYGSUmyW0Y6wJl9yEpy8WJbJv4efk8ZcQo7LBQco1C
         R9xd42hUyhcBRaAoqKuWGG8xl9ooy5NdbR//wipCh7G+DBHJkQ/7dORr3Otd+eJKUGcN
         O5a2xpz9Fxwhtoto5CgJnGBSSheEDVSm6vAD7hmGOrSSZrZVmMMFpBSVzGiY4VeKh4Bm
         8/kSitZ+429c/j4drt+HyS61O11mEH7r5USVrBP+6Jx3pIRkLLNFfEd92Q8f+Z2ITZVE
         pq9Qm+8SteO6pu/Nk/1pAh/heorYmLKnaEDMIprkgksRHN9xmkzPLhTvCCZrldNWXTQS
         rkXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b4urCb4o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id o11si35212lfk.12.2021.05.19.16.06.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 16:06:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id c15so17472099ljr.7
        for <clang-built-linux@googlegroups.com>; Wed, 19 May 2021 16:06:45 -0700 (PDT)
X-Received: by 2002:a2e:6e13:: with SMTP id j19mr1048011ljc.116.1621465604566;
 Wed, 19 May 2021 16:06:44 -0700 (PDT)
MIME-Version: 1.0
References: <212218590.13874.1621431781547@office.mailbox.org>
In-Reply-To: <212218590.13874.1621431781547@office.mailbox.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 May 2021 16:06:33 -0700
Message-ID: <CAKwvOd=Z1ia4ZufDbRsEUkumwkz15TtSb2V1aBT7SN8w86RKYw@mail.gmail.com>
Subject: Re: [PATCH] fs/ntfs3: make ntfs3 compile with clang-12
To: torvic9@mailbox.org
Cc: "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>, 
	"almaz.alexandrovich@paragon-software.com" <almaz.alexandrovich@paragon-software.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b4urCb4o;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d
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

On Wed, May 19, 2021 at 6:43 AM <torvic9@mailbox.org> wrote:
>
> Some of the ccflags in the fs/ntfs3 Makefile are for gcc only.
> Replace them with clang alternatives if necessary.
>
> Signed-off-by: Tor Vic <torvic9@mailbox.org>

Thanks for the patch. +clang-built-linux; please make sure to cc the
lists from ./scripts/get_maintainer.pl <patch file>.  It should
recommend our mailing list of the words clang or llvm appear anywhere
in the patch file. This helps spread around the review burden.

> ---
>  fs/ntfs3/Makefile | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletions(-)
>
> diff --git a/fs/ntfs3/Makefile b/fs/ntfs3/Makefile
> index b06a06cc0..dae144033 100644
> --- a/fs/ntfs3/Makefile
> +++ b/fs/ntfs3/Makefile
> @@ -4,7 +4,9 @@
>  #
>
>  # to check robot warnings
> -ccflags-y += -Wunused-but-set-variable -Wold-style-declaration -Wint-to-pointer-cast
> +ccflags-y += -Wint-to-pointer-cast \
> +       $(call cc-option,-Wunused-but-set-variable,-Wunused-const-variable) \
> +       $(call cc-option,-Wold-style-declaration,-Wout-of-line-declaration)

I think it would be better to leave off the second parameter of both
of these, which is the fallback.

>
>  obj-$(CONFIG_NTFS3_FS) += ntfs3.o
>
> --
> 2.31.1

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DZ1ia4ZufDbRsEUkumwkz15TtSb2V1aBT7SN8w86RKYw%40mail.gmail.com.
