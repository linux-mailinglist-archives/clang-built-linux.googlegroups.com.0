Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBPOXQGDAMGQE23AMS4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C3C3A0DA6
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 09:20:31 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id v2-20020a7bcb420000b0290146b609814dsf1594688wmj.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 00:20:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623223229; cv=pass;
        d=google.com; s=arc-20160816;
        b=dZIvmw7ricv6EgZpXGoCxSGK5c7yf4t9zJY9znMYeCKmAITLMiTLTMxLvpUXPkLNbt
         2yngFlEFRNATojJ9qO858ZMEfIgKbVJEtGL/FYRbgfH8754FocuYomkBX/pwLvdRTHGf
         dQ00uKzdLzUVmXlivEitQJqTRX/0L01P1mPX8nDTnk457MDYWtBATBOpWufwtJG/wxJT
         eoOGTr2Yr9ecPOOEPCKPQm2uEhhlZQgXWyzVT9TZNfK/WF3CemdTHIvM8FKN/veHl/p8
         9ZUvaxQRGXbw3qTlZY+8j0f02CN6RbygYKRSJl2h/6aXI1JTuHSHIS9R44WgaTcqvrPr
         NsTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xWbc0fMIUZfa1yTcRPzj7wWHhvPEEkQJq9HaT4AU0rI=;
        b=AI8Z0ULBd3CTyEQdEU0TN4IEGur5knfWXyl55MMSzU5Aio2YVnUOBBsfQcbWXVvgvQ
         Hy2kAlCwMp9w/5qFVCq6AfBbPyBVQjUJ/ymfVPh0w8Y+KLC5dW44NXgey7IECAh746M7
         qyxFI7oTexX+qgvYwQK5bEXu7GA5r3HnxEtEoELKX10QRBi4l04WhrxdsKJ2oA4Z6YjM
         C2N4hpMO7oGc6oV6laUZ5cIQw9ai+hPjMZ74bzGSgUWh8FM0s8cTGZzN/5EIH5Uc0lZI
         +FQLs6lQ7zQgxiN24eHhO+M00uBKvA5mVFRA36i0BJtunClgYeY68ZItEVuVD+CIZb9i
         JIaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hOILovq1;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xWbc0fMIUZfa1yTcRPzj7wWHhvPEEkQJq9HaT4AU0rI=;
        b=eJN7kTg4LoGT6uEJ/6kM3zRRTzZcMwFkhr/4zp3cTmwxL2ovTTOnM2x1Yzu6aBeShQ
         o18jA9Tsbnx/usvZb2OwdTsgTnHZi37Gh2zNlt5CkL4lhOUDHjqGI3Im0zuVPR3MSSP1
         TsfG2cVSW2yf1Ny3muWFqKRg19pmg6et0Elg6rgibXFEZtbtEWooJEwA1rReHXQlPDUq
         +orTx1V9lw736zT4Zdi/g0IEtGnbLm+Vtl4YPiNsXqnKW55YzCFOZZnL0nLfj9aSvu0r
         Xo4AdQ7hGTBw51EA2P04YHwKFRZ4ITI6O4dF5lbyFoLZ1o2gXsSvrdzJXNwXF5EsoRqY
         JvDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xWbc0fMIUZfa1yTcRPzj7wWHhvPEEkQJq9HaT4AU0rI=;
        b=gExKrlGRiJZ28nZI3+LANrpZnXvMRnTJ4y2JZfrHgQmg+Bf4PZsbFQCHrCTyBk11S0
         PLST3n9ty3B8VxseOLVHmQ5bW4wGEQ00yYH7N8O6FP8xpRKzveuJIm9CIqYGRu5Io+Vp
         pwHNFO+L1CVwa7lc26cJljG/9ur7PBi8d/wej2aRvApH2Z5kA5hYGx7zS80Z/D9RpsYp
         gSYilj4TcFnqoWjEY1XILL28a7Q6q01tNZMNZ4DUTF6DsTlPcZyjcDxGyJ4tT/BasxkM
         qvT263zFuaUVR9miU/7W5k5MsazCD+ruFNZjYahPEyHoyT8uPoCGuTiXoMmS4PFvziJA
         ZW0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OF2to4fsnzB9hW7vMsctHeaCEZeCCd70SoiPKhItElJMETTNr
	cSKZvnZsPk1peS2sec7AjnU=
X-Google-Smtp-Source: ABdhPJwxRv0VfNB8LNyfPtGXms5GYqwxZzxf7UkO2r8fYXAeANkCsdwXCAL37OKCuqa/NZnFvfLxXg==
X-Received: by 2002:adf:cd87:: with SMTP id q7mr26289513wrj.370.1623223229732;
        Wed, 09 Jun 2021 00:20:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eac1:: with SMTP id o1ls1528834wrn.2.gmail; Wed, 09 Jun
 2021 00:20:28 -0700 (PDT)
X-Received: by 2002:a5d:60c8:: with SMTP id x8mr17602390wrt.382.1623223228922;
        Wed, 09 Jun 2021 00:20:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623223228; cv=none;
        d=google.com; s=arc-20160816;
        b=vToLSrt1stoZ9BWAdfv+jIYIgzjGOr8hgd4ybs5h2H9X6JBuaTx3Q7rLjIDrbrYkEq
         YlPAut9xz29wXnYgr3JodcejUm2wCt0NSGcZNH5R3v+BBzgjHYO9rsiN3W5T1sV6pScn
         B8pDr15/E/B21lBrsVHPG9IKiTduSUbTmmbwD+aJ/g5qRH//4woPNAdzFjYiSn8RxTrr
         9dCxXBXXzhNANsdP8auAOfFi4iZHhZslYN4DjittX9XHYCVtwuq54+tf/sRrEfiJKaua
         SadRteoKCybOEpbwXJK1JOostG9WPhAYjFOtFjG4nKQfqSyK7vnwkVHBcm4vES4N38WO
         2jmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CkvrjnYJVK0zZT1ZQKtSfU60d3TZk8UBy4RDP+Og7bA=;
        b=ZdNt6K3DDPdYTLq5R6kBE9nSnFVJ3kIKxPs34KiLflINMF5ZzW/YZ3VlErRfuWlncx
         CoMS8nicgPOvRvEyq5mnUyG/Ecoc6eyt+ZxpzTDDKMjixakGnz/6ol6rd4n0zEsShD7r
         DCXZEyuA4lGgpDaAxPnd8SBhAR9P2gp3KsCkKpiv0Gi8IXTjpJ7vj+hLHpfhADK+hd9y
         LN1a7BPyGtHqJ47hGJvBwsGxQJL6KypRJJfyENHQyo32mD2g5r4Q8Rmz2t3jLFFc43O9
         db+m2QqlUg7/AbkNq4gNrmetN/19Ou3kFt2s/bwrAV0Xqdj28iqe7xoJqB9YGyH2PW5l
         wjCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hOILovq1;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id f23si112205wmh.2.2021.06.09.00.20.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jun 2021 00:20:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lqsVV-000FC0-5P; Wed, 09 Jun 2021 07:20:14 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3537E30018A;
	Wed,  9 Jun 2021 09:20:08 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 134E0201DCD0B; Wed,  9 Jun 2021 09:20:08 +0200 (CEST)
Date: Wed, 9 Jun 2021 09:20:08 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Lukasz Majczak <lma@semihalf.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	=?utf-8?Q?=C5=81ukasz?= Bartosik <lb@semihalf.com>,
	LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <YMBrqDI0Oxj9+Cr/@hirez.programming.kicks-ass.net>
References: <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org>
 <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
 <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org>
 <YL+0MO/1Ra1tnzhT@hirez.programming.kicks-ass.net>
 <5dd58dce-c3a7-39e5-8959-b858de95b72c@kernel.org>
 <CAFJ_xbp5YzYNQWEJLDySyC_bWUsirq=P03k8HHW=B4sH0V_uUg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFJ_xbp5YzYNQWEJLDySyC_bWUsirq=P03k8HHW=B4sH0V_uUg@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=hOILovq1;
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

On Wed, Jun 09, 2021 at 09:11:18AM +0200, Lukasz Majczak wrote:

> I'm sorry I was on vacation last week - do you still need the requested debugs?

If the patch here:

  https://lkml.kernel.org/r/YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net

does not fix things for you (don't think it actually will), then yes,
please send me the information requested.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMBrqDI0Oxj9%2BCr/%40hirez.programming.kicks-ass.net.
