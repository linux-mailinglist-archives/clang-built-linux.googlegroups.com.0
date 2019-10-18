Return-Path: <clang-built-linux+bncBC2ORX645YPRBWUXVDWQKGQE5PZYQZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E437DCEE1
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 21:00:44 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id o133sf6515436qke.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 12:00:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571425243; cv=pass;
        d=google.com; s=arc-20160816;
        b=ERn6L5AQ6PB04H3mZhmCPcuVP9USGbx5sICtBnpVrInkfo16nqwoSc8g+UpWahBYc5
         PH1OdHXAT69yluD1U7Ye1xCiXD1VNI7fo9XrHieMMrTideD5lhBT8sC63tBE9Wokb2jR
         hjypGlt/b3XXpI1Yt5GZivwLvcPn0StIouCv2Adjgzf/uaY9tD1VKSb146hzqcVqzhMd
         GzOTRUuj5jOCDJnkSFzbiDdJQXIG1JZJzxjE0j+CxJFLsx4Uys6oeWNHO0bfn0+UwnEa
         iTR3qtuHTKewtROPV6a9HoUqSXaKFNEoUsS90D2UmzyWLqHFkOYWadEfWUwxQUGUFlYD
         Bd0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4qCzCvK3XEPKb24bc+XXhnP4ii9iNdjgG1AjPqAfjBA=;
        b=RQnnP+pOqejN+fWKybFQLuPXMajmj5VH1AAgXUN4XLFyZJTXKEgu/1yTYlfu6mmTGv
         fOvi8kUPKf8jZJbBavdg8EQMKfQVsH4L5nib8t8VmCYjGR69Zror6SQT32bWut8xViMh
         KoRsy+LLQ8UhTtOvhrPSbyekaRXII1K+bsXzkWh4XNXy1jXr87HeND+6Y5uD9MOVvRV5
         YGONcYqG7/XpQzv6xwQw14LQBKcQFaggCRfcdDselpNhVU21/uTJ1w8X0gnA7BrRGWwH
         CMAn2Y44WAKag4Nd7BsGyOJIT24rCSRgcyslx5rH+j/37kN/CJjylJYzhVTnWSQavrgD
         EE8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fGjlwqaP;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4qCzCvK3XEPKb24bc+XXhnP4ii9iNdjgG1AjPqAfjBA=;
        b=aeV1zpw8yRrGpUNoaPMxtN4NhyMF/1dv40xK2lWKnxpdQn0wOLdyoeQ6l+JStIjKU1
         VKx8B1Re7dxBWBoKawpCY8cWkxTSfyU1TT+eMkqbwxqDbMahcAUVF1E2N7G9XW0NdKPJ
         D0OM/qIFUyrtjg79+agaetruL4E6oPUXbOCBs55yX8/7phLFK35SeUlvJnBhyxLSA1iR
         oVysQFMk+c+B0gNIH2pxost/g5nA9r2nPen6MBFtq2Tg0JNSZLbU5kzYKbUg31IXK+Ak
         FfAPHSuMPa9iIVfCEOJcpNEFwruHxpaISPIzDqCeeYYPswYsQAge3bZk1Egf8g+gQfj4
         mlgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4qCzCvK3XEPKb24bc+XXhnP4ii9iNdjgG1AjPqAfjBA=;
        b=fg5YVYIqRu6tHJp/5H8RUm6p96pmiPgyMx4OHxQ8gaSuLrAAZ7hdfSE84dRVCck+2w
         9VAljoW3F+cDQ35WC1yIFSuUXpgq9xjMid+EyMp4VYGUMgfF2FFt39nb1rQUBsTH+eps
         9T9zVq41r9GxMTQ/2gljqqZwx9sHP2CmhO4Z9i2lcMxKrR4BwvTFI2OgeUe2QqR4MVW4
         Zt3OcZ7p1HBaXHAH4Vec/MKOslgHHlsVz6QNb5IRBDYwzb9zbgFP5JFFdHbvFEP9KdHJ
         skBsg4gxMn1nBweQdSaaBHuDILHlQlQOLF/KTw0F7f/ithWjust8LbG0892HYnCkrhoY
         7TrQ==
X-Gm-Message-State: APjAAAV5WaCKRjfVU0Mr24nG29ZoQRdU75km6MGIlvVbgNF0nnLJazil
	fEoZgmzfBEPfRcu/0HePpNg=
X-Google-Smtp-Source: APXvYqx3OQ3jR9K0sbidtfNg107AbbEVykBIE4IF3yHHOQsfnwHeAyyI+aTHtwq8dNcDz/c6vmjqww==
X-Received: by 2002:a05:620a:718:: with SMTP id 24mr10169540qkc.157.1571425243041;
        Fri, 18 Oct 2019 12:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2c55:: with SMTP id e21ls2222256qta.1.gmail; Fri, 18 Oct
 2019 12:00:42 -0700 (PDT)
X-Received: by 2002:ac8:2e61:: with SMTP id s30mr11768012qta.251.1571425242651;
        Fri, 18 Oct 2019 12:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571425242; cv=none;
        d=google.com; s=arc-20160816;
        b=glBigG8YT0r00It70olYCa/4oCweMzecxPMO4ooE2TVThDOLLbpVMdT3gHHgDT4fOg
         MWvXpeXFbzjhN5bIOOAa+3JmgMCvjmV7Wb9FL+UcPdrEsocaiF6mgB6lLn7rNd7Zlz7J
         c6ixQ8H3OEOI9E2xQK1ajvmM8MlCJU6ul8zSnnijk0+Ow+/KMGfXQr4XFcZac0wFGk62
         rJKSZ9b/ZYRl5MVGJvon9WJGrJg7f/kq50y1er9ZqxjaEOOmaLvmxDxUZNmcU0WWzmi7
         FV1Fd5IRGf5XR7ycuqpGytA8WMN6M+LN8WoERsqfgFlj+9eiWkPx/WpxB3shRnmwHQTZ
         4ltA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dHnooVFY2SD/hhEM3K3r0PH8N73JFv2NbOv8bRM4m2E=;
        b=gSmlk1WEXLCtujpMaKICo4txpdfg+ROZc69ihiZAELa0IFZXzwvztV0w1PoRerQAqq
         gJRai7Yt8LT7+vvvGaUwqNZxxGH4jDEiTg3Sg4gEE8uKaFCcpVUkMg9kLOV2Wk6gdULw
         /dtz1/ISJLc+aFhHRxCMpnWKzZ5RtlOrUdoT+GjAc+sPsDpfP/EiY2aLSc5TQNx+L36J
         zPLf5olA4g+l7mAcP6jVFDdV/a+JBmLlPVBnR8T335CDZm6vH6Uy9jRZa3+v7chrSX6P
         CCzKo6H/sf/9Qo7pQCLH4vCoZPCRs6I6nbopujJ7SwQhDQ8BXgGZnc6riZT6rrKJuiqp
         2LkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fGjlwqaP;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id l189si312145qke.6.2019.10.18.12.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 12:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Received: by mail-ua1-x943.google.com with SMTP id r25so2048363uam.3
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 12:00:42 -0700 (PDT)
X-Received: by 2002:a1f:b202:: with SMTP id b2mr6191356vkf.59.1571425241664;
 Fri, 18 Oct 2019 12:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-6-samitolvanen@google.com> <CAKwvOd=SZ+f6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg@mail.gmail.com>
In-Reply-To: <CAKwvOd=SZ+f6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 12:00:30 -0700
Message-ID: <CABCJKuf1cTHqvAC2hyCWjQbNEdGjx8dtfHGWwEvrEWzv+f7vZg@mail.gmail.com>
Subject: Re: [PATCH 05/18] arm64: kbuild: reserve reg x18 from general
 allocation by the compiler
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fGjlwqaP;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943
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

On Fri, Oct 18, 2019 at 10:32 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> > and remove the mention from
> > the LL/SC compiler flag override.
>
> was that cut/dropped from this patch?
>
> >
> > Link: https://patchwork.kernel.org/patch/9836881/
>
> ^ Looks like it. Maybe it doesn't matter, but if sending a V2, maybe
> the commit message to be updated?

True. The original patch is from 2017 and the relevant part of
arm64/lib/Makefile no longer exists. I'll update this accordingly.

> I like how this does not conditionally reserve it based on the CONFIG
> for SCS.  Hopefully later patches don't wrap it, but I haven't looked
> through all of them yet.

In a later patch x18 is only reserved with SCS. I'm fine with dropping
that patch and reserving it always, but wouldn't mind hearing thoughts
from the maintainers about this first.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuf1cTHqvAC2hyCWjQbNEdGjx8dtfHGWwEvrEWzv%2Bf7vZg%40mail.gmail.com.
