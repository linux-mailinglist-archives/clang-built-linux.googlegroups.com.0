Return-Path: <clang-built-linux+bncBDH7RNXZVMORBK4HUPUQKGQE4ZVB6HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id ED72167434
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 19:30:20 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id n9sf2680523pgq.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 10:30:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562952619; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqq4YLBb2hxT+OAHOyEqqBH7M7RiOf3jaclxLWg1g48fXckr9YFYbZMQlIeSIy/pds
         0O6JKN7uu2PN6if6myv8q5SOQLpze+b2w++GsmFH/Jx48GPIf/Dsdcej8orHd7sjZpkG
         XBi+8LVTEjR7RR9HvzOfakoUAtsUPXEeUquoi5QYoN2zB10rnx2Q2ww9T6bJzZYpMR9X
         YYhPh+3vUXX0u804UqgJRnj67PeM6UKKVeUwTLm98F2FrJfQWO99c8mphe6k4Z0lt3X8
         FEqeThTwogcnyaSdS4u/ieJ2l4cq9WMuJZMmh9R/PmnbMRG+T355c9AfK07052E9G1x3
         P1vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :dkim-signature;
        bh=VqXGivd8MrJY+Z1l6HzQAxdHlo4dIgsF3iqPu/SkkDw=;
        b=S9uf45e5PquI/t3UbU9GW7i/yRlbWiR5aIZWYoDeSNYOn8NZbqBiCp0VFiEag62s8R
         koPPamBeIdZiO8Y7CdXYMaJFueJXfF66JtvV+lNCgJAK6ge8YsEHhkU8m7JkMbU4RwB0
         JUvhCwb8q6vBYnoKWzHMpLxZbc6BCWd+8G5dpO4ZDTZ6GMI1APduoAqxOhLArQH6GCJL
         vbRugJW9SlP3wFpyBbwxntEnkItSbNaN40+SrdF7BpAU5CUhEHeRMaqRUvFkfIzucca6
         fP1Wau1JQFoHqpkiScEoUsnFI05u4Jbe/ptn+VDJxgw4aX0sN93Xz0p9145e4Q62m3zY
         FMFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WHv3WsVc;
       spf=pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=rientjes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VqXGivd8MrJY+Z1l6HzQAxdHlo4dIgsF3iqPu/SkkDw=;
        b=nu3fMFYps6Vm00o8iaEf6DD1jdRZpcHHVa2ofNGn9KtoFZLTCdY88G/4K7PyOXewNC
         KqdPjmzfLCFA27DzMNz+5lvu1FzxMNi4G7YGvLwugKldqGvG0tAVdEvuyhOU3uDCQO5e
         UToGiNzG5UNaqshLqY4/2DRZDwYWpoRuY1MyggDp4Aag2KcKvDKpYp9wwutNfbfxjIWr
         ysfY6fQJwyxwKsDtcgn9DWDq2B+cQFg8F21vu98UD2DFJah15UBFaSuYoLvmLwMCPZSR
         gHT2qkEVhe1QUOuuBLJ4M0uESkFtgVAftoXKRf26LLhnTpxRv4m/gafZPBUryNl9MbMb
         Nsrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VqXGivd8MrJY+Z1l6HzQAxdHlo4dIgsF3iqPu/SkkDw=;
        b=GL+IvKgOIZRoTkpq33+2KmiIJQN4sdXyLLdzsZdhzRSW9tCAh4ZXFEScfZ+yZF2goX
         gFYShhHIfF+Mfeuywg0Y5EeLqyRuTOjBKBlhZDvV/i/RHFPGQCBNtnbl4Bk6vSEgpwn4
         ycvjl47rFmpsn5INJ59eWK7zhKE6BZfQBko8lvlZTHtQyLHnfCVjVj1Xyjl2uH/WwN8d
         MNBm2DCdrIYGT1qbTm4p3IMwCCLQBSEpsgoEEtE1hDqPtPnp+K+OqWWnxHJCClPfWqqv
         Be12qHmlWbdNJrhdUdNl1NpdatmAQfbxCGlLgsNXyrxe3rYqe3JZc3cTCHSyO4jlOwFY
         +q1g==
X-Gm-Message-State: APjAAAVr80KmquaxImxa+gYPp2LWBgV90senyDrlLSdpahdw8DfD28F+
	2om6g3icO9/VJRdWmkQTZDE=
X-Google-Smtp-Source: APXvYqxbUnmoWzJYXH9SGaWnrORAv0+89Cogrz0SEwhuYSsNfhKvz3e4aBsjseKVg4zoorlRRgmZtw==
X-Received: by 2002:a63:5610:: with SMTP id k16mr12135317pgb.335.1562952619399;
        Fri, 12 Jul 2019 10:30:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3787:: with SMTP id v7ls3629700pjb.4.canary-gmail;
 Fri, 12 Jul 2019 10:30:19 -0700 (PDT)
X-Received: by 2002:a17:90a:9a95:: with SMTP id e21mr12866419pjp.98.1562952619064;
        Fri, 12 Jul 2019 10:30:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562952619; cv=none;
        d=google.com; s=arc-20160816;
        b=J67SZhGffsSY7hQt92pYEv3aw09ZnyFSD9fIZygyptWYY0qQPD1/eNy+vHvij+F71Q
         KMD/rknbPEJ4oPvH/+G6u5f2kidOiUiMrTU0SVMoW652dn80WBcjUaQD0b/M9g0tVlXs
         hGPVumPi6DOlGLxTPLaPChEKLM3/d+r8VyBvoaxUtwF45ogCVPoLIEbmpIjq2A8NWJkM
         s1oLHee+PUsq/TRQk7i3v54eigCkY9x6OEaFMsio4lU2aMQSQRzxiapZkz4YG4gy+HSA
         yQqSG0kbHEFF7mN8Qwz2bfcoCmWt2NxVNQFVtQM1LoadQ9uApTrdM6CbLNNDNdG8vOP1
         djBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=fliyxzDfAGBMmN1oXsqyomaZR3XENMW0vd2GXXQScuA=;
        b=RRTuqyMe18UBFNGlN3dWMT+eg/JAN6hHzZ9sMd3vDSVmOhDwLgfgjFMKqoyuYSrn/Y
         a/+Lv3Gmqb7S3vRzTX0lcnj96cgkNRLFd4wrqwEAtYHuEPAe7z8MxoqjZG44YeOk60Cw
         7BmA2WY4bMJe27tXOxNj5VDbfEr1Y69n6uHe0Fw2Q5rlHqSwTZAsD52rvKyWm2tXwCj9
         mrhn3eNF61m6oaeZiPvROFEDF7q6SlCQqNbupbazkzBFNkzKlfoWMOKsYGkL0+kiXQkO
         znZRha9ftKpdje+wjBuCOpXSFfI5O4LycZIWW0+VNMGzu5YOSAD28d2/vVosth+HPqLi
         1maw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WHv3WsVc;
       spf=pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=rientjes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id cm10si459143plb.0.2019.07.12.10.30.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:30:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id o13so4811540pgp.12
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 10:30:19 -0700 (PDT)
X-Received: by 2002:a17:90a:360b:: with SMTP id s11mr13024964pjb.51.1562952618502;
        Fri, 12 Jul 2019 10:30:18 -0700 (PDT)
Received: from [2620:15c:17:3:3a5:23a7:5e32:4598] ([2620:15c:17:3:3a5:23a7:5e32:4598])
        by smtp.gmail.com with ESMTPSA id v5sm8405051pgq.66.2019.07.12.10.30.17
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 12 Jul 2019 10:30:17 -0700 (PDT)
Date: Fri, 12 Jul 2019 10:30:17 -0700 (PDT)
From: "'David Rientjes' via Clang Built Linux" <clang-built-linux@googlegroups.com>
X-X-Sender: rientjes@chino.kir.corp.google.com
To: Arnd Bergmann <arnd@arndb.de>
cc: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, 
    Joonsoo Kim <iamjoonsoo.kim@lge.com>, 
    Andrew Morton <akpm@linux-foundation.org>, 
    Stephen Rothwell <sfr@canb.auug.org.au>, Roman Gushchin <guro@fb.com>, 
    Shakeel Butt <shakeelb@google.com>, 
    Vladimir Davydov <vdavydov.dev@gmail.com>, 
    Andrey Konovalov <andreyknvl@google.com>, linux-mm@kvack.org, 
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] slab: work around clang bug #42570
In-Reply-To: <20190712090455.266021-1-arnd@arndb.de>
Message-ID: <alpine.DEB.2.21.1907121029590.128881@chino.kir.corp.google.com>
References: <20190712090455.266021-1-arnd@arndb.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rientjes@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WHv3WsVc;       spf=pass
 (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=rientjes@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: David Rientjes <rientjes@google.com>
Reply-To: David Rientjes <rientjes@google.com>
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

On Fri, 12 Jul 2019, Arnd Bergmann wrote:

> Clang gets rather confused about two variables in the same special
> section when one of them is not initialized, leading to an assembler
> warning later:
> 
> /tmp/slab_common-18f869.s: Assembler messages:
> /tmp/slab_common-18f869.s:7526: Warning: ignoring changed section attributes for .data..ro_after_init
> 
> Adding an initialization to kmalloc_caches is rather silly here
> but does avoid the issue.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=42570
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: David Rientjes <rientjes@google.com>

Let me followup on the clang bug as well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1907121029590.128881%40chino.kir.corp.google.com.
