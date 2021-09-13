Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMF472EQMGQEF45VG3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 697D9409C97
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 20:53:37 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id f14-20020a056214076e00b003773e95910bsf56661412qvz.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 11:53:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631559216; cv=pass;
        d=google.com; s=arc-20160816;
        b=iMZXT4Wtc5SicG9f+D3dycDI0cePI8J/3HTwE1SloKWVtM+071i56cHdgL5egAI0I6
         pfuPqpmYj/nLJaPl7oqvXlNlSXEgRJQdkeMZIEHDNzb1Quti9IoklRrbie9FmJpMlvjd
         wMw+1NAeudEZOvqYXv3gS1NVBcgvVkkpUlsMca6Tm74XZAmLobExexhAceanVTgij4iA
         0JaS5KEmkJx0Ph2uohNM0DzIkgO+eUAupr2wmYdOLCrTLpSlh8y7o6LidK8ZNJHTfrQw
         uZlPmNbeDma0bAuWrI8n+wM1R0nJJSfv3+8IqdthEiEdDVRnQP0oLbcmc2oDovXrVDLv
         5v2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7EphkNBRibjoEqjLpdGEgxK30RF9kDknxEYGWlz5t/s=;
        b=xDLC9uSpvhwOnzu16hHKhiNvUc3LMSCe2T4JBDhURpubr8mzaZmK6+sIKrr15Mxkcq
         qkJQRpXV3Zfajxg68LDNBBzuaqzIS20UNJF238czG+fyON5YIZ1Gst+b9vpznan6jNdi
         czvwgExf43UVt7YghfFACqWIxThqVddmXJqdqfEkjtW61FlI1gBJekxHZweLKYQQHNUd
         esq1QBoQ4EGBrtBANgX3tQDyzNxz9Rr1bxbNYIpuIcMvxkNQ9XrpbR51/QD3h0AmH8R+
         m/hBn8ycdxbIAZdqPlxd0cP4qkNKA7u30o4v0XE/ScsOXP2DDmFK9Q9+Sij32nOqzt/S
         WUKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=praELURU;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7EphkNBRibjoEqjLpdGEgxK30RF9kDknxEYGWlz5t/s=;
        b=VUmZyYH8kitVDqyF5VMB1c34d+kYslgAtO76DMJ0QfC56DDuNyIAk72jWqM5H4jLlM
         ggkC+S9hQ+ImV/aUaTZB8AHGZjlMnNm7mBaOjkQrymsvPjli83AUOJ+ZywW7v3kCFqnm
         cPJfM9WI21YzALU0fdbHJmFgEBFd9eIR63tO1WueuTN8/N7kM8Ty2FNAdp+W09DGtCJI
         jiXLVWclS2llsHwj6nxmZmlofY1buGEdJalUh1F8sOKmLX6/iyeh13i1zmgGR3RiDRlO
         FKLYikqfVcHvDKIlFRcaI3AvXy9cR6f2nnL1+IUxNNCWbDboOosJCXhFfq/Zh8ACgS7K
         ScSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7EphkNBRibjoEqjLpdGEgxK30RF9kDknxEYGWlz5t/s=;
        b=wC7HipdMurCnSmNmSr6x+y+HoyBURleJ4VfegF+tyu/XQOMtd6DD4F476QSAqfKMWS
         jNb7P9GsaSCOs8er2mVNcA21JMelmBrsIcTKEP2tCFU9fLgvYhIjsz3dhaXfiGXzMFMb
         4JX3pL4vaLGNinZQzB/OtYAChpSTj4qcdWIm9kwW1yU+ms2F5xf/PItd3JF0mcuzsJqL
         Ubl/zeu9om5a6XkyJ4iz7XAz9uww7ySjcSAaHVojNl9lxtgDzk6ihBoxwTpsSFD40M2G
         4b03zXjW6StqnBTLS6fsDp9/nC6idbbJDNu+qV2WQBsNpRvaPnJTIISR8PFhxKDnhkpL
         MEAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CvbXFh9ncTGTujo1FJYXkj3JOqiBnPiI5fTcQ51xXvRO/g/yl
	BZy12CD8tvkt0rWxI8Zd6eU=
X-Google-Smtp-Source: ABdhPJzQKbBO7jxKmacUQZK06pXREgV+toMduy2xXG3SMW28R0hNft2x1kat3wL/qdZOozOol003Aw==
X-Received: by 2002:a37:445:: with SMTP id 66mr1095309qke.376.1631559216380;
        Mon, 13 Sep 2021 11:53:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6782:: with SMTP id b2ls4398348qtp.11.gmail; Mon, 13 Sep
 2021 11:53:35 -0700 (PDT)
X-Received: by 2002:a05:622a:2d0:: with SMTP id a16mr974562qtx.403.1631559215877;
        Mon, 13 Sep 2021 11:53:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631559215; cv=none;
        d=google.com; s=arc-20160816;
        b=WS/6dx298Gs13qkxQLqUKN7dFdKmP0z3L+fwWBorGnpSK2uRljjW1D86MH4E01/jTi
         co5fvmvF1YB3pDd/hwxEh6swAPtW3Ok6uVh5PAnIJP4L+ytEn7qnWBoBzOlHOTyoUtAN
         RhDMpvmR3gQ72DTPAZ2JvsZs+BIuNsomOSxgU2ctMqbksa6NYXmHTO0YnG0HhZ5c8+9X
         VPJ6XLYTCer09+hAl5xADGnezSvBbULln95VyUELF238qqna2dffSoFzb/G3CCOgvx6+
         f66dmDaI+XulSr0Sh2hWSsJhsBjUPO9GIB8MIeBktiP7a4A29pS6PJMkgfJ9yI6kOBDo
         IYBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NwDwsNo2dbqpkhp3E4dpbXh8nezZwNUJL7MJaXnPsFQ=;
        b=XaA7V6rSkKNJUAfxLwZvuzTpBIXEqXhrVj76xf03J9Urw8xD5kTc5zabokt5tOCnEg
         Zc8mpFUqZw116Ngg7rFh/GtQ0UsG+3XLbOvoOpy/EC8/dHAdg8hg0yYknANLhE9w75hA
         eitAuAjqvJ9mfBZV1TUQUDksfMbfKnqZ5TLTWHykujYiBNDqZtYP49re6ta5b/NnYc9O
         50qwZdViqgy8YDgUuSOi+Agkc50ipTwpjCtiGEdZ/mvolkysvYhSw8gWiBTDa6LPMI0Q
         TYgQI5u4kbJsILZAk98D4JSIXEpGT4rp8XCc583v/Vkw3Rv0fTCr9uOKitq4KKvU8khy
         mHPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=praELURU;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 6si781435qkh.3.2021.09.13.11.53.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 11:53:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E652860F24;
	Mon, 13 Sep 2021 18:53:30 +0000 (UTC)
Date: Mon, 13 Sep 2021 11:53:25 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>, llvm@lists.linux.dev,
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: drivers/infiniband/hw/qib/qib_sysfs.c:413:1: error:
 static_assert expression is not an integral constant expression
Message-ID: <YT+eJY4JoobVsKWu@archlinux-ax161>
References: <202109112002.NZceUwiC-lkp@intel.com>
 <20210913165317.GX2505917@nvidia.com>
 <CAKwvOdnGaVb1XGwYpNK_3zAEyZ0JC1SDjC1UzzFEH=d_Mdi7Fw@mail.gmail.com>
 <20210913183813.GY2505917@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210913183813.GY2505917@nvidia.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=praELURU;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On Mon, Sep 13, 2021 at 03:38:13PM -0300, Jason Gunthorpe wrote:
> On Mon, Sep 13, 2021 at 10:00:02AM -0700, Nick Desaulniers wrote:
> 
> > > This macro would like to know that the passed in member name has a u64
> > > type, all the things I've come up with fail on clang - but many work
> > > fine on gcc. Frankly I think this case is a clang bug myself..
> > 
> > Perhaps, though this assertion looks a bit like offsetof() to me. I
> > wonder if that can help here?
> 
> The assertion would logically like to be this:
> 
>          static_assert(typecheck(((struct qib_port *)0)->N, u64))

This works for me with both GCC and clang, if that is acceptable to you?
It fails if you change one of the variables to 'u32'.

Cheers,
Nathan

diff --git a/drivers/infiniband/hw/qib/qib_sysfs.c b/drivers/infiniband/hw/qib/qib_sysfs.c
index 452e2355d24e..0a3b28142c05 100644
--- a/drivers/infiniband/hw/qib/qib_sysfs.c
+++ b/drivers/infiniband/hw/qib/qib_sysfs.c
@@ -403,7 +403,7 @@ static ssize_t diagc_attr_store(struct ib_device *ibdev, u32 port_num,
 }
 
 #define QIB_DIAGC_ATTR(N)                                                      \
-	static_assert(&((struct qib_ibport *)0)->rvp.n_##N != (u64 *)NULL);    \
+	static_assert(__same_type(((struct qib_ibport *)0)->rvp.n_##N, u64));  \
 	static struct qib_diagc_attr qib_diagc_attr_##N = {                    \
 		.attr = __ATTR(N, 0664, diagc_attr_show, diagc_attr_store),    \
 		.counter =                                                     \

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YT%2BeJY4JoobVsKWu%40archlinux-ax161.
