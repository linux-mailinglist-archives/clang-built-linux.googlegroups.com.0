Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCWD7XUQKGQE5TBYJ4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 270C079ACF
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 23:13:47 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id s83sf68882108iod.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 14:13:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564434826; cv=pass;
        d=google.com; s=arc-20160816;
        b=uciBZhEA9PhgdKtBlC0ghSGr9GJTqtg9oJLaRwNCXNZgvtPc4DG4bCP7UE+7rzJ3rk
         gVDpjqiKAwrlYBWPJfPdaUj4w1QPeAAOrSwgkxLAq0rPdaxWU1TWkz27Kg5CD5odv9mD
         hOQuyNgb8N6lGLhOmz8Sv8Suy81raqdLH203e2/o1Iq+IWEj050MVzqr0ZVI+B+9jkkS
         oAF8BkSXh+FhRzb2XoetyuhNBv64px3NVXZ8jMdP6CEnt9YRm+E9+NQgzv3bTqLrjZcY
         ZD7JJsS4nAzt2sVPptioFBIXLSR49opWfIhHsBx6+J/ZuFK3S6oi5RChykKFpTdrgpzk
         EMJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IujASpy7nI6k6xVrjCz0JLOOmspoCAeoNDvqYvC3oKs=;
        b=UwAzvs/2/x9bV22FsrH/u7zQpP/Cf80MmxdyUk+x6iNisarTuXVsnPjWJc+CTB6zDe
         nyfKLKeut0B9LFkVPGAo+typKTBBsJUIzCvjckzH9T7BvrM/x2h8gp87eSm8Ahrz2ruj
         L4Pw3Bga+tYBgD5A9l3zhbaPz/EAb+/annZwBBAqJ7zrVwBrgupHzC2bP7m70PyX5rwn
         jeVpfyUTyzmC1c1jkCvD3FMTTf6RnLPwqbf+h3sX7rOnnCCXViCgNa2etbQrrCE2XMSM
         MJz1ijPPrNiEarBAXPYyWIWxix1FVn1noLrBn1Jxm5dszmHB1mmk4nOhCoLwSuiVqHVo
         pERA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QHThw9vG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IujASpy7nI6k6xVrjCz0JLOOmspoCAeoNDvqYvC3oKs=;
        b=earoSPk860+KBhlLhuKN40M5ZfQbKxgAAnTia8dPa8vTSlTDeniYw4Y6tMChDAobqn
         NgwUII8GVOeWQntW1DE0IAWBpQq5RF2JgXsyLlPbnLxbYBArTKnwSwgqKUej1JRHt7y8
         yPNDx6L9TmcQe0WCk8Kzrgg+Wp67cCEx+X7/SggYlg3VkDN68zn10PomEicDgc3Y1M/j
         PAoCzL2UCNcAw7QmzwHzKzqwz8oWt/AUWWvjLj7k4WC17tM3viKJZtQAIktn65rapDwa
         jHpdRblmq9M/Lp8MuXSnYuvXP62XAP114r+UNsoT7WG3Z6NygOoWgcSQ/tFDtKuvSmpr
         e8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IujASpy7nI6k6xVrjCz0JLOOmspoCAeoNDvqYvC3oKs=;
        b=T3szwhe3hoFf2hdbbl/KgLH66FkS9b71xrAjNAkbEbW1r1e7AbrSjpo8kkiPyg/toa
         vqtQqDHQeX9yUUTQAanuLKkJzEY4idN/Cs/HpneZwXqP1DGcaVCKiBFthwyME2WHjial
         r9j2IxxgM9MYhNwNEaCUEQWAihGgZCyZMxtKKnDoY5MctFy/3M/2mAHCYlMkHyzUUkSZ
         me/KNZNBMEOkMEBXo9WxqbNaHK2Dl5ns0nBbCcGJJSqk3m0edCFsjvjK4o9tp17cpD7s
         0yqO9IDxdM1uKOcbkzJ2ZJj3re3/nwrjObtb5C8lj9+VzLj2EH+i50sm5pssmI/H+iVD
         /p6A==
X-Gm-Message-State: APjAAAWDskwnLcQ3mtYEl+9P4tdiJRTOI4AXr3qQLz57dVC9lc83ToNA
	0e7A3HnWIZsX8eAAfg8xJbw=
X-Google-Smtp-Source: APXvYqwlRbYl8tlq/2DuoPQnUoU74h1eD+FhEjNRUnWgbzMzFkxquyH2oLcQ4bD4fbKDiosg1elweQ==
X-Received: by 2002:a6b:f90f:: with SMTP id j15mr96773514iog.43.1564434826159;
        Mon, 29 Jul 2019 14:13:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9d0b:: with SMTP id j11ls16050991ioj.2.gmail; Mon, 29
 Jul 2019 14:13:45 -0700 (PDT)
X-Received: by 2002:a5d:884d:: with SMTP id t13mr24174659ios.233.1564434825888;
        Mon, 29 Jul 2019 14:13:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564434825; cv=none;
        d=google.com; s=arc-20160816;
        b=hjZIfb8QrQ/FWqjhDdBz7ztPtYk+6Dshsw88dLb9zoSahC7wN5vOCnVgSAYSk4NlNQ
         1sC8nVObY4ELuh0UUvasavAmuRNMABi4jAhu/RKhgszuULj2KjCeBU800zPrxkBeSK6W
         01OdCZ9N9HBYGgH0GrJKowBVidM3sn6ekKrHRVWqbp1ChZ4vhL/eLi48I4TQQMibNoUE
         raJTulGZ8NfP+6+tV9jztL/1woJonDaFE0ZpA1yvW1r/CiM90085Qv6OtKgybyAKWeMP
         tLtrSZhdqG9Ql89JBDEkQJIoZC2dIAlo3xB6toRXnXxBvsm3fjmCrp9BV+KhpveNe9oS
         sfyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y41cN0+PwRfBVYDbE+TtFsTKnsZORuWyW4TVT11s+0s=;
        b=EphoTz10jrYXZ4Y05IX9MDoQWHVDfww3gtijkiVI8SYTqr0bCOBnQUY8n08r5DKS3g
         KRQZDroN1r5/Rgm/PU+NcU4qsSnQ82g46rFe8eHDAo2TADp6URPX0OVJvJdr6Lk4J6ps
         cXZDSzvLh6hlplz1gkamYkb36bgKd4l0eLuUHIx3WBE9BKm2tj9vUzumFZM0w6hgxnfV
         ucnHpDeNPJcxXHM4gIxQK9tQyxkCVzpQWZRZ10I/QxW5KEgO04/e0pY7z9iPQLKC/NfK
         zcZ24qWWAJs5c61LfRbQXDTj/rpxXKPpxGyCpw5WkRpnCVDikXKQanZ5p20U/IcR4pID
         PqPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QHThw9vG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id m190si2444223iof.3.2019.07.29.14.13.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 14:13:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id x15so18522443pgg.8
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 14:13:45 -0700 (PDT)
X-Received: by 2002:a17:90a:2488:: with SMTP id i8mr111666785pje.123.1564434824773;
 Mon, 29 Jul 2019 14:13:44 -0700 (PDT)
MIME-Version: 1.0
References: <201907300535.IujjRzq7%lkp@intel.com>
In-Reply-To: <201907300535.IujjRzq7%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jul 2019 14:13:33 -0700
Message-ID: <CAKwvOd=t-_ZYHxu4sLFarm+5Qb89KkJW3W57FxvOGVsL3sN8CA@mail.gmail.com>
Subject: Re: [arm-perf:iommu/cmdq 20/20] drivers/iommu/arm-smmu-v3.c:1451:15:
 warning: multiple unsequenced modifications to 'id'
To: kbuild test robot <lkp@intel.com>, Will Deacon <will.deacon@arm.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QHThw9vG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535
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

+ Will

On Mon, Jul 29, 2019 at 2:05 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Will Deacon <will@kernel.org>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/will/linux.git iommu/cmdq
> head:   f549d24887a687d42c3264e8c8a4c384a1df638b
> commit: f549d24887a687d42c3264e8c8a4c384a1df638b [20/20] Benchmarks
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout f549d24887a687d42c3264e8c8a4c384a1df638b
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/iommu/arm-smmu-v3.c:1451:15: warning: multiple unsequenced modifications to 'id' [-Wunsequenced]
>                                    .asid   = id++,
>                                                ^
>    1 warning generated.
>
> vim +/id +1451 drivers/iommu/arm-smmu-v3.c
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907300535.IujjRzq7%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dt-_ZYHxu4sLFarm%2B5Qb89KkJW3W57FxvOGVsL3sN8CA%40mail.gmail.com.
