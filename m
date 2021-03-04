Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB3VVQKBAMGQEJACY22A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id C221B32CE82
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 09:31:42 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id k14sf9627924lfg.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 00:31:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614846702; cv=pass;
        d=google.com; s=arc-20160816;
        b=tYaxTTdfcvcQE2K3Pjq8jHy5II62QG8Q7FUonbo3ZEKNmsmcNMTEKZVfgC3o0equUB
         7Bu5Rc9F1qxLPogFM08R5QJmMPIj2kEnDCBlsKFUsQUJlm5l3h5zLIwvJxv5IhUSrRsV
         475l3skh56KHLulH8PAJOkmOVADFidhB05hhCRsOBMHIgRLOaDgegzsJTKsIgEffdLWn
         JnMiC6FauxYTR3ETLo3N/9SXoxMQ342ky2lMHr4qWq+LtrnQ9+hWnxt5y2nYxOLX534K
         Dhj1kQBTRa0YUDC4UTla3UKApj+zlGazlpaYjz/TukxXi4yFth3BOPLnpp9vaw4qNjSt
         2i6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=VceA1Qyvc5Cmc5zKtunNijrHysF++H6/9Hdlawdfts8=;
        b=HYMvJH2eWTL6DeY/v/YPDU8OyGyV81F7yU7wxqNrJ7VTR39DB5JZJWs+RQLe0kYh7U
         oFlqPtyWqDqXzjYZA57VclMuW/pvrgTof0c8L6NYqxE8ao0xXy8UjfCcYOsLX7k1GXpX
         zFecJu1iC4pkdw3qC4wJO2kzxi0/yX/HKhbU93aXWS4WVQp0reAo/DpCc0/FxwYG8QhF
         FarvNdE9zJbJ9jVzwppz+r3J/rPXIuhn96gLNG3kZ2QSBbx0+JGHb9+q5WPA9hr0uOmI
         WO1cEDDSqPYmRM4jio+/rbQf/vYspCCgjC4cnZRYGc7q8I3aSeLyng+ExwykiJ3Dr++8
         6+mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ILlcBd38;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VceA1Qyvc5Cmc5zKtunNijrHysF++H6/9Hdlawdfts8=;
        b=i1xikZ9t667RdLSKcJrL8ouLaLxd71bx9K5OFXY2MR2q8OyJ0daSRCXYN2xt58Wgv+
         E4Sel2YeIxzBPeNe3boa+3rhwFp5SJcwt92pbgLXxlrdBRuhqZsQYZWqABiSmdgimoG9
         bZFDvv8J5Z9wIQTHehudksC4AySjh+PgRk5CShpaORUW7wu/T6M7a96P2pOYM6sdSd24
         aieLl5ComWZ8wd0wOyCzTBysq9tTxwW4tYRdc5v5dUXKSJtdjw12DmIB3GYotrTURVlC
         UThkK5Hn3U9dWq52OjkTGosGuIxNAKSuFrJfoUNZXbnx14xWMuETzUuhmLDeDTV68Cb5
         iDSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VceA1Qyvc5Cmc5zKtunNijrHysF++H6/9Hdlawdfts8=;
        b=tpn7xkEno+hcxda5pjTf0x59Skkio41/fQhW5V302IXKIOm34i5rpjJpPTHmiYGz1t
         +Uov4gXPI1jKa0DqWlhqkZ7MB9p5a7Qhdo1mB4ueR+913fyTJE9nTroqYW51hp+03TqO
         UH2cUqV8oE8chfCE9ngS4rks1UMPrRGI+AL36Fj18AZNu7mBeiGUwddW+WLqe32dmaw5
         MNnbVlbdklN8efLjHFe06civrXnDCiagCURTqMbdeD5pEXALxkQXGxj3oPoB8CtQRfqx
         Qd8Sdew/VWPhM7BKsjxhKByC8ToBYj/flWrW4Z6RkAhBbAGbJ3/Nz+ir5R/+PSo29crn
         3ftw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531o/TsmCePUiGjbardseu/U/Cn+EovKecHqB1iurVCl0a0g1jxk
	N3no4KkalTqtOP6uKbegs84=
X-Google-Smtp-Source: ABdhPJxT/M2ljJLO6Yyum/rZfQR53jEDa6oUr5CyaTh8g5T1skM6Mzh8qcRc/aVBfL3a82y4cAvqYA==
X-Received: by 2002:a2e:98c5:: with SMTP id s5mr1675659ljj.218.1614846702304;
        Thu, 04 Mar 2021 00:31:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ac46:: with SMTP id r6ls441514lfc.2.gmail; Thu, 04 Mar
 2021 00:31:41 -0800 (PST)
X-Received: by 2002:a19:521a:: with SMTP id m26mr1749263lfb.56.1614846701206;
        Thu, 04 Mar 2021 00:31:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614846701; cv=none;
        d=google.com; s=arc-20160816;
        b=Eve5Dix05JBurmElcnYoOLAGxaBOQEZZxawvrTI7bR+jetCSUcIez/Le5L5FIIVhod
         P4iFa6mr166bcpleWwV2YoGVa5OyvNWkgP1PQ/Ig7EJrhD0A0d0QP0RCNyrfHzsbJqRM
         SM+XS2vpZ96Smh6lQMU23qvExA7PB9A2lDB9bWMpBMq0ZQr7BXoTWi9uflZJAgl7WTvn
         VhjqdPe/A5Y8sO7EViqVnNPRgMmP78zcWng990YI0AkMKGxYE2WhbYotM2kLqza8zzJj
         9MHb0ukoDPiKB1ZbIFXR7rfgcmfeM3MBtQVhQ6tlPH6LwtUKGCdc3I808R1IX0qqG66k
         MoTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=DMcYLXBe8hXZ3aPL5ES1lzJxbIGorWKwhPqPVEThNzM=;
        b=wRUwe/0axZsPXk9Sl0hJnI4wT2vB7IfcrKKtNzczqopOWc8N4zL2GrVWl6K3E1SyQn
         3OKzth81dfB0jf4YlmNQFFQ/UmYICAY4qlgo7eSjQ49o6VMN7jVFFcnukehal8md8tLj
         viMNtse1Alons8poeMnIarPvZZoxaSRq90Gvzzfv2nWSrFIigpuaFPFDfey6ejUJInaX
         dUm5T1XKI0gzncPGLajlFCRtyJCYMD96f7tWf3qVl1dVdNogT62Rz1uZAN1+6Qa0xW1M
         3ENRO+qU0ux0XhRR4czLskAR1TIrEGA+7PvzddsS6aCrFRUQ3Az09k1QmQGTjmvEn9mU
         gzCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ILlcBd38;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id d19si817128ljo.1.2021.03.04.00.31.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 00:31:40 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lHjOB-006FBX-06; Thu, 04 Mar 2021 08:31:19 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E26B930018A;
	Thu,  4 Mar 2021 09:31:15 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 9F9DA20B10DCB; Thu,  4 Mar 2021 09:31:15 +0100 (CET)
Date: Thu, 4 Mar 2021 09:31:15 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Don <joshdon@google.com>
Cc: Ingo Molnar <mingo@redhat.com>, Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>,
	Daniel Bristot de Oliveira <bristot@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Clement Courbet <courbet@google.com>,
	Oleg Rombakh <olegrom@google.com>
Subject: Re: [PATCH v2] sched: Optimize __calc_delta.
Message-ID: <YECa09WaFMpwKWjz@hirez.programming.kicks-ass.net>
References: <YD9dUkGhlRT8vvcy@hirez.programming.kicks-ass.net>
 <20210303224653.2579656-1-joshdon@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210303224653.2579656-1-joshdon@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=ILlcBd38;
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

On Wed, Mar 03, 2021 at 02:46:53PM -0800, Josh Don wrote:
> From: Clement Courbet <courbet@google.com>
>=20
> A significant portion of __calc_delta time is spent in the loop
> shifting a u64 by 32 bits. Use `fls` instead of iterating.
>=20
> This is ~7x faster on benchmarks.
>=20
> The generic `fls` implementation (`generic_fls`) is still ~4x faster
> than the loop.
> Architectures that have a better implementation will make use of it. For
> example, on X86 we get an additional factor 2 in speed without dedicated
> implementation.
>=20
> On gcc, the asm versions of `fls` are about the same speed as the
> builtin. On clang, the versions that use fls are more than twice as
> slow as the builtin. This is because the way the `fls` function is
> written, clang puts the value in memory:
> https://godbolt.org/z/EfMbYe. This bug is filed at
> https://bugs.llvm.org/show_bug.cgi?id=3D49406.
>=20
> ```
> name                                   cpu/op
> BM_Calc<__calc_delta_loop>             9.57ms =C2=B112%
> BM_Calc<__calc_delta_generic_fls>      2.36ms =C2=B113%
> BM_Calc<__calc_delta_asm_fls>          2.45ms =C2=B113%
> BM_Calc<__calc_delta_asm_fls_nomem>    1.66ms =C2=B112%
> BM_Calc<__calc_delta_asm_fls64>        2.46ms =C2=B113%
> BM_Calc<__calc_delta_asm_fls64_nomem>  1.34ms =C2=B115%
> BM_Calc<__calc_delta_builtin>          1.32ms =C2=B111%
> ```
>=20
> Signed-off-by: Clement Courbet <courbet@google.com>
> Signed-off-by: Josh Don <joshdon@google.com>

Thanks!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YECa09WaFMpwKWjz%40hirez.programming.kicks-ass.net.
