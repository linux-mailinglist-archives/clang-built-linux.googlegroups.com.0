Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBIOGX37AKGQEGAEIVMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6E62D2EEE
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 17:00:33 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id n13sf6361504wrs.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 08:00:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607443233; cv=pass;
        d=google.com; s=arc-20160816;
        b=goLZK516DMUwWAintR9tbrREd6O83+XQudW3w+YcZEpsnagUTgGHzyxZds1HZfSqAX
         38WGklj6s/TA70BmAPxHHo3a4rRGcv9NNeib9acUOa9IlRZfkgnaVNBcV/gWLLw+wx/p
         apdC14DniPo22lLRssDBai/naxSfvlo8DHE9Pxw/2WXZbQY36piPckzFZuNLKxTHv48r
         GcUz1pefNH6Kx07qtSMOF4WnwXnNvZ+ue3Xc8+IUEoGqQrQaeVV+s2o+YqoHXLJz6zhi
         8pc8ZU2vIfovZ4MhSCwd+h6ZV+uzwa/XzyKnMK3rFdas3iaRKWPPDC2iIDXAUpMlu1m0
         LxdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=BZYsatnIUlUjHZVEGzQX5JB2Q7Zm5vm7ngIBvF+9b00=;
        b=lJTE6FrsBUw1RVhiDE70p4NnZ3XYq6K1qyIn9w2hRdnxaHTjqWDYGnl4aZDyDXDk4h
         oDoDhntnVXRi83nCTIgLj0W9tOdGMgLP3J1CRSvqESh/mWSm//3pHkLoyU0B3jeIGeZp
         cwy+/VHuiicFY09jRUqgSBswLgryg4Jp8v9jYGfy7yuFO933ZxYagX/IVeeBXcpTFccq
         SZd3D2VDu8+4JahZsVHb1WlE5jbR/birG5L+n0rATiTbz7KfdZ/+j7YljUvq5fb0zz9d
         /MQD1LCRX9LFlG0F1yjbtFKb/QDnwprTnvEMnMpRfs2A6cwZQCuUVIeBjv9d1isYWbBn
         MVBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=UgbnsxKS;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BZYsatnIUlUjHZVEGzQX5JB2Q7Zm5vm7ngIBvF+9b00=;
        b=p8Mzt9BgvR4/byQuILzS+S15m2zjt2aunOd95PjRWC4yyVN7ZPBf23ciC3+SXuhExF
         Ic+X6LY40V/tThx90i2sDwqITc8j+IWc4HzGSusuRw7PH7yt8Nd2FuR0SFDKS1AS5LM+
         w8dCQ5JQzfG5slg8ZNAd4bGib51LbbkqsVIyLz+3Nmdfp9be42vD4Zkc8Nd5JT0X7Kb4
         Y0k/8eIufhvgc9v0rVTUqSzQ4FjqLKPzSffBcIsxB8ETD1mAX+LHK/UGCwzM8o2UZyuT
         pun+II0C87Eh1q/b4fKGTgjYkYR/VVVtnrdvw/5p0fMFuTULGhFTrX1ABLpSluM3m0/c
         jbOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BZYsatnIUlUjHZVEGzQX5JB2Q7Zm5vm7ngIBvF+9b00=;
        b=aA6gGvAz7rU4oH31LUVLoiZeYOZGA6K89MSYs4GEaaR8RZnKGrBv1H0sFaekdSn6by
         t35bLq/iuxwlX9MGtFiTZQBnjBemI0T1dvFHKdYOaV8H2KRx68/t77vjRk1c8/NMZbif
         p9n6vCJ5x+7FFbJ75DbkPQ58oOm+3wxWl3DNsduA2SX8pQg7XmhY/bO/5LzD/zVpGWst
         dHb9bk05QNrS/hQO6PpfktG/H4oa+FrQVWo/6uPQbfji4Mrs3d0BRgKnwRZBuyabtaZ3
         LJHDLCghalHf+6Kn3tcdFIuMCxNM3rls7kOAP38O237DJrmqz0FFaJB6kR/bntgcSDsn
         jvpQ==
X-Gm-Message-State: AOAM5335oTwE/Wk4Ll3kFkenOGA3E1F5BMu3a60nnuU3B1AwwD2mbwNu
	RSTUk2qoQdubVkf3NbUOTwc=
X-Google-Smtp-Source: ABdhPJyTZkJfYSsYZbJEerV6KljBC4/Dyks7SlMHw/9+O0/AH5ZqGXyWc70kssGxSZvdLrRiNcrnDQ==
X-Received: by 2002:a7b:cd90:: with SMTP id y16mr4526274wmj.115.1607443233708;
        Tue, 08 Dec 2020 08:00:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls3427443wrn.2.gmail; Tue, 08 Dec
 2020 08:00:33 -0800 (PST)
X-Received: by 2002:adf:eec6:: with SMTP id a6mr13458934wrp.239.1607443232958;
        Tue, 08 Dec 2020 08:00:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607443232; cv=none;
        d=google.com; s=arc-20160816;
        b=LUQZgGuZdss4TNnONpqVMbd+Z1I7QHWEODuAtHqsrT7LI5s19p3fRWziAJmMyOAI4y
         2W50rMUzbT7SsP8qpuEjMAbctnOduyagWupuqtP3tXVTJ1IAMREvvAcIuM/9jLMIEEqA
         1U6aEHyat6LLt8mRjbOpwzqIK73EMTdstYXzeO3vrIVdMcxYzlBA3igDxpYFEcBjDAx2
         TGrzCstH6AZU6RJ1h2xC5D1OiN3TZfcQKfBjqm37588/zL1ni0LKZKVa2c8eawDmuw+S
         7IiyglTCJuTlQ4+ID97eqJwDgZHS7N2HvgmrWUcl+qghVlF2ijp78XuWiUZVMMALlGvZ
         RnEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iEt8ZrIXTme7sphbzz4VS0xnGTSo4prvT/46s4rgpQI=;
        b=hpsUKq55/vCErMD7zQvvXaRvJbMJvZo1PM0bNWFu77rvt6SjWyWxVocJoSbhbi+Kxa
         v7Yyev6m7nJToVDhTFP5y1ZzBGNAtcgoNyBb5ULDCUCHcX4F7pBecdNd+OfIFFvbSf12
         lfw9eiFAvOKRjiZgWUIjUTncHoi3yfmRvqcC5QtHJlWO24azdM1VFvvRbiqbe8QpbDsm
         r/tp1VW2WFX07bmbc9umUjMlJlmIo47xp6CA2CwBAMlx3VMsu3nyoSumkoAtLEHnjcLV
         /riIImwZHxbnx6bfXwsvOQyWLfkqZ2TI/Tmn5V4eMJXzN7kK0PW/z5q4Ko/nXZLKMtSW
         bLRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=UgbnsxKS;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id i3si392725wra.1.2020.12.08.08.00.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 08:00:32 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 75023AD6B;
	Tue,  8 Dec 2020 16:00:32 +0000 (UTC)
Date: Tue, 8 Dec 2020 17:00:31 +0100
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	John Ogness <john.ogness@linutronix.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] printk: remove obsolete dead assignment
Message-ID: <X8+jHx7sRlroUM8u@alley>
References: <20201130124915.7573-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201130124915.7573-1-lukas.bulwahn@gmail.com>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=UgbnsxKS;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Mon 2020-11-30 13:49:15, Lukas Bulwahn wrote:
> Commit 849f3127bb46 ("switch /dev/kmsg to ->write_iter()") refactored
> devkmsg_write() and left over a dead assignment on the variable 'len'.
> 
> Hence, make clang-analyzer warns:
> 
>   kernel/printk/printk.c:744:4: warning: Value stored to 'len' is never read
>     [clang-analyzer-deadcode.DeadStores]
>                           len -= endp - line;
>                           ^
> 
> Simply remove this obsolete dead assignment here.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

The patch is committed in printk/linux.git, branch for-5.11.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X8%2BjHx7sRlroUM8u%40alley.
