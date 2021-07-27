Return-Path: <clang-built-linux+bncBD66FMGZA4IJTNMBRADBUBE6LKUKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5086B3D7E4C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 21:12:26 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id ne21-20020a1709077b95b029057eb61c6fdfsf57318ejc.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 12:12:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627413146; cv=pass;
        d=google.com; s=arc-20160816;
        b=ptqdHp3CGlzySY9TyoOOL31flTCOsQBfu49e7oocchZJraHpoa5c2cUyVi5U80962a
         hGAXlkgfQV8rQFeudYCKlDAg39eoZeWXk+TAjv8HlHa6GwgPbBz0IVjFTzkCf40JGUVb
         D784oPQx0RRhO5epG2RRHrvEkozxyzHvKHgPkYMIf4Wox+//bEJ3uDJ4Bm+HZUJOkr31
         uk+Xdu6JSi2CV/bxNGQ+Z3rgnYaIcVOQ/i7C0W9d02IyECvngT6xyQloPCNNmO77u/BV
         ENPgGXKIyGYUVUKmgPqonbJeAu7Lu7Mh10hmX+pL4Mhmk69DvW+xR4df0mkoOE5kliCk
         r2wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vYuYbjDXusTJYbben4sg6dlvyyjG5LjOwIpJ1o5ccKM=;
        b=s2m0OQk76i015NLMg561zmpKCh5C6+wD+3DjUl4GmUK+GiVLrq4u4tzD4AFShUl7IW
         V6QjgbtagYAXkvGd1Gvlbgl/j5DkafciBkMnVyFtAgug/EeKT3VwljEWxkoFjOdZc+mA
         qkh9IrmGwLHPm3h79XlYp0GY+ZU0O3mMnoiOh3Tc86slUKiasTsBTh/Wse5dJEdtrBwH
         6Dgt4mkhfDBnIgojjfmJoEqX9fAyC4y2NseNvalZCV7SqR59uAqkmO8W8mGrtzGv8Z4A
         UXTQU2Fm8y4Ai9vWiUn3Lf8e904u35yyFxQwT15Ay9NDh87XXe9yiQw8q1K2Ll66nLqB
         +/JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DxveKnIu;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vYuYbjDXusTJYbben4sg6dlvyyjG5LjOwIpJ1o5ccKM=;
        b=CYlGIVO4nVlAa4RG0X8wYv3eF158lxanB83Nwd8bkI8B4R9iCmZLHlCO/3oZ1XmamG
         /IEEUnqu/f8CuuYx4csgLhqozOTlHVI1uMNAqPsoIBKiaJNoQAJKrwdCcRW/nFHXwYvw
         52AzZ5r99stPo0NKNLBXOkVXNyhpEzfNZ4+U1oDrlayYjZ/Ld7n83/DwN8lo7ltgmeok
         2qaJOg6pycHLIQaRhe3YzKLSro1LFoySiAM/PsNmIA0PJtJMdaV6XZeabsc23pSnSGBs
         sZ5hnF2pS9RIHthtP6jF27U9qsOTsBybLesEP0QV7M5adi15e6lW/TGpZRsuAnf2VTz1
         FFkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vYuYbjDXusTJYbben4sg6dlvyyjG5LjOwIpJ1o5ccKM=;
        b=PvkAkS7wJ5Tk+F7efFeCF5m1dGP/X3we8cDCpy4HniMMmWR3NdAHo9cWFQ1e3t2fK7
         P1GC+JZsGEc53Q0UKKKBJuJuwSwVlQc3oDy+teGgkYyv0iQRUmsDJpG1ooRShFD2ek5j
         8XLN3enivI7+FrxpWddaqsrXdP6j10y8mtNv6xITFUzuRrEtXP7wcBhWoHXGa0ujhZUp
         VnEXWiSZsfSST2sYxBW2IdRNctIZ5ND4Xnvv2vmLDlyBJGGcbIzZY6zeBPoiVbN+BygY
         FSHOWVKHN1xE/2nCi1e9eXJm/rptHpJOj7L/z1PSVwCGls9W51aNnGUiC+Apfo3jPob/
         axHA==
X-Gm-Message-State: AOAM532GvyyK/A4z5UAKPAn/vNG70zTmFQSPITPU92KQD4dx9ePhIPRB
	LZ7UuWyC+J96qWRGKX8LlFM=
X-Google-Smtp-Source: ABdhPJzidP32arxcgEzG/oQHR7CB+IHSVFCrgl7B4iP12Eo2q+p1NlGC8nqLDjD4AZwRfkK0Kk5nGw==
X-Received: by 2002:a17:907:2719:: with SMTP id w25mr9278072ejk.239.1627413146035;
        Tue, 27 Jul 2021 12:12:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a205:: with SMTP id r5ls8737404ejy.9.gmail; Tue, 27
 Jul 2021 12:12:25 -0700 (PDT)
X-Received: by 2002:a17:906:2bd4:: with SMTP id n20mr23551896ejg.390.1627413145168;
        Tue, 27 Jul 2021 12:12:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627413145; cv=none;
        d=google.com; s=arc-20160816;
        b=ALQSiGB8vc6bWIm+73mGOdB8Ult0JIJqncV91qAkUWfF8UKQNroLYuwSG38HHtzpwq
         CJqcu8VeLv4sQTP05hlBShwZ7TgR1vRADdXbfm47sfI989lXgh+SJZu9hLf37zUKOIlG
         m1MY6F4IOYoR3ihNLoKc1ilGlUrA+Qrd7zN8qR5kfn4IHNJFesjTO1WspEqPty06QMeS
         VVne31DVMzxRYxw4x6F2QjBOwWK2VuBMb0560aWvM7MVYCGfjpurphPCKB/4gcVHDY+G
         hHZ+zENdG6knc7j4PPLXE6bufrUMBI6HZyfuSVnjva1KpZ+uRi2wZZ+3eNp+hGwmY1r3
         +Jmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sRkgBmb5lzfe4Hlal/Pv7E6WEWM5a1jmj8pFy4dSgsA=;
        b=nm9EH7El2m5hLjpggvW/LzH16prfoYTAMCr+JjUgoE1KfLceXHJVWwyBgIxsRqVeAh
         bbBF4grzeRWrV7fQK78/MeLSIp7x9pIXgwF2KRrIgXWDmp4LWuEbsn0CXc5cYDQxHuOE
         b432cz1yhqKkqfRyp3diLI5FPmZ1yS57AAYHomPkbjxDxdW0Lg0kbZuiWPb8486cO5aJ
         pQxGSIOR+ZRq4I34dWx5YCWd7H1P3y8Xj2UEYny2kFGDUMdvrTNqdoVxzhaUY7mHy5Pc
         5murQk2JSdgS7NmZX6G/d90mnMnk+ZmCYs8RUkumBXMLvYlUy7SMYMnim8Ydi5iZ7+YZ
         XT0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DxveKnIu;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id d26si220726edr.3.2021.07.27.12.12.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 12:12:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Received: by mail-ed1-x52c.google.com with SMTP id l6so14843502edc.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 12:12:25 -0700 (PDT)
X-Received: by 2002:a50:eb88:: with SMTP id y8mr12668309edr.70.1627413144739;
 Tue, 27 Jul 2021 12:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com> <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
 <0fcf5740-2e0f-4da7-be58-77822df54f81@kernel.org>
In-Reply-To: <0fcf5740-2e0f-4da7-be58-77822df54f81@kernel.org>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 12:12:13 -0700
Message-ID: <CAGG=3QXbnK7q2JOkXre5iZLjK3DLUgb0ACaQCZsr1_98unumag@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DxveKnIu;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Tue, Jul 27, 2021 at 11:32 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 7/27/2021 10:39 AM, 'Nick Desaulniers' via Clang Built Linux wrote:
> > Isn't -Wunused-but-set-variable enabled only for W=1 builds?
>
> Maybe Bill's tree does not have commit 885480b08469 ("Makefile: Move
> -Wno-unused-but-set-variable out of GCC only block"), which disables the
> warning for clang just like GCC for regular builds?
>
Ah! I don't have that. It would technically make this patch
unnecessary. Use that information as you see fit.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXbnK7q2JOkXre5iZLjK3DLUgb0ACaQCZsr1_98unumag%40mail.gmail.com.
