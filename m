Return-Path: <clang-built-linux+bncBDYJPJO25UGBB24Z3DYAKGQEPGP2VSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3701348DC
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jan 2020 18:10:05 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id e22sf2053374otj.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jan 2020 09:10:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578503404; cv=pass;
        d=google.com; s=arc-20160816;
        b=CVr8gjsbqzxU8bDgT74mkq9ef6pBamxZEJO95b3CpBmQYqAhiWN+7cwuK38Wx6e5rj
         jhssBmXTgv07sOPg6OyTmXAH7a5x66BowTzpCsTaAiic5AZx9ElNyrJv5/5x0GAN5rkZ
         rra6MtYRPrAGhI9QM0OFfrE4JXNE2uQblOO/47E1oA6Xu+xpmvN//FvWtqUBufyxSxS5
         IqVdgrmDJuv4G45kYSdNyUuwC75rR6V+TgiJgxJYAo0tqlO6zeefN7K41+Vyj8rfp36K
         RcYpRa9yk8i6sIYgOuGRALjO7RRW8Rp51+GJVwBhiTQTi6yLnfz/DcIrWzV4h0051s0R
         XFMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Y4T/Nvj992l3u/+wSnC7seAEgADlxEwwqhfA0d7DhFw=;
        b=Sa4zpcQkC9Pjj04nkQ+fquOjTBUKKzNgj78Ob5M3uBBgH3w+BUz388ooGSDwwDOOAp
         GsWLq4K+0SGxGJsKSFn0G2uQqaDHf66cyFxXLdcUViPaYe9scVxocp5ibVatlO9ZlpEP
         b3p+YusjXy3Mu4Zegz97XsiRvMk6Xpi4jeKvJrGxcBOsIbJyQ6rCJN+OuMZysvZNXp+s
         lYVNBWSrDyxGYbSUnp8AkVIjY3Ko4OruMFTGYjf1Mj9+N1dBMhdlUnVh4s4V/SynoFua
         iEa2SGnwx8tpCQnHQA47lv+gDEz2Zs7dOP8AF9ZYbVH3aU1IbolEq5uxQzU5RfHhhrPT
         D5Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wApkil+A;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y4T/Nvj992l3u/+wSnC7seAEgADlxEwwqhfA0d7DhFw=;
        b=JWNImrnu8XZE3RzIiInvFa/tHeT6iLmYbCgTQQGdNo/ZaEIQo/i8ZHCdtORqsTPw+g
         3OtIsqCHVqS3fe6ZYrewrAElqe4TWOfcfWMJi8dSIqC4PB+JAnPmfuMFS0a8bvrWlAvi
         d4tIj0lifmmPUKBEhRXKr6vC1MBLkXCrx71useWcFhcV3ZX5VcY6fFqmAO6iIji/QekE
         qkcrtswBFEzvYPB/aSpM/1lfTzt05EBVeoS4gw3717sZtX8Wv6yQk4BiZ2AQMXzG3M8l
         Z8O4LKcQfrqjlo9eCAiVItDjLDsYpoeH68l3qfWkiXgiSJXmIzxaFA1f5T5y2j3hT1R9
         F42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y4T/Nvj992l3u/+wSnC7seAEgADlxEwwqhfA0d7DhFw=;
        b=NXW4De4fG4rL+PBEqvZdb69zfyxlhn01o8yvSAKx7Xltxvut7SvlaAvd4LkjLWEa2c
         WPX01q1IpXGWlJuSPo4wVkqeAefDP3pceZGhZn2ewNzrsB1kE6cWpaZuru59RoV4m1jg
         La6VrQnBkPN/xlgI4KmGfpof0TyerVNLdMuz3mZ5fGiUFJtEGqumy2A1n0I21Q0x+HkM
         0M8ANuPJXqX4WojcuTA2hmyhHK3jWs+yPm0kxxEF9pI9DM7ODpdKZzi4mmJ4BiU1o14H
         p4IIxtruc2rBNfZQFgMkZrHrmoRi4Y4MwXJ/z+8jW3smbsvN123tc9sWeGWgjXQKl+rl
         iCqQ==
X-Gm-Message-State: APjAAAWizwq02hxPRqoBH8kkYzbIGMOjb0baMP70V/JZ8PJecaPwkx1L
	FiLHYvIITNe2GU5eGCmFwhU=
X-Google-Smtp-Source: APXvYqx2cSOIy+jUn5T1O5d26QbUO0LFR+F5zUB/pmS39ASZb36nH0iUXc8EDHqflBprZhgfyNvqlA==
X-Received: by 2002:a05:6830:20cf:: with SMTP id z15mr4972041otq.277.1578503404051;
        Wed, 08 Jan 2020 09:10:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60d0:: with SMTP id b16ls767560otk.0.gmail; Wed, 08 Jan
 2020 09:10:03 -0800 (PST)
X-Received: by 2002:a9d:7618:: with SMTP id k24mr4995439otl.65.1578503403698;
        Wed, 08 Jan 2020 09:10:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578503403; cv=none;
        d=google.com; s=arc-20160816;
        b=n61PBAKLQkw5wwKdURKoKf2Chp6GtuU+IK+F2WzQjFkrQB37kT3bCNFtF3/HLVuj5u
         lbSianH7GSlcoTKoYBiioaLmVw1wXquzpMd5Q7DXEL1ERCgyRFGkp4ec0886h1rQstl4
         DPlWuF5XtDvqSNgpB1fc1A33/8ZTLR+0A2Ph3YItl+CmQEtz+rKsG+podx463yVMY9qR
         kdBUj3K0WoSFxBgNov3d7vR+sQVhVjkq00/VQbZedDI6U/Qr1XGsXyNKek/DhFf/4R6w
         jKYSG4+LRDOJaqyO+fTnXa4FdzXzil8/3Sy/aICLfVHBhkGStxDljwvs9IyN3/TSfJ0M
         42pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r+9NheiIK7wqRFVlqRwmujlxMimdeoutWQ0UtgjLOtg=;
        b=X7DIdot78eov8kaMv+MMY1FQ7HPHm73ARH0XVuEfmthH8p24NXevCtW87GEIhrEKgv
         IWCO9CSJkFzQTrKuSWGBRXyuOKd7sdOD+XZnFo7DZ8aIf3+uGyWW1Sn8Th9rHtvHdju5
         DYEOemceG7RPmNgQZoq9mW0c5y+DgYh4yGGekXdiBqS3hxIXwGRUSwFB4nWqFWF9+OkI
         Sozd7Dx73W+n2Dmd4R9ZIEo9j/yB+tLlU7GQwB/1zsWhPi1yC4Gm9E0Vij4I4K7A/lMQ
         Go2x9SmjnyZfGUblMk88ezEejU83ecrrxyzjaVQZ4yrT2lbPKcCU4nHc73R331l1DrGn
         nP3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wApkil+A;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d189si148012oif.0.2020.01.08.09.10.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 09:10:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id l24so1886355pgk.2
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jan 2020 09:10:03 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr6167130pgk.381.1578503402671;
 Wed, 08 Jan 2020 09:10:02 -0800 (PST)
MIME-Version: 1.0
References: <20200108073928.GA51655@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200108073928.GA51655@ubuntu-m2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 8 Jan 2020 09:09:51 -0800
Message-ID: <CAKwvOdn2OqDjxF7KEua9PMKg8Du07x+LEpVkptB7S4v9g4f87A@mail.gmail.com>
Subject: Re: Current status of building certain defconfig kernels with popular distributions
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wApkil+A;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

So looks like anyone with clang version < 9 has issues. No issues with clang-9?

Thanks for all the work that went into this report.

On Tue, Jan 7, 2020 at 11:39 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hey all,
>
> I decided to test building 5.5-rc5 with the version of clang that ships
> with various distributions, such as Debian, Ubuntu, and Fedora. I think
> that getting the work we are doing into the hands of actual users for
> them to hack on is important and I thought it would be interesting to
> see where we are at.
>
> I have published the results in this gist:
> https://gist.github.com/nathanchance/7127341d89914d335951af20b8bda67a
>
> I will eventually run these on the 5.4 branch since that is what most
> normal users would run if they are using an upstream kernel.
>
> If anyone has any comments or questions, let me know!
>
> Cheers,
> Nathan
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200108073928.GA51655%40ubuntu-m2-xlarge-x86.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn2OqDjxF7KEua9PMKg8Du07x%2BLEpVkptB7S4v9g4f87A%40mail.gmail.com.
