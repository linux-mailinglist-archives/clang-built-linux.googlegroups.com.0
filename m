Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZN3UGCAMGQEJAAE3BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B53B36CB55
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 20:54:30 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id v129-20020a1cde870000b02901447d6cb730sf40169wmg.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 11:54:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619549670; cv=pass;
        d=google.com; s=arc-20160816;
        b=m7BC9ljO7iCWQbkgz2sBXW5V8IHUMv7Mqb7Ew2ahQL6Ifn82ajXZ99+7py7YexFiko
         AgwEbtFiiHka2gxTTmM73ew3oyYhyO5tmwc5d4T1SyuJOixz4t/ZbZe1xIR7Qp+iPIQt
         PfrAOF5HzFYltcPUJe70JVV7fb2mc+4OWHSo3I0e/NJbOtr903BZatJ6Ql92SYrt0nkv
         UeaRITsn1ZilxThS9ZlmnYCsupMPI9ERPsprap1SERYugOP4GYU5LKcSIOU0q70wUDNC
         OqgKLBcqEvBodbv1+OUcVFhsYxAs1fXMdOJlNAcx/an7R8BEcjFnU8C91B2dUfHP78WG
         4Iiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Qt0GoI42lfhpdWm3CnKDj4avNt1zqzjJusD4ih9tNOA=;
        b=qzHJn9di8f1BBpc66ZnkOr4B/89okW6fZCu0fvER8uSVUeArp90rHgDslUrQ6TkrHK
         xKrjoVD0dHAiKfOHAaLCuatQDmrM+wWQ0cvg7fKjR21rayFbm2jUioSD4uQc2gBkRsO6
         6Gc8rn1VZ7MLNFOWrZhu8j+AvGKzrxEeWevET7oUyDUeHwEoMG9mKWVvubfqncQc/CB/
         5CkafQ0K8hM8RdpyYZUacTagUVyB7GE4pSSI8u45ZRXw1Vjxh0gtvzBcHvFe9ZJi3FKS
         tF0bj6IvdOvJBel7usJdrUlztXkYN6CpXb39C0BEIj4B5HdoKmvyJKwVXfIT1LR/relk
         L6MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vxhki8lg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qt0GoI42lfhpdWm3CnKDj4avNt1zqzjJusD4ih9tNOA=;
        b=KqWQaAhUVBhBRpzW6VEEUboanEyrd+X5SiSFh93Or0BKQFEs2xBptaM2QdPt8azOPx
         jYR5ZQGvycIkSiY83b6uUiJ17PImRhoNMRy9q7QO0l6oztohDZU85o8oWTbFXN12AUfP
         jOUlXid37NW8sNe070bGQAWSIRCZHkDh5Z+ZOal+mp0QslRLPf+O0WJl3OI0nSILs0xV
         XeblibWVirpi/bJG7SafnthMd9KJ2I6+6DvCnk7v5wKl/CdS31/qMzdOqe1tfIAoKVnW
         aKZBOV623AwezZ7o26fP/EulijtXtiKx7qkm13mwWsFRUTSbGRa8/9wGaXRp/+bVIuhs
         58RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qt0GoI42lfhpdWm3CnKDj4avNt1zqzjJusD4ih9tNOA=;
        b=uPyAAgEbM0/EHiGVGVLrUGyEJjOnYK1svjIL5WVlbaiHxOfmsZeOe2iDgG8O37njVk
         WrPvkquRgEbiFwGRrEY0iYzkIg+pktand+E6b1A1KEKRVzjDyMxOLPgBxMtvuJktvOlE
         N9kgSJChZY0VcEGkGug3lJfjtAEkj/RgOgpbH/d8zImTM64YCPBSJI3lU0gFl3SAiblX
         D5gv0Tr5eR8NcofKJ4bkgMliuta3QWrEsXZlY4rdJvvzKlSoOjEmZG/aOhVjs98klckh
         LZO2ZAMFYRvb2vsfoworqYUBzHF7SBBINcR7jr7L6KMxBnWZj8Xie5IcXPSlg3Ryrv3S
         xA4w==
X-Gm-Message-State: AOAM530u6xkuhrzswrMAskRJeMoofnBDk4woyLl6nBZf6aiLm4M1VGbf
	Al/VDt8AUPWfmiZyT9uoL9A=
X-Google-Smtp-Source: ABdhPJwLc1CSF66bfimXWzhHBFlC51TVvEsKjeDLaCiM8DtzmP7UIr4F2lMkNmAOMr3YBEfHudnvNg==
X-Received: by 2002:a1c:4b19:: with SMTP id y25mr26394840wma.91.1619549669961;
        Tue, 27 Apr 2021 11:54:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls7188091wrx.3.gmail; Tue, 27
 Apr 2021 11:54:29 -0700 (PDT)
X-Received: by 2002:adf:ed4b:: with SMTP id u11mr22490450wro.293.1619549669165;
        Tue, 27 Apr 2021 11:54:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619549669; cv=none;
        d=google.com; s=arc-20160816;
        b=K8GjC0nPZbdH6uXsXt8BYoJID+V9yoIU7Dd6kzA7CVHgqqDDsH2eTE3mC1ixpZXIBN
         K6/JDCI6tY+eYmY74pMntA8X2aRMsc8d86PiMgnrzjginATr7pP5qCJltgSbWrBTxOLz
         SQ04yDkjFRAW8PvVwh6qa8EO9HyFlruMtacuAvvKqyK9obC14uESXOF6BmhtXqVxjFeN
         QBCnYFl2OSxXzy9YsvNOCv6pkxaWhrGq2gkePLaOidF5+jrnEHDOd+fzwGq9Uml2raHh
         n46lj7omQhM09VIuLobj2Ncih+ldRxM8TYQudnk20FFkuVnDG3DJJgOa350gnb5mgDsR
         8gXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yPFimr3gWw7Jb8pUUshKa57KI8HC4i9N5TDaJMgan8c=;
        b=WPIxp+SZO50EYltJkUYqT7Hgtj11/ABL4bZM4OieP+DIZxvA3kqPNri7S8JNyoKf3D
         dIHnJjMnGF+PjvcUoHsc8WATGnpxb0FiShIO1N2d1ViOiES/4GufGE+coecaej+3aPms
         fg8Lc26lMZt29iARBjDIj30YRfBg4qzG8vcJqqIw0Fu6/hQyML870RyqDhV3bEKUTwUo
         11ht7XZtVg6gTHkVVTGVSV7+xKRn63J74Z/Ntpr6lY9Grpu5MxJE1b7o2SymjmPG4gdT
         zVqbVwmCe0EGh6WFRJUf3scukwtekp1SgXtXpTpb0stz7VeVvbfYvkHduHsDkcMaJUYc
         MrgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vxhki8lg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id c13si286110wme.3.2021.04.27.11.54.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 11:54:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id a13so15559440ljp.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Apr 2021 11:54:29 -0700 (PDT)
X-Received: by 2002:a2e:9015:: with SMTP id h21mr17225853ljg.233.1619549668748;
 Tue, 27 Apr 2021 11:54:28 -0700 (PDT)
MIME-Version: 1.0
References: <1619345754-32875-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1619345754-32875-1-git-send-email-yang.lee@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Apr 2021 11:54:17 -0700
Message-ID: <CAKwvOd=-NdUHevj9eBtKmihL8D0BSVyiOr9pMUNMYTWm1Y=KGg@mail.gmail.com>
Subject: Re: [PATCH] fs/ntfs: drop unneeded assignment in ntfs_perform_write()
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: Anton Altaparmakov <anton@tuxera.com>, Nathan Chancellor <nathan@kernel.org>, 
	linux-ntfs-dev@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck15@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Vxhki8lg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
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

On Sun, Apr 25, 2021 at 3:16 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> It is not required to initialize the local variable idx in
> ntfs_perform_write(), the value is never actually read from
> it.
>
> make clang-analyzer on x86_64 allyesconfig reports:
>
> fs/ntfs/file.c:1781:15: warning: Although the value stored to 'idx' is
> used in the enclosing expression, the value is never actually read from
> 'idx'
>
> Simplify the code and remove unneeded assignment to make clang-analyzer
> happy.

Thank you for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Is there someplace where I can learn more about "Abaci Robot?"  I'm
happy to see it running clang-analyzer. :)

>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  fs/ntfs/file.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/fs/ntfs/file.c b/fs/ntfs/file.c
> index e5aab26..e39a26f 100644
> --- a/fs/ntfs/file.c
> +++ b/fs/ntfs/file.c
> @@ -1774,11 +1774,11 @@ static ssize_t ntfs_perform_write(struct file *file, struct iov_iter *i,
>         last_vcn = -1;
>         do {
>                 VCN vcn;
> -               pgoff_t idx, start_idx;
> +               pgoff_t start_idx;
>                 unsigned ofs, do_pages, u;
>                 size_t copied;
>
> -               start_idx = idx = pos >> PAGE_SHIFT;
> +               start_idx = pos >> PAGE_SHIFT;
>                 ofs = pos & ~PAGE_MASK;
>                 bytes = PAGE_SIZE - ofs;
>                 do_pages = 1;
> --
> 1.8.3.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619345754-32875-1-git-send-email-yang.lee%40linux.alibaba.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D-NdUHevj9eBtKmihL8D0BSVyiOr9pMUNMYTWm1Y%3DKGg%40mail.gmail.com.
