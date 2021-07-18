Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBQ7W2GDQMGQEMTPPLJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8543CCA52
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 21:04:36 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id v10-20020a2e480a0000b02901963cfa7ad6sf2494103lja.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 12:04:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626635075; cv=pass;
        d=google.com; s=arc-20160816;
        b=qA/fd/k7lKgXM96IV7MaDFCuj6IgRsEO4+BJRO+J1Mf+YPZVRFoBTuTCzM5hzCDtyv
         6HuBLKQmGvHx0ncfnIIYvddz/Oa8mTEaPGDUyVk7yyaH+Ac/z4JpttYwoHLrOQG9l8ro
         bQSwDSbLMWrmYukMpKvSAn1hIht9gTTPQo4au+HqINgntuYvi7wp3JIf6rkCNcuReaQL
         HUUsQQTyyRqeUbMcRN3c6+Mg8wsD9OMatbPIJrrexnvZG8YcdVJC55Hytx7HiI4mkOAs
         WVfFUVri3DVXeWAe/mzFz88mFrk9Xzt/g6Oz7uoWvj9A/ilHRFi5GnsDi89ookKL9+N7
         Z3nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=cgKPlTy3/QH9K1ZVNb5dRghokkh+tLu5ankjOtVkHp8=;
        b=TNGnNfGKkQoM1sAkqUZ5q3S04hmfo4AVaybsj+6gfCGSvPjr4GOhM3PQniwThvkBYO
         1TFgZhXHwt6sTXziDfqSseo8ZyqiCM6WM1ZTg8tccHXxw4ata2Pusf+d2rJDdokSW8RC
         83mq5ZTPBWA6I8ApHa0dPC8LIVWqTBiSBu/Zxaqd2HMDhm1T2nadGTcOFq+81HcXtLEE
         o797i+i48axynmYCO8uGqKaHNuebY/uST50VUcSOVZ2wa5pnnTNxPhpA4wcgw9gSHLiL
         k9VzieQADSlMMofXSTJ0Qjfn4N9601W8plVlxLB6cm3CtDqi8+xXpV1a6BjpkTtlTHvV
         h6sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cgKPlTy3/QH9K1ZVNb5dRghokkh+tLu5ankjOtVkHp8=;
        b=YXpXPQmgd7MhQPgJNRBaLw9sUw4+sLv0Ba5VZuSs+Pu2VlsLBq04JQB4CfKbueCUFD
         ZFkkorlJK5gOf+hEytxi2fJTNO+SImRkwA80KzOMu3Oe0gQsxA5c6kg4kYPXTjXw3vSr
         VpqDl7Y2/uTRDpGf82O98pNjbP4SN7Fq+quyffCOsEh9qOUVSS4dBww6g4F9sayreGct
         knxmg7UoWZGcqFMXqzpuNwU1DcQ7b8YaQIPlw9R9LN061VNQ7nw6fERqoj9SMj8jyh0x
         RvMRqGq13WnkQwHaaPq3kCCWx6P0Qde/Ho6hIC1Y6X6H0aRfJdVHbIFbW6q477clt4Zh
         IclQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cgKPlTy3/QH9K1ZVNb5dRghokkh+tLu5ankjOtVkHp8=;
        b=FPUW9F7iOV8SlegO9ulHIBNkwQe3Hm7w9IpORpw3ZZNg2SnH9pyJhw6yUGU4AdWl9F
         7R7vpORWJSPUX0AcleNwKYE+0hTu/vCAWCtHU7d1lN/DrFIYbbHUBa4hUoBUsJVNtnMv
         AxXoANm+89TzIdRaxsh+q8Gkw57aq6BJ5fGjfZu7oGoMyrVV0hJHWhuHNcgT8y0V5tKS
         kc49MrWek67NhwGl1lUGT4z1yeauVISsjPWai3Z7JV/k3/LqkpVhI0dbpd1UHNkdUvdA
         zRbo29rMqSTqu81Glf+rpvSrvnm6R+Y7383s3wMj15RVOVGfkKPKo15CagFTuOCwUsJe
         yB9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PWWPxPq4uDK56cRbix7LDZhe3aIuItnq46hwTujCnhv/yoNDD
	L3keiasWUdxdtNILanWI8qM=
X-Google-Smtp-Source: ABdhPJzl+voShE3+suxbc90Zh3HCYzZKmcRIPVrU6mOFOt1b3cHHJHbldElw1iUPCB04UrNs7kC94g==
X-Received: by 2002:ac2:5e3c:: with SMTP id o28mr16621867lfg.592.1626635075477;
        Sun, 18 Jul 2021 12:04:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls3361163ljm.0.gmail; Sun, 18
 Jul 2021 12:04:34 -0700 (PDT)
X-Received: by 2002:a2e:9114:: with SMTP id m20mr13334676ljg.120.1626635074420;
        Sun, 18 Jul 2021 12:04:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626635074; cv=none;
        d=google.com; s=arc-20160816;
        b=V3she7/DkEpGQ+Ia7/sQ83sVpKiHv+WQ39nx2bka1fSEjYj1fbesmlnSM/v1Zu6Z47
         rjcz6OY++wQLhFC27kQoNNB3Qbtzqffk2tKu01748tSKaPZCOpqYNd2fyMru+Dt0NDHY
         QAK/Ik94Bel9oBg+MF+cHsmTe7+4Re0dkHSHNjVRZNuCm12s6zgo9sAY6mmcZd/tccIw
         iu/k+sAxbzfZoPmmgWGkq9VBaMQ6crcuTdE9cPb7oCEOh1ATSUzmY7PSw2EUDaJzxcAZ
         d+OJ0qdsv54toqynHlONARyOCr9+0AcD2C2XqIRHgpBw5+ePQLWSxQXeU4A1YG6Mi5xb
         VWfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=QaVW9nnPVy4ttYqBKj2zKY4QGCBcva70uPdynT2YULE=;
        b=WJRjaA1TapuEnZt+aEXQdwiZs1qyLSlNbftPXZH11sZfdjqaItbVvolSBToQnggDDO
         kK2R8WO8PJP4CyiCW8Pn1EBdYCkxUcc+jyz4Auz301i6kyYniSdA5TJWe0qlxIHJfBfZ
         Est7ApqhoLWUJXONG1a1NLSDkkaNDtCEkEs05E5FMvt2OuYi+KCfbeYQeQd1u6JywVDy
         20RrjKKx5IE9HOqH+RKL0AB69VtZ1kBuDR04itZsY04ZR00bhzGImjb9XhXHVh1+cZgR
         jWhX9PFBoFFYrz/8Q3qErGR2NCVtW6OUlnhcd/6HBzCD/c182VW1aUh1UF9VMYMHtC1n
         wooA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id w10si647373ljw.8.2021.07.18.12.04.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 12:04:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <daniel@iogearbox.net>)
	id 1m5C5J-000GiH-Bp; Sun, 18 Jul 2021 21:04:17 +0200
Received: from [185.105.41.246] (helo=linux.fritz.box)
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1m5C5I-000OnZ-UA; Sun, 18 Jul 2021 21:04:16 +0200
Subject: Re: [PATCH] libbpf: Remove from kernel tree.
To: Michal Suchanek <msuchanek@suse.de>, bpf@vger.kernel.org
Cc: Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn@kernel.org>, Magnus Karlsson <magnus.karlsson@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-riscv@lists.infradead.org,
 clang-built-linux@googlegroups.com
References: <20210718065039.15627-1-msuchanek@suse.de>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <c621c6c6-ad2d-5ce0-3f8c-014daf7cad64@iogearbox.net>
Date: Sun, 18 Jul 2021 21:04:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20210718065039.15627-1-msuchanek@suse.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.2/26236/Sun Jul 18 10:19:21 2021)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 7/18/21 8:50 AM, Michal Suchanek wrote:
> libbpf shipped by the kernel is outdated and has problems. Remove it.
> 
> Current version of libbpf is available at
> 
> https://github.com/libbpf/libbpf
> 
> Link: https://lore.kernel.org/bpf/b07015ebd7bbadb06a95a5105d9f6b4ed5817b2f.camel@debian.org/
> Signed-off-by: Michal Suchanek <msuchanek@suse.de>

NAK, I'm not applying any of this. If there are issues, then fix them. If
you would have checked tools/lib/bpf/ git history, you would have found
that libbpf is under active development in the upstream kernel tree and
you could have spared yourself this patch.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c621c6c6-ad2d-5ce0-3f8c-014daf7cad64%40iogearbox.net.
