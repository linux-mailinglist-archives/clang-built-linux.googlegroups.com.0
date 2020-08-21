Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5N3QD5AKGQEIBEFEGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3535724E091
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:18:14 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id d2sf1856396iok.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:18:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598037493; cv=pass;
        d=google.com; s=arc-20160816;
        b=WPxyVqQtaa5fokJnJZ3XEKf18EYG5+lGONDhqPlM/DRrphp70zx3/eMCbmn7zcZ+vN
         R3qZzDYD1E3K09egJ11Q+YH0Yni+N2PVeC8SUVI4HgLe8RqN/Znslk1Zfd0qFtNB77Gf
         JGMqgxs1pv39g9pFHtfKuiy08jHBhj8mZXPOS/1EjDXlZais2a/fZPh5A4MSx0Be1drH
         mk9RDuEk/9Gm7NyyHRDSWK78MfDa3q5g60krctaw04paxB6piLPnRN4lU37g2mOTqmMu
         kz8+/upAQTmlqVtmrLyTTC4KVL2mv+QWEdgZ3bqIbsUaHTpSAKKzOTiEWmgqRcir1jiq
         HvxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tb5fiJ4pxHF2df7wLiXrCMWrfXWpRDIOw79iVprAVHE=;
        b=AcUXdYoPS0EDqKgv6kCf78k2JlXqAVWKuwqcOr1Ezq24qK3GBaYGVhvdKv+wPdv8GC
         foiu4qW2HeieKHKlLtGGG74SJb5vXoLtGk17jPG9zUYHnFuAY0NJOK+xmdlz9hz3TgML
         2nrDvTz+hQiqlG545kg/7dDe+BNBRKoB4EIBf0H2MTRzuBmdwcDYRChxKSb171IPDP/i
         oc+Xyyj+9vkgyzdVVWbRhd079+Gbd6Xm6kbPM4hLqk91Je4oIJn49yVXmNx+QHyi8B+d
         DIwJVJHRg2xIAGmBYYRLoL91HaofhyU5uDnf0xTIGuk1VUm5xgA8OZdRkQN4CqUO0tAY
         nR3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=c9nTXlQN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tb5fiJ4pxHF2df7wLiXrCMWrfXWpRDIOw79iVprAVHE=;
        b=dLbnhWIroPMSobuO1uLqp/DdQyAYHjoWjtaJaj01FJnbCnePZ/lbncVZMgpcDfi0oh
         vr6RzecSTAts45wZIvSrn11URGvIcMCt56pUgIohGuNNw+ZbhSeV5imH0pMtaaSvzGxn
         dxTa+pRRbYp2YizUte8cb5kVzRz/wW2KW6FMZMCIbbp4pLGWfQFysSkh2XLNpp2SkJQH
         DMgDAsGAvLOK4PLBuu9kzXrPxUv2FqRJbskRNfJ2suJpQ0JQ2G5jAY1/b09tAY+Dqv6H
         mcCRy40hpemrl9jehlFokcTsbDuO9nsx7Qr5lYaoLJBTyOfb34Wu+PlX1AHAg4Cf6RhH
         n3wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tb5fiJ4pxHF2df7wLiXrCMWrfXWpRDIOw79iVprAVHE=;
        b=GajVEc2AtzUBed2IsFT3FUWqv+lauBQ3hk3LlYQv+IK1o8fw/Rq1vaxgw8o4i2H9b5
         Ib72gVBdc0IIdtMgfkkrgbt47JjYVG1DqV1ubN6tY52kL0Wen/XZTe3i/iVFHjywY8jZ
         TNRQVyHn04t+cau6/U6E/GNYAKnz3711kdgPM67rYYikjmcQl3reoTn4SGMjQRg6pSUh
         YZdoxYkS7Qe837RGTAQJ+JBKJmSszAcVrKMiyvVYnzlYGTCFgMqU7fL5jCvuskg64y2p
         bC/vAztU1jlZAK3EeUeHvPRspyVOmY4NPV3XUfVmvaDB8dxTiMojR5CSx3YlAoMk9YJo
         BXvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JcmnPahpe52LzqUOlhSaD6QsmUfPB+KiwQopE3wbYEUZHDOjj
	fbk/GKrkHy4czr41BImF+/U=
X-Google-Smtp-Source: ABdhPJwLZMiQU+iVPd+H6mG5IAPgyuXbIB7Es9AqcvA0liLeuI/rb8I1/S3sUIQCsOnMj0K3co1VMg==
X-Received: by 2002:a6b:8d8f:: with SMTP id p137mr103244iod.195.1598037493174;
        Fri, 21 Aug 2020 12:18:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1941:: with SMTP id e1ls701776ilm.3.gmail; Fri, 21 Aug
 2020 12:18:12 -0700 (PDT)
X-Received: by 2002:a92:a119:: with SMTP id v25mr3796643ili.77.1598037492808;
        Fri, 21 Aug 2020 12:18:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598037492; cv=none;
        d=google.com; s=arc-20160816;
        b=ydaHzVHixD6E/QXf2mn1ZGEIN45RfxqLIt75W3i2g03VRKK9eWc24wAeJWsG1Tu2+x
         h2JHZPUk35oPAzzcDoApMA+OElgaYO7/pvnfoIoFFkIhpfM+0jDyDpv/oRXSm/htjHYE
         3ZlHnoH8CKHUHqhWhnewtX+C8eF7PnPkiM08Va9ZzZT0qmgBnKe6lGwA8o11tj67vWxU
         P1TJRfOJRzd8X5QmBBFls9AP0gyvslSBWc7t5tQQgpI/QXjxnGjOyxjZICR61GR/2MwW
         2pQmA8wJaiYYi30wHZIt6kzNRLeasvgdNpqyVHGYMcqUuhDnVLqPywzLuVmpmEmrKQAU
         /p3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iH/eGhwplhANu5ngguYajhAAOM68U/Ap6x/YYMCKQeM=;
        b=Y5XeMKcbgvV5p3hGllGABOw19gIY+V0nfEhn/SloByE4B5bY6dq73HFNmNnxyA1jZL
         TU57aV/zVbYWFPjurXpNZYEw8rXJ8wj8egA2aens/mLbdKYPawSMdMOFAVM2k63mWrG4
         vXpaK21A6UrgdYZ6uAhzvFRqi7XnGlZqOYPkWNgXTynAxW5njYWnnmj+NPI266ErAnK4
         Q8hnKIa0yKkkKHJEJ4sSa0vuCUyWV8ElwmvKv3ErQuBgH5RavDmjFImddzuxBaT0lpiT
         VEs8RupDIN7yisan1nLkfpMO7/CdQFjuvDRE/zvg/eCNflEUBCo+UY9TOBY92Ikpn8Yq
         i0qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=c9nTXlQN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id u9si144320ilg.0.2020.08.21.12.18.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:18:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id m34so1434378pgl.11
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:18:12 -0700 (PDT)
X-Received: by 2002:a05:6a00:22c9:: with SMTP id f9mr3657627pfj.212.1598037492193;
        Fri, 21 Aug 2020 12:18:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z6sm3413592pfg.68.2020.08.21.12.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:18:11 -0700 (PDT)
Date: Fri, 21 Aug 2020 12:18:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Andi Kleen <ak@linux.intel.com>, Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>, stable@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH v5 13/36] vmlinux.lds.h: add PGO and AutoFDO input
 sections
Message-ID: <202008211216.3812BBA0C8@keescook>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-14-keescook@chromium.org>
 <20200801035128.GB2800311@rani.riverdale.lan>
 <20200803190506.GE1299820@tassilo.jf.intel.com>
 <20200803201525.GA1351390@rani.riverdale.lan>
 <20200804044532.GC1321588@tassilo.jf.intel.com>
 <20200804160649.GA2409491@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200804160649.GA2409491@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=c9nTXlQN;       spf=pass
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

On Tue, Aug 04, 2020 at 12:06:49PM -0400, Arvind Sankar wrote:
> On Mon, Aug 03, 2020 at 09:45:32PM -0700, Andi Kleen wrote:
> > > Why is that? Both .text and .text.hot have alignment of 2^4 (default
> > > function alignment on x86) by default, so it doesn't seem like it should
> > > matter for packing density.  Avoiding interspersing cold text among
> > 
> > You may lose part of a cache line on each unit boundary. Linux has 
> > a lot of units, some of them small. All these bytes add up.
> 
> Separating out .text.unlikely, which isn't aligned, slightly _reduces_
> this loss, but not by much -- just over 1K on a defconfig. More
> importantly, it moves cold code out of line (~320k on a defconfig),
> giving better code density for the hot code.
> 
> For .text and .text.hot, you lose the alignment padding on every
> function boundary, not unit boundary, because of the 16-byte alignment.
> Whether .text.hot and .text are arranged by translation unit or not
> makes no difference.
> 
> With *(.text.hot) *(.text) you get HHTT, with *(.text.hot .text) you get
> HTHT, but in both cases the individual chunks are already aligned to 16
> bytes. If .text.hot _had_ different alignment requirements to .text, the
> HHTT should actually give better packing in general, I think.

Okay, so at the end of the conversation, I think it looks like this
patch is correct: it collects the hot, unlikely, etc into their own
areas (e.g. HHTTUU is more correct than HTUHTU), so this patch stands
as-is.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008211216.3812BBA0C8%40keescook.
