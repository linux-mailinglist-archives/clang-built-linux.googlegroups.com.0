Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB36RVOGAMGQE2NJ5HIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB3744B4D0
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Nov 2021 22:32:32 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id 69-20020a1c0148000000b0033214e5b021sf231347wmb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Nov 2021 13:32:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636493552; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q9wzI53yPweBWH9gjEnSVAXuur1cP0IDr3pddX6ri9l3Z5CUt4f75umpY6/l+DVchF
         yZDOluLjwZZponWyoWxwO/gb3eLu43s4N2E7vkZLSf9iZcg0SdG/L88tkn3JXDPfthJ7
         6ObKVCe/EmI4e99IbCs8M2LHoGftTvqREXOb0BL0wYBDqoI7eLotQo9q5lfgfHwmA+hu
         x2BonrkxcaC+K5zw69slfQD8mTQ6gV+c582AGVYII2thbu8JD0Op3oSsIPcHW9azXIRs
         t/REwlKWTB1iJTtFyxUaPzMY/D7Dt+m/iPKDsZ/zKjlkMKlnqpNN1QwkCTDvYHlrEcL8
         oQKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=14ZXFFZtyH4/gN6X18+jPSyRHScY9m3P9YbTb/uGl68=;
        b=V+gHk78bX4tJlJcqkRYdHhDUG0IAe35DLtH/oPYTR4iH6wFvVapeckrFndOEvx8gbO
         By0a3EkIO4mef/GHNa4MwHZhgjvUPBmdJzkoclpNRh3h3w+/0XTUL/QRr6JxsNe8Qesy
         mStCc7tQFxrmcf35jTK7plbFUaqFnZK9wXqgV7KYorp4HIDM8l5c2saWyOCT/p6Tp46s
         NbrYVD6bZYmO0SwhuvLWVXKgWIUG0pEL31eIbrHb8rEw8AZpuYgE4qWZG7FRjhnuRWr7
         EmoPUJ3GCk3Vw6X96yDLPu1LITmtYtyhbifbWjzj1DbFLa9tZwC+tvc+tFFLV+yn/Dzi
         TwLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=OOkUgSDX;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=14ZXFFZtyH4/gN6X18+jPSyRHScY9m3P9YbTb/uGl68=;
        b=LhJ01lzh6Fz2oTM+Nu/ExlTatiYTtH0nZ+IR2tW3piWILy11rkQ6JfP4MLEYlf/Ibk
         76/1U47YWJZ0JEEnUS2FOtSkF4UJabrmUI9gzIW/iI8NI8GYSg0SVm2qHvJ9u3CWU7kM
         NTMe4VAUsmYFCG9fUDZA+Rlew0q03lLq+G1rsRQ3OUDrK85Cru8FIL1I4xjFf1X9hMT6
         XV10xKNMraUBE/TzyAQqFgyf3YVRyFz8L8Mmh6ADqRCw5J7n+xRFOp+FHKjxOioJckSF
         UYNa9GDw17XJgR2GGbg4dl/myXS9ztIhuSgDkOvJkDeVmfj4uife51ZvYTpOjOQuRrvK
         y2ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=14ZXFFZtyH4/gN6X18+jPSyRHScY9m3P9YbTb/uGl68=;
        b=GMBNIITOTitKgDMzxYVZZ4PEOQAUcd3zK3iz+yvXLPNTz1uaTmQ5H+ycbvecMkrbVG
         0zTqFdtxVWQYZ0akX7H1acdZU8kZM2jxoLItN1GwX4H02rt6sDCD8IyDTuKOG5hJLVg2
         0vG9TTitpZ+Elm5Mxn7ZI660POXIe0l8YQ8VfG0CpQL5ex7TwWoI7qsZbJosUQ6rmYfg
         9mG010pc0GN87dWo0EjBADNK5CNndto3/REtsMcODZf/+73zLHpCeJaSDAWHifNX+JIK
         9C0LI+xquf4m4IMIfwjoZW13tj9nbF++KyenWt5UYYT1/DwBkD0gz2GkTiHC7mfLY+5R
         dcAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wEImqE1l3xrRm2YRDy5pY1Q6vfHnN4QisR70LYHFKL4Vu0EUR
	DckT8GOd6wJFRhN+YTZXJDI=
X-Google-Smtp-Source: ABdhPJymrw/2CN9JDKusYqnqYa+/1HZQXzvz7+4ghQJI7g944T8b2XQlXIVUnvoEJjjHkmdLtSkWVQ==
X-Received: by 2002:a05:6000:1acd:: with SMTP id i13mr13619487wry.398.1636493552083;
        Tue, 09 Nov 2021 13:32:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1c7:: with SMTP id 190ls2070649wmb.3.canary-gmail; Tue,
 09 Nov 2021 13:32:31 -0800 (PST)
X-Received: by 2002:a7b:c1c5:: with SMTP id a5mr10726429wmj.149.1636493551152;
        Tue, 09 Nov 2021 13:32:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636493551; cv=none;
        d=google.com; s=arc-20160816;
        b=qyYDjEcsi3ish1OVHJVw3djfUpHMSEqJupwJZI+1GSprH1/hZ5rx4xAv9pxOLAZhOj
         kludIEqyuD+nxUttPJDzSCQ2S03p4pXW0ReCP6resPA/JXAYiEiKsWxVqYgWYGXxGzvN
         tGzeOi7wRYpRHT9SkpZcCbOqYaf0CPLSkOVsIeq4QkWSYtKsr2rSOyEMm1sAbM77hRjF
         ezDIkRtfEmaGjpA6qq0mCeQufKIL/1891I5VdlBvtWloWUEa1MlIlste5GzSWVlrp1y2
         W50ZHSlNWtw4qgcm8+1vTvp3a0oAiPLJVtbqdBC51qyjza/VaOo7DaS8HTffFZdz4OW3
         ep4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dJw8Ik3ylTfPa2P+lNYAI2E2MHLc1nH0ayoDuzAKkgA=;
        b=BvxMv74QPrV2BHNDWGTpfaja0yye99mvNCiMasJjeGflMeN3RG8I9aYyt7hVMXrcG2
         DRCADtYz31JeIHNIzNKyO67kBHZqPrnWJeJ+o2fmlRvhLqGPniBt1SfPeqWhIeP9VgUo
         U8OCteruIOc/Cxttt/OMmf8PH+LmGmcVOa5SWeMELKCGYC9KbgkrU0r/cutjk2Wm18HY
         UumE/joQFkcBJQD3JCrmtuDxUwpI4cbBgwMvFxSUfgmr4VPfYi6wPnIMeATYg8r+gWaT
         aOpdb6D1nmmVWU/eUDBSwsmLoBLahTK4FqmRJXqJTDd9sHnta6DS8fhHfXcOzd08ct5b
         0aIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=OOkUgSDX;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id 201si361055wma.1.2021.11.09.13.32.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Nov 2021 13:32:31 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkYj3-00F8o8-Sd; Tue, 09 Nov 2021 21:32:19 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 1C45A985A2A; Tue,  9 Nov 2021 22:25:56 +0100 (CET)
Date: Tue, 9 Nov 2021 22:25:56 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Cc: Miroslav Benes <mbenes@suse.cz>, Julia Lawall <julia.lawall@inria.fr>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Jiasheng Jiang <jiasheng@iscas.ac.cn>, jeyu@kernel.org,
	ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org,
	kafai@fb.com, songliubraving@fb.com, yhs@fb.com,
	john.fastabend@gmail.com, kpsingh@kernel.org, nathan@kernel.org,
	ndesaulniers@google.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] module: Fix implicit type conversion
Message-ID: <20211109212556.GX174703@worktop.programming.kicks-ass.net>
References: <1635473169-1848729-1-git-send-email-jiasheng@iscas.ac.cn>
 <alpine.LSU.2.21.2111081925580.1710@pobox.suse.cz>
 <YYrghnBqTq5ZF2ZR@bombadil.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YYrghnBqTq5ZF2ZR@bombadil.infradead.org>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=OOkUgSDX;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Nov 09, 2021 at 12:56:38PM -0800, Luis Chamberlain wrote:

> If we're going to do this we we must ask, is it really worth it and
> moving forward then add a semantic patch rule which will pick up on
> misuses.

Please, no!

This guy has been going around sending silly patches on his own, but the
moment you add this script all the robots will join him, adding to the
pile of useless crap we get to wade through each day.

I've yet to see one of these patches fix an actual problem.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211109212556.GX174703%40worktop.programming.kicks-ass.net.
