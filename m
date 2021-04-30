Return-Path: <clang-built-linux+bncBDYJPJO25UGBB36TVWCAMGQEE7Q5J3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3368D36F404
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 04:22:41 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id i8-20020a6548480000b02901fb8ebd5714sf24082510pgs.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 19:22:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619749360; cv=pass;
        d=google.com; s=arc-20160816;
        b=EyOxeeBBRn6+JXENLrrYJAt49l5dSVzkke8gjU4bxV9ACO0VBy6u9hs7zSZOA1DGk4
         Ww0I5c59/2dhhn9A6JKEnPum5KKrm2ENIqod0KNQBvcuJXRy0b9mbsNAZ01cakIsWF7B
         E6Sdffdrjqif2s3y7qokl5f3UUAh0GwW9LdY6ZhEN+H3iEDFpmTE9oTc6mQIOc9ZJGqL
         S9A1vrk8V4GPJ/VQXTDnr6r3voJLoJeo0dYbsHm51ps1wa09jv7SExTA6tudYS+yKHpt
         yxl1dc5rZgnwWdL1+QdFuj+JPgaVT6XE+zgI5sGsar4Pb4Nt/0qpnlS27hFfht+myozM
         XYcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gGRgqaFH4DzxIA1p9iKrneLic5Q4Uq04TmpwhzzjOps=;
        b=m/tDAaW6TjrXF84xofNk2g6bkG4gxA6lieUyCbSAEh0e/fyEILHXpCOOwJyJsCcrme
         PNdxqgSbfFuo+MPgAIZS965lX3apgGmYme6Ct+0n3IZpwvkaOTpqICRhfKpu5Ahgigvy
         oKpuMG0ZoihkjHic5/i9gl7cnubScHQEdAdiaUvJQGyGJiwyUgcrWucqx5LPuLn785Ob
         CBvuEooRTLPb921UwxpezXblxYY0F0ZM6GrXba1T7l6EUwy7MRKBsr0II5wy+GCqHz7H
         zDP5BRWLMVpqlVXLWSMyLFYSWb4CIfG32/KshgJByzPFwp76rIGlRR4JkK5DJXycawpc
         KzCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e4KXnDTn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gGRgqaFH4DzxIA1p9iKrneLic5Q4Uq04TmpwhzzjOps=;
        b=IsWJJPgEDSJoj1wAM6MdykW0hBWL7dski5EzhToCnChVK59PVUqaTxocDNKL6flDiU
         S5ZCXbKyzrUYzhaOewukMAU6BFF6N2zq5tEY7eqHLGQPPDiJQNE+f6Njc7Zau1iouQaZ
         5JuRdQ86sgFa+WJo9Yh1c7W9b8za8ley3qlsxiRVxS+9sxApKrbQtAS3+Zt5molMFAMS
         kfhiL6WIqrJDfBUokMI7yI+i6TogP4dHLg6bmqPyQnt+KVThxgrlPY6mm7AM2s3BtIaM
         gN6iXCMFCEmxZVqUxCupEJRzPFIrcvl7lHmNjPLNpmWwEh6IOy2CHHVZno2YQ79To5En
         n7Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gGRgqaFH4DzxIA1p9iKrneLic5Q4Uq04TmpwhzzjOps=;
        b=cONRiORteUfq/oNoI6JixL/GQglMc8zJWvnfojI8AUbe8wLzpZhp5Qi75pgKQ9XMyO
         m+mDUoQyROcpgIukunCQVcpgPhfhqT+65QftAmPIFun8OVo2+OIT7IFr96itOZrvH6Kt
         +VkrQupr67kJ7uP7zCHxhMp14zpOcQ/2r2QyTPLloE8diFkdPSB6IwjklBY56O0XHMYB
         raow/Hev+v8FUWy/U/P9wQ/xlhD3dCjfQebdx7SyaSfS8HnBOe4snaiL07KDVV2EPn0J
         Z6CA8W3g3RwVRhVWzi3i4PUkjS6CC+TkfAkEqjXSHmGM91RnGqgcXeMcPHv+m9UHj/gd
         6ULA==
X-Gm-Message-State: AOAM532pkzKrsMyElcjX7Jj0jpW9/lPLtSqM5NSOj4qTuhi8ZOmnA1JK
	0wSDwjiRoGP9jGzVdT2g6EM=
X-Google-Smtp-Source: ABdhPJyKDvTFewGJ8wuEdMdrWkFHl6zCj3Ew4aAxQhkESA/il+0GycyRmIEH0X3RTcM9ZSmddo32oA==
X-Received: by 2002:a05:6a00:706:b029:272:19a2:7280 with SMTP id 6-20020a056a000706b029027219a27280mr2627960pfl.8.1619749359982;
        Thu, 29 Apr 2021 19:22:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d85:: with SMTP id i5ls1937167pfr.0.gmail; Thu, 29 Apr
 2021 19:22:39 -0700 (PDT)
X-Received: by 2002:a63:1a5e:: with SMTP id a30mr2598279pgm.156.1619749359452;
        Thu, 29 Apr 2021 19:22:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619749359; cv=none;
        d=google.com; s=arc-20160816;
        b=XcO8vL7/1YsKngJDdISCL01oXEjh3HJZfm1AAJjUeQ1dJDHA/41lSvruUkjVv7znYd
         pJ7tDd4t23yIBjip5iDGse8hEhq5/JvRdIpUg7R9UST38KNHi6r/YDLira0IE/JBoISs
         ILST+rB56kSzJ3GB08f05MYkHm4Ufc+eTC8toCN+3ufrMZOwUSr2IR/Ak0CimBvcaFWw
         ypF+3urrFljbwYr8zNoCrj2N9MeDWK1ieDi+GQzplKWHEs18OdsDfVBqJJPbqCBGy/tJ
         QbHHk95i5XizsaFGYjR8VmLyakGLlKGRncdsTVmTgYDM0nbaj4ZuVyRMHEbhYivB7Yo+
         X6lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e1n4DqmQlREsyApKfLukQaSZjYP8wuyF8Nb/20OdqmY=;
        b=EKhXzTTDC/cJWu5wjOhpRnAU/U1eaIBhUU+tYOodV+80RrlC9L6mo8ReGJh27AMyP+
         Pn5Bv8h+PJx0YeXy+vmrFC3eFal/Qzmp78KhxF15P5ohaqadSyBUxBBpiNGkPTQMFBAz
         7exELyANGnRUt3nBsXeG3jlib1pL18IW8dnn/94AljRoUD9BFRHrDDRiQneZkrM20z8w
         V7BnUUzuwumHN+VdCw9zouMD2x5KXz6kyu2B5AriQtLSQGRgbuaCLKv8vlgAUwsubVOn
         GHoxLGyxcq6XgnmzrL+N2DucjEitpC1TK7/U1WgCs72hZy7p4i49M1Ge/XKiQcxmuGf/
         EHRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e4KXnDTn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com. [2607:f8b0:4864:20::330])
        by gmr-mx.google.com with ESMTPS id e20si398622pjp.0.2021.04.29.19.22.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 19:22:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::330 as permitted sender) client-ip=2607:f8b0:4864:20::330;
Received: by mail-ot1-x330.google.com with SMTP id z20-20020a0568301294b02902a52ecbaf18so10852993otp.8
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 19:22:39 -0700 (PDT)
X-Received: by 2002:a9d:449:: with SMTP id 67mr1613259otc.333.1619749358628;
 Thu, 29 Apr 2021 19:22:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Apr 2021 19:22:27 -0700
Message-ID: <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e4KXnDTn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::330
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

On Thu, Apr 29, 2021 at 5:19 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Apr 29, 2021 at 2:53 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > I haven't looked into why this is so slow with clang, but it really is
> > painfully slow:
> >
> >    time make CC=clang allmodconfig
> >    real 0m2.667s
> >
> > vs the gcc case:
> >
> >     time make CC=gcc allmodconfig
> >     real 0m0.903s
>
> Can
> you provide info about your clang build such as the version string,
> and whether this was built locally perhaps?

d'oh it was below.

> > This is on my F34 machine:
> >
> >      clang version 12.0.0 (Fedora 12.0.0-0.3.rc1.fc34)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%2BV2dc31guafFM%3DN2ez4SrwCmah%2BmimUG3MzPMx_2efQ%40mail.gmail.com.
