Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBNX3UL5AKGQETV6OWWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B06255638
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 10:17:59 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id i15sf40771vke.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 01:17:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598602678; cv=pass;
        d=google.com; s=arc-20160816;
        b=EDUcAfb5+rN7GiJWV9S/AXX/SpNWDMue2mIIqwv738Cgy0SepcZSv1/ZG8Dw/K2zy4
         igc86zE/dntcbLgd5RXQzhHzHLmr/XK3iQ8h4wnaM1ugEDPsBrvtcklyo5miMN4pOCWD
         sxxASHJ/waTjo0W5KuR8iDe0zIM+qjGrqFWD9z0iC4AexJf9ETKg75ciwcxJFN29N/KG
         lRKQkiktmTM0JdHIefIliMCaGLtv8++Xra6+GkjO8IPMsEwsMyNw13lpnruM6bzX6lu1
         jABsXmwssO3DX1CdyungLfUpKSA5Wfg109xcvD1EeiHofqlcZo8+z2Mi/qn2n3jaB9w7
         TXNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ktAlg5VPlXMkDlS9kfJD0NyQ+OZlfOkezGuxYsJVPSc=;
        b=BJfNMy/Q72rXf2mp+LZIrX6Ko4L/r8z6mlIAhvjW++5eRyrbEdF4kcQbD9doonZtnx
         8hkbKPJYdsAH24a0jWDy5t8OE0jYcHNjjLwzG8tIhtRhSROUhzjrfFAeuNnuWi7UONzN
         qKq0x/Y4Pk8oTkMS2B5lHlj4bH/SmZrhE+lR7fOsZnT+FKyqN/2XXmIDTtg6dQnab4K+
         4ojdz2mUcJMqTIal4Tkt3fcbQhOgwhhsCM2FmWsQD8ZqRqhAeYnLt/08KtFkuZtH+VJ7
         zysQ3evGA7d3tJ7ca3HnAjukqoD6lcU2LBYOapmnxmpmT8dY4+eX8HdAALzRHhtg3J05
         uCKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=btByG8dm;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ktAlg5VPlXMkDlS9kfJD0NyQ+OZlfOkezGuxYsJVPSc=;
        b=E+VR1vOXSY5NxB0p6AK75npx0uVErr3s3k9+AYSimkS7hShwxnbkpgrzeUMOqcEGLQ
         +znyhNEJwF+IZF4ynoeJUQhjqETY9MGzCbeUfuc4iyvARSiY0z8JfzBkFXABWymc8Ekm
         Bq0ANZ5Nwg/Yxzd4rgPMIdCcJPpj70Sf/KTIHpt9gW0obnVVVl7VaH0/ph+HDo7oY4F8
         0Sp0XKwwt0ZN7m3XJCDl40WawfzITtu/sYdd161/XUoVN5R9a3inkxVLEnZepNRLAWuq
         DCdN7wicOJv+YVm5BJwCxKvZ0oL8HhSJy+dfFCx+dsHga2HPG2zhG8ymL7DOt0C+FSk8
         hHnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ktAlg5VPlXMkDlS9kfJD0NyQ+OZlfOkezGuxYsJVPSc=;
        b=EWBpZDKRDA+a+Qr6peYQchzbF0DCjTMDSDwR20rhrskFiiBsR0G73DIIQr1KovmEP+
         hUqjOccJgpZxtMvs4cNTezsOcCJc1eJAVc5mV1mjXx/Xl9bNrz7I6WUMzoq8KlGIvCBj
         IEb92owq5uOqkJ+C9jjLthMSjR/YRU0Rl2tVLyKzWwUaX089vRPfcgHfh9zKESX77jQI
         jnyEeJ9eNMk2PNHcLhDryyOLvtqeQXotvj0unuWNOjpxI/8lu1ST7PaR96fxtUXbxgTE
         sUVw2C5TnPBitJJIujkm2S2rqGImhFiV1iHNNK1/AGqGhsfksX2DGfdq03bZmK/TJ+O3
         9Jwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ktAlg5VPlXMkDlS9kfJD0NyQ+OZlfOkezGuxYsJVPSc=;
        b=gWGiwbbI8894W+BNuMrNsWZIIzdlj51Dv6I5b9CC0TIXRC+vIOl2WQc6lgOq5DqGiM
         RCpJH928RhXDujBVNnYDBCxjJMoztVxEBqOOxbrf7Ignnu5P4SMpEp0u4BijaP4dSmUc
         UORdHF2fsW6WrEK4Ifak2/Z5SLxrJCjkoGOvA0UmiSm1+jMpyD6galXG6uT234ZvhywL
         HqCsZCJnG+4a3O9dn0S8kndHP1Vi6h4d27SZ576IAQg0K1VbGSthjGXASZ7zXjlxIUXK
         Qm02HdiDmIuEOhlTgUZe6toZqlEXyBqAyZKgygYK6C2Vf9th1STmgEWZwNJzMFGQwJ1K
         auXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NxN617pz1drqfAasVOI//PBoBOZDXtPg1CuR2Ahvi9k173YNd
	2CLS32GiHo06gz/Eur3qQJ0=
X-Google-Smtp-Source: ABdhPJyjFf/J4lFQmciiIxaA+ybQ7KaWGt8s/mhWerte852lwCdL299njDyR6Sn0lk/B6/f2LXgK8w==
X-Received: by 2002:a05:6102:30a3:: with SMTP id y3mr125749vsd.201.1598602678250;
        Fri, 28 Aug 2020 01:17:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:24c1:: with SMTP id k184ls34739vsk.3.gmail; Fri, 28 Aug
 2020 01:17:56 -0700 (PDT)
X-Received: by 2002:a67:fbd1:: with SMTP id o17mr127168vsr.19.1598602676784;
        Fri, 28 Aug 2020 01:17:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598602676; cv=none;
        d=google.com; s=arc-20160816;
        b=RNQ+pDlh8Q04Qgw2D73fr8J7F8ct5JYBr8ox7LfmcNGDZBxPdnQcufzkwV5E+b03N9
         zpby2x05tZBrrD+GqZwajmymuqikjcWCWY51z/hOowydYsDFBe1dlGo+7lScXAMZYB3g
         yfs0SlBD2ImxvxpP2QnE1YaEiCmUR0+SPmbiLntqspTzJq2ZYRZ5GGFTE7DUXYKwqKan
         ec64p0zPeB6N4dZv3bNrGxiTWXi+tAHhzpMI/7orDmODxeS8pKB4h0etm6IwrQXIPT1o
         mP4zeY+qqA9ARoNV1jMp0o6d/D/ldLn571XsLDYEpGjqLyay/XcqsBPbrnNF+ZnMZy3n
         SYLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aswj7xwvAIu6nys34emjMluVrPcbKJ+vc/0BaVZH3Ac=;
        b=OykRjNuvbjOYT4yKbNd3kLJyPBiWfRxK4dSP0ribOgJy8oSpk1+UshqgZcCp9lq937
         +wfc8JRUyNXYM/mlg5qquPReHTOnUQncYXjm+MJxJ70gH3rAuQoo15vFoBy6pj3oEFHR
         z1JxqVmhIMmss6+yQfoFwUqSVsl3qzj55U3yAcPD5G1smP0xdLEhTQoPbe7sAtr5Ykyf
         OBw+LxXroiCj4ZSE8Tx2zfP4LqoISsywtBv128qFFHs1PC6K6vXXcs0JZxxGiUahx6BR
         8s0Zgggan6eSFn4TgFwgNLUGWiGKbVhj3vAJWeuOlCTfkf4BWJo43C2jGUD2vHZLfl5X
         ueuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=btByG8dm;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id y3si34319vke.2.2020.08.28.01.17.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 01:17:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id q93so248943pjq.0
        for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 01:17:56 -0700 (PDT)
X-Received: by 2002:a17:90a:e7cb:: with SMTP id kb11mr229317pjb.181.1598602675912;
 Fri, 28 Aug 2020 01:17:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
 <202008261627.7B2B02A@keescook> <CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA@mail.gmail.com>
 <202008271126.2C397BF6D@keescook> <CAHp75VeA6asim81CwxPD7LKc--DEvOWH9fwgQ9Bbb1Xf55OYKw@mail.gmail.com>
 <202008271523.88796F201F@keescook>
In-Reply-To: <202008271523.88796F201F@keescook>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 28 Aug 2020 11:17:39 +0300
Message-ID: <CAHp75VcGOvYOXCaQeux5PQ+tHRYF3W=173s80U=mDE-0zzwTXg@mail.gmail.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Joe Perches <joe@perches.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Sami Tolvanen <samitolvanen@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=btByG8dm;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

On Fri, Aug 28, 2020 at 1:26 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Aug 27, 2020 at 11:05:42PM +0300, Andy Shevchenko wrote:
> > In general it's better to have a robust API, but what may go wrong
> > with the interface where we have no length of  the buffer passed, but
> > we all know that it's PAGE_SIZE?
> > So, what's wrong with doing something like
> > strcpy(buf, "Yes, we know we won't overflow here\n");
>
> (There's a whole thread[1] about this right now, actually.)
>
> The problem isn't the uses where it's safe (obviously), it's about the
> uses where it is NOT safe. (Or _looks_ safe but isn't.) In order to
> eliminate bug classes, we need remove the APIs that are foot-guns. Even
> if one developer never gets it wrong, others might.
>
> [1] https://lore.kernel.org/lkml/c256eba42a564c01a8e470320475d46f@AcuMS.aculab.com/T/#mac95487d7ae427de03251b49b75dd4de40c2462d

Seems to me that this is a fixation on an abstract problem that never
exists (of course, if a developer has brains to think).

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VcGOvYOXCaQeux5PQ%2BtHRYF3W%3D173s80U%3DmDE-0zzwTXg%40mail.gmail.com.
