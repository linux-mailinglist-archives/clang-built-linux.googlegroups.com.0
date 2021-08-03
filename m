Return-Path: <clang-built-linux+bncBDXJDZXNUMORBB7XU2EAMGQEELQKHXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 311943DF71F
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 23:56:25 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id z18-20020a9232120000b0290216ae9088ffsf10985713ile.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 14:56:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628027784; cv=pass;
        d=google.com; s=arc-20160816;
        b=oNaY0+juX5xpONXlwgbLZQ3lRYIYjls7727egjhSL/+opohJCmeTTQv0BxTFUoPIfw
         wrQL/VnGuNFgrH9s8AZTNvPBM3QfTU7iIR4II20uSyLFnKL7DDjbqAvbThi8x54iUssC
         isIolxB3uARJ33P4t1e7DhOu9ax0zHYVGp1lSar97WRbdGKoeeXODTQUi/ynizhU/7ao
         L+Rrg7x67Y6WER16R0Lnwsey28SRNMWhXwVhOViXVSDnO7W+s3RkTwjjhGsjZRtYVsfn
         oRCQ1/VJCAIlhMwaxZN4VR7j3oNXRYztQFgkjNGNlu6iJAx8mSN6N2m0r3iwlNzVMXFA
         xsJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WtIdXnxvUVg4zRhKez/zDDGpi3YMcoGJ+KjSERl4ipQ=;
        b=K3P9BAUWXt8tQHCPpBXqJ8TeDc6yXQQuGZ0CIVFH6OaIyjR6qe2bYCeTYYb75XnF7q
         vr1SbQNpyV1NEmQNePMQDOu9FNhor4ENZhPApJh3EQqF+HortyfSuqswz72DchIuiQdR
         9KKpNJ3TwoG+pHZPfgrJ7Rly9knlcFZJjWyLk0bh3eC+bp2ZNQ2iTsMjWxee96Q+gfkw
         QEEC3Jm1hQIduYeJJ8wxqPKlqg2qltl0d2Zkn/GdNjMzpUlkYhNZsSuyvXkitrkaAvhg
         ToC+B9k3e6c2/8j8Klol9bF56rRGI9TbxZ9FKHrNflRvw9LeY+WUs8fX6gra1IDXuqav
         LLcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n9acgLJE;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WtIdXnxvUVg4zRhKez/zDDGpi3YMcoGJ+KjSERl4ipQ=;
        b=SyMp2CtatHp8o4Rcf8WMNE+DUn4tsKXbr9w2n+KIh02uJv4t1vQYoc5R5rySqtu0Vs
         75gy3mv76oW6H7xvfHkiz6aKaoKeAF1GiWxfIc+9dj98itnRiHgWdLiUftxAAtJ4ZYVO
         isdp4M6N6ZFX6c1XVMrzPAfiWGNMn0X3eOZ3Uq+5sihlvHb8VkK2fADI0o5ijVbRrRFZ
         endU/DTJXszJ8bwPEp/tNOjVZFJhgFmCEXBO8u6s/mm89PPCxhQMiALoWogoYSHO0FZO
         jkOiEzMGqVAc52+czBBg931WxKY4TEPWywb+ZtjsD+AbqPpaRyUVQEbghTeQNM6wPHlv
         7+6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WtIdXnxvUVg4zRhKez/zDDGpi3YMcoGJ+KjSERl4ipQ=;
        b=qugCqqh0Bp4QQzApR4N9UKxOTqOQEAs4vevK6EXiakJiQa9zGGA4afuPNqr8t4usE9
         5QLdtwAWaQ8/2QYYqpRjWCjjqW5pFRtHsNnBgJ39+kWs0psVoYbYhDDjwdcezM6xGR6U
         khVt7u1g37HFzDVPkh3ixpKMckTnhWh8oUJCiKSGNCW4csUAqmqWU+W2cvwhbTCxoIkI
         ydUgO8k2lu7bnDdcXFIPC/BVIUGztHFuOS4RhCrATLpEuuW/SYtiRJiEIXmRmK/m8op5
         x6VLKLSM20D7CFrfDISIKIfcNgSr1fO3yac5BL1vQT5JKuhkuDNuHk/7KQS+kiufIf1h
         yNow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335iJgTmZtLMs0Bx1OaoGY6LKkEfWHp/yf1ATzieRgKXje9b5pe
	rJywGcJqhgkaKGr6rbuAvnI=
X-Google-Smtp-Source: ABdhPJzrxATLPi1BcYyeNxnFF3YHn0rtncUGHNMzRMO+QOeV4SO9kl4DxXANX6TTEcMrOr2xzpY9xw==
X-Received: by 2002:a02:11c6:: with SMTP id 189mr21065446jaf.20.1628027783993;
        Tue, 03 Aug 2021 14:56:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d19:: with SMTP id i25ls70325ila.10.gmail; Tue, 03
 Aug 2021 14:56:23 -0700 (PDT)
X-Received: by 2002:a05:6e02:dcf:: with SMTP id l15mr370806ilj.196.1628027783627;
        Tue, 03 Aug 2021 14:56:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628027783; cv=none;
        d=google.com; s=arc-20160816;
        b=rHZixYYeVblfuA3MPT3QXRrAFRhq++8Zr9Q4kSa0+L6yR3+6pXP1yFLT0la8U+5Q2A
         ovrMuVYxtNMfOd0Js2YgIM0RubVnioTK+x7Syf7oErAMQPh+4uvxneQ0EAI2duugCrMS
         zAdNvVmqEjhGCQ5YqzenF8U68v10HqfcXmyWc8qUlsq2NSykSZNEKTN38+Nt4HSU69Jt
         acopdUzaBxeMcdBH7+NP6SJmE8jxy8fg0CFBlCmMstR3lICEg3mdE6+mGa4vNEIHhgfM
         caeO3pTNUoKgaOXt4/a3LqrY0frg1vwj0ke1teAh9R3U+t1YWSf7Bo/E8OjjKEFSc8GQ
         DTDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=womH4GzBKyUWfhBZy0RhxgOLIzYBQf80DF5ml4hLXKc=;
        b=c3MPnIdKXOJHgSn+pN16SUeqAOW9qXp6m9BNfcfzZUigzjv4/ENqcrX8MwJm5C5jkZ
         7OwVSBg5+0sT24rZX7KnKjNzGU5lDR3+gnOEo5D709V2Dw4Kj1IqBcjCJ75BOKxbUTaW
         px1gaxCSC6JTLfGdPFlqDXDej8JSW5IsaKkEXZQeCZlsfuZz0eJ0p3Efbfodq3gPVkxh
         7BQVc2+/8beJK8qsaJ/ARoDjEiKQ7RYjRDCEQg24IF2rlJSYE4N2hACxa1O1Xv+8OmDd
         lcH5zawLrCyPUPURr8SvWvDUJVcqaWC8iCV+x6RpwTx+ZxWv2KFdOz8cxVP4jCcoWhdH
         z+KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n9acgLJE;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 8si14616ilx.2.2021.08.03.14.56.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 14:56:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9CC8860724;
	Tue,  3 Aug 2021 21:56:22 +0000 (UTC)
Date: Tue, 3 Aug 2021 16:56:21 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] PCI: Always initialize dev in pciconfig_read
Message-ID: <20210803215621.GA1576408@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210803200836.500658-1-nathan@kernel.org>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=n9acgLJE;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 03, 2021 at 01:08:36PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/pci/syscall.c:25:6: warning: variable 'dev' is used
> uninitialized whenever 'if' condition is true
> [-Wsometimes-uninitialized]
>         if (!capable(CAP_SYS_ADMIN))
>             ^~~~~~~~~~~~~~~~~~~~~~~
> drivers/pci/syscall.c:81:14: note: uninitialized use occurs here
>         pci_dev_put(dev);
>                     ^~~
> drivers/pci/syscall.c:25:2: note: remove the 'if' if its condition is
> always false
>         if (!capable(CAP_SYS_ADMIN))
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/pci/syscall.c:18:21: note: initialize the variable 'dev' to
> silence this warning
>         struct pci_dev *dev;
>                            ^
>                             = NULL
> 1 warning generated.
> 
> pci_dev_put accounts for a NULL pointer so initialize dev to NULL before
> the capability check so that there is no use of uninitialized memory.
> 
> Fixes: 61a6199787d9 ("PCI: Return ~0 data on pciconfig_read() CAP_SYS_ADMIN failure")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Squashed in locally, thanks!

> ---
>  drivers/pci/syscall.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/syscall.c b/drivers/pci/syscall.c
> index 525f16caed1d..61a6fe3cde21 100644
> --- a/drivers/pci/syscall.c
> +++ b/drivers/pci/syscall.c
> @@ -22,6 +22,7 @@ SYSCALL_DEFINE5(pciconfig_read, unsigned long, bus, unsigned long, dfn,
>  	int err, cfg_ret;
>  
>  	err = -EPERM;
> +	dev = NULL;
>  	if (!capable(CAP_SYS_ADMIN))
>  		goto error;
>  
> 
> base-commit: 21d8e94253eb09f7c94c4db00dc714efc75b8701
> -- 
> 2.33.0.rc0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803215621.GA1576408%40bjorn-Precision-5520.
