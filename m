Return-Path: <clang-built-linux+bncBCL67PHQ6YKRBY74Y2BAMGQEYAOYUOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B70933EB83
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Mar 2021 09:31:33 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id l63sf12612959oia.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Mar 2021 01:31:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615969892; cv=pass;
        d=google.com; s=arc-20160816;
        b=WaYfWRMTDCz7h1xza4NUOSJjXvetASg/YnODcZPnM2aBC2yBjaZ+VQiRiYFvbwM87q
         utAbUUI5DhWCq13t3g1E5lzgGluF/Lz31WSwNukLEHW6xoY6QjxgcX6TaRVWMgy6+Shs
         ZwviKYge/DlEjHhybdm4diX+kEv8rM4n67D3/R86LW9nsTJjNcFgkOZcWTwC3/Kc6JFz
         ez3LLGFRopG5vFA8DPRxvjQWs1C9bFP+kQPMPyrMMAZVA+qE/6fB7iI+mNrMGnb11rbT
         B86OFTXnaulMbn3L/Uw5S+oA18Cwnyv5bbBqr3ram50TYexPAynBszThx+X5rZCDhObF
         1rgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B0igcAiV1xnXtz2twPoCE/HkvhIqhROTx0MH9UJHfzw=;
        b=Z+1o6ml6dxNYHBwE8jZqZ6owUaIsKPuo7dm7T0uOQxmfJV8kA217YyDDyYCAZeX8j+
         ebebbUSCkWkhubFOh+UXi6p2jQFb0nWdQBINU2dcSzCFPflXEWm/vOd5HUU4bxMjx6/Y
         GWzlUqw2cPK2ruTanl+cna7rVJxQhx6wKvAUyS+mBICNWtadUMT1rLOGYURBcBVmu7UN
         hdtOWP2qO/ZePSnGdSFhgGQLZEd7WHtaKWuZPcO4M0iSiAcAvJvvEmbFkdrTh2+xLIJo
         YjQyMQBwPrtRm5nVak6hYFpfVb2j3gXTYrJgThPEiWa6O0G704weZ3CBErFfRGNB/pFi
         IwNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Clfjn9mM;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B0igcAiV1xnXtz2twPoCE/HkvhIqhROTx0MH9UJHfzw=;
        b=pWGiQQWKlWI1Io4ebzFb33u6C8djfYxsfx3NpKdMxWHrsvgSzwy9npwXdH6DF+ajbo
         oBZz6NfVaHnJc7olaQhR+6UjSPN/Mfe9gx/COrw/cnHgpEha13xpKSKYspEtw4g4LqgD
         bWGyJxP8YhrMF8C1JFJC7G+mzwVGGFkkCIqPO9YBs18CLqcwxZRrPiC9wOKB2/EMFOUO
         dZ1QyljqfmcIaPohSgOmO4Ob738OKJVrdnCGSogtLlpOxV6JQeQcXwS22W1GiC+UTXNc
         s7HnmwszwfpbbjwTbiDYkIWSk0DZoBAYjO6yaoxoHy951oKXvSBVTuTbwa+OMoLhPuY1
         toNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B0igcAiV1xnXtz2twPoCE/HkvhIqhROTx0MH9UJHfzw=;
        b=g6D6k2NHj+xegMKfzLZMf1t4aVVKxLIrI3CpsFQCECcSLNNkI3LgGS5sccWNbaV2qW
         tkXF32IGJLQgB2+uIppjylaEuQoZZi6of4EkNS0C3L11gH/4ixiWkby/YanHDUATRsLI
         3qEC3CxYnVoQAQfK291oitGoQBa+oLhC4ycdwO9mlMS2+m1zSnFNzXO3tI8VzZGon+Vu
         J6HS72MfYPhBzBe25vScsjAQlujSx8CVhGLGg5zwdxgi50XksUOszLQI+hU0Yn6zOHhO
         LgndQwhRSh6oeKLNPn6OeLG4MWBfUEXMr/P4bHJoAEa5oXgPGOEZeuNZq9YiyTsEC2Qy
         neBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532P2rpBXlBQsITT5fuPUVKN8F4gJXWIeWG7LTtK250J0jsuXy2Z
	ldP83But5whnxYqaASngU98=
X-Google-Smtp-Source: ABdhPJzPH1WAF/ccn3112oRNKFQS+ssa6hILvda+wyGQ/4srnqZoFF4D5Vs8xGMYo2E+aBlfkDp+qA==
X-Received: by 2002:a05:6830:808:: with SMTP id r8mr2499558ots.61.1615969891329;
        Wed, 17 Mar 2021 01:31:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c57:: with SMTP id g23ls5798768otq.11.gmail; Wed, 17
 Mar 2021 01:31:27 -0700 (PDT)
X-Received: by 2002:a9d:da4:: with SMTP id 33mr2469199ots.176.1615969887068;
        Wed, 17 Mar 2021 01:31:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615969887; cv=none;
        d=google.com; s=arc-20160816;
        b=LqMOiXub01N2kTiA/f6r42NyGYB72IMTOouYqvkzPwvTo5RvrkNl6i8NsaXls+8GsN
         CZegnhi15/VVhBq1niKNTKrMVnSWSa0ZOQJpIO0FbCXTjKMZlqC6DQoBPh/zBK9SQOxj
         BdRb2vOMC/ugjNvnOZcI69Ir9JXUw6ueOJGPPThH7gx5964mkvAVLSVA8vCRzF4MsAYR
         N3eJ5LMm3Q7cflsmKVlMawNz4fuZDnkEBzSLbnpm5Pe1LAt+plNGS3Nl74JrPYXcVR8a
         WHunhmX5PJFYpLaQeHpzYaEBHzD+OKbf9/y5eSy3Z6ulyLgIY+5ZP8ELpqRswZpq6UGa
         zwAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=N3474djdvAvf1UUjfv4aMkjL71hJJeyhzMHeV2tY0sE=;
        b=uojvYNw4JvTbgjYJ5NkOWp3FTSy12sNwjYKBeR/KWnTKPGa9pR7U1dVJDQx9L1dyaJ
         s7HYi2SpKlUPpvy4lYWWtqYV4YxFd7fS0VIUEEYqfFwXzRKJyhN5vj8uHOI7yeSReEFJ
         0P9jHSJomPenkpQAMVC9hpUKzFATlX2cHgIU2n4yC1oD9XTTN3X79DwJqDWoo1sz3PUS
         Gj/HHjbv69rsEYal10FTGMw9QpcRhbU42rFaf9dRfmMyUG3YQGQxJWSzCSqw8AuUZZLj
         +R4xDZCDwAQklCadFy1T0T7AX6IYnTz+KcPO2wzeRorJ1yVfkaEF85FbPKt2ZROBGv1J
         5e7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Clfjn9mM;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w4si733991oiv.4.2021.03.17.01.31.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Mar 2021 01:31:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B780D64F2B;
	Wed, 17 Mar 2021 08:31:24 +0000 (UTC)
Date: Wed, 17 Mar 2021 10:30:59 +0200
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Sumit Garg <sumit.garg@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>
Subject: Re: [jarkko-linux-tpmdd:master 10/12]
 security/keys/trusted-keys/trusted_tee.c:288:21: error: a parameter list
 without types is only allowed in a function definition
Message-ID: <YFG+Q8kEkyzpJ73n@kernel.org>
References: <202103170434.3XjHg3VL-lkp@intel.com>
 <CAFA6WYMs8ifW1sL24ky9h47nxAyhtiS_a5g8611WxLnaDy-QYw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFA6WYMs8ifW1sL24ky9h47nxAyhtiS_a5g8611WxLnaDy-QYw@mail.gmail.com>
X-Original-Sender: jarkko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Clfjn9mM;       spf=pass
 (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jarkko@kernel.org;       dmarc=pass (p=NONE
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

On Wed, Mar 17, 2021 at 12:58:52PM +0530, Sumit Garg wrote:
> Hi Jarkko,
> 
> Please incorporate the following change to get rid of the reported warning.

Thanks, done.

/Jarkko 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFG%2BQ8kEkyzpJ73n%40kernel.org.
