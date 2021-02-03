Return-Path: <clang-built-linux+bncBCYYJNMLYYMRB67N5CAAMGQESY77IHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F2F30D31B
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 06:39:09 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id g20sf3565455vsb.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 21:39:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612330748; cv=pass;
        d=google.com; s=arc-20160816;
        b=U7At+TW3uI0To61Rxfpdn75gjFhnGZjd/5OLu5Dn/9taNt+c87bcUUuvwP0s32RPl5
         Lio6dnCB98666RajVfBGN2QMcEWgBVapjEOBDM//KefBoJgsiPkK60kEL4+6A8FeytPl
         f7LH8qyHn9Gp2gEx+LlcZG8DkzHl2OC2RiWVmEfswXYMS61LBjAZs3++wzA4d0u6u2rv
         nUepsUsaZpAxEJ6tPDN2XGM1d6bVBjLf2fUBy9Dj4k6UbJdJz3BgLmaicXhQpVrASm1g
         2Q+HvpCDjw+oEgwU1UI7LqrfKxqMAMMR/I/fHbTsiC/uD4rfbC0sey/SWWrpFMdraJqv
         y4hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RtQTSCKLCYeAmRhvK3EIt8H3+FdLUG+RBx89FgJiw0U=;
        b=ItIVOWlj0j0DUTqlJYT+Owl3oBHLDy6lDhHpw2Yxoh/TFP/+/gLomeGdN9sGU4XlrU
         6yEn9DiiSHVAmJDHFPddpt38o6eXB/9t/oNiKxZ9qpXG326MfkaKaCJ1xVEAhufzQbZH
         8C8IMpVTps/24e5T6LPOOWGKeFymGRFdRnmhxYx13NG6o6faGZKb1JGlfQ8Q6NkbnDK9
         DHd2ERfsgx0K2sGVDsKzGYW/uHc1HipqzpdgCMo5QV+SJiCqqI4gVBJD3q8LkVdvke+6
         DPcHz0Y+BYpsGWIMUyXx67eo23kF4NGd/+g1vPj5WElbGQcXdZhUEiObV8wPRAS/WCGb
         zIwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RtQTSCKLCYeAmRhvK3EIt8H3+FdLUG+RBx89FgJiw0U=;
        b=O2npKUB5HNe9OFDVK52qmLwmbn4APHQ1v5RprmmbcPumXGKaC6/3FrSMM4rvIfNDrk
         FJefZ3YFHIVvwrmyazVLDhRmHCA+MaNA4DD9AFyy5XGuqPDR6XW5dfVO/7xNE7zqxZ9k
         +wgN0s0v7RjnYlYCAhMgHhpMdjj02m2DaEaHLu+Or4l7HM0HREmbMaKmjwPAztRNqKKk
         XnCkPOIm5emgD55wObOWFEHwF0+8Bk5vI9rwDOFDYvs1Plc7JBmRGuutkZcTPDfuVhEf
         QiM1qoFWKii9g7W8Wkhpki8bnB+j5gKDQnd/SzPF2RvCZZqCBmguXSW6iUV3fbF0kwuV
         g+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RtQTSCKLCYeAmRhvK3EIt8H3+FdLUG+RBx89FgJiw0U=;
        b=A7lN67P1E5v9BeXK4zhgrsq802hUz1K4n4hngvS4U76OBOIdO34PcV6Mikzm4jzG4e
         ECT+bYva3hwvOUHduAWw1KgCv/c1mnouXJyljdh0dT2mW7s/sH5/SOUtM2vr5Jln8Fih
         kAeLU+gyuK3faf+pJtcOlNweCZq5dkebp4rQ0zeJUpdqi0wVSJXcMhhMrTd49L+mhDma
         W75EZO+v4JqzwYY6ObX2/z1hh+wJ+mxNdgEfUcv19r9Oa/ZXnK2UcqGs7Wb2IsjTGbF8
         A3Ul9KBz2lWdkLvxOYGwD2dclI97r897PUfnty3nLI3LJSOB50WaIv+jI8PwaPEXkPRi
         T8Zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JS+AlHJewniw/yM/SpXDGZOiZVpZDxP4ynei9lHjLzITYegTf
	pvWNJ5HhUYz9Sky0f5HucXs=
X-Google-Smtp-Source: ABdhPJw/x1tq4jVti6wNuZ/BZDXJBzxgG2k2zxPyKWppBjY7uf46U+AZbWE5hmH7IGbiLgbygSyfCg==
X-Received: by 2002:a1f:1f96:: with SMTP id f144mr629922vkf.16.1612330748006;
        Tue, 02 Feb 2021 21:39:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:8f8d:: with SMTP id r135ls54457vkd.1.gmail; Tue, 02 Feb
 2021 21:39:07 -0800 (PST)
X-Received: by 2002:a1f:2209:: with SMTP id i9mr739151vki.11.1612330747587;
        Tue, 02 Feb 2021 21:39:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612330747; cv=none;
        d=google.com; s=arc-20160816;
        b=OMaN0uRJ3CZ44hr3oq80GHD50A9WVB9pm3nDYmIPVzhj3l2twTDcsZjPsw6w9lc2Qr
         Io/mG7WrBSUzjt/IIzmmmd7leqOpdhFE7g0/MvbaACg6bHoOjKyoo39J4uY7OBjCrCKs
         QoXVl9R+P9bOg/wyspzrv5cULHfwRZPqN9y+GNSTiGDisrBwmnVaS23weZHF13t3nIrv
         RLDH4LQsasRvP2BYP/DmLQrdF7KpJQ6anb6to1S9DAo71o8gFxNGS3ARDc3pXAifCXW+
         57bT3LPDkkNYNlkE34obLgOMdbvaWZS2MkVu1nAnbiWe+iEebIVZs/MNyjUU+UsaQuI+
         E5dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=8T0VpjuUY9+wZyHqWsL1S0PXkVPM9fKTNG9E/LJ3xyA=;
        b=y4FFR8CEJ4dsDqTQmOCsyPR48p1do3pn8FwyRR8Z6Seh3+AyOezhU8TaWiRM3OJE6c
         ZjAEkibsmXqhoHYFEXOAFO57ERInLyfd5mPOoZ7Xk0mcOVpkHKfjofMm7MLORiNzhjer
         DNfY9vKMQnhPEhhVTm2cENauVfgfMBiNMR3PnKNRBRBjE55had3iS5Lr1mJuRGw0U6Jq
         tMGvfxFOnAD+2AYCm/F/XIzZC0mGqr/cRATFR67GwyAJUyb3nb3bSlN+zPBzBdXc4fJ7
         r0HY4I51W5esIpjziep6q9aDkeZQWC3QnZnu3g2G8IQHAXn3XKS006vzupLG6q8rCI9t
         xRQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id n3si57850uad.0.2021.02.02.21.39.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 21:39:07 -0800 (PST)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 1135d3Oe004504
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 3 Feb 2021 00:39:04 -0500
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id 63F7215C39E2; Wed,  3 Feb 2021 00:39:03 -0500 (EST)
Date: Wed, 3 Feb 2021 00:39:03 -0500
From: "Theodore Ts'o" <tytso@mit.edu>
To: Vinicius Tinti <viniciustinti@gmail.com>
Cc: Christoph Hellwig <hch@infradead.org>,
        Andreas Dilger <adilger.kernel@dilger.ca>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>, linux-ext4@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] ext4: Enable code path when DX_DEBUG is set
Message-ID: <YBo29/SdgCkZZinT@mit.edu>
References: <20210202080508.GA3550351@infradead.org>
 <20210202162837.129631-1-viniciustinti@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210202162837.129631-1-viniciustinti@gmail.com>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Tue, Feb 02, 2021 at 04:28:37PM +0000, Vinicius Tinti wrote:
> Clang with -Wunreachable-code-aggressive is being used to try to find
> unreachable code that could cause potential bugs. There is no plan to
> enable it by default.
> 
> The following code was detected as unreachable:
> 
> fs/ext4/namei.c:831:17: warning: code will never be executed
> [-Wunreachable-code]
>                         unsigned n = count - 1;
>                                      ^~~~~
> fs/ext4/namei.c:830:7: note: silence by adding parentheses to mark code as
> explicitly dead
>                 if (0) { // linear search cross check
>                     ^
>                     /* DISABLES CODE */ ( )
> 
> This has been present since commit ac27a0ec112a ("[PATCH] ext4: initial
> copy of files from ext3") and fs/ext3 had it present at the beginning of
> git history. It has not been changed since.
> 
> This patch moves the code to a new function `htree_rep_invariant_check`
> which only performs the check when DX_DEBUG is set. This allows the
> function to be used in other parts of the code.
> 
> Suggestions from: Andreas, Christoph, Nathan, Nick and Ted.
> 
> Signed-off-by: Vinicius Tinti <viniciustinti@gmail.com>

Thanks, applied, although I rewrote the commit description:

    ext4: factor out htree rep invariant check
    
    This patch moves some debugging code which is used to validate the
    hash tree node when doing a binary search of an htree node into a
    separate function, which is disabled by default (since it is only used
    by developers when they are modifying the htree code paths).
    
    In addition to cleaning up the code to make it more maintainable, it
    silences a Clang compiler warning when -Wunreachable-code-aggressive
    is enabled.  (There is no plan to enable this warning by default, since
    there it has far too many false positives; nevertheless, this commit
    reduces one of the many false positives by one.)

The original description buried the lede, in terms of the primary
reason why I think the change was worthwhile (although I know you have
different priorities than mine :-).

Thanks for working to find a way to improve the code in a way that
makes both of us happy!

					- Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBo29/SdgCkZZinT%40mit.edu.
