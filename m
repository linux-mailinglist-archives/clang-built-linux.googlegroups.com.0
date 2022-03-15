Return-Path: <clang-built-linux+bncBDUNBGN3R4KRB67EYCIQMGQE4ONSWNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id B518A4D9498
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Mar 2022 07:30:19 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id bq19-20020a056402215300b0040f276105a4sf10018189edb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Mar 2022 23:30:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647325819; cv=pass;
        d=google.com; s=arc-20160816;
        b=pF06t12X52BFvAJh2RSw1UvZsrrm54sWsy2HJgkYpVoFDEbKRsBfZiQU68PFSo6Afm
         u9T3wNfqj9AQcpzDEfQhKlXCuQhPkifsXIFDFE6z2ulcXivVSYkit8r6YsKZPkWMu/I4
         LioDaT0l8ipAPczvPQ2sLk3tASPAhRonJKAeq+SQhTxBz2FbnKtSbK/YBqSwiihV9xzo
         yLh0vt1/knzhszKWJmnFRuzp2IfSj2rA4xkOiIq9PhfR25biyRVJnUzH6nHgU+xbYvDI
         NhljlsOp71t2pg5SWwCxUhX24AGzBVo35gy++pMMQIUWRz+OL+s0Qeq4l7nU4LsA+2Jf
         hzKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=fu93j0Ibg/AhGNbWnnp/RzLe5P1dyWTAGa/D5eJPWcA=;
        b=pShRLxxeR/2ZwcbTalssP6pxiu0Sbh0vDJ6U3YgF7TBAKXZZzeooAJXKQFSrUJ8ga1
         Zixh92+LWlWijNHpgKzKuFgA3ZN0gSalCWwqeD5kdmX5N8bhXzppu0Mxhey0qyOXwq18
         7KOoZUD6y1qPo6ZL7CYiIRGw/B1t+QKB/TmXgEPAM29nfUZs/lEgpT4Y7DtfVsoQdpdJ
         FMc/HSJxcgqU4fDbiPE0P5WJbIrnyN/1PY3h5bu68W2IIznyAFv85n4nnduNeQM69dKq
         2Q+8sEKOo4X5eOCxQ2biM0nNQFzDU/NTGj0dI1cUrYaiQdDcgskUTnmnm4flkxLlVHK9
         z3Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fu93j0Ibg/AhGNbWnnp/RzLe5P1dyWTAGa/D5eJPWcA=;
        b=CA/DL+0Y4/CSGFiG7i29aGfCHZPxQBOREcAGi+++IyPEaKH0xWk2+CFl+IcGgCpd46
         5EEOc9OmYpVzi5Pry/7yrcQgUbC6tBbI7yNIHJ64qW+PuvFEj5G/I6c58CSLk+hO4t1m
         RupEG0WHuGo39CDiAoekYfyLR+YAsJrEvvmPyA66xjJ2WUn+l6l86Ge0cpbqFQHwviov
         j5njawEqWmkCOrLYFSRsi4PkkNcCmFD2/SFkXyh6t+XmU2DaWXOVFqG5n0/U2XntkJge
         1Odwa+FI8m1anjRUouMpqwF1GNoTTjAC+E1X7SjaTU3UCORmaCxFF6zFk0iazKzELgkT
         bzEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fu93j0Ibg/AhGNbWnnp/RzLe5P1dyWTAGa/D5eJPWcA=;
        b=nH7BGCs2raKOnjGJorBdyOKB8gwZnRW5UBAM9oKguIIiaVrPRS6HcjRp6Kj1CH429O
         3tPbKTVYwG509lXRK+Sq1wNSHBfg1nstvA+cTgvV4ovdw7CD73HW7yQyhFx8qUQuREpW
         65yJntQu7ljfuzVvbca1kee96RfQc0xqF5QhV3XYDoaOpvrabi6YYi0wkXKMoiY53Swa
         PvPO+vUbKFXffjAAwgmjDWfxhPkCdbYtahyeFPzFQDSx5R0WgEIYbDRuvsMk1RX06o4V
         2E4rDwNDOEIlBnmHmmfzDlzV6WRItOYgqYnlmcqwC0XggJtVodNj2W86xRI/c+eKqfdh
         ifpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309z+U4j43wcvZ3FumabvQC2W7+PD8EJT8JK8sfuoFqYvUxy8Gg
	DPwkwLxAHjLePcDcO9wU/3U=
X-Google-Smtp-Source: ABdhPJz/zqfxH1l6tdcICPLIxq8Tt9r1rSayydbtWh8dqNvvKbDpUjiQbbVeqYLu7Wj8wVyPL/Yg5A==
X-Received: by 2002:a17:906:5ad6:b0:6cf:5d7d:45e1 with SMTP id x22-20020a1709065ad600b006cf5d7d45e1mr21085053ejs.226.1647325819331;
        Mon, 14 Mar 2022 23:30:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:54d:b0:6ce:e16a:c0a1 with SMTP id
 k13-20020a170906054d00b006cee16ac0a1ls5234313eja.6.gmail; Mon, 14 Mar 2022
 23:30:18 -0700 (PDT)
X-Received: by 2002:a17:907:1b25:b0:6da:8206:fc56 with SMTP id mp37-20020a1709071b2500b006da8206fc56mr20451051ejc.81.1647325818216;
        Mon, 14 Mar 2022 23:30:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647325818; cv=none;
        d=google.com; s=arc-20160816;
        b=ts88pvm9/9JDPohEEU9ofoaUK1+p1LB4LpfflGaqaF0iZ+21N7NxsjxuXlRd6ygGag
         3XXwQEryFBooB0SKb25S/Kkz+H0wClP53aDV6ZKd/R6ER7sWjXOSsJlM2OeBx3ElnGc+
         Zhqiitf7G1Htp8Ddvsf/HS/Au5nR1nSCAHL9qvCZ2pahNhHFBrn3LNVNxL002FNuM2c5
         eZMPlxB8TKNSt7Q+ERjzNrlSlHWZzHSqWuzwcZN98ZE73wmwEwDUJXfwEz+JBe5gZLB6
         RDuVpUUuxv9TMkDtSsi7iZB7uy0785H+EAp0h4kxYtH8uy0fZh07471yM2H8dCnMbW45
         B3/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ESCK1h/dS5vSXFJvcaG7DUVTdLRjXne97t3/B0cdRfY=;
        b=NKSmpJo7dUg5yb6QqMI7TK+drhTc7YeiFVoRshvujgATfHKuugdm7213icEYRT2P5X
         LPRGXHnQGV2B9zNpmPgzC1thenspEbm+M5XB7M6wEzOVVVNXzZAAPL3ZYFzBujUm2IQI
         Rr+iNv/+Ui2dbAsOSKSvJgBiGXVK9h5f+tlrcAwrUCg0dH/WEMBXCOknQxRunaCRgNGm
         HNVfa0H8Cb7sxR8mSrYIrly9Cz6P2kJm9y4FBi/jHl+SNq80Lm/HymxXI0UH2BYfaXfy
         BLbvXzxisckRBuwFuBYQu6Zd0u/UuYhZEgBhY6PXrKpnCFqefa/78pu3KHEeuA0Ezf4v
         iFsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id r16-20020aa7cb90000000b00410871504d8si981880edt.0.2022.03.14.23.30.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2022 23:30:18 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 4C49968AFE; Tue, 15 Mar 2022 07:30:16 +0100 (CET)
Date: Tue, 15 Mar 2022 07:30:15 +0100
From: Christoph Hellwig <hch@lst.de>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	linux-block@vger.kernel.org,
	"James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] sr: simplify the local variable initialization in
 sr_block_open()
Message-ID: <20220315063015.GC1086@lst.de>
References: <20220314150321.17720-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220314150321.17720-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Mon, Mar 14, 2022 at 04:03:21PM +0100, Lukas Bulwahn wrote:
> Commit 01d0c698536f ("sr: implement ->free_disk to simplify refcounting")
> refactored sr_block_open(), initialized one variable with a duplicate
> assignment (probably an unintended copy & paste duplication) and turned one
> error case into an early return, which makes the initialization of the
> return variable needless.
> 
> So, simplify the local variable initialization in sr_block_open() to make
> the code a bit more clear.
> 
> No functional change. No change in resulting object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> Christoph, please ack.
> 
> Jens, please pick this minor clean-up on your -next branch on top of the
> commit above.

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220315063015.GC1086%40lst.de.
