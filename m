Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVU3YD3QKGQEBQOFXMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 61450202E24
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 03:48:07 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id j131sf7500198oib.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 18:48:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592790486; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ds+zOXGJQcgxWEN5zpdDOabTk2ddgrsCZ0K7dpw32mi75M7G+vlIDkNOsr6QUi4xC
         Onvfo6ANpgXWZ92VCPnl3SUrOwKUHSqu3Al92RatY/cOX+0SE5s5g4nW+2DMl1JtB4lh
         oOHY7Q5jS7dIgsKXxL9PQwAr5Knxw7Dk4rtYYPjHIhL7abfLC2TW+MV3t8fV7eJsQ0Af
         +G7RvmbZ2+2htEYuV09JLBbwkgiTqTPoNT66b5Ezr2VTHlwuEPWivGPZuus37O/7hgSp
         ojo1gN6JSkOjVb1t8im84MGlaoZWR0Qk6rD7H+UvmKHdGLo3BJ2fpZA1dmngAe8f4yCu
         vAPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=avjoKlG0U6VNtZsTw0Gs2ExaOZqSgT0hmwEt4J6Jx/4=;
        b=HmNHEo0l9FqybllTwK0qfuFP7rf6nq9P1B0kYgFErRqJjQr+cqajnxKIo0/8o070jM
         UQB1dkrrmE2PwLUJS7qeHERaXgmpSvF0qETEGFoII+izbKrtlq+kJ7BoaSgNL515gHlf
         reGnqiknpIsPITzKXE1HjMkDor6NNwhz2NWkRQfZGaHIVXrQW2kvniLMh6v6vEY7Mpqa
         d+rayV1CbFRja5JtUaUMLi7Lc04MxZt8/9pvy7YT9MFLkLoQBMDJFWcPox1FsW2O69vA
         QfO3uH3hHpv2Nh6BsbOlfpR6/PHapYMiQN0TlgTm9AcRA3FvWsmNxoLh72/HLhEnpTLj
         0F4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A5Ut+EvX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=avjoKlG0U6VNtZsTw0Gs2ExaOZqSgT0hmwEt4J6Jx/4=;
        b=sytSvlGm+yYxqpHmvXFuQ4fR09S0kw73SOL9uxRMAd2gwVJYXYTVo4sBw7cgVllZDr
         nqSgKaCLaorusI22sUMlFcd+Bi9oDkrh4HOMEWXd3NHeXPN+2jGwjPcZkDamo6cbo1VD
         LPC3xPwWg9uxwcouHsG1x67A23OqBGEAvvWMiMqIuh1O/AiCPYCtQUKSi8RWtth0IaVM
         C/wI2Sr3kOg/uu4oWwSxFhMtj6vQT0h5/Pga1/hxqw76B19UQHHDF9FfVmy0MI24+Cig
         Nj6Fn/gpVvImkpsYv0PKVDQRvIm4cIFOqYFzqXxRFgh4qwVtwYqJNncp3zEDXvm1jhVa
         rzrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=avjoKlG0U6VNtZsTw0Gs2ExaOZqSgT0hmwEt4J6Jx/4=;
        b=PNF5GZPd+j6tmpI9TmkW25xvQlbTANlys2BEQehJ30ycDFkfmrgPZ8uFPFB/3pDS0K
         yH/+pLDKeF6nEbroLddnAiSmTjmRrv7CzM+xaPOpC0Z2ZgGlGQ2G51UkS1oVbYHMdV89
         SyWS3fgSi/KXq0kaRkAOrqsQfxgqInH65+Ss6uWSH/8502gh7LiDyHc+AHp0JyXsaJE5
         Uq3P03kgL9jt9SpFdp0xNgielRTNcIAtu0XXC/2qC43eXGLeA8KIvOd4jiquU9yT3iz2
         VZeM4w6ZZhBV++UgNnqfNqZBLUwVbVRNUaJFsRYdQfcP2BoU7kqGrwh6/hIKGrWN8PVY
         vzHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=avjoKlG0U6VNtZsTw0Gs2ExaOZqSgT0hmwEt4J6Jx/4=;
        b=giIfQ2r2pWFT/LXqvTeBZWeBL8NmYxNSmcd6cT7WzTaLFPjFnE24yJ+OWLkRn20K5j
         qamjqZ3rylJeGHvWJpm0ZQR+PoWRMMlBxb3DRZkz6CagTvlo4Bf571kTOlQWtJphxNf0
         eajCP6+uNsl1keFgL+XRuh4NzKpmBaU+DONaShW5biiYOJ2vCPQ13iDebZZhJxWirnmu
         lyq1L/KwabdjhhtXnF9cDjPIr/VmPgFOXvrfO9vMURnlwl4WTkAy0qSYq6CIOHleAsxK
         FwSYIP+YSKFk8ohVWx6ARiuci89y7PAO6WRJloxVUYDUBpL6pUZEgppACM2qOnNkSdAU
         sTGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eKqcStNn9/gT5w9kDqqLiXTQlVcxlQqM1YdO6Rh1pbgxAswdp
	Q8vZZq2gUy8WSCeav6OOKz8=
X-Google-Smtp-Source: ABdhPJyk6JDUTJxVtjPRCEii8MoOk15etJJjvmTUk/Nxj2l9ugiaDrYPR6lWzipSEA52NwcLstIRFg==
X-Received: by 2002:a54:401a:: with SMTP id x26mr11002191oie.54.1592790486172;
        Sun, 21 Jun 2020 18:48:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4c51:: with SMTP id a78ls836235oob.6.gmail; Sun, 21 Jun
 2020 18:48:05 -0700 (PDT)
X-Received: by 2002:a4a:221a:: with SMTP id f26mr12351960ooa.69.1592790485866;
        Sun, 21 Jun 2020 18:48:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592790485; cv=none;
        d=google.com; s=arc-20160816;
        b=oMdFcuRquEA+H4ZVLeD3qCTr3aTPO7QRsQfZ2rZyMs5K3zfVMlKiiQQk0pHukGWcf2
         /L4/UL9RKq0/lPgT3+VonpfpB4S8WZTC+YBVKDvYgnRl8mxVNChs4SM5AvGGOk7XJ/R1
         No+OPPQFW8KrNsiatjtiPPOQtHZgotAnSXDIqBtyphwU/kE9wJS/3nKAyrxOAwiBVRDx
         06tFQANBkyTI6Mczkji2JWJjOWU4cjXlpjaDTe590yfGMUP2OuU1BS7nAe64WGtA4nvy
         mmEIy9Vr5K601u/G/VJDYJl6zQA9rdlyAm0mgHCTUsudAAfvCiAu2UDZJsrDHwaRgSak
         0V3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ze28Eq/j1gsI361qz29/4oK9sda0rS5bu0lcqoefJK4=;
        b=LFsEfH9mgwoYIEsklZJshUWQrD0h02OlOMTMYIh3KscSZHjN9n6Iep4NZ1CtWeCbIj
         r3XGf04ITOQOskTy0ew1Wi0h2XvWJjmM8Vnmyxafw66F+8jMz8+rlJbPd0kTZZAoXW3v
         kQeeLeWSV0NAbdJBwrVGc6HnEacZ/pWLX6A4Z5S5HqVE7ZooCDzheOgaD0JQfO2kK2H0
         Y+p0vKGfUwlvx34RDfpX3MPDhDFo5xwoV1PR11nH/Kue+RMNViVRBBIRNSLJUCKSooTf
         R1E6CI9kS5oQgxZBiUhHLN80QOgpf3K63EwR9dc00tKMzms8785JKZ54QUJsZqZ73dfS
         1axA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A5Ut+EvX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id c26si831269otn.4.2020.06.21.18.48.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jun 2020 18:48:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id i74so14238936oib.0
        for <clang-built-linux@googlegroups.com>; Sun, 21 Jun 2020 18:48:05 -0700 (PDT)
X-Received: by 2002:a54:4406:: with SMTP id k6mr11236087oiw.60.1592790485427;
        Sun, 21 Jun 2020 18:48:05 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id s15sm2961118oic.54.2020.06.21.18.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2020 18:48:04 -0700 (PDT)
Date: Sun, 21 Jun 2020 18:48:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Roman Gushchin <guro@fb.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Michal Hocko <mhocko@kernel.org>,
	Shakeel Butt <shakeelb@google.com>, linux-mm@kvack.org,
	kernel-team@fb.com, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 3/5] mm: memcg/percpu: per-memcg percpu memory
 statistics
Message-ID: <20200622014803.GA2916179@ubuntu-n2-xlarge-x86>
References: <20200608230819.832349-1-guro@fb.com>
 <20200608230819.832349-4-guro@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200608230819.832349-4-guro@fb.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A5Ut+EvX;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jun 08, 2020 at 04:08:17PM -0700, Roman Gushchin wrote:
> Percpu memory can represent a noticeable chunk of the total
> memory consumption, especially on big machines with many CPUs.
> Let's track percpu memory usage for each memcg and display
> it in memory.stat.
> 
> A percpu allocation is usually scattered over multiple pages
> (and nodes), and can be significantly smaller than a page.
> So let's add a byte-sized counter on the memcg level:
> MEMCG_PERCPU_B. Byte-sized vmstat infra created for slabs
> can be perfectly reused for percpu case.
> 
> Signed-off-by: Roman Gushchin <guro@fb.com>
> Acked-by: Dennis Zhou <dennis@kernel.org>
> ---
>  Documentation/admin-guide/cgroup-v2.rst |  4 ++++
>  include/linux/memcontrol.h              |  8 ++++++++
>  mm/memcontrol.c                         |  4 +++-
>  mm/percpu.c                             | 10 ++++++++++
>  4 files changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/admin-guide/cgroup-v2.rst b/Documentation/admin-guide/cgroup-v2.rst
> index ce3e05e41724..7c1e784239bf 100644
> --- a/Documentation/admin-guide/cgroup-v2.rst
> +++ b/Documentation/admin-guide/cgroup-v2.rst
> @@ -1274,6 +1274,10 @@ PAGE_SIZE multiple when read back.
>  		Amount of memory used for storing in-kernel data
>  		structures.
>  
> +	  percpu
> +		Amount of memory used for storing per-cpu kernel
> +		data structures.
> +
>  	  sock
>  		Amount of memory used in network transmission buffers
>  
> diff --git a/include/linux/memcontrol.h b/include/linux/memcontrol.h
> index eede46c43573..7ed3af71a6fb 100644
> --- a/include/linux/memcontrol.h
> +++ b/include/linux/memcontrol.h
> @@ -32,11 +32,19 @@ struct kmem_cache;
>  enum memcg_stat_item {
>  	MEMCG_SWAP = NR_VM_NODE_STAT_ITEMS,
>  	MEMCG_SOCK,
> +	MEMCG_PERCPU_B,
>  	/* XXX: why are these zone and not node counters? */
>  	MEMCG_KERNEL_STACK_KB,
>  	MEMCG_NR_STAT,
>  };
>  
> +static __always_inline bool memcg_stat_item_in_bytes(enum memcg_stat_item item)
> +{
> +	if (item == MEMCG_PERCPU_B)
> +		return true;
> +	return vmstat_item_in_bytes(item);

This patch is now in -next and this line causes a warning from clang,
which shows up in every translation unit that includes this header,
which is a lot:

include/linux/memcontrol.h:45:30: warning: implicit conversion from
enumeration type 'enum memcg_stat_item' to different enumeration type
'enum node_stat_item' [-Wenum-conversion]
        return vmstat_item_in_bytes(item);
               ~~~~~~~~~~~~~~~~~~~~ ^~~~
1 warning generated.

I assume this conversion is intentional; if so, it seems like expecting
a specific enum is misleading. Perhaps this should be applied on top?

Cheers,
Nathan

diff --git a/include/linux/memcontrol.h b/include/linux/memcontrol.h
index 2499f78cf32d..bddeb4ce7a4f 100644
--- a/include/linux/memcontrol.h
+++ b/include/linux/memcontrol.h
@@ -38,7 +38,7 @@ enum memcg_stat_item {
 	MEMCG_NR_STAT,
 };
 
-static __always_inline bool memcg_stat_item_in_bytes(enum memcg_stat_item item)
+static __always_inline bool memcg_stat_item_in_bytes(int item)
 {
 	if (item == MEMCG_PERCPU_B)
 		return true;
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index 084ee1c17160..52d7961a24f0 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -211,7 +211,7 @@ enum node_stat_item {
  * measured in pages). This defines the API part, the internal representation
  * might be different.
  */
-static __always_inline bool vmstat_item_in_bytes(enum node_stat_item item)
+static __always_inline bool vmstat_item_in_bytes(int item)
 {
 	/*
 	 * Global and per-node slab counters track slab pages.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622014803.GA2916179%40ubuntu-n2-xlarge-x86.
