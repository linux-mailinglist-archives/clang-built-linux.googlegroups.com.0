Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBO7L66AAMGQE4PGFVQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFE2311821
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 02:49:49 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id h10sf4613387ooj.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 17:49:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612576188; cv=pass;
        d=google.com; s=arc-20160816;
        b=dAPTGLLBVtBq/ZeKrcmpgBB3CIi/zX1HDbJc4UEHRNfHisPXyi0eoV6jBTzCk2gveh
         m3n6iCXTxsZK8Zuub8Qf3Fy5xA5TQt/+uYT5G2KRxzHdaihcz4opXMReG10LVpQUqrnK
         Z0J1A71om4Rio6Dvu3fZMcDvOloovo26sTLzcb7kcLLghDUikt91pghhMBKbE43ZbRET
         p3YNhZ+z1Z4UyR8sXbCSkzuaRmytNa04e4cxTtLSzjQNTNvEnhsiDIU7DCUXwb+Br2S9
         /Csja+a6k+SMhQhoiSXRm3xyuf76Vyzr4b+aF3Xm86ez1kMt8Xm04NnvehWS0K6SfwAZ
         ktXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=kZMaAOLmxVO/6PVq0dq+luQZDNDw2Zah91MuvMwS/Tc=;
        b=kw3f7xFLQvUhIaHThoQOfn9B+1utEN2JVEQCWKwoX8fhdgtlE89gXB+5NKMx80UDH+
         gI0CmWdlrA5tyiMF2haV563yeZxDg2h1+tUDaVjsLbEYBSqsPmZzTl9BR6EUD+sv/1qY
         KuU4NtXEE6uRDTE2nvaPRFMPBieGWlJHcx3Rkh08KwxURb3uHzu5S43fwWP580ZNok2C
         ExBE1iV0SeQDM3Vsp8C6MwVVtYKNwFQQza0/k++QEfRHyY8upAlwgXsFDHErUu7bW5nl
         2Bf6EL9S7VsV/4dtjN+cGX4H+vsJ4G2uibAnogYCf0kdKLj78jcl/RySEcNLjAvinz9X
         MHQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xYLjqAKA;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kZMaAOLmxVO/6PVq0dq+luQZDNDw2Zah91MuvMwS/Tc=;
        b=FfXgpdRbMjSThXrKAavJepL2UKgCBJB8Jq8pzQG47g5gX6s/Eaacbx5ZLAVfPckFyx
         x98o+KyDHw/23mxLPJEKrPnB74HPaOPx5k9mgkXzC0ZkJEH5QFKNuPP2Y8IGMYQB93RI
         5T5EfEnpBhnKsykT77kviQ+W3oz7Fn/eBFDPh+gNbXWQDUFuAU4WeM6H66eIgE4t4G9h
         sa45LTbb0mIKKGlm6bi54UBe/UwbAdT1uXY9YdHdXwGjSF7mLgONhTjrA0uABhqn9+ks
         V/VDRlekYS/nJ+zxpfnKMsJr6AoINMJRCTd2dFzDr83yts5WrHihFC7ivdPWP9zAdZgs
         ZxVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kZMaAOLmxVO/6PVq0dq+luQZDNDw2Zah91MuvMwS/Tc=;
        b=ANyPzhKrj/uXPPlS0ZhaZSZJZ1hBlyEYreVVkEapF49BW8Hicq7sXpfA7PyW0QPz0d
         nh0hXaB0JGU6UISFvb6Jm23E2GzGbh3aSXKxDSbOekoQFH7vHAug2gpBKP8oUPR4+FgZ
         rauE7DwESyHKpKO97e+QFpeZxYqOfPj9fMUDUpNfJLpH4/mp7aDEl0nzVf9TFC3nM7P+
         YJcTSIclIH2O2qXznQmA9K/hQF6WFAipJtoCwvnRniXk1fYY4EokjPjEkni7XsZ9BQ3J
         Xaekv9BEiSxSYcSI2FYWJ0KhURMglb4MXJMSpZHHw/Jyxvf2r1xI4njfLqSnP06EFCjt
         YHww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322xOaZIEkkMC5/ngoxBhgTVNFEPmW3q4wIt2eY4R0mWGEeQCBI
	ozBdP2sxnJ4dokUygr+qGzw=
X-Google-Smtp-Source: ABdhPJzwJnywW5dhhTDpPIbhGhNeJmvCmi2Q2JXY7UMbI1GNAfW9wzm6r0DtKJy7Q1knW/B2aJnClg==
X-Received: by 2002:a9d:30f:: with SMTP id 15mr5418700otv.212.1612576188019;
        Fri, 05 Feb 2021 17:49:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4a:: with SMTP id e10ls2711718otj.7.gmail; Fri,
 05 Feb 2021 17:49:47 -0800 (PST)
X-Received: by 2002:a9d:6e0b:: with SMTP id e11mr451236otr.343.1612576187581;
        Fri, 05 Feb 2021 17:49:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612576187; cv=none;
        d=google.com; s=arc-20160816;
        b=kUgSyUt7EuSPW54Nlxs9wNHb4H6OymlOemF7oDJgrqF6R5rMw09S5Yp2sH+SeFpnvu
         m8eikrTbFes5vdm3ZxTgwWoBK2cFItUxASCaH6ZvgLossrF84zno6Ue174/A48mtYtdA
         gcRaLn/hQ2xMRFb+EVaOi7IQi+2XPXBOC0jyQETBuk5BP4viwq1cljWR4lTB2S0ly0UE
         MsIpAMijOEEWpipUpsXVBJ4YpZL7aPFpW1ytwmBh31m1lIs2r1h/Ziymi1ND/4rUT3fc
         EGH2/G1NoYxw/xFIixl+xWCinGO4tfdgVAimGuIOv8rHiPVrGZDld3AsbKN5NufCnzLF
         zS/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=gpqQwaTvQcIqHtmt2nFODRlCdmq9NF34DAVw/eO4LAI=;
        b=WE3innwCa1vPn4KcOXJKkb2nCNGonZO8s5QpwuaCEzZPzT5rsxos7YBtBndX0RhII9
         1CthQGnhN1IN2uKWiCpXwgy8U+P5fXmmCN/DsW2+mdr+g8i3wFx0WiTXdawIHVmaea5y
         V0ExnhyTH9/azxNbpBh5IT53/wQhUq3hrKx9HbTAG7sn/qfEoAf/ZXB8SZSuWXJqV1q0
         k4cEkJkJ3OVdb/+oYntBR2p709+H+V0rKYGjD4S6V2zC/AVwM0NXVUxDoNbfceQ7qSG1
         QhkGqxIaFXR0g7GGyegXeTUZ6Pz1PUCyejWjaLqhXXXEwQbhuMOzW7SJtvsRD74ZTgmy
         HPyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xYLjqAKA;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id i84si132610oib.4.2021.02.05.17.49.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 17:49:47 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 1161nRDx008826
	for <clang-built-linux@googlegroups.com>; Sat, 6 Feb 2021 10:49:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 1161nRDx008826
X-Nifty-SrcIP: [209.85.215.179]
Received: by mail-pg1-f179.google.com with SMTP id s23so5766801pgh.11
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 17:49:27 -0800 (PST)
X-Received: by 2002:a63:ff09:: with SMTP id k9mr7335315pgi.175.1612576167170;
 Fri, 05 Feb 2021 17:49:27 -0800 (PST)
MIME-Version: 1.0
References: <20210205220125.2931504-1-ndesaulniers@google.com>
In-Reply-To: <20210205220125.2931504-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 6 Feb 2021 10:48:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNARKHvjTcnic=ZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w@mail.gmail.com>
Message-ID: <CAK7LNARKHvjTcnic=ZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w@mail.gmail.com>
Subject: Re: [PATCH] Makefile: reuse CC_VERSION_TEXT
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=xYLjqAKA;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Feb 6, 2021 at 7:01 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> I noticed we're invoking $(CC) via $(shell) more than once to check the
> version.  Let's reuse the first string captured in $CC_VERSION_TEXT.
>
> Fixes: 315bab4e972d ("kbuild: fix endless syncconfig in case arch Makefile sets CROSS_COMPILE")


I did not touch this hunk because I have a plan
for different refactoring, but I have never got
around to do it.

Anyway, you beat me, and I will pick this up.
But, the Fixes tag is questionable because
this is code refactoring.




> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index a85535eb6a7d..70034d7c1051 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -557,7 +557,13 @@ ifdef building_out_of_srctree
>         { echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
>  endif
>
> -ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
> +# The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
> +# Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
> +# CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
> +# and from include/config/auto.conf.cmd to detect the compiler upgrade.
> +CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1)
> +
> +ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
>  ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> @@ -576,12 +582,6 @@ KBUILD_AFLAGS      += $(CLANG_FLAGS)
>  export CLANG_FLAGS
>  endif
>
> -# The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
> -# Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
> -# CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
> -# and from include/config/auto.conf.cmd to detect the compiler upgrade.
> -CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1)
> -
>  ifdef config-build
>  # ===========================================================================
>  # *config targets only - make sure prerequisites are updated, and descend
> --
> 2.30.0.478.g8a0d178c01-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205220125.2931504-1-ndesaulniers%40google.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARKHvjTcnic%3DZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w%40mail.gmail.com.
