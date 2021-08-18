Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBANF62EAMGQENTJN6SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0343F0E7D
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 01:06:43 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id y20-20020a056e020f5400b00224400d1c21sf2154901ilj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 16:06:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629328002; cv=pass;
        d=google.com; s=arc-20160816;
        b=OjRrIKGjZ4Z9qE715BxnszPY4gfdMEMdvExhWt939cZca0UF+sUGf6yeqcXV6IRT2w
         14hKFsjzzVY69FEv3tnktsMqlrycOqENgSPmLIB7JMGaf4dBH66ZJevhKelWM5AJfXbb
         MkphNWh5kQX2K1cAey+d31TKcmJNdm9w9X9aGNe7DH7ZLeN+YKNguRnarC4irsRRJuo/
         fwP9BRQWwXTrQch9BL+jt3bhZgmc0NwibxaVt5DtNUYJVaqWVEL8feL7uQEvBWwieJ9D
         ZOlhX+y8zGtUh1Bhj8UfTXz8qSzhj5kXmKH615O1HrbUGpfdjCxOHg6Ef7QoHKM+DXbz
         a4KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=v1NYvYGmrbQWxmVwhpYno9ZfTUwBHbKcpMEXsA5H5Kc=;
        b=DDeporwLvOvOzyulS7Kow2QqXe/B/8TKia9S5bkj235RJM/k2GQtb9QZLmnSaPQN/U
         HRBNuriwUQXrFqBmMtx6+Wkow20WEADgGdDsAi4TU51E75n/ivJfCGa2R9o8cRDkQCOW
         J/GoqZRtQN4zrBnecusnFp8FmMV5/PJ5VRJhIiZluf/EOIIRWxKUtVKrOIFJqTCXCnmo
         3csR4jmHYCOb+7M0ps1mgKEWljx46Djr+NPoDnzbIfEzOVrVOypUepibWVhnmvH7teDc
         g+GAmbZPC3SLRoF3YIAJUM4tUUAUcZoxqIjGrI6EERp8bN7xG49hVMTT6NyJSeVxuU+c
         rMrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QDNt5PHg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v1NYvYGmrbQWxmVwhpYno9ZfTUwBHbKcpMEXsA5H5Kc=;
        b=AIZQ0UcIRuo5NDe/ZGXWedaEyra9FHrPEWkSocKA1kCFZ8GfLNi6lVU719cpR5fo81
         hgzZK9RPpX1R/oxNBfQS6O1/G+gf4fiqYEzOMFGkoN+XxTUhQ0WCQbQ7CmQnBQJPypAW
         Wjf4ozHT4Rf0DX25RuW0WkXTd/NNSabNIbCv1ADQlnGacgfdQNm55P/0FB+fbcGRM+VO
         YDodfZjQDuyW1Pz9HWJZgmsYlT/i7IRVmC9FHqMn0mmGBcEQ+74JmrU8f5ewANdM7eET
         Ai25TulSzULM7XXpyMT7ghRBBYMKXOIPDPxtyATNn87L9EGMI7OZb2thK6s3QjjV6HQn
         CixQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v1NYvYGmrbQWxmVwhpYno9ZfTUwBHbKcpMEXsA5H5Kc=;
        b=W8UkGD4YartTy0ku+k8LPMgsCMRbk5PMqb85e1xkWToccjTU7GRyYGNSulZKUeL4dL
         02aydSsPbSylzfR4P6qWLQixHDYj1v8SpGdTDMUXcok/SCHOkfRjP77PX0bvJxM6CfQF
         UH5Hb8LOrfAGqV3uMT1cY7DwqJt3862oVMp4Jiq8TWzp4wyeMRMK+lbBm2phjHkFMKGn
         Cf3pCukGL5clRIVjV3r28Kfka5wAPrLeVqzjIv1GvIG8ON0geU3xS8z3HJubnPr+A53b
         3LyduMp61tBVFD7TS0BoWl09/M4CLbPq06zknN6JMqJnN4xSwyUibvGTsmhsMiEeoWWy
         BXkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GVzucp2bBwmlO5EngozLmSWMqzWhiOHgUUwgPexyTaqYF0m38
	RAli+vai0f8b4hIzKNPRMn0=
X-Google-Smtp-Source: ABdhPJzQRu7b+Kc4hNouU9kcbNuU8X83mOXNtOYv0188gHw4IckkEUuNvnXy/MjqlVOtlnYkgfeB4w==
X-Received: by 2002:a02:a196:: with SMTP id n22mr10207188jah.24.1629328002091;
        Wed, 18 Aug 2021 16:06:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:858f:: with SMTP id d15ls533804jai.2.gmail; Wed, 18 Aug
 2021 16:06:41 -0700 (PDT)
X-Received: by 2002:a05:6638:1495:: with SMTP id j21mr10258318jak.117.1629328001709;
        Wed, 18 Aug 2021 16:06:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629328001; cv=none;
        d=google.com; s=arc-20160816;
        b=zMRL4EQnmAY6wzuG37J7lxh0drYg6oqbNQH5FW73cD+AV7bEFVCD1xypWfLSLUZlWZ
         LZ2xqoGuw/ZuxFxNdtzu2TL+onHXrYmfbqcKbQoH1C6EQZvkiY5k2FKU1P3t9vs9+auD
         leZ1f0lGSNGwWQKxF/R2hURxmfleuuU9iFXcQuYjsaSeokHo/Uc424JuwCZSpPUqKNSz
         JIAlJCx3P3ZLS+Xfto2eOeOlwKBfl3OTAC3GN1PVXTYeY8F4P8zAE++QVXsfCAmIagkk
         bX+bMcttllK0wFKaBLIxNlihqBzYdlIgCptInPGRULvpuBJRRUp+NaA80M3a1TrW8Kic
         Vo2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6LXlTnktuLXOSEatHkAd9iidtx/DlqNXw6t+P+U3BQc=;
        b=PajBqLLpR1Sp39XP7JDwKhhTJlZVEaN7NlHLm5FRz/GBu61W0D5hG6pg/y8kF411/g
         /pR1uJk8It3pHVvQT2eUTkFDUjs+R3t21zLpOHrkUs3ji2kftJ6lCtVKWm0ORmlT2pXf
         N5WRXL+psC+zP6kk+66Z3uM3oNaDBJD+1jDKWopBku/joOQTwXZjFwcC50l0Pp8hdCsO
         8ieWZJXNJNXcRhOdDV6784dS9lDeBooIJHFa4e31gZ5n0xyX70Q6IMI3he/15jBrVnMy
         PtVHXSuAJvOHcVMh4naB2N6ExbWGLQMiBwFwuqTMDO8pNWSSHUgdsWPTnGcKghK30xa/
         fjjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QDNt5PHg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id b12si126522ile.1.2021.08.18.16.06.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 16:06:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id q2so3953185pgt.6
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 16:06:41 -0700 (PDT)
X-Received: by 2002:aa7:8242:0:b0:3e2:97eb:d6e8 with SMTP id e2-20020aa78242000000b003e297ebd6e8mr9677080pfn.66.1629328001407;
        Wed, 18 Aug 2021 16:06:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 143sm916287pfz.13.2021.08.18.16.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 16:06:40 -0700 (PDT)
Date: Wed, 18 Aug 2021 16:06:39 -0700
From: Kees Cook <keescook@chromium.org>
To: Sean Christopherson <seanjc@google.com>
Cc: linux-kernel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	kvm@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 53/63] KVM: x86: Use struct_group() to zero decode
 cache
Message-ID: <202108181605.44C504C@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-54-keescook@chromium.org>
 <YR0jIEzEcUom/7rd@google.com>
 <202108180922.6C9E385A1@keescook>
 <YR2PhlO3njPcFOkg@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YR2PhlO3njPcFOkg@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QDNt5PHg;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 18, 2021 at 10:53:58PM +0000, Sean Christopherson wrote:
> On Wed, Aug 18, 2021, Kees Cook wrote:
> > On Wed, Aug 18, 2021 at 03:11:28PM +0000, Sean Christopherson wrote:
> > > From dbdca1f4cd01fee418c252e54c360d518b2b1ad6 Mon Sep 17 00:00:00 2001
> > > From: Sean Christopherson <seanjc@google.com>
> > > Date: Wed, 18 Aug 2021 08:03:08 -0700
> > > Subject: [PATCH] KVM: x86: Replace memset() "optimization" with normal
> > >  per-field writes
> > > 
> > > Explicitly zero select fields in the emulator's decode cache instead of
> > > zeroing the fields via a gross memset() that spans six fields.  gcc and
> > > clang are both clever enough to batch the first five fields into a single
> > > quadword MOV, i.e. memset() and individually zeroing generate identical
> > > code.
> > > 
> > > Removing the wart also prepares KVM for FORTIFY_SOURCE performing
> > > compile-time and run-time field bounds checking for memset().
> > > 
> > > No functional change intended.
> > > 
> > > Reported-by: Kees Cook <keescook@chromium.org>
> > > Signed-off-by: Sean Christopherson <seanjc@google.com>
> > 
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > 
> > Do you want me to take this patch into my tree, or do you want to carry
> > it for KVM directly?
> 
> That's a Paolo question :-)
> 
> What's the expected timeframe for landing stricter bounds checking?  If it's
> 5.16 or later, the easiest thing would be to squeak this into 5.15.

I'm hoping to land all the "compile time" stuff for 5.15, but
realistically, some portions may not get there. I'll just carry this
patch for now and if we need to swap trees we can do that. :)

Thanks!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108181605.44C504C%40keescook.
