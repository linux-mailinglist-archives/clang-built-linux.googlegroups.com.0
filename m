Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB7UCRDWQKGQEPKTYUIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C701D5112
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 18:38:23 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id k79sf1439710ybf.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 09:38:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570898302; cv=pass;
        d=google.com; s=arc-20160816;
        b=qId+vHfDmX6G1RrC3xk38To6v2dY3fi3enNgsFWf74gEBKgX+bsFnSlVWNxzFA2AMK
         Wz17gS1gpBxgTyjlnBRWM7IfXwd4kuaQbA4mPd3aZt6yKL5VnEO2NLMBDfFK1thpr6bL
         nVlWeFQc0vMP0agYs7fzfhAl6WTewazJKPaiyD7rP0TZoef0kUnMSAMRAYqqh64Rb8J1
         BeVTPebxJmKc217crgjheeglmmSVnrI46Q6K/03RZ43/B5xnrvKDA61TwKEcv03Hdn94
         ldXZkHS5JJ0E2kurosXSZqI0JinT2uRFWe565zuFLkmVN234J0UZGjGoNCoBp+ZYVqXA
         df3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bmXZ4n4SUCQBQWYhHAqZB/9UH8QcIjnwsIH2gET9PXY=;
        b=apG251eavHMInFKcrxNV4VTUQiFRezNtpaujyMSApV5n8VBwEli69CAKTwoQwnMkjf
         jeatmMkWFEAgq2KprAe2gBRpJQNu0AQY4tzLaLue6MGUL5yRol+XaVYkaT96J5u5cbYn
         0eDoI/EsevOZ2b3YN4pTQRfIFGLR5wmXniebFaWa2ZseliIOpctsg5iUG6zqsc8Wn8dj
         P9hIJrdsYdSDLpP5gIsLw2+YUdSUq/e4elK/2p+woJQugR/nI0HR6SZox3e4bCpt18Ve
         CRhmGgqVdkGffE7MRp2S19fJefey0ckOv4pWe8baa0NrHoHctvaRGPH4JwwfYKxP5/YS
         bUbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XBNFCrii;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bmXZ4n4SUCQBQWYhHAqZB/9UH8QcIjnwsIH2gET9PXY=;
        b=g9KwR9MmtQE6nBlgniznnSYw8EJrAweW7xua8ZqIfftQtS/FpMlW4t/KM0TKgPlH9L
         loBKkiOsg6zKhtFXXaZYgae8NEU3tKZLekox7AB0YrvWPZXDfvx7BMS0GdptP8wD1X6x
         lLPAmD5CFRtkx0em9M8cM15HxAcIIVwTU/3MhG6WtGxLidEj8a8T047GcBaBD4bX9wBB
         6x3oaLU4ujHZNU9VkNVYyHsTvBD3k1RfABMxgUBijCl8z5gkZhFdNLCWvHS3jxajXlxY
         cohlgZ2MNxBpl8IyfpV9wZ7j5AJDX4K5tUbzGT0b7MDvdO9MGoaEsRt+OkwGdq1oalG8
         RI+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bmXZ4n4SUCQBQWYhHAqZB/9UH8QcIjnwsIH2gET9PXY=;
        b=djIFCwSWbZL5+VAvrY+wlktwecE7W8kbJ4VaEKAGn/8eWIxRyZTHmpq23l4rt/uaPv
         jCh7O1xEbE2swwTBNELtN3tml5AL1Cd8fPXd7D8hBtGiNWp/IR+NrwLxp266LbE7Udat
         Zp1fjOnovhnB0GfYTFVUOya6/rn8Wxi2Ossx72buWCHIl4/wbeblSDqMwQL3zGA102Ur
         5UAAaOn9A1TipnLB1Ixgtn6oV1casH5PJ+gYmSMFm0K9S6GJEjbMIFzuglanEt9wEdvy
         z/7iH2oYcc457mKyrIg13fhTZznRuzomvx79sZSXuTjTSoMswdZQc9nnoGJu1Pq2AzVG
         inSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bmXZ4n4SUCQBQWYhHAqZB/9UH8QcIjnwsIH2gET9PXY=;
        b=MYaGWfyqBwfUOvZkhnmjZrG0ge1viyEDltbzVltIyucWeP5pxaLpJHBk5iJWkbOy7E
         ZFA5WXBbGos1tUTcWqPIWMngfTcBhPalohb5YHTEV22uSPdPluxgG4Zb/NPV5bnzaYnd
         OFU28HM+AcBSey58eWviSSWvUsd3fnU2a+qsBwHznNrDpVxWJ3B8QCGmqi/E8wmgvrGc
         YKpAjfvNhheyYvHPZms2YGxRBZ+EHtDb+H1VnkZG9U6s/zRWFzmKDmn+4kfRAXCD+gnf
         KfIvN2qIujatnILsYLW3BT2yARwkgSR7u0/db5E1kTYFwmw1IWjEMvoSxLfUiwZifuyI
         UZAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV+TWPbJBSuPlMuQYXkkD7xbje00xIWbZCXwA7NYy5dtkK5vq1T
	/uUqmsRpR/XkLRSnMtobqlo=
X-Google-Smtp-Source: APXvYqy4+IMaVccXQinvT23oQW6esrl661RfY5nLvFj+iIyoqtcN/T4sTZJjQrzIYpON2A/NUUqaGg==
X-Received: by 2002:a81:8184:: with SMTP id r126mr6648728ywf.135.1570898302250;
        Sat, 12 Oct 2019 09:38:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c04f:: with SMTP id c76ls1213647ybf.10.gmail; Sat, 12
 Oct 2019 09:38:21 -0700 (PDT)
X-Received: by 2002:a25:e78f:: with SMTP id e137mr14481242ybh.500.1570898301912;
        Sat, 12 Oct 2019 09:38:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570898301; cv=none;
        d=google.com; s=arc-20160816;
        b=L0HKtxIIApiRxtTNjSQB4262ZC0mZT2cTwTxALAufuFCkW80ssFfayxQhiihN6Vn3L
         qq4QbCtXUcEpg8Lijev0NfShYP4AhIF7duvF9AD8YZ0TTB9voS6OBTT+D1hrQ1PEDJYH
         Kmnks67L0x3J2WRzIy1JWB67Ovyr/iCcgLtGC/iCD1CjfNTflbGRmJXBehUiSOEYz9Mh
         V/teLLxxr//CSCG6zQVeIFeGzlq+MGmBA76rp2WSz1QMXBc6Uam4+E0pHSObuRFqUV3N
         UfVmrKJVgBpiY7Pgj/1OqCboJ87LNpc+cbWZycgawg8ug7rOBpKlmRvx2cN+rfEY93eP
         YvYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Asvf+7RAspz/dNRNRh3zzivlzI76nj7xUdvXm0KQbhk=;
        b=Jtktpj/jwec+qPuyRIj2Au5gfyZuPtCHldUP2wWZl7B1HskUK3OJITMS54M6flgT63
         Z4b0E7c+/fQQIk8s2U38tPtpmgzR/a8QUK7031EdUSh5ThqrWPLpWGrKLSsNkoqDx/3G
         ewSorGKCPZf0B76CqxsvpjXRCE1BmLjSFRk0GZY3jFi8glfyYi3gbjwwDqlr3MxiOV/J
         cd5ZxeIQItshE6atioejTTvHjJ5Weier5hL8w+exuOphpuowbgyO74FThb/lssfjdo67
         6TVMo5xyLyfuj58mI5O0Cmo9nS8LS7WHxr2JffuA4LRTifxk/974KBJUVlzfSOLNWYim
         E4DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XBNFCrii;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id x188si487262ywg.0.2019.10.12.09.38.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 09:38:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id y189so11852141qkc.3
        for <clang-built-linux@googlegroups.com>; Sat, 12 Oct 2019 09:38:21 -0700 (PDT)
X-Received: by 2002:a37:6d04:: with SMTP id i4mr22438253qkc.36.1570898301394;
 Sat, 12 Oct 2019 09:38:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org> <20191011002808.28206-13-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20191011002808.28206-13-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Sat, 12 Oct 2019 09:38:10 -0700
Message-ID: <CAEf4BzZCLoYxvkUsPgZMuKHUSJhmTxGHGsyybBJNoGeoUVCUww@mail.gmail.com>
Subject: Re: [PATCH v5 bpf-next 12/15] libbpf: add C/LDFLAGS to libbpf.so and
 test_libpf targets
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	ilias.apalodimas@linaro.org, sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XBNFCrii;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Oct 10, 2019 at 5:29 PM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> In case of C/LDFLAGS there is no way to pass them correctly to build
> command, for instance when --sysroot is used or external libraries
> are used, like -lelf, wich can be absent in toolchain. This can be
> used for samples/bpf cross-compiling allowing to get elf lib from
> sysroot.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZCLoYxvkUsPgZMuKHUSJhmTxGHGsyybBJNoGeoUVCUww%40mail.gmail.com.
