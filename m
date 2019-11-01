Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBD6Y53WQKGQEZYILLHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A4EEBC85
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:52:48 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id 63sf3254738vkr.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:52:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580367; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tg0fZI5dar7IiblMh6q4yRr+AXHhTu00A2QSK3i1ZAT+ikYqBj7mWhIqHjf2HRUlIN
         ZrXQmBRZ8gc8XLLwhYVoEC03DAr64FlNI4bQIic0XRuXljePbhC+57nYep+t2e6vZd4y
         D0WgQ38NamgdhSO5Hhg5oxBlzTAOdRx/lXJZ4aH81+Ncp8d9gGJqVlqL4hQCOEGciMio
         T+fLe7qntdjbMRwtuOCNgdopfMLgn4F+ocoAJGdUlmcgU+T7BT2CwHweXwjJ/kShZpdm
         BDAMCb8SoKtVhQbsAmTJhwenexIGNn+q3DbjWW4CNAOPWl3c0KmD/a1QmL+X+TjzGAHF
         QZHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cUpuKLgTmmdNOUSxKrvuk6FxqsxelUx/QEhimnZJ9wg=;
        b=uSYWGfsARoW8OemnpQRuCmgAiPsXIotTO3IhzbadUnmljdGUpO3/YfozydHjbtWmCA
         x78GNn/kZsGa6S3I4K4kIpSVAC/IKaLjwchA6MKmw7u7pSro4g0Mz/28Ty3lttGyChFl
         E2vkoHjDcTBgKB+7qz8KPceoJwSxVKuAWV5FamKahK304QWhtTKWqyTG5wgP26ozipl6
         JCJF+GTbzsM+3QK7R1C6df0FmTbQcMfxe7PkwmQWkvV02Sp8FHdgxn8NCfCvSD/f/QP8
         2T5dD+eWr23cYfxG5+7Y76mSn7twZlK+EDVOI4MbdBkIcFG6dAXA7LqIL1lGGQ8MA2oT
         nCaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gWLZxKI+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cUpuKLgTmmdNOUSxKrvuk6FxqsxelUx/QEhimnZJ9wg=;
        b=DRKLCTc0mWjE3mAlDWp4gnoCbPPzerAAJjlKIgMGh/rYEfhcv2vBnAUtilHLVlKyII
         PWNOC6qZrkxImtbYxpyUaaCuO41uUx3QivGZBp9c+4IwiTv4k9rQbocxHkOGIlztZJmg
         LbGkdjeWSwQ88ty/vNp+quDJWaYhm/y+gNnk6YrPXf96CEMlb838xrWql1bc6t8QS242
         NZEKCGTA/zuYuLCa8/T1oeKws2iKs7n/W0UifcRyCEdxwgS702fBXuhjQmQ3tf5MaAbx
         ozBKFNz3xaTlI7N2A6cd1tSCUcjBtVmt7uB283j3+oBp+44UR7N9bKLWzx0wTYbifvTE
         ZNBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cUpuKLgTmmdNOUSxKrvuk6FxqsxelUx/QEhimnZJ9wg=;
        b=i+77iKyy79muXLS/mZWhDcg9O0csL2v3vwybjoSp6xmqwws6+UEGimKax/yJN8ENsz
         mvjsjr1ChWNZc5+WxXckXXhbSvZYOwjZLd4w1NITei/HupeAR2M4SoUT+DLVL7MLm70T
         s0AaIevc57Va+rJdnUaxFkdZNuBoLdsWfPB9/GjbQZ/fRPmVhTdNz0QvSQIyyaVs+rry
         iqU+QRfgXUWiKFa1uLI4HaU8GVTs/ZZUlwxYpHrycKj7+/gn+SJ1c+UFOATCHVyJguFy
         zfNEGwNLmt8DY68mXd3cGnvqbJBpD0mDPaIS2GE17OHZ1owf+u8kfTJX/nolDjCyL7A7
         GQOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXGR15zGq5o7X7Qm6eAmABELzGFrAp35AITCJvdlNzxO9XZNnyn
	rmEEOoekLUNNrWzjuPdIYe8=
X-Google-Smtp-Source: APXvYqx5ZybMstOFMDP2DnqvdzrL84v9SDj5NuwVPM5rHyMnBN6kthZmN+IneEAwJ/QJ7B549A5/SQ==
X-Received: by 2002:a67:2e0f:: with SMTP id u15mr4686679vsu.89.1572580367584;
        Thu, 31 Oct 2019 20:52:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3dc5:: with SMTP id k188ls196972vka.14.gmail; Thu, 31
 Oct 2019 20:52:47 -0700 (PDT)
X-Received: by 2002:a1f:e005:: with SMTP id x5mr4540903vkg.42.1572580367128;
        Thu, 31 Oct 2019 20:52:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580367; cv=none;
        d=google.com; s=arc-20160816;
        b=xsg6nzbCMBZgj1msLkJKOS4R4sJWfsPRlrZ1wEXd4vJ0Z9s131nKn0wLrce5v9slCc
         eXAsv3KhzlK+hjex9YJTYtyKvMsDkRg0i6VfYrKgWNKRDNOlLaYe20WUkDSfda/rLP2n
         4wm1EYa0oYb/yMaLHtXhwXldfMYyD8O4slOYUJIa0ht5707tvEExCr1cpaqSYUd4Dzip
         aaCH3TN7fCBPIcwFCRQ7MEcrHkfuObstopBw8BVTldUADhre+NS1vqym0NR39cr3Zoe8
         KvDBSSI+y85szDF6H4it4zmvYjnSM4cCYeyPrvu/PFj25GFB6myKIoTuPgtA4O8QKdiY
         vJ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gpLAkkycQDbDSOC/PvJc50WAQNQl23mAQ5YOyKoCOKQ=;
        b=ozsU+yxkyau44IHMZHH9kJ07c+mUvcQjlKv4cofPfrwZ9iQms49caSuVXiyOdRafoO
         xD/ork7IZvdFJg//WAfA264Bxgik1AvJ0ku+ao/o1eNY/2hcp36OKaFApXLcvwKZw3PW
         2V8t+YWOM8R/8/lo0cNW2oEl9TpMJNPx/pzKdaOgXJNkOCHwNrHreHbJJlYHHs0Z3Yig
         Von+BLvo12iwuvLgH4/plJ9uA1qIfbLZy5UUgAlxyD8Sl46SplzeBbKovr0w2EUvnaZU
         i6gO/s1/YWWUqZEiUxzL2Jr1LvXAOEAVS5hJqR8F08bgxlvtB3wjBMpp+brjrqE79Ncw
         b/aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gWLZxKI+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id a12si579478vkm.1.2019.10.31.20.52.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:52:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id x6so3748533pln.2
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:52:47 -0700 (PDT)
X-Received: by 2002:a17:902:b604:: with SMTP id b4mr10080726pls.219.1572580366145;
        Thu, 31 Oct 2019 20:52:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b21sm570165pfd.74.2019.10.31.20.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:52:45 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:52:44 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 06/17] scs: add accounting
Message-ID: <201910312052.0ADF21F@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-7-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-7-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gWLZxKI+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

On Thu, Oct 31, 2019 at 09:46:26AM -0700, samitolvanen@google.com wrote:
> This change adds accounting for the memory allocated for shadow stacks.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

A nice bit of stats to have.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/base/node.c    |  6 ++++++
>  fs/proc/meminfo.c      |  4 ++++
>  include/linux/mmzone.h |  3 +++
>  kernel/scs.c           | 19 +++++++++++++++++++
>  mm/page_alloc.c        |  6 ++++++
>  mm/vmstat.c            |  3 +++
>  6 files changed, 41 insertions(+)
> 
> diff --git a/drivers/base/node.c b/drivers/base/node.c
> index 296546ffed6c..111e58ec231e 100644
> --- a/drivers/base/node.c
> +++ b/drivers/base/node.c
> @@ -415,6 +415,9 @@ static ssize_t node_read_meminfo(struct device *dev,
>  		       "Node %d AnonPages:      %8lu kB\n"
>  		       "Node %d Shmem:          %8lu kB\n"
>  		       "Node %d KernelStack:    %8lu kB\n"
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +		       "Node %d ShadowCallStack:%8lu kB\n"
> +#endif
>  		       "Node %d PageTables:     %8lu kB\n"
>  		       "Node %d NFS_Unstable:   %8lu kB\n"
>  		       "Node %d Bounce:         %8lu kB\n"
> @@ -438,6 +441,9 @@ static ssize_t node_read_meminfo(struct device *dev,
>  		       nid, K(node_page_state(pgdat, NR_ANON_MAPPED)),
>  		       nid, K(i.sharedram),
>  		       nid, sum_zone_node_page_state(nid, NR_KERNEL_STACK_KB),
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +		       nid, sum_zone_node_page_state(nid, NR_KERNEL_SCS_BYTES) / 1024,
> +#endif
>  		       nid, K(sum_zone_node_page_state(nid, NR_PAGETABLE)),
>  		       nid, K(node_page_state(pgdat, NR_UNSTABLE_NFS)),
>  		       nid, K(sum_zone_node_page_state(nid, NR_BOUNCE)),
> diff --git a/fs/proc/meminfo.c b/fs/proc/meminfo.c
> index 8c1f1bb1a5ce..49768005a79e 100644
> --- a/fs/proc/meminfo.c
> +++ b/fs/proc/meminfo.c
> @@ -103,6 +103,10 @@ static int meminfo_proc_show(struct seq_file *m, void *v)
>  	show_val_kb(m, "SUnreclaim:     ", sunreclaim);
>  	seq_printf(m, "KernelStack:    %8lu kB\n",
>  		   global_zone_page_state(NR_KERNEL_STACK_KB));
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	seq_printf(m, "ShadowCallStack:%8lu kB\n",
> +		   global_zone_page_state(NR_KERNEL_SCS_BYTES) / 1024);
> +#endif
>  	show_val_kb(m, "PageTables:     ",
>  		    global_zone_page_state(NR_PAGETABLE));
>  
> diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> index bda20282746b..fcb8c1708f9e 100644
> --- a/include/linux/mmzone.h
> +++ b/include/linux/mmzone.h
> @@ -200,6 +200,9 @@ enum zone_stat_item {
>  	NR_MLOCK,		/* mlock()ed pages found and moved off LRU */
>  	NR_PAGETABLE,		/* used for pagetables */
>  	NR_KERNEL_STACK_KB,	/* measured in KiB */
> +#if IS_ENABLED(CONFIG_SHADOW_CALL_STACK)
> +	NR_KERNEL_SCS_BYTES,	/* measured in bytes */
> +#endif
>  	/* Second 128 byte cacheline */
>  	NR_BOUNCE,
>  #if IS_ENABLED(CONFIG_ZSMALLOC)
> diff --git a/kernel/scs.c b/kernel/scs.c
> index 7c1a40020754..7780fc4e29ac 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -11,6 +11,7 @@
>  #include <linux/scs.h>
>  #include <linux/slab.h>
>  #include <linux/vmalloc.h>
> +#include <linux/vmstat.h>
>  #include <asm/scs.h>
>  
>  static inline void *__scs_base(struct task_struct *tsk)
> @@ -74,6 +75,11 @@ static void scs_free(void *s)
>  	vfree_atomic(s);
>  }
>  
> +static struct page *__scs_page(struct task_struct *tsk)
> +{
> +	return vmalloc_to_page(__scs_base(tsk));
> +}
> +
>  static int scs_cleanup(unsigned int cpu)
>  {
>  	int i;
> @@ -107,6 +113,11 @@ static inline void scs_free(void *s)
>  	kmem_cache_free(scs_cache, s);
>  }
>  
> +static struct page *__scs_page(struct task_struct *tsk)
> +{
> +	return virt_to_page(__scs_base(tsk));
> +}
> +
>  void __init scs_init(void)
>  {
>  	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
> @@ -135,6 +146,12 @@ void scs_task_reset(struct task_struct *tsk)
>  	task_set_scs(tsk, __scs_base(tsk));
>  }
>  
> +static void scs_account(struct task_struct *tsk, int account)
> +{
> +	mod_zone_page_state(page_zone(__scs_page(tsk)), NR_KERNEL_SCS_BYTES,
> +		account * SCS_SIZE);
> +}
> +
>  int scs_prepare(struct task_struct *tsk, int node)
>  {
>  	void *s;
> @@ -145,6 +162,7 @@ int scs_prepare(struct task_struct *tsk, int node)
>  
>  	task_set_scs(tsk, s);
>  	scs_set_magic(tsk);
> +	scs_account(tsk, 1);
>  
>  	return 0;
>  }
> @@ -164,6 +182,7 @@ void scs_release(struct task_struct *tsk)
>  
>  	WARN_ON(scs_corrupted(tsk));
>  
> +	scs_account(tsk, -1);
>  	task_set_scs(tsk, NULL);
>  	scs_free(s);
>  }
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index ecc3dbad606b..fe17d69d98a7 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -5361,6 +5361,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
>  			" managed:%lukB"
>  			" mlocked:%lukB"
>  			" kernel_stack:%lukB"
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +			" shadow_call_stack:%lukB"
> +#endif
>  			" pagetables:%lukB"
>  			" bounce:%lukB"
>  			" free_pcp:%lukB"
> @@ -5382,6 +5385,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
>  			K(zone_managed_pages(zone)),
>  			K(zone_page_state(zone, NR_MLOCK)),
>  			zone_page_state(zone, NR_KERNEL_STACK_KB),
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +			zone_page_state(zone, NR_KERNEL_SCS_BYTES) / 1024,
> +#endif
>  			K(zone_page_state(zone, NR_PAGETABLE)),
>  			K(zone_page_state(zone, NR_BOUNCE)),
>  			K(free_pcp),
> diff --git a/mm/vmstat.c b/mm/vmstat.c
> index 6afc892a148a..9fe4afe670fe 100644
> --- a/mm/vmstat.c
> +++ b/mm/vmstat.c
> @@ -1118,6 +1118,9 @@ const char * const vmstat_text[] = {
>  	"nr_mlock",
>  	"nr_page_table_pages",
>  	"nr_kernel_stack",
> +#if IS_ENABLED(CONFIG_SHADOW_CALL_STACK)
> +	"nr_shadow_call_stack_bytes",
> +#endif
>  	"nr_bounce",
>  #if IS_ENABLED(CONFIG_ZSMALLOC)
>  	"nr_zspages",
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312052.0ADF21F%40keescook.
