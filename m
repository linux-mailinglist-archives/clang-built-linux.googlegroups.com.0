Return-Path: <clang-built-linux+bncBDSYRVG3YUKBBGESQKEAMGQENXAM26Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B543D82EC
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 00:30:49 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id x9-20020a92b0090000b0290214927ba4d8sf409927ilh.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 15:30:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627425049; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZpUrfyITrw7s78pW2PGTMiOSl62XQiGPndBJF5keVagAUlPueUarGA4NOfLKr4dP6v
         KNU1BV6dwRvlPMw+1pCadE3ol4RKK032K49rkZclrkm7mPoo2yTxfbLeDFuvo+9FZ9fO
         NCvis10nXTDw3gYL8uZbdRm18CvRhhpeL0Hx+/txVg/MUxg+B1tvjEl/k9Z7LWkUONZm
         paN2uHjylWjpAxnA6TVQOroBlVCPG2A92WjM7n6MrGzXMyQyUcNqVgvKqJ2UCnb5Uehd
         nud/I8hogRc0SExISdzBAHJeXHIVukWSU3ZlRzhmuM9w+QayKDAlOr1cDKs0BvE6jces
         tRag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=K3I+k9wShJuLPiXvs8rZf1Y+E4qWDGTaYzx6yN/drXY=;
        b=GCzG2tbBoJgklVByULnf5q9dgr1XePCE1UWFLo03D3aYAgQ5Y1gafO9SZzTLQ70owZ
         KpD83LTFYzJFWDoSU4F4+fzdz+Z7KhYp8jNLu4cGgFreh00DfCsL1ep0kpUsTG4W4QbN
         4w64WKaRb/mjY9S2V31b0ZQKj9LIP/jQ7t1lrs3vQJk5txHemaP7vmwP+IByMMe3snM6
         at6OajgbEVq8WsO1RiHrn03Tt3H61YPiexhvCPdr9pdUPO8fB2z/QBiHVEYcwXaFJ18I
         LOabjvdgojquttmtkWvopiqq3PF7tP6u6LwO+92QWsCqledOs5YQwn/pECLAwtE3f01+
         xhyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OnZ0m3U6;
       spf=pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=larry.finger@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K3I+k9wShJuLPiXvs8rZf1Y+E4qWDGTaYzx6yN/drXY=;
        b=hY3TMOJr1LhOq+UAgjyLBVnp/JehlOw6r5jpL213tfBxLMFEo6HMvJ5f9GDRdsrqsN
         IEXCimkUtrWtRfd9gc72Ahg6+BR1T7hW57bwIXvjS0YDEQAwe+OP+ohOebXAgXig78qL
         SlncG2SMyGiDGbKlOcopQ67ZsNNqWhJpsfw9crS7ut8XPWeOKL4IoAik/OoAWgbdRbgH
         GCiNjDanmkRdu8F98zmnkZDwgCxT5W7YLb/8fcckVLjrYaANBmPsZ7OkXyzfCHwBht/a
         ckdXY/j/GWTNv8MFoL83/mZYTyS+7LwwNjR5zYpn6RGjTWViR2LYD8Lu7dn2qkypt2Zq
         hD+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K3I+k9wShJuLPiXvs8rZf1Y+E4qWDGTaYzx6yN/drXY=;
        b=JukJrbUr/c0ZRPjBfR+tOB9fAyGHNKR1Hn5khZTHYPuXfTP1LyNuTEfwAZX52RZlWQ
         OyR7DHCfmhAzrlWVLx6icMjJQ+/DNUzzkvKJJcmYpwsYvgXpE94R713z4ntFu9LQxG6A
         5/ip5jYYd/Vk3gRcjUVIu7yTgrAVsYU9nPMB2cD9jnO7QynHTKu846olruEE94j338DX
         it/+zpM1cVuMJauDXyNh3FGXSip0fCMU/OVUMYaz1FQRjiDKDtoujcjyqWZLrHAf7rCz
         JXCGtXpwI3AyKhOazqlAx2jz7TikG+USr6efiQeXMzElGuRiRL4mHEYvEkr7YyloGPQY
         P5Hg==
X-Gm-Message-State: AOAM530ElSV1e8Ynziz0VBUGPgkfFXG325GMEpEXH3JRAnveQLGlap1S
	/SJCyH529f9Z+4Afq7bUcn4=
X-Google-Smtp-Source: ABdhPJxy+xswcfofyc8iKlLVvLm5zyq4eDKu5Mx3I94WpPA15nhKrwPPlCo6ACqOdCLwG5DZqSIC6g==
X-Received: by 2002:a05:6e02:20eb:: with SMTP id q11mr18596077ilv.272.1627425048940;
        Tue, 27 Jul 2021 15:30:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d19:: with SMTP id i25ls39408ila.10.gmail; Tue, 27
 Jul 2021 15:30:48 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a05:: with SMTP id s5mr1430174ild.232.1627425048497;
        Tue, 27 Jul 2021 15:30:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627425048; cv=none;
        d=google.com; s=arc-20160816;
        b=v7UadE3hk+t+PU9JWtOfCTYxLnfIy9uuXN/b5YWWFsq72vNceoxDF+xgdH6FUXsSs6
         xKR1lw4QY30ZXfnv7v8298NPdpr99HAUW6hQ7O7iNRi7bYX6RDWgmJmvPXZHQ6y64dCH
         4bTKbCbdcZAkc0DDCPkuD1kPQAi41JKaoUmr4ManJfP7k+x1DQglReiteIgULG7ksCkd
         olmhwWTpHm5Q8b52ssFC2Nw2aRNz58Eyv79XVYV62uYWK85V/j1sG9VnmO/KzJimHXpJ
         XLVIFs7cwYkr9AMIZPxkf04GC5/fSUOsluSGXEgfDxFpw8bCa5Rcprmf3FHzupL5k7U0
         AI8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=TM+0hfl782kZ94bU2+mpLOzzj7zbvQhOg+LQO69XhJk=;
        b=OzyULST7KdCsPY9RuRVIRW3pKt9llkOVf1R6cuQPSfFbnFQjcNlSIVD611wICHQ3o8
         5SB2owlsX9p/LBfxFsKq0ovSyYlpthtZX+RXgsBeCl8riY9dZ+KcrfNsLPb2FzLlTcm4
         SUDA2GJ5G6WwxUFpceTSzf19UFKZ4tnT8wXDwjIJmeWQ5flhTr4LDkjEPWzstP+T5H36
         6HxaDQecUTIzF2MiGCILC+IYkXZFmwUyxFkx9COSk64BZNaV/a9WIFKmT5bUj6yAPOkb
         EGSHUd3sjLPW4hWmCxB/zi4/xKHJsLOyeJvDKwtDmvbyFqTo8vL+LiElsNuDrhLnAYmv
         wG7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OnZ0m3U6;
       spf=pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=larry.finger@gmail.com
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com. [2607:f8b0:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id k3si350412ioq.4.2021.07.27.15.30.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 15:30:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::22b as permitted sender) client-ip=2607:f8b0:4864:20::22b;
Received: by mail-oi1-x22b.google.com with SMTP id t14so1314790oiw.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 15:30:48 -0700 (PDT)
X-Received: by 2002:aca:d505:: with SMTP id m5mr4174267oig.5.1627425047828;
        Tue, 27 Jul 2021 15:30:47 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-246-181.kc.res.rr.com. [24.31.246.181])
        by smtp.gmail.com with ESMTPSA id c16sm783982otd.18.2021.07.27.15.30.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 15:30:46 -0700 (PDT)
Sender: Larry Finger <larry.finger@gmail.com>
Subject: Re: [PATCH 07/64] staging: rtl8192e: Use struct_group() for memcpy()
 region
To: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-8-keescook@chromium.org>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <fa3a9a2f-b611-7fe4-9359-88fa51239765@lwfinger.net>
Date: Tue, 27 Jul 2021 17:30:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210727205855.411487-8-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: larry.finger@lwfinger.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OnZ0m3U6;       spf=pass
 (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::22b
 as permitted sender) smtp.mailfrom=larry.finger@gmail.com
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

On 7/27/21 3:57 PM, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Use struct_group() around members addr1, addr2, and addr3 in struct
> rtllib_hdr_4addr, and members qui, qui_type, qui_subtype, version,
> and ac_info in struct rtllib_qos_information_element, so they can be
> referenced together. This will allow memcpy() and sizeof() to more easily
> reason about sizes, improve readability, and avoid future warnings about
> writing beyond the end of addr1 and qui.
> 
> "pahole" shows no size nor member offset changes to struct
> rtllib_hdr_4addr nor struct rtllib_qos_information_element. "objdump -d"
> shows no meaningful object code changes (i.e. only source line number
> induced differences and optimizations).
> 
> Signed-off-by: Kees Cook<keescook@chromium.org>

Tested-by: Larry Finger <Larry.Finger@lwfinger.net>
Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Looks good.

Larry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fa3a9a2f-b611-7fe4-9359-88fa51239765%40lwfinger.net.
