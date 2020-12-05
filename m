Return-Path: <clang-built-linux+bncBD2NT6VEXYMRBHGSVP7AKGQEMPAQNRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 850872CF8DB
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Dec 2020 02:57:49 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id b199sf2909869vkf.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 17:57:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607133468; cv=pass;
        d=google.com; s=arc-20160816;
        b=pEGDVL/BvVUqE2mk1RG/Zj7mZuKUAvjiBW5TU+4oR4DrItRfKc2lDWTOGjpednwTvv
         B9Kf8AJ3W8ODQZSp3gMHqO46a+ZzmJ5IH87NkOVN8CT50WnS47mXxj4Mh4rtYFtsukFe
         qaE+Qzbr3P7Xzsw5LjwE1fhS1QJSiYYkbFtv1vHBDvhqLO3MyQTIvndJ3PmPj0gF5Afp
         iASK33c9IzaGv+GV8YUDYFHQo6OUimbcmFVG9vHIdW91ujFg9O0kkqXlvvAIwUFE72jb
         ykacbtgDbgwXjM1+maWmDeBcQvKNNr/UtDAXokjz/QAvG3kxfh/vyeO0/E68/QjZT25H
         mFhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=zNiOkhcZW7bednK2ldjynF5NuESo/nxf0lrFhe3wXb4=;
        b=v4Wt8coecCM5WTFI3YN9c56AmMX7wLBRGhAaotVHwdpZ4H5Mx0DQkxn8WRENK43NuV
         uRDPgoDiQBv4CrAfTh3WQzQgxKc02zCRuvQAtHobvgU4tR2V4dhyxYrgurKrA1QOagvp
         rF9PpaOhal+BpXOkPk00HDdiJ8hYvy6A+aLaY4jqPpbLTDIUXvzkeK7mZMjzgyyhTuoV
         DfdvdpTxJe8criqqZ734/iK51OHz1GglCD3eH61oO27LyIdm7K20cnvQ/njPT9roi7a9
         EI+7PUc+fv/8D2K3z2IXaBJ4tK6dJEjqdZpvb7cFLTV0EP+KUVsV0TemGWP2koaHsr18
         THXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sS3EAepc;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zNiOkhcZW7bednK2ldjynF5NuESo/nxf0lrFhe3wXb4=;
        b=U+SORoJF8HIkr+Wr/l2NeT0220KvAXxF+NqxZNzSdDbzh4JD6b6ocXdIQZnSZIBhk+
         SEu2CEGZ6L/NAMVDxhnMp6SXnV/YxIUsggzom6/DoL0eSpRhb7YSaL/9xIbcNlAm3L1P
         gOV7oLsS30WGCQAWem8xbE2rGWNOy8rRmaGi9CRNOe+sRSPd3qNdIg+ocrsW6B4/Bd+v
         slnXnhT2L3g7Pv/JHfDUSd6hdLjtpFTMRwWAMx92uA6gwi94+DC+JJTXtNrCcFPSXx4P
         lA5e7yD0eNLdl3qKPeqGzcSB5i1lsPhO3TGUT4c3wsqiBFkB3ZhdxnuLdFXFOMa7uouE
         LSOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zNiOkhcZW7bednK2ldjynF5NuESo/nxf0lrFhe3wXb4=;
        b=NHX4sCzDGH3ED36dTzEWEOOck5dr5sb/cLy0mu4TJgSkBKIDheQrxVUPr+NJYx/9SD
         NoML+2v58plqjHNvga9xry6Tl6bzB2KCCbVvd6Hpy6EXx1Gw8w3gcV+00mGJYV1VNibn
         Ruw/kYMaQHYeEXT7nM9MnP3tH1cq94Xi/49qtzRbdx3wpvk120ZVcxxpcWrAv8za8dnk
         Rb3gT0hYLDarlX4IV1IPt2MXKaToC+bJyW4RfsQCZOIeTpG3jvWJVCyKSjuJBz5G1RcI
         XetGjH7upEzF26uBsDEjp6kUXbNMzeotYr4DkqXj9pcTek3s7/N2TY8D7JppQLUYw/AN
         iPdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UfL7HBBs41LVPeX57QytsginwYj3WKYrvr8A7yft311dka32d
	An7UqtJjj8kJuvSTgZigHAg=
X-Google-Smtp-Source: ABdhPJyal4bHdYaprOz/rw8NYgxQWboEaLZTaDe3xlI5Ce1u9LeyHSYKxFuEMZ1cUH0aMci4JWhSaw==
X-Received: by 2002:ab0:2101:: with SMTP id d1mr6585649ual.65.1607133468543;
        Fri, 04 Dec 2020 17:57:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2743:: with SMTP id c3ls207267uap.4.gmail; Fri, 04 Dec
 2020 17:57:48 -0800 (PST)
X-Received: by 2002:ab0:55da:: with SMTP id w26mr4851714uaa.31.1607133468085;
        Fri, 04 Dec 2020 17:57:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607133468; cv=none;
        d=google.com; s=arc-20160816;
        b=JFn+2KLmrDT0u12LPTfrS4yOnA0zC0KIS6xf58+WdpgtHNIMKqjIjXMvMHcrQqvlnY
         l3bn4lU4jotTIH2o3uqw7KnoBvJKNPKLZ3mZgNuBwKy8tBcGuHbD7b2ZeTn9uIUkIVt/
         N5m39OhJ9ffF/GdqJEWN5Waq5EImfoRcYrXObXUQXIevbbUgFriEWpem/iMpxQPPZ37N
         V7+UJ5yuZqnBY3sZpJSk4wmd+EJ1En3oUhl+MnHAJ62d+MIWDZOhq6f1UX3VvZFKYtsd
         XbFvg/tMRtiECdVsYF/iP/Rr7NbrhVfsBfncwZTRciSxSsfy2ca0tdhb8Q80a3m/El9U
         5MOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:dkim-signature:date;
        bh=8ehKv86rwRi7f5BJe3V/YaX5tXKwAAPMLOQRKEV6ttk=;
        b=x9Ql9SRf4rS3Mp613gMbkJsAfAV7mtgMuUE/YmeGSnfp6iuWZnRY3NxJ9tUC860wN5
         r4y1DTOpmPgsEOiDkqxoBFDl0k3ExlqDwEhhykK15Le2T+ctnXLoqJM3Ky64haJLCVex
         gJ5esFASyTQJH9ATY4ahCUS96aRRDJdaosjB8JCuxstatcnwESE4CWsrsouKe4MxZ3cJ
         IZkYtuN7uBjG4/x+plldUkCKjZRXYfb8YE+WHgW9xh41vW9PO/mm+O0j0+ubZLI0hJ75
         f0uAGGS5Uz8kBpuYlvwML+RnA7xvqWqBaa6CTJGvl7gLl5eoDfnsxt640wtKmMaKOmQJ
         WDqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sS3EAepc;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y127si347893vsc.0.2020.12.04.17.57.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 17:57:48 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Fri, 4 Dec 2020 17:57:45 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Ayush Sawal <ayush.sawal@chelsio.com>, Vinay Kumar Yadav
 <vinay.yadav@chelsio.com>, Rohit Maheshwari <rohitm@chelsio.com>, "David S.
 Miller" <davem@davemloft.net>, Arnd Bergmann <arnd@arndb.de>, Nathan
 Chancellor <natechancellor@gmail.com>, Nick Desaulniers
 <ndesaulniers@google.com>, YueHaibing <yuehaibing@huawei.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ch_ktls: fix build warning for ipv4-only config
Message-ID: <20201204175745.1cd433f7@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201203222641.964234-1-arnd@kernel.org>
References: <20201203222641.964234-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sS3EAepc;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu,  3 Dec 2020 23:26:16 +0100 Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When CONFIG_IPV6 is disabled, clang complains that a variable
> is uninitialized for non-IPv4 data:
> 
> drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c:1046:6: error: variable 'cntrl1' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>         if (tx_info->ip_family == AF_INET) {
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c:1059:2: note: uninitialized use occurs here
>         cntrl1 |= T6_TXPKT_ETHHDR_LEN_V(maclen - ETH_HLEN) |
>         ^~~~~~
> 
> Replace the preprocessor conditional with the corresponding C version,
> and make the ipv4 case unconditional in this configuration to improve
> readability and avoid the warning.
> 
> Fixes: 86716b51d14f ("ch_ktls: Update cheksum information")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

This is for evrey clang build or just W=1+? Would be annoying if clang
produced this on every build with 5.10 (we need to decide fix vs -next).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204175745.1cd433f7%40kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com.
