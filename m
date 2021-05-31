Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVG22SCQMGQEYMWHYMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB123967FE
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 20:39:17 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id y137-20020aca4b8f0000b02901f110a6ffedsf5670947oia.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 11:39:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622486356; cv=pass;
        d=google.com; s=arc-20160816;
        b=ouyCKKwfUHyUSgcpZZHgDaImiqK2FFZjS3+nuT4ACRyAohvnIYoUi2CSXnwmX7Ra9C
         F0TONM+8GqCKTO2M8pTEeticA8ysX0hUcuCfHqgoIHg2xuvqZ+fF4JPEzwW0Dprtxp1g
         v8WocvmpTeFk2Z93svHG09MIL7nSXtBMjdhBKyCnDe5tDx3eP/ip7BJaE8n+CiyQzy4o
         pcrSI2MGa6xXNQC72IB7JnRQOng5Z3HfONa6oEZdix1ElkkIu+1S7hCsiFwN/U3bfZCK
         +HlbNlC7AUxNtPUUxRyF6blv3kBlrqmeHGoCG8CIpQgkZOBR4joYzxBgI39Y8UdR/Lj/
         dvBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xzdQsIGOXiy/budc8/242hD5XUbH+PlqUMjb5uO4Ikw=;
        b=RJtx87BYwl4rZMsBiNsEkt7WothL19PUYYOCL6QaXd7zak0Nii8KfGDS0fc9eoxpDU
         57jjSbPyZnft3U223mSWoSOrrf9LvCS7ZT0ON8ydGAxUG9ChkUjRFfRj5fSzXVwqUvnJ
         aHt58ck5vrav8VlI6xnZxpY+8eeNc2lUahYAOBmi8QRQb3OUrNV2WtnAsYUYOBNlgCH5
         PLBQt7b74OJky19BktbRCzV5usvqYuGnQXrZe5b8XW1H6A/hGj84uvLJa1vEbweEbUBk
         AGZqtrwciE8EKpeM3a8pc8gM3KOu99zR3wYX1vpe1Vso0mvKwrrp2FKo4tdD5c4uQLrX
         VMhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RRekc59W;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xzdQsIGOXiy/budc8/242hD5XUbH+PlqUMjb5uO4Ikw=;
        b=VbhlizlGgj6mAP9+5VRcyZ/c9fhfj3NFQZHTeRmCFUK/XbsaAIdruo0DdFWu63aC0m
         zS+DvY5U3LvJ7Vgxxpt4HwBuhvUGxVXEzkdP1lgBuyoUeIIAn1OyFNjrG7hhLLkVrvQk
         9ggZk61RT8Q3xtl8bZzjhwdFTgR2WM4lOX4XIMvWpxTt3aM2tA7c8a6PnYZLXLDxFo1r
         8HjONolnxT8H1wTc1kKiWlP3/+Vmr6x9byN1I0OGz4/UtbFFOTO8l9ekKLiumxygLFuM
         ujcR+Q96NWj+U6lQVlDDaUOYq8yMD4OAPIlcLhC3mV6yJlZ1Nde3qexN1ZK6nkMmC+D3
         FTvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xzdQsIGOXiy/budc8/242hD5XUbH+PlqUMjb5uO4Ikw=;
        b=pFNN4xZiSrwGJeUWuTC8xX9+pKnX938KPsJraAOqzvlwYuM5w/gTZNnTa0kcSg2YYS
         m4/EHOMQk9I6WPlGq+X0plyfVT0kaylRElB8tnSLw7kdVpteGaWNp/60WHjpLFEEBC/N
         0aAVg3eooOeq/FO8XMA8QcEXc2s5IlL3hWdPyBMbmDboyV8rinsWlNKUx25l6XIa6QjN
         5zg4fIUwID3yz/v+FdbmyNZ8pGrOkulVEIVpO9fdhADYZbx8/fU1roOgr1OZeV0cfTcZ
         VUiLdE1EKIMaqGW5Pjhzw5M4ZPUx/BIuvAMIX1dGMoeVLLipOSSh8j6VDUnOfPzh2EjB
         fuaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VjXCKTqYd0ZExIT0w260xdKYTvjT7gjHbKV4G7iP2d8xmje8s
	bSyYktZ06fZvE5WzZwFDtqU=
X-Google-Smtp-Source: ABdhPJwdIQJQHLqM5IVQIW71wv6ozTu2FDCVlZH2uqasktXasbIN449B/ljDAnJ+bGtdi8R2P7CKXg==
X-Received: by 2002:a9d:200b:: with SMTP id n11mr18585364ota.177.1622486356426;
        Mon, 31 May 2021 11:39:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6959:: with SMTP id p25ls1735oto.3.gmail; Mon, 31 May
 2021 11:39:16 -0700 (PDT)
X-Received: by 2002:a9d:5c14:: with SMTP id o20mr18229282otk.328.1622486356099;
        Mon, 31 May 2021 11:39:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622486356; cv=none;
        d=google.com; s=arc-20160816;
        b=Q5vs21rqFiDROv3Mix9lA9gdtoT6UTh1E5baP+XT52rpeh+Xesvet3F4Lr8le0LnAp
         LCPaYwZsDET5y9DqO0DEHPgXTOxweFfVgmhkCRtxWf1ckwLma6ROfQXytBQk72ASy27y
         iCvuj8AqnmcyxR3ZdcunzQJclM1vI0IWbkxPmVT4r6dVq/fzs+PfzgF0PcFhvTCobeR/
         a9zaKeJzIn/ZsxnQgcsOrZCey7VjvRvD2C4FIQUEZgMfmIC3bWDCZofcCNudZjv3rLSN
         Xm69bSTuCgQCalQXKMr4uwK0eT/gdCS55+doa31QmlR4B4qWw0lwB3Z9KvMHORaIJI7A
         AkJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VdvInhi0L2+ThLPNSLECEt3e9A/NecU1e5PzslK5MD4=;
        b=FWITDE7Z1fm+jit8HNiiST4ZJp9kpbcD/UCXBYu3NrEqo5LMBFMGShA2V6YdqpgrgP
         7Nu5DhF3JjVnYMmPbjwj7VXQOiAJxqNJqxiu9TiT2cBqUJbYGTjkFZd8NAO4lgznIjtD
         IleojUfpa3xIBsCtYUTEFcST+T76xt62E+0qSfYGeNVSeVLQGDJ/1JiZUOwMkThdpEdD
         BZw930zwp/7am2fEIuQwMy5Br8v71RHE5lFX/sHE7QIGkWzRBrEc+pNM+l9Hft2AxOgQ
         qMord24n8RFPqTYBx88in6Flr83GaugLbplA2Hlbr/ibUB50vhvBQWxgHSmCKIGm+Uu8
         Deqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RRekc59W;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a10si1319825oiw.5.2021.05.31.11.39.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 11:39:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9106F610A0;
	Mon, 31 May 2021 18:39:14 +0000 (UTC)
Date: Mon, 31 May 2021 11:39:13 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: samitolvanen@google.com, wcw@google.com, ndesaulniers@google.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/6] pgo: modules Add definitions in pgo/pgo.h for modules
Message-ID: <YLUtUV3ZSIqPZbX+@Ryzen-9-3900X.localdomain>
References: <20210528200432.459120-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210528200432.459120-1-jarmo.tiitto@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RRekc59W;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On Fri, May 28, 2021 at 11:04:32PM +0300, Jarmo Tiitto wrote:
> Add new function and struct definitions to pgo/pgo.h
> Few functions are shared by the new machinery so mark them as extern.

This patch probably belongs in 3/6 since these changes are only needed
because of that and this patch is self contained to 'kernel/pgo'.

> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
>  kernel/pgo/fs.c  | 13 ++++++++-----
>  kernel/pgo/pgo.h | 39 +++++++++++++++++++++++++++++++++++++++
>  2 files changed, 47 insertions(+), 5 deletions(-)
> 
> diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> index 1678df3b7d64..575142735273 100644
> --- a/kernel/pgo/fs.c
> +++ b/kernel/pgo/fs.c
> @@ -26,7 +26,7 @@
>  #include <linux/vmalloc.h>
>  #include "pgo.h"
>  
> -static struct dentry *directory;
> +struct dentry *directory;
>  
>  struct prf_private_data {
>  	void *buffer;
> @@ -82,7 +82,7 @@ static void prf_copy_to_buffer(void **buffer, void *src, unsigned long size)
>  	*buffer += size;
>  }
>  
> -static u32 __prf_get_value_size(struct llvm_prf_data *p, u32 *value_kinds)
> +u32 __prf_get_value_size(struct llvm_prf_data *p, u32 *value_kinds)
>  {
>  	struct llvm_prf_value_node **nodes =
>  		(struct llvm_prf_value_node **)p->values;
> @@ -140,7 +140,7 @@ static u32 prf_get_value_size(void)
>  }
>  
>  /* Serialize the profiling's value. */
> -static void prf_serialize_value(struct llvm_prf_data *p, void **buffer)
> +void prf_serialize_value(struct llvm_prf_data *p, void **buffer)
>  {
>  	struct llvm_prf_value_data header;
>  	struct llvm_prf_value_node **nodes =
> @@ -254,7 +254,10 @@ static int prf_serialize(struct prf_private_data *p)
>  	return err;
>  }
>  
> -/* open() implementation for PGO. Creates a copy of the profiling data set. */
> +/*
> + * open() implementation for PGO.
> + * Creates a copy of the profiling data set.
> + */
>  static int prf_open(struct inode *inode, struct file *file)
>  {
>  	struct prf_private_data *data;
> @@ -292,7 +295,7 @@ static ssize_t prf_read(struct file *file, char __user *buf, size_t count,
>  	BUG_ON(!data);
>  
>  	return simple_read_from_buffer(buf, count, ppos, data->buffer,
> -				       data->size);
> +					   data->size);
>  }
>  
>  /* release() implementation for PGO. Release resources allocated by open(). */
> diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
> index ddc8d3002fe5..a9ff51abbfd5 100644
> --- a/kernel/pgo/pgo.h
> +++ b/kernel/pgo/pgo.h
> @@ -19,6 +19,11 @@
>  #ifndef _PGO_H
>  #define _PGO_H
>  
> +#include <linux/kernel.h>
> +#include <linux/debugfs.h>
> +#include <linux/fs.h>
> +#include <linux/module.h>
> +
>  /*
>   * Note: These internal LLVM definitions must match the compiler version.
>   * See llvm/include/llvm/ProfileData/InstrProfData.inc in LLVM's source code.
> @@ -200,4 +205,38 @@ __DEFINE_PRF_SIZE(vnds);
>  
>  #undef __DEFINE_PRF_SIZE
>  
> +/* debugfs directory */
> +extern struct dentry *directory;
> +
> +struct prf_mod_private_data {
> +	struct list_head link;
> +	struct rcu_head rcu;
> +
> +	void *buffer;
> +	unsigned long size;
> +
> +	char mod_name[MODULE_NAME_LEN];
> +	struct module *mod;
> +	struct dentry *file;
> +
> +	int current_node;
> +};
> +
> +/* Mutex protecting the prf_mod_list and entries */
> +extern struct mutex prf_mod_lock;
> +
> +/* List of modules profiled */
> +extern struct list_head prf_mod_list;
> +
> +extern void prf_modules_init(void);
> +extern void prf_modules_exit(void);
> +
> +/* Update each modules snapshot of the profiling data. */
> +extern int prf_modules_snapshot(void);
> +
> +/* below funcs are required by prf_modules_snapshot() */
> +extern u32 __prf_get_value_size(struct llvm_prf_data *p, u32 *value_kinds);
> +
> +extern void prf_serialize_value(struct llvm_prf_data *p, void **buffer);
> +
>  #endif /* _PGO_H */
> -- 
> 2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLUtUV3ZSIqPZbX%2B%40Ryzen-9-3900X.localdomain.
