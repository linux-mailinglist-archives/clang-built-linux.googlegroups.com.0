Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCVE4H3AKGQET26XJYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C44E1EDA96
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 03:44:43 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id 187sf2590737oor.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 18:44:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591235082; cv=pass;
        d=google.com; s=arc-20160816;
        b=SRT28omlGakMR+zvxEXH8RaBjUnkFlZUmLlwD0nlW+euAm7S1cQNJey3pkANc4p1AQ
         NHE3AG6Gah2C0YOvAb2dP2aYTHdK1h9LYTd3nBAWC0ljz65F0HbbKSM5UWO/AV/BSJE8
         EfgPlR9MnoDHy84rIvxt7FFahOmZOqRZbVjlLASAgs7xtKOPNk1+CLW23bAYxno53scG
         v2o6XhYLbiTNxFIDoNn7p5vVhW4yFpCwdAqTLDnVNf81K/i6xfQuOHGwBR4k2ghb+lUO
         r6rSrlEcd0flVxtlqr9NmBW46ACFpsepKUaOjVidfcENdKUaXzB7S2PwryENZVm7+e3s
         AxEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=32+Z4E/ZaPe+0+XuyragbHjetsVd0s2o4aCX8C9CaWM=;
        b=ZFH0DWy2COL8XemXY1RJM48vDbwCRCN4nVC1OT3nygylMYIju3HU8Bs13u297Ft1P4
         bUz0XaogOemGK6XFr6C8k7s39hqUIoL3G9Z1kUcFWd+0ERX8VwNglDOZvmT+4oujVOBO
         ENBKiUsqQTBCDOgLJp6GBHvWcyb/IPVsTW/7u9s+dhE+yS6o7kEDhjTAPeRk7lGhKxjD
         O70HCxRq/s0k+8tcB9lkpyFQoWiMnvqwGIbcyEg1IZ96Q3FyJsloi3llXm+g11MAiXen
         aSJ2VkD9MtMlAXloq68gDyPhzqzqPyPKrH4u759Q/KubNoHYDr5pbM+SgfPAErx8t6my
         pdwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AbKWjJtg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=32+Z4E/ZaPe+0+XuyragbHjetsVd0s2o4aCX8C9CaWM=;
        b=QuvSK1fareOtVHxDsk0gQJJ8cKVyYjE9l6vgKFLVpA7nWbABuGzgDuQvEN2Ylan43k
         BGIsYj6GaVR+2QOsMS2n2MOXcnacTcid+4LUVfLt4AOX3xPFgpkq4et1HRiLSKPpUM3+
         XWeRrcWSqjGnPssQNAX/yBpxxTiI+SdQbQaWM/qDV2suAaCt2eZgBIQDLG1MuCZDyvc5
         In1htOSPZa9YAnAiuWDeg47+ieaMG3PlbzbPzaEn+SRtBFEDAI1z/rCa7jGqkqWkcBuX
         wtRrk0KAKmEMAVSD3VlvdBfXYxT3Ni6dwV2swYrNngV/R0GKVxqrBgGESq+9hNGaAM0q
         Pqsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=32+Z4E/ZaPe+0+XuyragbHjetsVd0s2o4aCX8C9CaWM=;
        b=OVxBnDPkBtij6WIrYVtyHvExETQp8DN1ThN3UmhdIYRd7OsZM2a/CqYxvYM4g45GUS
         2mLFhcGvL5RYa6f+sB0YDdyQAtg7x/ATn8asqSk3TlJxgruvY+43PB+ExgPqxM7khbxQ
         nJxYmUJ9tDjse60xrQoGfWkekMTWjOVqHhg/fnyL3W40zK92osDh1twMTJztkzaTzPeP
         /ox97vb+2NJEfGBb48iwD5ZiR4IBqYiTp/SCzN8TF4z//hzWwFNLyU5y76pSGMH457YX
         oRTRgoHwfqj7gpCA+c8XEEOhFNJU/EDrKBF2Pl/45Riegae6Ghwg/HItMJK9h8fbVwy0
         E5Mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530y0cXCWSGI8gMn8hc7HmF2ahcX396KXoyEUYQUH0YZt030TIoY
	zU81M/pCVZhP4yG1gdXrK5c=
X-Google-Smtp-Source: ABdhPJwTFMjxpjreJxqt1MOZw18i+hwfRvA5m20zIdP+N0VxddphF7LQG/E5vmNa+4CmSoJUMXuKPw==
X-Received: by 2002:a9d:6e0a:: with SMTP id e10mr2109929otr.171.1591235082254;
        Wed, 03 Jun 2020 18:44:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4d89:: with SMTP id a131ls899394oib.3.gmail; Wed, 03 Jun
 2020 18:44:42 -0700 (PDT)
X-Received: by 2002:aca:fc46:: with SMTP id a67mr1658564oii.127.1591235082003;
        Wed, 03 Jun 2020 18:44:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591235081; cv=none;
        d=google.com; s=arc-20160816;
        b=0ar2gUyvSCzOOhc7kT4QuXH5gDPOhHAwUwZQDZIHnnBxlCRB5Umwo01vIw1wrRHxyz
         dcBgT6zfhCb9ZdtkcLEGpOC6MbZjsAZ/nJ3tdl9rlxt2zrzZyclhqzW8+7RSUapnzK9C
         aETdQVMaKJy/6/r0ceE4kzLA7N+X7ZXc2FiSyqHn/w6/mVg8E/EGuJGfgDXfI9H/X04x
         1rmBJXy4F5AxqBAT2ews4GzlTdHef1ZJj0OVPGn491JUv4TI7h9J0WnyoTwlCXIcIlmO
         YCNvQ3YxK+ivVYon+AAw3uEbptHDTL8vfDq8Puqwdk7ZBsWEfiB0FyQboBjBik0+pui4
         mxng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Wpybr1+0oFA6UqMQJBfZL+PEEh3VzZMl9GH1YHu1354=;
        b=m4Iwa481sWKQxjEDX1ENlbSOcGMZxyfPYPsvKoE3Y4CHuacj8xgMAb5pVEl54zXbm8
         qdAvZuQq8uaoH/km4kYuCRWirxkVbtZSnFBsnjStb7gv864XuT3e/DEh1ZJCN8N9158i
         WPmaRitckTC6+auyJhouEEBQ25KwdhW1s3psB1UCq4fR5s/2qcVLIrmgwfIws0ejz12V
         gmXrwCrxi+oiLhX7Oz9bsLKKvMcsPPqfwYMYR5c0K9hKByPMeuDxm3RriW8Sngw2AT79
         0PbfV/ZOP2W+sdjQLRDobqryU0HHYtgTWvrAN2c+wtIlkVFX/EtPpXG8OVs9Qj9o2QJ5
         mQtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AbKWjJtg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id f133si309094oib.5.2020.06.03.18.44.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 18:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id d10so2813316pgn.4
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 18:44:41 -0700 (PDT)
X-Received: by 2002:a63:5f90:: with SMTP id t138mr2082803pgb.122.1591235081380;
        Wed, 03 Jun 2020 18:44:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i21sm2541029pgn.20.2020.06.03.18.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 18:44:40 -0700 (PDT)
Date: Wed, 3 Jun 2020 18:44:39 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 00/10] Remove uninitialized_var() macro
Message-ID: <202006031840.E2F0D15D8B@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <CA+icZUVZwjM9o7aNXAkYu8K2BQAajw=60varP4g+NizCqu5gRw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVZwjM9o7aNXAkYu8K2BQAajw=60varP4g+NizCqu5gRw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AbKWjJtg;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jun 04, 2020 at 03:23:28AM +0200, Sedat Dilek wrote:
> what is the base for your patchset?

Hi! This was actually on Linus's latest tree (which is basically -next),
mostly because I figured this might be a bit of an RFC but if it was
clean enough, it might actually make the merge window (I can dream).

> I would like to test on top of Linux v5.7.
> 
> Can you place the series in your Git tree for easy fetching, please?

Sure! https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git in
the kspp/uninit/v5.7/macro branch. There were three small differences.
I'm doing the "all my cross compilers allmodconfig" build run now, but
figured I'd push it for you now so you didn't have to wait.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006031840.E2F0D15D8B%40keescook.
