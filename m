Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDG54H3AKGQEWGDZQ4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 129271EDBD4
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 05:46:22 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id d18sf935761pjr.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 20:46:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591242380; cv=pass;
        d=google.com; s=arc-20160816;
        b=GnM1U8PNkqxYS4DQiNeHsny2pjWk3c8RX6NhPZpvqoi7yWZuQPDXos8NrywIawxIu9
         1VbKj4uTS92RuOChIApPmOStOHYXAjEuh+ecHVjMjhKbC+d5ZdFVEYqYQe7qbuwRA5t4
         F4Dm88pEAKJ7zVSqzNS+vTrq9R+VoD7E4feq0q/+QpThgCdTzV6IDz87lOgsSRXqCqsZ
         UBnuTB9ZUpkgOOkRAVIRuNIfsEEIaJzHNtyoQQSOcCxF9d/2pfB4pkLiCcn5rpZBLZTF
         GOlcI4dU7I4CncmrlXrbkI2E0V+ZUnLRnHUjlG2G4gjo0rRmY2v9p2o7Pdqj0tfL9qg6
         q9QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YD9ubHfQLcvgHhi4HjSJ9HJp6h3dalWBLTxqNLFdbnE=;
        b=FcpKscpsA5abdJSLLK7vimnUV+FdbhJ6B8J7C+E/rHMOIxntz+zAEEvDFopddiZlhT
         5kqSgYuKUWSSJOIRsjGRZvkTDpFe9WgwnGIC9f5wMf7qMW90+quixB0Gdvy/mM5OZyOW
         1n1XaAvp50RoKCJfJBelQPZYWwbP0zQb8OcfrFBEaZbJHz3QbYuOwiij1AYuR1kk2c3m
         ffkiIjyfSQAOHV+tPdVjD1gRkq2lZXI7IIRjzUW6iqkjB52hgYYaFzIdk5I+lexHN1+7
         feL4V+sudC9A+LeI1KTcCmpBG3P+McJN5aME9txe+I5jvHeI3C/mqUI0xnm8i27J9ytk
         MXvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hKAsiTFp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YD9ubHfQLcvgHhi4HjSJ9HJp6h3dalWBLTxqNLFdbnE=;
        b=sSQr4y+V8ZOcQwxkixZS/5lRUK70TZyvzCHivsH9Z8tk3ILGIUzi0rA8N5XMxTMBBX
         9sdMKBK78OwSk5uXWgb6wEmr4jRNa2VeyCRFGoM02AsK8ycvOfm01arREFPwfUhQgGq7
         1fZJITlFwqv0J3KFfvR7z5JTMeOFtxNTMyF1dS/H3wbUhi/rSJ9Yr/oS56YqrC3dBHwW
         6pbEfrmmRpz+HAAw+TmLkib6ZCNBdnDz0jrDwCJdH0wEZg8CvK5Rr52kciTAXHUmqqSB
         0OyB0tDcuMLDEhMpsmPdHYj8gtVJtXdPkdEEfpNT3dHZEJ3tIYLFaOMQ5tIDo4d5CyXf
         OTAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YD9ubHfQLcvgHhi4HjSJ9HJp6h3dalWBLTxqNLFdbnE=;
        b=muOePWyuFWylfBOeqVzqP2Wdea0NhIWwG0ZrFeOC2WLU0hRCJudOM3fd+UzD/HU7zw
         uKfnNMmuwH4ABNUJuzFNlKq88w/lboEjaB1pRFhcpIRkXC2BLPS4xYt4JZPUZSl5guWJ
         mn8GlQ8DYSLod4IXaEfiv+oTX9i5YWFpEJGTDxrveN07ylwNzNq+ODz4IeyXONIi3bHH
         uvLMDUeRIyS7zdRyf3+JmX6hkfEF8oGFxz9u70cqBsfOFUsLikGjU/zvpKuoZI2BBLr5
         TNSlu56k2EE8sm1r+kySkcTa25rElkAMjbZLgBNexheyCKzBUwbRXGfnuRbdaqhgyu4R
         Ingw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GGkyp+3aUJdJoX9aQald48k4wiBAfHSLhB8c8VCpjwNvlExBi
	IpNUNNDARrGztO75Y3egoHg=
X-Google-Smtp-Source: ABdhPJyAg9UuXSiLWkH+1JVN+r1yMF31FOeFFH2y7E9xsv8yL65PHeils3gha7pz7het0NOBwLUs2Q==
X-Received: by 2002:a62:3381:: with SMTP id z123mr2319694pfz.274.1591242380561;
        Wed, 03 Jun 2020 20:46:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d015:: with SMTP id z21ls1223464pgf.5.gmail; Wed, 03 Jun
 2020 20:46:20 -0700 (PDT)
X-Received: by 2002:a63:3587:: with SMTP id c129mr2598292pga.190.1591242380196;
        Wed, 03 Jun 2020 20:46:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591242380; cv=none;
        d=google.com; s=arc-20160816;
        b=P/DssFDxJ7H5vSgKzS2sTPsf9S5Shkye9tj6vjjR3Mt4KLP3t61KXrQAMgSmvK1BE9
         u4oJhpyROxlL8DBwTLNe55gzhKgqJbnl8HJYNNqwvpm60/vSxyXXCq1eSEOfqWZLoDUN
         EtZ12SMXw6djGw53K3eJJRq8ezefqh9stA7+1/JFTyayFh9IDSst6QS5DR+xCmK99GH6
         kLiUM8PsPy4Qd0AjnH8DmcvNdmYm9cbCHo9mILj2FyjTWV6U+wMOlqr5s3ICEeB7u1v4
         sPLHRfmd/5dPcynuLTUNAe3/INTKUD6ItySFnJaCGOhIzPW7e4TbAEVOsqYiuqEbaR42
         J0Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AKUvLro9S597CUdKLkHtfULaMJzReX6aR4Vd+jg9MWw=;
        b=FRQOY5ZPFOtzxCvoAmx6LLKyYjTAinieCsvJZRE3Jb6iNOfqDr5CVCQwIfjJLd5YBI
         fiPosvG8ndKbLbwBdZOORg5m2cZv5h+fnOyhC/AGoRLsufUAL8KsSdFDrhv5VFOgVez9
         PT1WSl8qW2iBFRi6VxiYD+mZmh8K4u6w9LKqRhZjOVF1YrmthqLoj/FCz+Dtjd1aibSE
         HAroOp4eWMXIy2GivdEXA45aiCMZ7qbFyeyPXmZWhieBF6haIF1gWu7u6ghrCp8Af8+l
         x23DxyJC8mpO4TDsp3AfGdVYSWWsvNf1opuL6MIQGazYMldkMPmVtUZCD3diVzmPVY12
         wRKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hKAsiTFp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id kb2si358507pjb.1.2020.06.03.20.46.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 20:46:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id a45so1724347pje.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 20:46:20 -0700 (PDT)
X-Received: by 2002:a17:90a:2461:: with SMTP id h88mr3702337pje.180.1591242379970;
        Wed, 03 Jun 2020 20:46:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a5sm3056506pfi.41.2020.06.03.20.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 20:46:18 -0700 (PDT)
Date: Wed, 3 Jun 2020 20:46:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Andy Whitcroft <apw@canonical.com>, x86@kernel.org,
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org, netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 08/10] checkpatch: Remove awareness of
 uninitialized_var() macro
Message-ID: <202006032046.96A726426@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-9-keescook@chromium.org>
 <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
 <202006031838.55722640DC@keescook>
 <6f921002478544217903ee4bfbe3c400e169687f.camel@perches.com>
 <202006031944.9551FAA68E@keescook>
 <CA+icZUVg24VrpPgMdfsgPa+Wckci9XkzKUdtwhVB3ZW96uZOWw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVg24VrpPgMdfsgPa+Wckci9XkzKUdtwhVB3ZW96uZOWw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hKAsiTFp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jun 04, 2020 at 04:53:34AM +0200, Sedat Dilek wrote:
> can you push that change also to kees/linux.git#kspp/uninit/v5.7/macro ?

Done! :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006032046.96A726426%40keescook.
