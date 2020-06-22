Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVHOYT3QKGQE7URUBHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id BF58A20441D
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 00:57:25 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id o1sf13718976qvq.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 15:57:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592866644; cv=pass;
        d=google.com; s=arc-20160816;
        b=0l2gily3/aP9QUyZpdM+1GNiBcGpVq3h1tjyNWE911jROuzSvuFg6X3O2+Ymeqeu/Q
         ej7tl4SZ0MMhtgKqUHhkCFx1SgZk0W2eKIw35QvIaTCH8v5m9XvuN6bQ05FsGolud5wx
         GfdwZh2MEy/OE0dp/Mj2Q35LV9OnbRSxZfphU/ZgKJx+yXw9ZQ9dLdiKJNlLnNprqc6S
         FEGxi42LOo+McvrWcE1fwMpmzS39XE7FM8QM8iPFgtNYi6YV7wgzcyhbY2/XfVsUxubK
         N8IqPGwl8wR69uL3NxpObvb3NTVnwH8NsQ0cw+KKfR7/Bmk3lNwRxVyDZ/Bj+RA8udsy
         S6+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=j+4uzipJ085xKFBwp3xOJYQE1yGPvbZDFwipB4c6+Z0=;
        b=NThplvVaepMOHFHbczFtxaPLGFVzzuFLh5DE3XImbXnr5JpTQprRhRn+qQyeGU5TqT
         2jOrm2/WQ5NhFX2hPIYMGg1KVyrAKiVAHTKJ5f9JTRM1rgHrmLcpibLGNNHzyQztVmJ7
         mEM31tp53k6iuUwz3+FfoQ+H/Q0+PdOH70Xc9doe2vDnP9yIuQbxz6TjkyN5CC0JOvWb
         TXyScx11rJjzfbe3jC3qwkRQwSDDBq5NqPaKTmojuYp4cdCWD0+nhCGGZ7oIWlBnBW/L
         OJKsQLD+vzBA4bv/deleEtBNVAsA1OcP8Ej7mzW5K6pdjzZkN/7jlguCSKKmkP31+QCB
         vPYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b3SrdlZM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j+4uzipJ085xKFBwp3xOJYQE1yGPvbZDFwipB4c6+Z0=;
        b=nU6y2at4/Y+DgCk05i/XvRedkxaPvG5NPhqHp1R4ZW4beH1Fwm+ap/ZOH5SYC7D/yM
         gYKx+K4W32Upm/z+/y1PJPE1uUi0nkthit7Op+xjvpQskpxVC0rKMrEPmC53SS/IoBYf
         4SuW0wSjlPRBAhT4n7pf7+aILuMlnM+K5R9jmor/Tn2+NnecfY12CXsQ6AsJ74MEbQPp
         5W5hkhnEU/ALG6D/nclMckF5NPsx/41hpPyc05wPFmjT2Cwv8ShK7rl5wdZXGRle3JTL
         QG8IKfGpKKn2tV3CF+a7uIOidvVtUiqLzyZKOVk22RUDfBDZq+ZeI78/MQfUvl9uoHgT
         aaUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j+4uzipJ085xKFBwp3xOJYQE1yGPvbZDFwipB4c6+Z0=;
        b=l7x0+dD4PK6to9HzyvkguCxyXmDBL2XQyB6X4oVKiTXOJ4Gu1NI7nqmaJ3i22H1/lZ
         +kA2xyvZj5ceQOXf/4OUhRrsOJZlPDRsKLo2a30Iwi6H5Cn/qcb72FO1RpWVchOXabPM
         s9eK7Ykl/agw5foAPL0MezUCzqp9fVXg+sIXRqZWGbtW0GxjUcJgvwE4NkMsmKsgw9fg
         20JXaekbe37ax9YNXAQ/2fu2+GhH78jppzZWjBn7oZq9+CscoMH64R3UARFt/R/03Nl7
         9HykBJzb54mcSkFjfl6XeSQhMfIMu/dmeoC5qouTw/GwJ3kSibpxKSfHYS3DEljCxaza
         WEQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kQn9AIDD6b5udLkx4+y3kiXWDk5ZdEWwL9v27mOCJBHmOmtF/
	wOvoRP06QWbKM40FPLd0CXs=
X-Google-Smtp-Source: ABdhPJwpw54Osft9fZ2BzPy+EzqnNqtJRjqA/GUK4yjHtQsf3+ymExEECZ40mQSdIwi2JwDfxEkl9Q==
X-Received: by 2002:a37:8fc5:: with SMTP id r188mr16341053qkd.447.1592866644749;
        Mon, 22 Jun 2020 15:57:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ec0d:: with SMTP id y13ls4310112qvo.8.gmail; Mon, 22 Jun
 2020 15:57:24 -0700 (PDT)
X-Received: by 2002:a0c:bd15:: with SMTP id m21mr8968427qvg.61.1592866644380;
        Mon, 22 Jun 2020 15:57:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592866644; cv=none;
        d=google.com; s=arc-20160816;
        b=bOMqB33QI3V3Gl9pAL+cj4Zp/2jxwHLBDwnKI+sFIofWKS8FbkTjgI5C0I7lw8+iKX
         BuFkieUhRj4ae9+OLv7DDCbvm7nJWmrM1rWntDB3cEUmymjzy1yyrHoNR3T5MSbtP3hI
         BdJGV78cwc1v4sqCnzDvnDwHKVs+hWhCW2QCHOuXTsmPLGtqyLKzo3N1AEWRNa5dX823
         fhunefN35GhaOBL7SxIVXPbCblbhEeDoyaNSJ5sfLxc8JVX09YnbX93JWatl2byQF2kg
         pnfgwljrGYmRLiCB7tvlWtRhZko6tDaTPsKjPlTJqp2+84JVM9lRrkyo5JybiENynYSE
         mUeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cdRwgYs2euyKw8bTCBrzUHli8NY3UiEE1Wa/LcdrQTo=;
        b=utg+NPnY8XCJrHL6OKAjsvgXwkPvKUSpTj2ZaXsHP58mX6P0Dpzl8XsrO2mPdoVuZm
         xmJmXnCgRdt6dx7q9y0IjDMQjFYH3WSPPAi4YXGbdymmikxcfTRlIe7X1zGvREvSYX85
         tGd1rt+sZryk26ldHae2rA24bkGCmmjYj1qwUhC12J8QuCkh2Is+6+Ie1RaY/NMsEm9Q
         gqCs9enUbh4gzB0arMo8iIY0UgYeV1/3rVqfSpN7Smxz1tjtucKVz88BGIeZIvGUClnU
         8ADN0A7PQjZ7epZrPdJ89y0KexIXzcW79SFYZgoXcm0Q2swZt0Uf0T75kUVgU9R3zHPu
         QhNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=b3SrdlZM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d27si622364qtw.1.2020.06.22.15.57.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 15:57:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id s14so4146895plq.6
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 15:57:24 -0700 (PDT)
X-Received: by 2002:a17:90a:db91:: with SMTP id h17mr20306954pjv.6.1592866643631;
        Mon, 22 Jun 2020 15:57:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w10sm12181783pgm.70.2020.06.22.15.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:57:22 -0700 (PDT)
Date: Mon, 22 Jun 2020 15:57:21 -0700
From: Kees Cook <keescook@chromium.org>
To: Fangrui Song <maskray@google.com>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Message-ID: <202006221555.45BB6412F@keescook>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-2-keescook@chromium.org>
 <20200622220043.6j3vl6v7udmk2ppp@google.com>
 <202006221524.CEB86E036B@keescook>
 <20200622225237.ybol4qmz4mhkmlqc@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622225237.ybol4qmz4mhkmlqc@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=b3SrdlZM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

On Mon, Jun 22, 2020 at 03:52:37PM -0700, Fangrui Song wrote:
> > And it's not in the output:
> > 
> > $ readelf -Vs arch/x86/boot/compressed/vmlinux | grep version
> > No version information found in this file.
> > 
> > So... for the kernel we need to silence it right now.
> 
> Re-link with -M (or -Map file) to check where .gnu.version{,_d,_r} input
> sections come from?

It's not reporting it correctly:

.gnu.version_d  0x00000000008966b0        0x0
 .gnu.version_d
                0x00000000008966b0        0x0 arch/x86/boot/compressed/kernel_info.o

.gnu.version    0x00000000008966b0        0x0
 .gnu.version   0x00000000008966b0        0x0 arch/x86/boot/compressed/kernel_info.o

.gnu.version_r  0x00000000008966b0        0x0
 .gnu.version_r
                0x00000000008966b0        0x0 arch/x86/boot/compressed/kernel_info.o

it just reports whatever file is listed on the link command line first.

> If it is a bug, we should probably figure out which version of binutils
> has fixed the bug.

I see this with binutils 2.34...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006221555.45BB6412F%40keescook.
