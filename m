Return-Path: <clang-built-linux+bncBDNIR65Z3ENRBI464SFQMGQECAXBMDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id D222243C542
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Oct 2021 10:34:43 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id j22-20020a05651231d600b003ffacdb8311sf1075119lfe.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Oct 2021 01:34:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635323683; cv=pass;
        d=google.com; s=arc-20160816;
        b=k5oilUelESHqJKdF1SHFCzG8Qj94M75dwaX5jvuTf1Z44L5OTs1xZMsaAwlXI3RpS4
         4u1ORfJ6ND+jWjofIqcqTI+/t7fiw0qjIdoqD0Yldsx/2b030JIB35v5EXQHUO3DSw6Q
         LUb3N4K9zI/z7qACvE3PuoN7+thcUAkFe9xIupOPIcne43iwv9WhbfokVwldLFkfCaq/
         1UMbCbMnpCDcFAlsguGdlK11rm7YNgQdufd1N+LY4el0FjIegR4EST9nwGA/LNJ6ASlP
         jYOOevhHbVZF+rh5boW/anU4ycuaYsnAHrJmT9Dzx4oiYQStbcnRVS2p8BZqukUjENyj
         ajAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9sSF/bVllpGGUafJslFcWJMHrCJWenGR8QklU5bfYgQ=;
        b=YfSDthqPquOazh8gMZwO0gGFWDwkkCxgRNs1KbOW5NDcKKHZCz4YJfDwVzZoIKk85E
         4D5ufEKuFr+2lkCXFw9xrMuIKFUtIrJZABGMAPVA8PdKGSF9ShhBxeUQ1GQ9gIZjoDyC
         YKVd1pb8DIWwBzVGmbrpFbKiOw7S+GrGARb7UnMPmEDyMqJsvRzR6wC06CX1LWv+xq2i
         pPK6Lz1Nm523fKy1kIfM5V79UTa+FPgzqSWRCL1yWkD8d1xD8N/HP9+LOaptP3uiijWh
         VHXasY7o7JAvJl/Qwj92lQ/kl10pXchnM78dZYJOH7/3G9dVm8b0DBx+YBsaVncl9X2l
         tG9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloudflare.com header.s=google header.b=k3lsPonJ;
       spf=pass (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sSF/bVllpGGUafJslFcWJMHrCJWenGR8QklU5bfYgQ=;
        b=XSGijrvok5h/cYheMi+lk3VpqpqS8L/P7O2723H2e2MtRZcJcMMCKaCwZ4NQjB4cGu
         HBdJ6HRSWibq+dwvOnxPC8tO/CT7sZ1rnv2dAoAfOvAJh3Qh9WicW9331KLg7+fL61jF
         qENj02Y9jjcULR+SZAWXODUZ0By0i8gUAb7XgS3N2uEGJ0MPL+00ydCpnhuy+nFjmoSX
         jAN4PeO57w/KC9CaDaONzP7+5hOHlxYEpavZkko0Yg8pGqpb3nJ2s08rMykjzWkXt1tU
         7V99jxpbVCGBM7/IdHNDFhhZUd1wVgQZHSUm4cb8EkO5q9mePeOKOMf+Z9zgnIc+EEA4
         +PUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sSF/bVllpGGUafJslFcWJMHrCJWenGR8QklU5bfYgQ=;
        b=TR0KGscuVejis1CQemTCtvMbg182/KR0S86fVbAJlgto0pAG/HcOJzG1uzD/2k1nlF
         9L03K/oMcJ+FwTN5zLWKEsmm/MkC3jlwOfzWp2zvvfQZKQ6WQbezb7W2njnRIg7MiBUL
         imTZpMKpinK6haVrASNPwCMg8u1xhYaWaRHAmZEcRnoglH01GJh09DI1l1GPqmiyKmeg
         hW8NJzjR6tvzDxNotlsfNpA9pRkHteSKTZS7F1rjz1IOOSvvBlnQUcWG1oJo5Rz0rXED
         2DWdk0xGPYhAQCKjG36ZioVnAe1dzDK9pC4av6ATH38qte7wFGovlu+Zv6L+ICEUx83w
         iyIg==
X-Gm-Message-State: AOAM531XNSYwWr44KA1/2LqD1qNxLNc8ePAM38xwNWid6fu5ByARJOuP
	Z1N6Buiw4TlpijTDt8SyRm4=
X-Google-Smtp-Source: ABdhPJwk8/UMQgzRwbq35QnYlB0SC19R3ZXC4ysQTYcF2YY0SnhQcqBwD8ecRIIJLaqk5Sr6pmc9Aw==
X-Received: by 2002:a2e:b794:: with SMTP id n20mr3809768ljo.313.1635323683336;
        Wed, 27 Oct 2021 01:34:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5c87:: with SMTP id q129ls3991825ljb.3.gmail; Wed, 27
 Oct 2021 01:34:42 -0700 (PDT)
X-Received: by 2002:a05:651c:544:: with SMTP id q4mr32465080ljp.53.1635323682191;
        Wed, 27 Oct 2021 01:34:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635323682; cv=none;
        d=google.com; s=arc-20160816;
        b=XopCSwwsV9hTNCGE1Bskt1kVV1cbJpge2I37hV5R2fqB35pLb9JiFU6BcYF2JPpeaz
         kMrkm/WYbjOiL3RfOJdzjKxDysi/8/ujgP7MoCwr6htP++HZhNlhgNVDqOkcW+rZdxtK
         YiG12kSM22Lxhn1CkAR3MbVwV3rdyRR2fpD37YraLjNxktfDg1iPBWVxKpBQ7BW71oPG
         QYG3MhTGGYPOjM23j7AjaeuUZy6H7rAwTDl6AsfUSBVNVkHj+FqNHahUKQWBYqfUwTku
         yiijv/6m8ezmongXOWdNPjvjCBeodDF/hegWupQku7Gi+M7Wg6VJVfs7cSvdOx6kUVCV
         Wr6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KIDFtAiKeA+WxeyP7TSnB2e6k+2/VG+8HR9nAV/81kI=;
        b=kRbeonAG9hSky4ouDVKTwffi5NTgRZO2qfKk2o19P0fXv1j05/gT0SFdnWZQbwDwaX
         TedSe9TqVOMMAdFBxeWTssRFT0hyX53XJatz3dI/iKBcHgLLnDrFGdXg9FjYP4OvQkDz
         3vZIEyLuGt2ClULPkZst8I8Z+407EFw6AYwBV6Beq5lp0ALYkqC9IpfQ/BsNTJYD1e3a
         mB+6ERz3GInbjGmRlKyo8az4XTlp2dBFDyiaLKHRosvcWVkYsxoDgxusQcGCktxRUMLL
         dBxne4/BxH3y39WWp6/PWjd+tE9/fx+YvHHrLG36T2PsUAonHgcMfVF7lOkxWwR6BiUJ
         E9mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloudflare.com header.s=google header.b=k3lsPonJ;
       spf=pass (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id h25si267246lfv.0.2021.10.27.01.34.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Oct 2021 01:34:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id l2so3381564lji.6
        for <clang-built-linux@googlegroups.com>; Wed, 27 Oct 2021 01:34:42 -0700 (PDT)
X-Received: by 2002:a05:651c:2328:: with SMTP id bi40mr31550620ljb.121.1635323681920;
 Wed, 27 Oct 2021 01:34:41 -0700 (PDT)
MIME-Version: 1.0
References: <20211019144655.3483197-1-maximmi@nvidia.com> <20211019144655.3483197-10-maximmi@nvidia.com>
 <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
 <87y26nekoc.fsf@toke.dk> <533129a4-7f4e-e7a6-407c-f15b6acbb0e2@nvidia.com>
In-Reply-To: <533129a4-7f4e-e7a6-407c-f15b6acbb0e2@nvidia.com>
From: "'Lorenz Bauer' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 Oct 2021 09:34:31 +0100
Message-ID: <CACAyw9-rKNX=EtQ2JtLkLTyDfj2-HBtZfFB05TLgcJSw3ja7AQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
To: Maxim Mikityanskiy <maximmi@nvidia.com>
Cc: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, 
	David Ahern <dsahern@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Brendan Jackman <jackmanb@google.com>, Florent Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>, 
	Tariq Toukan <tariqt@nvidia.com>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lmb@cloudflare.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloudflare.com header.s=google header.b=k3lsPonJ;       spf=pass
 (google.com: domain of lorenz@cloudflare.com designates 2a00:1450:4864:20::235
 as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
X-Original-From: Lorenz Bauer <lmb@cloudflare.com>
Reply-To: Lorenz Bauer <lmb@cloudflare.com>
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

On Fri, 22 Oct 2021 at 17:56, Maxim Mikityanskiy <maximmi@nvidia.com> wrote:
>
> tcp_time_stamp_raw() uses ktime_get_ns(), while bpf_ktime_get_ns() uses
> ktime_get_mono_fast_ns(). Is it fine to use ktime_get_mono_fast_ns()
> instead of ktime_get_ns()? I'm a bit worried about this note in
> Documentation/core-api/timekeeping.rst:
>
>  > most drivers should never call them,
>  > since the time is allowed to jump under certain conditions.

That depends on what happens when the timestamp is "off". Since you're
sending this value over the network I doubt that the two methods will
show a difference.

Lorenz

-- 
Lorenz Bauer  |  Systems Engineer
6th Floor, County Hall/The Riverside Building, SE1 7PB, UK

www.cloudflare.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACAyw9-rKNX%3DEtQ2JtLkLTyDfj2-HBtZfFB05TLgcJSw3ja7AQ%40mail.gmail.com.
