Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZVV72EQMGQESUBHLWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CDF409C68
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 20:39:35 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id z17-20020a05640240d100b003cac681f4f4sf5367642edb.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 11:39:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631558375; cv=pass;
        d=google.com; s=arc-20160816;
        b=XOS3BHG8B251LFXA/rRkWjMz0Rwe5gVRBBSvr/gjDr+yuoXQK1a5BDlnixEMNnFzXD
         hoiKEfpLQsKJLfiq2Ms8pOiTn0HmkOFjofGmwH+xot9Iy4KbD63/SWTFsxrHg8tz3pTQ
         do6oQd2V7UUTIIO+j+L3/AdqDKcrmT+ACAFS9W685Fd92nFHjBndROeSrcxVNEIq6+9Y
         J+S0/9iOPoZZ6MaMFV4Lr3luJr9wwg1VK3YSnKxydDPp24+85Yiero3yly3pDwkmV6WK
         HsUIEsp++qWNVgDwAx3y99nvcPAvurUlPdNovXqIg5Rk6PZMnWURFL0zEkxT/a2PsKN7
         4dtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PzpXm2yJSlAjVlbnYmTn0JtNPCowrzitQ4jphwq05+Y=;
        b=aTl0t+CmEQC8Cz/DbhsG2YlTnbSP0uNXs9SWtcV2NPPcpJBQ8wFq2TDlLSKHgBunx3
         n34739qjKp1puxUX/MJS10nUpp5l8d6Uo9IGXp19exJ52EvRLQuwYTCwM09rjULOVwHQ
         FYjtcC4IMXer1idMd0a4tDLZVF/UPn3zmr5dtw/0XEQx5ci1rhJNkUH+YdGd/Fgxrddu
         g5CzbnQl0FhcjJaCntoJn3CjSLhFntCWwqu4fvOM0ygZYWtFR2bbV3k/y20kxiCcPSVl
         zUL52IPpmdNW2MoVA8evlr9qmAfw0LPmznahbPPkvv9TiGRtAJ4TTeThy/3wXijms6/M
         FTSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=tcNOwy+h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzpXm2yJSlAjVlbnYmTn0JtNPCowrzitQ4jphwq05+Y=;
        b=M6mJqTYfuSC7G0Sgl3eahN9D0sJlVdQMMHR7oKHxdkFvi7r6kSb59j/RCcB3TcQHwh
         FhyEe4OguxNzFNKrfp76Dq9o/XicuSts8sFNeFwKay8QSoZZH7bLaltJxQxZN0rHeE4C
         Isbj+eEVo2Xpc3x5wUlo45RVPvsc4BfP41OaUD3HW/L89g3My/Gm0Wzp6xYfSW+As0RT
         /9UddAZrJsc9QQtFQzNVVPgP79THT6v2ljG9Pp5cPyGvYJcN3p6EbE5TAkIv4NjdDzzV
         n4/3//bWzAs6F1RuaTNk2CR+DeJFrPByP/AYlWjNG7BzH/lmSgkUwIhFAcoLJqDffheS
         MDsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzpXm2yJSlAjVlbnYmTn0JtNPCowrzitQ4jphwq05+Y=;
        b=IeTq+Et8dlVpAB9M2N7ZytRdHXGfAK0im9VfVWCOULZHz5vXrkvxsFYywIffC/iMRO
         tQLClNPC2DZNG8Ur2AICye6oCzVTVWrMI+K3DIgQYHqgSSjHDqXJY7qjBH7ke2r2n5Gt
         TKDcj4HGj7HpVFXc8bkDcwpmeLzSMhfuRZY+2q77nbKKOnnHM018w38d5xJtLZ9EiK+g
         tE2KqK0ZrU8ObvlnWTI8bbc904DelCRGLKYd5yJu69js7C0lW2/3a+gp//oenerWqlRU
         d5UI4pnDVBhpwR1gYtB0LL72RmPOEgCKkbGeEVYCLc+6MNuMHL95HBBQtnCP3Q3H/7Hu
         Ezng==
X-Gm-Message-State: AOAM532IWpNxtarpfCG0MKvGafJII0YV9nJsj1itLlW81Fsrdk0L6AVl
	BuCOx3oR0PA6v+RVOB6hobI=
X-Google-Smtp-Source: ABdhPJzPoBB6MlyjjG5BSmKWCRM4LAef4CB4gyAhwPz7XRnG0m7P/4AMiYvDMrnGML26RD3XbZw4ug==
X-Received: by 2002:a17:906:b782:: with SMTP id dt2mr14152697ejb.310.1631558375089;
        Mon, 13 Sep 2021 11:39:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:230c:: with SMTP id l12ls2055744eja.11.gmail; Mon,
 13 Sep 2021 11:39:34 -0700 (PDT)
X-Received: by 2002:a17:906:95d7:: with SMTP id n23mr13621623ejy.479.1631558374341;
        Mon, 13 Sep 2021 11:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631558374; cv=none;
        d=google.com; s=arc-20160816;
        b=NKWIQXxkFUWhquYE98vYqPsTbcxzDNhfmIutih8nB/eHhFqUTAYgx6zPf4nr2gPVbc
         CqLulohSPC9lU/1iEhrSjhrVItW6YEC+CVYpZ2IbQBurc20YnkcPga+6pcKH4uiixRUG
         YV+mM1PmPUNY0lAKDJ3DnA76j16hNIkXm5r6HiGdTW8ORJJjJ4/m18km7NzBVBMrzN4B
         g56Np/Nivs8uAgI6xpyGBha2DGbiVnD2zJxDBWu5MCI/m58HzP/kjMaS7V6FZpS7AmcE
         iGKVzGsN0heHw1pHDjYOpGvmixd6hGSP0ZF+1p+H0bMP4oZo9c1azW6iRmnBNnebZrCj
         CIoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Gsr5LZp4mspjysvxu5nUdPKorXySGG+JMQ2KUyjakOE=;
        b=WFuwKhoYI3SBi4HlCUkyTpVqiopNzHos64ZACUW+2WZjX1puVuSATjMhv19Z8Ent12
         sJJFzBPtR4gzjulvap51hUn++V4v0/1PEeo4i+r9FqvkQIC4oqNhV7N89l5NP1MK5eAd
         7zS305/fsEwVUpyNvnCZk/Wq8/bJY/v5unqmG7dNjFV6ZKQpgGiWeKznfhizk3vNGioc
         UTPUy0btYf3i3KY6ISARp+Re/0S09fa8X0Xc7/bOG7L6oUZXkosIAhTX5K/+Gf21wYT0
         CTBLa/cGoFFl6Yb2UlAzokG9tGjCNi8c6OerE0EwRev3nURSlp4QEAMNdDQ03z9D399i
         OGhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=tcNOwy+h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id p21si206474edx.1.2021.09.13.11.39.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 11:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id h1so18968618ljl.9
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 11:39:34 -0700 (PDT)
X-Received: by 2002:a2e:8808:: with SMTP id x8mr12089846ljh.220.1631558373845;
 Mon, 13 Sep 2021 11:39:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com> <YT+RKemKfg6GFq0S@kroah.com>
In-Reply-To: <YT+RKemKfg6GFq0S@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 11:39:22 -0700
Message-ID: <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Baokun Li <libaokun1@huawei.com>, open list <linux-kernel@vger.kernel.org>, 
	linux-stable <stable@vger.kernel.org>, Hulk Robot <hulkci@huawei.com>, 
	Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	llvm@lists.linux.dev, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=tcNOwy+h;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Mon, Sep 13, 2021 at 10:58 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Sep 13, 2021 at 09:52:33PM +0530, Naresh Kamboju wrote:
> > [PATCH 00/10] raise minimum GCC version to 5.1
> > https://lore.kernel.org/lkml/20210910234047.1019925-1-ndesaulniers@google.com/
>
> Has anyone submitted a fix for this upstream yet?  I can't seem to find
> one :(

That lore link has a series to address this, though that's maybe
something we don't want to backport to stable.

I thought about this all weekend; I think I might be able to work
around the one concern I had with my other approach, using
__builtin_choose_expr().

There's an issue with my alternative approach
(https://gist.github.com/nickdesaulniers/2479818f4983bbf2d688cebbab435863)
with declaring the local variable z in div_64() since either operand
could be 64b, which result in an unwanted truncation if the dividend
is 32b (or less, and divisor is 64b). I think (what I realized this
weekend) is that we might be able to replace the `if` with
`__builtin_choose_expr`, then have that whole expression be the final
statement and thus the "return value" of the statement expression.

I need to play with that idea more; maybe that could be a more
manageable patch for stable.  But I also need to eat lunch, and I've
been in the Rust for Linux conference, and trying to organize 3 other
conferences for the next two weeks...
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg%40mail.gmail.com.
