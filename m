Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBWUJ7KCAMGQEZ4E64UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F71380B32
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:10:35 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id q6-20020a25bfc60000b02904f9715cd13csf9367040ybm.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 07:10:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621001435; cv=pass;
        d=google.com; s=arc-20160816;
        b=fP5Zi0hO1+nO7x5VQqHv5I4Rfh2jFiUZUk4z/kW1eIYSqSSl5uvYpySx1ot42oKEcR
         bMmI881nKdqu3KLRA24gpVnDOAyRzOae0qQ4eBkhkz9u/s9KCQblhkOaEjx7P2z6Iplh
         hu8IUVjnk3nZgokU7mwE2vPnD7NAR7eRuMlEjtidjWX5c2KkCKzsfaM9mDnr/oPUXsX8
         V7LAE/vQn00oDH64nzyxzyjqkhMcxu4wQQriY7/34xIOnvjsBitsVAZFj+baCRkrlW9f
         EsPX0pu/0rkZ1PFxhYo3H9Ik3hhQNb+SqAMaGet5JGbZ5S5L5oNCJLiA30DjK/3vPgq4
         jcTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ShFJ37tYDgUceGKsvbI1Lj+I+lmDVp77uHi3KX5zNmg=;
        b=zgJqcAZmJYWZXzmPi4pShqZ2UsmAzfH9/owuKQ/+BcHjcAM+9UZKoGKuuNLN5DFS+i
         BaOCKgVQyR5hdKUF/Ew9MWwx7/7PuOKIzKBFksxS63WvcZCJ9ZKqm8HU69XBlo7IlG/M
         jD/P9ND0nrTso2kFDxW8YYDLAlPed9tKpoRplE3aqFQohyaP4RVdIBcgKX09v0Aj9Cln
         pUfEIBqNQSoHwBRWwSLXJy2h/c+9gww/RA4AT3mYw01A738OV26BZw2NJiBnqdaQ9qj9
         s3n4UXDmOSiy+VpMR42goP+cja7La0vjRJlvxtVhb61xD3oxLvM6lv4ZL/hA9j7CPZW8
         CVwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KXerAm9P;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ShFJ37tYDgUceGKsvbI1Lj+I+lmDVp77uHi3KX5zNmg=;
        b=kBTlsb8qFup9xAG4zjIQ52oXx6RAcYYYXnRr84+kfaAfOBu1zF3DnhHo5bQpHPsRn4
         QOvGGZoyeBQCFloXRcvxD1JgS907Y39Jls82si2Q9kM0KCdBjjH0Tfy9sRWAQybGe0Nw
         BB1KqhSayUX+hY7uKCK5UukpAS+vzHFJ5q+PM1l/iI4bngrcLKBbPu+Fb+edgsbSAGT2
         GloHVmNKjI3oYRTihU/89WjBwsCiVqCAXioqfQLUk9j0z9aVZRTQwG/0EFu6+D3zW/zP
         giJFHNVypweTsnIMOzAthe3lgJicdiJY3kF7mcVWcmrSKmj3EMGiIya+/4LHGz/RGuUk
         dOvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ShFJ37tYDgUceGKsvbI1Lj+I+lmDVp77uHi3KX5zNmg=;
        b=JNhPQYx2U43M2GJTBX6HHwQ/1BMSd5fCzmlgosDnMDI2szytS9aUjmT5Avu//T+6VI
         MG0gYYq1ClgqHt86YfzNnJEd6im6FK4enWDX/z9NDNqmyLmme358mpZLST3fmqpA2gFJ
         2XT0WYHW27RE2NKlZzjzBKSIdSj5JbPVleq1lnjobZLkTsvH4A1+iDG54C7jDLix4yp4
         TOemhgzRsj6D4FWm46vmyUuczSFyDnrFTC4chcpq8AsX3M6HXlpvdrmfwzCvtDkIPkO+
         +oyKSwWhjHvoXnUPp8Sba2Dn1figlckxcZlT62hvjI4+SPi6LrR4M0LqsCaCNuMLAm17
         QD7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oI0fchNVn7CMHdgliIlcln1yX75KGADW3FNUzt7ugzV+Mc7W1
	wzBXjoJnxG45GF6ygqy8vaM=
X-Google-Smtp-Source: ABdhPJyzY8Ha5z4gMNQYoBjZCx9yS/MUXbnS5GmZL7HzhXRw/IbGql8oUfbhiIZ4iCEJdyTnqLZZ4w==
X-Received: by 2002:a25:d8d6:: with SMTP id p205mr64785531ybg.252.1621001434969;
        Fri, 14 May 2021 07:10:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b9cc:: with SMTP id y12ls4370748ybj.0.gmail; Fri, 14 May
 2021 07:10:34 -0700 (PDT)
X-Received: by 2002:a25:68c3:: with SMTP id d186mr11522192ybc.66.1621001434561;
        Fri, 14 May 2021 07:10:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621001434; cv=none;
        d=google.com; s=arc-20160816;
        b=cPeBduOvNtemIbpOefSD3CeVMs8RZ6/txC8fdhvDRHwpzshEsMDVEXfazxZ8Ezy2lx
         tgm/wIKS326QUmFKv7IHkBpjLd3DIZndKEWwggqS/ZT0FFl6nqS59JxlA4XW1qJGv81w
         ZvuMQtIQEyi2KctCKDler5MFFNfltMDrIM1PspgCpamPHDynrF5socrzNueaxgdK9l+H
         Lmd0j1P9ezH9QMW6YQnSJ1bqk0syAujaA743fD5Yvq6rPkCn6nUD3M/b/Uc8O710KOx5
         Ibys2/rBJ6AnQdDKNykdCxXVAb/5gjxWVwBugLi4pLH5hBhrKluT6SdvRnjpnn1UNTX2
         ZH5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0Nxy7Xlpzt2QAaXIetxrlxgQk9jtY2mWLK0b7dOuIHY=;
        b=T1Zo3aYKcBjWkt7faHz9JVphTdUD2t4F3vyzU8shDJTZcCxtJbu7J0rNcgpyBoEIU8
         MKR2C7REFdEBli0/fmr3HPgEX7Pq8mctG0qkdox7geJnw6J+vpThHJdOj2PbncwkkIUl
         QxDYpQU/SzILczU4RLgf0My2C7qiJ0DG0AjacQa4/hoAol2iR0d5eAS0lIh+CzxGOWya
         TDLbuQP6h+7jdyqPDX9RWwREmuuIM0GfhwZH2BoAmKv+J5uEdgObxXtmTEUThx0TKDk9
         2iw4ce1y9ZPJKQmZK+W6reBWU+Z4CqjgW6ZbJC1FTXwL2BCJnltz1OPWR8V3zyzKD0Ix
         ZhKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=KXerAm9P;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e5si388051ybb.3.2021.05.14.07.10.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 07:10:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EC583613E9;
	Fri, 14 May 2021 14:10:32 +0000 (UTC)
Date: Fri, 14 May 2021 16:10:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Marco Elver <elver@google.com>, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Dmitry Vyukov <dvyukov@google.com>,
	kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
Message-ID: <YJ6E1scEoTATEJav@kroah.com>
References: <20210514140015.2944744-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210514140015.2944744-1-arnd@kernel.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=KXerAm9P;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, May 14, 2021 at 04:00:08PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang points out that an initcall funciton should return an 'int':
> 
> kernel/kcsan/debugfs.c:274:15: error: returning 'void' from a function with incompatible result type 'int'
> late_initcall(kcsan_debugfs_init);
> ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> include/linux/init.h:292:46: note: expanded from macro 'late_initcall'
>  #define late_initcall(fn)               __define_initcall(fn, 7)
> 
> Fixes: e36299efe7d7 ("kcsan, debugfs: Move debugfs file creation out of early init")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  kernel/kcsan/debugfs.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/kcsan/debugfs.c b/kernel/kcsan/debugfs.c
> index c1dd02f3be8b..e65de172ccf7 100644
> --- a/kernel/kcsan/debugfs.c
> +++ b/kernel/kcsan/debugfs.c
> @@ -266,9 +266,10 @@ static const struct file_operations debugfs_ops =
>  	.release = single_release
>  };
>  
> -static void __init kcsan_debugfs_init(void)
> +static int __init kcsan_debugfs_init(void)
>  {
>  	debugfs_create_file("kcsan", 0644, NULL, NULL, &debugfs_ops);
> +	return 0;
>  }
>  
>  late_initcall(kcsan_debugfs_init);
> -- 
> 2.29.2
> 
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJ6E1scEoTATEJav%40kroah.com.
