Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBMNBWL6AKGQEWEFH7VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B901291904
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 21:00:03 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id 41sf4873838pjz.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 12:00:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603047602; cv=pass;
        d=google.com; s=arc-20160816;
        b=Osf1TIy/DV/Zcc6f4QQVWrhjf+Jo5OCv9vNjRVjjyA889cUdVydmF4bVLIA3GvgygS
         IWLsF+PZhgq/OeDq4CpMT5hlR0e1YiGymM3ukI7Y/JCyBbUUhHA3P9xjATai95i6Z4t+
         AXbZK4BYemRSV26dNa6PYu2czfWJNczdaZk8cwJmr+YNT3m/LDgswLi78CEoqbIX/cVO
         FjpwR/KGEC/Ib3A1XuZTXfshTneoFFD1EAKTovX7EJt5d6Y2cNDagWkTk7+sDdOBlL3c
         yxAQw+Ga9K0ofwHTDKj+K29vaxUOZqywOeb3AhJ2lL5Yc2uyrR0OWWC+KMR74h8k4nSu
         oBcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iItHVi+oty62ywDwdVGq35ijvP0m6SGGYRJk4MLoa+E=;
        b=Wa/FmDFqdGHBKeKQefbX8d/Cdg/ZCnDS73PsQa5+VgxyKKRcA4h/isWC7MRpjwdtAF
         XGL1vGSIopiW4w+XH+M9bLoVHE8TZy266aECJdYIoZvwnoDJucHrwLy2P1a7mCTjxkGN
         IpsgYCDB/FTPAbftFUOMFKSdoMDhLNMKEYtAUO37qmG1ELulChYFMEtIOKLp86NARz8e
         zyoRw9C5Imvdb0ZOCJ3RT/64rNVV96FUhaCfsvnnDRmNROaOa7RNv3FowcW0HieyEIx+
         vLJFl5R022tXrtVSQy3EYCOKJSEUJsQpvbhy+lF8IXkROasKIP4gC5k63Ew7YjmQnMD4
         ERlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=qhWiWAYm;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iItHVi+oty62ywDwdVGq35ijvP0m6SGGYRJk4MLoa+E=;
        b=gj1A5FTgxBhrvdeZNNP7XKzMszs0HnJY2ntX2YFEiIgXXcpnSk3qLjixCrDdWlTGVo
         eMkub8ysOCxCDe3YF4aN44e1oCyR/l72zcGcGTw4t/UzICIuuoHPA3RWaHftj32nz3Ba
         4DGdtiE8CekdIp4++3e1Ma+iCoH0a8x064K7Vl811IhhJ3ts45vkjrG60DwYXvT5/tQ6
         R0UiI1NwcjsRBbriUdjfjbVziDuOFQZ2FHQyOC+xZaqgnJ8IZLuab3xANlCHoR9tlDus
         /+Brk443tOdQRp0+BGbwA0axNR7teaVv8MYxZlCdsl+xY6LPJHWypdt6LGoULTCmVVNU
         dMRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iItHVi+oty62ywDwdVGq35ijvP0m6SGGYRJk4MLoa+E=;
        b=CHO2TwpkHHCYlZsrv7ql/aKtQDc0J/nr7IUDVH+G0+Dm3MBGuXEbRDOo/R2Ng94C1W
         tb5AyWPmTW6JoY0tvovHcFKWNIX3nlU2VsNpZtzPabwa+sWGgrxiB7HKivw9JbrPHr6E
         uRWXO0UIKPIgPVU/3+/ouiTDR/xyJhv9SM2chD+z0W4f5msz+iF7mPHaYeyfmRtHiJTX
         Wg1VKCT6Vs/OrAz757MUc4whF9mA7XrqryebT6hwPtciCnl6pAZP53vKKQVM2L7nPF2G
         nMFGEGdhwF48wWdaUsAXAaXMEul/2Y/JTcxKZfQaHI+r3Eo2w7lb1ijgNG7mgpPLn5Zw
         k7VQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yvRLs2bugSaOdblS4iWGUgVXMrnQyl5CeVOaJohSJ9SctJ5lT
	4MB+oolJvVtqruOGj7pZiAU=
X-Google-Smtp-Source: ABdhPJx1NIKZG55d2Jazq+ac0oS2uWgcXF619ZzZf+kv0JWETMI0nwwSEf4iaScIXt5KPYVhjrF8yw==
X-Received: by 2002:a17:902:b58a:b029:d4:d44a:f56d with SMTP id a10-20020a170902b58ab02900d4d44af56dmr13818004pls.7.1603047601788;
        Sun, 18 Oct 2020 12:00:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8edc:: with SMTP id b28ls2003349pfr.9.gmail; Sun, 18 Oct
 2020 12:00:01 -0700 (PDT)
X-Received: by 2002:a63:210d:: with SMTP id h13mr10678387pgh.280.1603047601040;
        Sun, 18 Oct 2020 12:00:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603047601; cv=none;
        d=google.com; s=arc-20160816;
        b=lPfMby83bxdF0Wg4YQEl1TtrFdi33h2+ZcpX+x0y1fj9i2xGaB8aJNXdLT9MHfVA7T
         xM5T0M1vZyEBFfZu7511aH+auQKvRI38u+NJB737Wl1yDxKT3OzesFB/1+neI4WwjUyr
         EZvLmutEpeb35x4AVUG+HtXRdh394kYKiDgvb3ebn0pV/35aCjl2M6+tMmEE8v7fi42f
         i8dehr0g0DEw510KRvDDvZ5dY545003aITFI8pxMbdJK/WDdHo7Xne1mFAX6SfMd31Ik
         yO27kcdgSRoasvPQMnb9Bpq5UjLuSu1NW0QRwP0Y2aqYbhMygA1KvZK5HxVyBDsT0GzA
         QvaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q0BhqrN3gbd6Z80uxUuHxnuOGNa3MQpvn/ujKpbjoKc=;
        b=XnRO6e2hjI1LGeNujMNIx9cxtvCgHOq9AgOjkhU0b1D+eMhRWADMJXf/trFuQ4u52n
         lNCSZCFvJrJUip9rs8UFrZGHR8HHXrZWfkbz1VailPr4an92WfCIQbBfdDc5sh3i1dUP
         /QPXNkeTKxF/X97CGGOtq0ljnxj7mI+0TnWVet8T9v2K75R+2lIeIj/o9FoTe1yH9jN8
         epvICuRAKTcVLURaj3x6Eg4KC11A6MeUMTZsbQyWmmH4rLkuh6uYt9E+9pOupVGswP7q
         Dwn13zujY4p9h7MGCUXVsMemh/PlasCL90VEu6og/EO6omRq2dH6rRHCIg3lzde6OGKn
         pnyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=qhWiWAYm;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id j63si231517pfd.1.2020.10.18.12.00.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:00:00 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUDuB-0007Wk-NT; Sun, 18 Oct 2020 18:59:43 +0000
Date: Sun, 18 Oct 2020 19:59:43 +0100
From: Matthew Wilcox <willy@infradead.org>
To: trix@redhat.com
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
	clang-built-linux@googlegroups.com, linux-iio@vger.kernel.org,
	nouveau@lists.freedesktop.org, storagedev@microchip.com,
	dri-devel@lists.freedesktop.org,
	virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org,
	linux-mtd@lists.infradead.org, ath10k@lists.infradead.org,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-stm32@st-md-mailman.stormreply.com,
	usb-storage@lists.one-eyed-alien.net,
	linux-watchdog@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-nvdimm@lists.01.org, amd-gfx@lists.freedesktop.org,
	linux-acpi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
	industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org,
	spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
	linux-pm@vger.kernel.org, linux-can@vger.kernel.org,
	linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
	xen-devel@lists.xenproject.org, linux-amlogic@lists.infradead.org,
	openipmi-developer@lists.sourceforge.net,
	platform-driver-x86@vger.kernel.org,
	linux-integrity@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
	netdev@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-security-module@vger.kernel.org, linux-crypto@vger.kernel.org,
	patches@opensource.cirrus.com, bpf@vger.kernel.org,
	ocfs2-devel@oss.oracle.com, linux-power@fi.rohmeurope.com
Subject: Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
Message-ID: <20201018185943.GM20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201017160928.12698-1-trix@redhat.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=qhWiWAYm;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> clang has a number of useful, new warnings see
> https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 

Please get your IT department to remove that stupidity.  If you can't,
please send email from a non-Red Hat email address.

I don't understand why this is a useful warning to fix.  What actual
problem is caused by the code below?

> return and break
> 
>  	switch (c->x86_vendor) {
>  	case X86_VENDOR_INTEL:
>  		intel_p5_mcheck_init(c);
>  		return 1;
> -		break;

Sure, it's unnecessary, but it's not masking a bug.  It's not unclear.
Why do we want to enable this warning?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201018185943.GM20115%40casper.infradead.org.
