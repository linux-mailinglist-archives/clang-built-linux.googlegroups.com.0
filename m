Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQMRRCAQMGQEMW7RDOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7EF314742
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 05:00:07 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id v108sf9401410otb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 20:00:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612843201; cv=pass;
        d=google.com; s=arc-20160816;
        b=PHko130uuOfHEN7viX+/MYbGCe/7V/+SBBL5OKmdPWeIOgXRWg2qVzuKNqITI0nMiA
         faq0v/3TEcG+wGk/nRqWS1uoT0gi+cQOHqOCBczj2qLVjGxXeZMjFc2xoDJ4461nclKT
         Rcy27z6n+c349uz6yNpnnbKglUbL5X9YFPmaM+ZaeBraqMq6z5CU+z4V0Z1knv8H/byV
         pPPR2Sp6b841P4z5ljH77iTHDdX/jg8JDUeec7Tzl6tNkHHAqvnBRjiQ1iIIhHOEJERE
         DqA+QMUfReaMqnu/I8rHx0xxFGpQnx58k9zSFg/dojusfTJlZjGr8JuTeZdSe4wjA64w
         Udhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1SQ9zbXuKRXMBwmgjWabJQKZqRuX20dHOdlOFvmazJE=;
        b=HzL0PkG3oqFWVzO5k/MSFUutLDlrLwNVPgNxq7aIVwmxI7bXyfBJkPZVkGqpSN3udb
         31ZH3DT/qd/lQ3zIg++iwzbx3jkSBiOqt6uL3Hp1pDyjO0Ww6IYPAFNzxGT1KyzM2nIx
         l9PmZvETHD9u1fuHEfxDJ4FPDHDRKtU6vOYeJVxkXCpAV9+pEA3Lc6mKPu/T80Kg1LiJ
         XuXErgeaAlj7IJeLMwogR0OPaHfUa43Or861mRpKSv8PL365cAF+W+r0uuv5Fl8ETxE1
         wFRSDNa6viqo8LTdpcZGj/m8+dDKhXj05Eln1IW6CAxP4aPUo+iGBNpWEGIn8LvcLTaj
         ZgmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cTTl5Raq;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1SQ9zbXuKRXMBwmgjWabJQKZqRuX20dHOdlOFvmazJE=;
        b=YPCnt94X1Y1WV9X+0YPQ5Mh6nqytSWRtpApHHCkLQID95NKXZDxX3xipZgElJYOBhp
         LBdoYjEc+APtLGmrYGzudHDbVa9s4lBM3YGHVrSJvL+VtMMY/cPEHnM2osFPPi2BQVyR
         dZ+hQ+E8I96PElesMi0MAP+KIjFSBRWeKGGdM2D7NZwuCn9h1+b5usCuWoKt9ODgcaR4
         oIjxs6TJphVqFxI+HxuvKzG9ZLWL+HjlhD52mlg4b5MxO4q7vJhRtOpQHnSdrx6KSkmj
         Ug+ZpbS7Nos+PCTXX8g6mBARtfXrynWobxqOMq+29yMs26G9bAIZYhmD+G8QIeA2ftAE
         ScRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1SQ9zbXuKRXMBwmgjWabJQKZqRuX20dHOdlOFvmazJE=;
        b=qhlOLDlqtiJi683PdG+2ZZuZdnH8+/C42fPH/WtvbRkn/tbZ35U3LJ0DzOvtkWGnUt
         CvgMaqmhPhqGM33O3fPjcREgNy5jJMqWIOfj6Mm9sPXxeIjSXjZmK5dOgco9oYNART/T
         v8lrc9sjRvO+YDK0NlocKJ+1veLH0dbA/lG8vZxJUcT/AFhWI7NIN0zBQ7nmlWlqVEDI
         OkyghFkZRPkwAwK/X22h6AK7nxh3E9WE6j6/yuJkwnqxkbcRfjVLbLkUYZJTKqELFWR+
         8f5YKKZ+0Z7Eur7rzRLo+tci/QnM390+v7jkMX8qy0vc7Q8j8qPrLlm2BHGuZpQFWpPx
         vBlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XHx7P/iOkNEuFn3XOc3WPfRrtKEauAZ2CfK+8QIHI/rrEBa00
	C6NT8gEl65BGBsAFVrjoX9E=
X-Google-Smtp-Source: ABdhPJxNqa4ms6lbUEmXCgzjNOsa2Kpd30lgbgxZqfVBGB66GJk8aHTGmIDtVFxOJ/CzgfWiLw8enQ==
X-Received: by 2002:aca:b945:: with SMTP id j66mr1244731oif.31.1612843201406;
        Mon, 08 Feb 2021 20:00:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6e81:: with SMTP id a1ls956388otr.3.gmail; Mon, 08 Feb
 2021 20:00:00 -0800 (PST)
X-Received: by 2002:a9d:261:: with SMTP id 88mr14747512otb.264.1612843200917;
        Mon, 08 Feb 2021 20:00:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612843200; cv=none;
        d=google.com; s=arc-20160816;
        b=ZIdIasRJtzQNf88BlE/373gvb7UXXmzOEmS/YpKJRKFgJWQg/G7sLx6b+nHvdm6Mui
         vvxjnDoXesMnTC3IxcRwk8ctmu9Bbxc2ARWbBq7ImYNO698dKuf5GKuovRtf5ur5UtoW
         LUVQWoOOq8qgPwPnTooelsd2PtcE1nyVZH73od5eTTz3lzeHdK/tI+/cuDQGQajhpT79
         m7iQodfgA6oYsPCpUHUvhScKdYiVtsYGcOPKlrz/f0CSgGrOstnkQmbj6BwTJMOQL7Ad
         wmFPEgFIwCIRJ3SNqwR3QaU4ZL9SZlx+PbHcXThSD5Bmrlk6XpP7JJxdNcxAsbV82mGM
         zW+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HXW/QFVb68zoYCgTQ8HscshCSusnmdBnTrpfvRG3BY4=;
        b=XRlfuDdpSb2UZI7/Qum3H0kGIMqG341HQapnvNZ/VaiHmYnAKykaMLRPhfwSjVJmqH
         rA6bOO3poTz9F5gv3U7KTFEJCxpAwAGzCJZ0X+p1xNqqZbhGNkrBbv7KYHTwa1EjIRQ8
         IgUVf4jaI6qqVQzmnmobtMyfv9B/byXcPMQZ55eiu67ckRXdoCb8fuaiRMY++oJuhPl2
         mJBi4V4s+YzQfTY9fcAtbSBkgrFzcDq/ZIrhNRnTh9f4TVwE1FmM+GwI/OlztitduKhR
         /2zHSW+9BXorgtKP8+FVCH8I0JDx2w10btpK52/KgVUgsm8BuvfW0xO5wnSwmobMeuVz
         QvEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cTTl5Raq;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y189si99705oia.4.2021.02.08.20.00.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 20:00:00 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EE5AB64E8C;
	Tue,  9 Feb 2021 03:59:59 +0000 (UTC)
Date: Mon, 8 Feb 2021 20:59:58 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, Nicolas Pitre <npitre@baylibre.com>,
	clang-built-linux@googlegroups.com, linux-i3c@lists.infradead.org
Subject: Re: [PATCH] i3c/master/mipi-i3c-hci: Fix position of __maybe_unused
 in i3c_hci_of_match
Message-ID: <20210209035958.GA2059815@ubuntu-m3-large-x86>
References: <20201222025931.3043480-1-natechancellor@gmail.com>
 <160943653614.132002.12499200411415721355.b4-ty@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <160943653614.132002.12499200411415721355.b4-ty@bootlin.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cTTl5Raq;       spf=pass
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

On Thu, Dec 31, 2020 at 06:42:23PM +0100, Alexandre Belloni wrote:
> On Mon, 21 Dec 2020 19:59:31 -0700, Nathan Chancellor wrote:
> > Clang warns:
> > 
> >  ../drivers/i3c/master/mipi-i3c-hci/core.c:780:21: warning: attribute
> >  declaration must precede definition [-Wignored-attributes]
> >  static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
> >                      ^
> >  ../include/linux/compiler_attributes.h:267:56: note: expanded from macro
> >  '__maybe_unused'
> >  #define __maybe_unused                  __attribute__((__unused__))
> >                                                         ^
> >  ../include/linux/mod_devicetable.h:262:8: note: previous definition is
> >  here
> >  struct of_device_id {
> >         ^
> > 1 warning generated.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/1] i3c/master/mipi-i3c-hci: Fix position of __maybe_unused in i3c_hci_of_match
>       commit: 291b5c9870fc546376d69cf792b7885cd0c9c1b3
> 
> Best regards,
> -- 
> Alexandre Belloni <alexandre.belloni@bootlin.com>
> 

Hi Alexandre,

I see as of v5.11-rc7 that this is still an issue even though it has
been applied to the fixes branch. Is it possible for this to make it in
to 5.11 final?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210209035958.GA2059815%40ubuntu-m3-large-x86.
