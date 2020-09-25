Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBK6KW75QKGQEL46OSRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 20940278768
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 14:40:13 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id hr13sf1875009pjb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 05:40:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601037612; cv=pass;
        d=google.com; s=arc-20160816;
        b=JOe9X014YC89RirDRxxei4rvRhDdrQ13HNZkpsS/WeA6xBeszZDNlTUm79bzUhs+WH
         TfBtS2DwAbpvV5RfOYf8ylzPda6Wy5B7LKEJDWyyidcaK4wzF/5F5FVGQBkaGhNJrh1D
         Fo7tEwjdtAJunoJvdeGzxfDkIX0WLizrg0BD2MZFrvZt1tpZ9ROiGpII4QRxReobAUxH
         tiZWe8JMA9cW4zxHCMjbReZzNawsqYfyX4OFCdCPNlO/XWEOKa4ByViKgIxaBWiKwdf5
         qJ4L2R8m7K8c82hu4DyiWiW7QeuQtgZvkieNDMZSASYucsu1FrA9cXLSJAmn/GGUiyUC
         WeMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=oS7Y8oBC5gQeGqfCu/WbsaPqtHG5jUHkLEGrBMUCBYk=;
        b=MKDpVoy/SvxLy8GK8CCa8B+Ca4suDyWjLlQAYWe1QaCM7LYB1y/Zkaj/rHk64hkKMs
         9TT+Ku1ILV9qhTKIMupaj+eGJN5GCLVbngYuJAPsgSqaCNZ5V/Wh3X7sbdEwFqMvbRs+
         RKrQxDQ7k1UiB29oapa1FR8RYFS+Ef59IgmxRWnaPuwUudctvxns82gbm6lqjLdvvfn7
         /aid2KYcXzFAXWgl2jXnjNTfRPNK8gaR26eL1g3k2l5wjwLy1dVodaHQibqYunxlZvjx
         Q3ftYPMy92a5j7G/KC/uaVkeAKEgdYbF2MUf+0b3MajO/phvUuc7c4FI1/3n17na0s2u
         SXFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o+Lv1lh+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oS7Y8oBC5gQeGqfCu/WbsaPqtHG5jUHkLEGrBMUCBYk=;
        b=F4/n7WNJf29nNo3qI//QcRCf1jyPqclvqwpguf4f/fw9J54qRkx5cXfeLIOmRSYZSq
         ixe3/4DuKFPZB28RgbjgoFHl/VTzsI0kvlhShJm/67Rz1J8VdCa9OC5e4Q/ZjyiWDzB9
         4w555sp6Xk7+an9UO17EJZF9j9qWKbZ20xaghpLSketDl6Bn9UKmsFo05jwO48W30tfc
         QWRkh8+ZET5l+6JjLZ6Nnx3OclB3LQ/OdLDQqp5ceKV8f2QCw6ukqjP47ao+4a2Bhri5
         w5N2OvFA8s/BHUXz7lrEuSNvtnj/V9QVP/yBRkCX0pwmdgIHB1D161WdW0++Ao0q2xQk
         cSng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oS7Y8oBC5gQeGqfCu/WbsaPqtHG5jUHkLEGrBMUCBYk=;
        b=K+EhfTDjTdrOaAIvCN0GqXzOrc87AgJlod93OuYchg1I/ASayohPTqWc1X2kR2nmXk
         kdiRUhd9T3fK9yBl0mhckQCax3TjlTP0YM4HR8n7yhhLCQvKzOxihLNqOqTp2BnSHPfp
         VK2l+yRHqoTJgxi7pFDy4VqdrQGpj0d69xecW7RE8cNNxbw2yV2OVWm5QCI/cAKVkZQA
         tZueHkAaDapqsQHW2I5ld9GeNKslbI1xHkUz9VZnLVhGE7+1qTHEwAaNphVCtP/pFmzd
         Rv/LQyTEvTNHLfkedBJVy01S6EcXJFDKQjQxqtsdrp/ijqLIr/BTmVZEqUHeWvvAh0Wx
         +Y2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oS7Y8oBC5gQeGqfCu/WbsaPqtHG5jUHkLEGrBMUCBYk=;
        b=ATvi+31HBrXCoITdrHgDnKc+PmXbsuRYgwJO4fW5RSXRrV8MBEYvkm3LPurmj2XRYG
         nzuMAYW+fXtRIwaPVHNJ+jBMpg1OZVwzYYpwjf0Fr8porHuZVJmKVpWTAUp2XKRCoFmM
         mFUeo/0bl2Qmmhwn2ndrE6IjnBGs+0yeGCC8ACOavuxO1T/sP31ceP7SjzaVm+GxXp6w
         yjiPW//Smez4xY9c98gXfIYA/nKeV86W/k6OVmZcP9iNyZZW6Z/b+qVf0oRkGLr2Q/oS
         FHV5M3y+a8mciDv28UMHZj5jhExp/x9wEfnAXfRS1Dgf/xn/8i/6UFu/V5St/XnJShmJ
         lpTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pYKlGzKNUq7yE4v0LIYTM/nqGUWNUHFPCRyphgWnZydEX+7bG
	pJV0ttN2EwsKQ7I7+B7CXn4=
X-Google-Smtp-Source: ABdhPJyrTysgWQz2oTTzCDCxW8b3PsZ5cV2vQpaCiHyAOjJBoIr1sckWKzc+VMJk/nbdlobwoTDTYA==
X-Received: by 2002:a17:902:208:b029:d2:562d:fcc with SMTP id 8-20020a1709020208b02900d2562d0fccmr4326743plc.15.1601037611804;
        Fri, 25 Sep 2020 05:40:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls1243725pjs.2.canary-gmail;
 Fri, 25 Sep 2020 05:40:11 -0700 (PDT)
X-Received: by 2002:a17:902:50d:b029:d1:9bc8:18fe with SMTP id 13-20020a170902050db02900d19bc818femr4245283plf.16.1601037611180;
        Fri, 25 Sep 2020 05:40:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601037611; cv=none;
        d=google.com; s=arc-20160816;
        b=X4dm61og0Da1IAtJ+FrO3fFOxyebByO25Ei5v58HmVOtZnrcLEZMZDamO5Im4MyMid
         vJHLqChFT1xe2O8T9SINkXjBgxf5iuNR8Hjnw2fiVA2zTq1d0u9t3z11X/uX8T5/fEKv
         oogV93DvI752VyjZf2ZCaQx+/gGT7Y7KCxdPLJryt0XQa7NkzrBEG/7xZTweGZW7iahL
         QrgpyWlZBIte5Q6Q86/tzrsYRNRu2SstiuHyIE5yyzg9N1KijVx2Ep5aPJRNx3D1047e
         IfygHJfU3sBv1Vyc7UD56PAhHDdGCPGrbr2dlWkZZ1iYAWVwm6iPUzAoUTu70DtFKOiw
         S/Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4vwaU9bCmw7LheAG6yxMca1ztC4rrQ2thrThfK87erw=;
        b=j0UbtPwu6QhGpzuw3ZlDDNdc72FRGDTSZrh/IKbtL6sn0ssc84tyZkgV/ER5uE9Ymc
         j6gZGqzEWNYnt+5F6Z3iTzVRnarFX6S7fgne4mHHIoPFH3Pjcbab2Rm2Pxk2UFJnXQwp
         Bhk7JLRqg5djhYsyoHu8gWQ7+F2U/ZZ4EoxaKY+strtb4wrkIPfluenyYMWJfD0GLDPN
         LC9LvXxeuFFjGkRLoZUp7NKKjt0rRBakBXyfaGktbsVe3s0cnc5nM9oi21xRyp7JcCAI
         4gmkUj44Wj47PU5SEDrg1szUobtWV4JuJt2sK1PA3b6O0kTRs2VVTeqMmhdNSykbloiB
         RJXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o+Lv1lh+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h1si173731pfh.5.2020.09.25.05.40.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:40:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id a2so2105506otr.11
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 05:40:11 -0700 (PDT)
X-Received: by 2002:a9d:67c3:: with SMTP id c3mr136117otn.9.1601037609126;
 Fri, 25 Sep 2020 05:40:09 -0700 (PDT)
MIME-Version: 1.0
References: <107c1572-ffc5-8797-6ae3-10fbe4e91eee@collabora.com>
 <CAKwvOdkHiRAxCrrqRTq=k09zW-X9cHogyq+7fTuM_aJyntXs4Q@mail.gmail.com> <200d3c91-9906-01d6-2642-718fbd356d76@collabora.com>
In-Reply-To: <200d3c91-9906-01d6-2642-718fbd356d76@collabora.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 25 Sep 2020 14:39:58 +0200
Message-ID: <CA+icZUXTRK9jgr6-yGW0hTVgfQNhu=YPBX0ce4Op=Ukih4vmbA@mail.gmail.com>
Subject: Re: kernelci.org update - 2020-09-23
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kernelci@groups.io, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o+Lv1lh+;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::342
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

On Wed, Sep 23, 2020 at 11:26 PM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> On 23/09/2020 22:08, Nick Desaulniers wrote:
> > On Wed, Sep 23, 2020 at 7:50 AM Guillaume Tucker
> > <guillaume.tucker@collabora.com> wrote:
> >>
> >> Summary of changes going into production
> >> ========================================

...

> >>   LLVM 11 release:
> >>   * Status tracked at https://bugs.llvm.org/show_bug.cgi?id=46725
> >>   * Several pending bugs need fixing, some look relevant
> >
> > Fixed! (oh boy, we were on the "chase list")
>
> Nice!  Erm, I believe there's one last blocker:
>
>   https://bugs.llvm.org/show_bug.cgi?id=47619
>

Fixed in release/11.x Git by...

commit 81eb1c1fa75c6407713b5657156d8d9149572bfe
"AArch64/GlobalISel: Reduced patch for bug 47619"

- Sedat -

[1] https://github.com/llvm/llvm-project/commit/81eb1c1fa75c6407713b5657156d8d9149572bfe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXTRK9jgr6-yGW0hTVgfQNhu%3DYPBX0ce4Op%3DUkih4vmbA%40mail.gmail.com.
