Return-Path: <clang-built-linux+bncBCK2XL5R4APRBXPF6KEAMGQEHUVYBXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AEB3EFD89
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 09:12:30 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id b25-20020a05640202d9b02903be7281a80csf569383edx.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 00:12:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629270749; cv=pass;
        d=google.com; s=arc-20160816;
        b=SASVjhD46g6+59CSfe3SD6d+f6WZCncvMgKZoRCjIh35BCiULZQEQNnIPhQu95BN49
         xIW8xoYO3VPHCju7LZK7sRPcsJHRds+2UNU9G5ue2S7jnh9xTTW9M7rb+24Y4uqNAc5X
         oToe2JVQ763kIJld9vBDnC9Dl3o+EfqgA7j/yKsR7SbmMrb5rsCOx/3fLS2LGpb/GOni
         kLXD01mHrajtvPOLWyOyXipI1y8C378/Ilaf85DnuGiHStsiiEpwageFlTvNcHCM3pCp
         cTgnxlwg4M4WwO99+BB0Sp4LFzcMGNINniXNRnuKAs1EveKWdj11ilucT3/yzUNYeA7P
         9iYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xPJcdN8qgMsRB3Ze5JAyAMzPBbu9Ql7jJhOebr3OpyM=;
        b=vn7yKfNm+bygS8ZB3WE3axPDH0RsgvkmbZOZ9KHkjkZydDm/if62rF/2JO6kdHSrRW
         SNOAYr/8ihs5O0YZ7aMa8hdtKD11dpbBogwpl2dHk1mnnzKeEKK+6T5dQfCxA9HuTAU4
         3ufKL0apBTd30JB0fp4ASHEL/leVns3wwTjU7JxIL9kpNU+vTu1Wng3Ri4riOu5+3Ebz
         zTAHZfPmjIaZ3zQWQlTET0ruO9ZJu28pv7RJQxUV2Ep9a+IP7qmCS8PVWsWtfLeVwsQb
         rgDpspOgE5qxCpgagCWN9w+H7QXXvgoetWYNd7a0o/9B7aV+V2RELce8sobMbg/V3+4X
         /jdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=TegRh2Ss;
       spf=pass (google.com: best guess record for domain of batv+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xPJcdN8qgMsRB3Ze5JAyAMzPBbu9Ql7jJhOebr3OpyM=;
        b=eQl9Wh0ksmxkaBmoLsyJPGm9AOdJZEOV0+/KoLz1V8TOMT+k3AKuyENmMQx3hi0f3K
         WshaTKTP8n941yyF4IsufQNuNqOH3LvULB3oMjaqyLpUMT39QcjtDIX2uQYD6G5OLlu2
         CEy3F4PM3wr/a7CHHD4Wt36Epf18T7DiHkNvaOPRBSo49C70o2fUxLBizS2233uN6END
         ghQHjdjWSAIaPIiN3sAZ9+tHCpbEQpfIEgQzEU+0pwSzl9gWa88E287rFho3IU/O45vr
         AXS/DiYORgmqnLnw4E21uCWglqpKYk/G12C7pPJ6C79zqW+gUzncwL4IOFTLK1zfpaCS
         zj4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xPJcdN8qgMsRB3Ze5JAyAMzPBbu9Ql7jJhOebr3OpyM=;
        b=Omy0RSwiYggsJrtYLp58sT1oEIUwG7UqKxHpCmmWX6rofIA6JbH11AdGinolP6DGX9
         1ZWEPp146B89GZG2TiKUhK6XunuH9UwXXfQUhcJwbqqrrueXf7KjIe0QlQQnTHyefSyN
         dQCJuc+/gFu3zX3lzN+7Pt1ijI4RSlZdHFfyt8Ujqi2cp4OtE6FVvqV/ak+Nbnnjo+VA
         2rjzZDcKdBwBYgSC1h+iV2XXDSo0nQMWQ6MSBPRElgail4JQn+5PPChFnZM36Plte41v
         OlhUtCjXB4Vz2JQLQCjhHHopumfNiTjgYj0p2I/bOEgJxvPTgiC9dCPnsCD6r1XWZHQY
         mZwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AUYTROHoUjr5ezt1mbOHtugTczsQJ9X48A5H2ixpRi5eV+3UZ
	5662HyA+2+gAFiuoKHdt/nc=
X-Google-Smtp-Source: ABdhPJzZAFIl652OxNrctZhA68B83u50mQb366JYYSpZhYLxMdSWPQwqWy8dtck9BEjF2nII/OtVuQ==
X-Received: by 2002:a17:906:44e:: with SMTP id e14mr378086eja.389.1629270749627;
        Wed, 18 Aug 2021 00:12:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d1d6:: with SMTP id bs22ls560605ejb.3.gmail; Wed, 18
 Aug 2021 00:12:28 -0700 (PDT)
X-Received: by 2002:a17:906:3b53:: with SMTP id h19mr8270399ejf.431.1629270748679;
        Wed, 18 Aug 2021 00:12:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629270748; cv=none;
        d=google.com; s=arc-20160816;
        b=IfYOjZ15CX3QZepm36GvBOAGuOvxxacE87Z7GEZO/NhKl35vH4vwZOSk9tYkGMMUic
         I7fLTw3rnu79qcUq1HL5/WgcdgMIKnIVhmiF2XnlIbhXO/lFamXV5TY4TaZCiaAhhLCR
         7O2Hx01YXRYe5xqTw/c/HgkDgxfYFlCpbb302kJ62AFS/DExKrRuJCu67JUy4+Zlsd6u
         CTaEiBPLwcE1+WSDcVnVVL99CWs2A7MS2TTzXWRuuGhifTZ8zmMAZid5x0DlVS0ponHZ
         LFRgF6jo2ymU/xs3DqDCXLWXG3edUv1EManl0uhs9i1Aj3llDMQzEXahjUCcllWLIM6m
         8sbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XVk0mIofspuMqQgKhMDBgK4vbHJ8w+HnPday2+GyeMM=;
        b=KCV7hQK5ptv5cM8m5XgtFlQkX9yva20bCGKa04mG0Aa1684/w7sNqTYrVamysySJ1Q
         d1XYuu3ryOUtGazlt5BXDAxzTVfXLxzpSo+pZBOzGRl14MYdceiE+5p3ftHv/NIb+16a
         Pul/C73y9gt1UtOWORhXyrTFVgJckYIdwPl2BJGmNwgmw3qHvLPU9LpybpcJjQ0YuQwN
         Z5K44dBMQ5wsjc8wNT/nlt5s3y/T6vLO8AF3CvycPAHjLVGvHk6qQOMvcJ6NHsMOn8AC
         E2bojrXngROBLHju7UfNSXfZ9Xx3+6nMNbNXFNAHTIwjbqn2onA5r0JCTLvTBYGiuCcf
         SCHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=TegRh2Ss;
       spf=pass (google.com: best guess record for domain of batv+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id qb19si117813ejc.0.2021.08.18.00.12.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 00:12:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGFj7-003USt-DM; Wed, 18 Aug 2021 07:11:22 +0000
Date: Wed, 18 Aug 2021 08:11:05 +0100
From: Christoph Hellwig <hch@infradead.org>
To: torvic9@mailbox.org
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 1/2] x86, Makefile: Move the CPU-specific 64-bit tuning
 settings to arch/x86/Makefile.cpu
Message-ID: <YRyyicOaNu/HDgJR@infradead.org>
References: <269701460.117528.1629210189833@office.mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <269701460.117528.1629210189833@office.mailbox.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=TegRh2Ss;
       spf=pass (google.com: best guess record for domain of
 batv+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+c26a8f31a710de91e748+6569+infradead.org+hch@casper.srs.infradead.org
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

On Tue, Aug 17, 2021 at 04:23:09PM +0200, torvic9@mailbox.org wrote:
> +# SPDX-License-Identifier: GPL-2.0
> +# CPU tuning section (64-bit) - shared with UML.
> +# Must change only cflags-y (or [yn]), not CFLAGS! That makes a difference for UML.

Plase avoid the overly long line.  Also having an empty line between the
SPDX tag and the actual top of the file comment really helps readability.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRyyicOaNu/HDgJR%40infradead.org.
