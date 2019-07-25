Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU6A47UQKGQELIFPXHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B9C754FC
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 19:01:08 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id f19sf32506269edv.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 10:01:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564074068; cv=pass;
        d=google.com; s=arc-20160816;
        b=0TfnXHzneFpttnNooea9fvgNcgmte7fGtlhAVIiHKtXp8Tkx0pTQnkKst2OU3F50zx
         uV5A4Wwk8B4APGA1WLwc2St3apaqb+8VJbQsPw1VgbS/tXscyb0U2RI+PJz1cE6n8HGN
         6bEeKHayoFQhngFD6o8UbuZg14rKwB1g7vxd2rtKokv0cDTdX5aOWfvMqqNWzGeRT3vn
         Wl1Wiq2pMVzfMjX5Yx92OKwbDXg0L5NUeIY3gJBYwuvQ3dZnMpmSvWSET9ANBG1Co8ym
         NV1Hh/Q4KPgJdOiiVgkLd2SC8wzrV/+yIXMzLSUHd7glh0F7OdqP938zNaSLy/o4ZVLH
         eAxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=OxWeMwTfAAo58R6BhpJyWvpwG7QxvGc0hE7iXYo3WO0=;
        b=ZCWLegZVGDBj6ygGZsCrK7SNOpKiEEBLXpFXviMmBWoUWG6Fwy1vURBwvNlUcr9nq3
         CmnRHVxQI+NSVyGcNtYzb18vOpNYI78gD5djIXmvYTOCp8hHA9Ny+SmiJyQXWhf5jogo
         G4js6WDnjr308HIg+QdjPsv8tNeSmpog047QM1exwg4hwOLb/oGHhrCf3iaiYrdWBHwa
         zIpVfH2yIx4YXxfkuaa+LQY1C7M79ANV7PBWKVkTjYFLq5+kQr5TeCtWr0kZllv8l2i1
         Q1LMjmgzC7HwZGax2F1gK8P1wM04zUmX+gaX/PyXZdv2Wc0I7J6SKCTHU+ILjR+IhcE9
         LTTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WAKFeAPV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OxWeMwTfAAo58R6BhpJyWvpwG7QxvGc0hE7iXYo3WO0=;
        b=J3DpsKMe/Zx0vDcYKRWAobKBqS5lax8xd6u5FpsewH0/19Mkxk0xt7GZyPYClV0LNY
         u45o7FmRmBz4t86YL/eATsajVk8EqYHDA6X0Vo1zcuWKr9z378V4UpvdSFWfQ/o7A5o4
         ZLqIOW2enYgAH31smXwgaRuJo7tZBRLTj7AgXJhs8Ab3305WV+1ucH5NcdzY6pyDb2wx
         jXYdmZM6JN12L1b/s5GxvaduVWBpFRFTAdSD7y2s5WUVrmJd3D2bdkWKkniFKJzTfzy1
         S9sO0Qsalu4fpb1A0MQ7l5VUKIy5ePJpaJaBGXUb57riZHedI51zI+gLikvm0BD1pOP5
         TEGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OxWeMwTfAAo58R6BhpJyWvpwG7QxvGc0hE7iXYo3WO0=;
        b=T2epLNhamqaSFYtNANVU2cpRyskTA6tgcNxQx0xfCJW2N2ifzsx9K/I63cxS4WR8Od
         UmjXYq2HNFBPDEzw4HRjQEOOTfamitva3sYCVaTJdSfRS645OtDTZtyVuXuXQK7v3Clo
         3yE+4u+zWshO1dl8Um6zUwDAAkTssfKfPWZIK1APE8fN84G0fIEk/cO2SRNVDk2liKN+
         eoX4p3YaAuAvXblrm8ss6SlWqpW6UYzbleSa2SZE8pQNaspb2m8lDg8fEd8PQKk5ik4a
         F0mUsvrc6fLZ0rUIEw111EqBthwLlb2YpP8XJnrsRy3f+x8LOGRODiXPiLqNMEkn5L+i
         JbEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OxWeMwTfAAo58R6BhpJyWvpwG7QxvGc0hE7iXYo3WO0=;
        b=f3qR8ZY5URB/veWFR+3c9Ugni1M4o4LFwXlyhugD7xInI84WuAzhJEAMzHUvlJry+W
         crv+U5YcfoZyQAFLCtQmrv/pkUph2bJsD2FmFz3MT11veu+Mto6r4lkYlEgcygoK+MrA
         dZX8dcRnqIlqoqzg8aq6GIfQt9QR5ZW2r0Q+oWGmoFLm1fcPxXJW8upiJuXEQzNJ4lAG
         zmyGx/TRaUGORtvvfwc1C4jbkkx3sED93sPBQ2Whty+BGP8xsV442LacmCnYPisId5GM
         5i50OG9OmRbFTYV72pGTh43NhN4Bp5bZWv+eINco9QQj6ZXbab/l7hxUNUcAitmsdbrS
         B0uA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW4JQkooM0TOGl1RL8V0q0TYT1xGLIoJQvlqBBzqs6WKLUHnYUh
	LLAXrGvGESxwgF2aAF3IyxA=
X-Google-Smtp-Source: APXvYqxgc8Q2fp98OWOV2EZQnaqywjmUGIRsq3BcNMdptA5PYKZUrXgqsU/fohsnQNENWWvLibD0cA==
X-Received: by 2002:aa7:c313:: with SMTP id l19mr66448777edq.258.1564074067869;
        Thu, 25 Jul 2019 10:01:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ac62:: with SMTP id w31ls11940487edc.10.gmail; Thu, 25
 Jul 2019 10:01:07 -0700 (PDT)
X-Received: by 2002:a50:fb8c:: with SMTP id e12mr21019378edq.155.1564074067392;
        Thu, 25 Jul 2019 10:01:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564074067; cv=none;
        d=google.com; s=arc-20160816;
        b=t+BiI2K6ULUPEFBoHhtljvLrOI7VmeFKseCQi7T3DL/qRDPbShjzLafu7ysf6hW/LK
         L5e0y1fdG5fHaeNSsZacERP/4SR1CtqEKRGlUF51I/gc8H2DFQpZmcLvOZv9jtqyDZOH
         9ZTt4JCdE+JQrXsEbYp5rXmg4kkUNXUaxWhme/dhK83VTwH8Ey5RRERVaGn0OmeukFdp
         RjtRYls+1eUF24V6UdwzztLNi03X4fTuxFvymgBE/o3IQaZVhcOdF2OEzYT4VOXYKiff
         yKILbc4Y5ygtiQn5yc+mQchozLKbVi55XvrH62+nsxARuUdurCi2SVygUPt/c5TQ3UHU
         aT6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nXagbzMpHpMrK6qPzkE9x7SDyjhg8P+uqPw06U7BiHM=;
        b=KBxj2paHFslU2v5U8/uomcWnTqE4nXqSSI0QcVTRwPh3S9cLfdBWbPQPnWno2wDS1q
         04eclfjIKq0JcturtSvDxUcSclSbhqMel/GXiIwCc4812Lyj3wK9qwoZsnXwB2R3EExO
         2e1gMwbAg94LGQwKD8L/Woi/cL3eMMZgrjsBgOISW1skRDg5o304od49DqWocEbzZM3f
         jEC4bH0cGw0nwgM9Vc8lEQANhgjR+n/zoMBq2ISbnpSSvimFaPkEEH16fq8KZWmai9y3
         u9AtPlItY/BMlLhsVvA3neG725CHbgEUh8SAdNYE9DHI3S6JkP0qgp10UaQYHk7cm4Y/
         loVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WAKFeAPV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h23si2580592edb.2.2019.07.25.10.01.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 10:01:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id c2so48336250wrm.8
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 10:01:07 -0700 (PDT)
X-Received: by 2002:adf:de08:: with SMTP id b8mr70727820wrm.282.1564074066832;
        Thu, 25 Jul 2019 10:01:06 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id p6sm54433837wrq.97.2019.07.25.10.01.05
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 10:01:06 -0700 (PDT)
Date: Thu, 25 Jul 2019 10:01:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Smith <peter.smith@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] kbuild: Check for unknown options with cc-option
 usage in Kconfig and clang
Message-ID: <20190725170104.GB80773@archlinux-threadripper>
References: <20190725154730.80169-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190725154730.80169-1-swboyd@chromium.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WAKFeAPV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jul 25, 2019 at 08:47:30AM -0700, Stephen Boyd wrote:
> If the particular version of clang a user has doesn't enable
> -Werror=unknown-warning-option by default, even though it is the
> default[1], then make sure to pass the option to the Kconfig cc-option
> command so that testing options from Kconfig files works properly.
> Otherwise, depending on the default values setup in the clang toolchain
> we will silently assume options such as -Wmaybe-uninitialized are
> supported by clang, when they really aren't.
> 
> A compilation issue only started happening for me once commit
> 589834b3a009 ("kbuild: Add -Werror=unknown-warning-option to
> CLANG_FLAGS") was applied on top of commit b303c6df80c9 ("kbuild:
> compute false-positive -Wmaybe-uninitialized cases in Kconfig"). This
> leads kbuild to try and test for the existence of the
> -Wmaybe-uninitialized flag with the cc-option command in
> scripts/Kconfig.include, and it doesn't see an error returned from the
> option test so it sets the config value to Y. Then the Makefile tries to
> pass the unknown option on the command line and
> -Werror=unknown-warning-option catches the invalid option and breaks the
> build. Before commit 589834b3a009 ("kbuild: Add
> -Werror=unknown-warning-option to CLANG_FLAGS") the build works fine,
> but any cc-option test of a warning option in Kconfig files silently
> evaluates to true, even if the warning option flag isn't supported on
> clang.
> 
> Note: This doesn't change cc-option usages in Makefiles because those
> use a different rule that includes KBUILD_CFLAGS by default (see the
> __cc-option command in scripts/Kbuild.incluide). The KBUILD_CFLAGS
> variable already has the -Werror=unknown-warning-option flag set. Thanks
> to Doug for pointing out the different rule.
> 
> [1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
> Cc: Peter Smith <peter.smith@linaro.org>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Commit message wording looks better to me, thanks for the change!

I think we might also want to add:

Cc: stable@vger.kernel.org # 4.19+

in addition to Doug's suggested fixes tag because my patch has been
AUTOSEL'd by Sasha:

https://lore.kernel.org/lkml/20190719040732.17285-44-sashal@kernel.org/

https://git.kernel.org/sashal/linux-stable/c/a28859fa4fea5a834a53d86d51e502012ce09c57

Alternatively, I can just mention that this patch needs to be picked up
in addition to that one when it is formally sent out in a stable review.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190725170104.GB80773%40archlinux-threadripper.
