Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBAXM77VQKGQELXIJURY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E14B427A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 22:52:19 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id m20sf1658734qtq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 13:52:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568667138; cv=pass;
        d=google.com; s=arc-20160816;
        b=LavszHIaUz3SID28tf56P8kYldjV/k0ENYE1TiLxKcfmbT7qh5m667CYXAemAxIsHh
         1CUZxDAgYL7M5CJ6pdOcxc9IkMLSHVup1YU9OqtCs1TWczBqXcIlhlm8tp2m3av3di0G
         AxA27W32EMl/08tnzyn3ieBFLFMI1c4Yz/Ny0wLXfLzUrqmZUihJsV7zs+Ki/FNIZhFY
         pfwpJsmDk/O2D39lfN6WO2KPZRyf6Bg0XSIW9jPGdsyUutlKyKHgZ+nsemviGCc+kNob
         C9hJQzNeHNIaNpkZK1cawmi6iVgtK9lURtJBplf3I0nSekhz4IvF+0I9hmEyQC4j7bTR
         howg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dNlSIG42MMuhjjiDMpKjuj1iZsimiQFZftTxFYmbVkA=;
        b=tOsvKHe/+j+go/uRsoroJMlBjJHVkSLIFatnnwafojMtv9fcdEU6HxpLmehI58Y5d9
         IDHRpTrcOrzOd4+gwSF27feztC9G3ALg3negkrRaEuRjM5XU4PxNlTkI+EFUeN9oH/bP
         6tRj4AWCkDgfJz4PZxErUcfYpMThBScwKpVvXFo3zdUSynKVbVza4nsQKF2B49Nz5kvW
         VnbRw0fnb9NGQZsGW6T8Iex9xXJmFYdp9LiEjOzGd5w1uHYtgtsgDI3nqNnySMHWc2dy
         eVDDsGyyXZ77kflIKfc5Dr+qRy8/TCVTRD9VxDGS0SbRoeABrjVy1SgzIB4Rz18uP0FK
         dk0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=enkRrJ55;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dNlSIG42MMuhjjiDMpKjuj1iZsimiQFZftTxFYmbVkA=;
        b=oLb8c1/9RBqXfUxzE6mykrawpcMXfv6XvBGuAKXo3f2VFRXiJ9yq6QGgLSLQg7te/6
         TO0om+Ctz1/wzDgUrdwgE6ghGIJLed0d8A9NhO6pugM0fkTi8Fe8GPhPDc5LYAyMSUYs
         yyf443AMnGa/DUy7YdDEMTazkOFwoLwa42sxd/ZxhiVk96oiF7ioBO0pdxA8TDWaO54o
         RIgeLthOfKQcnLzChrnfemAzZv1Ama6yEF714fx9aHZm+Um0G0D8DjQyt2aSgeCIZ9Xh
         740JdF6gsSVAzPdXQbp3wf+GnsWPEHFjS7inYDeQmlBn0CbJ4sF+qxRRkZRu2ohdHjbI
         U4ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dNlSIG42MMuhjjiDMpKjuj1iZsimiQFZftTxFYmbVkA=;
        b=vL89qPFqdc+ooVGEx/rpj+i/ilxP1eJO8neWPJKthvmv9DL/I6GH7ZU5W/NzrNc0Yq
         qqDRVmEpkiXmC7S/aEsU3/t5Y9E8UaMhVKqM5D61HblCPumg8gkU5oeKCyIxWebs4dsN
         bTfR7iQ4Aa9wOBGqxihzWC4YrWhuZ3uW7zJpVS3gsbplCIR8a9wmWz82TIY0UB1kFIb6
         EPRUNOuAZorhyFifWCc/tzuLBa0GgoPoGtvHLXR9mGnf6FKvAOxbRg1wZZI014l8uCbn
         2aLietbV92lN6zQEu6QPNy1o/NyrS2nEF30KZkj9auAYcd23G47cfCO4lqSAY6phkf8z
         NTYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dNlSIG42MMuhjjiDMpKjuj1iZsimiQFZftTxFYmbVkA=;
        b=MbqzXoyHMon/q9XMcCB2c5AWpAyW0kucSk8pTcxMtk/6UlHDUMqokVHnNt3bmYppA8
         4F4m+vyRzHvDWInb84JdAcgZDwqVKi8OlIIT3jYzea1nZcu2OjT+578TyVORdvMsDl5Q
         oHSZ+loOXRq1UXtTvNaXXKz1xApy2E7zceREYGV8jaI4nVFdc4gDxjI5tzn3dmqDbh+4
         AVzJTjKlkGnm1ucCmtO6O4tMTPeJc2TbJDeRCi9BukgvI+VOlCKGgg7n/hI7YAxHsYOd
         Dy7b1e6WhWJB7NWkX+yOiMB9g+Z2jKvibFX3P0am6MkZkTmFq5ia/+RBOmdPexl/p59x
         APCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9YGkNTWdrvfNjxDByeqIUrcugqFHdBkqobpu8g158AhclMSv7
	DQ/0jweBNyDGkznUcbJ5a6I=
X-Google-Smtp-Source: APXvYqw+7ZYzwWjY5syYjM8FD1TrwSoANFTi7aOkv2U8dqy40nChOYJI4+Exv31HvMvDLwSRpRbi3Q==
X-Received: by 2002:ac8:fb4:: with SMTP id b49mr315851qtk.203.1568667138174;
        Mon, 16 Sep 2019 13:52:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:496a:: with SMTP id p10ls193033qvy.15.gmail; Mon, 16 Sep
 2019 13:52:17 -0700 (PDT)
X-Received: by 2002:a0c:bc15:: with SMTP id j21mr228421qvg.234.1568667137781;
        Mon, 16 Sep 2019 13:52:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568667137; cv=none;
        d=google.com; s=arc-20160816;
        b=LJhuxPm/AShdQZYlegEVZQqwFS+CyswYt4MMUQ6BaHpptn7V0L8yRXOQBpA09svpb7
         dI4wQUmlVh1xJoIOhNlOgHMlphSSOapA5BI9EbQFhJgsb/l2ETfBvM5OvwdJjluaHZNb
         YKZIwzTycfRPheGrEEmU6qcx15ZBglyoWXYc0mbKpeZsTi3UBrQRJ1rZ1HQYa6Ydb+Ya
         bA05fnNwhifvhgtS5kR9ArAMkOPLTlDeQDQilorLElsO5hgj1cLUAns9Tgoae+SEVmwX
         R0znPDb650L3DlTFZV09UlPcBZGQLj7hkMbiGq+JhCf4esFPYsINrDyM1MeBdhuaHwPD
         qelA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5E9DgtscC1GCtZrAXaWV/e6LeSvuqfRExaR2l222qbg=;
        b=yLy4ih9X+rRFnYWHJ7BNi4/NKMVY0iOJKfsOkdD7BW72xo/Y82j+L7p1F8Tse+z6UH
         Ws0KITZQxytqlrMpruimZQf54l2pgahv+FaEZo3cWuH9J/kCTjQdOHXszzc2uyjewr3y
         uKQjgEGsioxP93JlbOGO0kf4eYleuyo+194A7vB3Pi3G1mkEeLxnxqBwGr2smS2TNrz9
         C7FnD+Yf76nc33sAP9IV1qLH9HUX7XVgHD+OxwNuYfsSUkd7sf0JLmVpS/ooQ6xvugog
         xPwyi1KiedWI1NFqzf+fMk2b/XOT/CqI4ebUXU0WKtOk3Lz8+rgCgInaFqiKiiLnzogG
         MH3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=enkRrJ55;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id w41si41759qtb.4.2019.09.16.13.52.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 13:52:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id c3so1562953qtv.10
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 13:52:17 -0700 (PDT)
X-Received: by 2002:ac8:7401:: with SMTP id p1mr324627qtq.141.1568667137518;
 Mon, 16 Sep 2019 13:52:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-7-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-7-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Sep 2019 13:52:06 -0700
Message-ID: <CAEf4BzYvt8=mnvo7jrSKhuHg-_kunb1F_F3g8hhwsZfWExEFPg@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 06/14] samples: bpf: makefile: drop
 unnecessarily inclusion for bpf_load
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=enkRrJ55;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Sep 16, 2019 at 4:01 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> Drop inclusion for bpf_load -I$(objtree)/usr/include as it is
> included for all objects anyway, with above line:
> KBUILD_HOSTCFLAGS += -I$(objtree)/usr/include
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  samples/bpf/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index d3c8db3df560..9d923546e087 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -176,7 +176,7 @@ KBUILD_HOSTCFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
>  KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/ -I$(srctree)/tools/include
>  KBUILD_HOSTCFLAGS += -I$(srctree)/tools/perf
>
> -HOSTCFLAGS_bpf_load.o += -I$(objtree)/usr/include -Wno-unused-variable
> +HOSTCFLAGS_bpf_load.o += -Wno-unused-variable
>
>  KBUILD_HOSTLDLIBS              += $(LIBBPF) -lelf
>  HOSTLDLIBS_tracex4             += -lrt
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYvt8%3Dmnvo7jrSKhuHg-_kunb1F_F3g8hhwsZfWExEFPg%40mail.gmail.com.
