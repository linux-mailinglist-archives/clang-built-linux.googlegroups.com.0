Return-Path: <clang-built-linux+bncBD6MVSMOWUJRBS5WSP6QKGQEXBK7JDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D642A8EA0
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 06:12:45 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id y17sf141508iot.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 21:12:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604639564; cv=pass;
        d=google.com; s=arc-20160816;
        b=dRij1MTIL6d6DC/uhca4m8HLsBXyCJNJu1vhL59CZCJHwT70qA4EN1Sr+kN6eJoOxf
         gtY9NH/JN6bsOINs7UQV/6UkMFeUH0qTx5MZoWXKV4dBk9qs/88AU5isV3nWQKu1Ay2t
         Klsd6CunYL1SN7xjNeOGoEZU0OBe3DUiCDS1Ss1dctcRqe4dKZ11IiWSDq9A7os5DM/L
         ncz2fQA5HfEUsBlh2/Hi1neQUe17NZWgCAtdH0044QOobvQI5wDDkrv2AaxruOENctkV
         5t0XbgHYBN7jkBB7EW+Sh2O+YZipBjQWLGHkfq9xOLF32KuwUuFyPNkYA8ZbFwQHE86L
         6n4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Zu8P5joRWRiF37FWdu0/smqitN9zFwl2zxpe9T/qy80=;
        b=vbeDaRjuIoFYD8AXSKv7VJRas7QO/WYl39QN1tNxZstxpYkmRAZwqRVBfCUoCO2Iy6
         dRuhXlvzJLbf1t8n+tpXu4tLf8bNm5F/1iCvHeolCdBmliJoEFNuDu7YYdXmx2XzAxPk
         zuqW9XTkJQGQ89huKoBCStKjwvpBukpVef2C4Wakj02EEPa3nsKFAJMDx+X46eD/Hm7c
         ILDMgvMQREqX0t87BEyK3tdC+XopVcz5t1gGSsq1QFJG3THmfWjuO+pgDTiS103No2ki
         cWYqLvLfMgYMByzNZ8Sv6K6mq9baiAdul0StNWrXXQ0MHRnKPYR3FWYJkvrZuxc6mIBS
         oD2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gH4mN2yO;
       spf=pass (google.com: domain of sergey.senozhatsky@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=sergey.senozhatsky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zu8P5joRWRiF37FWdu0/smqitN9zFwl2zxpe9T/qy80=;
        b=Nqc4R+KMx8Ab602cioyp1JEZU8y4jcLLFw/rJt8f98G2fi4kWcu+55os4IZgYrSDT2
         /7aTkvDrS0QDALxBxn/DQsBlEs9w2QpN6sY/DwQcLjYe5c3H+uQJK6A2k3dl2YlLGopX
         gIn4iNIlX+c/Sa+IWb7VmwV3BWmKhhr9VprG7c55as5f448KnKSmayZcIfVhvbVI6Tj1
         nrQYBomb7xkGP4UiD4Ka3DDrG6wjHeuvPU9u2Kd78Pte16sDldYpvNBK29G73gvEmmvE
         IfJoqMEF5KSWP42P9GxOk1UXelpRob8wEaLzOmS4wqr8kFSn5/MGzMj+j/glUAsGRPx5
         ZVNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zu8P5joRWRiF37FWdu0/smqitN9zFwl2zxpe9T/qy80=;
        b=qiXILQ1f/KUNOUYxr0rsj/Rbtv9D/VaaFq3lYwsMzNePWb81tCiQXx7wFZ8fZKiEiB
         Q4izkhzDUUJ6m9ZLCZcoLmGqdT2hCvHT0qdrDudCQr3wXtjKL9hXEr4iibjvGVknk5fo
         Uu1G0ObbXDBwptIQ+MZw20zo8BBBpweaJ28k2AWKVxsODlaHY6x3BxfppnBMO7EnLYcN
         xc9zUnpFr4aNm7wtN8xu8+VIuQ/7jv8W6uggAz81pR4BGDTl4akqSUNwJtmDUvqnsgoY
         nzzAF2oib/zIzLU4a5tu0lUl2xyRj6BpjTjfm9RTIyziNRO0AbPBOacPCce3LU/ulZ9p
         bScA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zu8P5joRWRiF37FWdu0/smqitN9zFwl2zxpe9T/qy80=;
        b=AhEh0sN7pOvf+jTM5+kg7ZrJF29YC0jeh1/ytqj1knJG/ITYo0sNh4WIuCygovygIV
         Lg66nyulcnEzr0jnP4mv0Co9eMmkDgnQomkZbCAns34mF3fZG5Nc1MBmj4Y/ITWuNAN/
         naNlQPB59l/I0P+xQr1e41sKUOr7CJR6tb9UGw3L1v+oRg925kxXGoE/3TOeRtJ8ponA
         /MMjyAULiV58ZfkKVbg/SGWK3RoR5yYJyHxzkteBBNsgnUfbQXzaFEPCooqqJ01wDf20
         HPIp0Q4ZFNNMleipZ51L6YLHjkzxNziaP1QRUSKWoIlJuKVCSdtYKYqvkA37F3h44RQ9
         Bs3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lw1s88LzKMQmfQQLJEYD1VyfGQYDHjWE+fR7Au5zGhAIT69/w
	uzSzX5a01Rg008mrK36Q1yQ=
X-Google-Smtp-Source: ABdhPJxOW9DeYV8SEPV29wXN5qwI+7VaD6Xskc8E1AdHFV1DyuOcJtm3jPe9JqWMXslWW+Ij8FjeaQ==
X-Received: by 2002:a05:6e02:1388:: with SMTP id d8mr233235ilo.272.1604639564054;
        Thu, 05 Nov 2020 21:12:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b7c6:: with SMTP id h189ls215iof.4.gmail; Thu, 05 Nov
 2020 21:12:43 -0800 (PST)
X-Received: by 2002:a6b:fa1a:: with SMTP id p26mr302742ioh.70.1604639563598;
        Thu, 05 Nov 2020 21:12:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604639563; cv=none;
        d=google.com; s=arc-20160816;
        b=lQFKvK4N8stClQsBbyChJePOHHD/ZGIRBQVh5zz2p/A78GmqEszFlzoYde0oWKwoqF
         ZgaDAitlkOOt++7npr4US6OXOl9w8KAfgMZZ8zFEvCDchuctLcft2xF3Knfpcq3wTzrF
         daS55QulOuh6LYBH0LPwiBbCvNds9PF0z+Y3w60UKGQs7G4VOWWdk7q/sH91kF1Gf9p/
         sNZPojgkid0Z3t93omuLKaBlhE3Pjzz3/uPV73wRagm7Kp5VREQA/pYEkvLwnpF1PFWf
         PEKtOW/EJzp+EAKoLb22hPffwGOqtKP+cDSPjxTE8SPjnfhirhmecj1IL0hTuNS5GKwO
         vaiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qaz5JfSXEexVzd3vu4/X1zvrfhtSmuN9aWiTUHv9SJA=;
        b=pr1JXMNPj0B2Pkg+YNb+q5SakJPdPleE37fsG2U2+jqKzT5Bp9EmHlYGgKdWvE/LqV
         vjS/+aAfzwjD8lEWJmm+LT6d2J4LU4QmP533E1tp8VH1qaESAwue0tpRESapyLo0YbtD
         DSkuVp1OVvR9SU7CSbJ5egELdcIqQLu8Yjc4xNPtNfUteMD09wj/ZZZw+iH9agdjWWOW
         tF1xpo7zC8boDloD9p7A1K0G0U4jDxB8fMyAUjD8Ehe/8MitP/T7DU863pO2k6CdgU5E
         i9VS8fu2AcVgns73vj8aXIMaMGzyJ6VH2hvkFASApIh9eFWfW+EQ3yHzOI9jLiUkxmLr
         lsIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gH4mN2yO;
       spf=pass (google.com: domain of sergey.senozhatsky@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=sergey.senozhatsky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id s11si19092iot.1.2020.11.05.21.12.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 21:12:43 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id t6so116582plq.11
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 21:12:43 -0800 (PST)
X-Received: by 2002:a17:902:d698:b029:d6:b974:13c5 with SMTP id v24-20020a170902d698b02900d6b97413c5mr339670ply.13.1604639563004;
        Thu, 05 Nov 2020 21:12:43 -0800 (PST)
Received: from localhost ([2409:10:2e40:5100:6e29:95ff:fe2d:8f34])
        by smtp.gmail.com with ESMTPSA id j184sm320461pfg.207.2020.11.05.21.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 21:12:42 -0800 (PST)
Date: Fri, 6 Nov 2020 14:12:40 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	John Ogness <john.ogness@linutronix.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] printk: remove unneeded dead-store assignment
Message-ID: <20201106051240.GC4718@jagdpanzerIV.localdomain>
References: <20201106034005.18822-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201106034005.18822-1-lukas.bulwahn@gmail.com>
X-Original-Sender: sergey.senozhatsky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gH4mN2yO;       spf=pass
 (google.com: domain of sergey.senozhatsky@gmail.com designates
 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=sergey.senozhatsky@gmail.com;
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

On (20/11/06 04:40), Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
>   kernel/printk/printk_ringbuffer.c:885:3: warning:
>   Value stored to 'desc' is never read [clang-analyzer-deadcode.DeadStores]
>                 desc = to_desc(desc_ring, head_id);
>                 ^
> 
> Commit b6cf8b3f3312 ("printk: add lockless ringbuffer") introduced
> desc_reserve() with this unneeded dead-store assignment.
> 
> As discussed with John Ogness privately, this is probably just some minor
> left-over from previous iterations of the ringbuffer implementation. So,
> simply remove this unneeded dead assignment to make clang-analyzer happy.
> 
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
> 
> No functional change. No change to object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106051240.GC4718%40jagdpanzerIV.localdomain.
