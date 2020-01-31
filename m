Return-Path: <clang-built-linux+bncBCSN3LHKTUMRBEVCZ7YQKGQEEUBW66A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F57114E909
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 08:02:44 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id s6sf3762733pjn.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 23:02:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580454162; cv=pass;
        d=google.com; s=arc-20160816;
        b=sEYYzvO8HHJlDSaCNDX485T1uODXfgSeOPOftXaWGI2S4QNGGh67N/Jg+AS+RnNCyt
         qQIHKjqlokTTSOpK1VgzXf6RbtyOLOzQhcZqNEm+KDdeDmIri0z4YKAclDueTGw0EtW5
         zhrRVa3ZeubGv6Kq141TjHEVFggqNBz1/gxLLfO2hl86sVIdrWJFZ5oE5+Y775yF9fhJ
         P4FHcSNQulxgDY1kvuGkFMTweulpWhhGqgmwrJF7brNfPSfWnbXvFcEQF2OoAxMy9/7M
         0s5htXGrrUrndfoVKeLvXyWvpx1BAVCdQHVmrmA+OGbM9IeX2DRvwnX1owRo/1gdmn0V
         O5Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=l1L32GfULcHOIVd+7qlrRXyh+qcx+lRhLaj1/tp50Wo=;
        b=GAYtCrTI3CpMCR5Fvc1LnFEVmU4fERwqycaGE+2iCbjoDTM7iQEN1WZpejmz2/+GS5
         dwOiRdXulHU5h8F7m/btXSSebkxExw0+KmSUMtbOylXk7oVqwC+rD39mbr36zSOL9i1U
         ys7HOMJLVueK36V9lepPWIcuDx5ys+6FX7olBrf88BnwjIkVj5ptbVRJhtOFFAIPhSnE
         QFIhxSDHLPv5CFKy+p3X/KYlsIfv3FZtl8bp00nBXCV91MRe8sOpSx8KrL+kzQECCGb/
         dilIfEIEQZ0eWHYvNOwbcYpZ7tIcnMOHlOzwSktMPL8OG50X9RuehdjFPm/tRWF3gXeD
         HQRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gcVYhGHF;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l1L32GfULcHOIVd+7qlrRXyh+qcx+lRhLaj1/tp50Wo=;
        b=WFUie+55wTzuY09tlQ3uFgiRmvLVb3iIinmL2jYjVFNzg/zzqOGHH0c9s02kBbAfFB
         8ibi+NAH7SBMlWHpvnbijMPl6cagJXN4VApVX2CgsiYinjnwCJ7sczoq4F9wvQQl7l9L
         HeJu1AdmbGh7KeLVKfFyjKw41Ui9YrwFojAlE8k699nzSxfbYkZrUnC3IrxN0s9G5wXJ
         /xQozjAVkyVyM7yU/5kgFqGNUoH0Ia0XffRNUcV31LXYusPO8Y0R8ZyZbbmtR13P0Z0Y
         jr9Si1WgYXtu11Xj1Q4Mhxp8gfHIjzvKGsqN7YqZLd/+ADR3azOFYr2EGa7SjynRtmLk
         X3lg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l1L32GfULcHOIVd+7qlrRXyh+qcx+lRhLaj1/tp50Wo=;
        b=Uf9tOu/JBriqqPFDRmxkrvhiBrHYj4KkKeoGR1s3l1woiJ5BBqrIApY6vGqB9ycNW9
         UC0gFwHHbGShEwhp5TWEly+1sGKI2atyB2R4afA7AKJoNE2zbEUxn+cGXay7U9tnJlG2
         zcTPjLfklnDydxGRrRt2RhBIVG7FWcuSNgWv/aqIpWfdGXCEEK8h4HX+DVogZ5zojByG
         unFmaNRBZGEAkqOkiNEEeS7fFbDi/G16SZNS/err0soGsJOPBErfzMoWldWMyo60EETm
         fBSGmHXyqZ9zud1dX/IliCbo8YA9aNDlTqzG9geAU+WoSytA3FnWBGQ0soa3QfC9+Z5M
         zswg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l1L32GfULcHOIVd+7qlrRXyh+qcx+lRhLaj1/tp50Wo=;
        b=FyX3TCR8y85EsVkN0/Zj1G1Pih5+q6bXzzIvccwfQuz7yQK0pGytLM6HCTr6PT7eLY
         y8jDiqgA2VFboa7Yej+072tKBtORdR30K75RPvmaTT7qFih8XtRY7lneCmk9oYMk0Dno
         I95UhxcArkoyi92fJKlL3IDSFR6fkNe3SzWIITXO4aXc0cZICV4obUet4XToQqA0pM08
         16oFH55sLwSZwsjFMukGcls0blHo5/qCzKRcdmzJ7EBLVM4QNfcDX4vKC4DaBNF/4tJM
         W/HEFka7ygw/8gclE4UkPzumEhJri8VoDjezBPRxDGgz56nwGSLI1RR4bEXl1Wz9WsV1
         FfjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVtULlGo5qCGCa9I5AT9vsiQo0rl6C06yodgX15XKcIm3bIWkk3
	8VRnf/7yI9SuxgupWCAaDrU=
X-Google-Smtp-Source: APXvYqw1L2m6qUtcEkuIH5qdNfxrQJTP5yZYzWSe+TpMS8Aa2ThXsWxN+AgCe2Zc4AvZXwbRsd5i3Q==
X-Received: by 2002:a63:d40d:: with SMTP id a13mr9066109pgh.9.1580454162390;
        Thu, 30 Jan 2020 23:02:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c94:: with SMTP id x142ls2592460pfc.3.gmail; Thu, 30
 Jan 2020 23:02:41 -0800 (PST)
X-Received: by 2002:a65:55cf:: with SMTP id k15mr245645pgs.39.1580454161837;
        Thu, 30 Jan 2020 23:02:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580454161; cv=none;
        d=google.com; s=arc-20160816;
        b=fBdHp8YYiPSVyEuDhagXck20GDyWrLYl1Tp3j8a0C2xLn7eRNTFKhhH4aqRZvWiehM
         OIniATNL1ZhIeEgyDrRm477QD7D0xFYDOXzfhoOOMg10m3GlA8ZdPa7rxLHoH4NrxjcH
         3rO3A4VvQaXuWGikWzDotfKux5zCp3CaUqs72VZ9KwZ0YwYfLPYb7U2CJyeCLKOAS2Io
         sGkffnuzLg45FedbUyoy4nkDDDjjhCQTO+m3COSDL8bNMfWhb+Jen4qQl8SWI3wfwEb/
         8djhPEaY1AfznW8TAEI3TCADr9m6RojOX1S1s1KGGuymY6Gw2L8yiWvq2wx+JjJF3hkG
         PuIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wOI7hqK3fz5FOatl+JgLstEmzwY5hPCxPwdC6f4htY0=;
        b=CBy4QpuArsViKL7i6BsQVf14jvmir6eYcQzB624hX+LofyJP6nE8y6pr5GTxrzLa9S
         is1YNCssIuEfwBldGle9+FPELQxqTi/oacFYPgO+M5BkGwL2JTgKejNN3yKRD/ALg7Gv
         360qYsbXqcD5gYbLifEU3stq29M2OJE5IPYAWdK/HJhJyujm9G6fnIFCRVzzYjLxJoSl
         b1rdzuuyZhpbkAHnTrfqyb529vNWgrNL91It61i9dA4yyHVvrwOkQWTRdw4me624MpQt
         3FFoQY2abrveavzMVRc80UAUYDOG/qmvmaU1OVQz1se/Z9KGxRY6Jx65bxnijNR+IJjK
         zeWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gcVYhGHF;
       spf=pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t34si378756pjb.3.2020.01.30.23.02.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2020 23:02:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky.work@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id k29so2818010pfp.13
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jan 2020 23:02:41 -0800 (PST)
X-Received: by 2002:a63:28a:: with SMTP id 132mr8654803pgc.165.1580454161600;
        Thu, 30 Jan 2020 23:02:41 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
        by smtp.gmail.com with ESMTPSA id gc1sm8305293pjb.20.2020.01.30.23.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2020 23:02:40 -0800 (PST)
Date: Fri, 31 Jan 2020 16:02:37 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] printk: Convert a use of sprintf to snprintf in
 console_unlock
Message-ID: <20200131070237.GB240941@google.com>
References: <20200130221644.2273-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200130221644.2273-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sergey.senozhatsky.work@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gcVYhGHF;       spf=pass
 (google.com: domain of sergey.senozhatsky.work@gmail.com designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sergey.senozhatsky.work@gmail.com;
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

On (20/01/30 15:16), Nathan Chancellor wrote:
> When CONFIG_PRINTK is disabled (e.g. when building allnoconfig), clang
> warns:
> 
> ../kernel/printk/printk.c:2416:10: warning: 'sprintf' will always
> overflow; destination buffer has size 0, but format string expands to at
> least 33 [-Wfortify-source]
>                         len = sprintf(text,
>                               ^
> 1 warning generated.
> 
> It is not wrong; text has a zero size when CONFIG_PRINTK is disabled
> because LOG_LINE_MAX and PREFIX_MAX are both zero. Change to snprintf so
> that this case is explicitly handled without any risk of overflow.

We probably can add a note here that for !CONFIG_PRINTK builds
logbuf overflow is very unlikely.

Otherwise,
Reviewed-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200131070237.GB240941%40google.com.
