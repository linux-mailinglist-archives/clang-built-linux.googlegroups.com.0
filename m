Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQVH4CAQMGQEUOKRMRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CE1325875
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:16:51 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id q24sf2760384wmc.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:16:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614287811; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0lZqFbtAKsm/zxdqcFLMg2zX+3pjSKeh0iIYcYUQbMcGZJWVJwRTWbbhEiTkgQ4Lc
         oMxNcAXtJDuC6Xl/n/DTxSX4JoosI3oJN2VbUe4rykYD7ww9J1Bt4z3JAvCZ2goiIGSv
         INPV6I4tSv2uizPJvThPDOKJvAY0eOIAz9dM0GXGuBBQsdjinE0q8B60hO4bzC61HKw2
         or85o0LurYbtgVMVpBLBjU0EJ5O9DUop/fJgOOL5d7aNep+NyaB9bufx80X6bSVZMbmx
         e2R0QB0Yund6mJ84lhgUdAerbQ1HfqEZ8wMlb9EsPgSPMg+Mrb1xprdhTONdC+XQLhqX
         AJFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RlosvQIJ+6R2QHam0UTFRfuCuENN02w/TbxQ6+a3UDM=;
        b=vkuEp+5ZL1rnqmqwyC2axHwOBHxWAywdZZEi+jBg/5n1uu2IcSLeERZW3iUksoRzdX
         jvuTlHZEhm0C81KOYBHMikQWd7jxfQ/Nf4idn0m3MurXi3FDf6hKueVxMUXjnk3l4gxp
         nVERs8Wt3ZZ1pKf7PHIW6I2lcyTgwexblb7gG3rDpGONfwbG6Z0fEFeuN6Bm5Mjb8GUj
         8hiM7VGaQ5Ja8EvU2MnVhUYwuNIWODO7iHECUw1YDyYtFh70vHVXvKoo619Q3RRzFglq
         wchRN/Htj+EQqKkkyzWmra2HYSAopqt1Kcc6B96cHus9i0cWtTjORZcCXl6/rJmD6M0j
         7qGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lSDsTa8+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RlosvQIJ+6R2QHam0UTFRfuCuENN02w/TbxQ6+a3UDM=;
        b=Lm70PgTUsBS0po2fZAUi6EsHwDnoQwfO9ErYggQysbS37iTpC/D10aiAcpI6i56UQ/
         gSg+h1nXlgmpV1gskDDThkON2CMo3wNaLpZZUux23S/MPBfjFpBfDdndZcIbhokdFeGt
         DE1+p0o6Or91priFj7k291EF5ul5q56iMJka8kkKJ/UpQyCqnpCCRyQlCCQA5rhnjfPk
         Ymf4wjWIe0UXflRKPMQUCNlKqKH3yT+9TiiukTZxHtxTySDnk3IGVv8DPGLsFQNwe0xP
         3jXptIXD4ld2/RzjFRrKpkcFjIKXnq755tckLjeOvoQnghJtjYFINjXlj5P/g9jhi5/C
         t7wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RlosvQIJ+6R2QHam0UTFRfuCuENN02w/TbxQ6+a3UDM=;
        b=Yh2pjfayzAERAaWT+pLXSGzXaSFQRMsewXkqiqUUYlMlfXePHulNFZu8BmM2ioCteT
         AmwtV+c/mDVqpMm/AXZhbfjdxz1sPxjWInXk7RapqRV29HLPexg5fnmbl44HqI7EVIX5
         RsO+QpL65Rx40zhIpwCnjp1RD8XN0NZ9eXe6EvQ8HRMQjbL8O0eDUWl6e/t0hiUhQs7z
         39guFC662R8Bn1Gv7D/mj7Z4SgzjES+LcZULmQAoEn6iVnmUVfs6nBk/4KlgiVLZ2i81
         M0CNt0xqJmzLa0JYlAjdPqPBPIOW7ksjykDsXfV8UjLOHYiGiCEbJvozJNJcFHldDNst
         8llA==
X-Gm-Message-State: AOAM533vGLvFLD1PBs4O+rMaUy+VZSwqEjJuZlCz+zKThPCmWuSljLgD
	ESZjz4XaY+visScyFBDLTWQ=
X-Google-Smtp-Source: ABdhPJzgR4tgJ4vLk0t/AcNcDtkIcUgMwGHPTyyiC1aeveH3nRjEWYCd1Fk01YVYhTncl2JA7lTm9Q==
X-Received: by 2002:a1c:4386:: with SMTP id q128mr267206wma.184.1614287810909;
        Thu, 25 Feb 2021 13:16:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1371:: with SMTP id q17ls7059060wrz.1.gmail; Thu,
 25 Feb 2021 13:16:50 -0800 (PST)
X-Received: by 2002:a5d:66c8:: with SMTP id k8mr2058414wrw.163.1614287810172;
        Thu, 25 Feb 2021 13:16:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614287810; cv=none;
        d=google.com; s=arc-20160816;
        b=Ts3Zk9SBMbNycJ0AnqGzSXzEsDtKvN7pdRUOPnPRh4nsBAlWjFnKHAuCnJWGqL1Fv3
         6xOSgNCBaBO4lb4DTnF5AHW2lAPkXMlLYq4iZ/iG2UtwRTOc7VC0SkKAA6KT8NtEvgQg
         8Biw0PS48tgQxI+RE0DH1zglYjLFcNnxsE9RsSAGO/cwXf2mO/+9MQZtw2vYiLgpzsLo
         ULH4oXzlM99lmpi1WLFPKkMHpEzfex6W3+VBZmlsYTYvlEUVF1ylu1r+lH6tWz7ZASny
         m4k2S6686g8NbDSVGLRWRxf4Xr4bK8ej/c2Z9x3r6TGzK8+gKXf0bRW4FocQgeQ+RYWg
         LQng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+Q5jeV0/eI5MVanjQDC59pyS/bWWpJw2xxtG8W1c7H4=;
        b=lXKoTMjxR2YARceK1kKSiKh79m0ufZtlhM7uKRBihWgvJT2JgB+dmq/A9RkkgZnfie
         oX6j/6R2ZNd0G3dXhFYQBdXOyWUNi6sIcO3CAK7+TXtHKMkRzHQVLgDzA002BdDk0YUz
         3unph7ffk4h92A1/YdUrmEhXe+YGn01NFhrz4jWHY1zm6r8jpGXD/6mTnM54nLvQNcSx
         Wmem2EMXbmr5uw2ZRfsqJbmZeVVhHa+/+s602LAN7MmH0EayyWA7hTcm3RN2IsFm9oc1
         C7dR+O8U8WG0/ZacBjKEpYgxogEv1n5ND1/rLvOvlhKjGmZdIHR+fW9kv1hEJ8vQubhx
         r29w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lSDsTa8+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id y18si285092wrp.3.2021.02.25.13.16.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:16:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id r25so7187979ljk.11
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 13:16:50 -0800 (PST)
X-Received: by 2002:a2e:b88b:: with SMTP id r11mr2535739ljp.495.1614287809489;
 Thu, 25 Feb 2021 13:16:49 -0800 (PST)
MIME-Version: 1.0
References: <20210225125541.1808719-1-arnd@kernel.org>
In-Reply-To: <20210225125541.1808719-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Feb 2021 13:16:38 -0800
Message-ID: <CAKwvOdkcR=8Ay+VaOym6y4ySC-x+=dfTjN_HDLs-281KdUhojA@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Nathan Chancellor <nathan@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Arnd Bergmann <arnd@arndb.de>, 
	Jon Lin <jon.lin@rock-chips.com>, Chris Ruehl <chris.ruehl@gtsys.com.hk>, 
	Alexander Kochetkov <al.kochet@gmail.com>, Johan Jonker <jbx6244@gmail.com>, 
	Vincent Pelletier <plr.vincent@gmail.com>, linux-spi@vger.kernel.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lSDsTa8+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Thu, Feb 25, 2021 at 4:55 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
>
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
>
> Use BUG() instead of unreachable() to avoid the undefined behavior
> if it does happen.

Thanks for the patch!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/spi/spi-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 936ef54e0903..972beac1169a 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>                  * ctlr->bits_per_word_mask, so this shouldn't
>                  * happen
>                  */
> -               unreachable();
> +               BUG();
>         }
>
>         if (use_dma) {
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkcR%3D8Ay%2BVaOym6y4ySC-x%2B%3DdfTjN_HDLs-281KdUhojA%40mail.gmail.com.
