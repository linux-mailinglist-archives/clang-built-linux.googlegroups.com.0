Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBW5R633QKGQEHPTYVHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F870211DFB
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 10:20:46 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id a18sf24430099wrm.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 01:20:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678044; cv=pass;
        d=google.com; s=arc-20160816;
        b=zeymLmDwoy1xZIFYEG9rXE3pS3kPV3QRHmg1CcOi6rW3XPjlj1F5b0LwORc+wKdURv
         +zf0MKmYaOhvmhjXnUzou/dzEUFYvTLycWBzJ/aULpZxcypH0GKwKByensDup7YWByc/
         v6gmTAL9w/pyS+GKZrjrK6eY4vVZ4Na7/QFxgbnM4T7qy5B71n+h64sHfBHs90SHZnme
         G1oyyfvEiXJNhWN+BiXm1GI7efRBBBuVOeRyVl7GrbiTezIdF+Zs0ZzMw1RvFDfs3ss6
         btFC0KaqvC3xFlF4p0dhLHpXQye7nIXqTB0k1SB4WZ8pqBl0xDbIO+g6dsb5okx6QnS0
         tiqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kfkwLyO8kiZ53Y7oigkpSTgGDDXosyCLMf7I3M82xAk=;
        b=UKXRPpz4sow0rW+Imq0z2z7VIHNowNbP0zgUlUqkjzkLGnJbMKcAw8QdYkxSTwDPYR
         SmNHm9tXFv7SsP/0+lOGNp0Hsszw9qCshnx2wnXwP0jwbjE2fnif2/HbAPKmU6lUOMHq
         Vs8iwdVWowWeb0/NRpEgfxfPcUfKLKdCD63jiosDce/PmG+UgPYxJJar08x82k/1ASOQ
         /R7N//yfkq0O7MH7kHdUK13Fo5aDTIe2/vEOdI1YLRvZkg2CC/QMGZSQOOTPGzPHVJaC
         kdiTVWLQxO/YQClNF0PegPTjUZElJRE5Q8a6MjkUhpwYmZ+DOjJ/Zf2+/8SpUtp7kVJh
         Fb+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=QC3pfARo;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kfkwLyO8kiZ53Y7oigkpSTgGDDXosyCLMf7I3M82xAk=;
        b=hlsC68QIiA67rrpXMTS6OcurQF/vTouVJmZXqqFEvGVnBj3t1zqN4XRI6H0KsjJXjK
         geQOUiRfzK03SaWjd9eliM0/c0oQsbb/Ek5oPOFz4eCe/fnuE5970JCtl3F8L9OpAsAK
         nkba4AgG+Pqfv2+syIygROb+JhRlkVqrAHss/M9sUsnnYduQzA4zqLLM6+K8eWDZFS9U
         YMOTafA9a3KG4skE/pemj4B61xd3mw32blB3Il69Jzf1T4PIXQ97irZaScL4BYTtBYCM
         Nuqb1EiVtycYPPfIaMwqz9Slej0cZVSaFliKdcZUteH5yOB5yS4m8unflc8PQoZ9NrgB
         /nSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kfkwLyO8kiZ53Y7oigkpSTgGDDXosyCLMf7I3M82xAk=;
        b=g0YdNiJ9FyiraSeMli8jOinAGgm0rzWm0crxOeWRdXbNRpkh2Zl1YsL6pWiGQkbB6H
         6GfsCFS8IwtCzFoz1cwpmdz44osHV4SConpsgYPq7zKtnBj59ZOEZAA5on/AtpLgqGqW
         q0t4sMB3iwWhMVUfBDd7GIGh1z3vAo4/a/S672uzZdM1P3raHBgbWw7TNjCPKBxqFScb
         OffWIda8P7VTi53eN0NBtG9vkJEKZzdvOJ/GddDk4o44pJx4lCSZpeTsdZKiO+PVJlEf
         QuEMsCHUGC6AFH1StJS9hRzF+x7+A35tq2n7WVzA4GkFHZDTgD8kBRX5eHI16ey+9n/v
         QGIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zEN1ldCAVg5dwW5afIYbdlnIfdXt43fYazbkaaDpbG4TalngD
	kdiTQ8/8SBoFBB+h7j4S06E=
X-Google-Smtp-Source: ABdhPJw+wG2WVHAnWgsy/2ouBlQQxnlbAF4sdl/31BgB1cOjrpsCiyc/9ag8WqLFpj5SQGUw7+K0DA==
X-Received: by 2002:a1c:1bc4:: with SMTP id b187mr32334406wmb.105.1593678044034;
        Thu, 02 Jul 2020 01:20:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f58d:: with SMTP id f13ls309896wro.1.gmail; Thu, 02 Jul
 2020 01:20:43 -0700 (PDT)
X-Received: by 2002:adf:e3c5:: with SMTP id k5mr30560197wrm.121.1593678043592;
        Thu, 02 Jul 2020 01:20:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678043; cv=none;
        d=google.com; s=arc-20160816;
        b=QhWQAtXEQS6HV+lICTY8Zebsh6KCB72BIHtMDGf23t3/FfhSG3uzC1L+J9zubEib2d
         E0kEUwQ2mfDGqSmNH6I+VghLcIGrT5GLmaZ2UYtTNZNZAzAFCn1rIbg6CUbNDbAbt/+2
         ouiBhd1/fSi1FC+7ieE9iPEvieKrudXvTjeY7faREZTTX3V3ymx6iIBNB7l9X7A6SNuW
         aOyk0V/p/8gZzKTT87WfP3uni2X/SSvHVMKJGDTuz/K3uekkWUXl6GoSLg6xupZKwx+0
         bLSgTQUrQWdzdmc2BldBIpkRKA5xacfKPMhT7PM6yzeHYRjvqvlKDLNOuBtv8iHnrhn9
         4Iew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lYeUH98ECIdWEh43yZAHKXD5kblKbjXwCRAczr7OF8g=;
        b=S4f9Djl+JrRpw3GZmAtt4Mc6Dxn2wPLKA/adW+s5hQGZP2d2hinbyaDos2omNQ68t0
         zAlLQug+K3D97JcZgSctW2bum4CIyiIEuXKYdY/qJS+iiUEm5ADLj2BpEyq09XYFFxSn
         JtB5xXITugk/ae17iMz9P+DnmtZUJIF3d/AJPhoaJRQ0+XpS/uv+wUZJKsYhN/8rthDf
         pH1uCcqjYygWzGHEY7Iw6UMoHomQHOnmMov4gKV3/LREiyp7VwsySlh9A6hK8HlLavml
         gwMn8RhXG6GMgS0a4gbEDIJQp1iiIXHbSggailNwrvomTnHtQlnmDD8S/sQLYG4Fx+xZ
         aHYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=QC3pfARo;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id y6si406692wrh.5.2020.07.02.01.20.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 01:20:43 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jquSW-0008A7-R1; Thu, 02 Jul 2020 08:20:41 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 30A843003D8;
	Thu,  2 Jul 2020 10:20:40 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 0DBFD264F8CB3; Thu,  2 Jul 2020 10:20:40 +0200 (CEST)
Date: Thu, 2 Jul 2020 10:20:40 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200702082040.GB4781@hirez.programming.kicks-ass.net>
References: <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
 <20200701114027.GO4800@hirez.programming.kicks-ass.net>
 <20200701140654.GL9247@paulmck-ThinkPad-P72>
 <20200701150512.GH4817@hirez.programming.kicks-ass.net>
 <20200701160338.GN9247@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200701160338.GN9247@paulmck-ThinkPad-P72>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=QC3pfARo;
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

On Wed, Jul 01, 2020 at 09:03:38AM -0700, Paul E. McKenney wrote:

> But it looks like we are going to have to tell the compiler.

What does the current proposal look like? I can certainly annotate the
seqcount latch users, but who knows what other code is out there....

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702082040.GB4781%40hirez.programming.kicks-ass.net.
