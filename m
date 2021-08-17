Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBM4Q6GEAMGQESOYOR2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9393EF62D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:37:25 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id e2-20020a67e182000000b002c34f78da44sf189151vsl.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 16:37:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629243444; cv=pass;
        d=google.com; s=arc-20160816;
        b=vlWynmgBQIQff3HU40p1CvqeYWkXu6wjJprQF7md26WiHSpyHZ+J2mbildY6MZ28bm
         R4TV8MLtQcXa4vDaRp0G4/+Z+L4HE78oR0slsbyLEVjPnfIQ1D1hQcOd/HewfnJSgGR9
         dg2R0P25W/6wedDhYD/Pp/JGKIIrtv2c6AczlTuaIgwwJ5DwZQAKM1a5yvpbrSTj7OJe
         lqD/+pb7WLRivM72wxMHFaNuVr9THPP878PUEm6REamT+EyEXVRYlKMCKKeiLlBKOVug
         dV+o5xro3rE0pZ4+eGOZQ5Bqi+3aqFeY7jRtnFvbdCNjacAEHFGDLzVIJzTYO1Jbaw+Y
         ZToQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=RifuGp/n22JR2aG1exKhl9pR5LNp3geoKm06w4+Wb4g=;
        b=Q0PFk7laEB4BZ9PEDQqBu8ZvleWoHzfLVWjaEHp+/l3W8rg8UJchTOg9B7+iPXY6rq
         2nbARN20L7W4FGgfDL97UHkWv8y0hrDwCAGzN5oG4DbuLe7ejW9MgiRkcmUXDaLP7Grh
         q7QnfEZYfOFUvMSVAFvYwmrGWHHXtzA0hY0Xa26G0LSzbL4uJwVLBpAzQP4p8lU5ShaK
         WtFHfi5erq3pyQ5Awa94PmBlPTFqgvc09WivhGlKa/4truthG6KQqvbINcK0/QY3E/e3
         DRJdudH/fLyIDpN0C44hNeJCj4hSMB3Bi45UxIV+F0dtX+KW1zDIv7gTql3+kwjtPh3X
         Y2KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=cFdaytld;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.140 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RifuGp/n22JR2aG1exKhl9pR5LNp3geoKm06w4+Wb4g=;
        b=DjCi6g/ci3ncrJTmGPmLqt7joKNXzcOsw7Ksww6jJW15Zqqb6pq0tryUrSzx5UXLVR
         A4dNVFR1KYyM9QwDyDsy+lOB6cqugqxesintzW76QLYzsutjRftQ+xabo2f9W9t17juk
         udSs8SJTh68qmeZk81pW8LWA/NkSPdwNdAAT9W+Ru+wEXWtjXkgh/s0eVFxtckjN+ykk
         aepdI7L0Ix3xN8/jz09kzbcA+8Vs1WtB1pvY7xki2r1pWEIyD5KLM1QM1Ik81pEj12CR
         3YAwbrRN6MY51QmGsWhK3COTj3IXF9XLUBieWsT0uEFeuk0URtM54rSK+n3YZ9OuUeoZ
         EElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RifuGp/n22JR2aG1exKhl9pR5LNp3geoKm06w4+Wb4g=;
        b=cYLVdYW8EMTNXZ/WGZLZnm3WRTLhUZIiVMOX+iP5r0wQyGG9EGWym+d7ogwcCc2rpj
         QB8J4OKA4sjZRPKmlq4/VopW28g9kFKQf2Aq5YPFcd55DZzZzkbVi2wd0JXe/6A4MUH5
         16nLhikSHJKONcrHLTWHr/VNAnLnVtuxbcsRioXiUVM6nytgkD3C3zuUf1pUOvx8Wc7o
         1+XS3zcwz/Kf9RtYugxxdgkpA8BCMqtB+rPQx855ll3xp0DXiJkbKDuBDpv+robnedHh
         SYVtzyuq0gDSxb4SOeJlGy2tfCv+LRqbTM1/ORx12vyhDShtU4TLPQcNB/gZu33hAH9H
         NoSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531B3Aa5NwGLtBeHVRH08htTHSG5ByCc/DVAATB8bODSnZA45UQ0
	B4GWMW4YyJSKTEFcfy5jckM=
X-Google-Smtp-Source: ABdhPJwPVJ3yJxZYYlLKIl1J8REhnoIroMFWOJNoHjKIOkC76pzwW96hVPkHa2oFW8U4Wo78e+toDA==
X-Received: by 2002:ab0:7513:: with SMTP id m19mr4786668uap.111.1629243443871;
        Tue, 17 Aug 2021 16:37:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c89a:: with SMTP id v26ls56663vsk.0.gmail; Tue, 17 Aug
 2021 16:37:23 -0700 (PDT)
X-Received: by 2002:a67:fd5b:: with SMTP id g27mr5434295vsr.13.1629243443355;
        Tue, 17 Aug 2021 16:37:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629243443; cv=none;
        d=google.com; s=arc-20160816;
        b=fObRUsX2jzTjuFgG0SgpeNVeA39jJoo6OVj48zPT2Sq+XyUc4rmwvARaL70LpwWCcq
         O9efB/W7G8ufGqm4JMqopLiJw1c/AjMzDaZLZrcmRXFqnDQnogeHOPGcHLknDXYJPdVh
         aYx4/WxtI5aQwy6thZgi8DjTOIrcVG2ViSz1TJro0YNOWHlzk9Tx1lRCCjDMzbuOjUig
         guxTcEZRtwK3uPL7XV/iagv4HgMKJPeEbOsu/1JVTuIMJ82eZyV+3QVR+m5h4BqFYacr
         52bul83033Lx8y+A06FB98W49JNEb63rxEjpi+O3AR9P7+uAtktLLZnjYOe50+mnPHQf
         /pRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=AzVDzK8a1EEVePdeojHw8a1gJ0hcdK6QJHkvzwsDxKQ=;
        b=yFjIlnFqdYfDeajpYJCTucooaAcPkTzXnBqWc/H4Le3KtwsSXbwljGzuEz5npg2CCr
         RlZ/pZ/nCERHIBeSHcOzaGD/KL+K0hvvDy8lSXGdeAECNXGBfGqVzAF/d9GFmCCOrICt
         ty1bTYd1p9LZRf06D4aAr2UXPKJVoFCTSIN7WdUYhX3v0OtV0d802qkKrx12IOcfbhgn
         Bvyi4DanPrPUU88D+4YkdI7YlAve+WuHibTnj3C16amhZaB+nJ79OBoND75L5ustfMtl
         zKuAPXNGVRIL8C1w5K5GoEyO227R3XIESZ1GyDY4xWURXGSalgOUkBwubvchY4VVXXOJ
         K7Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=cFdaytld;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.140 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway21.websitewelcome.com (gateway21.websitewelcome.com. [192.185.45.140])
        by gmr-mx.google.com with ESMTPS id q21si289706vso.0.2021.08.17.16.37.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 16:37:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.140 as permitted sender) client-ip=192.185.45.140;
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
	by gateway21.websitewelcome.com (Postfix) with ESMTP id 9D4FB400DC984
	for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 18:37:22 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id G8e2mJM8VLjoRG8e2mJ08w; Tue, 17 Aug 2021 18:37:22 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:44668 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1mG8e2-001l7W-2S; Tue, 17 Aug 2021 18:37:22 -0500
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>,
 Philip Li <philip.li@intel.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-hardening@vger.kernel.org
References: <20210817005624.1455428-1-nathan@kernel.org>
 <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
 <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
 <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
 <71d76c41-7f9b-6d60-ba4f-0cd84596b457@embeddedor.com>
 <202108171602.159EB2C7EA@keescook>
 <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <1f05cd38-c576-0ded-81b6-fe0b49a5059e@embeddedor.com>
Date: Tue, 17 Aug 2021 18:40:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1mG8e2-001l7W-2S
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:44668
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 10
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=cFdaytld;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.45.140 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 8/17/21 18:23, Nathan Chancellor wrote:
>>>> # Warn about unmarked fall-throughs in switch statement.
>>>> # Clang prior to 14.0.0 warned on unreachable fallthroughs with
>>>> # -Wimplicit-fallthrough, which is unacceptable due to IS_ENABLED().
>>>> # https://bugs.llvm.org/show_bug.cgi?id=51094
>>>> ifeq ($(firstword $(sort $(CONFIG_CLANG_VERSION) 140000)),140000)
>>>> KBUILD_CFLAGS += -Wimplicit-fallthrough
>>>> endif
> 
> Very clever and nifty trick! I have verified that it works for clang 13 and 14 along with a theoretical clang 15. Gustavo, feel free to stick a
> 
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Tested-by: Nathan Chancellor <nathan@kernel.org>
> 
> if you so desire.

Yep; I just tested it locally with clang 13 and 14, too.

Thanks
--
Gustavo


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1f05cd38-c576-0ded-81b6-fe0b49a5059e%40embeddedor.com.
