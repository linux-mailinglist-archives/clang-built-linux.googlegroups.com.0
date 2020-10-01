Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBVNW275QKGQEASNWXHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 8206E28003C
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 15:36:21 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id y18sf915584wma.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 06:36:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601559381; cv=pass;
        d=google.com; s=arc-20160816;
        b=a60Rq9yOqm1PH3fRnNYVTdOAZ3N0REu7OYrH5irRTafPNAPvoM6c0b+oVUBqCwqtXL
         RUxD9kPj15pdI4C5IJNP/eIs/EjIpyHgvA6CrWdR/3J899PwY9waHdBpRUIifFNAmsz+
         tpsvDnXfmnvCnfyRrT4FTHONEvaKW1k6jVf4PiQPrrbfzm1KLc+eW3HpprqpS5BiZw8N
         VBTSybPcSNrfkCYZF8qcRaujFIi2XCMo0hPxRZSvCNle2uUu+IydybccLJtPfVT6/TQP
         d7neOIMqWsiZ2Nzks2RI+VUYuYO44AvGcdo2n6N4WfsrbUj8gjdxVy9SMwh2nCMBerLP
         1s1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=V9e+6g7h7g0MxDZ+MbJLbhevd5IjVQWur6lKiS79nu8=;
        b=BHovXslUDfkYyROnrKufBr17+wKwe5YDZQjJ0HSHLRQSjrA3/PQE2OS/K2Ii3ivtI4
         sKso+MiO+XFgz1iKzpY685aFA9fiHAFYPLQ9kz+Mo1/U5TUCKFGGhB/0NgUc56ghto5w
         OoX8LfYHWIZ5ACZw8nuN8UMs3FxJ2+plS8W0ETUdLYHVp6h5E/ZNAuL0TO3D+cEo0E7g
         Mj3G3nEpHDh9OCjLbzHAS/P4kXzB94e3MuDyEteomyPKm164yAbLse2df05jvGtfFUbT
         6M+WLAiRPy5emCgin+Jf76qfOS6WiwE3SvB1mE+LOaNIdMO/qVBt+cNeSJ+Gr1ahz/3J
         PeIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=rkoYrYmb;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V9e+6g7h7g0MxDZ+MbJLbhevd5IjVQWur6lKiS79nu8=;
        b=mfY+RDctopn7HtTBxy78yYHhBlw9vIpUx0lcp5xpqQy2vXxycYO/4WKIrzZ8Q+h21m
         1D5bEwVfcvy6VQwPKiPxVz+I9DXSYdMvrUwOpsb/RFwL3XeFcBoWBW5gpJbVfl4x4FTH
         InZ37CCFb1V14/f9kE7nNKx0rs5BZ2ysmSWdosChB96s9X+IKoK2zeN6lScnqdL6dEYB
         y4ImOyQrd4C295x/vs3Y+uKHIwwbXYHWQLdsV6eaxGckrA/C7JAUUQlDadGsF1aXGIGT
         iVfJDIliI7NYvKXMhdsRwNtgJModeU4Uuy9JiVzm4ixQpy6ffjed31WHUwyaYSxVxKHF
         1MCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V9e+6g7h7g0MxDZ+MbJLbhevd5IjVQWur6lKiS79nu8=;
        b=WhmWZUBTjC1mkhCHyvTn4/0bsAbkaMDyK1qk0yKi3oz444B4eT4X4R+UM56rOQb619
         ETK/LnQBrbt98IPCqXqFQyKORrAwh3vgw8SR4sWqWZjL9OGP9jLQydOBtfqmVIFWdXzm
         BEBYmEvPRa2XNYfSnQqW1HMRsV07oRIfh8nMPsGB8PgeAM/ZcYDiWm2zfuKwqUFe2WuM
         v3oD1oQ2NXhOIrb8nTjuvHlJD9rvNey1D4uL4RqOWfLAAXWs6f67KI7oLmHsSm+sRxsj
         gF0Eqo+sooVBBvnTPOkvl0Ku+xoRrcWFeSatNNaWlqM910wMbx3qgAlif4eFyfEANGEZ
         idPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GNAG/GeHIlifck+/1mBf6BNlw7GOIaAkeQZEvkR33Cu+QNzgb
	9HUoW0Cqf8L2nZX6W/Qj7Bw=
X-Google-Smtp-Source: ABdhPJxCeWZv/OPItNbvlLPiY4LtnFWjJ/RYltYWW3Zv54l/BT4YjSVI7y+eFW/uarvyx+fGWoLHlw==
X-Received: by 2002:a5d:67d0:: with SMTP id n16mr9845518wrw.198.1601559381272;
        Thu, 01 Oct 2020 06:36:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls1029597wrx.3.gmail; Thu, 01
 Oct 2020 06:36:20 -0700 (PDT)
X-Received: by 2002:adf:e8ce:: with SMTP id k14mr9730708wrn.394.1601559380324;
        Thu, 01 Oct 2020 06:36:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601559380; cv=none;
        d=google.com; s=arc-20160816;
        b=YSTPLOGLrY9+fOeo+1ZW1E89eHzHczE7sCrY1b+ql763OZLHvRyNmc91yPoxC9O3iv
         PoRFhFeLD+1u5zH2mPKRG3ky1SujWmz/l1kV6mnuNBx0livVlniVfm3MPEteifTt5Fj5
         BEyq+9v+LxTdzP5rExfe+ydDaHiiIVanBF3KXN36EwdMGimJ3nCzccWiwB/i+eTLMQhC
         keUvzt9YIA0kUny8Jxv2YtnLXU1jS1xtHzdJCSGlmZ9ymjbLXh5M8jPm65bNgpsljQS0
         yp67BR7o487SLApevgCLwIBuapRM4xG3iJg2iwM7MuQKKEtkajPiHyeHSud1/MWnSPYx
         s5sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fKHBx2l1x20GN0S3b+jTfen0uwxhiVfe2eiMSbpdaJc=;
        b=evIpyYBCbeeGZ0mjoYCPRwogyG6QDSWafYvcwjrL2xKfwhb+9bvwuZ9rL9ObpFNWq9
         f6LBqAqHveWrpAwxqW7WGhf4622E9w01/x9k9aOgukKZzRpp7jP4H0mRmdfF7k10PdSs
         POQS8i9FW5027TURU/dMGtMPuu0DLLRcBO7S0pR4HHLwk1UX2cEhKHCgxCeOsW+gINM/
         +bs5UuhkUQnNEZ6HJtpR+k/A40HKOnmKqwAGsO5du8KL7gwfmquw+ADw8JCMKVB2En8Y
         nnSBNt5gtZejfz/DRpMS0h4TCoTICzRI4EApQO+Anm4ZoMwOgAffJClFJebEIbUauZfw
         nxvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=rkoYrYmb;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id c144si54789wme.2.2020.10.01.06.36.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 06:36:20 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNyko-0004ix-3E; Thu, 01 Oct 2020 13:36:14 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 436ED300446;
	Thu,  1 Oct 2020 15:36:12 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 30D1F203DC1C6; Thu,  1 Oct 2020 15:36:12 +0200 (CEST)
Date: Thu, 1 Oct 2020 15:36:12 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Miroslav Benes <mbenes@suse.cz>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, jthierry@redhat.com, jpoimboe@redhat.com
Subject: Re: [PATCH v4 04/29] objtool: Add a pass for generating __mcount_loc
Message-ID: <20201001133612.GQ2628@hirez.programming.kicks-ass.net>
References: <20200929214631.3516445-1-samitolvanen@google.com>
 <20200929214631.3516445-5-samitolvanen@google.com>
 <alpine.LSU.2.21.2010011504340.6689@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.LSU.2.21.2010011504340.6689@pobox.suse.cz>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=rkoYrYmb;
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

On Thu, Oct 01, 2020 at 03:17:07PM +0200, Miroslav Benes wrote:

> I also wonder about making 'mcount' command separate from 'check'. Similar 
> to what is 'orc' now. But that could be done later.

I'm not convinced more commands make sense. That only begets us the
problem of having to run multiple commands.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001133612.GQ2628%40hirez.programming.kicks-ass.net.
