Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO6W737QKGQEOI5ITOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7902A2F5730
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 03:23:57 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id c5sf2369125plr.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 18:23:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610591035; cv=pass;
        d=google.com; s=arc-20160816;
        b=Evvd1n8I0Qx7ATM0I2zJo2oBL7ibP+hVvNd3efzzjyEaGSiCVYw1S1GV3OW4+wx+vw
         B+IZBv2iC6GPpChA9aQ2OpvNgB0z5MQsCQjs26f6xv1zuGXG+J9Ggz/ZxJKEdJbu0Rmv
         m2Tl0JHmtcTke3tnNfrAyUpBg1JnpTdtnSLI8Rs1zWji3DPGxc4hSXQmRvqzeH3l9aKx
         7uJU5v3GnVtRiw64AZiaft0gDna/IrB1er6R5q7HKkuqdkfG0uW4PMktynUUwTQxlvhb
         lzgkK9706+4LthpWFHTlPZMWIeeh2m5XbPUXNRct2auTl6n3zPTmyw0AHGFZsVvLe3qL
         7Zsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=qDa0h7hXSOHb9eMjptWGdqfVmkRVbjpzpFgw1GzJBHw=;
        b=yKaCWtGSjg+o+/S5nBxmW+pyuANeiFsc3+k4Q4d/WH0myuaOtOme0+Gir8egh7nlQi
         NeyET2YOVRK5b6JbNpJOwkrqTfPlnXNBolYQ1H3vZDBvXb9V4JydiITdCoVe4cJs8O3o
         zJAgYx1eSoiyMHNDrgjfmYmSBil24dLynHMZo18f+N6+6PDYhSdrYmdNdcNftYup1XBn
         QUibH5ZYzDlaAId4V6QRSozFJVMu+au1SUMF9oiJbxC9rX8SFzqWNlVvcw5/OARva0Hd
         XiGahIZtURVCRADs5g4vzopfUe2jEhw68U0XCynzCXzJVGO7fhiiZmuKJ4n4lki7ZPU1
         Owqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WsknhtEY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qDa0h7hXSOHb9eMjptWGdqfVmkRVbjpzpFgw1GzJBHw=;
        b=od9DZiEvA1zLljlXh+HujJ17fVmnP49Ujx1pKmdT+5u+eGUCBghr8U00I/kVutdu3d
         9jqNjN4lnVM0QoT64hns/IjYjgc7mZf/JVYGyFa3ICjoyoFcYo7U2KEgkmX3Ow943Fdr
         QYy66vX58zL4378OY11SY/9abuJdJvWQoyNUBEyVcV26VZB3O6yGz9L71StsXhry5Iwx
         Zmsb5HnQa7wLCyRepMeDF40+UBOg/hx8aXtMun4EvGOZowoxcj9D1TIchx0B2M2aJVtI
         NWZxtVEyhE+b/fC3PxQA2B+uMoxDKoo5R2h9dca/8a/oQwm5D2/zQ9WMorA60DnMg00O
         +b2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qDa0h7hXSOHb9eMjptWGdqfVmkRVbjpzpFgw1GzJBHw=;
        b=mZGzRiXLTzAGrw63+I5o8OFsY78UGxIB8dfbRmZoHrNUWRD/Kzj32vqT5WtRBio6gA
         NBrWHkluT4uB1riKmLe/rS6h+Ox0b9S+9gCmdLvYsYaALD0fHuy3VsVuXYCWUIEveXQ3
         HhLCzpimSChgfdQRzh5k6PJQqOdBbwjWTpp7p+XqNWYwS5JFGRT7cHOJSxlee8bgrjql
         RK2X8LU2r10vF2eMb690JBLzuXR0dhc855pDMwGsPsfVtZo52A8VN0QkwCw0YsV5wssR
         ngOGyfdBk4zxJWWlJHsBak0dKOcDuFB1Fx64ouI0IF5cbj+6QlG4olIMlzZkdTxeAw/I
         Pmvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qDa0h7hXSOHb9eMjptWGdqfVmkRVbjpzpFgw1GzJBHw=;
        b=HrV8fnqJCFhlD2O0qaKLy9HV6I9no2pWozNZJoPml/a6Q802frPcqXQAGKyeOypR6q
         TGiYsoxlX5r6g9QluV6Wna2Py3o94+eLlx6JrFyMd717TI8T8LKpdqR0oyPlM5SE61QG
         a8yIbcFqUCAP8kBdu3t+ZdMrenhEzGgfMyLDa30ARl+EgfWpYjgPL0D2CC4XySvrKvh6
         3P0JAAP6OfGccJ33pcSoQPeKAxKWx6Rt03q+QtK1GWUmxxUuyHzo7OOfK2zuaHGBJGG1
         x1oHOktILO6JbLfOPTQZ8ntQ0PsgFAoZ+fY0Tz7UsxMUwuZzQx9/FOM8eDN9K/dDuO7b
         /PUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53184gZHb4X5hxnzOcboMI87FSmmhACQH42Q8gTLZiRs23yPV7Hd
	3jJP+1SSUmRbXvHBAHsdkcw=
X-Google-Smtp-Source: ABdhPJxtDMR+HU0rJAA3ut0sKEbotnTzY+4G5RZcaNbZlvZGFVb3y9h6X5SqxFkGt17FAJIUOnLnug==
X-Received: by 2002:a17:902:850c:b029:da:e4a6:3641 with SMTP id bj12-20020a170902850cb02900dae4a63641mr5298818plb.57.1610591035669;
        Wed, 13 Jan 2021 18:23:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7d97:: with SMTP id y145ls1570114pfc.10.gmail; Wed, 13
 Jan 2021 18:23:55 -0800 (PST)
X-Received: by 2002:a65:6382:: with SMTP id h2mr5044706pgv.365.1610591035061;
        Wed, 13 Jan 2021 18:23:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610591035; cv=none;
        d=google.com; s=arc-20160816;
        b=UsabtjgrtkWw3SrQYwz+SMnBAWUUyBGuIr3mt9A7DtPiLzmNXfFi8Lo0bBfKLx794B
         jGH35KgkscQQ8bpoLCVYkGMCulp0Jn+qOdBh9tweTceLKyzc2/YSjtmtgx0BxLsiCgFY
         9mYQkES6UWtsjFbMswXGXNRurVWDuPoaubxzsnWB5mvUwmppvhRBC9yPvunQB4tLCi7w
         3rXbLan1GOOmvQXpGO5dg+2RZKutr5AQ/5aoQpaSkQLPz9zlGVxnleQdOkUiZWVSZCdL
         gBEUIHbR5HyrhWXA6BcERns0uHXl5I2+iWsKu3UTTv6MAUEVF6pfZpmnA9HbZPNWBKrT
         GTeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8m3H5QC/MlByR96wrIq8TBNeXOK8D2jl9OpLzaXEOXM=;
        b=m99Lq1iBRc9LlRHLhZyg+PYf/k1kb4+Eg12bdg9NfuFT1c8+rbuHl9TD7xq3aAG0zU
         rMcOzY8gfVRa6WxW/JFQs8nwycYMLc5PNvq8wm3rEGTMYUSWZfp3dgnowemjdPfNU3LU
         +WApw6N4LYXBMTi6C0zTUENj5PsY4XnCk5FEzuxr6GHplyjiA5XTb6tvRhsz/B1BuAxo
         +1Od2UONuWkeRDaOqG5CN2EvPlKjIbPIFv55nPgAtmBdHodPq4FUtaf4XrMZw3jctXdL
         Rs1DffQXTtm7n4sIwP15Ua85bY18IBt6DwGavpz1uZ0LiGhmCdtrcdoZLE3YRhO8LUad
         HAKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WsknhtEY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id r142si242435pfr.0.2021.01.13.18.23.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 18:23:55 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id s15so2146548plr.9
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 18:23:55 -0800 (PST)
X-Received: by 2002:a17:90a:bf88:: with SMTP id d8mr2572623pjs.124.1610591034728;
        Wed, 13 Jan 2021 18:23:54 -0800 (PST)
Received: from Ryzen-9-3900X.localdomain (ip68-104-204-241.ph.ph.cox.net. [68.104.204.241])
        by smtp.gmail.com with ESMTPSA id z5sm3680920pff.44.2021.01.13.18.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 18:23:53 -0800 (PST)
Date: Wed, 13 Jan 2021 19:23:52 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>
Subject: Re: [PATCH] Documentation/llvm: Add a section about supported
 architectures
Message-ID: <20210114022352.GA9913@Ryzen-9-3900X.localdomain>
References: <20210114003447.7363-1-natechancellor@gmail.com>
 <CAKwvOdnJ0VUjTX-cyLgtHvy68DHG1VMj7s0huk_FKh1E9pH9Cg@mail.gmail.com>
 <CAKwvOdmr7RttdM25wWKiV8t+tzn8W-C_U6avwrQXQWphT8XhXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmr7RttdM25wWKiV8t+tzn8W-C_U6avwrQXQWphT8XhXQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WsknhtEY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jan 13, 2021 at 06:05:32PM -0800, Nick Desaulniers wrote:
> On Wed, Jan 13, 2021 at 5:19 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Patch looks fine, but `make -j htmldocs` seems to be taking forever
> > for me so I can't render it. Is this a known issue?
> >
> > $ make -j htmldocs

A clean "make -skj24 htmldocs" takes me a little over three minutes or
so on my Ryzen 9 3900X. Just to give some perspective.

> Just took a while, lots of warning spew (but not from this addition AFAICT).
> Reviewed-by: Nick Desaulniers <ndesaulnier@google.com>

Thanks for the review!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114022352.GA9913%40Ryzen-9-3900X.localdomain.
