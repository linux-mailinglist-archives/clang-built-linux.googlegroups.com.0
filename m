Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBNFT476QKGQELQNMNVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3D12BC347
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 04:23:33 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id a14sf5296381lfo.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 19:23:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606015413; cv=pass;
        d=google.com; s=arc-20160816;
        b=CIMaSWaoTrUBDfAnP+l1SYNwmgZmHMyNOzKymg4BFUd+dS54PuoPyA8HbotG6XuMXM
         vAzN74pmbrOmceZRRZCIHWo0HmCi/jn9352v2t1BWRAqTuO3y++f+DL8g8d8deLGkHix
         5s5WZHqEOUb+CgtT3sdnAdsysDFKE7CJBTYBVw4Ii97JnCZ4LYb45ImzNIKmitKN4/gg
         6/9LRnwcork40vN9u9aMvfkEL27B6z476ttZwTSUn+8T+e5gm7jIOfQRw5XvLYyvJuTZ
         mD5gcqitruZVPapXE3QwJFaTNUxUmCrbp9l6oD9v0vleR7OYBNSZLrzK1MOl/tN21LuS
         NQ7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vvLDJumc9PaKQXRQpVTcHfQj8+DyYpEzkJhIUREv++w=;
        b=GA8D+p6vXKc2HKx76pVkNJ6pK3QLiEHROXA/IiOhH4uTYMPpwuv1NILvHlc57Iiapw
         CO1xWEMmsxWM2q70ftoCjM+S/hZzksqpBA4L2I7hVPW6Jn6pWDNXrxYCGi5nvPwdV7hs
         AqNpBk7cCN2nYgFTUSU9XyGK0/5ymFAavXqPZubi4hHYleL1LlKE9mH/t2O3ytdMuUyO
         q8FV9rxdjbSJtKdR/11cisoGwq1WVjRwtycfNTH1bRgGGYoZcynisMmL+Ub2wHpl675y
         8hEtfRYT+70jkdBygqnfQhrdY14nA7VY7MyMt7UCp2zgavFc5KJa7hYM43UFSKdfebss
         2fOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=BCb+FFzp;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vvLDJumc9PaKQXRQpVTcHfQj8+DyYpEzkJhIUREv++w=;
        b=V65g+JKrvMjFe04YRlpqFLqoM6SrPZdwDPFpfKTuld86PpJFgMoerekRev0JAAUXq7
         Qi2U7sI6jtVeJf0PO/z8G3qc0ujpMEoGEGosMJf2WPj6+4uppRMzz+NVNhqlMe1xJ+jS
         oqM2lD0e2eNPfM/D8HzcgqipflLCwRnJM0b4qbErU3Y+5iKPfaH24EB2U6/NhdBY0wVr
         58h3MoVkTLxE5dePpEWbvxWnnEYam85cJQQeOpHfOFAgxEXObTHqsrBtqa9zIw5qJXby
         XLgEbEPrisXgQXjYpBAzxnuwEVxD4zEFrVS/OhmpsQaZDBVuXFJMCOdtTaOoUxNQICXy
         dkEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vvLDJumc9PaKQXRQpVTcHfQj8+DyYpEzkJhIUREv++w=;
        b=Ew+AD1YNKFZwegRo/8taKRrmTMGZ9SgSK0EAWOmM04xMtHsxgma3cb5EQIgR9602Hd
         3qB/us5FRgVmlXzULXG74thWrrtVopoW2h4eVpnzqhtlZuD+PRlPPjjj/xbYYhpj6fUF
         tII3Qr3Khl29hIxvt0RsOu+fHLP396niExRgLzb/0hzjgHOL4m5szcKYVpAMuoNOE8Ey
         qdSeXpShk1xFZOwCFif7NaBOq6hnn7l1Sb4zPjNUf2QXqk39v1X1qQ5cD8fSQNRIerrd
         wRMJGvrAo1cYxrusNb0ySdlXKJdQgHBy7dkJJP2+czyYQpgpOrOLn7k39LVLn+JjZ/J2
         +23Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VKRvwaQ4oPdxzzLCOcvtFpyl/6/KFUW7TFTtg2TGVCsZutwI2
	nxXRcdSaSVauvu3e/UeUrwk=
X-Google-Smtp-Source: ABdhPJzbSNiZDNiu+UKD+RrcOeMB34XHmugrGbadr5miW/sN/S8pe50TJB3fECmKI3evTR5J5O3SIw==
X-Received: by 2002:a2e:884d:: with SMTP id z13mr11269837ljj.88.1606015413295;
        Sat, 21 Nov 2020 19:23:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9848:: with SMTP id e8ls1631757ljj.4.gmail; Sat, 21 Nov
 2020 19:23:32 -0800 (PST)
X-Received: by 2002:a05:651c:14d:: with SMTP id c13mr1518493ljd.153.1606015412104;
        Sat, 21 Nov 2020 19:23:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606015412; cv=none;
        d=google.com; s=arc-20160816;
        b=QzCwD4mgqAC6y3soxr2aBx68GS8raPpjcpjZSluk6kDvk+CYDKdyhx1kWMWfabaGTx
         uFeF0l+8wKAGM2CZ/hHKOAaFeNHS/qAkyN2ZTLtwoNbpyoXEapjl25YSMuoFxTqZ5gsA
         XAAPFN5AosUN3dQdd/ZhSZfSsoo4B4o3IirykSnklq6aXZP+n1AhpOiG1pLArPIbYUPg
         EPJAvm9EQrlBaox05iGgIqBLTgW0LoZsgL5ajJvVGP8P0gevRHU6cvf5Rmif3q6/t/Ku
         cFy4q7SO+5Hj+O2HZ8AXTdyRjswVV9FPe3Rs5UfC+CYjSaZXDtVr+H/847++vCNM7zxO
         o63Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=t7P1qjxLtvKyLv5lupmc5Zc5j0L3lqaoBXMlGIL9vWk=;
        b=E2lwfjuS7kC8ymtWY95G3dseNKNdLP/BSb81nCONHMXSeajqRk69VAeYZ92SHZnyE5
         lzvGV+WVZto6zH49kmsJeiz2qRpCIY0evSN02KgLCHN0b1ekA+PV9GjLHTI2LHgcQSZQ
         Cp2mNltpKMYrv4UK0w7GzQUaF36mujI55T3B1tFePLIpVibSkLBDy36QaC/THpBFZnST
         CGX8a7eCS1Tj+tjsXN7KWJvWRlPNXRgUALJBFEXCEoxS9vgHpwzubnheBh8NHHmg8HeL
         axJQxcabFmmp4Q6ZGDdhmeYDh2TJoPLjCEUvTlUtkgobcAjegONXT0y/Us9mLlx4/73m
         2uMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=BCb+FFzp;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id e16si121918lfs.9.2020.11.21.19.23.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 19:23:30 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kgfxw-0001fc-2G; Sun, 22 Nov 2020 03:23:04 +0000
Date: Sun, 22 Nov 2020 03:23:04 +0000
From: Matthew Wilcox <willy@infradead.org>
To: trix@redhat.com
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
Message-ID: <20201122032304.GE4327@casper.infradead.org>
References: <20201121165058.1644182-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201121165058.1644182-1-trix@redhat.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=BCb+FFzp;
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

On Sat, Nov 21, 2020 at 08:50:58AM -0800, trix@redhat.com wrote:
> The fixer review is
> https://reviews.llvm.org/D91789
> 
> A run over allyesconfig for x86_64 finds 62 issues, 5 are false positives.
> The false positives are caused by macros passed to other macros and by
> some macro expansions that did not have an extra semicolon.
> 
> This cleans up about 1,000 of the current 10,000 -Wextra-semi-stmt
> warnings in linux-next.

Are any of them not false-positives?  It's all very well to enable
stricter warnings, but if they don't fix any bugs, they're just churn.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201122032304.GE4327%40casper.infradead.org.
