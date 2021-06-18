Return-Path: <clang-built-linux+bncBDVP5PWXVEHRBZNDWGDAMGQEY43H2EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 010993AC57E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 09:57:26 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id i82-20020a1c22550000b02901d64e84b3c9sf1801540wmi.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 00:57:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624003045; cv=pass;
        d=google.com; s=arc-20160816;
        b=PCxodmS1L3YdEJJx0+9pFpDZFxY4HrW2kLWJkENEEkrUwH84yfY7XVbLBqOufbE/Sk
         e6HJZjrfsrke6AdG7uzw+D5RebLbVdyFgcR4hUQFnM6OwRQPU+D0FR8xlJjTVXgynO4e
         VQPrjoJwegixRU7+mkZgQRiZ/0pfRueiXc2lrUuo7o1/rmAXySuNpr827bhCa8ZxTmAA
         JXt2fxDG+kT6of1WMScclZGHLG61epw06ydrnMdPes52BFcdtXmMrEYvD8yYWw2Om/Bl
         RrojbvsuVxPtQpdmMhiwBpR1LX4R2xRsrU3N5wYLSqmu9xhmZK4WpfPlWqyrhw8KTGj3
         LrnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2OWdwXM93mho5MxFRu5KsQAE3o9jI07BWPUruS+Gdy8=;
        b=fvTLTPrXmZXwVsd+iH3wKymE3PYeHCy7ciLy7wCni/Q7zVJfatYufVgsNz500Vg6U1
         4S1QPdwEbkwmkBNbC/xOfz5f/bYbF60J89UjiRQxsCMcFT1U8C6yEWJKw/UBGeErzz5s
         q4KFN/stnFt/vEd/lQNrVnwpdokp7KsEb7hVWPnfQfiWlA7H4vSb2CxIv2z4oUmIXEAe
         LrJIYdc4sSP6+mV5BBsYaOv3jM4liqh23Zgj25oQ5xcP6vcFBzfyIszDMgIxKZchzJzp
         sxXEH8tbPin8ozHZL9evXyxzBW9fYt3JvxQzTGnsWRs/kVGHvAGy9DWpqk/CnfldA9U6
         VEUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=NlPIItnw;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=NlPIItnw;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=BWmbx4uW;
       spf=pass (google.com: domain of jroedel@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=jroedel@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2OWdwXM93mho5MxFRu5KsQAE3o9jI07BWPUruS+Gdy8=;
        b=XskBRCmEtqp6ZlsL1e3WGPh5JZUaMDcWLJ4wr4f53rnpYlriFTvSO2jFW0wOXOTLH6
         Dey6AgBuSPxIDtjk9xpWUS+/U1D1G7hqEvuaofiYrgM0QGFbz+9c764SPcjXKron2voP
         cwUJpWw4hd9tS7yuRw9Kk729Xf0msZYXY5kT4Qt6Uv4A+v3f8M9nksPvQjasREc4Ua0n
         uJEXUqbW1DYNWj3n1m6r66djgOTgtVsjovjjKch9SutSDQJlKxM2gayLsdBNwHnfmTOM
         cBGJYMtT3SW7/OlHa926nKTUWu3SB+7dCRl+Y/01tXy2fJFRNqb1MB8MUe3UEUrZOHRr
         fwJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2OWdwXM93mho5MxFRu5KsQAE3o9jI07BWPUruS+Gdy8=;
        b=OJIK9X9NRXkFAxe+IsD3vXulOk03HgMxtKeSdxkukQeicQEPts9XeQFcDRgZ1aegLC
         Xk1Je1dYUIbXGubt4lzuKGZ9zZv13aD6485/ItL8U4ePPqlSg9slx1a0CC/vsb5t+QB9
         bxXoB+YwQc5mKi2RG8c5E8E/zFHVuLgkIfNOHZYjrm6FZAYfTxpZIHFEfVceLhoHQVYv
         7yumrHWvygl8OuSZ3CNSa9h5KJ2475Qsy1CheQ6aEzEXOIE56JmepjIz72ej8kpzAKWO
         pvKCzdzL978Q2jYPNRqT3TSCdCrS7KiW3/LaFMcOfjsEerjdi5LAsdYivskokLEgnh42
         MCKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531O3oawOPic6LMC+3y2bxIT1YY6/oKnCLXphzRcNkL4tDx1IqtY
	iCBPLT62hPb7LXGEZ7XBdc0=
X-Google-Smtp-Source: ABdhPJyRXPhLFMQnZY6FvAA5MKYEPVY39RIgrSFf+Zaryc6dTj2bsxqnVKBr5EC0IEc1wScSUTqmmA==
X-Received: by 2002:a7b:c189:: with SMTP id y9mr9996410wmi.106.1624003045714;
        Fri, 18 Jun 2021 00:57:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6945:: with SMTP id r5ls2000207wrw.2.gmail; Fri, 18 Jun
 2021 00:57:24 -0700 (PDT)
X-Received: by 2002:adf:f445:: with SMTP id f5mr4665813wrp.264.1624003044846;
        Fri, 18 Jun 2021 00:57:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624003044; cv=none;
        d=google.com; s=arc-20160816;
        b=R8nKeFq2yONfExQmODxVl0JXzwDfPdrrkQtZp2PoA/1C2ZvGpp2vfnm7gFBwOY2owj
         IBwtf/NN42qJgfZH7+1ISnJQvvKT8EvYk+oK+sYRBy5PYiiMiOy8UqSnofcS3HqkViNB
         Bm32RDTJy2jGj7T7mVUlvUrk58TEyTABnjZUjHaRlYSbKf5t7hQWCqZg1gg4OiAH8aps
         L4J3CtNC65JQxOqvZ60unkPxp6NGBHps8tERR32xOKvM/bL0AtXxWS3CiMCx+6PlB/F/
         04y3QSAd0Iwk6U+Yl4L376Wor2xO2wJJVmNWsBzIN8aCxrXv+Mx/NMHeWyE56IfwiLxA
         nRYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature
         :dkim-signature:dkim-signature;
        bh=00PGLHSy+8q9cRmQ8fgZXfLgJHGTi7QAl5WB49PoiEY=;
        b=YXzJFjgPvNKlf+NtlizY0K7Yo4C4R2yTnGI+EmGX0WqGWbJ9XNZZnIUW6P8gNUAaJw
         FTRCMzohZ1dL8MAPxVa1199YNGcWP3YkeOtMJtRsSmGKgYz3QPlqIdHg7eUetiM+gdT6
         m98nWHJclNyny19Lh25jar3WL4O3BJ7g/4Rtl3qlbAUQQ/B+oTUrTVVK/KLJkpeHq5un
         JJpzIDoeZf3Zz2nOhjCpizixS8xB79k6yEcxzrAvnHy9/+d6xChDAFjp1BiX40sKs4AL
         eIPx0k7GL9QpU3DqYMKboSN1urZ2zQYhzcx44Fh8pUF7dZOMz3cCBFxULm7V6Wp1Ukjq
         D53w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=NlPIItnw;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=NlPIItnw;
       dkim=neutral (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=BWmbx4uW;
       spf=pass (google.com: domain of jroedel@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=jroedel@suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id q22si68130wrz.3.2021.06.18.00.57.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 00:57:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jroedel@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 7B5AD1FDE7;
	Fri, 18 Jun 2021 07:57:24 +0000 (UTC)
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
	by imap.suse.de (Postfix) with ESMTP id 1EB6E118DD;
	Fri, 18 Jun 2021 07:57:24 +0000 (UTC)
Received: from director2.suse.de ([192.168.254.72])
	by imap3-int with ESMTPSA
	id mCyyBeRRzGCGVAAALh3uQQ
	(envelope-from <jroedel@suse.de>); Fri, 18 Jun 2021 07:57:24 +0000
Date: Fri, 18 Jun 2021 09:57:22 +0200
From: Joerg Roedel <jroedel@suse.de>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	David Woodhouse <dwmw2@infradead.org>,
	iommu@lists.linux-foundation.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] iommu/vt-d: Fix W=1 clang warning in intel/perf.c
Message-ID: <YMxR4ggRGZQZbiz1@suse.de>
References: <20210617145339.2692-1-joro@8bytes.org>
 <CAKwvOd=8jUsRFKg6+sqq2-DakbRBGR6Z6mR_smuxp+cMEmCHLw@mail.gmail.com>
 <YMuw+LtM/B1QTTJI@suse.de>
 <32f14288-315a-b75d-913b-2fc6a16cd748@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <32f14288-315a-b75d-913b-2fc6a16cd748@kernel.org>
X-Original-Sender: jroedel@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=NlPIItnw;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=NlPIItnw;       dkim=neutral
 (no key) header.i=@suse.de header.s=susede2_ed25519 header.b=BWmbx4uW;
       spf=pass (google.com: domain of jroedel@suse.de designates
 195.135.220.29 as permitted sender) smtp.mailfrom=jroedel@suse.de
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

On Thu, Jun 17, 2021 at 01:51:24PM -0700, Nathan Chancellor wrote:
> kernel-doc is run automatically with W=1, regardless of gcc versus clang.

I see, thanks. Will update the commit message.

Thanks,

	Joerg

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMxR4ggRGZQZbiz1%40suse.de.
