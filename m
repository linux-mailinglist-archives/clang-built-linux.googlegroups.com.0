Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5XO7H2AKGQEV55HRDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1C41B1D9A
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 06:32:56 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id q2sf1287770vso.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 21:32:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587443575; cv=pass;
        d=google.com; s=arc-20160816;
        b=zPbi4wy+jQSCi0zsZQaySX479jnqz2CrsHoaN7MxhBZfljzq4ngxHQxlI4RY5XRIGx
         LAzS59m6u3JJogPz9DNfeY9ffR1fVq6nvFMbn1WkKDX9n/Uiot+Yf4SvFpW6SEV7bW2h
         GbrA8ZPtjP91mIGqdvJDa0cuobJ88bKiYNE1SJY4kjxDKryzbtRDUeHXa44kGhlNWyYC
         9BwfqRUpOgGI+GLifkQKi6W3IoYT57ah4LJ76hLSYdnkQvHACjyPW7ypCmpcmH/dxVNN
         i9us9/bDTg1DO49aULV11Df5T2sO/Pmmt1fYh56PBnpKi3AeYd0OzHIIiwi6mUiAoLSn
         Wk1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=0Pi8+vfn46k/tjhK04Ufecnk9ROXIhObFsSeKdNCs/c=;
        b=tugcf2jj8TUai9/MO3HNfpXTuHDraGhORzHAQKw/LnEFB4NSenXzwHgHCMlx8cRaDk
         QD+3YqkGalTV0/fwU3TWU7xio9ea+elt32zu0NRJwnl2OVSHvI76JI+A2Si+UeQwGpvo
         kMjqrgtUDZvXvOWL1Mc4qoOfOryHSDybu1Yi4e+zU06JBsazOsY1akiG8WOSBUKNDt7T
         5z/8SQCgRJjM6YEAPdJKBCi1louVvyWN8Fik2PYW3VssYTu5RGzUFZCVWaADELyFR5JU
         z6OC6VYE6dcGF62JOFIsS2tUNlZq21Jgk2EnCiLo8ysrIfYhaydKlHNB7T5EStWncuSe
         1+cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IbqY0T41;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0Pi8+vfn46k/tjhK04Ufecnk9ROXIhObFsSeKdNCs/c=;
        b=hRNJf4KDSHeKmegfCdTS8ftqR4jOPgG23pSc7CRf3kJDzwWGAuwNgkTGJKyhsPQxAE
         EO7GDmQTHQ8u+Pt4a/ZcNwgOXbhj0P4Pxt4OsC09BpGQTn2/qs+PSTGxG9NfgmZBbtgB
         zs6unSxX9OoiY1FKJHOVV1Be2qPpi9YYyh+uDx5+NT0BEABxT+CGM4muG3N4LJTqFlM8
         2N7XDwCo/0mFTvs+A/y5edykCKyS1KkLuUFwwJUrAkANqNLcqGFlQet2Y4okDBuBhncp
         M0CNkhpeMEnewIWVVZ+L/3lCvhQgLnPjk5Xnu74+owWVpWml1tqDjzzRXmxMpLvsR/1v
         D2QQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0Pi8+vfn46k/tjhK04Ufecnk9ROXIhObFsSeKdNCs/c=;
        b=ZTG+V75KvKQ+bz+gIEvPjeT4DuiG3d/1VBvFgh3oqKhAEzOb5RaMRbNEsaBtrkrJzC
         GpaIkaUl3nnVyRGF0/cpPDicCky8IEPdWp7rDhYlDQsuCISlkIxBvJaXYmSKBIPr5pqo
         GEt3clKEeCwgjHR3ql8Hj/Ak1eYL8Ubngsoxt6ukNPDDRoQFuESGLsPWx1VdNEXs+7fB
         RFvKndyYOaRWEcqy/sd0vQg8XX9sWUgZ5n7AHfaX3YTP/F2h/fHvtqO06kK6xw5z8Myk
         m5Xw8rQsRzQ/M3RrXkgDcM2KXuRot0dojKDlceAlXbnXIkKIzwUMD73xv6P/2oZxeoAo
         pJ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0Pi8+vfn46k/tjhK04Ufecnk9ROXIhObFsSeKdNCs/c=;
        b=nFv2dPWzcWuBwxNJgztGVezKMUj8RmJhcaroRot3oiUPAv1Ih7MwcADhI6uZPcFEoZ
         UNuFwNLgTJr44K8berE+/uY7zC7tKkTB3Hm9Xtie+JUvQAWFCqqwoEY2cd2JQ7FXEPRn
         2gWQfSNXLJOQxrZfUxcmvUWzf/SzsRfUGwOWZrvWCJARpRq+b7m51uOoAtdWkHRD5zFp
         4Q2AdsfRk07aC9crwzl9/qjjrM2YIYPxsvXhXiYhyov9payDfl/sMbq0LmIH8hSCALNW
         RXJI4OQaBI/X2Frl4pr0eBEIPan6GDAs3l8h8hmwdo/rD29V+kMX2qWaq5WO5JBp/k4Y
         H3tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubbtoDdSNt93ypS6mx3cP/Oq52Veg9zul1xc84N7zPRGYp0nz1c
	ZaIFrtlNuoWmylivJagnH5I=
X-Google-Smtp-Source: APiQypLsEQRIhswDnzSZvrOHYLEr4lPU53APz+/WpNOY5wEmdERSzeGireMr8mktWYsWJMmtg/5pwA==
X-Received: by 2002:a1f:1f52:: with SMTP id f79mr13589797vkf.19.1587443574973;
        Mon, 20 Apr 2020 21:32:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3383:: with SMTP id y3ls1048372uap.2.gmail; Mon, 20 Apr
 2020 21:32:54 -0700 (PDT)
X-Received: by 2002:ab0:b13:: with SMTP id b19mr10317868uak.91.1587443574589;
        Mon, 20 Apr 2020 21:32:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587443574; cv=none;
        d=google.com; s=arc-20160816;
        b=0Lnd6SetSselkPMRZPGR+aG9d2xVxUCRoQnxRU/6UYOz6claAgllYDeXWqfC/9O9g5
         nhTKNQ1kXRZYsnIg3+e7sT/FacwYm/YoHNA+p0wy8wD9DJ4Yw3/sSEIZPAieYhqeQ/J2
         9yaM4a2e5icYxF3VrrokhCzSomUPDKX9KyIlEiGgPHSMM9TwFFArjvO8p1XKuJULjQCQ
         U9SJzl+C3gUgxvYIYWfj7xKIj68SdAWOdoRelWThjo+fh3CjuKyamzqK7ZymqG8jm6Sf
         pbSQa6dsieESmpKhgr4qXLexhbROgJ3bbyChYVfNEYu7xaFyMhUB0Esa5CQvnXP7l3gw
         jq+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=UPMkss+54nGeDEwUR0+B1eg0ik2cEEjdyo7gLfq4mZQ=;
        b=Vw0cYqZIiZNuOSeB0nPAaSLO6UfB/qQ8O4pM9TpvHtvx5xEmTRm7utDPIYCuxF6MNQ
         L2NWLzeRsBjmTN89lM7dv5gcuXnrC0eY6uYqqKyHDYnd5bFJmhsLkFajIxTOEUKp60xx
         Lk+sGfVgpbS/AwVUrRezqaExKI8Uq40QjM6jjuhaYJ9V/eoI6epX10ttYVFJPBtVogKQ
         And+Jnwn7SVC4tO0u73nX7a9spCSjLpaxRd8Mml42ab64K3ZBME9FwTK+/qwfpxI2WjA
         UJYDvdmfaTD+dZXcCkdG48/incJALXm9oA8GhaO4M/wxH9Sl+aDz3/Rh1KLs4zsN31sG
         nA9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IbqY0T41;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id f17si113532vka.5.2020.04.20.21.32.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 21:32:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id r66so10986313oie.5
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 21:32:54 -0700 (PDT)
X-Received: by 2002:aca:4d47:: with SMTP id a68mr1979522oib.60.1587443573940;
        Mon, 20 Apr 2020 21:32:53 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q15sm471569otk.78.2020.04.20.21.32.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 Apr 2020 21:32:53 -0700 (PDT)
Date: Mon, 20 Apr 2020 21:32:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>, Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>, Jason Baron <jbaron@akamai.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/6] Silence some instances of -Wtautological-compare and
 enable globally
Message-ID: <20200421043251.GA4996@ubuntu-s3-xlarge-x86>
References: <20200219045423.54190-1-natechancellor@gmail.com>
 <20200420210332.7ff9652c8bdca7fb91ccfb0c@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200420210332.7ff9652c8bdca7fb91ccfb0c@linux-foundation.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IbqY0T41;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Andrew,

On Mon, Apr 20, 2020 at 09:03:32PM -0700, Andrew Morton wrote:
> On Tue, 18 Feb 2020 21:54:17 -0700 Nathan Chancellor <natechancellor@gmail.com> wrote:
> 
> > Hi everyone,
> > 
> > This patch series aims to silence some instances of clang's
> > -Wtautological-compare that are not problematic and enable it globally
> > for the kernel because it has a bunch of subwarnings that can find real
> > bugs in the kernel such as
> > https://lore.kernel.org/lkml/20200116222658.5285-1-natechancellor@gmail.com/
> > and https://bugs.llvm.org/show_bug.cgi?id=42666, which was specifically
> > requested by Dmitry.
> > 
> > The first patch adds a macro that casts the section variables to
> > unsigned long (uintptr_t), which silences the warning and adds
> > documentation.
> > 
> > Patches two through four silence the warning in the places I have
> > noticed it across all of my builds with -Werror, including arm, arm64,
> > and x86_64 defconfig/allmodconfig/allyesconfig. There might still be
> > more lurking but those will have to be teased out over time.
> > 
> > Patch six finally enables the warning, while leaving one of the
> > subwarnings disabled because it is rather noisy and somewhat pointless
> > for the kernel, where core kernel code is expected to build and run with
> > many different configurations where variable types can be different
> > sizes.
> > 
> 
> For some reason none of these patches apply.  Not sure why - prehaps
> something in the diff headers.
> 
> Anyway, the kmemleak.c code has recently changed in ways which impact
> these patches.  Please take a look at that, redo, retest and resend?
> 
> 

Thank you for doubling back around to this but we are good here. These
warnings have all been fixed in Linus' tree without the need for the
first patch in the series.

For those curious:

63174f61dfaef ("kernel/extable.c: use address-of operator on section symbols")
bf2cbe044da27 ("tracing: Use address-of operator on section symbols")
8306b057a85ec ("lib/dynamic_debug.c: use address-of operator on section symbols")
b0d14fc43d392 ("mm/kmemleak.c: use address-of operator on section symbols")
afe956c577b2d ("kbuild: Enable -Wtautological-compare")

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421043251.GA4996%40ubuntu-s3-xlarge-x86.
