Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSPZ3X6AKGQE76AOVCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id E33C129A25B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 02:50:02 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id v4sf17057vkn.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:50:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603763402; cv=pass;
        d=google.com; s=arc-20160816;
        b=UPFLIO98ljnl/1kxb7iEA9yBB+EDpBHs1HMOnvFl4i8gQS6HrjznfrWfzT8W53+CRG
         UoDfe2z62ac69NhRV1QWUHBNsWZnQDQKXGFfRKwpTwxNSU8dc6VY4foGOUKAMtk8vAz1
         iab0n7Bzws4STR2ubVrPIabQ5npykgN92/YqTz5AwXKfK/90RC6S2MnrTO9dtnlNr8kN
         o4I4sh40pXDIaynbR0GGNzj8dD4kL+lbVuIue8Yi+hahlAQHoaNB53D55velL234F4KB
         rmRpOrjFjAUAE1Qsb3w918c9EcwVBNS6c7gx2wIKk8MRpS7S0RppbbN5JQVtEGJzI+1b
         lJSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=WVaQ7dD6QhD268ii7pnnEyp+eRHlS1CCtQp9XebfDdM=;
        b=gfRKHvqIFphh6oedwAqDlkFGFGOcLOuhOnP111/Jb2gTiwoDs43KnUYWExtHBpQG/2
         m5XeHM5Bn/QxUZQdu5oa87mR0G7zVrfaeXoNe/l2L5xEbjvO1Uug/gULfWBk/jdlpj8v
         qec3NsIAqTAhQLDQBnih5lRK85f19ARO1eZllR/reauHKhPq65/xfpBIU0kD6WRzs5s5
         79/6h/ZnK7MZF72SEYE6BScfS7lr3ygpqm8XQvl23CdLGzQjdjCaG/tkMQoUBFjiY56y
         QGUKAbuhoyy243q6q+j7eH0922RtpKTSqwDYUy80FVg2MIXRWVjYT3psn2H7crNpT849
         WIsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rywBgHtM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WVaQ7dD6QhD268ii7pnnEyp+eRHlS1CCtQp9XebfDdM=;
        b=AxXaqNvTpM/RT+7Ro1pKAeXUJi2NeTDABdiq9C9FU0XKEKJneBRoso5vvFhsVT/W6I
         zPAr/Kpxa20gnMrA9PufmvBy7SvQbydTqgmTBCubhPG6v2ZoaN9fO2i2zU+OcxYb4Av/
         jKKMylLfmQN9pX/ftMWQEQ3XtUVm7JlrVO2OpKLk8jCggJEfT0dTi1LY5jdpKskvKHc9
         d9vEL5FhNd25o4HwUBJFuM1I8fUtDHJcUP+wwRA1ia4fPNRM5HbxHk+BCDzgwI3ikgwx
         9gGYnQjkrQcDHESp47YoNLM9EAhiZFkIXs7r6l4LtSVHKSHFICw4wwhBHbawUqUREJCv
         LnYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WVaQ7dD6QhD268ii7pnnEyp+eRHlS1CCtQp9XebfDdM=;
        b=GfXb5qVuwmXiIt91iFqkVlPvU4OgbN5aoA63ij+3wsulPIQSWdy15Xm+wf1bAEgp2g
         g/jjuntXylBna4Mqd6qlKhzrOv+4fsmMUDC/QUOSjh00vjk5SEDFZMS+yu3UHOBm0fyC
         LgjiOAUO5c4v0lKsJKf/AKMLYCGLTDg7aSlp1nS/ieHKDx+tXYrzezDgu3VivBE2GGwT
         gizN/EXbbh2zYqEpAWATDDnvFmBRRQRAZcD1EHA9fyza6ZzM2pfmJm5BHUV+xmTtK5Xk
         b+EBDCnpQ/PLxULHRDKfX88DmMwt5QqgvFXWlip2smC6LUpaCrGCPToS5iAsDpWxuZmw
         Txgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WVaQ7dD6QhD268ii7pnnEyp+eRHlS1CCtQp9XebfDdM=;
        b=XZr9sGkix84QCgoa2gFjvaJzAZT3medq1DFvHhV9v+556cKNJm0yFTxNnPE/fQkESA
         23EdajyQcldFkWhxRZj8rbseDmjdL+4y2yAaTK5Ryai/FZbmUrS4VXrrDbujXvef/k0B
         wEd3gve+xxgc30wc68Dm6PDBJeSDsWXkgXU7rSgiXPIzfM9v+vSRXrF3ZAeS8dyK9NmB
         cVupmYmotm0ELNyJKH7vyN20FUKqmOoRhmTeKYFq54J138nBK3gNjw/Rao+DrRwVzanm
         FibWcGYDW3l5XF0Y6G+kEV1cc2iOln+mBkZ+iOa13XBmfHaRDgZmlkwV16ttoMNesBaj
         P4hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530R0QZii5xjgdMRX8jb96BvOwKPv+yk8vZ7Z1R5Y4hRT2ovyhFq
	As/YFc8cZdsvhYjB+1YnSvk=
X-Google-Smtp-Source: ABdhPJztkBiFMI7W3OgzKOqdtFKE1CBd2Xb6lWSeg0cHwIkDyIAwu0InlqoIoFO+czkAGcSRP42FTA==
X-Received: by 2002:a67:f512:: with SMTP id u18mr177008vsn.29.1603763401944;
        Mon, 26 Oct 2020 18:50:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ab4f:: with SMTP id u76ls785vke.2.gmail; Mon, 26 Oct
 2020 18:50:01 -0700 (PDT)
X-Received: by 2002:a05:6122:1079:: with SMTP id k25mr58266vko.22.1603763401526;
        Mon, 26 Oct 2020 18:50:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603763401; cv=none;
        d=google.com; s=arc-20160816;
        b=OsAmo05b6IOxQ5vMiwBIjTtP1yYQlGwVr1qHP140kxGuErHbTPP8VYvDe3ys2Kl5fI
         vAX0O/kBbo9zSM/HNavG92gh5qKVShNOCI0GnWU6D86nOfAv+PKNBGO/PBNgy3reCtmZ
         3RKOq0rjlZ0vvFPQD5W0+7rE6KJgaCEYPl69WwGfUEpv4fG1ogSJjQifdZeQxJ4/jJAw
         cNIVig1lu6wOv+uzZHN3MJaQZ3q1q5EHpjzxw2xYc68Di1v67BIvkd5IUki4hIN7E0s0
         lPKE8jo4G/CjWq/Kqweq9zXBni3wEFIl+mUp1mG2a/WqhzMGQYVmFvzP1LPHgJiTVvbE
         JWCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3MkBL9kxBLfwKS6bNUgGvrFCUEtAsRRukONV85cWDUo=;
        b=cAyurQcX3Z/JvAfCt4BszJwvU4cZ2/NIa72/IytwDWLvVFFzbFjD+uLBg62twCK969
         oD0kOxPzt7n+MFL1o06PsAN3QNGNgiyEOE8RguCWA6Ul38TyOBhaMl1HROUsoiNgdGL5
         5/0+F3iejhwbxnFCOxJqH7Kr1jM35/cJTgF+wPGg17MF/GssY1yVGnh9WIamU4Ubejm8
         8IwpInNw60XO8ZPa1hJM4NWmt2jhdkg3pU3s/+QXYeOPKr1iIdGHdqqI19z0wLQQN+BW
         cSfX7R/T0u05rywX3bSANly9AMX94T/DDC1D4ZsE9azSsfP75nwIeavPp3CGkkifLykL
         AkDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rywBgHtM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id e7si564819vsr.2.2020.10.26.18.50.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 18:50:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id q199so10363892qke.10
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 18:50:01 -0700 (PDT)
X-Received: by 2002:ae9:e709:: with SMTP id m9mr19494855qka.397.1603763401118;
        Mon, 26 Oct 2020 18:50:01 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id 6sm1570qtz.31.2020.10.26.18.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 18:50:00 -0700 (PDT)
Date: Mon, 26 Oct 2020 18:49:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Amir Goldstein <amir73il@gmail.com>,
	Jan Kara <jack@suse.cz>, Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] seq_file: fix clang warning for NULL pointer arithmetic
Message-ID: <20201027014959.GC368335@ubuntu-m3-large-x86>
References: <20201026215321.3894419-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201026215321.3894419-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rywBgHtM;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Oct 26, 2020 at 10:52:56PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Clang points out that adding something to NULL is notallowed
> in standard C:
> 
> fs/kernfs/file.c:127:15: warning: performing pointer arithmetic on a
> null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>                 return NULL + !*ppos;
>                        ~~~~ ^
> fs/seq_file.c:529:14: warning: performing pointer arithmetic on a
> null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>         return NULL + (*pos == 0);
> 
> Rephrase the function to do the same thing without triggering that
> warning. Linux already relies on a specific binary representation
> of NULL, so it makes no real difference here. The instance in
> kernfs was copied from single_start, so fix both at once.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Fixes: c2b19daf6760 ("sysfs, kernfs: prepare read path for kernfs")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  fs/kernfs/file.c | 2 +-
>  fs/seq_file.c    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/kernfs/file.c b/fs/kernfs/file.c
> index f277d023ebcd..b55e6ef4d677 100644
> --- a/fs/kernfs/file.c
> +++ b/fs/kernfs/file.c
> @@ -124,7 +124,7 @@ static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
>  		 * The same behavior and code as single_open().  Returns
>  		 * !NULL if pos is at the beginning; otherwise, NULL.
>  		 */
> -		return NULL + !*ppos;
> +		return (void *)(uintptr_t)!*ppos;
>  	}
>  }
>  
> diff --git a/fs/seq_file.c b/fs/seq_file.c
> index 31219c1db17d..d456468eb934 100644
> --- a/fs/seq_file.c
> +++ b/fs/seq_file.c
> @@ -526,7 +526,7 @@ EXPORT_SYMBOL(seq_dentry);
>  
>  static void *single_start(struct seq_file *p, loff_t *pos)
>  {
> -	return NULL + (*pos == 0);
> +	return (void *)(uintptr_t)(*pos == 0);
>  }
>  
>  static void *single_next(struct seq_file *p, void *v, loff_t *pos)
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027014959.GC368335%40ubuntu-m3-large-x86.
