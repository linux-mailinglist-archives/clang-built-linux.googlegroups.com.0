Return-Path: <clang-built-linux+bncBDPYNU65Q4NRBOH23CFAMGQEC4GBFNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA5441E413
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 00:42:01 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id o6-20020a170902bcc600b00138a9a5bc42sf4086456pls.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Sep 2021 15:42:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633041720; cv=pass;
        d=google.com; s=arc-20160816;
        b=Opj1mzVBGOOk4Jt4fl0smrpG12WemubO/a2j7f/EK6AYton9x/5EeCElpcGomWPpnl
         +p9CfozGFl5lcjijmfd7hLbjjhzEfxNYIgsqu5zr012RiaLiaA6o/Q28d5cTlzmcUWj6
         S/HrezE+2uEv9AmzVqCM6VaTuKqv5RoY5sNBWSYGZnWeWY2xDLnoJ1nwNpjc+1pEMAoz
         QdEAK/b4KdPejNiOAV9ofsJFMPQ9e9lHMWCfamO9mAnpxWubpI7HTM0yJZMDAjL6jd7c
         ETMS19Ff4gqggJHU0MR/Ds65/IUDOjSwy8PZ6ncUYlPUoXUzUeyXlhFqz5hAMkP5jdnV
         VdJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=M8BtFHr/1p7jSB44kKPMz5viJDK1aY1s9j1qrJoM+Xs=;
        b=l1cgKS41sjeQ7TKwOcK18aEajHceUk7so689nHoiTcNdRhD8uQlwLFsI0ULsBOz9qC
         uriPiRTFfgBvb5dnXZZAlO/T9y9OMVb3s2Mc2fiZOb/XIRiGB/MVMYm/uYq1bt/9KpkQ
         gO0ce2wjDZdHop/3qwlq9Dz0mLLix2l9LMrdyCzwFslnzj5yMmY+Y49l4lOhSOAnD8vM
         LjsmU90NDOfqOqgtgU4XKt1mPvTiVFH77mCgY0OTXrgbHvmLSyD4sH5GPxuvAX6WqfmF
         2ZSFfgPY953gO0/eG5mZficXeWJMFxnofk7MaRPvEDF3hASU40qnR6zxplot0pBr596S
         iwuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dGDIR4Az;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M8BtFHr/1p7jSB44kKPMz5viJDK1aY1s9j1qrJoM+Xs=;
        b=c6V5iw5heGAT0lHAx9zclLbbMOmwJ+Mbap0nE6DU/lad82Bzf1duEh4QjiKVagyciy
         Azdi2wAUVLW10wc6yFRhV7S9CtSDgCDX36F0eanz1o1iURvWLoy/MMm+ernYlDREY1GE
         ELW0gqoymTVnB8mIzZTXTuSxk7Ife6zvnD0kA6ighEPNbbKsYLUSP2xVcnezS+G6x7UG
         ZI7fPOsDloESygHtwzwjyGWAX7FWZV7CJxXW1+aTNkJDYsac0rTQmV6Sfoes+f/kg/fI
         dc/QrNqv1jSrKH0Yj8Xce5gTDocAPTbLHQGfCq5uF8ABV4ZeSRJ4O3zwgQRZKc9iYy+B
         zGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M8BtFHr/1p7jSB44kKPMz5viJDK1aY1s9j1qrJoM+Xs=;
        b=ZPCMLCq/RiQlgybf24PpyiHmiy/BIA4wn9Pwkkj4iYJTLLa/3B6KI8ZOOWPKfpXJh6
         N+XSClYPfMnF4v20Nfomve+ijHE6Hdt/vaZBxlI7+Ytn54TszHDraU4XKyou0FMOGULp
         qQnrdXPBOf7ygM3KOAe5dJLXMtej52MVj0rXXVm9CSqOE45oKhPcIwuNpOj12eWJf6Ma
         wxb/5+XqVHp95morcsE0FaGThtBfxofIYyq9fL/NW/MECEWLcZfudvLUMa+H09lPqFGg
         r3WNdFaX+yDBYyRd32VqHAE0sP9JrRNOUy2eRdCWcHC68EzjoL+xiy1e7HLiijM40rcN
         0Rbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cjrfhrgGl3sKWRHhVP3+P+YcfnBL12hD//3QBQqrcWHntgL2d
	VXrqx1rCHS747Koj9eG2low=
X-Google-Smtp-Source: ABdhPJzRvTjybLqWgDS5JUJFfkT0kc/r1geyUbxHlmJf6Aj8Eq/xG7CdcNZQQ1pTJ6JIh//Uh+bS2g==
X-Received: by 2002:a17:90b:1d0f:: with SMTP id on15mr7345335pjb.77.1633041720141;
        Thu, 30 Sep 2021 15:42:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ba97:: with SMTP id k23ls4218251pls.10.gmail; Thu,
 30 Sep 2021 15:41:59 -0700 (PDT)
X-Received: by 2002:a17:90b:4b03:: with SMTP id lx3mr6169414pjb.137.1633041719539;
        Thu, 30 Sep 2021 15:41:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633041719; cv=none;
        d=google.com; s=arc-20160816;
        b=RVsNK6obTjPJeH4G3T7I5i71l3dpm6DhYrMLyLhosIyt3av7O4OJHDJTsikZHPCEwY
         sytFWZ5+GUwKtV6gczOnRph/VapueVfJsHI1YUDBG5iONQN5HfUPsQ2RxHg+tajryNN6
         +PFMYxB5GLdrqwjjYoe638LyeSDiqikUZvcvo62RG+6KiqQ6SZ4VffHrY+/cxps4FdLz
         OxEMwXcz8yOdiCxFVLCo65n+CLXQt6vtOHbSdHypSUYNZ5iqo8FuLHFzs8+PFgO3FcIM
         oHCOGyuxHE5FBdV0JByL/OkdvPi1SxYyJ0XZXO17Zdc+i7saPol49yr4Y8YmraFuxovf
         C4lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oSJbVQ4hKLnKt6Es8obmnopvtKTg9dCPZhy2aaIFHAU=;
        b=x/AROkrWatPJJgyVVmHqif6j2uZozGmk2OmlVcmM8gs6sHSgRQlLMsoqvUvGtSn5Pk
         w8PbUThvelwj3aZaZYW9eNTPa2dyOyiDwJdX8IVURqoaVlqMPDxSI8YkFY0lw1vsZYkr
         BvFzygoAzwu8D/zgGXPTtxWZjBGBpVkvAgoZa6eqYQV3F0Pt9IjVJiE7uo0zHAcxFncx
         S9VE2eCwe/UN7Iu1tq6AvkY12pYeKZABDYypOeldX6tekdkIW4gU6Glbtah61jSuTgNj
         5lyrxkwfrULMZLzDW/yZdqm6TM0U9NriAmGbkgLFHosQhPGjXZ6g5yw2+aEXQlyT6n5j
         y+/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dGDIR4Az;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c11si488260pgw.1.2021.09.30.15.41.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Sep 2021 15:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2FA9F6109E;
	Thu, 30 Sep 2021 22:41:57 +0000 (UTC)
Date: Thu, 30 Sep 2021 17:46:04 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	kernel test robot <lkp@intel.com>,
	Matt Porter <mporter@kernel.crashing.org>,
	Alexandre Bounine <alex.bou9@gmail.com>,
	Jing Xiangfeng <jingxiangfeng@huawei.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Souptick Joarder <jrdr.linux@gmail.com>,
	John Hubbard <jhubbard@nvidia.com>, Joe Perches <joe@perches.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v3 1/8] rapidio: Avoid bogus __alloc_size warning
Message-ID: <20210930224604.GA906353@embeddedor>
References: <20210930222704.2631604-1-keescook@chromium.org>
 <20210930222704.2631604-2-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210930222704.2631604-2-keescook@chromium.org>
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dGDIR4Az;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Sep 30, 2021 at 03:26:57PM -0700, Kees Cook wrote:
> After adding __alloc_size attributes to the allocators, GCC 9.3 (but not
> later) may incorrectly evaluate the arguments to check_copy_size(),
> getting seemingly confused by the size being returned from array_size().
> Instead, perform the calculation once, which both makes the code more
> readable and avoids the bug in GCC.
> 
>    In file included from arch/x86/include/asm/preempt.h:7,
>                     from include/linux/preempt.h:78,
>                     from include/linux/spinlock.h:55,
>                     from include/linux/mm_types.h:9,
>                     from include/linux/buildid.h:5,
>                     from include/linux/module.h:14,
>                     from drivers/rapidio/devices/rio_mport_cdev.c:13:
>    In function 'check_copy_size',
>        inlined from 'copy_from_user' at include/linux/uaccess.h:191:6,
>        inlined from 'rio_mport_transfer_ioctl' at drivers/rapidio/devices/rio_mport_cdev.c:983:6:
>    include/linux/thread_info.h:213:4: error: call to '__bad_copy_to' declared with attribute error: copy destination size is too small
>      213 |    __bad_copy_to();
>          |    ^~~~~~~~~~~~~~~
> 
> But the allocation size and the copy size are identical:
> 
> 	transfer = vmalloc(array_size(sizeof(*transfer), transaction.count));
> 	if (!transfer)
> 		return -ENOMEM;
> 
> 	if (unlikely(copy_from_user(transfer,
> 				    (void __user *)(uintptr_t)transaction.block,
> 				    array_size(sizeof(*transfer), transaction.count)))) {
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Link: https://lore.kernel.org/linux-mm/202109091134.FHnRmRxu-lkp@intel.com/
> Cc: Matt Porter <mporter@kernel.crashing.org>
> Cc: Alexandre Bounine <alex.bou9@gmail.com>
> Cc: Jing Xiangfeng <jingxiangfeng@huawei.com>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Souptick Joarder <jrdr.linux@gmail.com>
> Cc: Gustavo A. R. Silva <gustavoars@kernel.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: John Hubbard <jhubbard@nvidia.com>

Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
--
Gustavo

> ---
>  drivers/rapidio/devices/rio_mport_cdev.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/rapidio/devices/rio_mport_cdev.c b/drivers/rapidio/devices/rio_mport_cdev.c
> index 94331d999d27..7df466e22282 100644
> --- a/drivers/rapidio/devices/rio_mport_cdev.c
> +++ b/drivers/rapidio/devices/rio_mport_cdev.c
> @@ -965,6 +965,7 @@ static int rio_mport_transfer_ioctl(struct file *filp, void __user *arg)
>  	struct rio_transfer_io *transfer;
>  	enum dma_data_direction dir;
>  	int i, ret = 0;
> +	size_t size;
>  
>  	if (unlikely(copy_from_user(&transaction, arg, sizeof(transaction))))
>  		return -EFAULT;
> @@ -976,13 +977,14 @@ static int rio_mport_transfer_ioctl(struct file *filp, void __user *arg)
>  	     priv->md->properties.transfer_mode) == 0)
>  		return -ENODEV;
>  
> -	transfer = vmalloc(array_size(sizeof(*transfer), transaction.count));
> +	size = array_size(sizeof(*transfer), transaction.count);
> +	transfer = vmalloc(size);
>  	if (!transfer)
>  		return -ENOMEM;
>  
>  	if (unlikely(copy_from_user(transfer,
>  				    (void __user *)(uintptr_t)transaction.block,
> -				    array_size(sizeof(*transfer), transaction.count)))) {
> +				    size))) {
>  		ret = -EFAULT;
>  		goto out_free;
>  	}
> @@ -994,8 +996,7 @@ static int rio_mport_transfer_ioctl(struct file *filp, void __user *arg)
>  			transaction.sync, dir, &transfer[i]);
>  
>  	if (unlikely(copy_to_user((void __user *)(uintptr_t)transaction.block,
> -				  transfer,
> -				  array_size(sizeof(*transfer), transaction.count))))
> +				  transfer, size)))
>  		ret = -EFAULT;
>  
>  out_free:
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210930224604.GA906353%40embeddedor.
