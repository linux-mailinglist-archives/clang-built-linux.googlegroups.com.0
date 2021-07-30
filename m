Return-Path: <clang-built-linux+bncBDRZHGH43YJRBVWCR2EAMGQEU73XXMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 016883DB3E8
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 08:51:04 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2sf9287777ybi.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 23:51:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627627863; cv=pass;
        d=google.com; s=arc-20160816;
        b=0sy3x509WEs7pms490W+WWHqbZjboW7TjaE/WMmV7BbOBaCP/6n1spTj+38uQ21uby
         NBdwRt0f5fPdHrKPkg7JVE8OKp/Vl6QubqQlLu1RdXgCgdssQZDWRWeDB1wBBXWK9f1+
         O7C0Ca7+YdMWkZdE8xlM1zrLcG35qy0OkHienHqg1NEkETMVdINQK5joSOf5GUVvQgaQ
         2YgA3Zvyow/M/CB5cKdNreF0flE9C04O7e31A+KxLhIQ5K/cN/1PrexKVryIViVsqaIa
         fpcDeuQDYxNyrOtpKRGgXyq7UGFbM82R99BaLcxYLUloTRlL7UMip5wsF2Dci6+y3gRt
         I2BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=aj5KN89OGuY128UTTWT7Vavwef8XA4YRasY5WDmMSCU=;
        b=Q5yBkMj4jOXVkoktlMDuaeZBa0ogfCjNEQnjbI1kK9AMyd8dEQjododsJ6FFpJlbG0
         kAhuPrZEK1FXI4UodKWr8JEU09bVCpjw4HU+ayeVxg08y6K9eDp/pnxsCnXYxivUe8no
         8J7t7PjHPWyTUI5CZF0XxnLODJVFLJnSgXvtKb7HB7X11/HJxnoKf0DNZU0e45npQk91
         jCW7/HIF6ssu7/KeB+9jNyggMDh7BVEP5awldckQwtx6kA+sZlMuX9scaXmgoE39m0U5
         pv3w3VbW3/FXJjD3BCjYZumWvI3WkXA2HBoVsB3Vpf76nvWIDMoGsv/377sKlS9L+R9H
         NmZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aKIp6ToG;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aj5KN89OGuY128UTTWT7Vavwef8XA4YRasY5WDmMSCU=;
        b=XjOA9vMfz7c2090Fn/dc1l/6fPuNMOCwwJ7zHHSAFRMVhj9HyLwvVo5ZLA2QYz6yKp
         vRG7oLdeirfaiZgulyJiVvtjLB1gU2EqZ6Hs5cuYeb6HtUIL/z4EL9Aq1wtFcgWjGYef
         SMe8mi6KHp9fs2KEbHNmn945Vxs+n0fNf5R7zK/td2ATRrdymEITw5uG0SJFCreAb5uz
         DikGwi34eGQNEfyYeVdiuuYSjMJenowIyBCVtz35ipkiIJwunciNBeX9CAXbHApEq3fa
         M8CQ1+qYOhfZv6Q/Be5VMReY3mPFcsGOAjB89WKfjw/y/peL4Wqx/yBVBsPrl4mEihdy
         Imtg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aj5KN89OGuY128UTTWT7Vavwef8XA4YRasY5WDmMSCU=;
        b=Gc3ZGaxPWjmlNAOomoGJXo0oNfLbU8jlLI2hE+i/VRuhzu7L+9f4f2/bb9w0noqosJ
         WLR3hWlskWMz0H2nw9QuK6B4mfVLbbDARmtlSYH1JznV+X6pw5MDlfnOPTClKaQO2Aky
         d/gz0finrdXISBwQxxzQhD7/mZgMB9JjEF5JFH0SNStIi7VuQT694jGY7w0AHqlC5vDX
         COqTqDzT4d0j0mgXy6DstpLsHTQJun/SSJMRec7xcyPNWjYm8iC1+4uZcs9fdXuAS1Ml
         F4s41KM1TqHhI2lWoCA3CyrtafmdD2pIn7SPQq7PcdO0Tg5qtu9RV/+J4HjfMVrUSXiA
         hkKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aj5KN89OGuY128UTTWT7Vavwef8XA4YRasY5WDmMSCU=;
        b=gdchW5l7w0yDxp7vIQccvG/7O94SmkrKATrIoeGO1Eh7CneuycbGBnv3nDNfeJZPdl
         +M61B6cIruM/uuTG4fdPCQGuhqosFJbSSdZ2Ihd+0biFdjrIdaevg1vI6vAV14GfgKGc
         2XTX/IlCD+0vJmb7YIBc4XSIk/GTB2LPxh3yKYnVmx5/prpr7chaWPKYOvUTqIfQFbJU
         3/N4cxbylbm4gW5cvJbPygRYlYGVimum+ZpMiFZIvdWKS/dRYS7ud3JHXc/4MOp96dBH
         fmhhPX+hEJqRTudiIR2sd/BJZ4t2lAUIFWKa+mWHjFtCkAYtc629ph1xFtYPgmrIsANa
         MqLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315KVitibcy76S+jKGt8x537BSIA6xF8qPMsePu/1ZITlP9bGIi
	hPmXg7r52Ds6sQpjq5IPY94=
X-Google-Smtp-Source: ABdhPJysIamcUxjqvFpLM3WruEtXC6VGompqdU3jKNK3/udpIzNmLweYzBS66Y3hefRyOxMoHBKE8w==
X-Received: by 2002:a25:7384:: with SMTP id o126mr1220197ybc.417.1627627863079;
        Thu, 29 Jul 2021 23:51:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d705:: with SMTP id o5ls311283ybg.1.gmail; Thu, 29 Jul
 2021 23:51:02 -0700 (PDT)
X-Received: by 2002:a5b:4c6:: with SMTP id u6mr1364905ybp.31.1627627862543;
        Thu, 29 Jul 2021 23:51:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627627862; cv=none;
        d=google.com; s=arc-20160816;
        b=Di/SV5ntWy0poRWt5UbhJhXGHqpq8EeG6Lxgb19wT+e5vCVZQD04YHJZkNiN9GSAa1
         kpDdi90mdwRmw4C37wbAwu5uinTwJu/DAQcyDBHJYHstR+LlSF7a2eA7vHjCB1+vwiCS
         +2r/v2fnmYgwdY5d+JJkmQvv6cbLwIS0z264gqpKKfU9iOkrTDEbOqbfuqhWI3QGSbp+
         19v/mio0C1uK58IVz0tnU0qWttk7vdulEZYch+EhffO7NvYNk0gxvebSqD+91v38Dqj3
         /A5SR5714gqnBWVoRAFCnZUx4xeF4FHBEKMArUZFQwjSbGfBJ6giw1F8eoF+BR6Gqswa
         sIrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t11HKxEEH4asV/wZXTqt9J2Oni9bsKp96UbDJNXP4DE=;
        b=RNRcF8XRTFBfh+/b40cJu1nT4ZgGE29mBDIVtQ9H9w5rmprH+8XWEKxyRysgcP0+yf
         lHsRKkp+VTxor49/y62y0RcmQ8PZ++vrUR5E2movV+w1EAnrZ98sofGWljKprMpljCcO
         YILe1jhIkQIJdhSIU0fOeQWx/Q1jXOcqWNIATmKamUvpmv8dZKcSFMRRsau0PqrZEM2E
         IRu7BbmRjuPYgOFZL7LTmpzNQqwbUC9bEmcOfxFcKGsfUGxAedq0BPn/mlaaXc7HAum4
         iDjIPlTsfnzMWv6IokeLOPo+9FJh3CkqGZ4NVTx9oU5jeNgwoZhaSpsFsZmMJxPIfY9k
         pR/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aKIp6ToG;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id d10si71003ybq.1.2021.07.29.23.51.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 23:51:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id h1so10187865iol.9
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 23:51:02 -0700 (PDT)
X-Received: by 2002:a02:9508:: with SMTP id y8mr953957jah.28.1627627862194;
 Thu, 29 Jul 2021 23:51:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210729165039.23896-1-ndesaulniers@google.com>
 <20210729165039.23896-3-ndesaulniers@google.com> <44117d0c-51b7-1f68-f752-ba53de503b14@kernel.org>
 <CAKwvOdm0xs4ikb0K0_b8Az0T=Kxu_-6AHjWHOhjsKZb3hTrH2A@mail.gmail.com>
In-Reply-To: <CAKwvOdm0xs4ikb0K0_b8Az0T=Kxu_-6AHjWHOhjsKZb3hTrH2A@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 30 Jul 2021 08:50:51 +0200
Message-ID: <CANiq72kya-9zeGN4uTqLMbAUMDGu-SQXRAwS9UTxceeObbN9yg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 CC=clang LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aKIp6ToG;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Jul 30, 2021 at 2:19 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> maximally flexible."  We don't want folks generally using CC=clang;
> preferably they'd use LLVM=1.  I need to rewrite our docs to make that
> more explicit and straightforward.  And if folks would prefer to use
> CC=clang for whatever reason, let them explicitly state CROSS_COMPILE
> then.

Perhaps it would be nice to clarify the "level of support" for
`CC=clang` too, in particular long-term when `LLVM=1` works for all
architectures.

In other words, is `CC=clang` going to remain supported/maintained, or
it will be something that will still compile/boot but not expected to
be used by anyone in production, or dropped altogether (not the `CC`
option itself, of course, I refer to the mix of toolchains)?

Thanks,

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kya-9zeGN4uTqLMbAUMDGu-SQXRAwS9UTxceeObbN9yg%40mail.gmail.com.
