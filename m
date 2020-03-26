Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6N76TZQKGQEWBGX4VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EB3194A9F
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 22:34:50 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id t17sf5391477pjr.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 14:34:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585258489; cv=pass;
        d=google.com; s=arc-20160816;
        b=GVGMVjnd/peu3bBeR56NkHju79Ys3lqHugJWbyAuQIF8lDtlmXNbSGbV3Fkhoi0d2H
         3SLfabj7UoEMkFUot2X2etNNSOTt/B3PcH69c0n37n+58NAtmRZBK0Y3Xfm460q19Q1y
         RwcEUE6QB3rsBs+WcFrCa7UdhB3ZFM/cAlmTGMO6f7mAM95plHXEX2OXxS2tFmRtzDnx
         Bucro/suCtnwFvH6B1BGUtVjksGEFS4BRWQQReYi6Zui177mF0BWcATXdfgralXnsROK
         9dg50sfJwcQEnFc8t5eMYhowN7399YEn7Elvv3VEz4RVYh7zpp4PBsME4tp1pQDHTxGc
         2DPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Aggm4aP1Dw2vVk5GhaiktQNDQXhrK0lYs1qMsorWTC8=;
        b=z7RgeYDibCI0JPpXQ6isd1eenIL19PKktWvAPfryDxpIvaRDW83DJKYt/CtR/MiGKs
         17t+q7ubFxA18NjZg8XC5DIdnaojMWwHTl9Mv41M01X9fyh8Wdzb2CIUy14QQXPCSZBP
         RKAblSf3gw+O8BJvVf0DuDS8DgQ8SauuJwb9OQKbvvye3PquWqD0h6KTnnt5QSEWuLnJ
         5WVizyHbX8GzTS6QoDshKOoZD2qSFwRxXcvZGVtpOoJRgKJEidWd3YPDcdd86RAUIu5E
         FItMluXPU7rxptIGmJWrUh71JmwRoTcla+HcXmPadCZEhpwPRzhstWzNGjVNWgheWJs7
         gDog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nCHvi1Li;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Aggm4aP1Dw2vVk5GhaiktQNDQXhrK0lYs1qMsorWTC8=;
        b=C8wP+5vJi/teIk5LA3BRZy27tht+cbjRJhYre558PSs7PhUqP0w0V+fXeqYfpkzOaN
         Lo0LQ6qnmLQBRfRa1AcoPX9Ksluml1DPbRL4BtFq9TAObvc6hAXXhTnNtuJICHUUReIb
         yjBG6KSBrKsLFtCvj99Ev/OdMZiKMav2DDTcacG6S5Ay+bZ4zB/EdysggPqPdvWzIwwP
         h61pj0u8DKvp+IcSETHyBP3KfPOiSR6abQe739qGl+XtNUfVOXx4IBmw68FyDYKY0ps9
         YDt1TkG/AR6tLnV7O3MGMqx7Z7UM6fvTMvdObJi6sEXxzgAEXdKzXcD0vEkQmeNRK7iq
         UGdg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Aggm4aP1Dw2vVk5GhaiktQNDQXhrK0lYs1qMsorWTC8=;
        b=htCy4xE0b9ozs5Z65Q6MYtnv4iOwaqQrmPUw153vyGyuHxwsXPTaeuAOvKH+loOZp1
         K8nLG9/j0gyEgLfirWhoCIvYRdQymopr5EiwQfdpGxAU1ijP0ouiA+jmwgkiMB0vWSFy
         Y+csmBgVgTrxsn2INC5i65aXJ4x/qXyEkiHlXTYQr1fMUxBjHh7CSrWlsw/1QQGL7OLH
         wFI+l5+MuQk3nfNr7jPF4M7NUn0Ewl8jWshayIvIFz43jt13yDSJh3CeVx4QLsgsmF8m
         IpOsghCw0LO1GLRcybNkcnKFm63uy0+N0u0K4DhvuuyqgnOGpaouJSfZdKXq8rKtsjU+
         rJ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Aggm4aP1Dw2vVk5GhaiktQNDQXhrK0lYs1qMsorWTC8=;
        b=DZFw3E0FSAkoS3LGPQRaMK413BZnmGs0u2cCR4BN7Xy8+19cOJ2/Os8IGwenhoaOUg
         4k0fazqkukh8WSQJ+NBo7Z7cH6Ytc3MEYGAwd9Li0FYFpsrN+UKcYtBzuvz07aQ11+ql
         nQKKe46Sj4d5JNTDPcd9X7hAg04QPmWt+9+BhD7UdQjtCGmdzmN1JAYVVM0srZLGqeR2
         IPffqxrUoup7IrQWbrElZOYHt/3NwVpkdcskKFf8Y9Skz83pME+pUHRk3OCGm1pLUS5s
         bJOytbZdMqJCNmSPfFNCo8uDBAp69lAE7BhQ+EHNJewdtQ4y4rjVExAiCoI3ojhtd79R
         y28w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3boY9O4Lv+WaLO7C/HFpfw9n7SYaaokVORvOmJRkDTMhyfGPh6
	QwS2s6c96LPlf2MCji2OcjQ=
X-Google-Smtp-Source: ADFU+vuoE+KH4IS3ykOtg9tKAu1p6hb54W9Ulx6+RLj8NgUsTtWwGD8ujIuinVkFBjkNRzcmoJxVJQ==
X-Received: by 2002:a65:53c5:: with SMTP id z5mr11167935pgr.0.1585258489532;
        Thu, 26 Mar 2020 14:34:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:34cb:: with SMTP id b194ls4518213pga.1.gmail; Thu, 26
 Mar 2020 14:34:48 -0700 (PDT)
X-Received: by 2002:aa7:8645:: with SMTP id a5mr11062438pfo.74.1585258488818;
        Thu, 26 Mar 2020 14:34:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585258488; cv=none;
        d=google.com; s=arc-20160816;
        b=qOoyfcSU6Y5B7D7I+OWTwN6IIlLM3Tm9kFScuOjD3mDSB9YYOmUwsQ1F8sEFUYEfuC
         RY/24LcKevgEbsZHqE0PvQCIXDQnSI99LfrUzK1h1k29q/FF4dZUKPWQhgXDI8ljlLWG
         Vc+TtTPiGoCusQFAy4TKWaWZE6CDpKVk/jg3xF20pXHIuc8qgThV4jGXhR1xmixk+0Gq
         79jx4L1QCucGXY9mhmGPZW77d7X+vsF3P5CIJ3bfjmyNrV4msXayGhbL/pibr+vsndmp
         jD45zoql15nzT/yPhuJLscseU/4xENymIlwUJH3Ua8gWHod7kCGQPr+N/tT7igBl0wsu
         amZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=L7KjE8BYPTcZLDCq97CWYYuDqmaiTRHZ/8n160jP2as=;
        b=pzrUAJ/Hiz4EX5pBBLxDOPN0XJ675VBd0wsCcE8dFdoxhyXZB8OTCi4cE97PrMSgeB
         kHPLTQRPIKkOam8eLH8g2uQ7hF/j3CaXBeTx968m2y++B0zsHX8iToKrfg8TD+BJ/mPM
         oEwUnZxcT6ELRfG2wJ2+Z3HMWRMoKPYnTjK/vXuRRTwNIHp8FeVajMpPZk6KZg6dhO1S
         tU6UfdFZucTonJ/niPmHTMDOrOHMZjRT2pNIHF4owL5tarW7AsJTlZImS3izaltgpvjb
         NYVi03FRs3Y9YsjWiRtwfruLlwPWJNBrZpgmm6Qn++NUzZjuUgHz+YRD0wGlyR2KxUvw
         GZXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nCHvi1Li;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id c125si259791pga.5.2020.03.26.14.34.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 14:34:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id l23so7621294otf.3
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 14:34:48 -0700 (PDT)
X-Received: by 2002:a05:6830:1e93:: with SMTP id n19mr8519892otr.153.1585258487962;
        Thu, 26 Mar 2020 14:34:47 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v21sm935358oic.4.2020.03.26.14.34.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Mar 2020 14:34:47 -0700 (PDT)
Date: Thu, 26 Mar 2020 14:34:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Ingo Molnar <mingo@redhat.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] tracing: Use address-of operator on section symbols
Message-ID: <20200326213444.GA390@ubuntu-m2-xlarge-x86>
References: <20200220051011.26113-1-natechancellor@gmail.com>
 <20200319020004.GB8292@ubuntu-m2-xlarge-x86>
 <20200319103312.070b4246@gandalf.local.home>
 <20200326194652.GA29213@ubuntu-m2-xlarge-x86>
 <20200326173152.06ef57d5@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200326173152.06ef57d5@gandalf.local.home>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nCHvi1Li;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Mar 26, 2020 at 05:31:52PM -0400, Steven Rostedt wrote:
> On Thu, 26 Mar 2020 12:46:52 -0700
> Nathan Chancellor <natechancellor@gmail.com> wrote:
> 
> > On Thu, Mar 19, 2020 at 10:33:12AM -0400, Steven Rostedt wrote:
> > > On Wed, 18 Mar 2020 19:00:04 -0700
> > > Nathan Chancellor <natechancellor@gmail.com> wrote:
> > >   
> > > > Gentle ping for review/acceptance.  
> > > 
> > > Hmm, my local patchwork had this patch rejected. I'll go and apply it, run
> > > some tests and see if it works. Perhaps I meant to reject v1 and
> > > accidentally rejected v2 :-/
> > > 
> > > Thanks for the ping!
> > > 
> > > -- Steve  
> > 
> > Hi Steve,
> > 
> > Did you ever get around to running any tests? If so, were there any
> > issues? This warning is one of two remaining across several different
> > configurations so I sent the patch to turn on the warning and I want
> > to make sure this gets picked up at some point:
> > 
> > https://lore.kernel.org/lkml/20200326194155.29107-1-natechancellor@gmail.com/
> > 
> > If you have not had time, totally fine, I just want to make sure it does
> > not fall through the cracks again :)
> > 
> 
> I have applied it to my queue. But the code I have in with it failed my
> tests, and I'm just about to kick off another round (I believe I fixed
> everything). And hopefully if it all passes, I can get it out to my
> linux-next branch by tomorrow.
> 
> -- Steve

Awesome, thank you for the quick reply and keeping me in the loop!

Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326213444.GA390%40ubuntu-m2-xlarge-x86.
