Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBAVV7D3AKGQEOE7GBVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6E91F1723
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 13:01:23 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id j71sf11657515ilg.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 04:01:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591614082; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+YckkNUr/U98hO7/NaNh///RJY5COi0kEVx2uVCUybOuhrJlPaQGRRp8YZynDkG9j
         trQ5oOHCujCOSgpJrNHY3lXsvkETvVqQc1qqKHpdhqQTCH+issicSjXZ+AFWCHYFoTID
         gofwCw+cj1aUBTgMbC57OXLh5WM9wmupybXZ7I9fQuX3Z3wb8EtvnRhqnfx86GlRIbv2
         /3S746qUHK/zMKgfRQccTQ5VDyTVMHetNaRdl+peNQ09z7nB3Z7gxkxPQ2pveNtF/keS
         +K49U0FX6f6OfuWUrVTqsdiIGVeNcTakqkOy1W441C6o7fN3eU0Cd2avLkcY4PR2J+v9
         R83Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NaFM7ao/zW6n+Szvaza4C8Ye2Qk7i76CPp4aqjudjbg=;
        b=nu2FGOO5l/vm9e1F0V7G+PhCwzOuXpjL7TgWFtSN7qIlusOzilRQr7/nSsnubOJbNe
         rOOGr8QlDjkBw8cFfp4yAeYdfvB61MTueWax5N787u+RAqtkliUQn7E6MYhY+Wu3ZLa4
         mx04+T3nHlav71IAtSpQjRTvo12z5UBKcemMsbwIWyVyHsfeRQy0mfdTdkVmzVtDP2A6
         uKwKu4qYQk52sE9eJU1c6bDXdq0e6q3X4YMixQ8q2n0a7RNxKZcplq224bgGFhIsovQq
         xgCUMKDp98AEaJ+cuQJ/wNg/oqhL8TF9lNuZYg6kGEMlntcY1zSXVfhpu9Fg5O5Y8WDr
         my7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=NV5cY9XI;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NaFM7ao/zW6n+Szvaza4C8Ye2Qk7i76CPp4aqjudjbg=;
        b=sG0m9L4Lo4NLuAbJUlN77g+hHbIJ5jA0BvycpcE5gJcGFWGoq7IiE6SqgqPtOlTE0y
         Z7AzeGGHIPf/JCiZ/cp0hZUbPdel0tK3GUwGBtHaFnmySfnkYmBG5i7pSVW1tzRYLHZE
         18Bc0RakLfdPg8fSt71Ca/BLOPf+7lDro3sFBJNrRe71W1QHR2reXiP2GkCNirhhOL1n
         AGNrgH1nolCV+sLJPZXxbXXPufedxoqfzxdcPiIETU44RjNWS3yn5WbwXPQ22iuXjT/y
         zHoeGmIRmRpiTPzc/Ps28BeDVvHcFUCuHKqpWrAZ38bQ4snNlUcEyG1nq1ksXc5dr00b
         daZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NaFM7ao/zW6n+Szvaza4C8Ye2Qk7i76CPp4aqjudjbg=;
        b=VL7Vg9dZAy+gLzoaPxtqhpY3Obr4tooFenFJqlUflaZEcBZGpH1HY+1Do9/UJ4iOWf
         bofGcWny5ZmkqICpPLpnjFohP/r0oOGbWGEx9701O8MfZNDuheCH1Fn2ftZ20HPpdzop
         goYM6cl/fy5kdTl8Jk1IQzbQ0Y/xbOvaUCGyyVTzMfsSMKrB/dvxMOAbxBVjZI3YH6H8
         msHhdZDCfdO8ibA+AO9Qg0WhaSpjW/k9wTuo77HkJOEfd/x7OT3YKIiTRo+N2RvsP5RR
         HLY6PTGsYgZQM85nfAiTG2gw27wlv8HiCrlwAJcHTKAMp/o6rkGgAkLSKU0yDhFVAiR/
         OuRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334XvLOh5U+TJOUwhMmjlOuj7j4Ye1+qjxVjmb1RzoguODNS91j
	02dFFGZuDrsZu8FUi0eMW00=
X-Google-Smtp-Source: ABdhPJwBL8yyohi56OzFjivEagkWBdcQGNcytaOD/ZJEBYrKbRV/2cK6R8RgUtbeZz/XND382KwzKg==
X-Received: by 2002:a92:b111:: with SMTP id t17mr21558498ilh.241.1591614082549;
        Mon, 08 Jun 2020 04:01:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c002:: with SMTP id q2ls3185609ild.4.gmail; Mon, 08 Jun
 2020 04:01:22 -0700 (PDT)
X-Received: by 2002:a92:c650:: with SMTP id 16mr20543726ill.157.1591614082298;
        Mon, 08 Jun 2020 04:01:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591614082; cv=none;
        d=google.com; s=arc-20160816;
        b=BrTOcI7oxe2+yyndXR5+dVtw9ZunuAf7X4Cj5LfItWx0OrEb1kGWcS4Q5mhdle+4Vb
         RU2AftPLzLv5dVTbes8rUSerzClXuwjDxwAYBTe3IXszTFHRPyc6zmwH7kPfAxH3Ea3r
         Qz71fjFBlmAwdhc2ZFFmqUnu5UA+mmRP33eZ4K0Yq2InZ/n5WUZS7JycBrlSJiR7xYPn
         an3qtZUl+o/9lxwgBN1zB4EzV15sjyP9r6irx6n2iKOSaTZaA8B5xnvXQpJut01NRRpg
         PFSxBfsxSvXGjP9+nc5hX24RjVVbgobFRnoQVB3vbNxutMvE2mesklCUlNTH+6fVgDIf
         GdwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=K/s5mZYe0D3JGCoeAasezBJ22Tds6PXDtFml58Tk67I=;
        b=d7CEImbLzcS2LbuRw8u9hZQO+mXcS1p5L6FW6D38jLhw95mf0fDhj6yxW2XSyhtMp8
         JHXJ3bMnCzJb8GK3gc/CZAbRyjjuveNEX6h7IXVRG333HgGXvlT9rwwEYflxDeEPVhOf
         1M58mAN8meIjlmQTvCvLyKXACRaAtNhzhwJmUOGu2LdJr9XV2+SgI6xHqOIjzD9K1Ksr
         shbRNfYuMl5hT1wswRhU2oD7HhBo4CPyi4MaGznIXyhYaBIpgymfDDbu2A1WEy0X+f8E
         xX3uFgbSHgacMNNw5yOthiWKK0uorXvvX2maJh4iEv5D8NbROh/d98BMVqGmLT3+/Cno
         YnlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=NV5cY9XI;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id z11si704420ilq.5.2020.06.08.04.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2020 04:01:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFWh-0002iJ-Of; Mon, 08 Jun 2020 11:01:13 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 13313301A7A;
	Mon,  8 Jun 2020 13:01:08 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id DB50A21A7523D; Mon,  8 Jun 2020 13:01:08 +0200 (CEST)
Date: Mon, 8 Jun 2020 13:01:08 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200608110108.GB2497@hirez.programming.kicks-ass.net>
References: <20200605082839.226418-1-elver@google.com>
 <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
 <20200605120352.GJ3976@hirez.programming.kicks-ass.net>
 <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
 <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
 <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=NV5cY9XI;
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

On Mon, Jun 08, 2020 at 09:57:39AM +0200, Dmitry Vyukov wrote:

> As a crazy idea: is it possible to employ objtool (linker script?) to
> rewrite all coverage calls to nops in the noinstr section? Or relocate
> to nop function?
> What we are trying to do is very static, it _should_ have been done
> during build. We don't have means in existing _compilers_ to do this,
> but maybe we could do it elsewhere during build?...

Let me try and figure out how to make objtool actually rewrite code.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608110108.GB2497%40hirez.programming.kicks-ass.net.
