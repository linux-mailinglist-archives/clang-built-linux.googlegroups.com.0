Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTFUSL3AKGQEZSLP7TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5F31DA832
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 04:47:41 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id k15sf1349118pgt.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 19:47:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589942860; cv=pass;
        d=google.com; s=arc-20160816;
        b=YLkx0fwdnTkyYBlLvprM3l62wiyOG8WPvbJoPz61be4OOO9yXX9LDOioC9GmwCPUMN
         4PVtBhwTFWphdzUPIGFU3CyowrOnbSZliolJnrFWCeyYqNGHuj+OHACvv4SuEPZ/9iEl
         uVwTvrO4JvLU24VYP+Vvfvbp7UuMKMr4cnei0lKy3F7uZe9v+3P6vAhX1ju2BD0lG8V7
         2/KtLtLwW0arAtnTxRKnqni6Hme3bVz0B37h9VPUxkIFGxe5HsEt772SYAmKRDXys7gT
         m9EJkZe3AmeHkF01IQwTX+7X4uy8xhImCw299KUr8QVXy5vzSVuKABkFFteScnrOVZiL
         +nuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=vLWwlVhUIw+jdXWyYw5yghwl9//9sJQlCrdE/9aMMAc=;
        b=NiJVamaGDqB+bEiTAAKjVuHrA7oiZ500d11zSzdL7HLuhY7gL0t4GyfjOG80xCkZPj
         OJd8lXjBedAS2ChGH3ZRaSzW8Uz2yAsynU1JwptR6zgubdzMBsbLG2e3wG+i96s12NL+
         G1D7rE6aEl6pyUYUT/GE/RyHVGR89S92u3TjqMQUxKwgKt8EIhg38WoyuQyEXPHR7Nnm
         mmm1WNbkZmkHAfMvoq/DMh6Y5emwM9WxkegdhZ0f3nYnHtiS/eR4iTYQwaCl20Vv8Vsb
         +O+I43nWqtc2vZi5VQzGKyGaORwnrZhSTceqtUvdKgSntgiRvxvFaLZ3KOd9/OURMFxV
         3JPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=slokoVWJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vLWwlVhUIw+jdXWyYw5yghwl9//9sJQlCrdE/9aMMAc=;
        b=M3+k28ZRX/Uz5+8VbV0FdpaSzDHYPAKFAK1WwWP76Mryg+RgG1oBp13wtCvOx/M8kD
         n5gw00/tqOegPxlVb06mPIqYqatTxLPrhnBz4Pv/Ra2xAF6z56MmZmxKwAd2LSMC7ohD
         SkE+0eqa1wXWQFSuZe49eAPKaFirD5oZwn+8BXhhai4exAQiTVL7icuz3ki1XnEtqDn7
         eiLvGJCUZe3wpm4iZF7dcy92dk+Y8+BZRBIE5KVcZFjGSBqa8a+pSL6H5qp+jCUT2AZl
         fk7kXp9GTJzT5GEkL4bcaEadm+xm5Xky6hz4kO/qhuPG3zG57oFSTw875DvLtlgx62yg
         ydLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vLWwlVhUIw+jdXWyYw5yghwl9//9sJQlCrdE/9aMMAc=;
        b=u2m5ADn7ZK3786XVtgxrEMfn7u3SWj9L46vw/iez5doxUrnhiLKegKlKRkUicN2FA3
         gXNXAoOAj+hu/o/ohsWxlst8qAixzAM5KtMk3OCU/xqJHHGFgd8rlITbj/Iq2uroiS/M
         5Ab12NyQAm/bgL5kPvDjsI8VHYdY/ZcH1syuBeBiE9qv1HAqxWv2Og24grSr2NKFCmYE
         82sWqyxnOMmIQvXmwLgISCjO8KkJ7TFET1zem+sii3OhIL0YdK+Ckx4tS+/4hOREiVr2
         1FtxihlNO2QmrxaUsrWwe3No8HUm1LqtK8j8MJL53YijoWwLG4aHn6XyRNujkEeSjI/B
         4KsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vLWwlVhUIw+jdXWyYw5yghwl9//9sJQlCrdE/9aMMAc=;
        b=ntjgyep7D2CdywJzk9AxiHpGuJtCexstwmVlGwN4gI/kzhWLQ7xKEzlL1TFhYnEbBV
         zM6DUEA9CGjCOZn2Op8FEt+mV3DokZE7HnoyEkR7XNOS+G2cYH83MzVOIyzSqE3TRWzP
         6AglDmV0M1WJLP2QwoakrGSsEoHZFvg/a20U2y2CCbD8/gPwjaEShtsUA+eO6MBEhgvc
         QUbTUB6qRTLmdalYmfD2DPpMidSc7h9E7iSZM7+3iRt2h0c+uvKTsnX9CeZL/Uq+vg1X
         yM5L+Ey2JX5n+oKUnM8DV8Xj5y7kVU/ZlXgWccI6ogCFKjLRyzV26DKJ61hCqxuw/aHh
         SfCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532twX1I3uKHkAZJzQ/jgB04ifcWzDAH+9Nu3r24KQwNIOqRI9Rz
	pO+h4ZUYJt9Vy0thF5ZC4eM=
X-Google-Smtp-Source: ABdhPJx2BUqtw9JdWCMxS/R1zt0UJ6n/QDnz9wrJjbhsUmw75BoRt6Cmb4yy1rC/RGRGfJNglC2R0g==
X-Received: by 2002:a17:90a:d317:: with SMTP id p23mr2805079pju.107.1589942860613;
        Tue, 19 May 2020 19:47:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:55c3:: with SMTP id j186ls445347pfb.6.gmail; Tue, 19 May
 2020 19:47:40 -0700 (PDT)
X-Received: by 2002:a65:6703:: with SMTP id u3mr2025545pgf.179.1589942860168;
        Tue, 19 May 2020 19:47:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589942860; cv=none;
        d=google.com; s=arc-20160816;
        b=LvxMWVs5t7+Bodnq9hURY4Y8Y51OwSg4QHdoIJIrb/oGLIs988Ht12IbWnDeQ3BGiX
         JrVQTG6MMMw2Bvf7pZuHCGqy8g+TYWH6mWNBsDoZApXWp74OiZRsO1/PDx3s4r+NEsT0
         lfaHpj7vCxJEbJUZhQkX50Kh6d0TD2C8aocSyGgkk2ucsZ3uQN8kU5vkSTSqFuAB0J4S
         eY5gKBpS/2rbg6NnGxu8oxpRyqJ6/wwmVl/yAoisYtdCIMfgTvB13vkZ6dKESLTy3Eq7
         va5WGJHbmXkkmZr3VTLDnS57wsA5ALg4+pVBVG7VAOI8l3AEgqEv7SrljSLYKPRGq1u3
         JPSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=U3JxxfWABjzw+muWBftLLoPg5L7tniD/yZsXvBpXo+8=;
        b=i+2fHgDDmXocI84r9OTKVisjA5AQEuLxaA0hDG0k6dwR9vDJz/pd31AgaB9dXVQA7d
         Gh/TzbRK+SElGNS9HJQrhaGI+KGmCX0VJycQH38EEYf/3fQJfl93ZQfpL3mMBVn+A0AS
         hNMntebJI3AsLJR3P/B+mlKBHpA5lIwIOC5A5k4f90mrisgNYb9sIhtzZlvwW4k6yI1l
         dcNN6EOvYcJm2eTiLjyu+sPB3X8IeXp1ZX/L2yGzrVZgliiLUsVa1leqQT6aRmXZVgLN
         S7pJPdT/rlVdEfV4HvVf+5bXJRdjpIIVpDQr5x27AdV6ljO1pQxZv5XjkgO2sTptUffK
         JC/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=slokoVWJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id b8si456005pjk.2.2020.05.19.19.47.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 19:47:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id z15so1820916pjb.0;
        Tue, 19 May 2020 19:47:40 -0700 (PDT)
X-Received: by 2002:a17:90b:110d:: with SMTP id gi13mr2587365pjb.131.1589942859725;
        Tue, 19 May 2020 19:47:39 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a2sm670964pfl.28.2020.05.19.19.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2020 19:47:39 -0700 (PDT)
Date: Tue, 19 May 2020 19:47:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Qian Cai <cai@lca.pw>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marco Elver <elver@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	"Paul E . McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] READ_ONCE, WRITE_ONCE, kcsan: Perform checks in __*_ONCE
 variants
Message-ID: <20200520024736.GA854786@ubuntu-s3-xlarge-x86>
References: <87y2pn60ob.fsf@nanos.tec.linutronix.de>
 <360AFD09-27EC-4133-A5E3-149B8C0C4232@lca.pw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <360AFD09-27EC-4133-A5E3-149B8C0C4232@lca.pw>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=slokoVWJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, May 19, 2020 at 10:28:41PM -0400, Qian Cai wrote:
>=20
>=20
> > On May 19, 2020, at 6:05 PM, Thomas Gleixner <tglx@linutronix.de> wrote=
:
> >=20
> > Yes, it's unfortunate, but we have to stop making major concessions jus=
t
> > because tools are not up to the task.
> >=20
> > We've done that way too much in the past and this particular problem
> > clearly demonstrates that there are limits.
> >=20
> > Making brand new technology depend on sane tools is not asked too
> > much. And yes, it's inconvenient, but all of us have to build tools
> > every now and then to get our job done. It's not the end of the world.
> >=20
> > Building clang is trivial enough and pointing the make to the right
> > compiler is not rocket science either.
>=20
> Yes, it all make sense from that angle. On the other hand, I want to be f=
ocus on kernel rather than compilers by using a stable and rocket-solid ver=
sion. Not mentioned the time lost by compiling and properly manage my own t=
oolchain in an automated environment, using such new version of compilers m=
eans that I have to inevitably deal with compiler bugs occasionally. Anyway=
, it is just some other more bugs I have to deal with, and I don=E2=80=99t =
have a better solution to offer right now.

Hi Qian,

Shameless plug but I have made a Python script to efficiently configure
then build clang specifically for building the kernel (turn off a lot of
different things that the kernel does not need).

https://github.com/ClangBuiltLinux/tc-build

I added an option '--use-good-revision', which uses an older master
version (basically somewhere between clang-10 and current master) that
has been qualified against the kernel. I currently update it every
Linux release but I am probably going to start doing it every month as
I have written a pretty decent framework to ensure that nothing is
breaking on either the LLVM or kernel side.

$ ./build-llvm.py --use-good-revision

should be all you need to get off the ground and running if you wanted
to give it a shot. The script is completely self contained by default so
it won't mess with the rest of your system. Additionally, leaving off
'--use-good-revision' will just use the master branch, which can
definitely be broken but not as often as you would think (although I
totally understand wanting to focus on kernel regressions only).

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200520024736.GA854786%40ubuntu-s3-xlarge-x86.
