Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA4M6OAAMGQEI6DEJGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B51073103FE
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 05:13:56 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id v42sf2809208ooi.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 20:13:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612498435; cv=pass;
        d=google.com; s=arc-20160816;
        b=pYih3IhTH4LTgqxD048hxzWc5jVd/8R7j8wM1/Kuw7rYyGwnbUcJ2NX+skAWBvqSEF
         n808UCugwL7rvIuYJk7OwGcZ3dRpwEDpkS+5oLet9yyjChPt+y7GdYelgp/kQ6sgGzlk
         H5KrnXNVw6g0Q35Mzdfe7AE/K9eq5sKtsPu8MzivtoOUqA/MB2ZFKfgWd96TCugYK8ui
         ey7pC23IwwkY6fNT4pivzQBoY3JKU0DK/V/fVlJGfT/6Ex2WRutbOEGm6DJI36b8Pzaz
         1XxK0OCe/siajXik42BrMoQc++Fui7UWdTf+5JHz41XyU6hPW6AIfsrabifR4arCv/35
         +nfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=rad/WS/TjLPuXqHpWGSSEdwWzXwK40rOlxRKMvlaGN8=;
        b=zRY2flfYI/J9MOdD4JORuj7vUKfz3wLpL4mmeBm6xvm7VkUr20Nf8qgXzDsCg3L2K9
         5ea5nlyApaHuSBh3ClJaz7sQSiDu/KpRzySuHhYz6C9sQiqCbL99zrlJhMwd4Qwl77yb
         eBhilkhJpcx4RPAtDtlDKcYJBLXNUmS6jg7HdvE5yGonbPUIjQlm8p0Sue0lFjormI6n
         LWjwC3h28A5ts2QTe8tN/9GQvfTs0OJsTOe/omNKVz+xBmAPhBMMrQAaPGsRJwTViFXK
         yDLJBKknH6790Ji0+r8difZJtFCaEY68bFltX2ooxGLMwbtKWyHYOSGGVb+byHar7Asm
         COSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mDOBHhWg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rad/WS/TjLPuXqHpWGSSEdwWzXwK40rOlxRKMvlaGN8=;
        b=otRFc8V6vb+c/nI/RIfgVR7gmFHKFIgbyWYiqaknvYlZoK4srqpk5WTmL3llOVCe20
         2Mihhoj9nauE5S2D3q2H5jwoPdkrnUPpby2cSP1jtl3VpqacK/IFysgz5olFLe2MAcBA
         FU28luvbiwk3tLQpYd+RYQYBUIBsYjtTMmpVun+w56YoiP0DN60uNTslyaCYCgGPHK/V
         MG2+FPd2qfkenpBzUeJ7slHAshCH5LWRAs6JTN9WFgBMMFOUOPvLfmgjz6A99zG0KHKR
         tGjUQkMHnd3qcliqvfuPi4qha2CSW2/cD5b2Pk6C5cdjLNq+frZW7p2zID+ka1hq/dTl
         gQsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rad/WS/TjLPuXqHpWGSSEdwWzXwK40rOlxRKMvlaGN8=;
        b=a7M879eZkHuyD+1mswg8jEbqI0fauq0dafvT70FS2yJk9pjP7H+t9kxc6UDkvODI6f
         /2alPCofDcCGoq0fsCYN/iqCuOKl4Y/K2rTDQTmxOEzbcijmE4+2W/wrWGAzDRf1rbAf
         lcaKeDlatfBn9MsXN3y97Tq8JzL8zfD5to4e8UBqb5x1RuSKig9sd4VG7kbgQXX9dqyw
         azWaIBETsqvqSgLnBF1FNDMGQDwQsWsMTg+i+wQkIcrVPtn9OPi63jMLiyFAJPRJmC70
         VJ3xx9YX7zZl5k4qNLAdfNOIDrUTxGlrxyHOeOiiAqAsbb5v33+DMMsI4LbyPBHHpMdF
         eGjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JKC4Mv3+iEcX1HeGiqMlKkxNRVlmw9EKbuyvSsU0nU5fH+vog
	XPtnpMomINFz2SwvhEgozj0=
X-Google-Smtp-Source: ABdhPJwZaAPuwX7A3UhBvprBF4skJLeqclAEzojGf0AdyvE/EFQN3CQ1CXQaLZ8CaaroIDJHSZIuiw==
X-Received: by 2002:a05:6808:343:: with SMTP id j3mr1897952oie.138.1612498435523;
        Thu, 04 Feb 2021 20:13:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:14a:: with SMTP id j10ls1918100otp.4.gmail; Thu, 04
 Feb 2021 20:13:55 -0800 (PST)
X-Received: by 2002:a05:6830:18c3:: with SMTP id v3mr809946ote.372.1612498435118;
        Thu, 04 Feb 2021 20:13:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612498435; cv=none;
        d=google.com; s=arc-20160816;
        b=yRTJnomnzQOFvkA5aN0jg2s3U8uFnR+TAr3a3FyM5LwFnCnJIzAz3RLcWs+Tdb9bf8
         1IhK6HirR6W7YaLgWAD1g303Wl9Fz9sD8WWwegTpc/7o5reymx5UIlyFagGKLZfdksEk
         L36ePXAyIWPXVYlX/svF+kQjT9Q31Zg36oyVCNV8EYB7+Q+oSffdjBMLCNzY1usUpf1a
         SZlVZyXNZDOOBKsF+GG2sUsC2kQFADCWPx4SEaGctM4H/EqIUlyB02cnrnySwTkHpa64
         U4W/jADLCSkN/VnuUajxBKTjcATWBTe9/VBA/Ip70jB14bKCKxVIB4dp0tiIsqaWglLS
         D1zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=YDU10+grliz9wniX7c94niF699EnqnVAeJ6cG3yeyPw=;
        b=HkvCtpG9miMcOyKFjWMYKDKdLyS4iXlcq1Shfygd48hMO5UwwcFvGmMDdRJCzjCL5f
         5Hhh5YO0IUdigm+w0zrLY0ajQ7fHYeozDzKS0Z8L2YAUWSwTY8w4MWyJ+/DH5s8Pp9sL
         9bk3w9wfk1pOgRGnxISIavA71eeipLdSDdQHIWt69Mg4Sui7ssW7mAXoCDG+ysQ9AobX
         03TIJg/OlInjvyNP7eJ+oZ59Qfkmtb/SUliz2BFrnN2wiIiFnskx+RaPVAgMHjto1w8G
         fEj8vGKFKkyUwPHfPB2K0XUEvu6yQqqOp5emjZiTYYUpokySQT5vJ89BRAy4+P/btbIU
         BTmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mDOBHhWg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r13si499601otd.3.2021.02.04.20.13.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 20:13:55 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A80D264F39;
	Fri,  5 Feb 2021 04:13:53 +0000 (UTC)
Date: Thu, 4 Feb 2021 21:13:51 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Apply 28187dc8ebd938d574edfc6d9e0f9c51c21ff3f4 to linux-5.10.y
Message-ID: <20210205041351.GA2494386@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mDOBHhWg;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Greg and Sasha,

Please apply commit 28187dc8ebd9 ("ARM: 9025/1: Kconfig: CPU_BIG_ENDIAN
depends on !LD_IS_LLD") to linux-5.10.y, as it fixes a series of errors
that are seen with ARCH=arm LLVM=1 all{mod,yes}config. CONFIG_LD_IS_LLD
was introduced in 5.8 so it currently does not need to go back farther
than 5.10.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205041351.GA2494386%40localhost.
