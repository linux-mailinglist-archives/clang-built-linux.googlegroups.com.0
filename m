Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFHI2CJQMGQEWW5YSHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A58CD51CAA1
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 22:31:16 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id c62-20020a1c3541000000b0038ec265155fsf4998717wma.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 13:31:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651782676; cv=pass;
        d=google.com; s=arc-20160816;
        b=0EG/SvJ9WsY1OwbvI3AC8kU1UBY4Un5FyzF575CnYmUzTaiSl7jvkz5L9GpyQsuFoM
         flfYH3vUgIgj4NIQCNjUDkcIralTz2MBaRLM6KV/mnruU0IltsQQ5APLVuTbBtGGaER4
         JOIc1X7yPrerex9e8uoZ0r7Jm/Que3c628Thj3N+h6PnmoiZIt4mJlU0RlwQLmID1ZQV
         frzISsZ7GMNBeNGVF9tiKD95JsMqe8Q2dmA3VG2x53fIZ/lWw8vXlCBBz9o/kVHJTbXd
         myWthx+e0ROvvXrVj/bJidCszLBu5EMbN5e5iXXdJxc9nu7orJr61qTudU/Ijl5TyT/n
         v2Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=A/luMGyFNu/UH3Fraq6spGo81IUw5qdwsKmCYJuPzuw=;
        b=kjhfra+ZEhafsUYvZIC6WAqhRYqjmW4OA2gkK6WuRNlKCDPcPs709vg2Tmw3Gvumph
         oTOa0rh3UMffT0rWttwfZACi59oistRSF8b1q/Min0pHOHBzw5S4iv+3zX6qNrfV51jl
         Iev8ozV+agsLLfaZBvCrhsIUZ011hPt+WFUERlxIUS42qW8a2EyvZWprwhCkVamvJ9jR
         tVaTkepAYt7wmHiNVQttWsVTabxsekCDvbgvhgY+LKw6dNBDKt9rYZZGP+H03fEnZO7a
         CmsH5/VbCwRcl0Nf1pvjK3IB1F38TenJl5h6HQfuzBzvhUofmfvk4vVKsUPr8nhxto7P
         /YUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=GcsLNO3y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/luMGyFNu/UH3Fraq6spGo81IUw5qdwsKmCYJuPzuw=;
        b=BchKLC0+SbcL31tO1Xp9fcDHYsz89gZk8xWlpWbCGx7OVlYbkV0qKkmO9No677hwXF
         WC04KrbcGneRHWqFe1SggbrvdnoDYg2uKllIlb1t1xVNMOHNLRHNfBHaazk9qhsyl10c
         0o8YH5v1LQzPCvSlGwNuqABGoWBMzK2au8qDot3Tnwi2iGswGcTjoM0ziRs6JywqNmEx
         akogTNVZdSt+StONaBguZ0MOzuvwpsc3Q/uR+bSMG0pHD2ZkXnYsE+3UX1obyNNQ33CW
         r+a7EQCz8o8NQB7gb+APZUZ3nFz+hHM5onvmvXPmiFAJjZgni5II9AnHV9b003/wc4kG
         y9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/luMGyFNu/UH3Fraq6spGo81IUw5qdwsKmCYJuPzuw=;
        b=cNzbQi/nqsE/QFh3RHsKN2OdaV/p++aC6JA3OLv0Ff0h+4DWbJoncw0W/3X5f38iEX
         n9LxPFWBhqJl6Ai6X5JpbyuCKGwl+js1DRiA0W4kdHEGnGt1Jn95u4cSdVQiW+WOsFNI
         W8tMI4ZyjOtCwDqFcQ6jg6PMSi1j/EY22vpy2ZrJsDBX8rkFKN24pnIkxxyRsl/+FYTi
         ZrKecxrkQviW540eywmnMGkmd6AemXFoL9blh/Bybtxuyk4xlYclp2BBc83zjt54nYb7
         V0DPrx73G834TzFyXdvCuwpfXC6osKKbbZkNzmeOgANl0KN1TQXFwUP9aJ2bxGZ/Yy6U
         n7aQ==
X-Gm-Message-State: AOAM5310J0kD7EjcqWRffhv8XikmCDZ6CWkTMDUA1VIgWh3qD0+xSHsT
	bN9jZ1YQuVGTfJT10xh5mJo=
X-Google-Smtp-Source: ABdhPJya/fZVx9FP/CtPCM4Ma3bJP+/GdJdWDjzMprmkjor6/5R8WnHWdqNrUNeLJdulXCI8b7u3Lg==
X-Received: by 2002:adf:f64b:0:b0:20a:c685:89ee with SMTP id x11-20020adff64b000000b0020ac68589eemr21010521wrp.366.1651782676295;
        Thu, 05 May 2022 13:31:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2747:0:b0:381:80e8:be59 with SMTP id n68-20020a1c2747000000b0038180e8be59ls2770422wmn.1.gmail;
 Thu, 05 May 2022 13:31:15 -0700 (PDT)
X-Received: by 2002:a05:600c:4209:b0:394:35c1:ba51 with SMTP id x9-20020a05600c420900b0039435c1ba51mr51997wmh.44.1651782675441;
        Thu, 05 May 2022 13:31:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651782675; cv=none;
        d=google.com; s=arc-20160816;
        b=W9358vVWX9JYQocIYbrS5XX7f6zzN+QeVfH/Ad0Qm5qUSTRixY3pSswaDfJ/QqpU8p
         pN2nG3cmowA6YPauzYRSsYZJnacIpX38ELWufBmUs5arAkCl/gJ9mrgbC5vdDonGQdWx
         36iLA3n/4nUTnlUmaUEZElil9UDv1RAS5/sOJUWdtk+Ebe04Jr1uARMTj6l1QpoyOan4
         sY7AAB2eXC1BIivuBa2J7uieg7xl2NeGbQAt7117LBQbX4CUNZi4BWNDnGSBsA5xQIHr
         qFNXtop3+iKA52HUzUtNgQRRRVHTWuSCimi1BjkqSTIQpvHkwYTKLmopik7w35LnEYOR
         v/sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KzJXnZ7chU1+5zJp4Dgvp3VaPPi5u4rVhagYP/eqQQE=;
        b=r7gPwPRpvAOL+bPeVCNvkgS+5ZfKK0cqPbP5lxL74CBVbBG3UEQ8aB95+ULnUauRZW
         Hqra4cK73qqm7Is1ls6xhVIgfodOrbIxWNZbpXSzp10hp+Bes47Gd5Ilt+VQ0+hOVfLh
         cYmhzqUpNo3Y3B+2jsyLGVwGh6PKG6QxdrWfLAS80kDzYA0GC7ZLWxWIG1n+SXPUW9rc
         pm5oHk+XUeSkt63H+gbTss0s0+eKjwfEiOD9BlxZubD3urAL4hCgSZuQ09wFo7HAMTOT
         wkqnSbIE2KB1PA+GodlMUny/8TKKCE5L4vGKO0zPe5jkfJY5Wm/eNi/9XTQw1N1HcpXd
         AQZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=GcsLNO3y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id a11-20020a05600c348b00b00393eb6edf83si201208wmq.0.2022.05.05.13.31.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 13:31:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id u23so3657831lfc.1
        for <clang-built-linux@googlegroups.com>; Thu, 05 May 2022 13:31:15 -0700 (PDT)
X-Received: by 2002:ac2:5e86:0:b0:473:d044:60f5 with SMTP id
 b6-20020ac25e86000000b00473d04460f5mr49308lfq.87.1651782674718; Thu, 05 May
 2022 13:31:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220505072244.1155033-1-masahiroy@kernel.org> <20220505072244.1155033-15-masahiroy@kernel.org>
In-Reply-To: <20220505072244.1155033-15-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 May 2022 13:31:03 -0700
Message-ID: <CAKwvOdkTOv1VZti3KH9zxXT1xceogUPxdCV1JqoYbTKtdUy0qw@mail.gmail.com>
Subject: Re: [PATCH v3 14/15] kbuild: make built-in.a rule robust against too
 long argument error
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, Nicolas Schier a <nicolas@fjasle.eu>, 
	Ard Biesheuvel <ardb@kernel.org>, Luis Chamberlain <mcgrof@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org, 
	linux-um@lists.infradead.org, linux-s390@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=GcsLNO3y;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Thu, May 5, 2022 at 12:25 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Kbuild runs at the top of objtree instead of changing the working
> directory to subdirectories. I think this design is nice overall but
> some commands have a scapability issue.

s/scapability/scalability/


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkTOv1VZti3KH9zxXT1xceogUPxdCV1JqoYbTKtdUy0qw%40mail.gmail.com.
