Return-Path: <clang-built-linux+bncBCT4XGV33UIBBEPDXCBQMGQETFR5VOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FAE35779B
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 00:26:26 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id e11sf26571ioh.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 15:26:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617834385; cv=pass;
        d=google.com; s=arc-20160816;
        b=ARoppbRBj9VKPHl/rRzoUoTeeTCTsK4r6IU9MGupmPlDpI51lH/P7b1yKsm+reBgjb
         v0BOVq7n8zrg18MLZ/lTp4mB+qWjoVpAJH1lFEztxUTcafRjGTx698eMxsxx3a7Xwz2g
         eJk7gwS1BzlJdabTDU6itHFaaFdL2Fdugdso2Dp6JvIuqoInhbcSh6uE3cMliNCLqH+b
         6znQiCkviNwMUnDJoImE0/eN7x9Bl16U+xZ+/4ftsH9DtV+8xcvP8YgdhPJjyfSqmSXT
         MEwXORp0H7QDdzc0Q+qIbLjNCuaLB7RlUIREKTQpA+of383P9J9DzIFQoDPCD4WiuFkP
         OATA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=/zSoFag6FWv84s/dW8EMRSJEr32KaCPj7VFT6SxPlDk=;
        b=A/dBiYZCCk7O2b4WaYHkc9ApU+mx9IZr1iHANCMmR9Tyy8BVCKh0bazBhpPsJH34xE
         bbEv2QJWOtZpSYYPLmZq9wo0NgSvbCkoVeAEHzY+iwAatRoZeo4JUfdUguh/V6OSme94
         EM11IuIV75NuWWlxPzcUT6N2bFDdm5Z49u+k5+exQ7W2EP7ZNiPRBeHPVD4bip7xGccL
         OlwMztwfzOrd9EANCIqkzmkdynwPDSuimNGS44t2lU2CRGSJRB1GRRObqJUGQ0GLvnGd
         k/8UydmnksZBDa0U/Ib5nLhZ0xOnOX+s13EX3W+kCER7tIxWtv7Xnd/cx+LqVkMTP7ZT
         qVQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=v9spXbJr;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/zSoFag6FWv84s/dW8EMRSJEr32KaCPj7VFT6SxPlDk=;
        b=nGVVqlnw68NGk50yfdWey6PAe0E2+XNhs+tJoNkayroJIeo0mQtB/nsn7/aL8dckfM
         Xllyew4DEnlZbCrQJ724IwOAEtFeNiDfttd5xFcsy4/YYuRMzRbxc/Ct4B1qRt0LkcJq
         uuR09NeryrJfpmIcvXuSDcY8W/dZY0FzEuTs+1gsWZFhBLqLG+SxVZUgKCrIzVz+mg7p
         SpS9yfC+lsJSV6lr1AgCuyoso24PdYkE64GJkEtY6CbaZnlHcsh7gEjXl9irgfJ+2rh6
         kd48QwoTTDLz3Vme+F2o6NIyIcety9ilrNc6lcCGwFNEeRdxMnwRp2+THChs1+OXhTBu
         WbYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/zSoFag6FWv84s/dW8EMRSJEr32KaCPj7VFT6SxPlDk=;
        b=oJaMp6Ks2qyQNjuqSMGCKinsm/9oB9GIPSTYQPA1f9+VozaaM3Ap+H/8c8Dilrx3zS
         Ftsq3+9710U2y7WxuGohLk+zF21Dy+SEDHDFhsaJCE/sd6q9pnc/6ulMqpscnF3G1KCD
         jgRsImoaJITu+WPJV2ZL86dpHfZFWFC+7kEpIiENxCjYB5R6Wg/x9JNsUZ2R9N4tk3Lr
         UNf08YtNmDuJaXHxxQPtV1FU+ThK9IxX58Y9llZL8upLX78KCrgKRVaQ9qx6SwX2FwnV
         1m+Xpb89MQZY8MDYd04tm+RaZEuvN9hN+bkHyYnwNFwpySyj4hk1FEsYMd+dYZGw4lyi
         LnAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Vr048IX3kyXBGT/3z/E7dsyOv92Ri6/D5rFRA0uoRIDZNBO4/
	dn2hMvdwEMlpKtswK0MVewM=
X-Google-Smtp-Source: ABdhPJy2zZbuNywf4xZbm9xEhFO9252UFZbfSLYsauQHpliziCqFRX3ISybfxBa0Id8hKL9Cu3UyJQ==
X-Received: by 2002:a92:ad07:: with SMTP id w7mr3101049ilh.98.1617834385623;
        Wed, 07 Apr 2021 15:26:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1584:: with SMTP id m4ls798993ilu.3.gmail; Wed, 07
 Apr 2021 15:26:23 -0700 (PDT)
X-Received: by 2002:a92:c044:: with SMTP id o4mr4722834ilf.188.1617834383777;
        Wed, 07 Apr 2021 15:26:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617834383; cv=none;
        d=google.com; s=arc-20160816;
        b=RUZeqeSZ9Ysax5ndrxerHl7n0Me7OVdDxMCkd+FzghtZjrBhBNasEHD8AInaTxX42U
         ipDKhhtsV1Uvca+LSUmfGk54UnnsTk7/W7SRVVVoMD5uhDybR0sXHu7sNLW44afBmPRX
         gzKlO0A3ab1A5PhymmdBDIrMl9v1QDQ3xQRLaaDlc09zqzTZFlrfpvsIV6aiONx4tMZI
         HNeJXjE1a+kz5Yj7yZJfFD3GlQYVFwkGcVF0Sn+/FddrM1jdrPnwlHTn2tBLQ+Aoj7S0
         vVSsfcozdYZpZLYvS6cY/wkpcuI9cKVhIyPTzCRilkjTg8hpKI4E1xn5ESCD7nzGRAzn
         MIJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ehfUIik5Zw+acpn2DdgHbKfwDG/syO+FJ1W0oU/inuI=;
        b=iUZ61glCpGVqM8MfHiWmlr59AEWv1iSj3S8rXIy8GEcvrfzdRU+8dOVaFkMP4/itja
         3CCqovZhZMDLP0UUmtDG/5rG/ity2eCnpV5fO/Ws5eAeSUY8ji0aT5esgbMSqXPZrjTu
         x4mhIPfhWSLi4T/+PnkuM4xAhVz7AScHsh0x0G/UbXYTWAMaMZxSWM2TM85DPy9+K9nB
         jDec2V/Lldi2OaLmm+YHajRdRT10J0BbkQsAF9sfA3m5Xhhm9DkJoIcd1GyP/jE9F748
         PIXSxz/+k8wKIfSAuLUWULCRw7GwqEAEnalNc945BSUNziY/YHQIwemmrhp0F2d7HLsU
         Hy2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=v9spXbJr;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n13si878971iop.3.2021.04.07.15.26.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 15:26:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7965861245;
	Wed,  7 Apr 2021 22:26:22 +0000 (UTC)
Date: Wed, 7 Apr 2021 15:26:21 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>, Nathan Chancellor
 <nathan@kernel.org>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>,
 Prasad Sodagudi <psodagud@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH 1/2] gcov: re-fix clang-11+ support
Message-Id: <20210407152621.3826f93e893c0cf9b327071f@linux-foundation.org>
In-Reply-To: <CAKwvOdnSRsUj9dvKP_1Dd9+WwLJwaK0mC-T9mL+jsQvRfwLZmg@mail.gmail.com>
References: <20210407185456.41943-1-ndesaulniers@google.com>
	<20210407185456.41943-2-ndesaulniers@google.com>
	<20210407142121.677e971e9e5dc85643441811@linux-foundation.org>
	<CAKwvOdnSRsUj9dvKP_1Dd9+WwLJwaK0mC-T9mL+jsQvRfwLZmg@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=v9spXbJr;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed, 7 Apr 2021 14:28:21 -0700 Nick Desaulniers <ndesaulniers@google.com> wrote:

> On Wed, Apr 7, 2021 at 2:21 PM Andrew Morton <akpm@linux-foundation.org> wrote:
> >
> > On Wed,  7 Apr 2021 11:54:55 -0700 Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > > LLVM changed the expected function signature for
> > > llvm_gcda_emit_function() in the clang-11 release.  Users of clang-11 or
> > > newer may have noticed their kernels producing invalid coverage
> > > information:
> > >
> > > $ llvm-cov gcov -a -c -u -f -b <input>.gcda -- gcno=<input>.gcno
> > > 1 <func>: checksum mismatch, \
> > >   (<lineno chksum A>, <cfg chksum B>) != (<lineno chksum A>, <cfg chksum C>)
> > > 2 Invalid .gcda File!
> > > ...
> > >
> > > Fix up the function signatures so calling this function interprets its
> > > parameters correctly and computes the correct cfg checksum. In
> > > particular, in clang-11, the additional checksum is no longer optional.
> >
> > Which tree is this against?  I'm seeing quite a lot of rejects against
> > Linus's current.
> 
> Today's linux-next; the only recent changes to this single source file
> since my last patches were:
> 
> commit b3c4e66c908b ("gcov: combine common code")
> commit 17d0508a080d ("gcov: use kvmalloc()")
> 
> both have your sign off, so I assume those are in your tree?

Yes, I presently have

gcov-clang-drop-support-for-clang-10-and-older.patch
gcov-combine-common-code.patch
gcov-simplify-buffer-allocation.patch
gcov-use-kvmalloc.patch

But this patch ("gcov: re-fix clang-11+ support") has cc:stable, so it
should be against Linus's tree, to give the -stable trees something
more mergeable.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407152621.3826f93e893c0cf9b327071f%40linux-foundation.org.
