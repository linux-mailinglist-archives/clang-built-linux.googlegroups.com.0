Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBLPY5H6QKGQE3ZFLZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B052BC641
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 15:56:45 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id e15sf4182994wme.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 06:56:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606057005; cv=pass;
        d=google.com; s=arc-20160816;
        b=X5kprihSKq5f/hFCFBUc/yntnJnBdFeMhiUhhnUAXUshObXZtHtnBXivsBcShdIIm8
         OIIlAZGhtNIO61fCJVQEqT5snS2DaIgNa7A+fzpxEjZU3LxQnUEbqGoBrNu1le86kjSp
         TKnwx6VpCk+YCzU9oPIgHWS971mmkVyXAxcNJWoZrjKnRakyt1USAF8WNbNShow4FsoP
         meJ2reHnFJfTV/JZ6q+RhhlpotTzEynhQZhw9onyE+aavqOKwoWPi1khFbVL1LkljLaR
         A2hO6e8ZOBvsLoSCA+6RbkhNMHwJdQoEO32xbBpYQCMqLIZQNaFQvIwiRdtomUPJwyr+
         ucWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5sSeLvoy0zGfGPM4RhA8w69LPDbuYGCNqRNzUL/kdgk=;
        b=NCT+VnHNntaWpCJJym2WoZzLMDJy7mAsCRG/idsP4BxtWRMioUzBWkS/92K+tLnZWi
         v5MpApHAqViEOJhfOzGhMkGXfYGI2R2VCg3bFRc3DvL06dJTqhUhhogxAlGQoOXZ+JeI
         N84bSSncTSu8gtKFoVunMxH6qdgRsF9Tk19g80c5jP1aofELSZeCD5quuT1LKV2i1NfN
         xsw1gknyy9NiM9bkATVSSTJxyFQ854oD5RUkGW+C5Ep725p8CIqgH85MMgTmGRFabswH
         olwiCc/Mjr5TEBZVoTxLy25MLTpy4Eew2tRCWwVpZMO/TLDgLDFOyVA9hCT1UTRuuOWZ
         PZNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=IHdP9cS5;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5sSeLvoy0zGfGPM4RhA8w69LPDbuYGCNqRNzUL/kdgk=;
        b=SPgTjQ47fIGX942/TUooZ/Iu3oDotLoTfmRMlZVGGn80Fec7QimX9eWcZ57qT/oR5E
         4Jwy00ubSVHboqKDT5wos90UXtiiLLoo3T5lj8PAv4TYZT0O77Lr+8VPpYm799j/7u5H
         iRt2PP+X5X7FTV8fQgFLtpE2WTHHdvMvLerkmaLWGc8HgR67LaUFwhnWGIzworaPyaaG
         r0MbR3Vkv2ferq2nQ5FktaR9AuIaqFPAk1ibUeMfxnPjrG6g5U16fBGBGmLmWFfiH2oO
         tzFjJtX53uifPK6X8IHiJgDHirpKVqxdXZdP+Dxu0jyja1KdcbAf6llwoUfNt3PJT0FQ
         UUPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5sSeLvoy0zGfGPM4RhA8w69LPDbuYGCNqRNzUL/kdgk=;
        b=XKVROeoHqYid6ojlo2W6K49dxgIqr8QTH4e/uf+w0XgSQKPMYuN/hFk4CYo59+pgmj
         8SWw709i5txBHNI9HRyub1WADV7xxK0QywuYCYsYDgU9t3p0dm6YfmqopjQgBRwXqTp6
         /3oe6/f3P+T37iWPut4gvTnqfAGyr0+HwjYrQlLGSjjMNXpUVckxPH6Xu9VY41KqOGtQ
         5DFoYUMexv1R0NTsc8NcJOlexTgM+XMoCIhfaLrYfkP7fwREWkzOTMV16al0K+9UaiZq
         fIVAmXBCXKu1ucCiqsU/0VMHyNf9UuhKy1Ie295l95wEr05B5ACslUpokp4LWFgGjJ+N
         nPjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VRtBV0v4tzkF6lE+obKFUa9bk14CnU1lfO4Vwj474s9O+tad2
	UNgXiTQGAdN/ip98bQ7yY20=
X-Google-Smtp-Source: ABdhPJyZXOkkfnE3EOSY3HPMM7CnYfTX2P42dYtIsb1L8HWVJFGNUFYZFZC/9B7Q+vxEr1qPIZFL8Q==
X-Received: by 2002:a5d:488b:: with SMTP id g11mr28106573wrq.210.1606057005406;
        Sun, 22 Nov 2020 06:56:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aa87:: with SMTP id h7ls4461721wrc.2.gmail; Sun, 22 Nov
 2020 06:56:44 -0800 (PST)
X-Received: by 2002:a05:6000:10c9:: with SMTP id b9mr28135617wrx.251.1606057004594;
        Sun, 22 Nov 2020 06:56:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606057004; cv=none;
        d=google.com; s=arc-20160816;
        b=R+t1amWJyM4e6cGiKw2Y7LBVblEJ15DIEmunNwApgfd70ycy0u5KG9SRURvdNLsUDs
         qQ2crSI3gRpSvExj81T4uKR5oOEAWUoG/LpVyoywc6A0RM4++FrMjE3SfoaVA2dUbzA7
         DsPWxEMcJaqO050jLGaA7cnII2r8hgryKhtT1h/q0NWDjxbqU5o/SyrUKYsmjKLOG6Uc
         8lqoZW81mSaVuc7fMGx5FGBB+rYxoyWHG7npgdJ5S8n1IGtzrQWi8p31UeUxQmzc8Pm5
         JjbVNBaFI7t3kKWPlHnVH0U5R+r89vz6M+y7Gk0Yfl968P39GFRpnQhQ5p4tpbUtS9I7
         mPAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wxlelFGFCxCiVSAw6KoblZyEK+s/RwoBRdtshdQHcTA=;
        b=F8a9e2wZETAYS9oZo2H/Hj8Tj0NzY2yK0tcFkl4EGWG9XV7STxo07at2PoIQLT8oux
         jUl/rQ4SvUejPZ5O/70LKhqYRkVJ4UeH0xtm/xqwdiULVJrKjWJwifEtVPwLNSCNozVt
         qcSC+YthvSqpn0ee4C8r52cwHBnq3RGNVKUAFd4R9lCR2EAnVuOt95DdWgXPGivcA1VB
         TFgwxhX4Cw0WyNS/TxYl9yizvGLsVAmxQ/AfSzuksIHjHP5cl6u7th3mk4JBUbdwtoTJ
         i7niqvDupf/GAvBujA4OKZd41ZryReDUGPh8mi22s6hw6RK8NTxzKvlEWwutzWis1iNP
         RnLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=IHdP9cS5;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id o187si45586wma.2.2020.11.22.06.56.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2020 06:56:44 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kgqn5-0000Ms-Pt; Sun, 22 Nov 2020 14:56:36 +0000
Date: Sun, 22 Nov 2020 14:56:35 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Tom Rix <trix@redhat.com>
Cc: joe@perches.com, clang-built-linux@googlegroups.com,
	linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org,
	xen-devel@lists.xenproject.org, tboot-devel@lists.sourceforge.net,
	kvm@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-acpi@vger.kernel.org, devel@acpica.org,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org,
	linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org, linux-wireless@vger.kernel.org,
	ibm-acpi-devel@lists.sourceforge.net,
	platform-driver-x86@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-fbdev@vger.kernel.org,
	ecryptfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	cluster-devel@redhat.com, linux-mtd@lists.infradead.org,
	keyrings@vger.kernel.org, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, alsa-devel@alsa-project.org,
	bpf@vger.kernel.org, linux-bluetooth@vger.kernel.org,
	linux-nfs@vger.kernel.org, patches@opensource.cirrus.com
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
Message-ID: <20201122145635.GG4327@casper.infradead.org>
References: <20201121165058.1644182-1-trix@redhat.com>
 <20201122032304.GE4327@casper.infradead.org>
 <ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3@redhat.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=IHdP9cS5;
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

On Sun, Nov 22, 2020 at 06:46:46AM -0800, Tom Rix wrote:
> 
> On 11/21/20 7:23 PM, Matthew Wilcox wrote:
> > On Sat, Nov 21, 2020 at 08:50:58AM -0800, trix@redhat.com wrote:
> >> The fixer review is
> >> https://reviews.llvm.org/D91789
> >>
> >> A run over allyesconfig for x86_64 finds 62 issues, 5 are false positives.
> >> The false positives are caused by macros passed to other macros and by
> >> some macro expansions that did not have an extra semicolon.
> >>
> >> This cleans up about 1,000 of the current 10,000 -Wextra-semi-stmt
> >> warnings in linux-next.
> > Are any of them not false-positives?  It's all very well to enable
> > stricter warnings, but if they don't fix any bugs, they're just churn.
> >
> While enabling additional warnings may be a side effect of this effort
> 
> the primary goal is to set up a cleaning robot. After that a refactoring robot.

Why do we need such a thing?  Again, it sounds like more churn.
It's really annoying when I'm working on something important that gets
derailed by pointless churn.  Churn also makes it harder to backport
patches to earlier kernels.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201122145635.GG4327%40casper.infradead.org.
