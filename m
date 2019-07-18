Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIO4YPUQKGQEW4VJ32I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id BCED86D6BE
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 00:09:38 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id f143sf11703452oig.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 15:09:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563487777; cv=pass;
        d=google.com; s=arc-20160816;
        b=M03qKIzDRhx9WkiCPLP1mWaaU8CD873T76r06a0SlydcQz4UNHtQffbgLvdYCZcfk8
         sHYVkFpY6KiiEzqYU2TOTcvYRxl6y/OpIDiB/U+YJnzyQfGIvQzfLi3Oh7vDKhLnlwDn
         kIHukGGfWAtDjMHljQ7OW7x5PKnFlb8yxffMS/LQv57lFGRRbefE4jHuwnytLbsi/hbz
         6VXSKobum3olRiL3+EIa9gYZnBiQUeIPvl5VTkNBH86pHzbhO8OihewkH4BpMxW82H3z
         jY4jewVCrn+vf0q/Zv59xh74jQ9iZghE+Xp0p2DeGAhqfpLz7lU0lrSqpwnpP3FMsNL5
         Gn+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cE6ax23fQi9Rv5Vzfm84OBBIJeGOTXwDE8PMiB95lTE=;
        b=0MZoL1zfAlQCQkwMMPS898xFJDwuqfGuwqrg1A78IgyLBdtPSnfQL7InUeooCU8dxg
         ezDSn1fK7fwIAg5mN1YHnHC95quQMMvb32gTn7UPIUZEitAqGn/7yTMkmUA142uVXJO6
         XkPEIWhlAe3SXg487OaoLOkoTVFHAMBaJiZKNQ99w1z/Ug9ijbaeUWQG8lRYCnprkqNT
         fgc75Xr+EXMiOCnWzYqZbGtkVUUphLRhPwFdLO5dnkwoIbML9Ii/dDtrxMpuhU/e30oF
         cK7FQ4tKrtpWm7ADGCj9yUT98OZVsCb1deIN790fIwvOfgagUhbgEaOmUcl5EUgEry0/
         0uZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iSlmu3Xj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cE6ax23fQi9Rv5Vzfm84OBBIJeGOTXwDE8PMiB95lTE=;
        b=IvdhtJi9uBdHlEmgcPhdyTfQSASYbVysLUyK5XNas0jNn6v7Hk0+S0Nlqvl/2P+P6o
         +8K/LzRwT91DUHG8ydtRI4tTaU2LQ5KYJuPtX6rHqvFBYZ65705IYqwXMHgDqItvKSuG
         g71e4N7516s4LUZVcX/Qxmf3Yz9PSqnTKqieahXPnL9K1CGDAMGCsALwXyx+thxUTs1w
         R1L+B0U6OXSgCKQmLmBc2LfCH4SRutsHxZ+MG0cAxENmTJBebOU1kKeJ7egGVM9CRrnn
         BPcGSh7VSb3QeGdIp/sqF2HFO29Mdt2GXxh+zuWisEtH44DLfMsfh86ThRM89TbZFjuj
         3ZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cE6ax23fQi9Rv5Vzfm84OBBIJeGOTXwDE8PMiB95lTE=;
        b=T1Hj6v26x3+wboz4NznaB9hqm27Cv5i0hEZlgvRepw9raTreRVZuA66DM266mfL6TA
         8QBERuU8NnSByLcOgNl5g5yfEVEiacMCQqlyt74pcYxbyf46JerdTmLjRQdTzgm7p53G
         f3XRxkKUo22sfjtdAQYmyi4U4q3/9whivssxh6K7/YZ0PVSdVili7jxk09l+bDDFkF6d
         /pZvtvmXpxb0wYqLpvHHAFrqBemDWEkD/TC0IPW6/HcZ1vLn1E7Xw4I3Z7mg6WylBfct
         ORugSb10Zx3bCaZmyROrbve8tDeTgqqo8XeQOLQbfzO7hhdTPBg8+Q/KuQ5fdY3HCibg
         kyAw==
X-Gm-Message-State: APjAAAXpwoEvrdkVNwAlEh3DB1Ql92X9st+e6sIwmL9ZupRSl/NaPLFy
	JEHjiF1ijFpnRFLK8yEXVGg=
X-Google-Smtp-Source: APXvYqz1nKwHV4+XtO7O+nhNmUXCBt4xEOu66rcy9/1s6g64XrMQR3x3OJjFuJKYjaLzM5oFgdZMig==
X-Received: by 2002:a05:6808:8d9:: with SMTP id k25mr16595621oij.28.1563487777696;
        Thu, 18 Jul 2019 15:09:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60d7:: with SMTP id b23ls5598168otk.14.gmail; Thu, 18
 Jul 2019 15:09:37 -0700 (PDT)
X-Received: by 2002:a9d:624b:: with SMTP id i11mr37834794otk.23.1563487777479;
        Thu, 18 Jul 2019 15:09:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563487777; cv=none;
        d=google.com; s=arc-20160816;
        b=G3ckShHdIr3t5HX5TW6nGw43/Y7X9+Jidh028T774HkD24qcvpI3+M2+2af5Wj20iM
         WRq2zHidJY4YyGGB2Vzh8MpGJhenrhqtelKu3aMZrutzWbeveqenSxmLDv7183cR4HEs
         HrIT5jCZ4IDbd5rjoAQ6Y0tTWkbwewadFD7S4tUYGzv27W+r9BXeMeNCbENql0tJv4Et
         YApa9bHxyB7x5D161i9xBKlQgMLSWKtBgaMcA/Mr9a+ImQ4Hg3i1TSz0o2VOxwcUlAgI
         i1oCZNcRETeDA1XOwv2EIq6svfZVqgXfUo6qVoobBl2E27Cu2dbJ8t5Fd644eTuYtkj4
         qZkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cJB2IxtNuxhv2Lxf0ZUw5k1i+zFNjuXUoBzzFYiAiUI=;
        b=FKqyUs54/VSppdG0oOXJfw8detsvXAiNL9YpzTrcipMLVewItx6G78eh3qZTyTLOAT
         4kqklOnhBc1w9QbljjwRhuCYv4D0dS+oyatnkquVcg6m3h8ThOZ5k+FYOheoGQbjbruu
         rYCAtWHWrgFHH0XWXn3pnxYPOmMPuHZxOYSn6dQYa0srDhObDWKSwhgYgdbRNjiQqQ1J
         FxAQNVqShmc3dWY5wUWbJtV5dMQ34dUtm39m9Fr0QKD/51VAQvUl1EQaYi5p5l8R6BRE
         9gWnay6uBafhi62rF/hpj7TExHVP0DN/d0kLttgO/6V4aPzL5ubupHqHczOz3WlBcCx8
         8+aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iSlmu3Xj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id n27si1422930otj.1.2019.07.18.15.09.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 15:09:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id w24so14561964plp.2
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 15:09:37 -0700 (PDT)
X-Received: by 2002:a17:902:9f93:: with SMTP id g19mr52157329plq.223.1563487776450;
 Thu, 18 Jul 2019 15:09:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190718141503.3258299-1-arnd@arndb.de> <0ee5952b-5a76-c8a5-a30a-ee3c46a54814@virtuozzo.com>
 <20190718162310.GG5761@sirena.org.uk>
In-Reply-To: <20190718162310.GG5761@sirena.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jul 2019 15:09:25 -0700
Message-ID: <CAKwvOd=XFVP78OjwQT0HzHyHF+ALA+V0ZLvuOB-8xKrrjSncUA@mail.gmail.com>
Subject: Re: [PATCH] kasan: push back KASAN_STACK detection to clang-10
To: Mark Brown <broonie@kernel.org>
Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Qian Cai <cai@lca.pw>, 
	Vasily Gorbik <gor@linux.ibm.com>, Andrey Konovalov <andreyknvl@google.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kostya Serebryany <kcc@google.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Alexander Potapenko <glider@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iSlmu3Xj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Thu, Jul 18, 2019 at 9:23 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Jul 18, 2019 at 07:18:28PM +0300, Andrey Ryabinin wrote:
> > On 7/18/19 5:14 PM, Arnd Bergmann wrote:
>
> > > asan-stack mode still uses dangerously large kernel stacks of
> > > tens of kilobytes in some drivers, and it does not seem that anyone
> > > is working on the clang bug.
>
> > > -   default !(CLANG_VERSION < 90000)
> > > +   default !(CLANG_VERSION < 100000)
>
> > Wouldn't be better to make this thing for any clang version? And only when the bug is
> > finally fixed, specify the clang version which can enable this safely.
>
> Especially if nobody is currently working on it.

I agree.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DXFVP78OjwQT0HzHyHF%2BALA%2BV0ZLvuOB-8xKrrjSncUA%40mail.gmail.com.
