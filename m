Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBM7S7P7QKGQETWABTAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 260462F4C64
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 14:44:21 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id 137sf1345513pfw.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 05:44:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610545460; cv=pass;
        d=google.com; s=arc-20160816;
        b=hpiT/doDyewKyDQXG8azUxfszQr2XxOTNumKtxUg3BdyDuDqW5z3hJPN3xj1eFq1eF
         Vr60bAoGeNYjwY/PL2nsbWnuZPRfH1pbSWsIF/oGSov/n/wN2DCjDyQycq5dJgk7L7fm
         3TLSCqLzL2jvvST/6/OtyE3iY435FquNd70ZdbCB3NjkrJ7kPJJS03vTVvmqjbXp6LX2
         u2bhRj+psfoEZ0ikyHXcZ1nZsHwR63cP7OX9ATFK8MbyCuKi9qUPmzpEmUvy4qqdfyQd
         SpEkQoHsUiw26C/3WhTxbMBosqFXvTBrvN9ij6o7Vev2NEXTNUQB95MsXz9RHCNXSDxo
         lRAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2AVbTGh4r9+6RNO9eOcJkhlFW2QiuKtY3V+J3QpGo4M=;
        b=UoUjJPEcFjz16isoxeuZsqJXUTwyEZnG5gMFF/yUrDtQ0FzAsMnqkmEd8E/RVBaK6g
         f58apPTHGDVrvyXoyPvck9gV+xQx6al2EFMO86PCZN1PMdKtn647svWI/iisHRDKeVoB
         0odQ+Xraut1033KhXMZDCfu1ZfjrtQSw+pQ91fTzzxasemyS0qYD6Rbwh28tGjZbaKps
         j7ucA9qxlUE9957cG5I5a2deNTWhFx+HYCbR6ueF9GrtCfXTl+aiAQKKbKZwE9Rkh26x
         qwG9ukjhiXarKW9mLEpyCk3T3CmN5PlXiUMAGFIHVLbNtig0Ch5XVFhkRSnyxjKmWsfC
         bQhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YcB7crq3;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2AVbTGh4r9+6RNO9eOcJkhlFW2QiuKtY3V+J3QpGo4M=;
        b=sY9bSmDchYxaWE72ouFMDPIPTzzQsa7BPgtVLL6Xc9j4sCoZDtj0Ipms0Yqj3Y2i0P
         /1ig5P/mCl1nD47uC9wweVDe38oCWYMIgqUo+mVQy7L8jzaVJmTjF4VpvfFqfswFQuqH
         UWG+i6A1AVkRPEbA/qOCtNN8cozDnGczMfKqCFgK19XRTsYpIJ+9HxbVhYZ81+e1sW8O
         UDUqzkY+LQ+IZCvZRLQac3h2wGd8gYwnTeh5mUnUOnk1zz68WEjB9XyvXd+INRsFHf7T
         FM679JCrkYyEUjYcG/HSj/mQztI/b6qt3+4tBG4fTvyP4/T3vKlu2Kq7mZydi/8ARA+t
         fOpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2AVbTGh4r9+6RNO9eOcJkhlFW2QiuKtY3V+J3QpGo4M=;
        b=Ap1QeYokAgGWhQYxDj5PZ7O+VQFV1GerKTyj1kY+1mLtIFaPhawL7/ls7auyFC7bNf
         Ax2znWQEhHSTefQuLFqUurP+dGYikIQSfD8tjB+XXFrBnAFZN+Rt5wsgguih5qOcsBRz
         Az2oeJ3tX1u8DvCnfsTcmlK0ddxAKjCk8RvuMNZ0TZLiuEjjcC1MSziruQzWYPy9bpp4
         edW5p+PMzMv0dW/lEgK6H75MngZObVX0o+NrpNYooZ6aF0cMgyNDSOs/Is2gsZYQH3Z0
         qimCGfyl2GBDXPvZ0L17aGz8crPBBIh+Nl9u4DgaSbb09c3invRMjAp9jFrLiELqNxHr
         Mz2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YpxbPirn2xY90dd5DZFBYtGakt3avgoZleghMdNh3uS6y6c2f
	CMHkIwuxeCJqpaTaRIzabk0=
X-Google-Smtp-Source: ABdhPJx+kkFvbIaT2LuT3iOwxSn873w7QP3s8leDVSfreAkaBhD8pt3uEfhCByZUXmG0LqCxTCAukg==
X-Received: by 2002:a63:e5e:: with SMTP id 30mr2148039pgo.181.1610545459924;
        Wed, 13 Jan 2021 05:44:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls1152164plr.9.gmail; Wed, 13
 Jan 2021 05:44:19 -0800 (PST)
X-Received: by 2002:a17:90b:1c0d:: with SMTP id oc13mr2636174pjb.156.1610545459309;
        Wed, 13 Jan 2021 05:44:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610545459; cv=none;
        d=google.com; s=arc-20160816;
        b=kwRaqGmHjRkrxld6tGwkWhSWnN8DQ07cWPYkkgWTJ0nmAXNUggi4RR5XvhZlTuUkTR
         B5KxWS/9kKuNY52U1+SIEtu3Nw+UwFfCA60PsFZfpJYyTp06C5l79HKmn1Vs622eZ9rc
         eMmqxI7U63r9gloIYCSVTsI9+qfYELbYurPyuANCEF6qxqNvcd3Wm7HBFP1AOg4R+vvT
         6zdB8LlEhq8a6rNWUn7Zy9HHuBviOttBdgA5uEkRoZdgg31ps+BQ068uaAX5WpzRuifC
         xewpijuW0pIBA8SOyyXDf3G+g84TD2wX7bTgFcqDWbixUqLZKObd+jxsflEau/N2N7Xz
         SeBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zmdhpQ06BIKbjb923c3O2wZeZE3BoIqrHtQD6L76JOo=;
        b=niUR//rLpbVMelTpj7Ru8oW2VtBnQZkuc47PAVFR+W9L92gZRvLNruO3gf+mU3Nu59
         qsQcnHKzn5KBpdU8PKNh73TD5g1Rg9CIL07VkNkaVttHzoPEwe4t6VBG4x0BwyhKX/oT
         Z6TK8DoZpgA8a1lxtAthxwWy/DUTFN9L8s5P0PW6RtcN5ShV9MBbzhFuCiP6N3Fbyk2+
         kfJLze/rzxyHDhap/lPi8/x2d2DEzL6fdP7L9JgGzkcV6SHgAQYUYJYboMXnNMfFatQl
         iNJHzzx13jJXyKhODEwDOLe2J7TK2dPcoGovljUBrPz19zt66Fo3vCZUDC3DrGFde+ay
         HM8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YcB7crq3;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i12si133781plt.3.2021.01.13.05.44.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 05:44:19 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4D31823339;
	Wed, 13 Jan 2021 13:44:16 +0000 (UTC)
Date: Wed, 13 Jan 2021 13:44:12 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Arnd Bergmann <arnd@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-arch@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: make atomic helpers __always_inline
Message-ID: <20210113134412.GA11757@willie-the-truck>
References: <20210108092024.4034860-1-arnd@kernel.org>
 <20210108093258.GB4031@willie-the-truck>
 <X/jDGbwDNcVrZdDJ@hirez.programming.kicks-ass.net>
 <20210112102312.GC34326@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112102312.GC34326@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YcB7crq3;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Jan 12, 2021 at 10:23:12AM +0000, Mark Rutland wrote:
> On Fri, Jan 08, 2021 at 09:39:53PM +0100, Peter Zijlstra wrote:
> > On Fri, Jan 08, 2021 at 09:32:58AM +0000, Will Deacon wrote:
> > > Hi Arnd,
> > > 
> > > On Fri, Jan 08, 2021 at 10:19:56AM +0100, Arnd Bergmann wrote:
> > > > From: Arnd Bergmann <arnd@arndb.de>
> > > > 
> > > > With UBSAN enabled and building with clang, there are occasionally
> > > > warnings like
> > > > 
> > > > WARNING: modpost: vmlinux.o(.text+0xc533ec): Section mismatch in reference from the function arch_atomic64_or() to the variable .init.data:numa_nodes_parsed
> > > > The function arch_atomic64_or() references
> > > > the variable __initdata numa_nodes_parsed.
> > > > This is often because arch_atomic64_or lacks a __initdata
> > > > annotation or the annotation of numa_nodes_parsed is wrong.
> > > > 
> > > > for functions that end up not being inlined as intended but operating
> > > > on __initdata variables. Mark these as __always_inline, along with
> > > > the corresponding asm-generic wrappers.
> > > 
> > > Hmm, I don't fully grok this. Why does it matter if a non '__init' function
> > > is called with a pointer to some '__initdata'? Or is the reference coming
> > > from somewhere else? (where?).
> > 
> > FWIW the x86 atomics are __always_inline in part due to the noinstr
> > crud, which I imagine resulted in much the same 'fun'.
> 
> FWIW, I was planning on doing the same here as part of making arm64
> noinstr safe, so I reckon we should probably do this regardless of
> whether it's a complete fix for the section mismatch issue.

Fair enough:

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113134412.GA11757%40willie-the-truck.
