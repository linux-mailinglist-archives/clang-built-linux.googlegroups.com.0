Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBFEO4T3AKGQEAKXDWSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C37A31EE6C0
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 16:37:09 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id s90sf8105852ybi.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 07:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591281428; cv=pass;
        d=google.com; s=arc-20160816;
        b=OlwKKeXp9j6NY+W/fT0C8GsnzKfTR5wKZZ0/FYxMqhtsYfHTjB3yHbDNcnMzzpEnzA
         hD2Nz28ZXvXZp11yBixsuxU++Rfd5FuFBNdRrbsxNcgq4Zs1YEx0mkTrKTSrYk4Yj4f5
         ieFh8GjveNPiShPCJV9sk3UZiGLg+yFrJE3ciDpiNxPXDGcKZRIUdMsFPrE7BICl4oe0
         atpkZZ5Yhve+lgT92gJpVokOEK2PBIZ33wKcime0s7zt0RbLBH3awfdXQoSJhoMB/Pfp
         WOIlg2e5QhwmefF4eH7njjendpIMxa9H6IhSdkeoZv5zHHpx2o372ChII70TURi101g+
         6R7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UZfjPACcSmonGe7vbzW8UMnPle4ts5D30/px0dhCEWg=;
        b=qcfYRUQ4U2mWtpL4PVT5YMLnaxMtrBdondSzW/2RE9baKqZryXvUMkb39P9tsWcL6M
         D1tTOHTK5w/kX6UtyMukY4V13/lxtdS9rEEuYv20ikxwqTrN+4Ab5c/Q5Ajg5FR2AeKX
         9jFJZnEzmJZuYQSVAlzYi9WQ5tHnBX3rOaxF5bHJAeR9AzlUHLGTEoN3UjiwCkZKSbeH
         rRfKnbKKLwE9TA9t+WCcsMNAphSGT81xMfXCl2hcYTugyzR+aA+v9sUpbNAekNKrgaVd
         r00xBGARwcBTTR7r2B3Kcb6xe0flQNpzOL0mdS3Xae0e2oregBqkW6mi9votxq8kyrDb
         NQyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=QXaWkkQ9;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UZfjPACcSmonGe7vbzW8UMnPle4ts5D30/px0dhCEWg=;
        b=UUsiZWTksSRQLoX4+ZVDG1cJCNRk6FVAJKcotbpWRoMAhmkzoikEkIeu8HTWqWB7us
         IX4JhdAX+MXFpLopvHmAFZZ25Ghu7B21s1zurJrgsGdF1KaMLpKtOb9xhyy/V1kSmZ90
         qMlE61WhkU646BBjHT6f3vlfWehTNXC8YLNChwmARu66A1ODqTBPHAWgvpKSMZID+AKJ
         QvPImUmB/R3Hb8jkJO4ITjTWje0a0ucf1IDQDWu6yRs6k4XVD0l/W2qEaf3KB2IzGHtt
         XxSRSkmsCa2wDFaS63OecqOsnDpdMTGx2x9BU5OoFaVC6X0WvBvcTzRjoOO0O9dTtldd
         sxvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UZfjPACcSmonGe7vbzW8UMnPle4ts5D30/px0dhCEWg=;
        b=W1P06pzuA4fu7/SURq1mMLRxDkuNsKISsPKey5/trgNRlsO9gJsa/0F+91NCmEIMgf
         s3uXuamn9Bzoc+ctQHkOEWtkzTj/MlOJ028d0mD8Fd5bmeepmpVG4EFSUvv8tu+GPWKg
         M/bFWkBruRYv6vKNrn7bSzaOYsy48is3rC3pcFLUbapwwcMlDXCT/SxyNvBmGu1w3f0k
         AU97rWhQ0F86k1GDFc2pnLMSfcbBINQNWnfgv57UVVrf53D5DNWV/ZSo4mvx9ZQOlp0Z
         86RZTcG/qcmQg3ir3CJ+77csypQcze8JAD59HjybWgfvEkN2Zd8y20KAaG41/5EEyqO4
         YNPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EphifH1NKpRfy6T+4xRIvDbI0KCWizjuLn86aWPCnmBte1PBk
	W9H7uF8naiYFTBXTy74hZg8=
X-Google-Smtp-Source: ABdhPJybO3oT6urpu3Btni6HcDU19Ka0WNIvl1c66jF5xJ0yQzI5Uq5gqAz2zA0DTmTsAAWYf4hGWg==
X-Received: by 2002:a5b:8cc:: with SMTP id w12mr7693511ybq.24.1591281428835;
        Thu, 04 Jun 2020 07:37:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4d42:: with SMTP id a63ls1860946ybb.10.gmail; Thu, 04
 Jun 2020 07:37:08 -0700 (PDT)
X-Received: by 2002:a25:7c46:: with SMTP id x67mr8192549ybc.279.1591281428531;
        Thu, 04 Jun 2020 07:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591281428; cv=none;
        d=google.com; s=arc-20160816;
        b=TT+FQZQPHyesKGID2drTlcx6wHMw3Gz/pDgAqb9/FM35B6jNoOcub/Rkf1dq1l08B8
         Endw8SJnebiwTvet7fTD2p1Bo8RPep5hAmg7BZCKsbYF0XmODSLTeY1E/MjjsI9Jde1c
         Q0dwhnrud8YmneNfctn+sSsfnC5RI9TKmsHQN8NMHhkhqs0JqpHadRbBpz3Dwl8ZjQUc
         1nepDn9UmVF7N5MwKwiwdi7XDPOkbq2EQd4lq11c1ut9OHzk+iy+DXIkl5wWLDCK2fbc
         TLwt6jCPNwEhs9nKtkI5UuLSTCvjWV8HZBX3ZPjlMAJEBs4cDDkTzVM7TYiI8JYDVAU3
         ux1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2tvTdBck+ipf49OrMMt2ID3t3c6rSt/FosoZQVmo6lI=;
        b=Ln4wKzFzSGgKIHO19+/9/87YJeXpDFOdjHzfsw2w9+zS/PF+vKLofbkbT4Y1h/NJn6
         Irle0Mo4cWp9VvK4x7Tgq9yAaHRxaLCAwtusqVVgIoHaRXqiH5z+fe+C2oMWIy0+UvhA
         STCBYwVTlNH8lLUQb+af7OHbhDYLihCTV8QZ24iQViQjHic0G1SGpqRA9L+/X4VR/7Kj
         QspkP3gFGmbtSx3NzezrFcwIJPWoDalPdrUDtOCn+ziPdONoOlcpntNo2FP1Sw8l2Pqv
         W+GdujhskNG4suZAyIp9O/hEDPvZo074Hor68/k3TGy4yVX92JlslzUbwaRYhyPy9KoP
         6Q5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=QXaWkkQ9;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id n63si302272ybb.1.2020.06.04.07.37.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 07:37:08 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqzQ-0005iR-Kq; Thu, 04 Jun 2020 14:37:04 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 2F99C301ABC;
	Thu,  4 Jun 2020 16:37:01 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 20B3720E06071; Thu,  4 Jun 2020 16:37:01 +0200 (CEST)
Date: Thu, 4 Jun 2020 16:37:01 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Andrey Konovalov <andreyknvl@google.com>
Cc: Marco Elver <elver@google.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E . McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH -tip] kcov: Make runtime functions noinstr-compatible
Message-ID: <20200604143701.GC3976@hirez.programming.kicks-ass.net>
References: <20200604095057.259452-1-elver@google.com>
 <20200604110918.GA2750@hirez.programming.kicks-ass.net>
 <CAAeHK+wRDk7LnpKShdUmXo54ij9T0sN9eG4BZXqbVovvbz5LTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAAeHK+wRDk7LnpKShdUmXo54ij9T0sN9eG4BZXqbVovvbz5LTQ@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=QXaWkkQ9;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Jun 04, 2020 at 04:02:54PM +0200, Andrey Konovalov wrote:

> > Now, luckily Joerg went and ripped out the vmalloc faults, let me check
> > where those patches are... w00t, they're upstream in this merge window.
> 
> Could you point me to those patches?

git log 7f0a002b5a21302d9f4b29ba83c96cd433ff3769...d8626138009ba58ae2c22356966c2edaa1f1c3b5

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604143701.GC3976%40hirez.programming.kicks-ass.net.
