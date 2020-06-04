Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEMN4T3AKGQEALNA4CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 818C11EE6B3
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 16:34:59 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id p7sf4691675qkf.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 07:34:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591281298; cv=pass;
        d=google.com; s=arc-20160816;
        b=GvIVt2cmYYxV8ajHXxL23qP90Beb01lSIXZS+HpWIbYULZLoRfyD4aAuZkK+NIZnng
         N5DiuTYDBJLFCrIOi8zJ6X6oIcB2PiAsXWvIFViP1O0r+o06J77ECEWT0gS42u5oK26L
         EtIz4kvtU1//3vzJ4Hc/mq+ut7V369TSIxe8iS4qmiqh2J52HCIZtJ9vqnr+adFaa2ga
         MmjCun7871TnZ9EkZQ8oMg6tKbbewO8TqowT6rw97MuP0EAYTLcJZlbL5HJGALMKOdY0
         VGDSQ7O6q6nvMFndgCs5VK5csC2ytbvWNP67a/k1tPp8Y08SPF2oCK1WIgJKomS0fvW8
         j4Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZcNWbJBhcG6Gx1hpqViqZRixPIbSWjQwWc/iTlMjVEY=;
        b=yqvnWaU7zhh7XhnzCXJYY6WiUbkfpAoLqpebeal1LvOBlgYxjRk7xUkarPrmBAG2n2
         WE6YKU++BBukCuU2Z0Rdy6ZWY6ZA3Jv7g0hYx4xGmx/mrqss9HHi7wcxmjstGcToNYRO
         qOa4QM+zaS/8RXm7Lu2oXH8Om5lySyYveajNdPcBaHs632djZwq+xsM520uvIPh8vvDN
         1vfzyFf42gZLq1b4Qn694L+9/PVHdjpRI6Gyz2jQwk/THI7Iwu47xLCh0tRYMsIP/c3u
         QLwnjFwQdaLU/xjhpaSw5uH+ITiS9aBAoTgpsJg0c4KiNP1ctuKIVqlDvkqRt0Qp1AGm
         6ouQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TjCwc4Gl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZcNWbJBhcG6Gx1hpqViqZRixPIbSWjQwWc/iTlMjVEY=;
        b=gEJ8lBmh8FiaeAa6wx9WBvHQOrd1pJXWObTYxwG4FKa5655ep8RqUEhkqhoI5Ai7bH
         I4nqV5FKlrOX9DuTnDm6+z596quaOb5WJ1Gzc4oNL1W6aJgcLnRg/oB4rHTvKuW2uLSN
         jSXOmTmm3nIMmaN1MRdwtFVP2GE+KcalA7aLefx7/D6pqncZDSqEy/R72Lg1ZzPONDr4
         STzkgG55MsSv/ykOLocoIA+q8/XGugKHvJljwUW4JppW2qVQfKbR9XgPlKDdTXV+n+lo
         +XH/ocBVIUN4RCz/9snyzP4gWd6pFIfOOS+AAO01iQE2S5Y6dmQck+vhZxADFpNUCPAP
         lh1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZcNWbJBhcG6Gx1hpqViqZRixPIbSWjQwWc/iTlMjVEY=;
        b=mZUAJExewahrkdGBT0gyDYmnok6TUBToo/t0SJaXYE0+p7gioNt4kSEelZB9HI6Jxf
         eSkYk4zhIRi1nZRiQJu3shgXWlh/cQnnTg/sIlLvCwnmuiigdKEYTG/8MiN6SMomvtdA
         Kj7flIcYTC/ETBFm74KDBib+NSS+FdPpZS9TGnoxbxV2BSF85OiHMorLlSRvlk71aIUL
         OzhWMWsv0LxpzRz2XV6YkInBOexuyHuV+a8by4uzZKgGBUWdEHBOpoXvDAjHfxcbmwO2
         E+2HkVln4Kj/qokCzc7/DRE18vHx9iQ9KDAY/HJ7Mu7yRAMnbRmu79AnAGLlBIQ4u08Z
         4kSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IWj+WmIHDewNhbAj2kwJmStemM2iOhlJwv0u9gN+a96LXI+sv
	mhhvg/9nNpaG/aRbbRsezB0=
X-Google-Smtp-Source: ABdhPJwyUFg5eQaS/cYf6JvW2cDMfV8TLp86IVfNhmA60Vs7lW464bdsh1zhjG6uajACOYMt2nW/Ng==
X-Received: by 2002:ac8:2f7a:: with SMTP id k55mr4934312qta.34.1591281298130;
        Thu, 04 Jun 2020 07:34:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:5a3:: with SMTP id q3ls2773515qkq.2.gmail; Thu, 04
 Jun 2020 07:34:57 -0700 (PDT)
X-Received: by 2002:a37:64d8:: with SMTP id y207mr5047338qkb.2.1591281297745;
        Thu, 04 Jun 2020 07:34:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591281297; cv=none;
        d=google.com; s=arc-20160816;
        b=YEQGYjPitQnN9RrStQa5r6Hr6nefWWaHy3lPDN07Ld0NiLUC0I+/Z+OD6P+UOdRBrL
         tHOghdnhVuYdM/a3RCeIiAsE/v/eOPn+mZYnGxb4Qt/FixCVkdnvXWExC/2R9GjicUlO
         XXVDfb4LScpo6uSwjMRP7VjrByPkH1joZ6I+Cndcn1sgvt7Cmnh3QWMwcaicYwd+Jrrz
         02Ep9Z7W8V/bbC3H7FzJQvtReqCiX+zVpODvFa1LvAJZnRLadp4IopddJ5PL0XzdqoKw
         HqaswR6ledFTB6CD3KvRaRvvJjzZjYVU/+ieH6TZN+Rkk8XV7By73OOXYClWklendPqq
         feOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ove4i1/jldMZ8oj/uY7NqV8r09suzUfhCHwuSYH9N6k=;
        b=TITVfwBgeWFj3r5Gs0gOoKZR61d4KacNg+EopTRNofk3TR/27DiF/yDKMh01hKlDPJ
         lWkc8TfUg7fiiLoRTXi/h8tzaGvbe8Eym+4XzGZtmTsFCpwhZRYqmJwx3f88upWZ401I
         21cFMfx76Hjs3M4I9l+SZ3HD7atLhE1irxS+vceYy7D2OYL4rRvMjvWuPj7HQPz12YA9
         G4BCjnO900OwwJpVCxj455q+O/IcN2I/8RpZ+pxBgKWX11hYrAvOjc1IyOqbRWuTTMbk
         3MiRKJGoe2jkEG692HK/JrsohvbbEU2S39vbbHQ6/SOjPWwSrIV4gDAfnN1UTX7+ILi9
         NFag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TjCwc4Gl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id x74si340969qka.4.2020.06.04.07.34.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 07:34:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id v24so2252534plo.6
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 07:34:57 -0700 (PDT)
X-Received: by 2002:a17:90a:950e:: with SMTP id t14mr5847304pjo.99.1591281296926;
        Thu, 04 Jun 2020 07:34:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q8sm6069346pjj.51.2020.06.04.07.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 07:34:55 -0700 (PDT)
Date: Thu, 4 Jun 2020 07:34:54 -0700
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
Message-ID: <202006040728.8797FAA4@keescook>
References: <20200603233203.1695403-2-keescook@chromium.org>
 <874krr8dps.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <874krr8dps.fsf@nanos.tec.linutronix.de>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TjCwc4Gl;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Thu, Jun 04, 2020 at 09:58:07AM +0200, Thomas Gleixner wrote:
> Kees Cook <keescook@chromium.org> writes:
> > -#ifdef NODE_NOT_IN_PAGE_FLAGS
> > -	pfn_align = node_map_pfn_alignment();
> > -	if (pfn_align && pfn_align < PAGES_PER_SECTION) {
> > -		printk(KERN_WARNING "Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
> > -		       PFN_PHYS(pfn_align) >> 20,
> > -		       PFN_PHYS(PAGES_PER_SECTION) >> 20);
> > -		return -EINVAL;
> > +	if (IS_ENABLED(NODE_NOT_IN_PAGE_FLAGS)) {
> 
> Hrm, clever ...
> 
> > +		unsigned long pfn_align = node_map_pfn_alignment();
> > +
> > +		if (pfn_align && pfn_align < PAGES_PER_SECTION) {
> > +			pr_warn("Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
> > +				PFN_PHYS(pfn_align) >> 20,
> > +				PFN_PHYS(PAGES_PER_SECTION) >> 20);
> > +			return -EINVAL;
> > +		}
> >  	}
> > -#endif
> >  	if (!numa_meminfo_cover_memory(mi))
> >  		return -EINVAL;
> >  
> > diff --git a/include/linux/page-flags-layout.h b/include/linux/page-flags-layout.h
> > index 71283739ffd2..1a4cdec2bd29 100644
> > --- a/include/linux/page-flags-layout.h
> > +++ b/include/linux/page-flags-layout.h
> > @@ -100,7 +100,7 @@
> >   * there.  This includes the case where there is no node, so it is implicit.
> >   */
> >  #if !(NODES_WIDTH > 0 || NODES_SHIFT == 0)
> > -#define NODE_NOT_IN_PAGE_FLAGS
> > +#define NODE_NOT_IN_PAGE_FLAGS 1
> 
> but if we ever lose the 1 then the above will silently compile the code
> within the IS_ENABLED() section out.

That's true, yes. I considered two other ways to do this:

1) smallest patch, but more #ifdef:

diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
index 59ba008504dc..fbf5231a3d35 100644
--- a/arch/x86/mm/numa.c
+++ b/arch/x86/mm/numa.c
@@ -541,7 +541,9 @@ static void __init numa_clear_kernel_node_hotplug(void)
 
 static int __init numa_register_memblks(struct numa_meminfo *mi)
 {
-	unsigned long uninitialized_var(pfn_align);
+#ifdef NODE_NOT_IN_PAGE_FLAGS
+	unsigned long pfn_align;
+#endif
 	int i, nid;
 
 	/* Account for nodes with cpus and no memory */

2) medium size, weird style:

diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
index 59ba008504dc..0df7ba9b21b2 100644
--- a/arch/x86/mm/numa.c
+++ b/arch/x86/mm/numa.c
@@ -541,7 +541,6 @@ static void __init numa_clear_kernel_node_hotplug(void)
 
 static int __init numa_register_memblks(struct numa_meminfo *mi)
 {
-	unsigned long uninitialized_var(pfn_align);
 	int i, nid;
 
 	/* Account for nodes with cpus and no memory */
@@ -570,12 +569,15 @@ static int __init numa_register_memblks(struct numa_meminfo *mi)
 	 * whether its granularity is fine enough.
 	 */
 #ifdef NODE_NOT_IN_PAGE_FLAGS
-	pfn_align = node_map_pfn_alignment();
-	if (pfn_align && pfn_align < PAGES_PER_SECTION) {
-		printk(KERN_WARNING "Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
-		       PFN_PHYS(pfn_align) >> 20,
-		       PFN_PHYS(PAGES_PER_SECTION) >> 20);
-		return -EINVAL;
+	{
+		unsigned long pfn_align = node_map_pfn_alignment();
+
+		if (pfn_align && pfn_align < PAGES_PER_SECTION) {
+			pr_warn("Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
+			       PFN_PHYS(pfn_align) >> 20,
+			       PFN_PHYS(PAGES_PER_SECTION) >> 20);
+			return -EINVAL;
+		}
 	}
 #endif
 	if (!numa_meminfo_cover_memory(mi))

and 3 is what I sent: biggest, but removes #ifdef

Any preference?

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006040728.8797FAA4%40keescook.
