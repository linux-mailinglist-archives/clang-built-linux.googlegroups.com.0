Return-Path: <clang-built-linux+bncBCR5PSMFZYORBXOC2H6QKGQETGU4W3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 338762B72A0
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 00:48:47 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id y12sf16459iop.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 15:48:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605656926; cv=pass;
        d=google.com; s=arc-20160816;
        b=qOpqRD+sVBHQDBIQrSeg/QMBMpPWJelV/XsOmy4Fwmj+pDWxWAmrDi863fJxK7cbPO
         zlRHgWCLLdUAGPuXVvpPJ7qZ35b5zZ8dxKcvwGk33AibY17ftmPk83jmWuIP2ZfEYNcq
         1FsjwKFlrDWNQcbFU6B1itIdWNwg9eW/DR8Mf9kY4UfTxQfoUihbiWKnQz+LaeMGihTI
         ad8I4oprgipQ/ZKJ0t/1VaoH/ul/Oho0WxDemPHt4onlHY/bQ+ZyKuYPEuIV6/0bIi2X
         x+FbyIwW8A4azyqRcdiSx+uvI0QmOzDoG+AffrxvhmscJ0L/76+sHzW++d53D3XtoEK7
         9RVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=j7U9fnCol56r2bnyriJF0ZRLm/vYzDWPn4xm0gY92vY=;
        b=ACB4gVl9rGmSavFdUsmlJOQ3m/CZOtgSrVPwdY8u4CW9Tw55ep7HvzyJEsIuq+3AEf
         KUnY+wPghmJrqdORZE68ubnf9mkWt1k56vbXNY9YeVe9rGW+p4v4ID9d0QE2sGTeHfSk
         4e6VwiuExhgHcQvBuNyTukkyXGwwM7PslbIrvtKBF4N8El+XpGhNfwCJnj13HpAiqwDW
         bUPPmwohfXLEH3kU/2m7rqKQhs1qQwSijapk2ZqC7xwOhuSPrqqzbvy6ktFuGUkH3wh8
         a6Smn4HJZqIbpQXj9hJfvUx4Hf+dJNSfVM0q5VOdiOe9MFpMsT4gFB1Wi2L9TDq0FTpJ
         t3ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=X0uDEdFR;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j7U9fnCol56r2bnyriJF0ZRLm/vYzDWPn4xm0gY92vY=;
        b=qqksq8DlGtOONrxzZc+7jvKReSOIpnq3GJSNNYfUBm++2bZY2LH1Ld4pLnW7TKHbn9
         FJ1SJJt4ySnTXdY3XTrWLjZuXPo8L+1oS7SLNXx83Ns6v10sYjHOIXM93CQzpzEVv0Cm
         JjX9jXaxhwShPmXLBnwcknGp6p2IsdswAJHvJp7R0r1mxkjQFXIQgQn6FFGknJ5mQSnN
         O3hib9rz7EvveLb98Bq8B7h57cbijWbl39WaAC9ctH5N9IldnKIHCPObwX1l+sw4BEhC
         nytsysUoRZ5EkySbh4FTZj8hTrkx9PKup3G1gIqJFRPwPgOgVqcbPW8E8BG7p19oz84B
         kCMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j7U9fnCol56r2bnyriJF0ZRLm/vYzDWPn4xm0gY92vY=;
        b=JRem3/c8FtOPvI8mgXBpjHhsHbxvMByNG69GmOThgjjWDMRCZnRARN1nDMhg9/5B3o
         4RNuNBAy/ylhN3Nsuhgc/OMBrRk0f70oRD9b10e+wF3Q1h0AiV20l5V3RQ/5ggBRyR/3
         /3ZgEAOHbh+pWl9vDuwqNCBmh9QHWJ2CrGsKHb8SMQm08ZsHLTOQQvq/gYtKiXdT0FBJ
         TQ9BT1FRY33BLNAy87X9iUd1UXOUCHxJ3KjOaaXvfwOLN3YE9eQl59WNuI2Ikoxj+S6B
         SkphugSEeWEhrZmHx61jk1c9AjDVG748dMwGTaeMZa8013YxHServ6soFG9WFxCoqFzg
         F7KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SwoO4SxCxes7PqmLAv1DS3l9hYJ7ucw6Ahmgc6dt1Ac2cegdz
	WwJO9ZCa9ug/Tjs7JSKs6aY=
X-Google-Smtp-Source: ABdhPJxLjZTpQZhy7OuNbXi4S6tD+5BNPqpqFdSU0yjFT6auatXqfpz8QCS0yUWqpR5fczUHOIeC7Q==
X-Received: by 2002:a92:d8d0:: with SMTP id l16mr13917468ilo.29.1605656926004;
        Tue, 17 Nov 2020 15:48:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c557:: with SMTP id g23ls2193596jaj.9.gmail; Tue, 17 Nov
 2020 15:48:45 -0800 (PST)
X-Received: by 2002:a02:c482:: with SMTP id t2mr6108915jam.17.1605656925603;
        Tue, 17 Nov 2020 15:48:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605656925; cv=none;
        d=google.com; s=arc-20160816;
        b=g2LBsY58bYUiBaQ5X7Ocu2aWhHS6CsWX/32PADu0LHrDBMUgMinqidOmw4Vo7cKCVy
         chselSFY9xTEvQgQBzN2PN+rRCOch0IBJMf8wnCot2ec9VIo2RaAjzSnBNA/SBCyotb4
         4pFRNjzk78NsunZnlpKX3ew6tfTmKDfNLxU+nrl/x0q85OVT9XDE3dwSGAw0/UXAZM8C
         uHMXu6bm5KWuyjTSTpWPk5ipSTsQ1Xkki9wyAHqF/zjP2awOTEP8tGbKBOmn422rEltk
         gE83ykuEXhNjO8x2JAdtHzO2VRpTnKauBZfTdUn/kIfl3IdFwAzDVHC5Get9WW9bn27Q
         xE5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=fVDym/OQ3OtdFEYyrXMNpYWcfm38r1+Q8HuU9E6TSwM=;
        b=IDWdXx69tsNhwDFD4kIVJ1fwIx18HcvD8C1bUAgs3b5+goz5FrMrv111sbrAUHVYGW
         BlxKja6qS9b4X5G8o/VEO8E3zlg4eDYFRRGcRFwxInooDrreS5Dlkd/iaKCHMvB5RsvH
         o7h35mpFXOm9senQ0rBgymwMPAuO1hiZ9Uv1ATURh9kQl3UsLg4SDL5z9aAlp8sjPya8
         xgUOVZPtDUxuAhXldA6Ob36+vsCtgKOpng2mPFG5qskuAjYVuCS8yXR5MfPRnke7d9pK
         pkVeU2VdU86fQsJlcOqValR/0IcpFj4FhUus+c/F+GoG/ZRk8kcSyBlCFi4SkBc1kk9/
         cJfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=X0uDEdFR;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id u18si587651iow.2.2020.11.17.15.48.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 15:48:45 -0800 (PST)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4CbN1j4GPLz9sPB;
	Wed, 18 Nov 2020 10:48:41 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, clang-built-linux <clang-built-linux@googlegroups.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Subject: Re: [PATCH 2/3] Revert "lib: Revert use of fallthrough pseudo-keyword in lib/"
In-Reply-To: <20201117221629.GA4679@embeddedor>
References: <20201116043532.4032932-1-ndesaulniers@google.com> <20201116043532.4032932-3-ndesaulniers@google.com> <20201117030214.GB1340689@ubuntu-m3-large-x86> <CAKwvOdk_sphJGQarEWJLzGZWkdzO9dqmcRmys3Retw3vn2Fwag@mail.gmail.com> <20201117221629.GA4679@embeddedor>
Date: Wed, 18 Nov 2020 10:48:40 +1100
Message-ID: <87ima335pj.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=X0uDEdFR;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

"Gustavo A. R. Silva" <gustavoars@kernel.org> writes:
> On Tue, Nov 17, 2020 at 11:10:26AM -0800, Nick Desaulniers wrote:
>> On Mon, Nov 16, 2020 at 7:02 PM Nathan Chancellor
>> <natechancellor@gmail.com> wrote:
>> >
>> > On Sun, Nov 15, 2020 at 08:35:31PM -0800, Nick Desaulniers wrote:
>> > > This reverts commit 6a9dc5fd6170 ("lib: Revert use of fallthrough
>> > > pseudo-keyword in lib/")
>> 
>> Gustavo, whose tree did 6a9dc5fd6170 and df561f6688fe go up to
>
> Mine.
>
>> mainline in?  I'm not sure whether you or MPE (ppc) or someone else
>> should pick it this series?
>
> I'm happy to take this series in my tree.  I'm planing to send a
> pull-request for -rc5 with more related changes. So, I can include
> this in the same PR.

I doesn't really seem like rc5 material to me, but that's up to you.

I'd rather not take it in my tree because there's a lot of changes in
lib/ and that's not my area. I'm happy for the two powerpc patches to go
via your tree.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87ima335pj.fsf%40mpe.ellerman.id.au.
