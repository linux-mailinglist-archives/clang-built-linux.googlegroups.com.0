Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQXOQT5QKGQE5RWMAXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2625F26AFEE
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 23:50:59 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id o14sf3144171qve.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:50:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600206658; cv=pass;
        d=google.com; s=arc-20160816;
        b=bv6ZpUSohzDyfx8tN/9OTLHBbolf7/2e5wCe8rm3seCXNJWB1dgWhkiufoIB7uxEoV
         E9Clfe3p1cSJYcVLmWvU1h02SB+MhEbCxD0DC0d4rKxahQ0MJwhzF3fTT8MGucdDjiNp
         w3OVon/lB4sA2qsmlzmP3YYPk/sO0+ePTNFODhwp7CXvaWLDGZViiHJRxSKsGZ5jNpsl
         WrJwo5wkD62RRN3IAYhSVca35cGu2Jg0OZxDA4vgkuwGVwEIfvmI6htQxjz+w2vnOEEu
         9dCZunmUyzlTftcfxm/50DCXdZGiJR7hjdA4wJes4OQQDaGbjocyEpZYrlaMa7I1gIV5
         kmhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=bCS6i+VJET4VsGhQ1hRwAPhrNkZmRP8GNcblcu7VgP4=;
        b=Uerg3pLLZA4IOy2bDBnt2ohQLyLDe63L7cHmNkxUqc1bctu9YQnD0/mJEtN7iEx+aq
         9CxpnVOJnBpM9cvalH8qzBm+qnkD6XBIInX2VmfDYcvBtZAXJN0br+JUuzshqduxefYC
         xuz/6/YxH9EYBjGI57qictifmxxiE8i2jdauyZkrtKjbFQXTuQJ0GdSduHW8kKq614nc
         z2AHzn368zUCTfWz1ltdgf48X00wB0rPeyRwtlHEP5C4euLkW3UcyIOu0B97DXN/WcH1
         5NdHUZ72iUrwBedqaMWM4VxFZuWYQeiy2T1KPqDwaMD3v0sQ/EJfQBRZeO29lO5mk+GP
         T+5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JMx5zfQ9;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bCS6i+VJET4VsGhQ1hRwAPhrNkZmRP8GNcblcu7VgP4=;
        b=vHD90ynnawK7uXgMh7j4LHnBQpFStPyXU8vwTEbX6JFIyWGBeZXCZuu3bcwJF7yTvc
         QnpQNb3kWGwgOIYvSp0GtgRwFVciTfMSZPfeKsPyEdLXbvMi8fxlGdPonQQVT5Qak8wq
         H+HZY1/6sIh9OhKyrMXrTlyCEp50lEcWi9Hr26HcFoj9XjU98pZVu7b7hlbVX7is86DX
         AGbhg9+krav/hS1qUg3bsJ9B3zpdXi/Ti+NVJxU5FLAfF2rWVeJW8BLJ8mRLLRKbnzcS
         e54yHQJCXm+22nmiFbUy/k5apSJdMle1j0Cbka0FdWszCh5c/SjwNHRqpr/p0ZcCVDiu
         FTrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bCS6i+VJET4VsGhQ1hRwAPhrNkZmRP8GNcblcu7VgP4=;
        b=JufDdJ2Vm0TsWOyrVbjgeFVmCQ1swNGInZGW0UHmrRAD9afKdPV9m9F486R8/O2ioz
         Zs2UJJLWh9Ko64gOJFH7Ba1aLH/7gew/jymO/CRo7fk+8APmaajYm+eCDXn0hgwbbakf
         Fo/hiuAc0oRxz2QpxOg1hVrWi+khU99JcmUg/j/gDUyESd5HNeNcjBvYMQpoUWl4CUXJ
         ciL0C+3hlGvvtTZrspMSIeW91p/u7qzFYc+zslwUFzQ+0/I+gOqHY52bTMAcPP56RKBW
         I3NzC9/Z3CiaW/ZDZ/zF8Fcu+dYhA/N51bJe/gppYnDbPmld+e7i6axd9LLBW7FwsrgC
         bgiQ==
X-Gm-Message-State: AOAM533QiaB/ym+/ADvx9EgP/xEmnBNVrd8nVYoeSJLQJnvB5ogNNDz4
	HRG72Fu2dy4iBKAiUFXRXGc=
X-Google-Smtp-Source: ABdhPJy+dOLxQ7w+XY+NwTC5tooACSr8mGZ3U4CKaZKnQqgZ7QgarbCbG37C36F3RRaONF27+F+ejw==
X-Received: by 2002:ae9:e30f:: with SMTP id v15mr3316623qkf.132.1600206658212;
        Tue, 15 Sep 2020 14:50:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e90:: with SMTP id 16ls153049qtp.11.gmail; Tue, 15 Sep
 2020 14:50:57 -0700 (PDT)
X-Received: by 2002:ac8:1b57:: with SMTP id p23mr19997836qtk.180.1600206657036;
        Tue, 15 Sep 2020 14:50:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600206657; cv=none;
        d=google.com; s=arc-20160816;
        b=cfQlZ27th4OZ4L5RwQv4VnkfIjgJ8qkoWiKDfVVqPQGdfSL3fDbhu2N3ahvxFIO1U4
         ZnGpe1qdut9bxNq7Q3KK15ci5/Sl5ehaIN0gXccLkwf9KUDK4ENMPpavAj7OVFfxovoX
         bUYBDlgkQUIXSYah90xg3d2OyV+BGeMXspXdIA8Sho9EGo9H+MmuuLsOyNBL1F7BQ6fQ
         5KebHJfHnX03k0PDSRvVec24siY171BGSJhMKYtETI7Ok17EB/g/Nnr9w7f0eAUWYJsm
         vR/VWTb6qAay/dOVVgik2KgkElHyJyTfdXsZE7Jht7MAq1ZfArfm99iwcPSLm70n3hSG
         mbgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=Zss3uHpc3ttf17gwYIy/82ETb9atEX8U54o98v0HqrI=;
        b=d/2UBsWfc3zPgZKWq6FXG+2jUBteRucaws5+iJ/aeVZS4VKFwmmPapAdZw4sZCL+yQ
         mPNJaBVB3MRNCWaP/ui2eLXk8LyYJusFuorTI5b/elu0zUxrRZcPpgm1vF8q9PYZfOFa
         NBsXXHGVrfdr8r1Zcq8ywzIyyOIn+cbeiXUnzRsqFj/1bRZcXxHtYQXq3pzLuRkvI2ze
         BjkvgzjvZ3McW7R09g611aDMzkF2gU4tVhFouBLpWObhoou7vNNVtlgmlNBoXK/32jI1
         0Ctf4yYJ3O/230q7lsCV7nJXxyokRGgDD1ZpUdp0LQIlq/DgCWN/i4KXDXUGxFRZuJ5j
         BryQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JMx5zfQ9;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id q5si826506qkc.2.2020.09.15.14.50.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:50:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Received: by mail-qk1-x732.google.com with SMTP id d20so6005731qka.5
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 14:50:56 -0700 (PDT)
X-Received: by 2002:a05:620a:a45:: with SMTP id j5mr20266791qka.367.1600206656635;
        Tue, 15 Sep 2020 14:50:56 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id m24sm9337458qtn.59.2020.09.15.14.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 14:50:56 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 15 Sep 2020 17:50:54 -0400
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Marco Elver <elver@google.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200915215054.GA1104608@rani.riverdale.lan>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200915204912.GA14436@zn.tnic>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JMx5zfQ9;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::732
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Sep 15, 2020 at 10:49:12PM +0200, Borislav Petkov wrote:
> 
> (Btw, clang doesn't need to add that "xor %eax,%eax" - panic() should not be
>  returning, ever. :-))
> 

I think this is because panic() is varargs, and clang doesn't support
gcc's -mskip-rax-setup. The normal ABI requires the caller to set RAX to
the number of arguments in vector registers.

https://patchwork.ozlabs.org/project/gcc/patch/20141218131150.GA32638@intel.com/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915215054.GA1104608%40rani.riverdale.lan.
