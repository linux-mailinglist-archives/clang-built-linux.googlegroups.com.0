Return-Path: <clang-built-linux+bncBD66FMGZA4IPLGMVRUDBUBFXSP3IM@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6FF4623D5
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 22:58:14 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id o18-20020a05600c511200b00332fa17a02esf11565385wms.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 13:58:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638223094; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZbkODWXumCcVwslQco53KhK7NtQywS7hGKWKAn1cpRGFRjuT1EpHahC4c2FkkkqhEI
         I0UM3/uAki/IeQ8OzAMaTfzxfblgmhKPfvHHbwps4tc5QSUL+hWhtNFbAWpqKajqBChN
         rNLyeBlj97oVue3tLyr2lmKYI7oW8bhXDuI6PVCrdvi7Qwfq+wmlq7odWclBE0saWfjl
         CNle/+ahgO1mct6CVSTrrCH4NmNU+WF58o40aLK549wxuf2X9rmvoSfSpjbhSO1sFoLj
         Khs1BOy1w+FnpU9UKyfMaEZ56lLvI5VxdsoMiN2QT7EX5qDV73mXfdJ+9+VKthteiLRO
         hgpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FK0rX9/3ePpVClDQbbNglQQn4Imye/+TZYos6GZw2Rk=;
        b=TD9B9BWdsPiDKNytRhpA2Cu7Ud3vspim+2ZRwtcq8btyPa9NI0D0AITG+npaaMxQrr
         zjD6rA3hDAuXr3PbeIfVAbUth1q2C+VvmTEnCLhiJKUqNFAsYj8jCFmayk80ZSXN5QKC
         5VgxthqDnIK9dRgwB/CwcYmg2oMwLWzhkaHj65+kVEq1C47G4yjOix2caAe146kXRbd6
         MErnshY4Gexxw2nssjMwzxD7lRymQ9K0jvGfgtS3+fnG5dOca2Wgl2A6twZVbPdZfHdx
         DdBH3ly1n7UmNKNfxu1IRt+3ewJ/LdI6Gy5qO3M5b5E/V9iepxpfdq1lmUOMGMyqaYx2
         vftg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="kXrVMSd/";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FK0rX9/3ePpVClDQbbNglQQn4Imye/+TZYos6GZw2Rk=;
        b=Kd9wdutXB7MAYk3XBoR3R3OgcyVlVJxWfQFR5S7BHKqUSTbejS9h0/tcGbf7vGjFGj
         HrYpm6Nt4fLwHBowE7cCdRZ/zfkXXREaC2EP/RUu+zmLN9K/J7mpj4NSJ5dBiuLvFoLk
         AFb3cgzG5n2VZJwPRWFNeMiqvsj5SBBejkG31oo2riJS/13qEDbttJpx5+IbYSq1iVZx
         l5MNFOb7dWVFUCxRwU8OT6nbbd+S+EpxG2Fama6bUrUQUTx/HjPCrn7YXTJd5PIkqWLv
         wV89C5zpfl3ty81fOisU7gVqss5KZYtPi+3uxhrgw0JMBztYq9H1b5GxIxx5YvwhkMzU
         DMtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FK0rX9/3ePpVClDQbbNglQQn4Imye/+TZYos6GZw2Rk=;
        b=3g68RxN3jIBQGHzIT91kKR7BR4ubjs3/zuUkqdrFdbANcCaZ22/Z1tcXEu8HPOOHyx
         RzekW48NL9J02Jc98ehe69FMvI7Hg++IZqrBqBYYH+sZ5foyGYxcQgKZBa14+ymhsDJ/
         /SggeuyT/W5/gsoj/eubrA5pFV/h69kMPpQcLz9NnHb2qt0fYoJhq05t27CgjcmCc7H9
         p/LzGaZeHg6gXKoCEdTf9LggD1ePMmK+7kw8IsNhdVgW6e+eObEDpnue6E8+t1oqMfOk
         MRNblnv1wVELZzj3AGvzU2KLqHRjaRTHGYH+IMuSZ/wFVdcojde2NRhzg29a+8OLQjVn
         IWkw==
X-Gm-Message-State: AOAM533z1Ihqa5QpK6BBNaBHEmqDOZEYwwvnmVwsIBdb57D4Awfh6EEL
	A+Uwf9VcEz67ay/2ZLS0MnQ=
X-Google-Smtp-Source: ABdhPJxdSjX2wHkTq7zPhKcvTMf5TzXOmxVuA6Lz5xNA2jT2EADh8hwjevIBx4zxgFDX2VS4yxenmw==
X-Received: by 2002:a05:6000:1a43:: with SMTP id t3mr36851789wry.555.1638223094166;
        Mon, 29 Nov 2021 13:58:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1c7:: with SMTP id 190ls324302wmb.3.canary-gmail; Mon,
 29 Nov 2021 13:58:13 -0800 (PST)
X-Received: by 2002:a7b:ca54:: with SMTP id m20mr662738wml.21.1638223093266;
        Mon, 29 Nov 2021 13:58:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638223093; cv=none;
        d=google.com; s=arc-20160816;
        b=DvWraJjuVCQAVr+DiN2eNzwPFWHkNNBVZsVaeD+OhKYo7HAQ23EJa6+Ga6zfCaaapV
         VMkTUm2CLIiUOeUjOPtn3zyFs5nlRRlG32u4/8RrntJ/qC3SE+34yRwVRmfyYI5Qqbpd
         tu9FgOLSkAxPe9CkC7ja2pvQOpAQ/OPapqFEHJmxM9utjI7Z2XZG/04rzo6ZCaEmS62m
         e1aNXknM/7eji5+vkpJqwCawT2Ex/5MzwUZv+DLIzy45d7NBpXHCI+urEIGPgPj+TMTV
         /PWH05WubMaf8igGtCLfe5ls/08kKjUwer6FSFbSPC+MA8QonBUxxKDfIYABE8LRej24
         +Z+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9sLzcl36gb8Ty5f0qj0gOKgIvwto7hbpbe90Qlb5xXo=;
        b=AokLzksz1lMXzCJ3c33r00Wewklzsl6aTLTcf0ufZapdmpZyh63T0clqp35P7J6DZ8
         dZBICco/xlBCTyF/BcOds0D8qHtcjDrCGmGouoMHoW/hswsY+Cl2wwJFZN0Tpa8wfnDy
         hY/fLGy8AzVmhifaQXJIrYz4xwJHyy7AOV4Utjz4NvpiiahT04FRsZSNVLw1lpyoT3y7
         QKkVked8G6uA0KDzj9yR7Ea8j29THoR6qNa6wjQECQHEc6EATHDI/QgxRTp6kF35GRjT
         +9aqjpcmgV1jbVYzE+SaCMn1sumNpNUx6+cSLuNKgl03T5WMDBm7FOWz5fKwbaLH51hD
         nTIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="kXrVMSd/";
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id c10si43065wmq.4.2021.11.29.13.58.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 13:58:13 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Received: by mail-ed1-x536.google.com with SMTP id x6so77688481edr.5
        for <clang-built-linux@googlegroups.com>; Mon, 29 Nov 2021 13:58:13 -0800 (PST)
X-Received: by 2002:a17:906:6a08:: with SMTP id qw8mr62954036ejc.200.1638223092865;
 Mon, 29 Nov 2021 13:58:12 -0800 (PST)
MIME-Version: 1.0
References: <CAGG=3QXA5eEYcQEUJc3yhKXoWr05JhFFSmSZZrYb+2wTJprdVg@mail.gmail.com>
 <CAKwvOdmC6C6qXVUu_bUTdc8dSdCj+CVaJ+qJQLoDX0BzxCTFgg@mail.gmail.com>
 <CAGG=3QXdPWuiRxqJbzzOD_XLR1AMkQpWbr9+Dik3z8c_EKP4pw@mail.gmail.com> <YaVDmh85K7uLjH1E@archlinux-ax161>
In-Reply-To: <YaVDmh85K7uLjH1E@archlinux-ax161>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Nov 2021 13:58:01 -0800
Message-ID: <CAGG=3QVqYHn+yiOWVTBtZOkSW5--WU7ySzuNgg9gvVE1BS1=FA@mail.gmail.com>
Subject: Re: Backporting KVM patch
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b="kXrVMSd/";       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::536 as
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

On Mon, Nov 29, 2021 at 1:18 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Mon, Nov 29, 2021 at 01:01:44PM -0800, 'Bill Wendling' via Clang Built Linux wrote:
> > commit 3d5e7a28b1ea2d603dea478e58e37ce75b9597ab
> > Author: Paolo Bonzini <pbonzini@redhat.com>
> > Date:   Fri Oct 15 04:50:01 2021 -0400
> >
> >     KVM: x86: avoid warning with -Wbitwise-instead-of-logical
> >
> >     This is a new warning in clang top-of-tree (will be clang 14):
> >
> >     In file included from arch/x86/kvm/mmu/mmu.c:27:
> >     arch/x86/kvm/mmu/spte.h:318:9: error: use of bitwise '|' with
> > boolean operands [-Werror,-Wbitwise-instead-of-logical]
> >             return __is_bad_mt_xwr(rsvd_check, spte) |
> >                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >                                                      ||
> >     arch/x86/kvm/mmu/spte.h:318:9: note: cast one or both operands to
> > int to silence this warning
> >
> >     The code is fine, but change it anyway to shut up this clever clogs
> >     of a compiler.
> >
> >     Reported-by: torvic9@mailbox.org
> >     Signed-off-by: Paolo Bonzini <pbonzini@redhat.com>
>
> That is already in 5.10:
>
> $ git show -s --format=fuller ecf58653f1e4ab88b4eb62db8fe799826d99d5ec
> commit ecf58653f1e4ab88b4eb62db8fe799826d99d5ec
> Author:     Paolo Bonzini <pbonzini@redhat.com>
> AuthorDate: Fri Oct 15 04:50:01 2021 -0400
> Commit:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> CommitDate: Fri Nov 12 14:58:31 2021 +0100
>
>     KVM: x86: avoid warning with -Wbitwise-instead-of-logical
>
>     commit 3d5e7a28b1ea2d603dea478e58e37ce75b9597ab upstream.
>
>     This is a new warning in clang top-of-tree (will be clang 14):
>
>     In file included from arch/x86/kvm/mmu/mmu.c:27:
>     arch/x86/kvm/mmu/spte.h:318:9: error: use of bitwise '|' with boolean operands [-Werror,-Wbitwise-instead-of-logical]
>             return __is_bad_mt_xwr(rsvd_check, spte) |
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>                                                      ||
>     arch/x86/kvm/mmu/spte.h:318:9: note: cast one or both operands to int to silence this warning
>
>     The code is fine, but change it anyway to shut up this clever clogs
>     of a compiler.
>
>     Reported-by: torvic9@mailbox.org
>     Signed-off-by: Paolo Bonzini <pbonzini@redhat.com>
>     [nathan: Backport to 5.10, which does not have 961f84457cd4]
>     Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> $ git describe --contains ecf58653f1e4ab88b4eb62db8fe799826d99d5ec
> v5.10.79~19

Hmm...okay. The mystery thickens on our part. Thanks!

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVqYHn%2ByiOWVTBtZOkSW5--WU7ySzuNgg9gvVE1BS1%3DFA%40mail.gmail.com.
