Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBL7ORL4QKGQEGFTW56I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 22752233194
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 14:04:01 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id d24sf267830vsr.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 05:04:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596110640; cv=pass;
        d=google.com; s=arc-20160816;
        b=HTqveK/OLn1GyITy4yX6fGD6B3qmsl+8c0oRVYOMEIZnkiIOPAqwWGWE2fXKKoURtJ
         TzlisdP1U205o+HCNdIPYHTaGm4+CwZrTdeF6jAunupv0R/YXT46mv0hiGiVEkjGAFpS
         O6iXsvB0k9YvySSRS/RQPvS8+fUaXst4+DjChNvVCxTI3QQsB79dYcgdYJcMI58zQfus
         yzN2MaP/XeMqDG9FG/ZBpBrMv3JnBcLVIW/GQi7cdZa28SDTBD8CmFgftfKMK4vDX6GI
         ZQS3q+C5ROGGGzVRcympic9GVdNjd8c4Lbj/a5cSDPJ9L+0i+Qt7VLfPLS2DYhmewpOQ
         A3rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=U/nhkGBHaO9BcfSYM5g5XAxHI50eWq8cjTa0r1SH+TE=;
        b=sCQYE6dw3HCWtn11Ni4FmUbu2Sma9JBR7cgRjOTzGkgpQuc3w3QaZnMm5CTVXZ1Alq
         tj78EuRD9jK/EP5aSf85nDg6iHjXT/PWxmrn8Rzy/xCI2so2UxCo4TamdM5iHNXVz14L
         QAClAPBFjHdi8+AV1IEScmLcYxCwtTDs8z/K4cztif9ii/jJQEd4XXSkm4eo1UjhfhV0
         3oZq8JETVaS+b17ahh5oV02eHCq3J7gfGzdvjB7N8Luo/rAnBCDoKCbdDdo9wFP6Lvoi
         ZyEvxLfrM/Ymb1wwDJfFR8R5APzMXPcrmBuZlUsClhecZ5Ljb3oMzI+Gp5XMsAm0XYm3
         yxag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U/nhkGBHaO9BcfSYM5g5XAxHI50eWq8cjTa0r1SH+TE=;
        b=WZ1XufONk57z/YHkjEAZhzDzlvUbwZU0uieHCiENYxGQzuVfdlbqcByGewM+6TQrMr
         dAxKEHPhnJFZTuO4CNHJYmzZVywpYPy6BmGlGCczi6hCZQMvyL6brkOfj0XqCZ8gpeN0
         SxPD83ajjH90a4k+SiQ7w9DSnYVFr0lWRIaTc7rgfbiTg13obqHFf083UXU/IK9X8e0L
         Vduyvy3Q75fIng3mqGwABXwLulIP2zKgUac6bchBJJPcYeYF5yKFRHl9oYp0CoyIRi6w
         YjJfUBXjE08XemFMJ1H5N8jSCdW4ssVj/4HVfiIDu4THfcN/gExNpingv2LWqFRIcQlc
         tKsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U/nhkGBHaO9BcfSYM5g5XAxHI50eWq8cjTa0r1SH+TE=;
        b=PXE7lxcd2wQyX/O7bISKD6/Iyd3cFNpU8TAWyhE3QljAgKinyl4/tRTRKKNNprvRKp
         1K4dh9xC5sL0Ni7Y/fv6kYhHxXM+ovFpjTZV8n6t00Xz4xZc2qiNU8lNCYMZpM3/gG+a
         XE+j9Y5KWdU2BBqgHCOa8QLMMPyz6DLNRh/jlJ8wjE+DzpN+hyU1r0J87LIjFqoD2QJe
         78ct1XYbaHyGcZBhYyzmEbp0+fagp0pZbU24bNQKRqddJsAwXk5/ba9OHkaiemqIhchn
         BYrQ71mgzuz7YTjO0k8jIWqO1ELVzkuM+miPPWaqnl+xrimMNidwyOq6zTAar7tJu+PL
         87Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323Xh4XCvJ1pnfHSk11r55Xy01ubvv17O/VUOTI5lV7RJjln7Na
	6ZXD1OUotXQsjHP214925JY=
X-Google-Smtp-Source: ABdhPJz76lXdv/IGJvYbnAT3aF1eGv9/dBz+zhoZpzExK6GwGuDAPJxJtIhZDb3EVzp4tbi3r5uGUw==
X-Received: by 2002:a67:f7cc:: with SMTP id a12mr1497566vsp.151.1596110639964;
        Thu, 30 Jul 2020 05:03:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b24a:: with SMTP id s10ls651312vsh.1.gmail; Thu, 30 Jul
 2020 05:03:59 -0700 (PDT)
X-Received: by 2002:a67:8081:: with SMTP id b123mr1639571vsd.157.1596110639583;
        Thu, 30 Jul 2020 05:03:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596110639; cv=none;
        d=google.com; s=arc-20160816;
        b=qlPPrfZESGKixjxYaBWw4EB587Pre2S0u76zEU/UCFTK4A9J8DtUQcREttISSdRh0P
         RkiRt+UE2jfsjMCAjfuoE/qEDOhLHdpEEeIaDmX+TAJYuzeUo2WIVhAVlpCp2nFSd9yM
         LkEhT+i9OvIhpLWSseMZrj0LPBxwAmLKtRtN8TVmGXHfA8z9ARoEi9ef+/H/s7N3hQnt
         L6EBtlQDvUVGioMmM2D9HRf2UZzNUCCcDLZFcVi8WEAsydId66d6pTPOfZFjXpzn/APS
         3EqgTBWs+7CsDJR8dBsw01jukgbywDBh1zGALL5FjluDyF00XmVlGW1UsCp6+8MV72Sj
         Bvvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=IxcMgoLIlAnfeO1GMnykouoxBGSrSuqm7mrGj7MjHgE=;
        b=IgXjw6bRTmCptlU42yKjtaGMQwcx8s0U9SZ7qdISAcXgRhhQmOnrK5fGbWBHnSSjMR
         kAIE1mtRoeO3AUKsH/KZuudRS0IS2Xh6vMTkrFl4sMKMhufs+Io9sAEkTPNw0jcH78Zr
         2aLPGwPNHrgbuMjrvxXICGlWGJPHAbPuRqa8S0UJ1AiSgmn6LMSYCmJVfz6PcUoAMOhZ
         xAK5pLj1vhHT9eJVoYLsBgcaxSSyrlk/ZpHfIEBxIQkc+OFF3lwKkQplfKlnwTQkxjGO
         avHWd37PR3e92tmUI6JUf4aeuo0VlFsXjTwSyitqyo/JjlycY4hyCeECdQMm0j8ptoQ4
         coKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q22si14929uas.0.2020.07.30.05.03.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jul 2020 05:03:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gaia (unknown [95.146.230.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9E80B20829;
	Thu, 30 Jul 2020 12:03:52 +0000 (UTC)
Date: Thu, 30 Jul 2020 13:03:50 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>, Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Ingo Molnar <mingo@redhat.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Simek <monstr@monstr.eu>, Mike Rapoport <rppt@linux.ibm.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Mackerras <paulus@samba.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Stafford Horne <shorne@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH 04/15] arm64: numa: simplify dummy_numa_init()
Message-ID: <20200730120349.GL25149@gaia>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-5-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728051153.1590-5-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org
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

On Tue, Jul 28, 2020 at 08:11:42AM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> dummy_numa_init() loops over memblock.memory and passes nid=0 to
> numa_add_memblk() which essentially wraps memblock_set_node(). However,
> memblock_set_node() can cope with entire memory span itself, so the loop
> over memblock.memory regions is redundant.
> 
> Replace the loop with a single call to memblock_set_node() to the entire
> memory.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730120349.GL25149%40gaia.
