Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBQGD7WDAMGQEYRLV7OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 583363BA422
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 20:58:09 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id y5-20020adfe6c50000b02901258bf1d760sf4194071wrm.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 11:58:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625252289; cv=pass;
        d=google.com; s=arc-20160816;
        b=K1FR7BkajvJz4gJHMggT1nsAwl0FmMm4NwaqU0I1BEeNjsx9eX2Bbp2C6izuqV4gla
         B1wU0w1AwosbTlyNC4HVBNvSo4gxDfZJCO6UgNFLbDgeSGcKVwBEmbw0rbSxIBAF4AsG
         R3fK+wBf0YMqkXFmoo05IXqE8XaeFtEAajLF6bkfwt4aNHFN0sox/b+3EGENricK+eGA
         qgRfZgH1I//3XkNdI+y0bmLHtWwvevPZ6sOihr0ko6cib8KLeKnYqm8fbVAGfCeFyQDa
         50YXi0rjLKM/Eh3wpLj6RRxrsr6U4+NFL0xSPfhhWct/eJQjGl3V1/EKdrqqaikxqYRa
         G8MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MUBGZ5ztyUTTLmgV8N07m91+ggGZiKqtI9Tote5FU1I=;
        b=W/+khZXynmsjvFlNlnhDJf+IqiyWdCuy/wtl1stQ3O1/BPbPoupaQmaaRut8oOk8u/
         5xnLM10bfOPlOKOl40huQeHDAMzEYhd7lIjs0Ubp/HK0eGpbd+v+tauYGR96BePLiB1b
         T4YREY3h6uPGdeT1d7PLna4BoVJ97/sLoV7/+5rY4VOaO9y33wcqsvRCePVQfTWFoQcA
         9XP/l/Mu/pdIBekEYnHQB+kUGTNcQgQzHWZG0SH4H4PKOIq4wY9UTxOjqnMlVLFJaxqK
         yvIAQH3JfDyuQ7U3xENPwvCJLZXjZVFDNSZWcxUdIkCeAGa/knka4jbqrWerbfURf/FT
         hJeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=TSGGYBoF;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MUBGZ5ztyUTTLmgV8N07m91+ggGZiKqtI9Tote5FU1I=;
        b=It0wOCAhXwbD1o8jamMb7ByVipbb4PEtnrdXkOIl9hBc4hjFtDCL1QJQTzHUR97xUM
         8EIffL5aq7fktCn1rzU62QLHQ7skVcmlZOTPVmphuKOVNpxNxsfdUBfR/CDmxH0N8IEv
         E6Zt+TTajLCVs6Y15esY9LOWTyE4iZDqSp95e/M2DQlBFeyGugbMUcSl6NwZLfafOV6i
         c6QwCpzltiuBo6LWfS0BxEwiSiHZWG89DwtNRX+aCtugkj6NfBbbLKMdg7AyKMGBq1E8
         jNz4o8C0KR6urji4mhChLbJuNaHOfMsgjZRXeLFelB2XbrxWP3sJJXngJpcQ/RHX/8EH
         jfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MUBGZ5ztyUTTLmgV8N07m91+ggGZiKqtI9Tote5FU1I=;
        b=Ag/uHkM1+GZ1RPZ+TuUM20n/OemNNoSRN9P3QpxYlrrJH8TVN1sf5lXqDmEfgAE756
         qTJ2Pfj13LYcgNZz/xDyg1QYh2nhWk7R2zYWgZyokuTh9tAJwD+IOGAp7sBdU/nZ0/xW
         KTHRRcHsj3hiThmCRU33VAgmSdVxeEgrxrbyd2IBX/+KUV2YQMyLyXQRDE8yOns+bIK0
         8iZSkkrU/FG42973gA/5K69zqdbcanfez78Y2Avbw/554Q0wcDDz7KeUn8+YbIRPzoGs
         oyFokfjOwl6/fkLZgUigbhtm4SjBqhI3sKnKONpLX6XRChL60yhjYrT8lH+tB0A7E8PE
         Xq0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314tPJiGuKMwFmBxI5h8yeug9laSj7tWhrAfVF5UmT+EtR7bXeC
	qR0xDnmzLl9/F+j5Ie9sMpg=
X-Google-Smtp-Source: ABdhPJxJtGbWxbNQyNKyR2jbzlfmEySkWDwQGx7Jt7ktydH0Xm2pFi2cdCm+P9xlKzWrO0wpe8V2Kw==
X-Received: by 2002:a5d:4564:: with SMTP id a4mr1203088wrc.409.1625252289151;
        Fri, 02 Jul 2021 11:58:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1c90:: with SMTP id k16ls4953060wms.2.canary-gmail;
 Fri, 02 Jul 2021 11:58:08 -0700 (PDT)
X-Received: by 2002:a05:600c:219:: with SMTP id 25mr1290608wmi.106.1625252288299;
        Fri, 02 Jul 2021 11:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625252288; cv=none;
        d=google.com; s=arc-20160816;
        b=suZI71ZZDeIoLux1n1MMmySs5ZXVPwjVf806I+ajN2d3u2mBVZMSByTm1RJvgA2sm3
         qoc7k0AMuFkEWx6otAoJWVVRGeMDGb+bG4PQ7vIO6bOKF8ar//Tot9XvHykj8xirAUTd
         IZhu0aeB3FWRuWW8tOT3deM4/RndMFrMWh8G+bpsmMGU3D3YM215MReiJt7oXQVjRxxI
         uMVwcYAN3nfqNrfAlJgUlqKOd9iSrz7IYym08aRl/TOtmaNFCPuxsFMwf6Yod4rf8GXW
         1NtC/fEM1Ugz41H+Ncc8Kv0qKnZKpGLFH8C9J5zc2VUE91ms3fj8qexHKgvFFVlXFR5H
         fMZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OOFkg3bgn9LW9+M4UE4UvleU2R47+ykAYhZOcWI/BnM=;
        b=GCq103pZ1bjvlSUAHPouezwbNMxHgceEt3cW+CPqfNOs6dhx7p5r2QM9rUDyNl0OfE
         6Gcd7/CM8YumnA+F8/GQwZjwFOtuePXQQJygA9lgPgUbUdDUsgcxC+Iaq8MNgBMQBBvC
         f3WCrdYGlyhBArpgGeD5BDJHmYWOGfCU6aEGGF5TJ5ES445il4/rekW+ostf4QAc9qzF
         IccTqf6AApqcr7CDZozmaFkCSYYHE2Hepfkk5ZfzhhkyRUcFHeSLE1gRYWur4LP1j/e+
         mgT5BCbI5K8DuaQ3bsw7flKavR3Q2OOtCKwqPv5Umu6L6b3A4o+clubyfUKnAlCokkJc
         h68g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=TSGGYBoF;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id h15si170817wru.3.2021.07.02.11.58.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jul 2021 11:58:08 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lzOM8-007y5D-Qg; Fri, 02 Jul 2021 18:57:44 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 4542E300091;
	Fri,  2 Jul 2021 20:57:39 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 245882B8556D4; Fri,  2 Jul 2021 20:57:39 +0200 (CEST)
Date: Fri, 2 Jul 2021 20:57:39 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Bill Wendling <wcw@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Heiko Carstens <hca@linux.ibm.com>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
Message-ID: <YN9ho7yDFStVw8g3@hirez.programming.kicks-ass.net>
References: <202106281231.E99B92BB13@keescook>
 <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook>
 <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
 <CAGG=3QXrOnN3-3r-VGDpmikKRpaK_p5hM_qHGprDDMuFNKuifA@mail.gmail.com>
 <YN8NGLPQ4Cqanc48@hirez.programming.kicks-ass.net>
 <CAKwvOd=-qdp6xcuVb-fSni6X-0UuJ6GM5+TJdWSkAfvNmqfZ+w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=-qdp6xcuVb-fSni6X-0UuJ6GM5+TJdWSkAfvNmqfZ+w@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=TSGGYBoF;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Fri, Jul 02, 2021 at 10:26:40AM -0700, Nick Desaulniers wrote:
> On Fri, Jul 2, 2021 at 5:57 AM Peter Zijlstra <peterz@infradead.org> wrote:

> > I've asked this before; *what* is missing from LBR samples that's
> > reponsible for the performance gap?
> 
> Are we able to collect LBR samples from __init code?  I can imagine
> trying to launch perf from init/pid 1, but I suspect at that point
> it's way too late.
> 
> Increasingly, boot times of hosts (and virtualized guests) are
> becoming important to us, both in the datacenters and on mobile.

For a guest, possibly, I've no idea how any of that virt crud works.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YN9ho7yDFStVw8g3%40hirez.programming.kicks-ass.net.
