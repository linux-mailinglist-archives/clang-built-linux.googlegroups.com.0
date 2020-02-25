Return-Path: <clang-built-linux+bncBAABBJOX2HZAKGQEQKKT4EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id A419A16B6C7
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 01:34:46 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id z12sf21628774ilh.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 16:34:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582590885; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zr2NM+sYm8bDpiDwrLkPlutSkICUHKi6ICoKwhOc/drhCLev0DCSFzNlhyUWH1FU2U
         tCIZvnjty04EQ8rWOHUhDZHt4RB/irchnjAtWiJFDE8zKBjcLdB0SalEZWNLRcYQBOSN
         s9ac19hYxCemCRzu3JPgrJvPfy9rAvsl9UoLDzIAKDyGt+l+pFUvtnA3M3DFgQPmUWBS
         jyzNhrLMRd7IJN5JaHBJuG+FCiRN7SMW9w/I04h02pFPt/b9U1lRY4+QmhG2G7lCRHyJ
         w0GB+BmmrwY2m8SAdpsSW5nav8/rpW01I2g5us2TC6/mTqzjuEaKRz/WK2RcY4I/6wz8
         llwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=RlnszS+Ukns8AtgFIk4S8ecwU96YDxDWIFUd/JVlxLw=;
        b=OLwItINzIP3B+gRM4wo+NS9v85dLrTyZ37kBtaT7R6Folj8bCcoRhnXbihisKVb1qR
         cnc0RbUz5cBS6Rvh4IzsEEpqjevnOuqCIMDgnql3m+mtSCvLZDwSs3OBKesV+gbVAZhs
         NQ/irRNrjghbl3iqcdY/djVn8/TMWe9n70ysnwRbYJguJtoAPvxlGm42VYcAW47CBfwW
         0FkX5SonPLS0ncJfT/HS8JKyIAsHARDioWWa5gedOLT52N4ZvUOf3IzrBAdjgsa+unSI
         O/3Mm3OdiCvgeBXAV5M3X6P6pjLSvWZI4X4kqcVjz+NmhUee9lJA5YYQpnbYL345waNs
         cOlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=MZUmed1J;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RlnszS+Ukns8AtgFIk4S8ecwU96YDxDWIFUd/JVlxLw=;
        b=AT1+NrapN9oydqC4g0iCn9KcIdNBiTqpL4M3gd6ceKuuG8EWcLrPbqVAXcp37PFObO
         zhxSs0dBGlbby7C2Js9syIz8yn5yS4GOd/N2ycmCOrgiWX+mjhZnbnHTa7RJ3xtiWTW+
         GGHEDZe5SBo+9shnPjSXVXx3yJpASI2CsdVmFoAbQjSxhzkktj/tDhI4zcy8EYNlfFHb
         SAQ3axT3RJZMh8fMLf2FSAXyc/CKHX6h2h/XYjOkVnJ1W+wzu3OE7TXqZHlMp8d95Hlv
         LhZtGqRQvWGDq5fUtlrLqOIuINpsQR2B7ye2/ZitUx6ipHjcG7OBVC2yLBQcJtXsBadO
         Fo+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RlnszS+Ukns8AtgFIk4S8ecwU96YDxDWIFUd/JVlxLw=;
        b=eSUWjeBokp5YQhksNpdO4+jTWKlQMcR6xXhy4TfiTnE1Ges3j+mMaukTsEmjuxD2tc
         0LOU5+HyraMgaxbWtjrXuKpS/RnQ/BBSjd/mU+kCsUg7+5arFiTy8f6yF2wgq1KdhHxI
         p5JMlyiza1klSMt26uIS000P9piH/xMEa6kDTRvGiwkskWeVvTvKMx1E4rZ95BF/vRwC
         3R+8jCtgWANfkViT1FPLe+cTaHu3+5SW5w4RSyaZ2OIo6F8cO0QOLZoirldXFmyUgJRV
         YtWqeLR0nE3cvGriNlj0FYaKT1MkAXRmamENn3Jl/KCn7IbbDLKra3uZw8MJTBMYWhi6
         WK6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLKCgVY8r711Tt5pQveaSkNCyy0fCqLlMo1XV8np4GRsl6O7Ef
	cbj+syxtVOItNuT97ZVpiww=
X-Google-Smtp-Source: APXvYqx7e4idOPEjRX68swmHww1nrmWDfNZZegKXJPVmgmDy7SldN/vU3FyJIXxtx1+Ei70OYyMmsg==
X-Received: by 2002:a92:d705:: with SMTP id m5mr61710756iln.76.1582590885631;
        Mon, 24 Feb 2020 16:34:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cb49:: with SMTP id f9ls2334182ilq.7.gmail; Mon, 24 Feb
 2020 16:34:45 -0800 (PST)
X-Received: by 2002:a92:8d98:: with SMTP id w24mr64845950ill.198.1582590885252;
        Mon, 24 Feb 2020 16:34:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582590885; cv=none;
        d=google.com; s=arc-20160816;
        b=uS1kRn0L4+OmC+uunVwRW7IemNO+MREIWs5FlmEGX+brWKAt2lt9Nu9XEF/ArkGArx
         q1/Fq14kPrLXaFy1aNdq8tBRkqgH41a7WIjxhcpPMWL5IPt2jIxVtUEYOUCr9OJkG4wu
         khOmtazL2+3IcpzO15BQAtstKKKQgKz0EjXrv3/WJ6xhgCjkbJxa7e4sSz3p0eCIiV+i
         xcl2A3wk9qWBO+v4AmjM//Q+OLyvozd4UfxV2MBeAqAJ0+zq2r4gZmeSear1g+6Thka9
         YT/1TkalLok2almMTwNby36GMbPBT/AcVOhmtUIG7xGbjziDdWRnKQrnyFw1Il3jb49d
         gKMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=YpOdnzakaY4kQ6Hq6dtj/GHqkEvETebfSIs9KOwQ0T8=;
        b=VvYzrO+Mu/ModhpPdgJ3fREYOcQLG39KIBP+VYcvgvDNhEarN1PXX9SyAWIOj1ydHh
         IHUG6/YdZBGfPN2+ZPEdaeSrFKxy54ziHDczxsoN/KlwiLOtkV1GEdv4INH9DS1eB2lY
         Wrr8QhS6uUaPjJrRezXA3a/Zz8i3je2eeziDf5v/75/o820/l9rNO+HjUQSqPl+tF0iS
         wiISLU/v70T+Q6VzRH5a18cUP9/hUr9C1fzzR8CEo42iw1VXwJTImvgnGMNs/VV55g70
         8VRJdXDagi69t/s7cQ+YBBsiXl2d5kxc6WvXrDIpy9IYHv15fIzrjAe8KRFcQvT2V/lV
         RMag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=MZUmed1J;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id b16si830930ion.0.2020.02.24.16.34.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Feb 2020 16:34:45 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 01P0YVsu005756
	for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:34:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 01P0YVsu005756
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id a2so6931257vso.3
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 16:34:31 -0800 (PST)
X-Received: by 2002:a67:6485:: with SMTP id y127mr29738781vsb.54.1582590870771;
 Mon, 24 Feb 2020 16:34:30 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com>
In-Reply-To: <20200224174129.2664-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 25 Feb 2020 09:33:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNASNsOmyqFWYtJHB4UcHAed5C_isWvMJ4MKHu0O=yUy=8w@mail.gmail.com>
Message-ID: <CAK7LNASNsOmyqFWYtJHB4UcHAed5C_isWvMJ4MKHu0O=yUy=8w@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=MZUmed1J;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Feb 25, 2020 at 2:41 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Added to kbuild documentation. Provides more official info on building
> kernels with Clang and LLVM than our wiki.
>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---


Perhaps, is it better to explicitly add it to MAINTAINERS?

--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4118,6 +4118,7 @@ W:        https://clangbuiltlinux.github.io/
 B:     https://github.com/ClangBuiltLinux/linux/issues
 C:     irc://chat.freenode.net/clangbuiltlinux
 S:     Supported
+F:     Documentation/kbuild/llvm.rst
 K:     \b(?i:clang|llvm)\b

 CLEANCACHE API



Thanks.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASNsOmyqFWYtJHB4UcHAed5C_isWvMJ4MKHu0O%3DyUy%3D8w%40mail.gmail.com.
