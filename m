Return-Path: <clang-built-linux+bncBDRZHGH43YJRBFXOZT6AKGQE74AZKCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FF3297805
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 22:03:36 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id l12sf1904632qtu.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 13:03:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603483415; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3l/XoZSd9HUHU4S0nh0ePc0WhIuRiJ8Pz6HKL0aroviNjOcggYBJmdO8RSqQhH8Ou
         u4cBexzJ6ZYMhX9rR/nSgwOs8y9v4YVgRO/4F5eMIKMyCFRRxkI0oxC3UtmREPql/peQ
         rGzdedF10dt5jzTIiIhGjLYcuSrmQLrSWkd9UieTjB2/89DP2MJ18tUlvYG2jleCEBjg
         i2f3xnHCc73KxBt5lFKXCGAfLhTOs+Lf08kXsLjYAL205HrfmDJUw/MzENuRdxs+TU6B
         zbO5AhF/P3v+TouCvdGYhDISGflMr149JgbZo1BQ2qPgNGbsvibmDkuTFUo8+5XvMaXk
         m/XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=voh371kGYDvY3ps9rhKoiBVLIM6K5KuKBdzvLVoDXf8=;
        b=ciL+4Y9IjlvpEo31PrpHWrGLI8FwAZAW+jZvOQOggm+DAJY30MVKO+l1cjr14+baPP
         o8F9R9pCNRmOIeh8/QcfflWX+q6W2PuyCiBWwaAWjmX7wIIY35Vyb8c8Giw+SGyFi3Ir
         dyQEXG4thtZgeeNjhA3CW7NaWclcvDZpHMrp5zsBBmkEhS81mKu3SjhNXCZ8MjlYmhHo
         Bx83zwI53orYWungBw8rlsbsfA55Nibj/W6sA7/+mOIEYGg3okQi0QqA9lqhOTBcF7Lo
         8gdwKyKJUuNg6fgki28pzKH57gNOXr7pmO0EDZi2Xzz3Ui3xTZJQhnPyaGAFNnbFtowy
         G6Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xj60c/JJ";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=voh371kGYDvY3ps9rhKoiBVLIM6K5KuKBdzvLVoDXf8=;
        b=n8bNNV1J8LPmzqWnMTeMmDen8io1vlWSOqTs09QX7CxTQVkISI6LYTN0FyW7ymjMZH
         7sXCEFyV3Ot9vEO09FAyFLMBP7gD6jmnycoZnwPqLNjLvl2ZyqcAHi3ktFNwwr9u+FxZ
         jrmJxzIvRjBxTFqsrh/d16Yo6oZVj+0u7Znf2RAV9WEef6gNeLk+pZhS5e/ZilmBc8xU
         4M0Rbd0GyLXZX4zXgOkhic6TIAd0EctzXu1BsfOoWLSE/z8IkD9/V7S7JGRht7bcusn1
         NJPmNyqU2iVTfdl1NYrn/DiJDYyjGmE4+Z+M+wx/noyg3Eoja2qwqhsCOJQHKGkf1W1t
         WbuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=voh371kGYDvY3ps9rhKoiBVLIM6K5KuKBdzvLVoDXf8=;
        b=eN5L+hxnZUuEjDmn7ihmPNaKu9rpJeMFLJBjn1j3CzazxyMEccPqQi7W/6/KpbxpTV
         iMOeqm+JI0JSa6JNNcSEGKvmiVhEWiy8bnE3DpHeJS4cW6TCbRHsZ/Zu/5/1m+7QSCJF
         SnTIhtYiS++SuXoAktQUvJR6IKU74AJKvl2Rx5xKb2saAuNKxfaD0L6LplcDsabPoHnO
         GoxYZL7VHjv28wsLWiniXvilXOx62ADUaYnjQZrlVUNGTICy9dXN7hp5GbUSSNy4Afho
         U0j0PuxuAWsQ43v1LYNBFzZwJPnJnNFLgC7loiBVIWEzhsSfnfH6SPmhMfkWq7qaAyYU
         vh7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=voh371kGYDvY3ps9rhKoiBVLIM6K5KuKBdzvLVoDXf8=;
        b=CzEZXCdMIXLKyENTrF4aTPDdkIiMBKqDkmKiqNIZXy//eqW7g0ZhbZZvVypCfQ1Nfb
         qpdCRPopn1c8kGYUVpAi5oq2F6cWGe1KfQVKeQeZb6/X0Da49gp2+RGCIaCJzjAeCvBs
         iuN8wK06vHeoeix8HtnirOqImU/A8cvqYUjA8MYmXTXqbpzbGHm0PzKEDYEgf8jXwAEQ
         aq9VJ0vzSzQsVkQLiGinKD8rziWZ/iNB2uh93zzdp38xFfgHZVkCMySJ7OYQznz2LkqK
         VIIP2iyin5N/9iajrSOC+uAgmH5pdXma7K8A/BQbdfzduk38jy68lkkLnfqko0ARjp/B
         vv+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zC1BuYf9YQZD3B4b6xZT12ECNcAUXZ7/rXCkdD6o5W0mBzkqY
	HyWaFn0EwbrlNYPbypPIkGU=
X-Google-Smtp-Source: ABdhPJwGmxVFf4UkzQ2Vgzz3lzdybdMYsNdBqY3ugrWERpiGsAnP97E/3SekQ1FDg9lQ/8KsBXb+Tw==
X-Received: by 2002:a0c:b410:: with SMTP id u16mr571304qve.52.1603483415075;
        Fri, 23 Oct 2020 13:03:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7347:: with SMTP id q7ls948957qtp.8.gmail; Fri, 23 Oct
 2020 13:03:34 -0700 (PDT)
X-Received: by 2002:a05:622a:94:: with SMTP id o20mr4013643qtw.276.1603483414637;
        Fri, 23 Oct 2020 13:03:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603483414; cv=none;
        d=google.com; s=arc-20160816;
        b=tnCwnovLMpIo0YcODgomriD+GyrS446af1oNe4fzSrPbFt3X86xPAVBvr7xGcNUrGe
         u/nIVSLvrtRaGfjh3P+aJJrE+18bNG2geUGXX8XCISTXlLYInlA4sqFFukd8wqiVwC34
         Mk/txhb9V+2HJufOhomjVgUB6RKppNhqr5rOinkXbaidYFYSkVHIN43K765nfVeew5gO
         Fiz/Gu6ICDnU3N6aO9qb9P8Bh8t+2MVFqrTYaxcW0vpQqY76NF8oqMXo85XCcWEqbqvL
         7jFlpbYBKaxCNeHWfQGqMPaNgCgtAhFySh8mhp7eD6UdkCfDXDaEfgr7FfJiUwryygj0
         MipQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8sL+bG1sqMHkQncq4Op9T7TZBeUfdZ7Ectn5rHvgjdY=;
        b=EvS3DMCFC3fXppOpVrdmo86eiGelCJ/dVm64/jL5+iHpU31lvAjiC/xrwmNSpwHXKy
         OAt9kFHj8Y/ivZdK88u6UiFAq9y/wgRWZ/zGaZ+0M+uzMreIo+UVene1j7l/dPCtp7R3
         Bzb0vFazsxOnqMukloS1cRqAXPumegi6QJsQmPO8QdEttxhtaJUYQ3Zq1ZtOgqb7B6fE
         PcshcX1qGjS3CnvTKhPi6NXU2lGjV3RAnd9+41Ycv+no49ymCNj2Y6frfoA4nkFlXAlL
         OCijoeejsden4fsKkg0y0O5OagxkCsyogdywwBCrvgJR0SnNCmD+PW+aKqr/jtu//iOQ
         CwFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xj60c/JJ";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id x21si104381qtx.1.2020.10.23.13.03.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 13:03:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id f140so2195637ybg.3
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 13:03:34 -0700 (PDT)
X-Received: by 2002:a25:ae97:: with SMTP id b23mr6341309ybj.26.1603483414252;
 Fri, 23 Oct 2020 13:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
 <CANiq72nfHjXkN65jy+unz0k66qvAALNhhhDZsxqPRLdtLKOW_Q@mail.gmail.com> <64b49cd3680f45808dad286b408e7b196c31ec79.camel@perches.com>
In-Reply-To: <64b49cd3680f45808dad286b408e7b196c31ec79.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 23 Oct 2020 22:03:23 +0200
Message-ID: <CANiq72=AneP9=NBFpE2eFzqsYnQxEVjxHQQYSybBCeh6_vWHMg@mail.gmail.com>
Subject: Re: [PATCH] treewide: Convert macro and uses of __section(foo) to __section("foo")
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Xj60c/JJ";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Oct 23, 2020 at 10:03 AM Joe Perches <joe@perches.com> wrote:
>
> Thanks Miguel, but IMO it doesn't need time in next.

You're welcome! It never hurts to keep things for a bit there.

> Applying it just before an rc1 minimizes conflicts.

There shouldn't be many conflicts after -rc1. The amount of changes is
reasonable too, so no need to apply the script directly. In any case,
if you prefer that Linus picks it up himself right away for this -rc1,
it looks good to me (with the caveat that it isn't tested):

Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DAneP9%3DNBFpE2eFzqsYnQxEVjxHQQYSybBCeh6_vWHMg%40mail.gmail.com.
