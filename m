Return-Path: <clang-built-linux+bncBDGIXFWLTIHBBXXH6GCAMGQEDC2IHXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D6D37F062
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 02:33:35 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id b24-20020a67d3980000b029022a610fc6f2sf9052431vsj.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 17:33:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620866014; cv=pass;
        d=google.com; s=arc-20160816;
        b=QmdtJGi7+NFhbEylj/BguvlqHKykL5iSzhScf6EYh0RO1/JM3bJtKfFepn0Po6Lhzt
         aGWZvSml9l8jLRD3JvTKjGFJXdg6Ba0cOMJrb/V7JzYoJtBT+evozjSmTDWjFJW6PRLb
         BVPhHGNCm9icajzzesFtG20ZLpd1ENNEc5hMfiN27qUqTEH7FV6WVcLXRC32u0f1NZnM
         sy5MK6o+tn5xl6NkvWrCKf4zJeaPxj0MR3PyC4QUC8HR/WsdnwmSy+cdI4sNFmnORstx
         wFfHNlDre1xBYWSYrXXBVeQEXrSjXNvosLtD7HVqyHXGHdCOVmU6/f5NNdexGi5Z06wR
         lR2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=wgJPTSwXASMA487Ej8+K9GZrlzywSW7fGJ72fDlk6Zg=;
        b=ULD6Z2qzFuRGaWIAfPHMwjZ/OfxENigqDZE8Z4vgsUJZQMk4FTgLSFCi/0gajK4AXl
         YffFqp4MhLsQIeNYokJVs0AhHxpgrMmKrKV8Rvvc4K+HeIBHXKmGofBOlosTMoaMehFU
         OMSCOImgqohJtgr7TD93VQ4hGOVr1o2ZZ0ueO+pyogQEm+ZirjJ79Qyh5N46tNsB5cXA
         Zb90gKdC+mmVeqoPC+2nrbclctxErjpFrSAbt48nbRyOb3GRtyUXxjMCbyEvs7YWNu9/
         xvhmSwFcmb6k94Ao8Hz1eHFRmv/8EIB988uHoDm5OYD9fzTSyvw3BjlZ50968Bo6bQn3
         b6sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cxJwWeyy;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wgJPTSwXASMA487Ej8+K9GZrlzywSW7fGJ72fDlk6Zg=;
        b=nX8PT/suBgmaZ+2o/aHWtfXXi9X0wJsUPSekUwFTc5Qg0vKJtPF0Liao1hpsxOa0E8
         HLGC6TyEAiRVtxB+cGX5kJPVyGl49zBloJETa8oKWtL7lUPgCRyaj31YYkCNsdAyLOSI
         QJDL9umwETDHqrFerG//G04xDxflAV7Xd0NDS8WSTa6+1orfA957llbs773gwSJCCMSf
         DT9fmuW2iU8vFOfzxcWCEMmIeswROq+m5xW1jAqZf7fe4cTiTZUFpH7ZTBY8hjOnb7zL
         aUjNftFxul5QDpAayEO69RfR6okA+Uab8nblKId3P4H9K+6TUue6eUAG2Iu8344kN/qX
         hbbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wgJPTSwXASMA487Ej8+K9GZrlzywSW7fGJ72fDlk6Zg=;
        b=CMJ1DrnIzH4y3jp0TvCIgzYhuE3a5nmS7MrZmJ67nYUMJJ4GXRdIhc14Q+3nxwg94R
         dPl+Q7J3qlO1bpdzc0l9zNmigUydp2w5IGcUQhAXMM94G6r4mzkt4FP00ke2rH7/ZxNT
         Zo8jh4SZA8wh+kvomenZOGQFbv0/xo2tqJfJqtqsJ+dXJT7gU5yqNGjqfXbrtpdPehVl
         Bky/suZhBizqQkzRJX4ckVP/g24nojH8eXjXQf4I+alz8durmlSnb5tUw/TMH0kN6sq0
         zRITaDX8V05LH14jJ7QBnvk3TrRgcPtVS1LVbI2n/7jSodwQIq+7PR5M2to9uOafBBsw
         jgxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IU9IYmJnfV81zzAUe6J99jJF3t92q9wg0Ypbi48ns1aP6hcAE
	HdCg1Pb9PTxMzZNlEt2w6J0=
X-Google-Smtp-Source: ABdhPJybMyTJMTAXwfOy9YZOEIl3txJlPuQNnJdFfBGHjdPTuaCi3cCuNJgrrkgBhCowMHCkRMY0mQ==
X-Received: by 2002:a67:fc88:: with SMTP id x8mr4980482vsp.10.1620866014715;
        Wed, 12 May 2021 17:33:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7d96:: with SMTP id y144ls976205vsc.9.gmail; Wed, 12 May
 2021 17:33:34 -0700 (PDT)
X-Received: by 2002:a67:ce81:: with SMTP id c1mr32161962vse.28.1620866014223;
        Wed, 12 May 2021 17:33:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620866014; cv=none;
        d=google.com; s=arc-20160816;
        b=pqOEFCYdYsh5s5E6l5OUrA/o9scZelvuWKsG7VuaHAc6zw1lqc1mD+meGamenDYXJw
         k7xxpN30VtqacMswHUS80tnB8fupvlMHzqBJd27Hhz5dpLO2U1b3PqyplPq7Xr7VC8o/
         nSw7Qu9dpwAbxLHsLDx3hxM+T81WehJIufXnkbrfK09wfV1FbhDRzqv6kCsCXpXi9oCo
         +lLEUyKtu7BC+iSUz136TkJDqyIl569JWDb4MzFVVtd4H1KiQbIRdqzORNLK7WX1XStY
         hUgnb5BPXSww03lhLkRAWKNcW7nSXI3JrbLTJG12Q7Y4Eam84Ansu3SjD8SPtmbfWbcS
         YcjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2V0/vE3kab0Gt41Zw/7ojH4ra5srDzaSwhgadaMYvdU=;
        b=t2vn8P6xSOvPI0u8LXFRj9X3TPL21xFXf8CdEl1AaQJDfNhGHyxPZTKNdsKs1feUOU
         SHx+8M/Ics6v78f2C5f52K1XJYAnIwRq1LBB9dmXIRo54jVlI0sZ3xxib6vPnme2FWDu
         LGsnZoYByrlLgHW8sjrjRsZaOSpQutbvSjIN6UM4SrSpv9LSd4ig0uv4IJLTGzT4eq24
         7Sj11LV+6rr8Avp4l+3NYkGhCeekN2yEMbDCAheE/SuDk06rCX18fzGtCZDs5AnqJTXH
         U4qPTyTK0xmrMTCy4R8utqtSjIHD53CT5n0udHyVKloafLtCnTCkY70iHFA7kiMWSDGQ
         lr1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cxJwWeyy;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si108860uad.1.2021.05.12.17.33.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 17:33:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4422B613EE;
	Thu, 13 May 2021 00:33:30 +0000 (UTC)
Date: Thu, 13 May 2021 09:33:28 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Michael
 Ellerman <mpe@ellerman.id.au>, naveen.n.rao@linux.ibm.com,
 anil.s.keshavamurthy@intel.com, davem@davemloft.net, mhiramat@kernel.org,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] kprobes: Allow architectures to override optinsn
 page allocation
Message-Id: <20210513093328.2e4c6da04bd285e0ac688a5d@kernel.org>
In-Reply-To: <202105130218.8xHlehr7-lkp@intel.com>
References: <472c597cc8cc8f74f037acf971f7799fb381a647.1620829724.git.christophe.leroy@csgroup.eu>
	<202105130218.8xHlehr7-lkp@intel.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cxJwWeyy;       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, 13 May 2021 03:04:51 +0800
kernel test robot <lkp@intel.com> wrote:

> Hi Christophe,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on powerpc/next]
> [also build test WARNING on linus/master v5.13-rc1 next-20210512]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Christophe-Leroy/kprobes-Allow-architectures-to-override-optinsn-page-allocation/20210512-223121
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
> config: i386-randconfig-r012-20210512 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
> reproduce (this is a W=1 build):
>         # https://github.com/0day-ci/linux/commit/2a1f135a9ce3c4d86d3bdefed561aa17760f430f
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Christophe-Leroy/kprobes-Allow-architectures-to-override-optinsn-page-allocation/20210512-223121
>         git checkout 2a1f135a9ce3c4d86d3bdefed561aa17760f430f
>         # save the attached .config to linux build tree
>         make W=1 W=1 ARCH=i386 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> kernel/kprobes.c:324:14: warning: no previous prototype for 'alloc_optinsn_page' [-Wmissing-prototypes]
>      324 | void __weak *alloc_optinsn_page(void)
>          |              ^~~~~~~~~~~~~~~~~~
> >> kernel/kprobes.c:329:13: warning: no previous prototype for 'free_optinsn_page' [-Wmissing-prototypes]
>      329 | void __weak free_optinsn_page(void *page)
>          |             ^~~~~~~~~~~~~~~~~

Ah, we need a prototype for those in include/linux/kprobes.h
as same as alloc_insn_page() and free_insn_page().

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210513093328.2e4c6da04bd285e0ac688a5d%40kernel.org.
