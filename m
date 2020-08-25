Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCGIST5AKGQEHO6EKOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 071C5251B17
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 16:45:30 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id k185sf3777123vke.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 07:45:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598366729; cv=pass;
        d=google.com; s=arc-20160816;
        b=OOQ2eRRBIPGB3PqY+dEBkwRkd2dNshpSo0rEngPlkxzaonKukEfvv9JOedej2iAbf/
         popdKI7TCiULfIhCMZBn9B0yuUc2QyuZ+GpNgE3qzi7YMVJ4jNWjxJByZlnCfX/1cm4D
         v6SXVCGNBE3Gu9CHA0I5MvQE0bSv/ggCI+URC2u6A3fuJIrHp2SoROJMsOh1KQGKaWJ6
         ghB2j3+v7puMFsfgHXtwvZNO/pQ4ypRKRbIwEXjeGzn1JNiGFFLWojQbdKPCdrMWJYy9
         9tnCZ8YDK0jvTQrSb4yYCtFSBzeIKCKMfAOU969Kdq9PNTgg12QaLjGAm+P37Nhs4m0c
         DEOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=dVcRFUWzld7rHj1yximm/4JaBgvOASZErynTYx79itU=;
        b=U6f7k763q7vQTSqrAFefO40REdo811LhtB9NEey7hRAcNMs/DTvHnyVg3uY/8t+q1v
         qsRuCvVdCgr8kAQ8RbxD1n8eyX0qcE7G5eBVOYjCN7nC93csT2x5lBmhwUHyv411sAeG
         jN8zjmnXJ6Oex7UaG/p+3nM4qtNqsSgfM904pu53UZmAgWXFbROu3ue0JlkvT86xjGpG
         pynf8qBhcluKgk2P/qNBSVz+5b0MwIe81IlOVqnYE14vpJyJyikmhkLYvVVSaSKzxkjW
         M8rgXIMHzQL7eRYWnelDnnpXD4tD3b6AXD2XM4Oq39WNAyH6F/yaubu4AUuQu0uX7wL5
         TeiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJEnGzyO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dVcRFUWzld7rHj1yximm/4JaBgvOASZErynTYx79itU=;
        b=MZYIg2XVguUNwOgkRrUEudeBVbHMSlpwBLY6xETCbhkawGx16NUOwwAIVWfAnEAqHJ
         EDTtkOC+BKngaFVATT9OveTw49YNV9Z+Zz21KJLm03ntXnFnK37OA2TNmQtDr8qxfkoy
         55uZ6LwvUNLaWU3PLDR1iwH947aw/Dr8+KLxfgsJIHyjQ0vKM3BViC/iZhnI4uhVBmtO
         C0hifkId/i3xeYa0Fak6i37ivO+XgVeDtneHL7KGsxthICqHOTgVKrLiDdgxS54MZmYM
         i0xJjXqft1NHQSFMd0yVoVuFIhV8/coJAzeM0lA+OOsQuHILp/FzCD2XIED3m34zCpVt
         AJKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dVcRFUWzld7rHj1yximm/4JaBgvOASZErynTYx79itU=;
        b=hdro8zpzuOvvVwdZ2s1zvKQHdfZLFAO5lwvQklICDBknvOW3nIbYQJ399OiQjleTdu
         xLkGcLg5h2tYRTcuwWnNJxgPSISVIAcENTioiXedd/N8WKRfgtRndaI+inaFBn3WoP/Q
         Dj+iZG7B00y3OLG++gw2qGeDXAJ1xmijgw2voXz3k7/CvQviqoQIcUrj4zuzW7ywN1Xj
         JEewaPU0W8WZZyyIWvtFPfM3Hnvr2huIBjqoq/hpFpWnvY/eIy99/Gj6XvLxk7Wcqs+u
         ckD4WUhdL7e1KrSgbRd7jEkngRgx5PXM/bwSYjTjZ/pd0Km/VbBTjhagiTR6l6n9Or63
         5pQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dVcRFUWzld7rHj1yximm/4JaBgvOASZErynTYx79itU=;
        b=HmPC4iwoN5ZlGq8XIFhZPKWGWOBpqqk9AszzwVd/+RIFsbsTpa15ygk3DNTVLuH6PB
         DuLwEPOkluMRonDpnPt+dVklfAEK9r2yZp6q9An4JxC6gpEVe68qOtZaNJx/LXtcPSiC
         D49VK/mvODkWHLapqkHVs7iOmGCF6Bei3kLigOdM5puujiszBs1xIyMbB1Eskmb7KiOv
         gDrBC993qMdWQybplFpsthqLjyG5F5QYdk7DJsa7e71+19sE//chCrb9coGESa5qrUA5
         lLiIq/j4h0vZ3c7bn5DyIKIK/pPgJTvFQCrbKTqtAbhU/IqiaApdSGl2lnainzB5atsv
         b/SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53279ulQe+nVGiLXo6t9f9ZbfD7nAIsZ5jSAQUAMQY0YoZ43HJIA
	oDFifreT5ynPAv1RygcF9i8=
X-Google-Smtp-Source: ABdhPJwmsBSM+NxDYcAF2C4NmpWkjejAsCccHiSQ8VOTEYKOtsLNdKQoR0lkYpQ+DBweK4uh/CW82Q==
X-Received: by 2002:a67:8ac9:: with SMTP id m192mr5659812vsd.117.1598366729060;
        Tue, 25 Aug 2020 07:45:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c84f:: with SMTP id g15ls674302vkm.3.gmail; Tue, 25 Aug
 2020 07:45:28 -0700 (PDT)
X-Received: by 2002:a1f:9e8d:: with SMTP id h135mr5758082vke.4.1598366728675;
        Tue, 25 Aug 2020 07:45:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598366728; cv=none;
        d=google.com; s=arc-20160816;
        b=iNHQBuP+l7NmgEbRrZxk/D5+bV0QTWjmBUFQuqaLUiZCTJhgGHQWg8pPZoZ/pdnZ1K
         TEh93Te/gBSYXHnXRhe74dY2xL8qOTRaYygVHs3axk1Y/t0PJrx/u/jgqi4wOJbb0+2B
         YRWAfLD6dGqH2UgGq1X1+TgBGHvdy7qhr9JoNsK0PU8k7dvxZfdvhZiL4qcbXGgp57tn
         puptb6Gk3yO4cUS9/JrQLYL1eMz3YggqvBr6XzdLkwX1RzCpSPOP8uZhSDaGAKHBJcP3
         Hg1bETfapPTd+znQKIVxUh58qG5lCcaXMXTROaACm7zUZl416+W1nO6B0b5AVV6RvpK5
         GwmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MPpWQLw9NIuZJvTlALTJWYW9Nw81sbkBJZTeK4RABJ8=;
        b=CPT4O4hGGdyRH7A7Cmj7G+A3yY0xGZHnX8MkHP/WCvLTABy+PLa0bcVmmwrwQFihuJ
         WCcQBeX330IKk3MMbEFI8WMExXoBVbIM4PPSz6hAKPYFyMuMf2IvUYOs7vsBAbNRbKdu
         ZJGQ3pLwfP07JZBzMwdEyXtykWqn3+KzbcfT9WEEuq8RvAa9/Jvw+/kNV+ro0XG4UHpR
         52rkEIgZB8Hw9HFM+EA7DbTpzOBPi9XpzQZf4lDzg1fTkFmZxr/jevKXeUWM9k2WGQG8
         m0lEsrazQ9cj8jbN3E/9IFQCi5F2LDr1vA0hXc4s/4ZwfAqLysIbM/MM8cz0Lfs5h4OP
         4vuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJEnGzyO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id q1si797007ual.0.2020.08.25.07.45.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 07:45:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id o12so6460615qki.13
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 07:45:28 -0700 (PDT)
X-Received: by 2002:a05:620a:22b4:: with SMTP id p20mr9194663qkh.340.1598366728168;
        Tue, 25 Aug 2020 07:45:28 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id r6sm11551337qkc.43.2020.08.25.07.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 07:45:27 -0700 (PDT)
Date: Tue, 25 Aug 2020 07:45:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: add LLVM maintainers
Message-ID: <20200825144525.GA128234@ubuntu-n2-xlarge-x86>
References: <20200825143540.2948637-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200825143540.2948637-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YJEnGzyO;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 25, 2020 at 07:35:40AM -0700, Nick Desaulniers wrote:
> Nominate Nathan and myself to be point of contact for clang/LLVM related
> support, after a poll at the LLVM BoF at Linux Plumbers Conf 2020.
> 
> While corporate sponsorship is beneficial, its important to not entrust
> the keys to the nukes with any one entity. Should Nathan and I find
> ourselves at the same employer, I would gladly step down.
> 
> Cc: clang-built-linux@googlegroups.com
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Acked-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for sending the patch!

> ---
>  MAINTAINERS | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 33aab0c88118..0cbb24753153 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4249,6 +4249,8 @@ S:	Maintained
>  F:	.clang-format
>  
>  CLANG/LLVM BUILD SUPPORT
> +M:	Nathan Chancellor <natechancellor@gmail.com>
> +M:	Nick Desaulniers <ndesaulniers@google.com>
>  L:	clang-built-linux@googlegroups.com
>  S:	Supported
>  W:	https://clangbuiltlinux.github.io/
> -- 
> 2.28.0.297.g1956fa8f8d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825144525.GA128234%40ubuntu-n2-xlarge-x86.
