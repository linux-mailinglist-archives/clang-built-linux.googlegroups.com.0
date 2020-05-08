Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQWB232QKGQEEI72HEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF311CB6BC
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:11:15 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id z5sf2449018ilz.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:11:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588961474; cv=pass;
        d=google.com; s=arc-20160816;
        b=jUmJXfHz7Fs+zjixKag9H0xU1vd5bmMbP2nhiExUsUIFHIVStLXYp21Twp0Na1dQy4
         KccwkQaupPpvjr17LppIBoYDcFgORj+D1LtsWQlC895yPEM2+5ZnzCJ/WT1KODTwqArk
         /YilYeDyPIF6F3+++yFGmNt9Oehc1B5VXu9UnHWUPqY6dPGippUqHjiH8LdaBlDFHofO
         xdPAIrdfu58CIrp3mk9orV0wb4owJx3gD69pAXsrjZaX11j4IqrbUc/v78/oPDNL/5AD
         TsuPIkF8r96VnASLUIvf24zxvVvAcMiSLdgT17zC2GDvNo5nLzniE++4mTj3M0hqI+di
         HbYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pf7IY0BPImkaihU54MuAJVynlRJ+KegkPoaolSMkKro=;
        b=M8vER6t0qrxNrPir/7Vfyq9YpZo+vuhY6lvJO9gdYvKGPnynjNvrek0/aU/2uwMNiC
         ZWXfAL3V+/r970Cotq6vqXbLmvuTDLNLYM3dl0jgnYjpz0WnMd1jH4yTdL6iJGc7OeNc
         DJBe51ff4+tc6H1swssc6P8wHrzK3uBZjy598ns0jgY7AwESegF5W5WuZnv0Z6oAP9vk
         YYZTjQs7ye8jr2kRUNGueBL3MeU0m8NlD+NPNJBNQ3ehRj0HYGdKB1uMRM4jbQelCJKu
         eNJdxxZfZQYE2Q/Jv8bboXzPggQVVceBucelGsCGBHT/Ayc8oPucuRD2f5ixeSy7y6jt
         tsmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xp3JSA4X;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pf7IY0BPImkaihU54MuAJVynlRJ+KegkPoaolSMkKro=;
        b=TxQhjaYhVmzVO7jsY8m1AO7sy/gcr7y6vE4a4NJDcfJYMqXK9ub3MbEfoZ5LCDl5t7
         jilK+g5jx+1DHVcRdpHTB/VM+mv/ZsQHJgxlVT+/05zMlR1JLRDggppmF2367m6tVfP5
         9rF3DV8ebFh3U9nPrpzmDJXeof8t7gUDGyRlah9UP+s2bF7k6koYvrv9T+5GKrWIj2FA
         7LhPfhFeieZaQo8HT7cAqlsw1brAU9BVtZnX9nSm0RvP9SghvfM9b8WGlR6b7U6x+8eT
         PJ4ii3yY1hVUkcVCiMDWFC4N58b7L/T0l9vSsVeWd2l+gdPSEQr8VZSbTNgXYEpuXi2O
         LNjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pf7IY0BPImkaihU54MuAJVynlRJ+KegkPoaolSMkKro=;
        b=ZJMlDcBr9nzxy7ibq0iAvQh1W3vDVl18pE1gpzsuszhrtewxHEiFytvLwHFzY+egWZ
         /9P/g0O2UUdMxaAe07WClEKAft7ASQFQyiI84cb2MS3fV00lvKyumkIgkYhsbZZtNU5u
         vkUj/Cw/JSv0sPfwCXEA5SSb83Kepjc3JbztHx8KvXhH5qkVJCIOT1+krkojqJBq/YM5
         WeWGyX6LqRDbpNh/Fvxvne45KPpd07C88tz4W0klK9oVX9dBTuXYFBojD3+j+Z0Jo78f
         YLNfFtUNqMF96FaxrK5uqtnAT70ERjboky3lM1pCjz+M28sve+tiDUy2yhWVSIoB4yXi
         KFbg==
X-Gm-Message-State: AGi0PuagPD3mCE+ESMr2pPpoQSXRir/ZqYS9WWpgSysPSwtZ68l7SYdj
	GlebWZhNhKb5SenmOhJJ+IM=
X-Google-Smtp-Source: APiQypKOXbsxWIrLJ104cFWY0e65Ww+DIOefWu6l4dweVr74sDk7WiYe2c3Gvtx9HwHYsHN9HRKjMQ==
X-Received: by 2002:a05:6e02:80e:: with SMTP id u14mr4479431ilm.176.1588961474708;
        Fri, 08 May 2020 11:11:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3a05:: with SMTP id h5ls1008210ila.1.gmail; Fri, 08 May
 2020 11:11:14 -0700 (PDT)
X-Received: by 2002:a92:7e8b:: with SMTP id q11mr3982988ill.281.1588961474402;
        Fri, 08 May 2020 11:11:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588961474; cv=none;
        d=google.com; s=arc-20160816;
        b=iVP2oMzpvyOU6NEWLIyoX8+x/oXDAwsOMnHwI4/Q6cOqPvAN0AlsR81o9X5EFZtx/9
         tJt2CW+p+IiqJIlz7I+fXj7wMNJ2j1rLAeaQhp5G8i9tKIR6jSXYevJTS0KZ+AkHZrEx
         RSJW5d2my/kO4Fry4dqk2lrNgE0+HVGly0EScN9wDUtHRQ+KrqSjjEZ+yD5vE2TOcPap
         TZeOBk0yobRTUVCycovnI/x9oPQ65jMJBhRc5KmhNeg4YZliGoep9OVA4YB4cz94e3zz
         saFLrb7QLyJGRwEKE2djyytA9Bbr7U8kd8xucqh8YToAxGxlj4HgJIaG5aFhXKM+YcGA
         dlXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tYjR6s9cuyjlDmq4sL9p5CobFaXnRJm49suPQ+5q4HE=;
        b=tqRJub7nDc67/JOi9ivknQvPnUV+6AAnv0IOoJIaVYwbydWoS4K6pRZ7CSwf4ExTu8
         oinhO0xyCQno4xRv6VlK96E6Bjg/Tq4XmyPv3tNiDxjITQoGATsr8QYPySCNEAudk5LD
         MOmCPl3PPhqgGoMkAAXTmNcOjC8dc8JZCShmf80tvGQCdxbYQH70SODrWoJ3LkXne9wm
         x5yMZIeyK2iA2rirUWkjxhpRMpz9wY6uBhU9lMUWAVo/86CH9mAKcu9SFtpucpnQbgu5
         y9IGGBEZG1MHsKwTOc4itfVQrggU1gMPUEdaM7pcqqtLOIWJ+xugV1zGPK5GFdtiE1+T
         2z/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xp3JSA4X;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id g5si158173ioq.3.2020.05.08.11.11.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:11:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id fu13so4635000pjb.5
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:11:14 -0700 (PDT)
X-Received: by 2002:a17:90a:6d03:: with SMTP id z3mr7458232pjj.32.1588961473692;
 Fri, 08 May 2020 11:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200507213438.1886005-1-arnd@arndb.de>
In-Reply-To: <20200507213438.1886005-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 May 2020 11:11:02 -0700
Message-ID: <CAKwvOdmk0bKNY735KNtB1agDgTwcLNM=DEU7pL3wwZTj7hQh2Q@mail.gmail.com>
Subject: Re: [PATCH] dlm: remove BUG() before panic()
To: Arnd Bergmann <arnd@arndb.de>
Cc: Christine Caulfield <ccaulfie@redhat.com>, David Teigland <teigland@redhat.com>, 
	Steve Whitehouse <swhiteho@redhat.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alexios Zavras <alexios.zavras@intel.com>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>, Richard Fontana <rfontana@redhat.com>, cluster-devel@redhat.com, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xp3JSA4X;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, May 7, 2020 at 2:34 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Building a kernel with clang sometimes fails with an objtool error in dlm:
>
> fs/dlm/lock.o: warning: objtool: revert_lock_pc()+0xbd: can't find jump dest instruction at .text+0xd7fc
>
> The problem is that BUG() never returns and the compiler knows
> that anything after it is unreachable, however the panic still
> emits some code that does not get fully eliminated.
>
> Having both BUG() and panic() is really pointless as the BUG()
> kills the current process and the subsequent panic() never hits.
> In most cases, we probably don't really want either and should
> replace the DLM_ASSERT() statements with WARN_ON(), as has
> been done for some of them.
>
> Remove the BUG() here so the user at least sees the panic message
> and we can reliably build randconfig kernels.
>
> Fixes: e7fd41792fc0 ("[DLM] The core of the DLM for GFS2/CLVM")
> Cc: Josh Poimboeuf <jpoimboe@redhat.com>
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  fs/dlm/dlm_internal.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/fs/dlm/dlm_internal.h b/fs/dlm/dlm_internal.h
> index 416d9de35679..4311d01b02a8 100644
> --- a/fs/dlm/dlm_internal.h
> +++ b/fs/dlm/dlm_internal.h
> @@ -97,7 +97,6 @@ do { \
>                 __LINE__, __FILE__, #x, jiffies); \
>      {do} \
>      printk("\n"); \
> -    BUG(); \
>      panic("DLM:  Record message above and reboot.\n"); \
>    } \
>  }
> --
> 2.26.0


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmk0bKNY735KNtB1agDgTwcLNM%3DDEU7pL3wwZTj7hQh2Q%40mail.gmail.com.
