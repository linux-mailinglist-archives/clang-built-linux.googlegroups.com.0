Return-Path: <clang-built-linux+bncBCA6RCEUQQFBBTHN577QKGQEEHHQ2LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5013E2F0D07
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 07:57:17 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id 4sf7404643wrb.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 22:57:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610348237; cv=pass;
        d=google.com; s=arc-20160816;
        b=RH3zo6MK4OIJ0d/ckmh3A/o4LsJkJ23/rwZJ8nKcA1g/1nOmCuJbeTQF3MNbFJBm8o
         NOGQ3SFnwzUUv/Zy4vofcx0J1VECtWpg+lnGJHiKl47QV7wtfIgCtrA4CShCpRa1byKh
         xyU44XlFBcsy1sIo+rqfO3bgCOHWPovPANBDgo36SaSL1yi230leeAevuK99UXWEC7Zh
         SrWqrtvnJIJfVEN91GG54CN3TrqUVDfTYg1kBeWl+JCO6s9+rLDp0IJIkgMB2QKvcRJM
         aKQQCMo0JRrgGCfuBqlH3oSlwRHiqR4GqsI4KmQTt0pFDttQK9i5RDow3n1dNZY6aSUC
         f5hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=PmhCCEI3AdP/mTARraPRo8OPdBYTNwvde2wWowTjyUM=;
        b=am1s78k6H3jR4nxEQwQuZhg8lt6B2W4U40M/Z+SU4u6GB6rhHMD5vaH1G32vYf3OPz
         /1DS45fLR/hEJY7RmZHSWsoypI7HUfToHXeatuPxmMe3B7seqx2gkINOlyfmJZvoMILH
         B8sA3tYwzsGZVHuv9w3NQ9Uz9lVZkyGwew4wPtQhiwGws9RcmyNOC+YFOfRI+Tvdgcep
         ME5+RrPRt0Aj0LB1/zhpnvFUChStLe1/KK7FFHKVPyY0MYx//H40aM/NlXMo5mwolQq+
         4PGzTdRYLjlJk+wFpuYIYPGW/S8nXXHc2WoGbadLBBRc5SsrZfD8tNbiugwodJGtJTUW
         Q+bQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=BQBzzfbH;
       spf=pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PmhCCEI3AdP/mTARraPRo8OPdBYTNwvde2wWowTjyUM=;
        b=mQIAjhPy7ZXzwns4u9bcmxk8Kjp29H41SqLLf2ZZ6LY0u0VcBzafzXk0AvlfCTBKmX
         c+gjkEnasCU1v0uDJ/lLQsuT/ehnbbr4bB77pbNXxS1pmX7QY1ihozwrAnoLK5IabaN8
         VrKDzsCpJSe7uw0yp26zbV54Tyr6KfU9G09dNBJ35TPvauO8Ef134uUWBMg81ak7/og5
         +xfxzZbuVxU7KZHNXQQGxMn66ZvBV/RV+cvaUT/9V9Rule+iLbODLzi5Yoz0yn+KtY/9
         Tl3pnAG2US19otvGeHCfguwnOtlbcLHWEq36b926tZMyQdsvTXblBwNq/B8YYHpSF5r8
         2PSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PmhCCEI3AdP/mTARraPRo8OPdBYTNwvde2wWowTjyUM=;
        b=PJpALcXh04hTnZw11ftTsx6xRSyBWt+oq2izYWc07wmhF+sFIm2o3HP5MuqiK9wQmt
         Jkz75TBQArIuTnB1UU+eZrbDpq+Zcu3D4/5xk5zsGs4ybIuSknRXAuvnnGyt/QzmNzSP
         vXjIfbof6orsPgzoQbFddAGRWu6KJoy+218P+TwmW7cmF4N+6OajZjd81hLPakM/jhfa
         OJUZVcr/1rdMVyAMTT7oLlAPy7mW5klqmuwgHaX7nZ1r8DFZAJLBnTZr2DX39TIriYFV
         mkCINDMk+prRdrtgAwpGdAMO2vbCecwqkKc2BMKBbpKiVbd4zuIiTU4n2zRby4Rm37A2
         ryaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EeFhqBg55yVInUX8c5HJvmMCS6LJSblKnndrWYwslDJ+vRX7s
	+KTuyzveCq9+oYpj0vn0Pjs=
X-Google-Smtp-Source: ABdhPJz35PfTxgwOf0uACx14UhthdnQYh24RszugdhwUAzKqbD2sKGCQQm1V76NtflCxL5SvEpg46g==
X-Received: by 2002:a5d:5044:: with SMTP id h4mr14902837wrt.149.1610348237027;
        Sun, 10 Jan 2021 22:57:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cbd5:: with SMTP id n21ls7729248wmi.3.gmail; Sun, 10 Jan
 2021 22:57:16 -0800 (PST)
X-Received: by 2002:a05:600c:2255:: with SMTP id a21mr13491818wmm.122.1610348236130;
        Sun, 10 Jan 2021 22:57:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610348236; cv=none;
        d=google.com; s=arc-20160816;
        b=q4WaG11mjDmZ+g7jOHhBnGciitlJsB7MZfbz3CcfuicAdOSncxbmrE5eUlvT/F+PiO
         TJe4K4aoy9ii/gDgbaHgHSoPaTQvjM6PvkDdHEgm+2jtmxLAhlBMNevqiJ/lUgfZIAlR
         cmLWcJDxukCz3pLfXGoQpVLvw/dipCBj7D9FUSGtU3205ZATmRnWqCv+OnPP+wOkzLXa
         KC3ZWWNBBEfNrYQ0zey+VcgnnF+J9QTzGwabQXKC6mzrEIumdTsfvaYDT1FHqA1L97+2
         RqoWjMDLtqqPaxR6QLtUEUIPIhldcYPpkeKvl+0gHy+pg+C2+oyCs+0M6l7gST4NGL9s
         pIcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+lyh1ppXIwVihU1vaSfQka7MGwNTcAyGaSNwcJGbRT4=;
        b=WGNk9L/5miESG5onRQulFTctHOpoM2H3pj//knVzh4UpCUjFkUOJLLfaKSzc2hQ2hC
         4x/RY6bwnbJblMh8PALKu98gDu6vMhwTQ6ZzV9T5Vdk4veiNGJc0+k+K3IOI1YoO/Xi9
         4qORsSviRkhfOtW+nh2j/znovZ+vTAlOuVC60JBX9DitYwnzELIJKbn7oZxKhmltg2MS
         bN2g1MMmwsM7Fmvez277yotIysF4grwonU+wUbk3wsKPGLVnJ6X8iIKfrWpvXJFVTrYx
         P5S4GaTKvCzady+NzGRM/0nWtlaU9zXZyIE5T5LtZEY+VKwKSskLdE/1689lpeTOQeeE
         7yEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloud.ionos.com header.s=google header.b=BQBzzfbH;
       spf=pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com. [2a00:1450:4864:20::635])
        by gmr-mx.google.com with ESMTPS id v16si891121wmh.1.2021.01.10.22.57.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jan 2021 22:57:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jinpu.wang@cloud.ionos.com designates 2a00:1450:4864:20::635 as permitted sender) client-ip=2a00:1450:4864:20::635;
Received: by mail-ej1-x635.google.com with SMTP id 6so23154590ejz.5
        for <clang-built-linux@googlegroups.com>; Sun, 10 Jan 2021 22:57:16 -0800 (PST)
X-Received: by 2002:a17:907:4243:: with SMTP id np3mr9714493ejb.212.1610348235838;
 Sun, 10 Jan 2021 22:57:15 -0800 (PST)
MIME-Version: 1.0
References: <20210110215726.861269-1-trix@redhat.com>
In-Reply-To: <20210110215726.861269-1-trix@redhat.com>
From: Jinpu Wang <jinpu.wang@cloud.ionos.com>
Date: Mon, 11 Jan 2021 07:57:05 +0100
Message-ID: <CAMGffEnM0qD68x8bA17gWcqM-PkzveX+E02t-ircy68ses0rGw@mail.gmail.com>
Subject: Re: [PATCH] block/rnbd-clt: improve find_or_create_sess() return check
To: Tom Rix <trix@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>
Cc: Danil Kipnis <danil.kipnis@cloud.ionos.com>, Jens Axboe <axboe@kernel.dk>, 
	ndesaulniers@google.com, linux-block <linux-block@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jinpu.wang@cloud.ionos.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloud.ionos.com header.s=google header.b=BQBzzfbH;       spf=pass
 (google.com: domain of jinpu.wang@cloud.ionos.com designates
 2a00:1450:4864:20::635 as permitted sender) smtp.mailfrom=jinpu.wang@cloud.ionos.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ionos.com
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

On Sun, Jan 10, 2021 at 10:58 PM <trix@redhat.com> wrote:
>
> From: Tom Rix <trix@redhat.com>
>
> clang static analysis reports this problem
>
> rnbd-clt.c:1212:11: warning: Branch condition evaluates to a
>   garbage value
>         else if (!first)
>                  ^~~~~~
>
> This is triggered in the find_and_get_or_create_sess() call
> because the variable first is not initialized and the
> earlier check is specifically for
>
>         if (sess == ERR_PTR(-ENOMEM))
>
> This is false positive.
>
> But the if-check can be reduced by initializing first to
> false and then returning if the call to find_or_creat_sess()
> does not set it to true.  When it remains false, either
> sess will be valid or not.  The not case is caught by
> find_and_get_or_create_sess()'s caller rnbd_clt_map_device()
>
>         sess = find_and_get_or_create_sess(...);
>         if (IS_ERR(sess))
>                 return ERR_CAST(sess);
>
> Since find_and_get_or_create_sess() initializes first to false
> setting it in find_or_create_sess() is not needed.
>
> Signed-off-by: Tom Rix <trix@redhat.com>
Less LOC is better :)
Acked-by: Jack Wang <jinpu.wang@cloud.ionos.com>
Thanks Tom and Nathan!
> ---
>  drivers/block/rnbd/rnbd-clt.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/block/rnbd/rnbd-clt.c b/drivers/block/rnbd/rnbd-clt.c
> index 96e3f9fe8241..251f747cf10d 100644
> --- a/drivers/block/rnbd/rnbd-clt.c
> +++ b/drivers/block/rnbd/rnbd-clt.c
> @@ -919,6 +919,7 @@ static struct rnbd_clt_session *__find_and_get_sess(const char *sessname)
>         return NULL;
>  }
>
> +/* caller is responsible for initializing 'first' to false */
>  static struct
>  rnbd_clt_session *find_or_create_sess(const char *sessname, bool *first)
>  {
> @@ -934,8 +935,7 @@ rnbd_clt_session *find_or_create_sess(const char *sessname, bool *first)
>                 }
>                 list_add(&sess->list, &sess_list);
>                 *first = true;
> -       } else
> -               *first = false;
> +       }
>         mutex_unlock(&sess_lock);
>
>         return sess;
> @@ -1203,13 +1203,11 @@ find_and_get_or_create_sess(const char *sessname,
>         struct rnbd_clt_session *sess;
>         struct rtrs_attrs attrs;
>         int err;
> -       bool first;
> +       bool first = false;
>         struct rtrs_clt_ops rtrs_ops;
>
>         sess = find_or_create_sess(sessname, &first);
> -       if (sess == ERR_PTR(-ENOMEM))
> -               return ERR_PTR(-ENOMEM);
> -       else if (!first)
> +       if (!first)
>                 return sess;
>
>         if (!path_cnt) {
> --
> 2.27.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMGffEnM0qD68x8bA17gWcqM-PkzveX%2BE02t-ircy68ses0rGw%40mail.gmail.com.
