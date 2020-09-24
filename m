Return-Path: <clang-built-linux+bncBAABB3F6WP5QKGQEPKZG43Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 35180277831
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 20:03:26 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id m13sf2339646pfk.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 11:03:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600970604; cv=pass;
        d=google.com; s=arc-20160816;
        b=HKpATx55RDaOxTBOtAuAFn2028CqTIhbtyC3Wzppj5/Ifd7yAZJbWq74MVea9fSuBp
         R0Uw6pORLyaXAuBPLalRI0gO/ehnbMI9D63GdltuYsMfwKSMvu3Xt1zTjNONJmlWBL65
         qU5QR1cJIrkAPXRFYFPEADIuPa5pmpEkn29rqyWiLDThurxzW2I00EGO2P4Z1KiAIZLt
         QDKYWh+/jtRcXYM3+11Ge35shUPvGP8ZCKa21A0HYgtwFOnqVI7MHViYE2xFFJelu9lo
         IFZ1epJvuJ+LNEgwiVehF9Kx6J4t7TBcQjB6OlJDFRnA0GBKKK2OTknXFYhH/POGh+Hk
         NLlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=AOUT6h6YNXpCdC8RJNgCRRLXzKrG+CCfu8VAGxWdVE4=;
        b=tNSL2ne3wof8xH/sWEI6PYMHWyw9frRVJvCX0cj4FcCb6ihFHoSDoPwI9LHrRiXqNW
         IJ1b62ugJ0PvFifpAqt6HLOBI3SYCm1/ayVle8tGXBDquawF0MQhLRDcRxHX0VqIMYb2
         mYUbZKvhrX0OQ6Z+pLmjoVspkgo4q7C61QpgSm2wO4P6frGM/lrwWVf0eoNFQZKAT9Tp
         feq/C+EZHDfGbYk9Ri0kOhLWSpAJXdmgkWORItQc1RceCTKw5CBGjFelIFUUt1v6lYq5
         GcsePONeK6l/Xw5F2StXlSvArD8jeI6T70skCy3I4jo+9hhETuHIN0My1cxus35KdfPG
         aYmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fykI5J7y;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AOUT6h6YNXpCdC8RJNgCRRLXzKrG+CCfu8VAGxWdVE4=;
        b=OFwb4wUFF7Z54inslCpUGw2xAAsPzaFf7W0Eqez9P9e6nY/HDAoEk9qi2C/rMhQQFW
         L36Qh1PaV9foTod5vjpecS778zm1lpYJ4h1jSMF7KhvnkcIVEhRJoEr0i8KzXH39rIhR
         lE7gL7wXs/xhTsNptySac94YAMrs3MccGiksNHt1f0oACQYEM8Yizo6w12iBzCXZZ0rc
         fQ9jq7lwag9x2qSq65NaYkgVqZFwkjd4Fo7rZckvlR6eg+00SnaURke2G1AFdcqkXipS
         kUfytJ6WyJFG6a49WVxWT7Sly3Iy1qXlVNrUcDcMYRBnHb22+ZoqKR6FoEkzEYVLBYsK
         dnPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AOUT6h6YNXpCdC8RJNgCRRLXzKrG+CCfu8VAGxWdVE4=;
        b=qYGVTvBGeA7E5/f/cK20gwwUDnoWI433tzuwjstba+x9Lk08FpGOC2+F0N/V2m6/hZ
         hV/jh9uFYHZ7q2xmWinCShTsi3BCeLfOjWU8hyfzemZH1kvmFCH5kM+zWHwsVwhF1QGd
         BkJzGd3oZnptdk+Fdxlwogpdls7xilMLitJKcIc4fPW4xw8O8HLctY/lG4aWjPBvDBZb
         ArG757c8q72qlnM+HHafHvutYttrlgovOUw6C4b4ZxaDccyvi/+OhuuWj4e20X0Qr2VU
         Cv80RH6MGY+wMR9q3ilVaKDfdl2UKLuu9vMcR/0BGRi3iLn+P40EHwj/5+xzG97bjPX8
         jFEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ar16ge566xA5OUf3FbsuDFCJs7StYcbXrW2vSms9654pONhxH
	3PyQnC1/dHNF8zAFLkJPjZ8=
X-Google-Smtp-Source: ABdhPJyZOKH0RyD69l+mnG23sIsLgD8iwUuhDmWW1mHYn994WMhaSoQnGaopO2SdlKtJxgWvqTb/9A==
X-Received: by 2002:a17:902:6ac2:b029:d1:e5e7:be59 with SMTP id i2-20020a1709026ac2b02900d1e5e7be59mr359212plt.51.1600970604458;
        Thu, 24 Sep 2020 11:03:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7449:: with SMTP id e9ls112389plt.0.gmail; Thu, 24
 Sep 2020 11:03:24 -0700 (PDT)
X-Received: by 2002:a17:90a:9912:: with SMTP id b18mr156451pjp.192.1600970603923;
        Thu, 24 Sep 2020 11:03:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600970603; cv=none;
        d=google.com; s=arc-20160816;
        b=jzLcd5qxyzX3TizLQ+XlTm4WC7pXQwSp2XVUG/axPeK3aR9+I9fWBITGrnLBEZZ7PS
         Aonqlxb6CeBLML1QtVU+cr4y0f6/qn13AoLcv/xdsDTngnSYONihWGkVjhYUlCYtIyUn
         RbE5rzZTKkeJ+OPytAWuel2zxmG5GEx3EBoILW7gkSLttuZ7SAZXCOsJr4Y9vnLYtaya
         /13P+EeYBrOQ6dhEOXIW6Ay/c64kkVgDiTDEyc9iPKr4BvPKoadTzNATMjPUJslCVpnV
         RLjtz8XxhnvAf8KY333CsLsPeeItpNfIp/pthXFMEJ4IN/MGGdOZjtxhtGLfFb0hWkBT
         /Cpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=D6BAhgrQAw1Y0PgQZ1qRxjS/3qyuJzxB789JlCu249s=;
        b=K/UdsysaBiRInptaVhTKh0OPp8DgFxQfa4LwPE0iW0qlSRwmq1iJIVxowxHnAaphrD
         cIFJw13qpMjmA7IHClMNTmdCzoCdDEOQL/+xTiBvuMNh/TIrbvz49ioFsGTti6LHdzlC
         nnhugOSZQqciLVcglDOrm++INNI2SCp+p1mN1EIBSgt2t6NBszYDzUyIZ1rmFQipLizT
         CfR+bBhYDKxrZYX+uDEs/PBCPY93M12UKqmSI1boJJuw5qtt27R66r15uVfcFLrNqny7
         IWuOqRkH/wvptBrI97uFnUdLf1m8YCGreTa4dv8R8BBKPKUn/X5YFY1gf8dKuYRSEz8L
         g4Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fykI5J7y;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w136si18951pff.3.2020.09.24.11.03.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 11:03:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3E09A2399A;
	Thu, 24 Sep 2020 18:03:22 +0000 (UTC)
Date: Thu, 24 Sep 2020 13:08:51 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Trond Myklebust <trond.myklebust@hammerspace.com>,
	Anna Schumaker <anna.schumaker@netapp.com>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Joe Perches <joe@perches.com>, Miaohe Lin <linmiaohe@huawei.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Hongxiang Lou <louhongxiang@huawei.com>, linux-nfs@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3] nfs: remove incorrect fallthrough label
Message-ID: <20200924180851.GA2411@embeddedor>
References: <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
 <20200917214545.199463-1-ndesaulniers@google.com>
 <CAKwvOdnziDJbRAP77K+V885SCuORfV4SmHDnSLUxhUGSSLMq_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnziDJbRAP77K+V885SCuORfV4SmHDnSLUxhUGSSLMq_Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fykI5J7y;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Sep 24, 2020 at 10:19:08AM -0700, Nick Desaulniers wrote:
> Hello maintainers,
> Would you mind please picking up this patch?  KernelCI has been
> erroring for over a week without it.
>

I can add this to my -next tree and queue it up for the next merge window.

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200924180851.GA2411%40embeddedor.
