Return-Path: <clang-built-linux+bncBCIO53XE7YHBBHMPU34QKGQEQOWCOEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D08F23BDB3
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Aug 2020 18:06:55 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id c2sf18016608plo.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Aug 2020 09:06:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596557213; cv=pass;
        d=google.com; s=arc-20160816;
        b=B2DYsL9yR5quix2gNWHKmGBRd6wsIy6+flDBwn3RuNwKornv5sQr0pZUiDRe20OhrP
         3vf+3pSSn5F4BW+sgaGCjL4x94p11zrWE0GTb8ki+FTu41TnumD2FIFYNsQNIDhqRPUS
         4dwxyhQgGdfq5RkTSQMcNLtS+4PGHzZ9tnN/JPH3jwg6auDapRY4Yrc7N3/qU4giSzMF
         bC6poCmLwMy7kTxV74HW2GmCebrGSD6Rj3sohz46eWBL5MyL1aF/9V+UrVuILKHvhxhg
         kJhDTfJylZ1UZGZE64aSyJz7SEVwJRg876bEIpNEAGiS3dr/mWVJK9SaYwvvykLZPpdm
         9r1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=I2g1wU+3e4rhX0Ze5QWimKT+fI2/UCH6TelvvqXjuUs=;
        b=pfQq68hs2Xy6w6QmBCcn4brC7/Ywfc1RUuHkNGG9YUqcy1+fh2eXqcTMJnorl9PZDp
         FmJIYqBAndJ/oXCbNsHexeaq1sHy+TBp7Tv/ZJNJTtBaInmT0G8ftE6kNKrQsaVyI/Cc
         vQaHrzxKawGPe53vfH4JHGhJ1ICM7FjPmsdzVnounacUkZHy/RMrvqoxj4zK3rAuXfOW
         iKWO2kcIVrfOkL9kXb7mA8x4wqecywTAW0uNtdZ9UO9GlOKZyA11QpkjJ9qqF0OJfMFp
         PMLLcqYEJpOx/Ha+SUFKUXS/uEjog8/8JryT7Es/PCMSgjXhBj0FN+UmsShdtcEVin86
         kZOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k59NGMAr;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I2g1wU+3e4rhX0Ze5QWimKT+fI2/UCH6TelvvqXjuUs=;
        b=qK1FynNpLvFdFKUyU/89wWA5mcmtJ6Uh3kieWjrDotMH7CXPNM60Ib/thPVrJnl1R0
         vtHjnpCxH7m5Ik+OyFnPu/uQ8PqqcPTvsNfZft1OJgOFGWf2x6h99ol80Gk4tHOhI5sJ
         jaLGbpIqCf5t88GdQqOMtVeengaQ8SwC/+azjKaUc1LPaMUQzYY3KlDNIaVTXwyrJQ9t
         MpQGe/Czq6gx8U37MOD/ArQATrlvrgymkQBBkKnCrEg5L8bFbjkzmGVDQWx2RZqcS9F6
         E3y6vdcWDKXW7p3dXj/qNwrVzfkdQEqv2YZkQk3YEVVj86cj23fPZedzi1cq4B7mq4Ok
         6eyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I2g1wU+3e4rhX0Ze5QWimKT+fI2/UCH6TelvvqXjuUs=;
        b=tx7H3+vpm9o0/SvMAwOmOfWWTbxzF/8zHfzK5t4B/451JtJ4ZLVfbs84PXj3SWUzDd
         FpLrPLVvApQXXXEIDSegZ7KP6FJtNnc6JgLqH+c5GCgShibWOuZ7623tdR7mEFftNk/p
         JCC6007mpNydCMrFi+gy8lwjzbLLAZGjcmRSSzcoZJzh6dL1xt3vaAj7flP6t/7Ibu4S
         otNkVdEBhehF4/nBB3CUAtVB4xfLh99mtLTcUjAkkTYOVIfp88mmC6LPoxlcR/vL+K5X
         DhgYT53rTT3P2ZoIemZFQRKhEIKS3r0r9ZnhwMq47CEmv5ejg9o7VO8j2+yOkHU9yfnM
         2N+Q==
X-Gm-Message-State: AOAM532//5E/Sh5U+a8VI27dCO2JUpGBx+c3ZWmsL/crCLIJVaZ+crDN
	j48CbVsSg1yXAaKtBw3M3h8=
X-Google-Smtp-Source: ABdhPJw+Nl2W3B76vDcNxrPg1snME0AwIIvmjoQzXVEWDH9ZYmbf0KoT9+nV/ooovYCOgMMHvEq/Pw==
X-Received: by 2002:aa7:8182:: with SMTP id g2mr15565177pfi.261.1596557213772;
        Tue, 04 Aug 2020 09:06:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:a102:: with SMTP id b2ls6961458pff.8.gmail; Tue, 04 Aug
 2020 09:06:53 -0700 (PDT)
X-Received: by 2002:a62:90:: with SMTP id 138mr6604285pfa.0.1596557213170;
        Tue, 04 Aug 2020 09:06:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596557213; cv=none;
        d=google.com; s=arc-20160816;
        b=J5CDGqlIrGqMlVKJjz5kGCaQF0nSjDF/jPWZkqlnC3dXB8JGSP7WcGRJw8IyutwpWz
         lkdx15HsCYlTkWpM6ZzYRM86CF9/XWV2PeojwkN7WmwntidjnK3dBfchBjaOuIQSexNh
         WRs/EwE83xqiaEWEnrUtGHqhzcBP2FxUvjViJXz+g+lF7QUvqawVzrRlAPBT9Exw+Hyr
         emLEECKvey/MunowQXD095o5+TTna4TmJ7TQ5HJEEu2Ite6R6ebHdHIF2IfZnlmBvCbc
         i8nPMQVu0QFqICG4CCjFLB4Qv/45QjZik+LxzKWZW6Qhq6iHJjvtuk/ZnqyFC3I6Eohk
         Q5uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=m06IKFD+Y+zyRLVsGx/ScdWAMYbWtM8lfzX3TLDLqQM=;
        b=f18hlIxspyJ+kpBZtasky3Z9G8hHedTXKI0r8YhvEk4USbqLbhoIHWR30PtMGghtjD
         YxzL06Iu9vg4ciOsKPjFUkkA4yaG0qNcfHJb8UyGa5iNOergSf2cwATwFM10U9wPfyLs
         XW0GsdmWC5X9uFo3iAjVmOadqv+jc4XuP0C3EoHZSEOJxKhFEpZNh91lqv29os/t0lgO
         sKLYHZ94k3MMr9IYPxnGcLNwrCP3Nv38tRKpSNZgmju1GBO+kxGCNzh3tZsPqR/pk97h
         pJnxDxQQKWRiswnVFeilrfRgVKofgdLzR6vEk3E8GPG9eKimfJTyeJk69LdfnCmMYI5X
         OVVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k59NGMAr;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id a24si1120277pfk.6.2020.08.04.09.06.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Aug 2020 09:06:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id o2so19242759qvk.6
        for <clang-built-linux@googlegroups.com>; Tue, 04 Aug 2020 09:06:53 -0700 (PDT)
X-Received: by 2002:a0c:99c8:: with SMTP id y8mr17347027qve.57.1596557212233;
        Tue, 04 Aug 2020 09:06:52 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id l13sm23581582qth.77.2020.08.04.09.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2020 09:06:51 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 4 Aug 2020 12:06:49 -0400
To: Andi Kleen <ak@linux.intel.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Kees Cook <keescook@chromium.org>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>, stable@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH v5 13/36] vmlinux.lds.h: add PGO and AutoFDO input
 sections
Message-ID: <20200804160649.GA2409491@rani.riverdale.lan>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-14-keescook@chromium.org>
 <20200801035128.GB2800311@rani.riverdale.lan>
 <20200803190506.GE1299820@tassilo.jf.intel.com>
 <20200803201525.GA1351390@rani.riverdale.lan>
 <20200804044532.GC1321588@tassilo.jf.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200804044532.GC1321588@tassilo.jf.intel.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=k59NGMAr;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44
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

On Mon, Aug 03, 2020 at 09:45:32PM -0700, Andi Kleen wrote:
> > Why is that? Both .text and .text.hot have alignment of 2^4 (default
> > function alignment on x86) by default, so it doesn't seem like it should
> > matter for packing density.  Avoiding interspersing cold text among
> 
> You may lose part of a cache line on each unit boundary. Linux has 
> a lot of units, some of them small. All these bytes add up.

Separating out .text.unlikely, which isn't aligned, slightly _reduces_
this loss, but not by much -- just over 1K on a defconfig. More
importantly, it moves cold code out of line (~320k on a defconfig),
giving better code density for the hot code.

For .text and .text.hot, you lose the alignment padding on every
function boundary, not unit boundary, because of the 16-byte alignment.
Whether .text.hot and .text are arranged by translation unit or not
makes no difference.

With *(.text.hot) *(.text) you get HHTT, with *(.text.hot .text) you get
HTHT, but in both cases the individual chunks are already aligned to 16
bytes. If .text.hot _had_ different alignment requirements to .text, the
HHTT should actually give better packing in general, I think.

> 
> It's bad for TLB locality too. Sadly with all the fine grained protection
> changes the 2MB coverage is eroding anyways, but this makes it even worse.
> 

Yes, that could be true for .text.hot, depending on whether the hot
functions are called from all over the kernel (in which case putting
them together ought to be better) or mostly from regular text within the
unit in which they appeared (in which case it would be better together
with that code).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200804160649.GA2409491%40rani.riverdale.lan.
