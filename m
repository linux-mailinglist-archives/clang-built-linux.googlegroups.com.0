Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBI6IRWEQMGQEBRYY7OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 281A33F4711
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 11:02:28 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id q19-20020a1709064cd3b02904c5f93c0124sf5394403ejt.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 02:02:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629709348; cv=pass;
        d=google.com; s=arc-20160816;
        b=I+cYL/zT+Pb5v3powYRYfW4zMPN+MScLPkrLmmh41TwcN05PppzeBuvOZAEARhFfJJ
         aOUfrxpIsGIugg3QML6XMHcCbPu7+SW0OcPzIdF3ILa/Fm5rgCTp59+pzC1Wn+efoQDc
         nE5XnJn8wwSErDDeliUaceqXXa/iCR5WZGK34l6meezQSvYZILZP1fl+VG4PIrsY7uL6
         qsnCqNj4njQ6u+eYb9a1pC4HXa4Mrn4rSknThlxucp4uiMW7D0qGBFLrwP66KPXlGmQq
         O73nlJhmjvYNMyL0UlwhaoWWwFC83VdcpBwc4HlmyyuBP0kb9t/9l2ngtkEenEERXTFR
         jFxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D0Tr7B59zTOM2f9BkyPxcVgBKOdoYaVXUq9aYk9hnT0=;
        b=yOfJYmiZJQpYC4b7+CYsfpmdLUycKY2Rcl1aG8yu239rh6xF0DVFehbGB8VuJ2gspU
         +J2izrxjA9cmXlx9w+7JN/EAPPk7GvqpdLaTGf4Z/yG6uA7xbVa3OEV30fFwtHt+OPBP
         sImSsipAEforRj/Y8cDb8EvBqU2+OuezjJ17XxvWkKrhygRH6NonSm44PDpp3uM150tq
         euQncBbHg+buvJoml7Y1U6GDqry+bqdpONjqVYeJaHEf++Tiqu/+FKX9GjxeJPIhaKg7
         h1mTPqfyDXadijngKKwvzTJz+ROLjYmTzGnQ/kreoTFo87tSJJxsIrA1DjoEJtJ2QQLh
         9/AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=MtatwbZ4;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D0Tr7B59zTOM2f9BkyPxcVgBKOdoYaVXUq9aYk9hnT0=;
        b=oVMizy+NZGHniuvWBLF5mG5Y5UDQcyJh7cs2QT+WhUxTgiIFmXec98j+1jn/KntwUT
         bo2nfUHYgjI3THN3aBiAnjIgI1sA0zGU82g73oDdNeomzG2Scab5nY5wCZK9bM32fxUg
         z/17jk+jowQ4odiOB9i1QTFqG5o1kRwWuTWHAQ3ogC39cISYy9vnlMREL1zm3sR+33xl
         LlJvvj2Q2PsCEbldCkdIl2+0u95enobRFVX0ukcgXBB6gle6kvvBGj7aNCj60XYSktAL
         karRzo+Yri4lgXJ+Pw7T/RLhfUMB1Q3Sut7UGYtrSA9nZWeT9nEAQ5jPirTXVDPIfahc
         UVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D0Tr7B59zTOM2f9BkyPxcVgBKOdoYaVXUq9aYk9hnT0=;
        b=Ud6/bmAXEMEbFfQTobejfl4r4KvF2n0ai4OF59W2w++VD5zxAlinLhxEvpvM4aP9/1
         dIueW+VuMcn+mJ3rWQs2AaFeqTdHKfioGI6TQfzBQ+WxP9wq2CcQYHk1r3hDbdWiCWb9
         zR5eKqAV+RdfV9UPn5RWdfDQ6RzEr13jysIOTUD43DGGOu29cI2wgDxBI72fcKof1DCk
         G6Nq+csmDYAo64zxo4vhZR9PXukJL+4TLWtXMVYnNCbgNmLVcc3+qWjpMwh8VnsahmSQ
         zwSQiXt1ycU9MdHI6e/2/K8b5tBGYnOUlAf9xl7DIng395RmXRzOyHG4DD2c/2D71sVw
         RdRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TclshFYa5xUKfojLCAp1Ie6oBeKlyk04x+K3fpGoS/khXXwHA
	InDixjER5lyn2jFzuRbFQYM=
X-Google-Smtp-Source: ABdhPJwOkV+hpXivn7T6gsf6aXkVqp8wnbiLlqkNpRBt/bvB11jswGaI+bFJrb+Aydj9zxdEK//Lbw==
X-Received: by 2002:a17:906:a0ce:: with SMTP id bh14mr33422271ejb.434.1629709347722;
        Mon, 23 Aug 2021 02:02:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:361:: with SMTP id rs1ls2455555ejb.4.gmail; Mon, 23
 Aug 2021 02:02:26 -0700 (PDT)
X-Received: by 2002:a17:906:6009:: with SMTP id o9mr34798044ejj.266.1629709346863;
        Mon, 23 Aug 2021 02:02:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629709346; cv=none;
        d=google.com; s=arc-20160816;
        b=rCbT9gFrjXqFE/8JNHnDNH0M4Q27Ew9vWnvjTlGL88RVivAr77ei8zpPr9t87W0t4j
         dJi7YA0bzpZaKHmuCjD6yfpjaWR30OqbhCcmhBtbisWuE2V6N+Mjfxor1/doXTPHEnvj
         v4BLYkRPCJkT7kQCAiCjaRSjKNwENmTgHHPt1YCcoyRSXCMfPl3BrWGdomcFRJho3Jgi
         WTqtOfMZzA34uecrvPGHv1BgeUHKq0wnVO3qdeA/Aqg+6mxgl1RYL6VGoY/d6juTu/O1
         SWTmUFRJ35s7j2Aej5zKt/UKwRbZnEOegn0x1i3e1Y+q02XtRks2aQuib9QxhESkJG8a
         5QbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OgyTviJmKWdTdPGttUWCV7ojzrJFqomYeJvFCysoRxY=;
        b=wJ9BfNwrrMR/3sPuRuLYcdc7ATeYs4Zxh0KnHrRVyGk2NWapVvn/EbDWZPqU03gpMJ
         pOIRPp6hHOJiDzesnvCq8ZU8jZuhy1nvMxcAXmPco3LLgW/B76sU0qHNnFu1nBbpHz2A
         1tzMP/x8AMdqx5NZK893GCSKsIHLSOIBnbQXwHznEWZoOtkI0vMuM9cQEQx/nEyThfFu
         haQXAQKylvSRlrHXnOeqOgrqj7ZGcpiCRd9FeljDEv0p4AanTnBq/W3AtQWP0UMIebZT
         wywAwxc3C3s4+HcsMCl448B8jPpBgPodqHdHyWWCACSWzXkNSJAmx18JT5SjJ559hVJp
         0/vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=MtatwbZ4;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s18si853763ejo.1.2021.08.23.02.02.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 02:02:26 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI5qE-009WC9-Ll; Mon, 23 Aug 2021 09:02:14 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E427E300332;
	Mon, 23 Aug 2021 11:02:00 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C3D4D213ADB20; Mon, 23 Aug 2021 11:02:00 +0200 (CEST)
Date: Mon, 23 Aug 2021 11:02:00 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: kernel test robot <lkp@intel.com>
Cc: Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	Valentin Schneider <Valentin.Schneider@arm.com>
Subject: Re: [peterz-queue:sched/core 8/11] include/linux/sched.h:1722:57:
 warning: unused parameter 'dst'
Message-ID: <YSNkCAyMU0tJoedT@hirez.programming.kicks-ass.net>
References: <202108210940.aD3d42zA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108210940.aD3d42zA-lkp@intel.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=MtatwbZ4;
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

On Sat, Aug 21, 2021 at 09:20:50AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core
> head:   234b8ab6476c5edd5262e2ff563de9498d60044a
> commit: b90ca8badbd11488e5f762346b028666808164e7 [8/11] sched: Introduce task_struct::user_cpus_ptr to track requested affinity
> config: i386-randconfig-a016-20210820 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
> reproduce (this is a W=1 build):

Dear 0day folks; could you please blacklist me for all W=1 build output?
I'm 100% not interested in random compiler generated garbage.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSNkCAyMU0tJoedT%40hirez.programming.kicks-ass.net.
