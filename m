Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBUOTRWEQMGQE5H2AIKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B834A3F4778
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 11:26:41 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id c9-20020a2ea789000000b001bb60afc5e4sf4320831ljf.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 02:26:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629710801; cv=pass;
        d=google.com; s=arc-20160816;
        b=ap2EoA6YQYoTgD/RFbhuXlw+uCaPvwFFlNNM8cHaeyjy7SHUuc9SXgvn2/6LNY1ztW
         EvnKM+pZlXNQ+rmCL4GKtDLz0pBpW+R6UchRLA1wOi3tHx9ihUanRuROGyPEyINGPdJu
         +gOAYwLz7P4dBk476LZMq4ZufkBc3yhiAXNMVhoIf60GsHJxYm3qQZN+olO/gip1UdmR
         ivvJshyfZkKEoKjfXZFdgPr+SVIRDwWX8SIRqfCKTW+gC9KpblNEOMMY6ylOlcJoUXxq
         AMeC+72N6YXy5ajNpT7WcVS0ZJFV8zpI61CyGD35f5nPGsrWbpGyfalwdq9QsKawHsib
         2a7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IR+0w3Rbyv2iL1LvLXSV070VnxDyf+OcADH3h/Em7Fw=;
        b=lE88yGu0I+q+aPFQAKa1Yt3bWGUO60Id2aj4T41bevswmnqskuEyk4FpYHXqK2SvoQ
         4jZ9KuE2WE3Hb/CV3WpaTPKGbMRySCj1438gq+w9bAH6jaDXa5gcDMu688PWO5IXVSXZ
         4t3ADr085fgGipl1LXWW8bS61u2a8mi9p6KH+wj0iPGpEkly5+xIxAdOT9/8TY4c1+BC
         n6dtoCsCkVz66eVG9Z2JVP65KjpKPs651NJ+ES4enx2Q+ZVfZ7yLSNgwbf4kIbzPZQXW
         tIOcj0qJ3fYnfCoMm2sHVatw8euc8ov3akHU3od3bLpnoHO4rOEOIyxnGOnNF052gTNU
         6MMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=cZX8HM+D;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IR+0w3Rbyv2iL1LvLXSV070VnxDyf+OcADH3h/Em7Fw=;
        b=XYCW9JnRDEfdizcPNIAp7UUEVT+AY3Iy495tK874adQFX3bCfhY3PLxNJ1crgvkGqt
         96RWtaDlAIZN6l0aD7Qiqbdy8/nUH3g0ivSKMywzgvpyk/5PJ2roCn3yukv3ny5puDsi
         AWEPoOwPi6kBJbfMKjw8roh6ecGW6qwiQyWsHaGIka1eq55DO2tNrtmN2U0eEwOTjCXm
         x1Qo6aoEMcoI1gViqxe1LOQoNZSojnIBGU41S6h2Sil+gjUUlLYQjcyzT4E5DrqFO9bK
         nlZbVYj2b6Lz2VCMHTahOiDUJBveLmMK+qpu4kkqSirSbeDohetm26Itfs75R6a4pOzi
         3qUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IR+0w3Rbyv2iL1LvLXSV070VnxDyf+OcADH3h/Em7Fw=;
        b=FJNNKdu2T1R3wfwCjVmgV2YYxvZaD7VkaMAm8DL7ABR2t0U0z7PYDxh77Szu1rHGuN
         094i/b7L9k0qWmXSBrdCE0aBbL3cho6uswmqG0XQKCOMUCyeUWSgYP4aqYGZ6wLkiIdP
         SwY86H+IS+uKqgjAYaPu/02Ex+jyXMP60z09P05nPHKHGy6h79he6HNDQ4Obol2F0W/e
         M7x//QoKIjErSESYi6SVidXU7zcswhkhowbkEnPpFIrJfhwcisS41r2iqsSGNYb1iqbd
         8/FHZ7L1k+e1H6J+2G+eKLYs6DfDJuGdZoxShq1MW9FBj6J95YcLz3fKvtpeGid+Swnd
         n46g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300Kh8Gt09KpHNqi82hCTQIwfjfSL8dFb8pXOVp/Wjp41s3MUw+
	0+V8zLGyqvlVrQEHRIOZFPQ=
X-Google-Smtp-Source: ABdhPJwSkIOMhG903p1LCJsEFxcb+eTZACcb1aSYtDO+WNAlgX0H35chgn1bWv+lbpWtDlOoRO0I3w==
X-Received: by 2002:a2e:860e:: with SMTP id a14mr12969271lji.215.1629710801316;
        Mon, 23 Aug 2021 02:26:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls639485lfi.2.gmail; Mon, 23 Aug
 2021 02:26:40 -0700 (PDT)
X-Received: by 2002:ac2:51b4:: with SMTP id f20mr24235599lfk.632.1629710800158;
        Mon, 23 Aug 2021 02:26:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629710800; cv=none;
        d=google.com; s=arc-20160816;
        b=TQNKRkXSm8q2T1P5VlpfW7nMPUntIYFDTDv5Oer4xlRT4pexpzNnV8YHfvUG4tZnMD
         Au/kcO8Ij+x8554LiSf/Uinnvoth/eZ+MyIrdiQ20WSq8N0p8KONfpx4KW9E7tZBem6K
         Y/HEOi3vh+Xj2bUQE52rTQ/Wcjs3FQOcDxlqs3L6rJvISwi/I/WX+24NWQl6Sq5DCmyY
         aEbtW7EjjShFMDKhPHiG6egJgAt8AzcLp2i4yk0wEolvptJF5V1l0OiNgKPszrMyBWBZ
         11vTa+Fvdnnh6sU/5TCJQa0nkoWf2qRr6Kp/cF4WdIaiCf6+uIrIesQwVLENkNbVpnnu
         Brag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0LSCilB8QW6YMaDFbuEe9k2cmYs+dPI96xsb699qNXU=;
        b=cRNjhhiFo4hx+L0j+rFhYloMvdZOINeyjnUnIdDqX0BtWvH2uAezoFDgPjbPco1J5t
         SF5U8kgAU1uHC5Ta4kWtIhnAij/ufiN2DHsJZsBs7kw9wN9hM2Blv25OFRX1B7a2rrHm
         s8kC07jULFOjFLZS/am0DlqEUJPuZGkzxBe1AAC8tlRxsdWZeEAAgARd9FcV/Jit1w6s
         6L3rwy6wYXT03HfKdXTDl1tvyHaVUyBCTmvhpzI9tfBk6WGHBe37uknp/oCYpihEtHOp
         30H65Rrq8EuQtDEbq7tpjlbpf9rRYTo7JmBd+UKC9kDvdvFjhNdEaqk4kvXBX1sPlYlt
         UsEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=cZX8HM+D;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id p7si901378ljj.5.2021.08.23.02.26.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 02:26:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI6Dz-00CGtZ-9e; Mon, 23 Aug 2021 09:26:35 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 845CA300399;
	Mon, 23 Aug 2021 11:26:34 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 415C7202294AF; Mon, 23 Aug 2021 11:26:34 +0200 (CEST)
Date: Mon, 23 Aug 2021 11:26:34 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Chen, Rong A" <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, Will Deacon <will@kernel.org>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Valentin Schneider <Valentin.Schneider@arm.com>
Subject: Re: [kbuild-all] Re: [peterz-queue:sched/core 8/11]
 include/linux/sched.h:1722:57: warning: unused parameter 'dst'
Message-ID: <YSNpysosZE/m3Q8o@hirez.programming.kicks-ass.net>
References: <202108210940.aD3d42zA-lkp@intel.com>
 <YSNkCAyMU0tJoedT@hirez.programming.kicks-ass.net>
 <428f3e9a-a8d3-51ca-5e2e-caa50b8da3eb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <428f3e9a-a8d3-51ca-5e2e-caa50b8da3eb@intel.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=cZX8HM+D;
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

On Mon, Aug 23, 2021 at 05:16:05PM +0800, Chen, Rong A wrote:
> 
> 
> On 8/23/2021 5:02 PM, Peter Zijlstra wrote:
> > On Sat, Aug 21, 2021 at 09:20:50AM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core
> > > head:   234b8ab6476c5edd5262e2ff563de9498d60044a
> > > commit: b90ca8badbd11488e5f762346b028666808164e7 [8/11] sched: Introduce task_struct::user_cpus_ptr to track requested affinity
> > > config: i386-randconfig-a016-20210820 (attached as .config)
> > > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
> > > reproduce (this is a W=1 build):
> > 
> > Dear 0day folks; could you please blacklist me for all W=1 build output?
> > I'm 100% not interested in random compiler generated garbage.
> 
> Hi Peterz,
> 
> Got it, we'll do that for you asap.

Thanks!!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSNpysosZE/m3Q8o%40hirez.programming.kicks-ass.net.
