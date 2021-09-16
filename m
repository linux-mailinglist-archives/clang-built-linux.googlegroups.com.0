Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB77YRWFAMGQE74XFPIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7689340E2FD
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 19:18:56 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id g9-20020a0565123b8900b003f33a027130sf4526675lfv.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 10:18:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631812736; cv=pass;
        d=google.com; s=arc-20160816;
        b=xUTECcq9qdKzycrpv+kS+EilB71L2poDzpTHaviGOlTtLZJbTJZ2k2vrfhOY7WEkE5
         HawqV+kik5YX49WFNmfQr3fwGtnrSK5AqeaKnBH94jgqZg4yGpkpnOOKqMmIV/ULVZhV
         4ZcZP/uchhxP5kUPRsi/l1+Wg9pu/V9OBVoZLk2qzs/VBijt6HWG+/UTvbpzsJt806Yn
         O63VOVXtQgWcI+ZMHXqwuoqg07/dbdjPTtIlHHkrSvlvKu0bt/Q0Rzc0IzkQWTm4Eahk
         xXmeeCqR6ZIVQspn1mispNHU8kX4JJSQLzvxGUjxOeIDkD0/xw/IrNy6d+ICIOLi6PGt
         UCig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=83aa5sLCi4qcDx1ir59xz+k48sTUwUeoq8t+Ohlo09k=;
        b=a6bTVseigvNyBXptrJ7BOVH2DQ6uCTXTGJYoWZBdXNWnyR4WYmtqlyOg+QfMNplHNy
         j/n+mxMWN91nDmolpZPHyOXINb9dtdH0ewLMqhZ8XU4hovQ69z8UcUMPv+v2ArsxukW1
         pNGuF0jUC9NY7SQFm5pyDPGXir4jPV/wUvjP53v4YIkJmzRuz1xW1LKi7+R01xl85ZZl
         Fw/rr3laXNgz0m2yO5yei1z69Dv2rfuQX2hro/Dr402lEzuRCgN8YhQryQ5CXjkG3GYY
         NHkAUGr4ANKkwMIwXryK9w3yF+GqTsQi5eAzcuesmY+csnghKOGmsWkymvw99Ln3X/ve
         9agQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=TnBBOysn;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=83aa5sLCi4qcDx1ir59xz+k48sTUwUeoq8t+Ohlo09k=;
        b=QwrQfjg1XsesLkVlaQ8DGFLD5/vE4b8/Ftf+5oeCm4tGw7TJkODSKYjcSvP+uO5Y0O
         XQdGFC2+Ex7oz6NkhcBxpPTxRlzo3uLRWmem+wt3K/FnJV37OeHQ1RNk0pBNplB+z77O
         +Kj+DYHeWg2ryI9fGc/nPBdVfbAImerDVBLq3JpeiaMYNWrsphM3Yg7RSd/E40b1VAqC
         sxURepFfVtSZqGF6wMOydxIyKiEtHmAXFytEeHorC3rV5UBWz58YMVW0PA4mNYD628gn
         ASOPO0r9Bsb8Ss7Llvcr3w5QPvExKntzfUPTKpKN442A70++JsuWwrIS0OjBwwq7+w5F
         IDsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=83aa5sLCi4qcDx1ir59xz+k48sTUwUeoq8t+Ohlo09k=;
        b=TjNjXCRf8z74pQ57aCcX+2iYw2NPrsJz4F5lH11ZwMMFmRl6Wycpqln1tkqx9dxeIG
         r0w22Azr/KKT2Ng5AbvAghQeHP916PEuS9gJthuXXfT9CDUF7zb0IzgW/ItH/AHSHmNh
         Cy8eJ5ug2j6/5fcGl3kz57RBY8EE8yGR6oE7P9pjoc65FxHS3tucqTqDjRv5wnZwkRkN
         dJjEIhiweEU0gTAoPC/KIJBsBf3hCeIikxTPMvSVLGrRSJ4g3QgHBYTprfgQhb0Tqtlo
         p3um/NEyyn4XN6Y1/1LKiQSE+SHg5oLst2zewiqBk8jSS6iVkuxJkY8jL81Si1Mj1clW
         HTaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gXY7axzFEDF9aUKSgdCft0V0Lzyqtm03PXF/SLU9DtKNrgIv5
	fOu/5EsrGwfffDBc1nAVc8c=
X-Google-Smtp-Source: ABdhPJxkSk2SgYy6Uz5dY6w2HvBUeZO1b5lcKL54H9Y60BLtoihwGUymDQPY42TEXx7qiphnh218Vg==
X-Received: by 2002:a2e:a549:: with SMTP id e9mr6062082ljn.500.1631812736019;
        Thu, 16 Sep 2021 10:18:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8652:: with SMTP id i18ls943920ljj.1.gmail; Thu, 16 Sep
 2021 10:18:54 -0700 (PDT)
X-Received: by 2002:a2e:8e62:: with SMTP id t2mr6110367ljk.477.1631812734414;
        Thu, 16 Sep 2021 10:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631812734; cv=none;
        d=google.com; s=arc-20160816;
        b=K7nXw9q63392hkQNbOMRfB9zkJbdoHoEWAJ1nVP7sb3+Dup5TjCHeSzlfwR1CoHy5o
         6tyEYbfElX7/YzVXmdOcWxQcmx2pQoWc359XGugTqii6diqLMIYMefBbrDm3uNWgC4C/
         Gcv+J9NhDwAODgHF9Pupqeaqcz8i9XtfiJcPf4Li9V9c2DLK6JrHHE+g7kCRpAUm1e65
         NOIxrh2sJ/k4DV7vViP9uwCaExlhBBTy0UZI0HUBgfYk9ZpkZLwoZtOwQI5aTkVhqCnv
         nqoWEnSo81xyXgLKAS9pnIIIcx5jHhhDKeGyexBrS61ECmEM90eg+zF+BuulVb+mMhwC
         qNkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WGTaW9wzVo3mRbffUBHb/Jh9Yaw6al5FEDE3OWWucQM=;
        b=BwLqVsBQJR0DTR8/AxKjEL2XXM0lVmOI5/SagiUSNYa77l8v+e9++DkD2E2AeJQbYd
         DAdIqkvQTwNJAiZNjCQqG6+5BVqvwr/oRNlWJRkCx4iKtv/hAYNn0GmddvAuKUjW1SAl
         sD+z8ZXSh+YA7qSDI6IUoQ1GOc1CGntb/NlGS49OHvh8i0NENbWRerRqVaaxAqDu9reZ
         DySQEVGwNuqeTQJ4fiVE/06PQozJem258k3zOuJwo5t2abzSVHyk/kdK9d4ct7sQMnOK
         dEjz+ZwVcsVUcjX4np+Ja6oKjLcI6BXQkj4cCjKyeZzN8jyOj8xAi3U2rhZZNkZnjviy
         VZbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=TnBBOysn;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id o22si295991lfu.4.2021.09.16.10.18.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Sep 2021 10:18:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f11c6001e49ea6afe1054f5.dip0.t-ipconnect.de [IPv6:2003:ec:2f11:c600:1e49:ea6a:fe10:54f5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id A90881EC01A9;
	Thu, 16 Sep 2021 19:18:48 +0200 (CEST)
Date: Thu, 16 Sep 2021 19:18:42 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	x86@kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 1/2] x86: Do not add -falign flags unconditionally for
 clang
Message-ID: <YUN8coiEx3JZQytc@zn.tnic>
References: <20210824022640.2170859-1-nathan@kernel.org>
 <20210824022640.2170859-2-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210824022640.2170859-2-nathan@kernel.org>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=TnBBOysn;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Mon, Aug 23, 2021 at 07:26:39PM -0700, Nathan Chancellor wrote:

A couple of nitpicks:

> Subject: [PATCH 1/2] x86: Do not add -falign flags unconditionally for clang

Make that prefix into "x86/build: " 

> clang does not support -falign-jumps and only recently gained support
> for -falign-loops. When one of the configuration options that adds these
> flags is enabled, clang warns and all cc-{disable-warning,option} that
> follow fail because -Werror gets added to test for the presence of this
> warning:
> 
> clang-14: warning: optimization flag '-falign-jumps=0' is not supported
> [-Wignored-optimization-argument]
> 
> To resolve this, add a couple of cc-option calls when building with
> clang; gcc has supported these options since 3.2 so there is no point in
> testing for their support. -falign-functions was implemented in clang-7,
> -falign-loops was implemented in clang-14, and -falign-jumps has not
> been implemented yet.
> 
> Link: https://lore.kernel.org/r/YSQE2f5teuvKLkON@Ryzen-9-3900X.localdomain/

Also, there should be a second Link: tag which points to this mail
thread so that we can find it later, when we dig for the "why we did
that" question :)

I.e.,

Link: 20210824022640.2170859-2-nathan@kernel.org

> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/x86/Makefile_32.cpu | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)

with that:

Acked-by: Borislav Petkov <bp@suse.de>

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YUN8coiEx3JZQytc%40zn.tnic.
