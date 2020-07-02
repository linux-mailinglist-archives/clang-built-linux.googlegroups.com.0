Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXEA7D3QKGQERWJWVBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D72A821282C
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 17:42:21 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id s199sf831752pfs.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 08:42:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593704540; cv=pass;
        d=google.com; s=arc-20160816;
        b=t84sMJmLBeNLaPXnUwzUt3HCtpw+8VcYaQjLJYT1z4jmHmChO0igS+EkaPb9+tle1X
         44tCilAh675+xhFU2m3orfm4PbTneDosWo/4uuWyO2oUNGDZHBCKfIVidHkmvp4uaDwp
         tnUESbiQ5x59aB2jS7A7YaxnJGdJFqZWIuoGGrXU0vy8m82hS5WuDoAY1L1GEimKC9uF
         YNV0GcjRewSwjdqDB2XzIh/CMTgMGrLUe0E+g5XkP/5a3m+lZWTfVpli+EN6ORZzR0GS
         StZ4Umit6b4tUaIDzJuleV6LnZRSSZDMcZ2A3CM9vXZfYdRLcIBxtkfjAGE7LOOXYKaZ
         Mm8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UvIf2lfiuLMgCScRHjzkzcNLAR7CSfjBxz3/R7/qbFY=;
        b=GGhA28d576Ovazmx5E7hWoMqtCDwz3IY3e7iWz4niXWYYvW5g5wNnw4MS5+Wsa2F7t
         VSxyrDu+DhZTCvfRos5e7vX+/M3H1AFIr9X47SeW5fhgyJEUYDQfQ8VkREfzoY1hnvxP
         iha/CSXJZabqQrUbTtWXeeT/EqyN2OWut72z97pUuK5Y5/ZWSAbGvbW1Au8GmnJXihP6
         Q0wMfaEp4nWbsBu4iwdQGFyKd4t5bv9RDahlOly4piZqAm0BG1VXQF+x7ogkdc4pIH/5
         OP3fYjnGwoxYdC/uuBzvfk9s4JLHcpqaDUNXwY2EcyW2Db+8orKgODGR2lw3lhxN1aXi
         zNKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MwGxMiEp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UvIf2lfiuLMgCScRHjzkzcNLAR7CSfjBxz3/R7/qbFY=;
        b=HTcMsCCUVDmXLtHqta5WIFoECpA7OG1TTwmez50eYmkAv/e/eXLOc/WQId5rA87M1i
         tb/dT2RZwNA0tyGnqjDIKLw56LvoFpFVPcyLskGOFKM1U0AaTbAh4cnh1d1EHzOGWdqM
         EEkyMBktStnThyvkkGU+dmTic250psMekye2pFNf6/gGYHxJQX7a7dBdw1IM1RSorebi
         Q9XrWADjw5MuWXkyCQbRDnDhkqabcd0wRc8gGgW0J40BnZ2NGrQ0M2UV4mzbk+ucC5oO
         wkO59G3cpmuRFd7RfyN4cgRlLATY7VEAgcj0UJLgoRn+EhFl/VIqjzpV9eUUK9QVUh2i
         piMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UvIf2lfiuLMgCScRHjzkzcNLAR7CSfjBxz3/R7/qbFY=;
        b=LQP+69xuM+6F2xGqGTzzQM08CV/YKQumNp64Cdl0uJjv51NEtsphqlpMzwTVi9D5EQ
         sp9K5jXtyCINtL4HpxNYZElQ3JQcmIvMYtVcU/LaDEXMpTWccZ4V10ZbTSQjqNp/hah2
         Zc8rwNZS+0GgCXd1x4lT+HzAGcRQziP8lyagRsNdWt6NCbFklp9ItGlUbGHMm6Id6Av7
         LWEm2mxE3iqKgdDEzjtyQ5vcWIwKoGnbDuL+GjfEBYEpX61zVzFXqCjVMV3taaWh75ei
         3C/Gwj+9Va5juXoEom36mocl4ON7/HrnpFgYQcaGfMX9ujwfPAx076J2RQwXrQQliF/H
         9V2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/AxsxqXWZspG58xIaw0vm7P5PSZXCpC1ZbysVyNkkMFwHFNMj
	YHJrX3O0RG6hm/LXqBlT+Tw=
X-Google-Smtp-Source: ABdhPJzADIlnNAdr+pj8U0F4ogYV4Fibl4I3S1SY1r0rEOUcBop4uQgBH1AXCSqjZka+17ZcYjovEw==
X-Received: by 2002:a17:90a:2683:: with SMTP id m3mr13194528pje.8.1593704540370;
        Thu, 02 Jul 2020 08:42:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls2652068pjv.0.gmail; Thu, 02
 Jul 2020 08:42:20 -0700 (PDT)
X-Received: by 2002:a17:90a:c58e:: with SMTP id l14mr32320823pjt.67.1593704539985;
        Thu, 02 Jul 2020 08:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593704539; cv=none;
        d=google.com; s=arc-20160816;
        b=dsbXBEizuEySgRBEmBCD2yATtXt2Zcq+su9sigTxZWt1DAEUqQHs7KQkpYrLCnG4WQ
         rRWV0zky1IxmOOHRCzI30PZzgVefRj1L2nderSmfHdBs97b4RS4JRk43BMQC5SI6hV+v
         n1NObn7P+2WZqYZ7FQ0N7gPpMkYWYoutkF4yCSHz02RaicF8UuqrB/CVz4P1sW5q7enf
         JXacyqZeoxqtrPb1o5uGYyAwz8O10euHx6gICv8PI3yDb9r8C1Vi75Kvt58MDV0/EdwP
         RpNPluYpeednAPEx6xKKfCOCLB3p9k5c/rdA+lwBS7O1u54xAATEEi+960vrIoUHg512
         hT0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Kybd0zpVtDTcpe4L/HEboaUKNNgAnXPFcQy8ZwcEJuI=;
        b=wJGArOh3jikK+ZxXZ64483mHZV6vlsYbIiR8WU6kz4c4sfa0Z3+vnDpf9PV4RLX3k2
         l3O3er7mCcnt4XkDbh3bEanmT0lbuezxID0n0vTOBQGqCuAS3ilGV6zyMpSwsqnOJJ1j
         YiDMx1VlHS62uv+Fh6+qrRzK4piIszw3ARsNIrMSZHH2T+NU/S9uTOcPLC3/Jqv1VP3r
         qDjFutMvWW92mhyF+zIIse/f4Ypop28RociXqpdLGnUywCyWkCW/1p2f57zjH6O1g4nD
         VQaA/YoHwYIjGK70rAgiuOl5wjv6cV8tfsdILx6QiJ0XV/J5yE9NgqdccNNevcy4ejLh
         uvsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MwGxMiEp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id m8si560777pjc.0.2020.07.02.08.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 08:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id o1so4887146plk.1
        for <clang-built-linux@googlegroups.com>; Thu, 02 Jul 2020 08:42:19 -0700 (PDT)
X-Received: by 2002:a17:90a:7785:: with SMTP id v5mr35048412pjk.31.1593704539711;
        Thu, 02 Jul 2020 08:42:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l191sm9749876pfd.149.2020.07.02.08.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 08:42:18 -0700 (PDT)
Date: Thu, 2 Jul 2020 08:42:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-mm@kvack.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 08/16] spi: davinci: Remove uninitialized_var() usage
Message-ID: <202007020839.545A571CA4@keescook>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <20200620033007.1444705-9-keescook@chromium.org>
 <20200701203920.GC3776@sirena.org.uk>
 <202007020819.318824DA@keescook>
 <20200702152335.GJ4483@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200702152335.GJ4483@sirena.org.uk>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MwGxMiEp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

On Thu, Jul 02, 2020 at 04:23:35PM +0100, Mark Brown wrote:
> On Thu, Jul 02, 2020 at 08:21:40AM -0700, Kees Cook wrote:
> > On Wed, Jul 01, 2020 at 09:39:20PM +0100, Mark Brown wrote:
> 
> > > Please copy maintainers on patches :(
> 
> > Hi! Sorry about that; the CC list was giant, so I had opted for using
> > subsystem mailing lists where possible.
> 
> If you're going to err in a direction there I'd err in the direction of
> CCing the people not the list - I only saw this since I was looking for
> something else, I don't normally see stuff in the mailing list folder.

Yeah, I've gotten conflicting feedback on treewide changes:
- please CC me on only the one patch, I don't want to see everything else
- please CC me on the whole series, I want the full context for the change

I opted toward "CC me on this series", but then I get stuck when the CC
is giant. I think I may switch back to individual CCs for specific
patches, and point people to lore if they want greater context. (lore
didn't exist before...)

Thanks for the poke to make me reconsider this workflow. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007020839.545A571CA4%40keescook.
