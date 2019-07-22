Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHU33DUQKGQEV3BDEDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F77C709A7
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 21:25:19 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id i16sf15544061oie.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 12:25:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563823518; cv=pass;
        d=google.com; s=arc-20160816;
        b=TmxQSEjztLRAdaov5DiCp6OYQ7eTfSlP1rmwfridu/hj/D8KUwu2ZlDsETCMbnOUEo
         HAW71g6IonfeoggX7/D3E+ZznCO1E6TbvYkVLtPmCHRC+nJn2pX/bK0x1Yc+JBHhz3aq
         Zdzee6a+0Y9lI6UqFO5S0VazrmGET/mv61CgIwlSxenzOoEXGjZG1fHijIhTIcwb5Q1t
         LJ/FqBzdnE8uy7TLKUHFuJeXTGM0lWCepLxXO1xm716IcafI/wBoUJvciGevCFizpThB
         Gtj1JzYX5CZHVrO+ToVjjNSmP7oxlMOk5vtZBlc6RmGm6BwDu8Ofc7hi9O6O3HSoVHg/
         Eotg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5cYAdjXDfhonYrPwyEmoRs4hBEc0JpFFKq6Dg+jGUhk=;
        b=P3M1uRZ6uje0kEjww/cTNg6JT3niqV1pXIieyv1j7CWcKGMkf8Go6SaZZBIXaFRY7T
         1xX57jdGBJLjxQhCQcXYvroMfvZ7ulVpzPP2LxVWuywIIZ+NW/cQ8TrFpTzuGGqHdewS
         O1D5sQvC4W+GjU+ccp6MTZfiBLdKacr24ItnqAULxLa8yfxGwwDh+c+ZGgQOF3nj3sfr
         gZffoOCLc9/mNNQXBMl0MGIEjJ5UUgwq0DtoOqG+23r5YrxMOJNTs9lWb3pjJ0Xtn8vR
         5H7B2LTFZtjXcZLunvLdIDHlkXvbfrO9PmxWhZutTR4tYwLrS4mQhen8WY7qoOYJh9cX
         AS/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=evUVMFab;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5cYAdjXDfhonYrPwyEmoRs4hBEc0JpFFKq6Dg+jGUhk=;
        b=jDyNYgIwcNLLrL5Bl7GZRX0Sq30hDdpWhQevMguc69lk7Rka+immuPFdI2I3kDozkh
         62fMXea53D9v9+mjSxx7QGtWUeRPsphTqE5+4+bOcUALS6ZWXtuf5k+1FIZu5Tmwybqt
         e+g2qWMwtpcQKZn8PEQDnhzx5D4K+xwB+Tyy33SDcM0LiSN3M01VtI5Ow/ClutxXr8rj
         OL6AK+Y2l5UIH3db18i0IaddXbqMI4z8nmCtBajIqwmtXPu7hutnmB+GKBri7JDze6D3
         WEoRKu89BuuxdzSsAj834liojO9Z/647aD5eq6rqcdZLULX0uolwhQvkU8ssX4TJdz1I
         vNZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5cYAdjXDfhonYrPwyEmoRs4hBEc0JpFFKq6Dg+jGUhk=;
        b=d0kLfxSK2vnFz1qaadI6CKyGhBHwCieOLAg3kHhRkYrKaip4Pncgklpm68WwXaiC97
         ZQBNQNV8qfIcqck0vmvYIU1nFgoLJqvL3R5sFSliguMMSsjTCUA/VbcKa9AzlOCCMpCl
         egn8nQ8l7YgoO4C0pUicv658k/id70Y0hGZmmKuyTU/odeshwPN0qmgf/YdUXlmI6yx7
         KzMf7VcDrFMqZYXU9DSyAljKuhBr+HpsXS3bzesigw6rzXfImet1q3QI9j0aR+xdqQ74
         ryrvp36dCV3rtcVbaVBZgo/Rn171e7lfywDX2EwXnsOX4nQ2pPkOmCacZJ06a20axCNG
         zTyg==
X-Gm-Message-State: APjAAAXLKe8eUOBUpORXfltTom2JDmg5Jp0NqEagfaf5FVtwr3JRY0rX
	zEgLuA+io1hZeNQPbaokV0g=
X-Google-Smtp-Source: APXvYqwNtiXciD6qNTbOh3/ADCWO3NMuFNN3RG6nL7AhJMo0S/kGyN5ZXEE/CnV+NbPZSGYtlK5I4Q==
X-Received: by 2002:a9d:2c26:: with SMTP id f35mr52006688otb.362.1563823518134;
        Mon, 22 Jul 2019 12:25:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:afd2:: with SMTP id y201ls5199192oie.7.gmail; Mon, 22
 Jul 2019 12:25:17 -0700 (PDT)
X-Received: by 2002:aca:3a0a:: with SMTP id h10mr36752013oia.52.1563823517862;
        Mon, 22 Jul 2019 12:25:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563823517; cv=none;
        d=google.com; s=arc-20160816;
        b=qVDqLm3HTgmnGTWt9vPOR7Fetfa8ccgJ/fD3AsIBH+K60kfmJV4BpG3J8i9/PCfUyi
         0+Ugo1FlIWukdPfWuCtWbqAXsl6aVrvXEw0oOQIRQ3wcuK7wXprq9hhUKTtzWio8vyyk
         E53hvYnTFSLDnMHXP7QCYkca/leSncWxH0uzmYjSbksJudFt5CVPcokXS13XJ3pfPwpN
         qeJdbM4vnqEuEV/Tsa3riwToGvkwQfJNJRBkytQCgMfPehHmRxjiGRezKIOmVp0P4ptF
         9hDfzUAKMBEppRlYE9HWBiSiUqBEVec9banaP2hvl3deGF3QRWn94Z9CJ7CDFPHvsxmA
         IzSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pIU0BzkvuqdZNrPcue+VHhOV3QzV2Q9Zf8zNSiLyFJo=;
        b=t9ErigN0ty2ZoUYwicbcC1QWLnjKDt8WsF9dlUUXKr7e+7CS9YVPqv/y1n7H3IWV1H
         OfZrjw2XpY5sjlO6SwL8NuAVQ7h/LmyK2TuMFzJNAajbkKTRLajCzacvodU9BY+ys2oF
         o31RmDmaLET8tzA77Auo4vVs9pI0XG4WugHeYVdvJAzaoWrGIBmY/F+CnvzVBT6wXRRZ
         Sg7dkyBv+rQz5t73xF4xlJ0QTGOcPTe77wUbvi9bzaa/5DSA44F6/Ybte4dLFWC53ul7
         9eMDVmuaE1dNvb5r+cBrE8OvfD2YvrlaTM4KVhIWY/TEwx/hc41HWbeqxKDoA5DsM62H
         oUeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=evUVMFab;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id q82si2088391oic.1.2019.07.22.12.25.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 12:25:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id s1so11820518pgr.2
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 12:25:17 -0700 (PDT)
X-Received: by 2002:a17:90a:2488:: with SMTP id i8mr77101018pje.123.1563823516746;
 Mon, 22 Jul 2019 12:25:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190721085409.24499-1-k0ma@utam0k.jp>
In-Reply-To: <20190721085409.24499-1-k0ma@utam0k.jp>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jul 2019 12:25:05 -0700
Message-ID: <CAKwvOdmRPGAbq29peHXrryqqYzc+6-Ag7+GDr7kYLQihQ0fHuw@mail.gmail.com>
Subject: Re: [PATCH] .gitignore: Add compilation database files
To: Toru Komatsu <k0ma@utam0k.jp>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tom Roeder <tmroeder@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=evUVMFab;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Sun, Jul 21, 2019 at 1:54 AM Toru Komatsu <k0ma@utam0k.jp> wrote:
>
> This file is used by clangd to use language server protocol.
> It can be generated at each compile using scripts/gen_compile_commands.py.
> Therefore it is different depending on the environment and should be
> ignored.
>
> Signed-off-by: Toru Komatsu <k0ma@utam0k.jp>
> ---
>  .gitignore | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/.gitignore b/.gitignore
> index 8f5422cba6e2..025d887f64f1 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -142,3 +142,6 @@ x509.genkey
>
>  # Kdevelop4
>  *.kdev4
> +
> +# Clang's compilation database files
> +/compile_commands.json

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Also, if you're doing anything exciting with compile_commands.json,
I'd love to know.  We're using it for static analyses.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmRPGAbq29peHXrryqqYzc%2B6-Ag7%2BGDr7kYLQihQ0fHuw%40mail.gmail.com.
