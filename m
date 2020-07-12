Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4NBVP4AKGQEA4ZACOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A64F21C827
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 10:59:31 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id m78sf1791201vkm.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 01:59:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594544370; cv=pass;
        d=google.com; s=arc-20160816;
        b=QjTlbGAE+jQ5BwAZtYHy6uVWTfMtbr4644+3Pss0KbDOEHkdavdPbropSoXjUx6w2V
         tyfbUsuUcxTxb9MpNRZyEKHRWZgm1w5I/TDC8fVMCBbXLRREo5L2GYSyYY1X3drTD7/7
         4g0U5UEesFv/i14G7s5cSycjZTLtNDilKX9xCP4Tt51kXLBF6GYjTynkGi5kLAlbbrQS
         mhe8LCKpfTCAhQw7QRmJBW5z1LC2/B/z6CaI6zqg2jPCmv8XghSA+ZEAjaKCvNEX0qHu
         RIS+peVO41ByXnd6H2y4AfCazxEp4O6+LOZHtRhEWFpgMv6jDnP2vFWDCOH4sEoNlFgE
         wQYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=ATRMsDuXroeW0dejP10S6UasFr59Wo7UIbNfX7ZqUGE=;
        b=MnoEDZVTbCVi//NxkHqkjuaW1Ruh8JxFEnEY5XeAxPJYPSBd180GZTg2Bp+nrKHIWs
         VRN0hLLLsRLNcQjoCTZqcEVlvQB9g0GiQdVRIiHoxFWAmu7PMyER2q7YUdZf9PjSXXjB
         JNEBtwA598TWn2DqTfFerDyBdDIzXRTIC9aE6T5HpMiOBW7XtyUgAqqAl/8KTD+STV6N
         kRWpbXNFN7Qew+J0EZsrzYW5KxWJxPF5pwQNN8u0KHsn8r4pX3yGZka0qwaD/hVGjSUV
         5h5YDfe9QPtXWONw4uTc5wv5xgcwgkWi6ptTB+SiqRdm0GDvV6pCRiPeV55FucxZcu1V
         IqPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=et8c4srf;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ATRMsDuXroeW0dejP10S6UasFr59Wo7UIbNfX7ZqUGE=;
        b=dtTvE/+8kXMV+VATYi8/6V0XRQh1YqRm7kBnAqt4X4+djpbgB1YATIAUw8RbBsPJS1
         E65c7dZYhZXVc8VygY1pX/sdsaC8hbpOUXeNS05QFQzwpniDv1LsW2dKYJmjpgmp5r+M
         8zMeOi2lh+kIAX6yMGGgjVgj7QaEno9kwOL8LoPnfXaIrodt1wy82O8NV/7vPs8hQT7C
         DJrmIUrF9uGoOVYsU0TQM9n4hpqU7B/bpe/Ss0p/FNIc68kLFeDRq4xyvk/V2WfEMZwT
         hinnQPFxGvMfwjxrIkAqWeMYw95P2vz+we2++F6gw4eR9pScSYYkOKqSa3fEEi9XIngD
         YGPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ATRMsDuXroeW0dejP10S6UasFr59Wo7UIbNfX7ZqUGE=;
        b=DkD+0xZjRdqWES+V5ZP4Gog3KF74IW24xojTtsC35TNKz5vRU8ucF7UKStBBsSwHk8
         aaUc5cu9C501EFh3GrchqaM6ff1GSP4nYIG0fIwJRjtpeLvQXFOMejePHmuSaDDLp0Wz
         Q9mT4OOHEVK7EimfYqnZawte3/rN+jXfuWHBaxN92rj2qPeo7RdTAs20aJtoV2HdOdcB
         qt7qRn69fhTAnu8PiKgsQ4M9het125FUP3/leOJm3essUbWGPevo70l8vXs5MG5z6Rrg
         tqs9kcEiscThURw9BeG6MM7uRmSTrt6bOb7riDVp+DSKR9qI2n/DTtF2V0c41g6cRtry
         Pkug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ATRMsDuXroeW0dejP10S6UasFr59Wo7UIbNfX7ZqUGE=;
        b=lhKJT7te0bcofslxxh9tb1NPxEDQM/8jtre+HfgjvAelc7kBSjfODqYXpr8rMf2yGb
         eQSg9E+6FOrSC6RAG7EGaI8/2ELP8lfZ1VzGO7bNGb3UZ5YzYDnCOSUs0gpNZni9MZv9
         xZln03LqNaVsKlT5fN/h8j7BJRddG6QxLPwcilg6w2fk6MMT95Ukf/oG5QJlOSth5Hji
         jFzfklb2Gxq0i6sqi41B/8djxvOg468I68kkkNgDVm41iihh/8DMlAdxmzC6s8+LGN96
         678qVuAt3f695dz91X3WEaS1OGuXHk/Qi/ipJxcvMq5EPcJQECkwaKGoKW0IR5Vsw0Ur
         XaUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yg597cDfDNMz1X97Y21IIF0woLX9F077bCxfPk2UHjKN4qTRb
	I4jIRm4jqxaNhmqGXgTsQeA=
X-Google-Smtp-Source: ABdhPJwkOq2cn8xoRXe6QmTXqOwY8AT/51sYN6C9mmVXrbgEV5+XxVouaEhwk0P6kvCA07RQjpsWIg==
X-Received: by 2002:a67:ec44:: with SMTP id z4mr47629377vso.230.1594544370017;
        Sun, 12 Jul 2020 01:59:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ff83:: with SMTP id v3ls1595828vsq.9.gmail; Sun, 12 Jul
 2020 01:59:29 -0700 (PDT)
X-Received: by 2002:a67:ec44:: with SMTP id z4mr47629368vso.230.1594544369672;
        Sun, 12 Jul 2020 01:59:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594544369; cv=none;
        d=google.com; s=arc-20160816;
        b=0A52FNMJ0eqP4VcFp2qFTTVt7M0XVLaWGDUl9T4JGNqPOb1SF9l2FOX3+Ryd+qNFZy
         CNCVX/IwABuSGnwZcHBmaaf6DPJBRIdk2yNQaVASiDBDq1SW/hqqZgTKkaXrM12CeIAe
         zqDyumFpMNN4uqU/MhcQMCzVDs/2ous8yqC3VRinIqnM/lKf+45Kj5rAKPazi8su802J
         /TfBWMpquJDJv6/gaZbXlrXWmifwCEJd3n5YxbASKBIE8hMQ1KFBlLTO+Y6riIpBsTNj
         8hcG6tfY5l6mXsKsJuY1Pvw+m/l/s2lumRHO047w7hoU+B5xxXpe7bV9OWYgIeUxCdPi
         DqHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=+Dl8Q1XzZiYA4GO8ZZtoY/mYTNvNLG4yL/TSgXjOVXM=;
        b=G8hlIQYitPw4m35hFAZcUsZLOhaK+uEqFyNqSjTNScTutakx8Nz46AXq09WY4wNwSq
         nMzDywITZlcNvWzHwWFn4rhGSEEGq1PVdIFsKdkIIixoC9s4b98FmystCcvEyuyejxV1
         ETGx7jyi+k8hhh4irovqlSM9A0K0fs2VPzN9aSzbWGBYszGiBmWm+Dq5p6fk/Gq2OKDU
         FdCxSm95U3PIoxk80ZDc8AS+SJeywQbjjn+CP+ml+YX6d5CrBv2KwTva7QMr6Ue9lKqS
         EjA8sIYZCvSj0mUnz33Zq4kxDixrNzA7SwoFM3Mbbt1brXjeMhe28nI0ZqlJdDXFrFMB
         tJEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=et8c4srf;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id s7si420736vsm.0.2020.07.12.01.59.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 01:59:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id f23so10411197iof.6
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 01:59:29 -0700 (PDT)
X-Received: by 2002:a05:6602:1555:: with SMTP id h21mr6773338iow.163.1594544369052;
 Sun, 12 Jul 2020 01:59:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <671d8923-ed43-4600-2628-33ae7cb82ccb@molgen.mpg.de>
In-Reply-To: <671d8923-ed43-4600-2628-33ae7cb82ccb@molgen.mpg.de>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 12 Jul 2020 10:59:17 +0200
Message-ID: <CA+icZUXPB_C1bjA13zi3OLFCpiZh+GsgHT0y6kumzVRavs4LkQ@mail.gmail.com>
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=et8c4srf;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
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

On Sat, Jul 11, 2020 at 6:32 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> Dear Sami,
>
>
> Am 24.06.20 um 22:31 schrieb Sami Tolvanen:
> > This patch series adds support for building x86_64 and arm64 kernels
> > with Clang's Link Time Optimization (LTO).
> >
> > In addition to performance, the primary motivation for LTO is to allow
> > Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google's
> > Pixel devices have shipped with LTO+CFI kernels since 2018.
> >
> > Most of the patches are build system changes for handling LLVM bitcode,
> > which Clang produces with LTO instead of ELF object files, postponing
> > ELF processing until a later stage, and ensuring initcall ordering.
> >
> > Note that first objtool patch in the series is already in linux-next,
> > but as it's needed with LTO, I'm including it also here to make testing
> > easier.
>
> [=E2=80=A6]
>
> Thank you very much for sending these changes.
>
> Do you have a branch, where your current work can be pulled from? Your
> branch on GitHub [1] seems 15 months old.
>

Agreed it's easier to git-pull.
I have seen [1] - not sure if this is the latest version.
Alternatively, you can check patchwork LKML by searching for $submitter.
( You can open patch 01/22 and download the whole patch-series by
following the link "series", see [3]. )

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.=
git/log/?h=3Dlto
[2] https://lore.kernel.org/patchwork/project/lkml/list/?series=3D&submitte=
r=3D19676
[3] https://lore.kernel.org/patchwork/series/450026/mbox/

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUXPB_C1bjA13zi3OLFCpiZh%2BGsgHT0y6kumzVRavs4LkQ%4=
0mail.gmail.com.
