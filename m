Return-Path: <clang-built-linux+bncBD7LZ45K3ECBB3H6TP4QKGQE5VVGAGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E62235993
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 20:01:16 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id m13sf10170068lfr.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 11:01:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596391276; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZztXIInQ2zpPTMSwlWtC4ut9EVk6YQ0ViZYOg1E+BCV4Yg/cBz67CwCXUVi/WmsU3E
         LuWnswJe7Yl+elv/L3zYjeu6cEEhpOf0L3IcpVITgCMwTD2n4lyj65lh1OgORSJf93v2
         abAuVGniNr4V6pxLcH2I8ExdOMOn8zCf6oYGwojdocrsjI/JcVy4t3RtEG7kkN2xE8En
         TVdjCnUs5X4Q1KzDmR/0g9724eGXoW/EIVmn2VCwWPi4IrVo46sV8ZCqaOL49Ut5fh78
         aJU97UKaqyDpubXljmP4OUcLDhIXvBl2kQOMn/ksLezaYbEeEtYCt+tkprztgjmrh+X2
         +oBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+920Qzo1IdAu3eTGPxqJEmLm9J9+f7ZnMdvU4dBsfic=;
        b=WduXqYarTEVk8qXT5MOGdhAzcW7X39gt0SDzp8MhkR/xD8QakUbiEMTBZwQGl5YYEm
         0cmxPxC6bjwRNfLEGiSFEiv0hQuLPrXULmEdxBSme3C+ppez1RHGpueQ+miWOAY3rSNM
         5amwTFkcOgNWVpyS4dlPe/h0Y2xIxgJKRDTp/bDTVxFJObwPha0a8H95mR2mmmdScxGN
         Xaw4s7vSSAwRgV4siiWM/N3Jw+8lM5SjBfC0b7qktHO9ReXKhXqJFfOLNMA5SVefZGix
         UdQzrvXrRCuq5YhsDOcXd6iDe2V+P/MeN9z/RHlA+6Glx4CAI+TnoYIJH33c1NYFdvWd
         EanA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uknpQ4DM;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+920Qzo1IdAu3eTGPxqJEmLm9J9+f7ZnMdvU4dBsfic=;
        b=jWmhE9PqTs6sOfy4Ic/zsm8cbtPT7jJ//YhlVNUsQbOsUiuhuKBZyO4AOHXNuGgc2D
         y38x+7Go2yYElSZyfzXcESbNxBSrI0Si2twyNtEgMaGCmnMISxLXvTcaHh8yXcbb1g1F
         LnS6SrhWYG12cjdB3oID3tqimR4ZetqtMUwteR72wh0iDp2Dx3B3nrnokGTPdbsSAGsO
         AhdfcgEV9O18KpWLXoZZOmTMZ6soJdQ6ym8KkncI3iOKT/Ja9TCT3INPu+pgT26iopCI
         zQr1lyTTWfgtkT9Yqf3NR+vHGBCNBGqQ5hp1jI0/fvm6MfMoyTtUoe+gvpN/vMuGKcwZ
         4BNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+920Qzo1IdAu3eTGPxqJEmLm9J9+f7ZnMdvU4dBsfic=;
        b=W3qvOlOLz+I9TNfwFkAPXpmHtYkftGpXHB7a9Rg5fuZLIHjjDSc6axY5BUk8EYCr/J
         CkgZH4j/k8YyYsKmTOFBPU+rzSoiSfWdDAnUETHpPqqAJBGRY4YrFSry841hgbF3Qe7s
         VJGCBD0FDAhdwn4PSEpbkRmr+kN0w5aqwedSgwkm4XJ4b6F0lG4E7ItKS+WMqpidPC6K
         o4wlD9Gk+nYfeCqI/hKPCpzKjJAf8j+CQXgiAnjn8D/tLRnW6v//C2L+jzDI/+8XX69S
         zm8h6G14mWOh33H6yL3pjvfGujjfpkAQWuYXJKBJOk73fJlpetgqZ91osG6YnQrjQBxH
         coKg==
X-Gm-Message-State: AOAM532BzwbqFchwfmlvW7SdpFGf/VdnRm57fOta3qwEyAERdT4fPM3I
	Pr+QinnBf1G+Qpg+S9rZ1JA=
X-Google-Smtp-Source: ABdhPJxnotfjMiGTMZ0tjtF/NY1LDUNE1D0qp1+NnYp76sLi+gCu7RMVoE4ZKviGOLTUy11Sbn7HxA==
X-Received: by 2002:a2e:81c2:: with SMTP id s2mr6142652ljg.10.1596391276208;
        Sun, 02 Aug 2020 11:01:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2243:: with SMTP id i64ls2532756lji.7.gmail; Sun, 02 Aug
 2020 11:01:15 -0700 (PDT)
X-Received: by 2002:a2e:2e0b:: with SMTP id u11mr5576348lju.318.1596391275350;
        Sun, 02 Aug 2020 11:01:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596391275; cv=none;
        d=google.com; s=arc-20160816;
        b=mGFXSEX16Rf2fJQYT9Uw2G+5E5fgUkPonELqCopcA5p5ZTZn7aaVu/r9ne9+XFij3O
         zMAuHOFenog1lsd6ts+Hhe2ZCDoUYv/q49zqnEPPqdZaV5r/rGPCzXHClb9wp8SAItgl
         pXeQ06HVyovNcFABozkF4YW9+WTJWBYx7HsL403xEPKUfUe1uttN0Gp7pM9gfOt/1HjK
         t+Wg6H1O8WhRyfla0wgGCCnY5WNoll9BjFJM3hnbyuKJIsgb1e/VJhw/zz5187TvWml2
         NFcz0K3Trtu5evO5s5I12MfVj/fXXV3AH8xGCfxrrS2xAqAY7NHO0oxGMveEb6iMeru5
         30YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=cWqP425OZ00Oz4x2XaCg5sL4Bi3BuFHBZ9fhbstEoPo=;
        b=AZI2cn3+0qv5UXbASVUDq5kVN+ZXBf1I7SpZvAVq4/o5yLh0aQqigj+YX5HE9N01uS
         cBhk1NSLbyWIwcKGRCl3Xli7LsfGcCw9LpcLxRsGkitudv9FC6bNuR/Q7lzkh10mTsC8
         fqXS2l73sq/SM5nuldnlkNqaFKU7rhV9yxf5eRtr3GVaVSn8s9nAeNmoeT7U6JxN6xBv
         eKZrz5HOX59R5M7eScUEgA6JkZ3jE6nMtC6T6zHMIN//ar/uQMsnL/sOnBiqm1CCYYM9
         3CbZvF5jun50/2RMFJFJH6vsjEZ+NgleGy6WrpPs3/sUYoaG7AkdXTdnEenJXCDHCxeP
         p+sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uknpQ4DM;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e2si634141ljg.8.2020.08.02.11.01.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2020 11:01:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id a26so10536545ejc.2
        for <clang-built-linux@googlegroups.com>; Sun, 02 Aug 2020 11:01:15 -0700 (PDT)
X-Received: by 2002:a17:906:c187:: with SMTP id g7mr13929214ejz.108.1596391275076;
        Sun, 02 Aug 2020 11:01:15 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id t19sm14191760edw.63.2020.08.02.11.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2020 11:01:13 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Sun, 2 Aug 2020 20:01:10 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>, Baoquan He <bhe@redhat.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Ingo Molnar <mingo@redhat.com>,
	Hari Bathini <hbathini@linux.ibm.com>,
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
	iommu@lists.linux-foundation.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH v2 13/17] x86/setup: simplify initrd relocation and
 reservation
Message-ID: <20200802180110.GA86614@gmail.com>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-14-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-14-rppt@kernel.org>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uknpQ4DM;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Mike Rapoport <rppt@kernel.org> wrote:

> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> Currently, initrd image is reserved very early during setup and then it
> might be relocated and re-reserved after the initial physical memory
> mapping is created. The "late" reservation of memblock verifies that mapped
> memory size exceeds the size of initrd, the checks whether the relocation
> required and, if yes, relocates inirtd to a new memory allocated from
> memblock and frees the old location.
> 
> The check for memory size is excessive as memblock allocation will anyway
> fail if there is not enough memory. Besides, there is no point to allocate
> memory from memblock using memblock_find_in_range() + memblock_reserve()
> when there exists memblock_phys_alloc_range() with required functionality.
> 
> Remove the redundant check and simplify memblock allocation.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Assuming there's no hidden dependency here breaking something:

  Acked-by: Ingo Molnar <mingo@kernel.org>

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200802180110.GA86614%40gmail.com.
