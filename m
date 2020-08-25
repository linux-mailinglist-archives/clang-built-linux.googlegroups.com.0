Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBIOIST5AKGQENMPSABY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C24251B19
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 16:45:54 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id w17sf15079820ybl.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 07:45:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598366753; cv=pass;
        d=google.com; s=arc-20160816;
        b=YPWp1xTuzDxYj2IuDnpduTiVoAlkwaEPJ9SA3bcZHVfZGQL1GmCdexmKSgrHAm/Fzd
         yDlb4r/rNGDOyJfoiGxhTUks8AOG7XYkwTGbwlyp64raBTGFml6CM1z9MrR+sP9YD3rX
         wDNE8SBTMT2B65NEMYM8wBvqIJqDfl6M7ZkcreNliyQ0aHLIoxP2SdpsSjLEHEMYRHWi
         IVwKX8qOMvaTELAJnrKtKc627oBFM0c7wtuo/KcQkEPymWMLVhQSsdPUr8zpLcy2uXMt
         Msn9cMLY1C7UigneV8y7l5XakOpMwK3uDVe4Et/JWgleA5Klz84NlKTaY9/fdW6BJ5iC
         Uppw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=stbEl6u8S1ihx/m0c9twk9E/l9ywDaXzqJzWVQ5/s4o=;
        b=RWXmyblZ88IkufY2QQUv9a+1/JVxqithT2joXfzHIbZBF2DYvLpMy526guLcbYlijM
         4sJ7MXm6gPJTlQuG8fIEu1pdnHRDUlqD260vJzVyPLs5SYQcSqesQ7ybiAclIXxuLAdf
         ih23YwR2ITVvHiQ3WV/U0/sX4iG5spQnNNKzzyX+QsH8mXN5pSLFxTM/RV4Nv3UkI2sI
         RMt2uhNd0IILWlUgP2fQT4/rlWJB5VhtRsdD9O8E2O5j7K2F77J5ajEw1DNbZo968asr
         fFDaEzHdSDiAoiZd28YElO/x88dHJG6IVpJorx0arndymlldtdFixoB06bABfK+V41jD
         /cYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="T5O/tZUp";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=stbEl6u8S1ihx/m0c9twk9E/l9ywDaXzqJzWVQ5/s4o=;
        b=mOeq8uGIABe3wAdOC/uNU6/sD5A9J2dKutQiFj0fQtcNjEogju14+iCpYqxhJxcTlT
         Q+vJ0HenELFDbWsUebR5LnimolIBgQxojwKnVTNJSlUlQ3XqAqYs0KR+pGSWXdWnyMF7
         P1qwFQkOhmAZs93aNuDxxXISzH84tLr6N2oE7EwZyF8DrjBmVkO8shPUOe+SZWberW28
         Md05XFlWl3fojCf8x7sOJrg/E9RBLW9MxgRvC2j87hzGCKGWGCv2D03ZpNCMGDcMdJW5
         lefYsmMropD57oQiUBVOCA//R3XB3XRQHOIzR/des52d60jFRy5va85yKkajDkywhhQu
         y9Bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=stbEl6u8S1ihx/m0c9twk9E/l9ywDaXzqJzWVQ5/s4o=;
        b=Zx89paTPpUDaTvFtak1mJawUNDnl8kakVxp869Wt2hfbYeHE4/ODPFs75S/D1AYIon
         JgXgjvy8NKC7wap9t615iR1zqmjcqU+KclZw5hXP2mSu9UWvuigF1rLDYjgDqpu3I6t6
         RXm9x7rpSjyO2eGfrR7a4XBC3BIoGhvKk483RUHUxpTDAf5MietiaJWJC62zX5YekB0p
         2OP+YrzlfhiqjSQGRvyC1o2A1KihEAB87nNsFIjofZDbTkykZBUVaCjHvMnO3ZLtONhh
         DyKvYGDYDZMFaIJ4UQlEXoAOI/XQeoDbJcAqVOrBcZemQCDp6JvnLwfrM8QWXsA28JFL
         43Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=stbEl6u8S1ihx/m0c9twk9E/l9ywDaXzqJzWVQ5/s4o=;
        b=IaiBZMpVEc+uNKJZC0hHxgjo9CQrdCrEMY0/5dcjVpmWdCKblrBR9F+vAqwWk5cjER
         Zp8dsdLQ+Gc3WG8uqRBX1lBJOs7ttQMH1UDQcuFZkiGunMnY0sxM5eeqO4FaNmiqxBsX
         0h6jc5qa/Fqe9wAY8V3J2Fk5JMbVUDW0PGXCp/kO7WgikRf86UBy7e9i2MfkxOE4Otkl
         ifDgsUMEMhiO4M9E+GtrQq1lun9TvKPZRVkeuq4ZdDlLPuBUxZEmIGbUJlNo/D3inYYY
         Qg88JiVbD9opwBS6Tw6ZVUa6Cb5oea50v1/TJJzG8VOp9QK6iNzPDoEzeMB6etObLnov
         i3Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kNCGUrpv/JHxYfMe47rg9R9kreLHRelXX8pDE/sphQMjJo6Ep
	UgA+bNvsAbvobB9s8nvroFM=
X-Google-Smtp-Source: ABdhPJwsRLqb6vZcBKLyG2YfwNT9sHjs60h5yvPy6N/FsRmkXymiNfumEDnMnDN3/EDmqncqg09ItA==
X-Received: by 2002:a25:5f0c:: with SMTP id t12mr15078568ybb.54.1598366753401;
        Tue, 25 Aug 2020 07:45:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d451:: with SMTP id m78ls5362220ybf.1.gmail; Tue, 25 Aug
 2020 07:45:53 -0700 (PDT)
X-Received: by 2002:a25:9843:: with SMTP id k3mr15194700ybo.466.1598366752931;
        Tue, 25 Aug 2020 07:45:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598366752; cv=none;
        d=google.com; s=arc-20160816;
        b=bXvD93SXsbrfc+ZBp0glIi2MyPfa+5Glb0MPjwclZFQObZCkJ95UNxwYBtLaz8A01f
         0efw77ViU6WpY0HK1Pd8zKVSTwIW/qAiGHoKkuOHvYgGY27wzbtJDW658yvWSgAZZp3D
         My8O0Zjsr5e9yQloMAb2pK8oQT3SoJqcLcbwq7qupSmIFEN2VCeWx11hk2Izq0TblAp0
         RYISlqzD0Sv2X3//mJne1qCkDlKcVTz3KnhxlCW6tsOdHEqqGW+tZ8D3ElNWWqFvFETn
         Rc/lKwD/C/kbFJNnp7Sno0B4mdeBMfekIMln++k17oaxkGrxEC9pcy528snru+qpGAFY
         2cgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VTr+UBTs8M83B6cwmjPIyb1RPvibp4IuDq2rGpbu+JE=;
        b=U+VE5xmAkB6WM3736mLQOHxggAoMeLNFf9EaNZImRBz9DOgrkfIP+0dPbBdwPfUnLC
         KZbNxe7BYKMs+B5P6nsRgO933BmRijBmPdOMcCLOpGJ0d8z0kkTRGNx+gmSdctXG09uU
         XRzgQnK0PCp2sJ0q7Luzz0ivLoCievtl1IUuhdr20BWTzsLcg4VMIlSm3iCS/qEXDIMj
         uOCplFSZKR4gqZF/NtvYynZwJifXkhHaBOiNVj6MpQZouXYTX9ycAyyUU5FVHMR0ptnA
         PGWAquVc4wl1IgSnUTtXYyUhAhcFK9qascLgOYJPAUMA5JO8wmAuXqU4oUfOTvqj1x5N
         tTbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="T5O/tZUp";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id i144si701501yba.4.2020.08.25.07.45.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 07:45:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id 2so6289876ois.8
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 07:45:52 -0700 (PDT)
X-Received: by 2002:aca:acd5:: with SMTP id v204mr1196935oie.35.1598366752520;
 Tue, 25 Aug 2020 07:45:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200825143540.2948637-1-ndesaulniers@google.com>
In-Reply-To: <20200825143540.2948637-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 25 Aug 2020 16:45:40 +0200
Message-ID: <CA+icZUXt4F76TaOxSc1=pVunguxqvYWe7+ypwsS4f=uwc7A=EA@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: add LLVM maintainers
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="T5O/tZUp";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244
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

On Tue, Aug 25, 2020 at 4:35 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Nominate Nathan and myself to be point of contact for clang/LLVM related
> support, after a poll at the LLVM BoF at Linux Plumbers Conf 2020.
>
> While corporate sponsorship is beneficial, its important to not entrust
> the keys to the nukes with any one entity. Should Nathan and I find
> ourselves at the same employer, I would gladly step down.
>
> Cc: clang-built-linux@googlegroups.com
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  MAINTAINERS | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 33aab0c88118..0cbb24753153 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4249,6 +4249,8 @@ S:        Maintained
>  F:     .clang-format
>
>  CLANG/LLVM BUILD SUPPORT

Congrats!

Thanks, this was overdue and requested at ClangBuiltLinux Meetup in
Zurich in February.

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> +M:     Nathan Chancellor <natechancellor@gmail.com>
> +M:     Nick Desaulniers <ndesaulniers@google.com>
>  L:     clang-built-linux@googlegroups.com
>  S:     Supported
>  W:     https://clangbuiltlinux.github.io/
> --
> 2.28.0.297.g1956fa8f8d-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825143540.2948637-1-ndesaulniers%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXt4F76TaOxSc1%3DpVunguxqvYWe7%2BypwsS4f%3Duwc7A%3DEA%40mail.gmail.com.
