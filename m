Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBJFDVL4QKGQEB3WF56A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF8623CA1C
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 13:01:56 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id x9sf12172833lfa.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 04:01:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596625316; cv=pass;
        d=google.com; s=arc-20160816;
        b=sz/e5P39xdvgeQtUgvlOZGtNaTObakg1hvjuWK3DGAuSjpYliiaWXtblOJTUyjfT0y
         XANSsw+HWZJcRkkylYL6ZZDnm8yKRRBydiONVD69NlxmUrZ5Sg/l8+RPFryrHWuj9xwJ
         4DHLaOr/b52P8IHLs4EyMAvfrqLBbQtSHWFZm1HlZQWA4He4YyY2YThdafO4r6y2GJM9
         y3dG4l1LHDeRnYob4cwyXdQHOXQpn+U4p6y+n2Yy+kftZeSuIaUi6Nzjz2gBW9gy5Ykj
         Y4Wb11wIidM37NuN+SdHSkqhmq7Ux6aJOU7SoXOpccduh1xM4VmtdsF9GVIMvElkN4U8
         gQog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=eGTHUf8Ozbqafbitv2KioAXBU/46+q/xcdEtqbW7e1E=;
        b=hRf50tAmO/mV0u4WCgMho2c5YKqCJl9G5oQYExCiYNarwKaDQuMMQIRYhXTzydcEI4
         dOe/Rs76HO2yXlP7wRPC8eWTSuB3izm6X2FjCAJWw/sgYgtLuvJUoVDwugpaSn37lgVF
         pZ3641oGlQAyHOkkIWZO1x+UbxXRAFbp95oGkCT6K1o5mENvYXv78b5r8rUWvIhur8MY
         UKY8bHEu20Edea0qzY14xWpt0xCXK+8ci9iRGG+Sbrqh8cHvkOgwS4GK7JFVkNhJdEUQ
         oJX75AD6M8YM4Jh5WuaFo3ZqpwLkpxNBxFAc9YrUuGSbCYW49jxRBRq0jpn4mq82XNAR
         Y+pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eGTHUf8Ozbqafbitv2KioAXBU/46+q/xcdEtqbW7e1E=;
        b=EtZNsLA45Qh9toUxjnNPw2WFxSLvfPkQLhETCzrKp3gs8azcn0QM6ixLaF3L87Ujkj
         fn8IbKBsKM3Y67SXOsgd/iQ/QaqrmiyDvJ1NVn1bYkm6C8mGrG/HpVAgv4eFdjdAssi1
         0z50Fhwyx6Rnz6zwADVcXaINvjYbI/3kyBVksmO1cpvJaX1g+d4ySZwQ1NVLbWe9HPuM
         UB/ISgFYjarepuO4kdpsuyYQDaEEvnYh+e3v7j0+xaWYmL3xYPRpx2dAgrNb2wwzAWrU
         S935fRsIi+NaVmbSTOpG0+NN6/E50Mot3KqIW5rxGFM2ooKphkiefjkOZcmA4+NT2Es4
         uJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eGTHUf8Ozbqafbitv2KioAXBU/46+q/xcdEtqbW7e1E=;
        b=ZNCuFL9dNtf6MV96ChZiNVMxhZRLCPUjIlOdMJjMIJYxaJLqZPuXLw66RT7aU3z+LO
         hFBUKm9MAGGKtir5TpIl+8JJAVMWbtw3O+A4a7NysDxA4BuJh7vOfoRddkYbj/B2CLQH
         RJLLgtfutJTsiX14+K02x+kd2aOSnJ/4xWTQuXeODAfSINNSiQjoMpW1sgjStkt9KOIC
         i6b/TB5ScHPzyeKHgLgph8m4tUqhizlFIGcdDXOArII6YTBcmVd55gwtdWFFyekiQTiP
         VEMzrqaaCNfCfMSs+cS6t0E5V/4Keu5R4yEjHx4aBo1urzeEFpFjDG6Eup/J4RQoMQCT
         BNTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UFFDku5GoSMxpvsE+xcRiYk0iz9lwtnfqRBvxkEFcvq0UGZF+
	OF+0UgOlh8wXVk/H7P6T6mQ=
X-Google-Smtp-Source: ABdhPJwq9I3Y7cIVVjADWPjW+dKimF9JAUu+l6AIwjug66rPScIjAieKpbTNsAiiVmhi35+z+krr9Q==
X-Received: by 2002:a2e:910b:: with SMTP id m11mr1171527ljg.159.1596625316284;
        Wed, 05 Aug 2020 04:01:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a58:: with SMTP id k24ls363687ljj.4.gmail; Wed, 05 Aug
 2020 04:01:55 -0700 (PDT)
X-Received: by 2002:a2e:86d9:: with SMTP id n25mr1253731ljj.444.1596625315704;
        Wed, 05 Aug 2020 04:01:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596625315; cv=none;
        d=google.com; s=arc-20160816;
        b=BtX+mfhm1s3WANTWaxOaD3lc+uRrv8Ek4gNiK3RWHWwmQ5ONTQLjXUWIrygYeiUUge
         RK1ZCX3jjplomnWPSGlVlL/xEBI2o4WvwNnIE+hRpsi/hRQt/+aQo1crXcLxI8cRPh8g
         Upm9uNgrG2zqctoykuaU1yLtTF259k0TCRsJJaWbVpXwXWAySGLblJ7gAeQKn6x/N9VS
         yF2LhwaeGALcUl5ZGMAAHNrqa4BzTd+qY8D5Du5sGtySpVTJE7N99/xec+Rz09G/qkDZ
         YTnR421a9Q7wkKpXDlIiFaWzScoblJKpvoA+mOjeNbD+jlVmCGtA0SmM/+OVv3HWO4kI
         R6+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Jo0dlNSdbcoLiJGCya4VP9uwEJBvzZumyye9AbXIQeE=;
        b=jLacYCmJaNfB4Qnqv2eOkzyV5XAUCkK0yYqdQx6ALrWc9JIOInbMQ/SrRODREj57YZ
         6s1S4numqv9V86IhGK3RiOudBrHnHz/BrI1erigbo85NYioMfk141XtJ4zQWRKS6paI0
         X8CD5zK5qHA7+jGtt07eA2w2e0gOaZjuspICUsC4VSvcF1s6ug9e0oCnear8o2A7rhkC
         BQAycARsP23N8HCx08NsINlc5YGEchy+O1dESXNTzQo5eiC211aKVDI54HcxKrk3ZzNL
         v44r/Ut55F6+5wdvuEXhDicvhXkYhw8DR7A5zsCfnhL1rE9wcdxmPRQgZ2mtBX/ukrSs
         UEfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id s3si86042lfc.2.2020.08.05.04.01.55
        for <clang-built-linux@googlegroups.com>;
        Wed, 05 Aug 2020 04:01:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1k3HAl-0001HW-01; Wed, 05 Aug 2020 13:01:27 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 899DDC0C25; Wed,  5 Aug 2020 13:00:35 +0200 (CEST)
Date: Wed, 5 Aug 2020 13:00:35 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
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
Subject: Re: [PATCH v2 12/17] arch, drivers: replace for_each_membock() with
 for_each_mem_range()
Message-ID: <20200805110035.GB11658@alpha.franken.de>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-13-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-13-rppt@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Sun, Aug 02, 2020 at 07:35:56PM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> There are several occurrences of the following pattern:
> 
> 	for_each_memblock(memory, reg) {
> 		start = __pfn_to_phys(memblock_region_memory_base_pfn(reg);
> 		end = __pfn_to_phys(memblock_region_memory_end_pfn(reg));
> 
> 		/* do something with start and end */
> 	}
> 
> Using for_each_mem_range() iterator is more appropriate in such cases and
> allows simpler and cleaner code.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/mips/cavium-octeon/dma-octeon.c     | 12 +++---
>  arch/mips/kernel/setup.c                 | 31 +++++++--------

Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805110035.GB11658%40alpha.franken.de.
