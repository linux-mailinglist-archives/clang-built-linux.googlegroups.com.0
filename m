Return-Path: <clang-built-linux+bncBDGIXFWLTIHBBJ6Q6GCAMGQE7IMANEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE0237EFFB
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 01:43:36 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id a142-20020a627f940000b02902ae03d812e7sf10211805pfd.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 16:43:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620863015; cv=pass;
        d=google.com; s=arc-20160816;
        b=EjWpoF/A3O8HsHt3vSalrknZpNs9d6/E6hHtMOxW4FJok5LpTlOPvztvPFAtpBr8B9
         /6BKOnY5dQnZWbEOZwWvjhrta0Gpcgw7mqVpmoSdeoMI9M4NxkgMapN2Z2qWFFkmlf6r
         Tt6nLbvs05SXVaXGdEs0OmSVn9HRRq61YA72bCHM78DOUYoiyuGOm5wy8hF4++SkADH2
         EfbHNSiRb9hZUzR93HsGB+DSrVP+blNx0FwjcnYh2GGMCoZ2qIMrhEM2NlyII64tfniQ
         NvHZvxEOatyfEzoXdIVwqbAjJnlDyUWLKR3i7JYA2TsYA7w8gGf6KWCslyE8dvfJZDGc
         V39Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=AI12JI0NYVFDuNusPGlSOicE6mbTXorDUIR3V2PaM1Y=;
        b=vqFMuUEC85TI1jYJ/9AgJUIi1+EZ+2PElDpYwf6/T96s5COmUJhy19Bza5S72VoCZM
         UFevHR90a8CBnQnZFtahiinbQM22P1dyBPN+GqbuIHlIbmH6hisL28ZXSf6DQgYdmfFM
         Vh//xVVxtTJncF3at66ko8uus4yXnOXWLalZXZQXBsvGf1TwxvLoD+H+Ak5za7I5MeK2
         HRHGXt537QphU+UygDUN843bromtJepnyFAKvMH2YUpj0H5zJ3Cex1MDr95+lVLYJE3o
         q2Ub2/P8SClPCszLexOMZMN4ZE7R3tbBwwzLUziarFpMOIRTY33APcld44H2bhE/ZWK7
         5MFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MBV9DlCY;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AI12JI0NYVFDuNusPGlSOicE6mbTXorDUIR3V2PaM1Y=;
        b=d9FWt1Ltu8GYDN1S8OHh1NAaIv+DDVR8zPZC160wSWhObhN0j4DdUqH4LSoY+29loG
         gQjdl/CPUaSLj6Qsbmu4ywZzKuE4zRYNaZNq1ollCRx2ERX4B4W2H7JG5rOJ5TGqXqfu
         yiOSMHfaEvwejZ2zdfQBl6JBZUEWZ4e1exaaVZglFTW9We0//DtWEi9+ohFMFPPzixEc
         kcEDMCvUhO+Vy05gL5kHdfZ8zaXo85tiN5roPZDn0D4+ke0pHD8e9LJYBQ1vOtR2US7G
         5hLPYPYhPKtSkyfO418SnCCTqV6tDg3112/Ge17KSHKjwJPaPII6o/4PJcf0jLlITkK7
         YEtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AI12JI0NYVFDuNusPGlSOicE6mbTXorDUIR3V2PaM1Y=;
        b=qGmXRPQzxV2PJ7sf373gOoIykWXbL2v+Z37gpSHaagEskJSvsOBPF4bBTenoUCN4oy
         i2VbcErvwRPOT+cSu4SW5N75mAp6bqRC+2WxepZgJxY9JWlfyhhf+52JbOLbQVT8sn24
         iqzEsRCs5d603udZsxHyIoHoPda2cm9aBTK01SVCAyjOjv259uAnRf+pYUQQ/6LlgL8L
         BoDazIu0d9X4Q/pKt8nAztqYZ9TZnzmcB/YEAwHYSU7K87paDWQd8LD/xySs0OeEOLxE
         fVt/00lZPshdsEx/bGk5lqmblPZdO2A8btFugyACK2SYPDIeP5XPTgJFcTuzuSQMJq51
         w+Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IB0AX3TzHaqKC+L8Lws0kK7rmdDzgrZlo5iD5uqJt3Y3R+usN
	5lQbXPJ4DeEksBtXfR4o+uE=
X-Google-Smtp-Source: ABdhPJzVX3pq71W0rH+D3DfKrdWuBk3Zos6yffvEN1McgHFhn++Vp+aXc3tcVEupCjs5n/lE1ie6gw==
X-Received: by 2002:aa7:949b:0:b029:28e:b8fb:7c81 with SMTP id z27-20020aa7949b0000b029028eb8fb7c81mr38646039pfk.42.1620863015553;
        Wed, 12 May 2021 16:43:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3014:: with SMTP id hg20ls4575011pjb.3.canary-gmail;
 Wed, 12 May 2021 16:43:35 -0700 (PDT)
X-Received: by 2002:a17:902:9f8a:b029:ef:48c7:e438 with SMTP id g10-20020a1709029f8ab02900ef48c7e438mr14219022plq.8.1620863015056;
        Wed, 12 May 2021 16:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620863015; cv=none;
        d=google.com; s=arc-20160816;
        b=Oo9Eg1VLniMSHH004NdqHVSf8tVw0C5vOTcvb1x+6SGfXienGSzYJS06DmEKF/A44C
         miitLqtVKHRQC/n/sPz2sBc5TnZv5IwjI6bkRKeSYEHeAZIWtLtcdsQN5XFkyiceaCn9
         JYrKvk5s52WQtSMTsbkSsOzCbOZJMULJi17+pfjxq3eYEL+hm4R+jPXyM4YCiPJUn8eg
         zTkGKQ0WSNsszoQCHhBbvQ1SnF2KzA9iWr7y85EAIzvzzlX4CI2RwfBxqMuai/PBklgl
         sQ+wpLKIdssLBwfPErcgNrIylpBW+MEsEHXyB8CINip3DTNcex2o88I0dnDCpxK0eYWC
         wF4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fDXcQ5hhizc+dV/uBZpN6Rv8VUgoeB4MPjr8yI+mR2E=;
        b=UJIc+lLOsThb4YjcLEUoIIPRPuNR+BP1nZAD02Xrjc4QJQrFyy6csW4JpPLKx9bUEf
         oLu1/oVgo9Afp61TpVqYfMBdL8WmqIA4Twgy9qdOncYNabXCKv9wbXuA18YI/6h5Iyhj
         /GzTNdhmjvn/dpSLlJ9hvkksV1EHOoFbDl+aDCPB77SFq2SADiJb6PqGuKbuSdgwMLQg
         FlVWMVPewt9tyIoo+wJAj/S5GKJJQBVbTnxGDgTilPP9apfO6srTZpP+mVmTKcPYfF9p
         XycLVu3CPnRVc21h1GtfXtWnohiv2+OM1JIWgMqRMxtsFILluFroi2dU92H9sESTiFiY
         FdbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MBV9DlCY;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i3si192692pjk.1.2021.05.12.16.43.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 16:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5283D61408;
	Wed, 12 May 2021 23:43:32 +0000 (UTC)
Date: Thu, 13 May 2021 08:43:31 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
 <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 naveen.n.rao@linux.ibm.com, anil.s.keshavamurthy@intel.com,
 davem@davemloft.net, mhiramat@kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] kprobes: Allow architectures to override optinsn
 page allocation
Message-Id: <20210513084331.58371b520af4aae914518552@kernel.org>
In-Reply-To: <472c597cc8cc8f74f037acf971f7799fb381a647.1620829724.git.christophe.leroy@csgroup.eu>
References: <472c597cc8cc8f74f037acf971f7799fb381a647.1620829724.git.christophe.leroy@csgroup.eu>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MBV9DlCY;       spf=pass
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

On Wed, 12 May 2021 14:29:26 +0000 (UTC)
Christophe Leroy <christophe.leroy@csgroup.eu> wrote:

> Some architectures like powerpc require a non standard
> allocation of optinsn page, because module pages are
> too far from the kernel for direct branches.
> 
> Define weak alloc_optinsn_page() and free_optinsn_page(), that
> fall back on alloc_insn_page() and free_insn_page() when not
> overriden by the architecture.
> 

Looks good to me :)

Acked-by: Masami Hiramatsu <mhiramat@kernel.org>

> Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> ---
>  kernel/kprobes.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index 745f08fdd7a6..8c0a6fdef771 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -321,11 +321,21 @@ int kprobe_cache_get_kallsym(struct kprobe_insn_cache *c, unsigned int *symnum,
>  }
>  
>  #ifdef CONFIG_OPTPROBES
> +void __weak *alloc_optinsn_page(void)
> +{
> +	return alloc_insn_page();
> +}
> +
> +void __weak free_optinsn_page(void *page)
> +{
> +	free_insn_page(page);
> +}
> +
>  /* For optimized_kprobe buffer */
>  struct kprobe_insn_cache kprobe_optinsn_slots = {
>  	.mutex = __MUTEX_INITIALIZER(kprobe_optinsn_slots.mutex),
> -	.alloc = alloc_insn_page,
> -	.free = free_insn_page,
> +	.alloc = alloc_optinsn_page,
> +	.free = free_optinsn_page,
>  	.sym = KPROBE_OPTINSN_PAGE_SYM,
>  	.pages = LIST_HEAD_INIT(kprobe_optinsn_slots.pages),
>  	/* .insn_size is initialized later */
> -- 
> 2.25.0
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210513084331.58371b520af4aae914518552%40kernel.org.
