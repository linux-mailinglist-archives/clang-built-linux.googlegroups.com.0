Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOW5Y76AKGQE3QFUHCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 931AD296619
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 22:42:35 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id x67sf1073808ota.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 13:42:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603399354; cv=pass;
        d=google.com; s=arc-20160816;
        b=E2NKSPzhb5l+5mBHytWxVmbJ2CiQObTHWm88IPEeyZc30FA1nnR7Ym5iSR17eP4ZCR
         NbcDFHjAaFvtYkJvYyw6dqIFlZj3MjENtuykM7Bv3jg++ELk7MlrODcxoiKuqmFKE3XY
         B5IhuXtnPOtMgxd4TRV3i3Atm7BCvo/ZfZ+mohDWzGOZ5QGw1Y4Y2heM1eOReyg8LXyh
         jTMW5w7tGckBCdj+RKHu4MXythCQQqf5FPIou9r/O0uZ8rYEMmzrFnh/NLtNU9jcKbRh
         GJT9kLle5NzDBj6Pd0816gLagGuI2stR7JuUBHHyU7DzM5wIcadFWpbb0HD6d/MC9fET
         I9sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=v8uvg+Jll75ok2UslBx3JBSY4jIy0m4vt06mccMh8Pc=;
        b=etxhhjwQxcVan+ZASYkbAkVm617yCTp41F1xGjpkqpAXRLfU7QeranrJkXQkkhQE6w
         ZqbeNk15eRYJCfuEywBLHthTLVwByUkj5whTtUOJHKvsrInDikbNXQO8kOfcP26SHmX9
         dWNOOfYOvFIEAPcskBlyGch/tQyLoFGB1D3U5vV580pIq8MJ/UtGlgOxV8U71cFbe4Fc
         5w+5ssiaKMbGr6UJE4BgNxNRNPMs/+MHbDfcf4ORcJaQt9bzemRdixPbyLZH3kr1SnyA
         nWNHDqXjse+sxTARo+hi2+sEPVH3Yv/ZHQDXuvW3CFWzLRxsKoftgXlpZPzxdkvOMj/0
         pd3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tqQKw8yf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v8uvg+Jll75ok2UslBx3JBSY4jIy0m4vt06mccMh8Pc=;
        b=cargW/hvqWzy/p6TAHcpfvqwAaewI2fclYhw6apfo1RM0JJw5TJEy1AiLMxaX4O7l7
         ZQHBNb1v84mIEGKx71/Ec+v8hEab/j4U55KXGOvq11u2vK6LeFeA26rz6tDecOhI0gJO
         a3OJKyquT6uDKApmtvIY4MRtcJ/ElXMrWJn1Pv5Qja4OZAponbKgmzh9IBmZ72GqBDEc
         YJHhgR2Iy1/JuOPdx+Ytr8tOpkDLqMvQJdFDwDRDtF0uu0LJQiGpqKdDDFw5rE/yWmFm
         MFKf7D2TstOfazGp2qxi08/2sjmaUa81u8tBABzcddBX96N0EAs/wiKp/1dOSTDKP4ex
         ueQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v8uvg+Jll75ok2UslBx3JBSY4jIy0m4vt06mccMh8Pc=;
        b=FJoAN3lfuJJm6a4bP+mJiDdFDmricuSc27kjGqKpX9XBcRqGEKz0ckq29cLVLWRyXE
         R/FC0PWFm4K+fajUoPL52nAOduYn9EP6+PetS1DGYWqfQf80W6Bgh1s84xpxC/+rrcFy
         uKqMW4N+wRJkl4CVah6mzFG0HKPg4x5bU0cmi8taTcPoSQbqSLkZkYqPvR9/o3Cv9bVx
         wNsAj9qXK3SKyGE2iw+3xVU0Okisj+q58+stYu3Bc0XdCQQVs4Lw8u2Yrq6bmZUEHO6H
         Aqaayqc//WOdgFVx4jHII8YoE4dd8NW+h75i+f8Xr2+F2JgLhGDsRp2iqAoJ22hTvT3F
         LoWA==
X-Gm-Message-State: AOAM531YmUYLkFCJ2uRQEhQ6yWJnya40gfktBv2kniIwtygn0k1534Ps
	O2xtmti6Uc8d/YjZQchjjkM=
X-Google-Smtp-Source: ABdhPJx1jubN66MaS8pfPXFXmCIcfH27KPkacNpfOAcuWD0ilrHZDAvdx8WJVfWOn0QMbshkoaZ1AQ==
X-Received: by 2002:a05:6808:9b8:: with SMTP id e24mr2900982oig.97.1603399354225;
        Thu, 22 Oct 2020 13:42:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2382:: with SMTP id l2ls489243ots.4.gmail; Thu, 22
 Oct 2020 13:42:33 -0700 (PDT)
X-Received: by 2002:a05:6830:1de6:: with SMTP id b6mr3212702otj.37.1603399353832;
        Thu, 22 Oct 2020 13:42:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603399353; cv=none;
        d=google.com; s=arc-20160816;
        b=FwJjYF7bmQVJbL5dTFmlgryQhVs644xpHyvVTMSUWcs0ci+Kbo+d5gEb7Tc/MtJpAy
         NsdYKvwkvJ306Gci9mbIoYKHcQPHM6cMZfjR/h7bu0/6LEN0gBBnedcr/fQUrGYjw+WW
         xiDpCPpgLijtzgkN0U9Id+0LfSCq2IpyFBSpMwykZD2k3DOgd68bPx+/sOBdWRXasbzQ
         9/pdI7Ee4aw8XYN/1ns0cAOBTSIuv8IcD3ZeX+spQIg9AysUnQFcfJQz9PWvPvHDJaJK
         8PzoYIA63TxyCWFhxRFoBvJkiMbgsjAI4UTF9P/wuztt+nhj8a5jimPnQYF4KcJPvhOI
         ePIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M48Z6dq4Jhpe3JgUiGHx76Ra14zyQBkL7sy6RyPYqsE=;
        b=0YdOJkbG1PQgPEzZRZ8ez4cddfXeMj+pnka9V9vsKJj+JF6cB1rzApkMf2pu6E8Xe2
         aSGoHZ9KKt7O0lNLsMIXv0qRRNJJcVLvt5v+Chw4c9/HbuhppaBksAIvhkpN3dy2LYf5
         98ebSVIe3kStnFPC1CNblZyCv5iiCW9aRBS0oWBWFPE2uaPftzH76dz/J/KGPNK6Sh2c
         UJIrt/lwcdXM7SUmWWO7SxawR42CsSNExkjfpjVWnRvoStfkp9fnM9OYBq+n/cL/01an
         jsDjopGaZzj2PhcJe3Jqi1u47tN2Tb3pxZWd/Au24GZ2YHlh/YPnzTj0+IjKVCnFFMPG
         p+zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tqQKw8yf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id i23si319940otk.5.2020.10.22.13.42.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 13:42:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id 1so1598569ple.2
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 13:42:33 -0700 (PDT)
X-Received: by 2002:a17:902:c24b:b029:d3:f3e6:1915 with SMTP id
 11-20020a170902c24bb02900d3f3e61915mr4264388plg.56.1603399352926; Thu, 22 Oct
 2020 13:42:32 -0700 (PDT)
MIME-Version: 1.0
References: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
In-Reply-To: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 22 Oct 2020 13:42:21 -0700
Message-ID: <CAKwvOdmUPA9XupXwYHy_qT7P+LrUc+wseT79K_oqw=3y6bwLfg@mail.gmail.com>
Subject: Re: [PATCH] treewide: Convert macro and uses of __section(foo) to __section("foo")
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tqQKw8yf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

.On Wed, Oct 21, 2020 at 7:36 PM Joe Perches <joe@perches.com> wrote:
>
> Use a more generic form for __section that requires quotes to avoid
> complications with clang and gcc differences.
>
> Remove the quote operator # from compiler_attributes.h __section macro.
>
> Convert all unquoted __section(foo) uses to quoted __section("foo").
> Also convert __attribute__((section("foo"))) uses to __section("foo")
> even if the __attribute__ has multiple list entry forms.
>
> Conversion done using a script:
>
> Link: https://lore.kernel.org/lkml/75393e5ddc272dc7403de74d645e6c6e0f4e70eb.camel@perches.com/2-convert_section.pl
>
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>
> This conversion was previously submitted to -next last month
> https://lore.kernel.org/lkml/46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com/
>
> Nick Desaulniers found a defect in the conversion of 2 boot files
> for powerpc, but no other defect was found for any other arch.

Untested, but:
Reviewed-by: Nick Desaulniers <ndesaulniers@gooogle.com>

Good job handling the trickier cases when the attribute was mixed with
others, and printing it in scripts/mod/modpost.c.

The only cases that *might* be similar to PPC are:
>  arch/s390/boot/startup.c              |  2 +-
>  arch/x86/boot/compressed/pgtable_64.c |  2 +-
>  arch/x86/purgatory/purgatory.c        |  4 ++--

So a quick test of x86_64 and s390 would be good.

Thanks for the patch.

>
> The script was corrected to avoid converting these 2 files.
>
> There is no difference between the script output when run on today's -next
> and Linus' tree through commit f804b3159482, so this should be reasonable to
> apply now.


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmUPA9XupXwYHy_qT7P%2BLrUc%2BwseT79K_oqw%3D3y6bwLfg%40mail.gmail.com.
