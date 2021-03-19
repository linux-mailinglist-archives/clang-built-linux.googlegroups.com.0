Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH7B2OBAMGQEAJYADOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB9D3424FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 19:42:40 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id h14sf13189124pgb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 11:42:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616179359; cv=pass;
        d=google.com; s=arc-20160816;
        b=iuYGMnqR9XAvFxI8S4nRQRlL7grgWzTDCCcwdbyeg3Z5ql3sVNeKUTdkqCDwHhj8vs
         8lS1k/b8VH60aAm3IcDgxpKFUhJyGH2flRFHsfrCKFHi4BJ+20MVUTaKjpnm3eIntIqm
         YvD4a0rxMYhRzUZx327rxID7rT0K75Td2n+0pl9ccPuK+bR9gRVpGHzT8eGc0/Uq53aU
         m+5aM4HtoYzHwkTqZGa5rcSvenVCm4DBo3HIdAb09wDKjaU6HOmkn1vsTIdKldFmwBIi
         zZt2xFwK/PS9S13oi+tJ+gKrrRflC7l8pAi1C+0RefJERL+fspcJa7GlfjY9Z9+CfcBw
         D7rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UM3FmgKgB5v9ckwwnujoFWSGAItujy9sT9mXYWvubXU=;
        b=XUccQy9LlOb2FAB4vkNybRNIUJwgbk0w+gqxUiujJ8TVVVq4JpqPjb5natQLxXX0ap
         UBsMj4/ZmbTaiOP6Pbmddw66bKy6huztO9T1Tr7D2GCNdR/MSiE9VkSk0/kAiG47k9ld
         cFNtOqyhxGhuP69V2vg7kQ1lFwM7sJiGkeqFlwA+Xzn7Yz/IAmEVcn3KfAh+Jj1n2kIh
         Fop5eD/6Wy85EWPSU0XXrNYrlIX9TayLwQ4pExWLb3fQEX7sOLxMgxiemlAz/5wptYwJ
         KCEz6gB6c4QW7NFVvh6+EwK3k87Vc1MLjjpVcA7AyTLmHs/tEzcVml1z+mKn9W847C7N
         B5dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=U+rrUWSh;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UM3FmgKgB5v9ckwwnujoFWSGAItujy9sT9mXYWvubXU=;
        b=gMwfRR34pAV6qKVlJB4I/kEvvD/XnLrIx01EAGJdX+qKf+GcyfSTXOBAhb38Uuw3B5
         ZWTroFGRKOzpY4pd/xoMMM9hLwEGlOeaIUwE9YkeJv+JOTaJaBcRyx1/alSBpn9e5xHt
         NP+AQcOcPk6xg+OF7ylRB5Hl+dwIUVHV9YodlfAsWdTPzM3+NJYzMd9WHIHJ0JJeUcM8
         uARMgGfCo2OmOpcFOLiiYTckpiqqt5TjBYI5BOKhUym0qtwuhNwcUzTCGeL8Xfe2O8/C
         MUhdb1L14Zi3TYktsptt0BfwLXx77TV7aOzUp3hdRvYEVGTkBeALi/MJc/r8WEktW2CC
         INBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UM3FmgKgB5v9ckwwnujoFWSGAItujy9sT9mXYWvubXU=;
        b=BaOcT0AyTLKrjjNmxPpumHf/WrKmXJ5qbRf5WDZ0/MDWGSGsRKfCFVF8njUueASm4Q
         rscS9BihhOQJlr/WrrfjMNICGbg5vXsTWfsVdUTeNa+NR/TvmiX1NxlT+W0+PtL13UfQ
         9NH2TXi1dYbXB4dtIm8yqP1sdgQ7SYxUo+flMjay+eEp3Zr2/3ydjYOu/m5fs1spedP5
         6AdDNYWmvI5m3r8t13ZFhcYwR/5SPtyhv0bDYpCPzgyLbIU4vYp7AwucL69+iu0sUj97
         5tM3PK/uyp6zuoKHsz7bsH/zUglhbjN6Qlv0qvzyiK/NukMlNF+bpKmi+8uL87s+dkhc
         EGHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533P36lowimkxfsffPGifYb/5dop1PdP98W7PJD7kLj7UEQeav7z
	aGNGTASdzpiRZmDwmgRZGeM=
X-Google-Smtp-Source: ABdhPJy7Yvf13UZ5r+mn1hO1u7wThPOVViP58y9Uce+Xv9NkfLTOgNIXXuh0EHp7H9OEyuV67r5dog==
X-Received: by 2002:a63:141a:: with SMTP id u26mr13015044pgl.398.1616179359715;
        Fri, 19 Mar 2021 11:42:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6256:: with SMTP id q22ls2260318pgv.2.gmail; Fri, 19 Mar
 2021 11:42:39 -0700 (PDT)
X-Received: by 2002:aa7:9521:0:b029:1f1:b27f:1a43 with SMTP id c1-20020aa795210000b02901f1b27f1a43mr10601252pfp.4.1616179359217;
        Fri, 19 Mar 2021 11:42:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616179359; cv=none;
        d=google.com; s=arc-20160816;
        b=D9MrxVaWj4uFhKGF33UsonhWVglMVAFGAQ25i9TP5fTs4CcRYnuQBXqClygEdJj5J6
         rmPCiVWeMEaW21hY8IPOFmxFhZKfDmmcW0yzS0y0DCNvaZ0dKekw5gRuNE7NzOH/PU98
         4+MiY/50sAzm8Fw3JUYONbDmTKPBcQTZOvKv5hDne+BI0zIDMxEaOSc2ryl/Uq2vU7ND
         wD+xdbWxiA14yM5AEBo0v+c6kq1rKJ7hOEB/LUuDlcSkhoexBryIs/Xm0GWYVmj9bOD2
         Q19fFYU0051Z3MjKVxnGj2wCEbunG7Pg8ApmcwBGvYJIm+88rdQdZyJG0ow+bv5M9iw8
         RwdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dvThNtNVYWid8zWAiZPMWIulggifQulLx2odGVom/hU=;
        b=QMU2rDzfMjAo+4eHWqYitik8jA95p329FwHctugTuqm2Kvig6l7zmOFh3KmZC+48Ls
         kJqbsJ9t9mUEY3f+r3HoSALjDGY/YvtSoX5MbimOCQVtDqWCEJgTL45CMmQA1GznKJGD
         qqL0Neu+B0g59BtPYF0IqnOw3zA7sv3ca2S8CtMkxTj1BeC8BVIkXqgdVtWaRrZakzTy
         h+XNfwxadR5aI8ysTzv64KVyUz1dkjaHJAuQUlAs4NQcmE3Fg/r7ssAVXewzq7JtqyAE
         edRiV6wkLGWuCiUzSX3hJCJZiPMJctOf1suu8MBbAGuBHNlZrm6olyR+GwDA0JOtJ2WD
         QMXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=U+rrUWSh;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s9si306886plg.2.2021.03.19.11.42.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 11:42:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C7D4561976;
	Fri, 19 Mar 2021 18:42:37 +0000 (UTC)
Date: Fri, 19 Mar 2021 11:42:34 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Ansuel Smith <ansuelsmth@gmail.com>
Cc: Miguel Ojeda <ojeda@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] clang-format: Update ColumnLimit
Message-ID: <20210319184234.jsudy6solmtrq6vz@archlinux-ax161>
References: <20210319183714.8463-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210319183714.8463-1-ansuelsmth@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=U+rrUWSh;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Mar 19, 2021 at 07:37:14PM +0100, Ansuel Smith wrote:
> Update ColumnLimit value, changed from 80 to 100.
> 
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> ---
>  .clang-format | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/.clang-format b/.clang-format
> index c24b147cac01..3212542df113 100644
> --- a/.clang-format
> +++ b/.clang-format
> @@ -52,7 +52,7 @@ BreakConstructorInitializersBeforeComma: false
>  #BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
>  BreakAfterJavaFieldAnnotations: false
>  BreakStringLiterals: false
> -ColumnLimit: 80
> +ColumnLimit: 100
>  CommentPragmas: '^ IWYU pragma:'
>  #CompactNamespaces: false # Unknown to clang-format-4.0
>  ConstructorInitializerAllOnOneLineOrOnePerLine: false
> -- 
> 2.30.2
> 

Not sure how opinions have changed since but this has come up before:

https://lore.kernel.org/r/20200610125147.2782142-1-christian.brauner@ubuntu.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319184234.jsudy6solmtrq6vz%40archlinux-ax161.
