Return-Path: <clang-built-linux+bncBDB77PFGVUPBBW44QSEAMGQELO6EZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B33F3D893C
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 09:59:24 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id yl23-20020a17090693f7b029051a448bab28sf515693ejb.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 00:59:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627459163; cv=pass;
        d=google.com; s=arc-20160816;
        b=YLrMcpkwPmSLHEz5iUp1SVu+C3KW3A9pXBDr+fYAjN12zqKMltJgNdeWTbPLICdzlO
         7Bku5DRhmJRipEB7+t/TVlJvuwR88HykGBBhujYh+i2KGfX7twu5K/Ea7/8HcODIKcEi
         7Z8B8JeUm90e1XQSfsRZSs6buqrlS5E3KA4Z8enfFPNgHElw5d1TdUGQ4wMmUOjTL1wg
         45n1i4IkF9lRDQ4dCtb1Iedx6u+C7BdDXjqO580mi5eqLHYdWe5PyjR5EgaNoJy1qBeg
         BaxIUTR7FKriyiGtmOLXtuko48xwhTnT+au1ASkr8x1Azzurx5gDaS9XosPUYtZnmYCA
         LtDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LR0TccIg0FYBdFqsyeBDi+LLdlsXuZgnU4GQPlV4Wvc=;
        b=n1K/FOaXfNIiJqhLa6nU/ngmM4MG4NzRVLlqngJ7/bHrjrK0zy21ocwzSARIlk6ojj
         VBehsTNzTTnAFnLyZzF1FmJcwPRMkMDdDL6yw0iX5nKfpQLW7hhFYDo/Wu9wJb7Q1WOT
         cCUJ8huO5w388gLq3T58OfHGCOr6FXyUBg3bZRZMOcdIf4yWiUoZWmcJFWegJCuuTeX9
         yZUhFWwqw+cGTp2rZ/0K1LUWh2AHWVKMoTdOqLd4SSRAQtxowIVf+ajCx/avlgcmH8qS
         u4UyZBEQCUlXZprhgOtfSqC/CvzALlQItnANrLsQ8Vjon8gUf1HZBMb466P0/yTcqDqt
         cPAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889 as permitted sender) smtp.mailfrom=joro@8bytes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=8bytes.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LR0TccIg0FYBdFqsyeBDi+LLdlsXuZgnU4GQPlV4Wvc=;
        b=al5Ecr+nbzjAa4FWA9BUx8BZmvrSeHnAnSoBkUvxka5fcfHok6UnJQYtF9Mr4n/mBS
         apSGB+V9ssC48OorfdBwy0nC8KBStjEqfpF1KXdLFjSraol8xALpeUA1zwepTYRsyPHu
         ZwKJ6F5DcUg60UO4VkL2aum88LMKCpHvTkWnzHQQ78EzgOdj886au6fxwuvI3V0KQY+i
         vcNZceW1uz8Y8A/K66e9T/TgdoZG5uI2SMP8xL2S8BJW3zb/o5AozYV8UzFqt6QzH53e
         uoB4wLmHZGENxFRI7WGcA+rTlS65Ppsm8WYJJtI3OX4g/VzmfQdAJBPtZNqeDsLs2ayI
         FtUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LR0TccIg0FYBdFqsyeBDi+LLdlsXuZgnU4GQPlV4Wvc=;
        b=okW22UMtolk/IHBjoIgnm4MClAW5wE9tUDQqdkErevVwFQ/KDSJXR167ruwh906+3o
         gUHPUMcOh01iNNeZB3uLu94xyJ0onqcXjDZH+78mA1BsuTOvtV6qqp5MyQzV9fUg2nIB
         YYaeOdW6+VjIwz4cq/i2rrFA46wzHVK64DaTOTDbdzFn6YYugZthqVwdEecuQgcfnOLN
         ma6DC/yXuUi6Xsgwn/ypfK/3CeY66eBlqvYpR8Cl7ALryf0VecfoHLnynYyTzOWzRJLj
         evdjq1xVEOW0k/fJSAWT2uG0Fivh/Jxs7RpseocILtCY/BtnvmqcrQw34rdvHhGHQMNL
         PH9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532w4KjO+3rDNfMvL16Ubyz43MMN1M1HldM7VMV6xieP34BxWCNl
	+JLNPD2eUeg8GQxi1sllMeA=
X-Google-Smtp-Source: ABdhPJyG1UsKBiuIRQkobPdMYvHRH6bedGEahzLCm2ARExnUGFBAIOVckBvxhqDSmA30XHekw9wvLQ==
X-Received: by 2002:a17:906:94cb:: with SMTP id d11mr6285191ejy.17.1627459163880;
        Wed, 28 Jul 2021 00:59:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd13:: with SMTP id i19ls1795921eds.2.gmail; Wed, 28 Jul
 2021 00:59:23 -0700 (PDT)
X-Received: by 2002:a05:6402:615:: with SMTP id n21mr33101861edv.139.1627459162962;
        Wed, 28 Jul 2021 00:59:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627459162; cv=none;
        d=google.com; s=arc-20160816;
        b=TG+OTYGilseWVlQiM0keiHXqOibDndeFLm1uybcWzOeyZq6CuKIwVAvrvT/0pYRqDe
         jhwq9NGxKS6psqChV4lNBzg704rC5xn8vEEs8rAPT5Q63pEXhU+yTpNkSLMJWfDG2u6e
         M2+hRZh7xhKD2KTklBxlST6mwRdGU6bcyCOrCVZJZJeYxjSggLinOAUJtPxhCHXH/mCC
         kMnG8PXHxpvgw/IdgDi4U4OugjnifNv7OmE58pN7EV8nFt/7EKZkHA4dB/AqwqOn71ZL
         OvdMKmMWwatrxZt4c4R8L9olqID50bfyDs2g4wBlWZ5IG1gZU0pm9YFSnaZ4q1SsTRvN
         mFag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=K6zBMU2eeNZw5JoNglM40QXLBqTcurqfJTV5FFR6JkY=;
        b=XiLYwPnglyXj5i8NbzkZddG1p85gGewoeJtUKq3SM4fgvum88or5ECgcNyy7WYWMYj
         tlshv23VXpJHexgYxjHZnf3ED87OnzzKw+F+hTeLZmeVyE2Xqua3RZejhIbCVleE5M+d
         39j4rtFRXsW+sFxx+b3bOfZFSMcLSag14z77dW0cUhErlN6E3Ua40z24wmpSvAvdcsQ8
         SQXblGzlEl75yBUHjA2UBVJiGOt0atfrwhnHOm6900DFWg9qZzVVB3tDOSjfWpZx0A24
         e42EPVtFx2FrV8WEUTY6SAuOcR8lbMiK4htqYkkfB9T/qaewLoxI4aOUBl6ZjyWtbcor
         9QOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889 as permitted sender) smtp.mailfrom=joro@8bytes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=8bytes.org
Received: from theia.8bytes.org (8bytes.org. [2a01:238:4383:600:38bc:a715:4b6d:a889])
        by gmr-mx.google.com with ESMTPS id h22si241024edr.2.2021.07.28.00.59.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 00:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889 as permitted sender) client-ip=2a01:238:4383:600:38bc:a715:4b6d:a889;
Received: by theia.8bytes.org (Postfix, from userid 1000)
	id CDBAF310; Wed, 28 Jul 2021 09:59:21 +0200 (CEST)
Date: Wed, 28 Jul 2021 09:59:12 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrey Ryabinin <arbn@yandex-team.com>,
	Will Deacon <will@kernel.org>, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 4.9 1/2] iommu/amd: Fix backport of
 140456f994195b568ecd7fc2287a34eadffef3ca
Message-ID: <YQEOUD0uP6v/i3Y0@8bytes.org>
References: <20210727225650.726875-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727225650.726875-1-nathan@kernel.org>
X-Original-Sender: joro@8bytes.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of joro@8bytes.org designates 2a01:238:4383:600:38bc:a715:4b6d:a889
 as permitted sender) smtp.mailfrom=joro@8bytes.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=8bytes.org
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

On Tue, Jul 27, 2021 at 03:56:49PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/iommu/amd_iommu.c:1335:6: warning: variable 'flags' is used
> uninitialized whenever 'if' condition is true
> [-Wsometimes-uninitialized]
>         if (!pte)
>             ^~~~
> drivers/iommu/amd_iommu.c:1352:40: note: uninitialized use occurs here
>         spin_unlock_irqrestore(&domain->lock, flags);
>                                               ^~~~~
> drivers/iommu/amd_iommu.c:1335:2: note: remove the 'if' if its condition
> is always false
>         if (!pte)
>         ^~~~~~~~~
> drivers/iommu/amd_iommu.c:1331:21: note: initialize the variable 'flags'
> to silence this warning
>         unsigned long flags;
>                            ^
>                             = 0
> 1 warning generated.
> 
> The backport of commit 140456f99419 ("iommu/amd: Fix sleeping in atomic
> in increase_address_space()") to 4.9 as commit 1d648460d7c5 ("iommu/amd:
> Fix sleeping in atomic in increase_address_space()") failed to keep the
> "return false", which in 4.9 needs to be a regular "return" due to a
> lack of commit f15d9a992f90 ("iommu/amd: Remove domain->updated").
> 
> This resolves the warning and matches the 4.14-4.19 backport.
> 
> Cc: Andrey Ryabinin <arbn@yandex-team.com>
> Cc: Joerg Roedel <joro@8bytes.org>
> Cc: Will Deacon <will@kernel.org>
> Fixes: 1d648460d7c5 ("iommu/amd: Fix sleeping in atomic in increase_address_space()")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Acked-by: Joerg Roedel <jroedel@suse.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQEOUD0uP6v/i3Y0%408bytes.org.
