Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBZETX2BAMGQEQ233KNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B9833C192
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 17:23:02 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id j12sf14951723pjm.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 09:23:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615825381; cv=pass;
        d=google.com; s=arc-20160816;
        b=dtuzOecO43dNBe2VWr6dH42aKgwqRvsiNPaMiQlgRLChSStKw40XwxdMZPJe7mY3I5
         nIMcLKt/qmICs8lhvc5J8emHlRa+SHXEx+KPWI3aq0q/LEguMnD/L8w0ner6W/gostfR
         uuj2tGWiqxLhtcPG+U/cuARUsVKcnwZDhUYVcKb5N0EarwTP/b6f+eXyLD82qiy+z/qj
         U3gEmxoPsFIoAHEiYwTdvi6Re9Kf+IqsX3mvIxTzwu5gcM5LKZxyzid93YRpGOvSb5xL
         uGuloprvJI43bEYpOqsxr9UnPv29R3QgkMsvM/tqPFj68guAxCFN44deedMbLRJ/D8Ab
         dWhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=zoDsX2YDla6YibeS9n5HXi9ukLofFgIBqcDGBOIzj4k=;
        b=hQLNnRd8OaPmvjJ6/WGHVHzzqclA+ITM5/CurWBeoZ57hinupwxVBKpNHH1Vstzqus
         LRI60nJiebTS/bg9Y/eHldj6x3rofqd0HPSsYE34bW0jk4asKWG7LH8scXOAWix0SzKw
         2LpiJ/zyf6kUcUFu4dKNJGE0XueeUV6KkqHw+wrtIFYchsgeivaTrm+qJsiA0q+CNnGY
         bua0KMgnO/aO6IXmz/VWv3L3lWQW/6AarGkCYTkI5KI5THQPWLyOSb1fX0aSu67AfLgL
         URyCLdXo6ALRsTeqweNpLJkZ3rmVCa3vHW+OzGvOMFleBTFBYfo4rcE1nytq0JL23BSY
         Qskg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="zhoLwrN/";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zoDsX2YDla6YibeS9n5HXi9ukLofFgIBqcDGBOIzj4k=;
        b=mzuyK6Z+BulL7iMR9iNaY6dS9tY+sH1yOzVZtRVqLp+lMPhRo0/v/Fzz5g4dkac43i
         tdUpfkjyEt4+SaOeLEYYowrGnPH1COdV4E71rrKVsCGb608fBXTGcC3Xz7HN0uUY70yZ
         3TrFDdg7Is70i4ioMT/xFiX8XldjXwnDcpbyi5x36MBvtvfPsRwyZb6lwCMtO75bwlhu
         TviAjDFfegIzyagoegq7V6fS2J5B9hK6EhncZkjXbgy0R4EsNOpp+MamttmAAbExOHqR
         3nwlQKHV0OwcaH65XUiAyl/pkdhyguwCQg6M2s976J8wzVjxv4/sfC8Adhq9lcOYdc76
         USIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zoDsX2YDla6YibeS9n5HXi9ukLofFgIBqcDGBOIzj4k=;
        b=BDFKbIsMvrJPkzUUWhbPubvPlmeKHKszVfiM1vWMpHxT3zVZ/AB6ZrA82O2DIgUnc4
         TWDvh5EeWPGAwicXKsKjdmnteZShgR8fEM8W3lj8I0gxyZFElVpYO4iSdsykYgHoOOX/
         6GrSluwaxBowgapItBFFjMA7+Dso/DHSsI5bZ04HaM5zOU8ePNSk3r+uYY8XYSwAA27G
         iprP1DYm+S4D4sgGv6yh2fAZ4L+jHHQq8H5Cr02D6JY+hpSTx++/sVF09O4gCI5TTy1m
         oQTkGPSs/3ZuZnEaulnVlj2GCo7aWbWtVPdJZ9OG9S7enVeaWEMwzrUxXpGYmMg3VeNk
         FTCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aT7pB+/i9lqy9ubkpbWSSaGVXOsmpj/o/qggMafhEUcnyK5Dr
	U3AcLdg3020pLW2IpxvqvsA=
X-Google-Smtp-Source: ABdhPJxp/Ihg+Eo6iALtIPPGgrJHAngTngUgo8myLKzfs7Wp6t9LCZSJgTo/7BMgKOjxRVgPgnGCcA==
X-Received: by 2002:a17:903:22c1:b029:e6:8800:37c7 with SMTP id y1-20020a17090322c1b02900e6880037c7mr12083372plg.61.1615825380902;
        Mon, 15 Mar 2021 09:23:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8052:: with SMTP id y18ls850826pfm.3.gmail; Mon, 15 Mar
 2021 09:23:00 -0700 (PDT)
X-Received: by 2002:a65:6a4b:: with SMTP id o11mr335976pgu.138.1615825380399;
        Mon, 15 Mar 2021 09:23:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615825380; cv=none;
        d=google.com; s=arc-20160816;
        b=nIsYEZzpVRRQd4BOBlRsJy5aU1tS29AlPBU5XMfXApn88RArv6VR4wGzGC+N7TQN54
         kTI6IYUXGSOyHskoTXcG2mq/80yzYfg9lmnfy6ba0A8K1v1514I1acRjuLJP6lgqC+Nj
         Dw6rQsf6myLlA2WjJ0qAWB48anWqnZJUM1Nf4s/QWfgvLUBVzeZV1vkJfG7cO5GKRwrR
         i32lhZg4rEofpSOToqEkzGSs9uMbF9ixFeZT/wHqaU9xXlrnIOzqz1hiRVlS9B/EJ7Mm
         5yuD9p9+1KauCK12gTh1Sa8BAbeAk3UQ1gAY9thYxFYnllhGeMDFKLepLBDJ48OyUXds
         Ca0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=LD+AM6hgEBw4I3onUiko1OAZdxqmf7Chvn4W6NLeOeo=;
        b=cj37TPT4TU7ApTdi8XCxpMGL8ZRRePsxAMyx8QOktoAI71GYt6FWIPgnptDYJE1K5U
         Kbck9f6qS4bLAhF+iB0zqv4RfhH2N/Sg5N8BTxSZBfnO1Jd/8JqUyUjS2DA3gtk8teiw
         u4jJgaJwoIT63pBfq7yExIQJR+dCVrW0GcX7W4FJCLN1rmcutXFmeyYr4cujdplQHRAM
         cez1yh3gb8WkYEEDz8usn0lsuZJvz9JFvKYZSxa5hPx4uAEeRBvUc24YBDq+PEO78WK7
         dgJIRMhnc1GTSeS6N1UoJJBAH9StKvrsFOGrcr2kS6XWzjMkKP+KF6+7uVH5m9VsV62C
         FfCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="zhoLwrN/";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id k3si52141pll.1.2021.03.15.09.23.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 09:23:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 12FGMX8Y029785
	for <clang-built-linux@googlegroups.com>; Tue, 16 Mar 2021 01:22:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 12FGMX8Y029785
X-Nifty-SrcIP: [209.85.215.176]
Received: by mail-pg1-f176.google.com with SMTP id t37so9950966pga.11
        for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 09:22:33 -0700 (PDT)
X-Received: by 2002:a65:41c6:: with SMTP id b6mr303989pgq.7.1615825352706;
 Mon, 15 Mar 2021 09:22:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210302210646.3044738-1-nathan@kernel.org> <20210309205915.2340265-1-nathan@kernel.org>
In-Reply-To: <20210309205915.2340265-1-nathan@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 16 Mar 2021 01:21:55 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ6goFdV=HuCdiCsr-PSUGxtafHZAa=p=96ieFyFHL8yg@mail.gmail.com>
Message-ID: <CAK7LNAQ6goFdV=HuCdiCsr-PSUGxtafHZAa=p=96ieFyFHL8yg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] Makefile: Remove '--gcc-toolchain' flag
To: Nathan Chancellor <nathan@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="zhoLwrN/";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Mar 10, 2021 at 5:59 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> This flag was originally added to allow clang to find the GNU cross
> tools in commit 785f11aa595b ("kbuild: Add better clang cross build
> support"). This flag was not enough to find the tools at times so
> '--prefix' was added to the list in commit ef8c4ed9db80 ("kbuild: allow
> to use GCC toolchain not in Clang search path") and improved upon in
> commit ca9b31f6bb9c ("Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang
> cross compilation"). Now that '--prefix' specifies a full path and
> prefix, '--gcc-toolchain' serves no purpose because the kernel builds
> with '-nostdinc' and '-nostdlib'.
>
> This has been verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as
> well as a distribution version of LLVM 11.1.0 without binutils in the
> LLVM toolchain locations.
>
> Link: https://reviews.llvm.org/D97902
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>
> v1 -> v2:
>
> * Improve commit message (add history behind flag and link to Fangrui's
>   documentation improvement).


Both applied to linux-kbuild. Thanks.





> I did not carry tags forward so that people could re-review and test.
>
>  Makefile | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 31dcdb3d61fa..182e93d91198 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> -GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> -endif
> -ifneq ($(GCC_TOOLCHAIN),)
> -CLANG_FLAGS    += --gcc-toolchain=$(GCC_TOOLCHAIN)
>  endif
>  ifneq ($(LLVM_IAS),1)
>  CLANG_FLAGS    += -no-integrated-as
>
> base-commit: a38fd8748464831584a19438cbb3082b5a2dab15
> --
> 2.31.0.rc1
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ6goFdV%3DHuCdiCsr-PSUGxtafHZAa%3Dp%3D96ieFyFHL8yg%40mail.gmail.com.
