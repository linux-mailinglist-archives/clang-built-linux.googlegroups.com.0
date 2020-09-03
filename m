Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB47CYX5AKGQEFNUHRGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D6F25CDD5
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:43:00 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id n4sf965752uaa.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:43:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599172979; cv=pass;
        d=google.com; s=arc-20160816;
        b=lJrSW4YT0SmAK4yUOC3vL8ALcUJVsN4rNhj8DgA4rQ/tBcpHzerG6PuV4cZJ4qmH8n
         xjzFsLuJrzIBt2pP5Jn7aZKK2X9gSumqfRa9dZw0I0gChDnByIw+btZPByQir4Ld23/3
         K0zFixj3eSiC2mS/DvTTigZyTawZccZeqqzQ0zsjVIVe7yFJ5YX9qEV2idX1sFQdrWN7
         /NxCuViCHkpYFTnzCC1NLKGf43Pr+/R5C9D4h2sEaURFMY0HbZuqL6zp57KgGZIjhTn/
         GW9TL7PXP8EXl2cMwmniALV3/vp9Q5QJnm8ZTSzKtDzcr/8n5KcigmqBQnZD/6WoyUFn
         vyhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5Se5GeI/AZuLyDwUs0RG+trrr6tZvHSZAZd5z5pEID8=;
        b=Ns7XOS22BYiYnmFer1ea3W0E9rKUF62fHLCmjetqTsjZ4wnB12bcMo1nGclNnuy+yT
         ZUL9bGy88gxej/cUu0AwMreOKsFIgw4vWRpnznpcu2RuUi3QhTLijaT7Uig0oeVJ4e2w
         1ocXTxle5jTq2qPzOajnDvGi0GVdqnIxJ39LpZQP9CKQuL9MsNZJ/aNuRxy9OR7OZ6RI
         ck0u7lv3bZHmM92RQ1+0yskFTcmK13bUq4jx6parAvmNfUdo7rE3wQeJBAQVtLOCPGx3
         ZXBfrguPa7L7mHNPHkW1kt+Pua6MkncOCHoZHB3xtuJosc/30HhlReEplmlfJw4jXYif
         Xy8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=arGEoVNc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Se5GeI/AZuLyDwUs0RG+trrr6tZvHSZAZd5z5pEID8=;
        b=AvC4zfS4sY1dbWkZLH3fHiLv+pYQCW1W5cl21XN1SmNwcy8spC5aya57p8+eYhHXWq
         z51Fo34wLXITFkXxCFi9yQQFcgC1vVE1esMQ1e5oDkojxNUO8A3njPgcfG/Sp0whCqp0
         Q4QNlef3NZZWGrnGEieRCrNl8roKI1GOvKt/OYDOiPgbWtH/YPPdQ7mJ4Jd36aaNLHsb
         QCsRqqwMGELaXBK0H/FvF6iMtul8y5/l9qC6loXXbj/BjLm75Pdxbbx6Wf07rx/x+xZO
         xetbLwlMYBEePEFZDhlsut97O5Gv691y2eCCIO/36KGvM6UnXjq9O6DTaU2+8YM5wxUV
         M/7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5Se5GeI/AZuLyDwUs0RG+trrr6tZvHSZAZd5z5pEID8=;
        b=uLBZab7X6gq9CCtK468Rc6lskzdLgMhbi1n+0t5hQKI7VeqKfy5cOxx/BcxIiJ5GTi
         jmr++8gBTu96XtRbgbc0QhmVMhUiOvKxCsuo83J29DE4UShPjPuTB5oxAjNbaaxp05tP
         UjkMEaIVd6PnrpmtQpuXtQy+3rlMZpwbJl2egO4VLeJ09C72wjE/xFCAYiYwwTp+EPM2
         JNJlhPuDBmlKo3P9t6yQybqJiIWDmNDa+28RmXiiJpH+HzwayE758pRXE+RygkqvRFO9
         DfcbWdZ/0ElVuWgzfNZ9HnLQPPt2qEipIRJuZkQ39mm2BTuZnb60QHlDWo+kXw9V9JRB
         gwBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EjXWN1F8bXnhRPfHt5uX3OXbDtHj4xxRJfZ7RgoMC9cHpB7Zp
	/EMkAmMmzmvpipZntKg6tc8=
X-Google-Smtp-Source: ABdhPJwRVjthdKflpKZYRZjE9CvsRBv+KGU0sWAGHStzCqIRI6DHFvzNHsWPSWEIsGzKa9ZEER2w7Q==
X-Received: by 2002:a67:7cd2:: with SMTP id x201mr3166324vsc.9.1599172979788;
        Thu, 03 Sep 2020 15:42:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c505:: with SMTP id v5ls447804vkf.7.gmail; Thu, 03 Sep
 2020 15:42:59 -0700 (PDT)
X-Received: by 2002:a1f:3a90:: with SMTP id h138mr3817308vka.56.1599172979451;
        Thu, 03 Sep 2020 15:42:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599172979; cv=none;
        d=google.com; s=arc-20160816;
        b=rDE6s2XzbYdMuJApe9S2zhRWcjLYlgNC5YZ4xI//HixNr1az9bono9ph2r4MjQlBdp
         DcjWrZbpM9jdo4epncUS7JHvqm3YrLLjNrx5bNurRCc+CBTZye0PLz+hQHTRZuncSEjH
         EGcexgfOOMuN+gtiO3zAzRdR0C1DM9Kzesx0UInd49RB5qHey4UPVvhVxD5IKEC8ZSvu
         COpu5uarNcY6IGLJLLANMlKIdyQtS4ahucEkRaEqTVGrcL268RFP79ie424GCSC1MUGs
         dMloKE94t+mG96pmvdvMO6NAehTo44BTeZWt3dhxr9/2QMI+60Pf1YKjEPL9TziUdOqV
         aBkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QrnbZATBHBxQZ7fajeBTKOWCmjpG/tdsnBaMo8RMsl0=;
        b=OSO2g7kTQoKrCzbOcAWkk7MOoJkIdPiumcf86HWm9S5vJUGGGUBR+BhyEJ7kYbK3X7
         W0kLJmuqKdGPnrUfKvmtehxhU1YuMOQ/W9XXADwV+i3sXv97NtIlJgSLmiLfeTEUgv3s
         ERcLeilNwjkX3dkx52ajBkqUPBv+gCr2nadOoWjvIA0y3tYmtFcO/4AblI8XkeTqBzuu
         6GGGU2hI2Keew1JvLyLf773835qL3m6LmsH4WkH1Cgk/qtl6K7UmBxThj2Ec8qZp309S
         37/z8PwwyPYoMVc0L0xI05fHlSdgf01FZlj/nXXLqtahOMYdxmFInugrTTYkhUmBdpiu
         p85Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=arGEoVNc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 134si267260vkx.0.2020.09.03.15.42.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:42:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id v15so3267678pgh.6
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:42:59 -0700 (PDT)
X-Received: by 2002:a17:902:9a45:: with SMTP id x5mr6151434plv.208.1599172978633;
        Thu, 03 Sep 2020 15:42:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r7sm4305639pfl.186.2020.09.03.15.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:42:57 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:42:56 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 18/28] modpost: lto: strip .lto from module names
Message-ID: <202009031542.1F8B3012FD@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-19-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-19-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=arGEoVNc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Thu, Sep 03, 2020 at 01:30:43PM -0700, Sami Tolvanen wrote:
> With LTO, everything is compiled into LLVM bitcode, so we have to link
> each module into native code before modpost. Kbuild uses the .lto.o
> suffix for these files, which also ends up in module information. This
> change strips the unnecessary .lto suffix from the module name.
> 
> Suggested-by: Bill Wendling <morbo@google.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031542.1F8B3012FD%40keescook.
