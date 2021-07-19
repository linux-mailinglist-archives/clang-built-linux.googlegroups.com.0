Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVGU26DQMGQE6VKFIFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6017F3CEE06
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 23:10:48 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id n3-20020a1709061183b029053d0856c4cdsf3573413eja.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 14:10:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626729046; cv=pass;
        d=google.com; s=arc-20160816;
        b=XiT/47xygw/NaQ3eKmhcLGM6opGxv0OSgB2JqQ84WqikDxsfsVy8tErAm70s/JmNgg
         xotvf5yLLjEgBbS3+9/t0vpbInR07x+oRd5AT7lC6yLfDkSmYQEg0S5Wcqd2e887IgCA
         p0GNSkgMdMEdepYd+ro8/NdiO1qzEGlUqqcSUpAH0/eQOKYrcff5zHTgRwN7Ns4rmlF7
         kkFyLmPc3FVC34S7teth5cQ1TvCjxhranwm1oySiEokSOBGqVCpwXbiP6Qt6w6m1c93P
         xzy17Z0wrnzZrJ0mNiRP7yGaQtpLvC4ctP/IjUFl6D9EZ+e0PQDgT46h5IQgL4IaIayX
         ASHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wWFkZaZQmcilxdkgSzwCtXu4Pp4ZAav/TRzfJ44OkpE=;
        b=DAogY0jjk6YaWDu1CImhx3yIag7Ta+pEqcGvhLyrXzqvR5BKB/wtrxZ6C/sWsT+dvc
         fs+4RMiJiQdTiVVF/QdbOQ4qJpnt8PtX5dejWw5B23zmLRrT2nRXjnNraUOVHSeseiw6
         eO/7bgzKZRHM7AsDXi+joKJNWygHMAz5O/8r+D1kUNMmEV991dx7Tl7UurF8ATmYt2nR
         +3geVsk4iDfLYYD6p5Lms9RSWV/dRGzkg7EjPxejUVFpBzxevXj9eeeNRnZHdG9iUFeP
         NFZhDMFL8EdU7cikTz+odAi1CjXbv4A06DlkdY0C5cxsgRIvAw186nK8RGXEe0RUpyYi
         3Efw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l4zG9dD7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wWFkZaZQmcilxdkgSzwCtXu4Pp4ZAav/TRzfJ44OkpE=;
        b=ni8ppNqwpN16gXUmpzDexIpSV5K8b0MrESHtO42qVbHaO4m2jjiPGajqu30d7Us7nq
         e8knpS+mLibKpW7aifZ+LcpSQJQTGbBYlRoW+nlXE+24U2UewbaX/DUO3pmEWAs1mnBT
         FYJxhG3XzXNAUp3C49abNh/tMq3mEHu6r5Q/cJjMol97CSz69n6LP9gNasi/nnTzAAm4
         49N4LYM48n8ozVnSSnWdTANzVZdIqqvLyvMKPRlDy+TaDNBmEBRt4KMp7mtMpQmyVqTm
         7mBjsBesMwxicwkCvgYOjxFzZUgIRt2Tjv5xziTHAffYX8BkQa7Gg+W8N7JV3HZOkN0w
         W1ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wWFkZaZQmcilxdkgSzwCtXu4Pp4ZAav/TRzfJ44OkpE=;
        b=O2oUWKmA2KKPoLVt+bmCD28lnh1b89pDoaP8ik/+Eey/v1/cjw7An4309MrDcrLOLh
         W+4PixmKH0EwUO1Ea0QnRRwvWSda42muXA0ZE5uoiGZKgKYW7ROzTdqwepjG7kUsJbu/
         jp+pLFz2nGGZ/eMrvQHoYvfr1YPIngCf5KqPhE4jBKWG38m/wdJdkIV6IiG776ccJ8Gz
         sOAg+3hxmJWsCoMIwyAJVyvsaX7Z6OBQrtTc55Xw/DQYUP+7lOyykAgzWglxx/nmnxup
         CBJGZlPk7MfNbxfgnsuzOAp9p3iGx6KphT1j9HoiVfGl5RjPbI4G0VnXLUJZf6zDsHJ+
         /9cw==
X-Gm-Message-State: AOAM530WBhjANv3QNYq/fc9zB8S3W+blo2DGQYLmBFyUx0pWahQsDu9w
	KujNolV7seIHf0B32z7WRF0=
X-Google-Smtp-Source: ABdhPJwyVEUYht7ZqYU6aSuUR9DYzPvnvEhD5GBPPS9wh8vybShsRxguIaoBlOWwbC53zL0s3n4kFQ==
X-Received: by 2002:a05:6402:22a3:: with SMTP id cx3mr37436105edb.264.1626729045112;
        Mon, 19 Jul 2021 14:10:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7d48:: with SMTP id l8ls8493220ejp.1.gmail; Mon, 19
 Jul 2021 14:10:44 -0700 (PDT)
X-Received: by 2002:a17:906:fc6:: with SMTP id c6mr28720499ejk.65.1626729044187;
        Mon, 19 Jul 2021 14:10:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626729044; cv=none;
        d=google.com; s=arc-20160816;
        b=Go2rypIaZy2Jdx+b12/YWX7tITuoHNcuJ4AzPJZEklryd1lQOspDBFmNFuZhsd6MvN
         dqSeQ1eoKhu4HM4ucw0tPQmBz8Ll/WQ/UsXJCv4umPQoseNcBpIaDRs8GRBDwiBDtQsV
         aTyuHpvRvyPuqCttepxfsHOpiGBkiIGhrC2BHf+6CdiS0/JSOdQPEboUr43JOCNbavF/
         6JtmzD5mi9CawUV7+Af4Tbkw8p95ndPCuw0gIn/mfF1umEN3yz9lLt8zPRmCSLlT7M8a
         pVw+m8q96BwZCWbTqK42xZwKelngGhVvdzMCLn9+XJOc2hAzkSaV/hr11GbCB7dCXKSo
         Y59g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zb6rr15bSXQwTnBPqI4g1KEDBlw35vq1tATeF4vahZQ=;
        b=oS6ufvbcA9CWd/4W9PhySsZqOVxQmMvdr82VHfYgIU/XE0Q55Q/xiTosC4sPTueeQ7
         X9HENcnpen2BmtQgCAYERHcbzM2nDHvc+BYt9wk/XzEwDs51PLV+duyaL6uR3RBxl+8P
         gCtmg5eafDeNdk9qNqN+jXxq4HuFupQPpsq8KH8bFBntEjpBB1pRAIat3k7PIoqJ/cOW
         rVDlFsuxe1yp0o1FlQGyFPjrFBLLsQ3QYLjyPEhcjgV7fK2LNvl/jbg7T9aJXzytw3Bh
         Ey5MQQaEEPHlj8ZtK4ilW/YSu+b6QAB+MGolHkrYnL9l12zCUWcu/hVeayCksk64y0Mm
         su3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l4zG9dD7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id s8si690790edd.4.2021.07.19.14.10.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 14:10:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id f30so25941349lfv.10
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 14:10:44 -0700 (PDT)
X-Received: by 2002:ac2:4ac6:: with SMTP id m6mr20508306lfp.73.1626729043401;
 Mon, 19 Jul 2021 14:10:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
In-Reply-To: <20210707224310.1403944-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Jul 2021 14:10:32 -0700
Message-ID: <CAKwvOdnG-E8HpK9txn4X=MiZSzfFHd90y1qny=0syNUWY3AaCg@mail.gmail.com>
Subject: Re: [PATCH 0/2] infer CROSS_COMPILE from ARCH for LLVM=1 LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l4zG9dD7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134
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

Masahiro,
Do you have further thoughts on this series?


On Wed, Jul 7, 2021 at 3:43 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given ARCH.
>
> Instead, let's infer it from ARCH, and move some flag handling into a
> new file included from the top level Makefile.
>
> Nick Desaulniers (2):
>   Makefile: move initial clang flag handling into scripts/Makefile.clang
>   Makefile: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
>
>  Documentation/kbuild/llvm.rst |  5 ++++
>  MAINTAINERS                   |  1 +
>  Makefile                      | 15 +----------
>  scripts/Makefile.clang        | 48 +++++++++++++++++++++++++++++++++++
>  4 files changed, 55 insertions(+), 14 deletions(-)
>  create mode 100644 scripts/Makefile.clang
>
>
> base-commit: a0e781a2a35a8dd4e6a38571998d59c6b0e32cd8
> --
> 2.32.0.93.g670b81a890-goog
>


--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnG-E8HpK9txn4X%3DMiZSzfFHd90y1qny%3D0syNUWY3AaCg%40mail.gmail.com.
