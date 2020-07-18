Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU6KZH4AKGQE6JSE5QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2057A224829
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 04:58:29 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id v15sf9287358pgi.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 19:58:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595041107; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZIQpI7XPdj/4NMEN0rEeNLgzx96yZs+hsad3xexqTDGEcpbfFeUISIsj0KfUwlurTg
         quxmRUWzlg/3ZrAJzSioJVy13fFzZJVCGE95HE0Zns9J50Gs5x4jClG2S84OtG+w/bE2
         Y2+VpEVZ1hx47rGfmPKTMktQN6Xe6KE8SB1aHzbSKZ5d0DmI/qp3SRdMSpaeFkPhvEAz
         eeSlWKHAtOCqM1s2540UUOzi+oiuCUXEF0Ha4k8m321UwSk0GoAXJ8/vLfA+ho7MI9pt
         W4OhRc8YbpYH9amdlbG66R0P0eW8tCwd8GrWSEFiW6H9vGjTOUGhyk2LXB5XkcsnNZxY
         2UIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=U2lO9ZmIxiuHk4EoZIKzrUP3ET4Eq6y9NFvZYJFkSEw=;
        b=EoaJAd1ec0MyuMcCDFvE/mq4p2JeLy8LdhPGsr6pbmBKBo4sKUCSjFVBVn4YA0ZPG0
         j6un/E5wIA8GRvnGaavhVw0GN2R2GcqlDcQGbLgGIJj0sFmLVm/HUqeodFv0XjPv5fjK
         32eu+tPHgHvhkl/i9v2tektLE7gUhdzKfBcTBr7HCz1WV9VSMwlvBHuCbDm2zVCQJoHH
         V6IM/FpZYc6FFSHQLv4pq9ibdCjqsC7EdIH5zuDt/l4UJlKlh1nl2lSEAs4XphrF9eCd
         b/xmIb6geKeLbTy+6IIupmCnAxDT8zZBuAo547Z8e2tq6UF8fg2/P9KkLso4px4DnGJb
         44jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qUgRCn6i;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U2lO9ZmIxiuHk4EoZIKzrUP3ET4Eq6y9NFvZYJFkSEw=;
        b=UvdwxJY+jEED8SJq9STBolE658Tyhx6qUuwuMk5083DaKb6pZKWG/ErEfU4wfLbEO3
         24/I83ahcqoWqYXzFbpbEBKoWJSWt3mxdsPTwb0nzcq1IJNvi5cUTFqHX4oWdZyrD3DP
         X46JIgpj88yh5AFZct/lseLRCKkJejG2CiLTSOB+2MqtOyg6WgR5BNBKLQwuu+YmTEAW
         33v9RypSzMsUiZQgInv7jn7OTIzf+RMy/mk2UcYw6UPlJltsbqcYdIXoPd6dCEoeZeVw
         foUheltZlwRdUw0OB6gHxoL6EKL4zF9zjfacY9hmt7sZ8MJ4SIRk2M3+vJJM4B5LRJkx
         Tvmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U2lO9ZmIxiuHk4EoZIKzrUP3ET4Eq6y9NFvZYJFkSEw=;
        b=adhGrOepuZS6VJqOoCKrH9t2GoUOKt/MwRiluyiJyKNMC8JE8ykSzVwRboEXcKFcA/
         Y9y+shFaDFA2iaWmQbgw9oTWAcfRT3CufuCtKS4mR2K0HWnySJ2Bx4Id0+XI7oEJoLPk
         MY2mfmjFBCV9RRoiJs/zEWd9qeAHCQAncruxAlcLSH/mHDNYofovRySf94Wity5KoQt/
         +TvpopK84vJt8B/SkQxs8i1XXzNoN5DumaCjC7FKp6vHst4bVGZRaS7EgNUWrh/uAevu
         +zGl+oPI8ns1YvqkZhap7unv9puDMlokYIu/tV8Pvwiv7pDcq+PT/tj+1H4ao5xNj4CK
         aGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U2lO9ZmIxiuHk4EoZIKzrUP3ET4Eq6y9NFvZYJFkSEw=;
        b=Fjg26AbET2fTrjJLOMUzJQd5KMWZdduEClecGwaFr+QGqm5eYDsTDs6tBICav3jeLY
         pmw3obwN2n9Z5CemZezF9wKlR5mCnnp3RCyn8qRodDxti2P8MX5wZYSzbyZcUljLUWkV
         TmKKPT4pmpl021CUciVNp4Oup33KgxZL9g8VGc64hIqWaulyodJyMJDR/lS3tp5RLuuH
         nvOzm8N8eZ/2PQ5+hQG9z8mY8VDN1v76WV0oVhESRxjNItIcTFMiAQq2vnUBPr3sOkVg
         6o87thZyevVwBnNQiC40LhlsbDaBjm9uVx2RtRf+s5QHFiCumls9cn50HKp7jKLqvw2V
         Mn0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vR/6S3OpCRGDktDCRrK8mkALbfFesYylQw+Ed3Zd/h10VLEt+
	P01Nh0UL1ZvAiM0w3MjEBWQ=
X-Google-Smtp-Source: ABdhPJzhm7ppkBiGPxjqmpSCY9+QEbNgIk8I4Be1DAIlyWkGd/xmcizxErqeVigrM3X8F00K+zBflw==
X-Received: by 2002:a17:902:a418:: with SMTP id p24mr10510190plq.55.1595041107469;
        Fri, 17 Jul 2020 19:58:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:380c:: with SMTP id mq12ls5171383pjb.1.gmail; Fri,
 17 Jul 2020 19:58:27 -0700 (PDT)
X-Received: by 2002:a17:902:7d86:: with SMTP id a6mr10435738plm.215.1595041107104;
        Fri, 17 Jul 2020 19:58:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595041107; cv=none;
        d=google.com; s=arc-20160816;
        b=Ot1jh5qSHBDxEb487IbFk39TMnDksemYKJAwDc0AFHYUxtkcO/+99WCtoB3nifPSth
         ZnoLE9e9vXFx97JGTUxbb5rWmFHYT36ZKO5RixSEAYr91mr5unxuoylZ5L4IeMkEjihY
         WaP3uatQrWpx/wIbOKIt+uSqmmXYEdJ2VuNbeYH6N88rzmgemcmiG/5dbpEUTUUQ1qL0
         WsbnE6rkYvTwe0CW35/j5kKmZGOIU7k1/oYyG4bNaVGjsX8gmUyu8siEu+p1ScM68iv1
         4g5SYytXK+ynttzVkJ5/YixVxFlz2UFOQEBlWhegcep2xZkJx8V1ccpJF+hyNeWNRJRL
         nakA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=t5vwVcGeID8q+Y3Mc+CoAuwJ6W/lykUXCUCPrO4IGFM=;
        b=hyHqzLeZeoLm5sPjPz0q0eHs2Togw3GotVae9udRvUh5tIqr9B4PzFJsomNQksFgdD
         s/v63KfyOfr6PlzBBfJjV8dTtTmSnAFm7jze0mX/7D2lSic2Yuz8bAFaM9Mh0i8ph0Vo
         u8hZFJy3luIry0D2xP8261S1m1yTA4WMZi8yPDkp3ko88AchjtPcfQRMEbVT6NtpAi49
         7gp79PngYSxtvp9XZtJVcixeGi+aaxlTIgfLwBbkoGfxGyrUCScH48wFQEJBt72nAIik
         oqzWMCP93oAMRpBvHO2gmfrNi6+wHB/pvxujIwIyX+pBo+62e0xMpkMMZBZsTy2YiBus
         JmHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qUgRCn6i;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id y9si686367pgv.0.2020.07.17.19.58.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 19:58:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id z15so3822738qki.10
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 19:58:27 -0700 (PDT)
X-Received: by 2002:a05:620a:79a:: with SMTP id 26mr12135966qka.169.1595041106132;
        Fri, 17 Jul 2020 19:58:26 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id w4sm13693815qtc.5.2020.07.17.19.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 19:58:25 -0700 (PDT)
Date: Fri, 17 Jul 2020 19:58:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] clang: linux/compiler-clang.h: drop duplicated word in a
 comment
Message-ID: <20200718025823.GA1188976@ubuntu-n2-xlarge-x86>
References: <6a18c301-3505-742f-4dd7-0f38d0e537b9@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6a18c301-3505-742f-4dd7-0f38d0e537b9@infradead.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qUgRCn6i;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jul 17, 2020 at 07:55:02PM -0700, Randy Dunlap wrote:
> From: Randy Dunlap <rdunlap@infradead.org>
> 
> Drop the doubled word "the" in a comment.
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: clang-built-linux@googlegroups.com

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  include/linux/compiler-clang.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- linux-next-20200714.orig/include/linux/compiler-clang.h
> +++ linux-next-20200714/include/linux/compiler-clang.h
> @@ -40,7 +40,7 @@
>  #endif
>  
>  /*
> - * Not all versions of clang implement the the type-generic versions
> + * Not all versions of clang implement the type-generic versions
>   * of the builtin overflow checkers. Fortunately, clang implements
>   * __has_builtin allowing us to avoid awkward version
>   * checks. Unfortunately, we don't know which version of gcc clang
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200718025823.GA1188976%40ubuntu-n2-xlarge-x86.
