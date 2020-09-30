Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBG7Q2L5QKGQEX254ADI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E7127EFB4
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:53:47 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id u5sf68104wme.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:53:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601484827; cv=pass;
        d=google.com; s=arc-20160816;
        b=X8J0+kWJQs9iEH0YQ2/hbXosZnieYq1weAM1jZ37m8M/3D/ni27TriBzITwos6Qfjo
         3GS5KqQh4o2ljGBIaIKOhiqBZZ+Ve/Ygii+i9slKRejNB+BNFz06bZG0fXSJ/3bDmPkC
         m+jLY1E0BQKH9Hl4z56EWX57EzqUr3Di22cBxu3cDOzhZknPUJyq3AzFBM6l2CNYvco5
         xGiNFOPh03Sl39YdWAC1GGFK2YOmjDKdd9z9KovK0cGkwrF2tWcG5MJ17f0tI2aAFEtv
         a/nwJ1av5YZPWFTIfu1CZ+ThKfK4F9EjM6rZEbCNTIZESQT4e4tauf0bq+bnJwhDfX2N
         bpgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=Hd1GnyaD8bjcJcBg5rFuN+yBaZN7wz0H52lYMt2FHW0=;
        b=NRZHLxTyaeMr4M8Xlj11Xo76xg7sz7fS9KZBmN86L71LW6qkuC1etAkW52hmqko4gU
         wkHrPeEGgFcu1BwmX5kf2t2oLxoTVIzFcQVoHTbiOnV4neeEH7up/4AuBS8Vy/iX0rA/
         jHLOAlzFHzDjyVhIWo+VlEr3MKBoXOBMLZSD5mDXuQ12n0Yp2NkQkTyKr6Ipt2bBqhGB
         /pndrGvsTwriSWMEjYbfSsljXnyQUGP1dqnrgO6F9sJwD6im5Nv0t4754Y4x0Kp1keRu
         FC4QcgjUK6KfZNAHOrxwc1zRqQFf5nrDV33hazjar1DesjJYBKciW7TcczxMFqds9hk0
         9gdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eQkWDYHV;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hd1GnyaD8bjcJcBg5rFuN+yBaZN7wz0H52lYMt2FHW0=;
        b=PRqnx3H3yKruXhtdDAvDNTgeDjtG2kvUqchm9/Z+GMM7CvFz7Ne8w2AjFEaLl03Boy
         HOpATCHE8Hug5cF4CmWrRtScd+d4i3qWPKepvzJ2A5iu2P8AwbjxcSmC9ZtH0g5CubYQ
         MbOmCBD8ZWuLVAc6+M50YspySClI3Etyr8ixR2PJyEYcrb5NI/ndMUGRuBtSIq1GFZve
         agTgLts/l/Y1etOi2sPR1DyZm77llIcHXTGWDaNzEr+xR61kcyccyaecLjzrn3QZIlSA
         edqPTOoATDYbw2S1fQjFmRV47i0ew5s74vG3SfbuSoIz3ci1VURSOjaJGQwFpG8UdKIL
         xv0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hd1GnyaD8bjcJcBg5rFuN+yBaZN7wz0H52lYMt2FHW0=;
        b=oWXy5J4bv9u2etFXiaG3pqWTmOHDd7cSiiByQ264lQSVzrzcNx+NwjuN1ZmeeVD1Te
         GQyPrI6BSm5SIXGd82D18DIyI+mYQhiV4vWCXq51L7k1dMJ9sRGu40hh4Y7opFm3DKxy
         7rGptw0kLdYaYeYoQaQONFYhZCl/oygByOyJ3ngdKib+wna4l7OyLoYI5yI6h8zFKCen
         bH+ykKY/zCUkBKx26ocAG4m8Jf+gmmQrV7TkLaUtGO/ntJ09DNrYZsrHbVLE5E33ct86
         6yVk9GaAsk2zZXPy48NbU4DMHRYZ8HmWrG/hzOt6kelS59FAOQtGA6hrFzOTQrZrwwKK
         75/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hd1GnyaD8bjcJcBg5rFuN+yBaZN7wz0H52lYMt2FHW0=;
        b=Jg0cxKf+LWTekIwj8iiTldxzqtgMCsWLLUcxCfy7MpG+Sy7pUdsCcK/ngWdV+tXaro
         i/jtacbxUaEYKlxaEjD4XVG4J9ttnuiD+VnPVGVXITcF6ekU0kCYPy+xvC8peQc0KuTN
         Q8aGdW/7Kjk/VOJikUkM79zFSTRBljQuyLkl9blzXUi03CdABawtmGbCt376R0qb/Bwy
         w1J/G4RbPHlaw0oWVAgp/jO+VMDaz26In5Yeh1XWANUzoUfGfvbH+7B78LAPEtBh8ad3
         /6DsAmCTaymDWkOf5ZFVQMqluDV3qnECs0vn3T62ixRI5hDm5FUM6FTRxAxun6mSUwtL
         RQ1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dd5OhQQxZtlS1iYXHS22y32tCrW72/l1Qg2iotAaag9ZicrPI
	48f6s2DVoMib3sLLPo9CIIc=
X-Google-Smtp-Source: ABdhPJxUKurVKADJ2Wi3xOn913sT4e1XzLuArjXWLChLfh42msYEc0vBsTUcpERNvlK5rkjfjdbKFg==
X-Received: by 2002:adf:8342:: with SMTP id 60mr4547851wrd.158.1601484827352;
        Wed, 30 Sep 2020 09:53:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:428e:: with SMTP id k14ls1183839wrq.0.gmail; Wed, 30 Sep
 2020 09:53:46 -0700 (PDT)
X-Received: by 2002:a5d:460c:: with SMTP id t12mr4177600wrq.225.1601484826316;
        Wed, 30 Sep 2020 09:53:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601484826; cv=none;
        d=google.com; s=arc-20160816;
        b=n9aCsejBO/JJnp4LjRzCECezUZZd+sVSTk/FsrDSk5OOtja4XEu/+4V+jes2UrRxtY
         hbl4osqdzpK0nCXJtYjBKkE0GS3Ugh8rq9WcJOyqpjPe8yPJAWCyOJC6letFy98fZI2a
         x/pt3My55omwVgNjvTK+yAuWvNAYvpk37PkI+93OXtketMpJnril52lC9l8b983LhJtH
         5sptx6U4j3hXJTSR0+u/zS6MggrAF0WwgDjt2bSWK6SjzIiy8TRlfKPezqUR+oHLqKiJ
         uCOzQBMKFc4qpyHBLcP4eKaDZBPBNQZfQ0H6Ghw7uSEY04xFeWA3+crYnQLZhN41qNox
         5U+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=2ux3ZwoOcELXRpM8fj0VwKjV3oJw+0s13Z8VXyw/i0U=;
        b=Z819ec+1kc57zDUikK01p36aqgDqe/une2tZ5yHM/UJE8xxQ9PoCmsSPBQwjX7pDny
         J2J+4EgH3JnZZktKO/tgGw6xjXYXzqPjQqru66LKMhkpGTrPj8ihZu9N3Dwsiy/v97IE
         SPUPI4TLL2O8kr0RL08DxVGM6uECwIV/tpNUZp+pDI1xbIWsIIlGCDwTwfnHpfqH/PvI
         7x2aeAX6AQRLkkQXgubvHERmWqZPcJGA2pTZspvbe6g43ujtMBdwSAXp5sC6N93S5szF
         1UrbYkXwdiNVV1BjhCpFlGSPgZHBrCEbH66jwHJeERMkzL9y314TMpvrqt2JAriLItHq
         MrYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eQkWDYHV;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id z11si94872wrp.4.2020.09.30.09.53.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:53:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id p9so3831023ejf.6
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 09:53:46 -0700 (PDT)
X-Received: by 2002:a17:906:275b:: with SMTP id a27mr3983359ejd.190.1601484825856;
        Wed, 30 Sep 2020 09:53:45 -0700 (PDT)
Received: from felia ([2001:16b8:2d6f:5600:7072:b735:b671:fb4f])
        by smtp.gmail.com with ESMTPSA id pv28sm2021553ejb.120.2020.09.30.09.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 09:53:45 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Wed, 30 Sep 2020 18:53:37 +0200 (CEST)
X-X-Sender: lukas@felia
To: Thomas Gleixner <tglx@linutronix.de>
cc: Peter Zijlstra <peterz@infradead.org>, 
    Lukas Bulwahn <lukas.bulwahn@gmail.com>, Balbir Singh <sblbir@amazon.com>, 
    Dave Hansen <dave.hansen@linux.intel.com>, 
    Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, 
    Borislav Petkov <bp@alien8.de>, x86@kernel.org, 
    "H. Peter Anvin" <hpa@zytor.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
    clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
    linux-safety@lists.elisa.tech
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars
 in enable_l1d_flush_for_task()
In-Reply-To: <87eemji887.fsf@nanos.tec.linutronix.de>
Message-ID: <alpine.DEB.2.21.2009301848050.21555@felia>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com> <20200929071211.GJ2628@hirez.programming.kicks-ass.net> <20200929083709.GC2651@hirez.programming.kicks-ass.net> <87eemji887.fsf@nanos.tec.linutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eQkWDYHV;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On Wed, 30 Sep 2020, Thomas Gleixner wrote:

> On Tue, Sep 29 2020 at 10:37, Peter Zijlstra wrote:
> > Here, I fixed it..
> 
> Well, no. What Balbir is trying to do here is to establish whether a
> task runs on a !SMT core. sched_smt_active() is system wide, but their
> setup is to have a bunch of SMT enabled cores and cores where SMT is off
> because the sibling is offlined. They affine these processes to non SMT
> cores and the check there validates that before it enabled that flush
> thingy.
> 
> Of course this is best effort voodoo because if all CPUs in the mask are
> offlined then the task is moved to a SMT enabled one where L1D flush is
> useless. Though offlining their workhorse CPUs is probably not the daily
> business for obvious raisins.
>

Thanks, Thomas.

So, I will keep the semantics as-is, clean up the patch with 
preempt_{dis,en}able() and send out a v2.

Lukas 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2009301848050.21555%40felia.
