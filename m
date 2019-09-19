Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBP5SRPWAKGQE5JEWRQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC3BB70B4
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 03:26:23 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id w12sf915341eda.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 18:26:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568856383; cv=pass;
        d=google.com; s=arc-20160816;
        b=xmV0++clIm2mVcXLaUy37a8M/HxObgrKc3Y56GUCPawdYrn5CLwSfLoOzfGRWxlYS3
         7SPx8HyO3irLS/Z+V72ciJ1KxJs8whXPVgauWHSpgZEtOfFr5Xk5lkbkclvSrU/0UoCY
         r9zh/61FhKBAumyi4ObmLs+gJfMjUBQak8JhGaIM463VXLvnbVldQFDKreJGQEt809k+
         VEd9gXr2JJjAFvtaAsjoLVmvMgpLcSxMCCFLWxTyNM5p+cGcEpKzC7BnTiMrGS+It+ZW
         01i9gy/C5KO0CwHAbo8Jcq/7Xp90dhR/bxpNvkqicnuSWekyww6J761QnWmi9NkCFweu
         ET6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=7+6T23A7A6S1QqJQnt9msTzU8R3E/41GeatSgBS0Pqc=;
        b=m7J7Red8KW4jy6IG/CqOOlbNCdIDxIyzLPvMYBc2VMKrWWm3z4tfxTrpZ5U78Bwkwv
         4Imaz8trNcKx40pZf46DkpeIs6kwyZbLA9TJLx7xNqjdHettndKEustGPZgRM7rpvsvW
         yAy3cUaWg80KMi6IHYlXiK2agkdv1fTKzbF0SvZiSQxxQcNC9QLTF5AWIxDfTs3xWzjG
         lOUDIddE3d8h016ZzBQBjY8tfg6+Q+YuL9SfKRE4+so5Eo8LUSJpV2EfwQCTrCnf/WNL
         GfuMpfxpCAjbNK0WXTto9amyC0z3XA5l5Neve3r+PP9hBnUH9BaQ8UXoPgLh1wLwDl8k
         q1Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AvugnqvM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7+6T23A7A6S1QqJQnt9msTzU8R3E/41GeatSgBS0Pqc=;
        b=Aa5RbOOib2ZgbWy8c1fTzBSz3Y65PHEcIvPa8JZfHpDJ158Chrl/a9M1O0AI90wb0F
         YbYYSHpmLs8ozmNvL89Qvni510sFZ/60JPst1BJ49MvkFPpTFcZel4srr2JQsyiZsqwQ
         J25+yU4ftfz4aWtH8krDxGIcqJQlzNDaMGoFtnHJZn7kcvwxS42xlpqOr6yYhshkGWTg
         xWZ5Yz5PE6dqYcir1ojRCDLbnZpLiIPt0wUtxMTk7iVrQAGYxZHsm2qTv5gUI/sc3PlG
         LKeVUTKbop50ZBLoUseEEQXzO2tuct1n+0Pmsl3BuA37Oaumpe/x2kqnQEG6HPkYVfTi
         aiFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7+6T23A7A6S1QqJQnt9msTzU8R3E/41GeatSgBS0Pqc=;
        b=AP0XWjmajH2QdEpz+0d74PT+RDZF7IGSm7fbFsiR6llf7CBKipvHN7smxRZMC/4mIx
         v9Hlx1X0PCN5hgYo4J/Lj6CQ5iAeooMcD88aYE77EWIgLr/dbjLR/Ifal2UUSQjIkDl8
         KJp3n81DA2Dmj0t0YNkh8yUGQS2GhkfDK6zYLnojrow7+KZECW5a2Cn+h0dOR461V+6v
         1HqIVSiReBaFTX+U1QkAg3X9/ccBu5MQ9nwgdncyxoZI2GbquGyQ2/dEno49Xcw0vLFd
         n5uULCDsU2q9OdnuIQTG2sh0Ei7bGhNWkpRwsbEaXs0zh2V77KMQbjL8W+MhlfOxbMlL
         +A+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7+6T23A7A6S1QqJQnt9msTzU8R3E/41GeatSgBS0Pqc=;
        b=ERvp1Km1GdxJNL2Dk8W2jCWOXvC4kJ/wFcn7XE+jYefnI6/Wf4zYgY8gMSHGp+ln3s
         8vwEX/w2ifCFAF0soTWZo7oS98f1hdlRGk4OlG/3q+lWKzs9MTvA1pnErqAnr+7Aqp8Z
         V+DHjZeqRwbyYv7J1Uchs15TdauFpoWTklDVuWxLuPqL8b8wg7Sr2vOh73eA+SojuJtb
         kivE2ooqKJDDN51woKUl8Nk1GX0oFBKIYl01nV/YYAOxFfYkIBBl3csJTIAwTvIpmeP1
         4X6RGwXOHc//29fmfxukffYDEj5lfMVpow/PqtfZGi2FrMnYRvqbBAmWqP81nv/0nNTp
         QkbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVMZtfgriauulkBl3k1fyK+SyrXKyUVeu8oFvL4QRLnpPpjjCcI
	h13zv7MoOTK6cC9O3KK6ai4=
X-Google-Smtp-Source: APXvYqyOpMDkAyJrlSFvZAQZKTAY7zUc3gS4h8mlrvOVbdlRv8nMEJuZMvhwAv/ayZZrorMF5LbVUw==
X-Received: by 2002:a17:906:6dc1:: with SMTP id j1mr12173594ejt.85.1568856383706;
        Wed, 18 Sep 2019 18:26:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fa4c:: with SMTP id c12ls455118edq.5.gmail; Wed, 18 Sep
 2019 18:26:23 -0700 (PDT)
X-Received: by 2002:a50:f293:: with SMTP id f19mr13461828edm.85.1568856383357;
        Wed, 18 Sep 2019 18:26:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568856383; cv=none;
        d=google.com; s=arc-20160816;
        b=DV+F/ydkqhUsxsdIK1DznU6NTU9/MsjfVo/icM1mVMviLdv9PWTPuXshKuTWqNFysW
         CYl8uEP0rOSQQ3J5XlSJ6/Uzbwy+MZR5bh1aaMSTSP+Y28tVIIk088sXMmfyrS4A8k0b
         MXAaHmFGbKsK1BYqTxRoL92I8e+CZ0r3TXn9rUU3cjorrv2O521VcQ8cYza9ZFuoNwMp
         CPzKJgG5Ub6VRyBYGYP/GN1DP1Utr/S6JIki2CccSrhjN8/lPFnU1Isb432J04IkDQJO
         XuFZAjcELSxF1Cwz0dqq2zZPVmyORXReWDVN/3Z15jKNicHJ/rm1CbTOOX+bquELM0yk
         k9QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Fq+RpFCn2McWuMg3C5OlmcYZSlU9P8enqlr/h4VhVAg=;
        b=A18Ao4gcIhze1U7M8J7gd40fzGVriznqm3MATJjacDiUQZfGnL7v98HAkP481hPBR4
         cD9CpBhKWVNHsZ8hLzyibKjfH00Qx+PEuEi5ba5hPXiqEfL+xtPXew9BffAao1PrQSO6
         62JYN/GAN5TtyKY2wHM6uRq87dA0mMNUuhuPGBBJGfNARX+dlbmCmpYSGhdzjOmoOiV9
         TnTQOkr8b/l9SEM9wZAea7WothBoAx51xUcLQv9CV9/S5pr8R5ISow00E4ftEkg1f+/h
         mg/dCFC6O0J3IjRZD9aNvy4Ol1+EvpV1JD5QMOYot0MJIq/5LKasBIfjgOhCffTJKs5q
         tF4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AvugnqvM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a15si110678ejj.0.2019.09.18.18.26.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 18:26:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id a11so1299340wrx.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 18:26:23 -0700 (PDT)
X-Received: by 2002:adf:9083:: with SMTP id i3mr5434855wri.310.1568856382862;
        Wed, 18 Sep 2019 18:26:22 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f13sm4400000wmj.17.2019.09.18.18.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2019 18:26:22 -0700 (PDT)
Date: Wed, 18 Sep 2019 18:26:20 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mike Kravetz <mike.kravetz@oracle.com>
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Davidlohr Bueso <dave@stgolabs.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	David Bolvansky <david.bolvansky@gmail.com>
Subject: Re: [PATCH] hugetlbfs: hugetlb_fault_mutex_hash cleanup
Message-ID: <20190919012620.GA72561@archlinux-threadripper>
References: <20190919011847.18400-1-mike.kravetz@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190919011847.18400-1-mike.kravetz@oracle.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AvugnqvM;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Sep 18, 2019 at 06:18:47PM -0700, Mike Kravetz wrote:
> A new clang diagnostic (-Wsizeof-array-div) warns about the calculation
> to determine the number of u32's in an array of unsigned longs. Suppress
> warning by adding parentheses.
> 
> While looking at the above issue, noticed that the 'address' parameter
> to hugetlb_fault_mutex_hash is no longer used. So, remove it from the
> definition and all callers.
> 
> No functional change.
> 
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>

Thanks for the patch!

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190919012620.GA72561%40archlinux-threadripper.
