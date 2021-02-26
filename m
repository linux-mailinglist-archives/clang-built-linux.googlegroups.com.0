Return-Path: <clang-built-linux+bncBDRZHGH43YJRB6XD4GAQMGQENMKBJ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C20325C38
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 04:58:52 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id e199sf5716851pfh.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 19:58:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614311930; cv=pass;
        d=google.com; s=arc-20160816;
        b=nCjxggbR+nVgOfA+vT9KPyz+2trxFLnx45KS0xWGDosVVMYep9E84A+7Os2t6QTiDw
         SEsmQDoaWGjxkDvQGFL6RTQpsVRoE2x9XUx+NCNI5YCRPXc6EqhosQtaYF1HgCz0s3CW
         Sm9TcSkNxweB5pqj8vB0LH+60HQDJjVHoo2jtWQ87rjrS3caxMPgq2Q07nv6nVQkQb90
         Fu/opzQNpjpM7LokaSMkrbfD9mB7IVQ2gYRJBCRLi7ErGfQmpNNexQK+PNSdgW/XvffD
         hXvQkqo9CPVrxKUV0vOiNnzYQbqIRw5fuwomcWufjAqusqrZLuAlo1PkDRXysR+4urBo
         yDjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ffFJtCXWgpJoPq/J1j462JtEijAkkykoHWP70tCrTGo=;
        b=JgX/4PZBYRuqR7rqzoQpA069CKpqORFzxgAVeDa4ea7/6fZbPIvYt9bmwZZ9mvxPD2
         E+M3LUE/35X6R3F+rPDtjw8SsYA9nbVKtKHcnokcsdnSZYOaPCW66QugVus/UQyvb2pe
         nDEXmCzB1VhhHWdH6/pp9HWyPc5EN8aXj4FLYwseLJ/Pu/B1crmiYH8MU9KoeKphSaFB
         c5Sqlp+wyio1ZCDDuiVz1VxdX8YI++JexhnMjOM2n4+fa/9zTddwLd4d4Ojt7sIWCAQv
         8U19ZZdSygPbYbQUmMry6MtIFrel5C+UABJWFQuNo4cQNJO9RNQuZJyAacGlgFh2a5hD
         kuUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U2nwcGm2;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ffFJtCXWgpJoPq/J1j462JtEijAkkykoHWP70tCrTGo=;
        b=USGYNmh7Qj8fuQfCoQMMfdnLtKR/sKxeT9qafIUWu4/XpAWW9fddRm4IdfslOBJpjk
         DsVcTIngjeLOWxFjzH79LwKR/VNvxEbOwlnUOhuNHncX6GwmjjhwZQqeh6xhy7oH47pk
         pspEvdidwzrM+yuQCILfESzc1T89bjDjwGscs7gUC1pUr8w4GLo4k9eTFd7hChpqMxGj
         he6fl5eCuDWKT4wsWLmRhJT7vPciLauaG7rYqQJAFGonLDAqzrd6vi7Pg6DEyuVq74oM
         MhHo1HL+NwWrJixgX7fOAyNvfy1GHUyYJ1PKWN1KJS5Ky9FfTGxYszk0qCZgZHihYQMR
         lUDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ffFJtCXWgpJoPq/J1j462JtEijAkkykoHWP70tCrTGo=;
        b=D4K3JZCtcZfvWPdkpzm1q20U1vw8YUCVIWCMpKOiseutXsh/rSpuLWuGntnEsgs3Vh
         a+KT3dcniqVvcALaNonSiZ2gT7qHy4Uzo9JhA7wLvHdaXmGkwGWQwXnrvo7Yj3pq0N96
         nvPQATXn9ob7ZFTYrmpF6bGe1BEiT86eM6LCrXoT27tfdY/m7Q6O1GwYZ2+zr3C5HhHM
         tsF1zdJCMfm3H8mrwKK86KU6cXIPxmKDTVtIKZTFe/vEGlMEgi2omg9XGm37dYcajV4l
         lomdXUPR/Xqw20P9p9qHmX590AC3Ppox0P3aoTLm2QbiOig+czBozRdGnGlbYXX3LwNs
         PzFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ffFJtCXWgpJoPq/J1j462JtEijAkkykoHWP70tCrTGo=;
        b=GJp1w87KO/AlLvOQaPu1mtNDaU2evn4U13GJR0CcH8NQnwnVVbhMPrsKh5MdxBDHjc
         gCs5S7oj0BsPNswk2t/tAAWxEWgLzu510MkcuC7GO7X2whP1eUkKGTwwuJ0iFcHH4lZ7
         z6hGKPEqL11BhnykttW2oFQZIluL1VQg4yXjYbdZfhExE7SMgXIMQojTH5BL6aiSPR/2
         nLv9kr3vDuC/8ltDRuz2sh037qHgs5+ewA05xw58CkB+YrpihepGdIBy9DVODRscmjt0
         O4AREHYy+TgDrycuWIva58iF22nnr4Yooab2+q2gLb8ln+D6uLTi2mZF2SNXyeBPBeDB
         fREQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IiG6knb2e1oua+DWMFxQdtWIa19eQzOH5ZeETJgovLjU7W+R8
	akztIsT3wzV2NV9fhkWLQsI=
X-Google-Smtp-Source: ABdhPJw1ZBRtprebrU7mK4UaYlxwpWZC1x882hsE/MOVr2k6YDavqP5MG2a3wC2m8CXCQx+qIAKltA==
X-Received: by 2002:a65:62c7:: with SMTP id m7mr1147551pgv.50.1614311930629;
        Thu, 25 Feb 2021 19:58:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:91c3:: with SMTP id l186ls951614pge.11.gmail; Thu, 25
 Feb 2021 19:58:50 -0800 (PST)
X-Received: by 2002:a05:6a00:851:b029:1b3:fbb3:faed with SMTP id q17-20020a056a000851b02901b3fbb3faedmr1121496pfk.18.1614311930009;
        Thu, 25 Feb 2021 19:58:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614311930; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9jMi7KleSRyT7sVGoxuE10cP97LLQ1jb/Rc8JtEowYLA6KS+ipGv+yrQi0oiu5NI5
         CKrtUPi9N/F4mrLlC0KBgucl7AktecDn1Jg5FyrWzzvFqxCEs0Vd6ibcAPwTrnoXQ53a
         iqzrCRnP30VwCcFz0nZDDdc+TddLBi/ObJs4DkWYvov3iZpg8CBQ2omG3dOsch1TKkFY
         fKLlH0DmQpgOQnldft/4dmIqr/hh82hjRarbg9GzYQ7DpJeLhv6gvNYSz7Iy1yr+lGq4
         lrpHsGC5YQuhj1r3HhIxBOBfgCek9nND9XN/9tryIZJuQ07lZs3eDzwfpMZjO/sN5lyH
         KqIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DR7Dnd24+rlaYf99PAlqhwVRNpL9GcKCVK3DbGNBrek=;
        b=NW6wV1nSdoYp0P+hSqhTdhffx5aGYeBOlJJajWfId1i/lxeHkHu6VcXPYKOjbBETkA
         ZJwOT8aMZoZ9pQqvvbxV/sEwv89leBR6t+BHl45Q1ZRR6szLgtUoEF93eTJ8obZ30omg
         OH6F7KavHTOPDe8CUHduzegDoOEAEh+oc0qFph7Vz0AQ9rL0MCE+1FyrbP9y9JTWxhqh
         jX9zXAJEd4SLcZadAxNpTnoJFdHczDoEzQ0fmZUHan1pd4M67ylPottt3Kk2J+qdNRHD
         mZTKFWrwyFs4Of4NFhTaEAghfhcWYWikw81sLYm/F629MsmzM/9+JEQJlieHpzZp9W7w
         w61w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U2nwcGm2;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id i23si351037pjl.3.2021.02.25.19.58.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 19:58:50 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id c131so7645272ybf.7
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 19:58:49 -0800 (PST)
X-Received: by 2002:a25:3208:: with SMTP id y8mr1760714yby.422.1614311929791;
 Thu, 25 Feb 2021 19:58:49 -0800 (PST)
MIME-Version: 1.0
References: <20210225164513.3667778-1-arnd@kernel.org> <202102251203.03762F77@keescook>
 <20210225120637.8e2a234f192952829fc5f471@linux-foundation.org>
 <202102251213.5815C9B33@keescook> <20210225201801.GA3119@MSI.localdomain>
In-Reply-To: <20210225201801.GA3119@MSI.localdomain>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 26 Feb 2021 04:58:38 +0100
Message-ID: <CANiq72=5t1maOv1FerMLRVCRos_yv-iQGLzB21Z+aYxTXLy8gA@mail.gmail.com>
Subject: Re: [PATCH] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Arnd Bergmann <arnd@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, Miguel Ojeda <ojeda@kernel.org>, 
	Marco Elver <elver@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Randy Dunlap <rdunlap@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U2nwcGm2;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Feb 25, 2021 at 9:18 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Indeed. Any wins that we can get with compile time, we should take.
> Clang is being widely used in production systems now so I feel like with
> a trivial change plus user visible impact, it should be backported.
>
> Not to mention that the generated code in theory should be better
> because it is the compiler's builtin, rather than a hand rolled one, AND
> this is technically a regression, given that it worked before compiler.h
> was split.

Compilation speed shouldn't be an argument for a stable change unless
it is something egregious like a 50% that may affect users or tightly
timed CIs.

Fixing an important runtime regression is a stronger argument, but the
patch doesn't show what the effects are, so it isn't justified (yet).

Please note that this kind of change touches a lot of code all over
the place, which could always trigger other runtime regressions or
even bad codegen (yes, very unlikely, but it happens).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3D5t1maOv1FerMLRVCRos_yv-iQGLzB21Z%2BaYxTXLy8gA%40mail.gmail.com.
