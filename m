Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBSOKZXWAKGQEDOLBZYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id BE527C37AC
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 16:40:11 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id q127sf10406379pfc.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 07:40:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569940810; cv=pass;
        d=google.com; s=arc-20160816;
        b=V9hzw0PSARac7IysHDmr4DkeM2CC1Q7e7Vm+JENQNJQZy44T8WV0/ee8rInDuRqXAo
         xBch1o109tHxL2qqJC75XvX/deMZQ8l3Oo5a0/HoiqsZMotq4UbiqxDx92hg6Jn6OfAr
         FXF0poYmBO3xpwRHxBu33vCEfBU3Wvat7ThI9E5ySXaGNq0nzAarifgs9/LjizbUBti9
         v49oztN+I5GTf5PWjE/YASOUKC275uFLqyzdcWFlBJWpeZ7P9z56L1wREgtQexG12meE
         3ptKP0+0L+aavQgdszZf0n4puggu2I6ViMhYj6U9AOjtfZgdNlEP6kAUAj/xl0i+2DjE
         QB0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=OialqQispjN0TreIkHfYq4KNv+0yVq2kPt7oCOrFNmM=;
        b=N+cRLJAX5Wd8JV7QuTpiuGxPPVNaKo3B9ZCtt5peYJYb0kt8Qz91E0irPAR//MzhWM
         1p5ahUcUmHITyvjPUFGH9N9mfQ5huQtVwm/nDkuWy8ckC/Lv1c4XM79ges6cETEsVJa6
         auAQExiL/XngJSO6wLMyzveTcgCBiWrJnR0C6DHSKHo/P2v6a7KQPYJpoqqG7VE/9QM/
         vwpAQbIR8gkMI7or3Ac37eqM5Yf0Jpsgwh1TrGh4gGrgj8hORxCqfA3v11/Hynq3spFv
         HzMEjXiuLU5xUI7l6zBumRexJOmpjJ6PyOPMKLOsjh1WetPL4KQS+5vigK+rUjnaj8uK
         p8jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=IeYUUoTk;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OialqQispjN0TreIkHfYq4KNv+0yVq2kPt7oCOrFNmM=;
        b=SofQgeo4aKjNo4JRx09VvL4zKrr+Co/qBPma3r+PHjIFpp9dQwPEA27sr2doqyyc0q
         KxdD6hqkwii+SmGqJr1k2ZYiA3dkegRxw6ryvSgkIHH2VT35DWKXIMEsiQgZnYR+uXhc
         kpAdX2J9k7+vkC0AWeafPdGMcmRyiJAructu8/k+sAHZ9XNhDlmKYljWcotutKUbPgpu
         dtUJjsQxZh1Qn7gKoY4w9BEFkJR8fZVhgpuxgJjn1UnQvC6lwYsw6ZaqoXp9a676P9aP
         LTactLVh8VANbEk1Md56e4dtExOoi7GcUGqMdAEPZ/AdvdylqkBXc/7QhHRVgv0eWGjZ
         F5gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OialqQispjN0TreIkHfYq4KNv+0yVq2kPt7oCOrFNmM=;
        b=IzqsRyg7w9LzDPOrDwzZ2rj+lTx2mdXA766NS1H5K+AQX4VYLk7zxrnZbcgtR3NLJq
         3VtLXSBbiwSObTDegwsRdE9RqqPNwRKHI/mhGTijrjRKbiwY7M6sCY9Gpw7mvJypp106
         6t6Q6nJ1uQai8WHIiJjo4v0mSHkujeOX+gqF3XRCykO+QY0ISEkkTrtTX2B5FzR4Hcqh
         90Ow3lFZTHmJyo6CQ8kFsHH+MSMOB5AlGrGLNHiJbH2wQIRfVFbfuBYg4RGiVjDwnnEL
         br/qLasq8YEkl7DKFStSz8D/c003RjwPC/BoX1zs71cy8iA0NfTs955m0Dm/x0BNIpjU
         ej+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJ90bsZ7FiABplcycUaBR1Tg4FuWBW18c8mN4YBoc2HdM/LN4o
	egVeS3fpoUAMRlS5kCaymNY=
X-Google-Smtp-Source: APXvYqyg9j0ifWrg8E6GpEAffo7VTE91r/LZkJaMHdYov3fCXd+Nh8LvCnEYWyV/OaxZ8ARtlVVIkg==
X-Received: by 2002:a62:1717:: with SMTP id 23mr28193978pfx.20.1569940809950;
        Tue, 01 Oct 2019 07:40:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8bca:: with SMTP id r10ls2474401plo.13.gmail; Tue,
 01 Oct 2019 07:40:09 -0700 (PDT)
X-Received: by 2002:a17:90a:850c:: with SMTP id l12mr6054775pjn.9.1569940809520;
        Tue, 01 Oct 2019 07:40:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569940809; cv=none;
        d=google.com; s=arc-20160816;
        b=lBjePakYtIiErC7wzJD+Bi9+qnSL+7UiSkVeqBO2K5p4OdOGBJiCK4J1zZKmzU+YqI
         Qf+cHFA2Y6xnPmadIQn83Ukrqrxy3r+8ajnFjUkUfK2nzeZR5y52Ml+W7gAQugTxgJUM
         96yM8mlstOMaj95CupxsST9AIFw45fMb6Ckha69fWygbrBjlxof/aPGVRN+bMOpPDwTs
         PaWApOJ32HH6LzDjCSf2BEPxHWi5cHL4mVkmtaU8x84GiFmNjNgbEjmf7mq8JpQ/hV+J
         hEw/R5gOj2g9aNZZHcLn0CmwQqfwJMUBYRFSRr0zdP/1HMYpZ4sJaBsAgK7Z2OF4pBoG
         AOPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=9VDIX95q75l1fcGPHAGCoexbF88NYXczf33Qn1D7mVs=;
        b=BYd0ewYAka/WBdgr7pxFvz+OGWTszreCHULen+Sr4UgvU057UpHqdvvsmQS6UuaPnk
         4a1W/sodJi/+lqy+uklHOe8dPRO8K37SJHN3txV3mjGK6JcfumsE2pbw6GXildzX/ZDw
         HFMJKC5E8TXfMMV9IthA1oqN2lhZcTqatAVMKae0B/vCF/d7XXplPE/hnAW9/qP5hmcj
         nPxy6mYRuUpzV1nnek5f9BruGcDvQ3Jc1UnNSHT1mO8vyX5gmw/RMD47UA2D3b2Dy8R3
         qSdJ53Xj+f05Kb/JJ2OUSB3H+nC4JoV6WtrltjUUwKpDNJhwB9bNQJDKIH+fXv6hSrk5
         xlsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=IeYUUoTk;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id s188si457306pgs.3.2019.10.01.07.40.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 07:40:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id 3so21925282qta.1
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 07:40:09 -0700 (PDT)
X-Received: by 2002:a05:6214:180a:: with SMTP id o10mr25687114qvw.51.1569940808438;
        Tue, 01 Oct 2019 07:40:08 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id q2sm7515437qkc.68.2019.10.01.07.40.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 07:40:07 -0700 (PDT)
Message-ID: <1569940805.5576.257.camel@lca.pw>
Subject: Re: [PATCH] mm/memcontrol.c: fix another unused function warning
From: Qian Cai <cai@lca.pw>
To: Arnd Bergmann <arnd@arndb.de>, Johannes Weiner <hannes@cmpxchg.org>, 
	Michal Hocko <mhocko@kernel.org>, Vladimir Davydov <vdavydov.dev@gmail.com>
Cc: Michal Hocko <mhocko@suse.com>, Andrew Morton
 <akpm@linux-foundation.org>,  Roman Gushchin <guro@fb.com>, Shakeel Butt
 <shakeelb@google.com>, Chris Down <chris@chrisdown.name>, Tejun Heo
 <tj@kernel.org>, cgroups@vger.kernel.org,  linux-mm@kvack.org,
 linux-kernel@vger.kernel.org,  clang-built-linux@googlegroups.com
Date: Tue, 01 Oct 2019 10:40:05 -0400
In-Reply-To: <20191001142227.1227176-1-arnd@arndb.de>
References: <20191001142227.1227176-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7)
Mime-Version: 1.0
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=IeYUUoTk;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

On Tue, 2019-10-01 at 16:22 +0200, Arnd Bergmann wrote:
> Removing the mem_cgroup_id_get() stub function introduced a new warning
> of the same kind when CONFIG_MMU is disabled:

Shouldn't CONFIG_MEMCG depends on CONFIG_MMU instead?

> 
> mm/memcontrol.c:4929:13: error: unused function 'mem_cgroup_id_get_many' [-Werror,-Wunused-function]
> 
> Address this using a __maybe_unused annotation.
> 
> Note: alternatively, this could be moved into an #ifdef block.  Marking it
> 'static inline' would not work here as that would still produce the
> warning on clang, which only ignores unused inline functions declared
> in header files instead of .c files.
> 
> Fixes: 4d0e3230a56a ("mm/memcontrol.c: fix a -Wunused-function warning")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  mm/memcontrol.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/mm/memcontrol.c b/mm/memcontrol.c
> index c313c49074ca..5f9f90e3cef8 100644
> --- a/mm/memcontrol.c
> +++ b/mm/memcontrol.c
> @@ -4921,7 +4921,8 @@ static void mem_cgroup_id_remove(struct mem_cgroup *memcg)
>  	}
>  }
>  
> -static void mem_cgroup_id_get_many(struct mem_cgroup *memcg, unsigned int n)
> +static void __maybe_unused
> +mem_cgroup_id_get_many(struct mem_cgroup *memcg, unsigned int n)
>  {
>  	refcount_add(n, &memcg->id.ref);
>  }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1569940805.5576.257.camel%40lca.pw.
