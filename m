Return-Path: <clang-built-linux+bncBDAMN6NI5EERBFGT4L3AKGQEQPXWCCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FC31EDEE9
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 09:58:13 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id u15sf1508563wmm.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 00:58:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591257493; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3oXZmisIAd3xRxnNPgPN3kq9J7rJK6MwDaDd4EhDQtKXnMW1jPfJnc4rVhwVinDbX
         E/wFBdXXQVXdciIDdVd+6qrfj4hlqlWHtqdGJ4b+Su93vjJ/0Oyd3hjwjH4ouDjaqigT
         8n725ZRyf7mh1WZpwZihs/phOsY1yn2I15hu82wzgCu5fMIobZl62mTPo089XHOc1G8W
         qZ20FB/sHqb/n4Q0laosr38cCdE0HzAv3pqU67SodTVwl2BzQ363ryEwG/MR7paKfo57
         tB4n9dRacrNUtQWXnaNh+SdOqndjie77pCk5EQLHB+vcrQsIWLzGErfnwpnrxVgWsSV1
         3u+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=2z9KChR1ldnG47MMoLMgQnn7d2eTmomFd/qtyaDBhBM=;
        b=E6gdN6kUGQCDG2pq915b6RuO68HHJikL5tj7vamiGHl/U02dKqVSTWWE6w0iSTyXe2
         txMzut56sgItWLhL0ElFJa+on+KHKe6m6jGl5skrWGPUXinW9OZQSDS6TQYNfadQ+LBt
         /L0P3/xd2OZG/g5bfTyrwVJoa6CDtFAiHedZNVFSMlg0CZKEy9GcR6pfDsTRHJp4HBdK
         e12KWuTYmcT1JI8BXMcEC1iS7gZCMyEr2eKTLrWZ8uJWQjQiDbvIVxFsZ5APyHSH7Djq
         2WRli5TInBccQrYe/twA20ECuE9QTtT/7BRj5/2FSj8SOBEK4Ex0PCZ5g15i4tlss+M0
         +4og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2z9KChR1ldnG47MMoLMgQnn7d2eTmomFd/qtyaDBhBM=;
        b=pR8MgGULAV3PfM1MtaunMnlFcreqvh/J1t6EUG8pbpV32c1h9od3DggfVhu7Zog7p1
         h76QkPSBL+DILH8rtPthWmpQ+0QLsocQi03G7bNZ9a9/sR/PfhPqyuoENrsMpsz/qbzN
         2I63BnTa7/nmu8F698vF5rLSozvv2jCy5+7ZIPN5gKk+HkASmx9nZmKVA9NLTbJo/b21
         7gVxLcLwlroNYA/lZmnKokyPPa15VFQ6CS7VVCevNV9uY5RHT3gJQhXFSy9lTBncOKoC
         nTp2lbE4B11ffB+5N25PauiBjG9UYMGIi/OAmjRdhwY/gCbBEcJwRTSpqgZEMeX5PC0V
         CtoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2z9KChR1ldnG47MMoLMgQnn7d2eTmomFd/qtyaDBhBM=;
        b=emm9/Oi47ZZarS5Oskzyr3D6WMTVyxWgokoxydVmaS4A6g6F0QnaPpGKocJWpbOhLx
         fTcx3yPM6Cldn2lCWIBXqiTvQ62HcAH9PKvP8baHyRfsDUm7V1BxRVJKL9i6YFXhUYq/
         qHaSQc4g4mWiaXPnccqZcuKo80o2/RcPY/DWqhr6AleZWMcs06+HuTqXXKzLzwfZOnyA
         azTqEECEUG21EQeK3/EL6I4Gy6aqWX1HBUd6gCN8PBWLZYm2vMdY6kEKN7V0DaQUdYKA
         OOKXug+HsFcKCc71WiMvTXJ0NPhi+nuklGuN0Y+7hlehtGf+wDkrnA8oE6iLkFO4c+Ya
         YEtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zQrvyGqh/s+pxtcUrD8gbqBWSMljeiMGT2BkAPPE+7iyWG3SD
	vYWnA5oGKtKuE8ib9EbhQGU=
X-Google-Smtp-Source: ABdhPJwVejErwoIJjnNYuLG87JKWkcIGRurkIUQXBM45fEvB4cnGaugYg8eSWQJUzeOFpbvw1dP6Tw==
X-Received: by 2002:a1c:7305:: with SMTP id d5mr2889347wmb.85.1591257492938;
        Thu, 04 Jun 2020 00:58:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e510:: with SMTP id j16ls5611829wrm.2.gmail; Thu, 04 Jun
 2020 00:58:12 -0700 (PDT)
X-Received: by 2002:adf:f00f:: with SMTP id j15mr3416727wro.347.1591257492448;
        Thu, 04 Jun 2020 00:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591257492; cv=none;
        d=google.com; s=arc-20160816;
        b=QJRntl1NaHokeFQxj3Pf4bdTxkt2U0XTdLxE5ZkY7teE6xqnBDmioDIrLrVknVWGxz
         GMoxHhURgYT3QOi4a2t7/6Pu03CBnq0LSEoslfzNcpgkkpeIab1z5Lk6c3vcX0s/zayQ
         GLsgWdt664eLh8wTfVmPF6y+vpTXV/ulg4FAphZZn6mUSgnekODk4nRmht4TD5lwGv8l
         Y+I+GQaft3XrBuZdaOuDiX2r6lN4H8id4gqitqPposu2CA8x/wgBprGXMpFMT4tuhM2l
         Czk0ZKP9onWiFoSxK0ol5lTbCZOpbSpiWD7TmONAXzAuukWlsD98u/aacrubcsNz7gr9
         5Xpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:in-reply-to:subject:cc:to:from;
        bh=FkY06VvLCYQ/KGngzPaIaC4mSIkUSS8QrEtxWQX+ZKQ=;
        b=XJkW/bo86B+lhPDujcfdnoS267RRW9xKZ5Eh1B/BCgdZZ5I4lV7Vm28Y3o64br1Y+L
         SNmXuNu+HHJ20rfbKmWKvAhh5E2duqmCyDKOMZoVC3+3LPbvvpLc/fAOvwNHTejnMXkD
         Kd55tqdT9H/Op8+7+LxxKH7f8iXNU7I07L0OVQa3t70QUqRQW9ktBHFTW3y8nHzopv24
         deGIOg/92vkZFHfv6r2GL/Fgp4OT8DpUItm5dzSf7WuREAU2ueoVHfchnY5u7sB0yXHm
         HJ3rgOg500EIW/Q4DBxc2pg7xXCycTQpfFwPUDur5KqvyfGP8MlmvkvlqQ0Q2ZLjyz/S
         2Ulg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id m20si274224wmc.0.2020.06.04.00.58.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 04 Jun 2020 00:58:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1jgklM-0007rw-IR; Thu, 04 Jun 2020 09:58:08 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
	id CB26BFFBE0; Thu,  4 Jun 2020 09:58:07 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>, Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
In-Reply-To: <20200603233203.1695403-2-keescook@chromium.org>
Date: Thu, 04 Jun 2020 09:58:07 +0200
Message-ID: <874krr8dps.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

Kees Cook <keescook@chromium.org> writes:
> -#ifdef NODE_NOT_IN_PAGE_FLAGS
> -	pfn_align = node_map_pfn_alignment();
> -	if (pfn_align && pfn_align < PAGES_PER_SECTION) {
> -		printk(KERN_WARNING "Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
> -		       PFN_PHYS(pfn_align) >> 20,
> -		       PFN_PHYS(PAGES_PER_SECTION) >> 20);
> -		return -EINVAL;
> +	if (IS_ENABLED(NODE_NOT_IN_PAGE_FLAGS)) {

Hrm, clever ...

> +		unsigned long pfn_align = node_map_pfn_alignment();
> +
> +		if (pfn_align && pfn_align < PAGES_PER_SECTION) {
> +			pr_warn("Node alignment %LuMB < min %LuMB, rejecting NUMA config\n",
> +				PFN_PHYS(pfn_align) >> 20,
> +				PFN_PHYS(PAGES_PER_SECTION) >> 20);
> +			return -EINVAL;
> +		}
>  	}
> -#endif
>  	if (!numa_meminfo_cover_memory(mi))
>  		return -EINVAL;
>  
> diff --git a/include/linux/page-flags-layout.h b/include/linux/page-flags-layout.h
> index 71283739ffd2..1a4cdec2bd29 100644
> --- a/include/linux/page-flags-layout.h
> +++ b/include/linux/page-flags-layout.h
> @@ -100,7 +100,7 @@
>   * there.  This includes the case where there is no node, so it is implicit.
>   */
>  #if !(NODES_WIDTH > 0 || NODES_SHIFT == 0)
> -#define NODE_NOT_IN_PAGE_FLAGS
> +#define NODE_NOT_IN_PAGE_FLAGS 1

but if we ever lose the 1 then the above will silently compile the code
within the IS_ENABLED() section out.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/874krr8dps.fsf%40nanos.tec.linutronix.de.
