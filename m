Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6FJ4T6AKGQE52CDUYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 437B829CE6B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 07:51:38 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id l12sf2661718ioj.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 23:51:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603867897; cv=pass;
        d=google.com; s=arc-20160816;
        b=G9vSJdGow0EEy1/lvx1wbaKe8wYyJQyRvl4S+lqXcyrw6CNXqomfZFV8VU5EQ/WBR6
         /MyWp3zWNd51v0qbY71ZpBpTPtUK5hIeII5lytt1YqUSx+adzR+eE49EUE7apN3Q2DtX
         7Ynw+h+EZAfy63FjqhJjRR5RRphScChefCiORMUs6sL6upzwLpUNrjvqbTABT5KoFn+r
         W7JJcb340qpAizxIAYMOyYcGsBJIID9nVmeTcN2XQgP510bNjDW0lfiYizvnCn0aZyt7
         Z8WO9iuhihACJBWLdW+9MhwVMzG2HAU6ri0WrLTT4CIuE0JBKkHVxhOPTZTNCd11+oCq
         mkCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=9QbpQfFt9sFT8FcCvTw9/Ez/eO9EZESjOEqIhyYzUSw=;
        b=D9APRTev3dE4SXKph1+41afEFmQ2G6mX4nkvDkEQJusDqg53W8h3jKxmt/MSnXmGUK
         rbuRh4E1/db+cfPhdgrTs3w+OCmIhbfO7u9WrNpTAeqttPw2iykgD/ndoVDOVHnk/ov7
         P+8HHY3Rd7kkuH6bL7BTiZz1oJQXbUOVo3jjCs8/uboGdF5lccJ6WdG64trmB9c41JhZ
         9k3YH1/ubyG04+P6+i2gKacFnQ+AjBMlhZ+1oWshwaYmfgy/0Td/xcPf0rOkMMnq0JRv
         XgEm9SRp5eOTg3bIPQV2dW3QEJMX9aig8JMP2PohtUxWWj2L4MvyNlfSRPVzl1sEjzGh
         sYZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jpx3AsgP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9QbpQfFt9sFT8FcCvTw9/Ez/eO9EZESjOEqIhyYzUSw=;
        b=T1UBpvNsvtgos6lxoybnoWFuyERdTxKvI3buSUGI6MUjZBbkvbqspDzGmLfG4bSYtN
         3D0CuS2YqJKL7mnKYUqEHfrMALtA41oKh6IOZVqm5E4kCkbb0qw0xnJ8rPdMONNNajfE
         LtH1UcE0XH1hwSMJQ9EoKP6c16XuORH+IbzcpzCaT8qPL7PVbOigwuKEVDD/Xxeo7CCd
         qbMuK9XxHnKd7yDkJoJuyBF2lEUOo+3369sWusZk59cUiEgPrqr61FISS0nSjpzrEg4L
         aeRP2gEb283AW3xztmk7HPlztOwmJRMphhDSDaI8Sb/lAWXy8BKgPrqu2iY9b6Pv7TVd
         eAYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9QbpQfFt9sFT8FcCvTw9/Ez/eO9EZESjOEqIhyYzUSw=;
        b=YOhuP0/A0xH9PLJqaNMy2V1bG5Ul6b4xklUOwDbJYYOHSDHKCQX3xwp+4znDZ+CTeG
         4Z67bt9yPOBRSfnsarON7/eoX2Epa3dfejZy97xR1GPfr33USM5GbcLWRiqhSYWie6om
         kGT2soo2NnnnnxDdrQ+xrXB0FD63DXtoH9dxOKg5Sb0bSvf20Drvl3yyNOTj4/Vi4lad
         u7mTsnCwPEaTe08R58mLQAVdUy2ny5epe1++DNl+uU1FaJNLulHGgPBgHpcu00eGRrsN
         LnAUhqK8Xal24Hc9fpOtytkNAAPijWw9v97TDxpR9m6G1wAz5QbA3oluB4XJmwKZnuMN
         ZK+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9QbpQfFt9sFT8FcCvTw9/Ez/eO9EZESjOEqIhyYzUSw=;
        b=ADWhaO2IWdUDLumGmQO3mt/fpR/sMExWUzvUSoobBWl1VkGZsaCy4mM0CTVZjQdYxj
         ZDJQ2IQ2P5PNDoqMApMaYtnUlI6I/qx2BpLNdp9V/QCkLmcI50apsIZNoAHWrsJQ9RLD
         tgWKbtNNmf+JpnFSTZXtnPKF6AMJQCJ2iInYAst7AQoeyPmipKPsA48rHnkbMbnUrE6/
         oWoJ6fy85h49m+zEc4sKmg31Vayc48YgqmkBRn4aKL7Aslw7zgrbTzS4ku5L0uEm/3gK
         ZeArN9/2zbBi0KQJaCz8zsKzLU2ZRkKacQTDIhEYob2Xt/WlgHpzweYQEW701gAHaUX1
         ciwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Z8D6uFZOCj9U/YJHfRRZ4azawKKDYInN9yROcRI5CZsyPqp4z
	p8QhQB8doqRETFoUxc+DAjA=
X-Google-Smtp-Source: ABdhPJxU4S1qLiyEeW60+RqJv0HwFGHd7/havv7D7pGOce5lu7Ghw68sg1hTjoqlv3sYFsL3norkBA==
X-Received: by 2002:a05:6e02:583:: with SMTP id c3mr4639546ils.14.1603867896825;
        Tue, 27 Oct 2020 23:51:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:5b0:: with SMTP id k16ls1007517ils.9.gmail; Tue, 27
 Oct 2020 23:51:36 -0700 (PDT)
X-Received: by 2002:a92:cc83:: with SMTP id x3mr4840622ilo.232.1603867896449;
        Tue, 27 Oct 2020 23:51:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603867896; cv=none;
        d=google.com; s=arc-20160816;
        b=t4ukH/ljLcBk3bAgi5c2+wKSwYIdHw5uvScSTjmHMgdKvPhTTVd4k46c0tgEDNgmrE
         m6K25GLxCDuFEDnhUivvXfahkCezzeVD8HqKzsJzCu2zc7GPvmq9XjAlcNvDaFVoqSYW
         HiJG68WTJIuup+JcgBqHqj+vuFABAWh3PoDu2PjWin6SkWAiSASf1pvJjxAKruSEp5jp
         1kl36F2HnKUyznGYil6aFjDCimC4IAWXqSR4Qo/m9oZLqLdv5inq8XO6WNgFUZ1J8X9k
         joHJtdURehMi8E1x170/WWW+s/kus4dDkj6DEnCAuvXqVhSL7CXA/1TRequAZo72WLjg
         5cdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ibdSaZ8Nv78jXZZ8NldkQ0j4dNhMGpHKfKsC4EOIlHk=;
        b=Ep5a85807lykFKjRh5PeLLZeHlODpCkOHtihtH6uWWOrDGTChes4SE4vcSFzAT9ihD
         5J4IlX7tgDcYXpp1/AQluarMeJRzb25qbv8g543Jyi7hwvqmBTcNu+3O+GjPvsBrEb38
         7WvaIQsF7o17H1TaPVy6ZHnJ55+HBVNGQiPShF8W9vvQzMEE721QZn5vbSJKb3dRQTMN
         +2eeO7H+m1LvS2A/5Fl2/OJzL3Gm+/V16aXYaWS57qqQzwTcyABtja2e6WJFO9AwqS5E
         JH08rtFPH78cMEWiynO8AfsDS36vkTQE2Ra2LYj53ve0AaKIxVLg9K3X0Wf5aH8ObMSd
         PQjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jpx3AsgP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id u15si239622ilk.1.2020.10.27.23.51.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 23:51:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id z6so3658599qkz.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 23:51:36 -0700 (PDT)
X-Received: by 2002:ae9:c211:: with SMTP id j17mr6165393qkg.458.1603867895755;
        Tue, 27 Oct 2020 23:51:35 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id b23sm2396284qkh.68.2020.10.27.23.51.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 23:51:34 -0700 (PDT)
Date: Tue, 27 Oct 2020 23:51:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Christoph Hellwig <hch@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] seq_file: fix clang warning for NULL pointer
 arithmetic
Message-ID: <20201028065132.GA4099162@ubuntu-m3-large-x86>
References: <20201027221916.463235-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201027221916.463235-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Jpx3AsgP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Oct 27, 2020 at 11:18:24PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Clang points out that adding something to NULL is notallowed
                                                    not allowed
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
> Rephrase the code to be extra explicit about the valid, giving

                                                   valid what?

> them named SEQ_OPEN_EOF and SEQ_OPEN_SINGLE definitions.
> The instance in kernfs was copied from single_start, so fix both
> at once.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Fixes: c2b19daf6760 ("sysfs, kernfs: prepare read path for kernfs")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Aside from the minor nits in the commit message, this should keep the
same behavior while eliminating the warning and making it a little
easier to understand.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> v2: add the named macros after Christoph Hellwig pointed out
> that my original logic was too ugly.
> Suggestions for better names welcome
> 
> v3: don't overload the NULL return, avoid ?: operator
> ---
>  fs/kernfs/file.c         | 9 ++++++---
>  fs/seq_file.c            | 5 ++++-
>  include/linux/seq_file.h | 2 ++
>  3 files changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/kernfs/file.c b/fs/kernfs/file.c
> index f277d023ebcd..5a5adb03c6df 100644
> --- a/fs/kernfs/file.c
> +++ b/fs/kernfs/file.c
> @@ -121,10 +121,13 @@ static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
>  		return next;
>  	} else {
>  		/*
> -		 * The same behavior and code as single_open().  Returns
> -		 * !NULL if pos is at the beginning; otherwise, NULL.
> +		 * The same behavior and code as single_open().  Continues
> +		 * if pos is at the beginning; otherwise, NULL.
>  		 */
> -		return NULL + !*ppos;
> +		if (*ppos)
> +			return NULL;
> +
> +		return SEQ_OPEN_SINGLE;
>  	}
>  }
>  
> diff --git a/fs/seq_file.c b/fs/seq_file.c
> index 31219c1db17d..6b467d769501 100644
> --- a/fs/seq_file.c
> +++ b/fs/seq_file.c
> @@ -526,7 +526,10 @@ EXPORT_SYMBOL(seq_dentry);
>  
>  static void *single_start(struct seq_file *p, loff_t *pos)
>  {
> -	return NULL + (*pos == 0);
> +	if (*pos)
> +	       return NULL;
> +
> +	return SEQ_OPEN_SINGLE;
>  }
>  
>  static void *single_next(struct seq_file *p, void *v, loff_t *pos)
> diff --git a/include/linux/seq_file.h b/include/linux/seq_file.h
> index 813614d4b71f..eb344448d4da 100644
> --- a/include/linux/seq_file.h
> +++ b/include/linux/seq_file.h
> @@ -37,6 +37,8 @@ struct seq_operations {
>  
>  #define SEQ_SKIP 1
>  
> +#define SEQ_OPEN_SINGLE	(void *)1
> +
>  /**
>   * seq_has_overflowed - check if the buffer has overflowed
>   * @m: the seq_file handle
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201028065132.GA4099162%40ubuntu-m3-large-x86.
