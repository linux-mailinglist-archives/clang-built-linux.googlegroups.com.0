Return-Path: <clang-built-linux+bncBCFPRMFUYQPBBX5K4L6AKGQEJEC6Y6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC3D29CB74
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 22:47:12 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id e6sf925955otk.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 14:47:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603835231; cv=pass;
        d=google.com; s=arc-20160816;
        b=bJYg8C6HY5BywYHNeIHWt98e64A8oDpWmtpR9/DqHYblKnojt9bMdYGE/23U6TSKqd
         YQHNQmhJe1MVy0ZsQzY8BWL/sC1LqXvnhX+8GZWQjeo9h774It3zlGN9zXDDkH1GCyKk
         q3THQAyX0bcBGQ5ME1hmXBHSXOd6c5/yao8o2yk0AVNYbm17z9Qq2K0HYJH97ircX8WB
         w2wg8QFKz8f9G3eMClmb85ZYmxrQfZZ8cza+uNgw4Dz/b1Kh4rl717lqhfnuDlyGrgqJ
         ZL/LvcL7xMsE8WVA9/dh3gB/rIzbMWjIoAMJDpkXSWswVvC1Jja/ud+sb3JJPDbtD6RD
         mqSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+Ausg55lsVbELzQ7B8OGrLzCLkuRTkj4KJ1FYOs5WsU=;
        b=zsF2UQezwhM4QHHeCzit2RHoabHteltuRC6PLQ3bu899V2ffMYpyX98jBqEQyI0Xpo
         qNetoQrICf8EOb0zaWAc4K62l56GfIOqDM6cCOHfAkgqfkna4qDOBuPCSrco8CRKgGAn
         zNBW5xQnLXU7iiftgl8TXcDcJ7gyR0d/Q88D84WkJmx9P6VS3DH9Qay/99cBxxGKPMgT
         LkKbIiGo4O6HyCoIgx3ud9fBvyu1zB3NcXG3weKEhfoBLz07R2FnMObDNtVg11CK3Vku
         LuIczhLrjg5BlHcpk2UC3pzKm0WynZ+bFLNZ/hrbPYoO4UHUNn6BppKtDknJQ0CAYBIm
         GE8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ldQowFXC;
       spf=pass (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=xie.he.0141@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Ausg55lsVbELzQ7B8OGrLzCLkuRTkj4KJ1FYOs5WsU=;
        b=fOXS1MUmeQyke5mxb86ATOI6M3I35/OIZZ/+1uAoiotA1n3Q5+vnm/8YRS9AGVknx1
         JNQZYF695wOIRQxZAMt/xZl6l/hY/UfltJnc4WPXkmk+Pk+Gd438mnkePS2XuFTYHnjA
         Mefs+PSx9Gy4O7MB6zEl6ejHdUuprHxQE7fAXwVggRRaec/xtUIEwb5XkFRbO7wQ3q4+
         613LKSXk15lznG3vSi4LR/PuF3A5rxe3PKS3/4JGyLiIc1U6r1KSId/WU0J78Kvov46H
         RAdtRvlZHKpeISS1TtrMBotoXSthcRx0MZ/eVjiWkzPK0CH/QYgpZk5QWg51dl9LVoFO
         DgkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Ausg55lsVbELzQ7B8OGrLzCLkuRTkj4KJ1FYOs5WsU=;
        b=gc9gcPdgcbI7H7NUiHMNHnLc3vHZf2T+UVgAKVyyo1/NNlt/8zZ6cssg/0u2WoqJa8
         czHnmg8xhXVeOU6tlw2OBERtNJ7XK5I8rOTaqKmlBF5Q0Y9ofH6fNZlplZf7VNIOewg4
         lDQd9JXm9HjmAP1NpAmupJhPzqT6nL1htQCf60TBeoTFfM+aJ9MevDH79T2KgO5qZdFt
         tYoAZ17he9sqcflChIAD68M82QluaA352HjvzB+MF/DSP3el7FSypg0mj3nqYOldASmQ
         UzxSWJ1D/aCpsoKyxuX9OzVNcuemGKhvKnIRv09NGJzpSNOnurebPzCX5K9Ulux5HrKN
         PEWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Ausg55lsVbELzQ7B8OGrLzCLkuRTkj4KJ1FYOs5WsU=;
        b=DFNbcYrodREkcnRJrRSy6ND6R46LlUq0MdzkRZuQLp0YPPxklzLa1INo9JxxE7qnrC
         qQ7LYLkH+1PQE0EAHB6WWYtSgAMcFAxoj3/lDThZ6GKEjWGbNa7x1YWcCZR0biY74PdB
         8Z9XUItbvcgLGHWbgGhPsLV/ff96HqFekeAD5MwBm5Bu6mdES5KZX9GJxl28mSivKM89
         HZXUft4C3Px0U0SRBcxJMbB8ejoqGSzNkiBDpAQaVghFILF8LB7Y9y3pl9yHYxStUnKc
         IHDovcVi1gfma7/SAni6EygHdKLcLp/V4BXsWW1GUvNDR99yEUg4ASfuITQ9sSDWAT9O
         nS2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lqQnL5/asvIA494ZBoM7mVuN17fEkqN2z7C72OMVlUwo4BMej
	447jFbJxCD5npCNP1mjMIfo=
X-Google-Smtp-Source: ABdhPJyAmxleMe9ZJ565EqCD/9JUzh+3cDkwaOZQgaVbOSF2lRPjCfn1cMKT2Xj11oAggwOGFl/zgw==
X-Received: by 2002:a9d:595:: with SMTP id 21mr3027890otd.14.1603835231598;
        Tue, 27 Oct 2020 14:47:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4713:: with SMTP id u19ls831175oia.0.gmail; Tue, 27 Oct
 2020 14:47:11 -0700 (PDT)
X-Received: by 2002:aca:3a46:: with SMTP id h67mr3116819oia.21.1603835231336;
        Tue, 27 Oct 2020 14:47:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603835231; cv=none;
        d=google.com; s=arc-20160816;
        b=PnHgFnF/FpGzfJVay+0suUoHm7a4DxKaHs9q23QgH22W0HHmFszqIXHgLInV+FDz2X
         hNN6XJBRJ0BbWic4zdW17Dk1rr45/Jd59dGgYD+XDf7eGhi7VbIRTN8qIMT/f1eZau94
         qx2eckHxF2NFrZ3Go2SJzfkAHC4a9rPxLGDQQM5G42wKDy+75T3q31CZOOywe1JVMEPp
         w8MEbAWSnDs6Oeis3wD5v9FN64OOK9HkVNDtU7reIusgyc3QJbod+Nl2461PksWrpOvc
         dF7zcMb9rPtIzKMiK9Rl7B47UGAy5kBDpVRq9Mz48MXXHuuNo5dBitA+hs25/1ZZEhbp
         VeQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PId/GI+hcXXbOu/LnsogZk5VN2ylDcfCg4OFOAWpEzo=;
        b=h64oL8+/rCjJo6+7T/zurDDCXsdj3AKmQHs6z2YP7qEFzrFFAIrqr8XvsFxx5w7YBI
         4JDXFzuT9XPCRWRVCyb6UAfm3GGECaQnvTqyMsObA9452pRJ/Gf4TkZxddkrcA7eHJqS
         EIsud9nioYdaONcaYfN7zZ2xN0v6aQFWf4jbBS6SDvGSh8cRvUbXnqRspgMXuIyZei85
         fJtVo1qPcTGJq2tSaugQKQWCOQexwpZHRMqEL86ZLwiMWu7hJGG21JJwFYCcJrZvZvRx
         mkkJ3cxvAj7tx1DJq+gxDRF578oDZKPx1N0WjGWLry1lem1KDuCfROOHFgy+QgRMn7CX
         JKZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ldQowFXC;
       spf=pass (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=xie.he.0141@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id b15si209509otj.3.2020.10.27.14.47.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 14:47:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id m17so544075pjz.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 14:47:11 -0700 (PDT)
X-Received: by 2002:a17:902:ee53:b029:d6:ff1:d569 with SMTP id
 19-20020a170902ee53b02900d60ff1d569mr3578907plo.23.1603835230698; Tue, 27 Oct
 2020 14:47:10 -0700 (PDT)
MIME-Version: 1.0
References: <20201026213040.3889546-1-arnd@kernel.org> <20201027035558.16864-1-xie.he.0141@gmail.com>
 <CAJht_EPSs6W-r6kpWUNQDPzCjL-+_8mqq2JBoY=qhsQREgn92g@mail.gmail.com> <CAK8P3a3JTg5Mi2XC9AEC+YwH552M_TXDY4BaULZz5WmEb3woRQ@mail.gmail.com>
In-Reply-To: <CAK8P3a3JTg5Mi2XC9AEC+YwH552M_TXDY4BaULZz5WmEb3woRQ@mail.gmail.com>
From: Xie He <xie.he.0141@gmail.com>
Date: Tue, 27 Oct 2020 14:46:59 -0700
Message-ID: <CAJht_EPoXR9K3WoY5iNDNhzMgqtd=iS=mQsMQKHiGh7xRrYwHA@mail.gmail.com>
Subject: Re: [PATCH net-next 01/11] atm: horizon: shut up clang null pointer
 arithmetic warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Chas Williams <3chas3@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, "David S. Miller" <davem@davemloft.net>, 
	linux-atm-general@lists.sourceforge.net, 
	Linux Kernel Network Developers <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: xie.he.0141@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ldQowFXC;       spf=pass
 (google.com: domain of xie.he.0141@gmail.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=xie.he.0141@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Oct 27, 2020 at 6:24 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> Ah, of course. I had looked up the types but mixed up the memmap
> and HDW definitions, but then got confused trying to understand the
> logic in wr_mem() that operates on bytes but expands them into
> multiples of 4.

I think wr_mem() doesn't try to expand the address into multiples of
4. The address is multiplied by "sizeof(HDW)", which is 1. So the
address is not expanded.

I think this driver uses 0-based pointers not as byte-addresses to
access the host memory, but as (32-bit) word-addresses to access the
special hardware address space.

So using pointers in this case is confusing because it makes people
incorrectly consider they are used to access the host memory. It'd be
better that we just use integers.

> I've modified it as below now, will resend along with the other patches
> if you think this makes sense.
>
>         Arnd
>
> --- a/drivers/atm/horizon.c
> +++ b/drivers/atm/horizon.c
> @@ -1815,7 +1815,7 @@ static int hrz_init(hrz_dev *dev)
>
>    int buff_count;
>
> -  HDW * mem;
> +  uintptr_t offset;
>
>    cell_buf * tx_desc;
>    cell_buf * rx_desc;
> @@ -1841,8 +1841,8 @@ static int hrz_init(hrz_dev *dev)
>
>    printk (" clearing memory");
>
> -  for (mem = (HDW *) memmap; mem < (HDW *) (memmap + 1); ++mem)
> -    wr_mem (dev, mem, 0);
> +  for (offset = 0; offset < sizeof(struct MEMMAP); offset++)
> +    wr_mem (dev, (HDW *)offset, 0);
>
>    printk (" tx channels");

This looks good to me. Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJht_EPoXR9K3WoY5iNDNhzMgqtd%3DiS%3DmQsMQKHiGh7xRrYwHA%40mail.gmail.com.
