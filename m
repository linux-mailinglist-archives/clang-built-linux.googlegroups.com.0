Return-Path: <clang-built-linux+bncBC7YT6MQ74KRBGWV22EAMGQEETPQKMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id B46073EAD7D
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 01:11:24 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id o4-20020a5d47c40000b0290154ad228388sf2254918wrc.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 16:11:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628809883; cv=pass;
        d=google.com; s=arc-20160816;
        b=PZGSV944KMhid+AlFtbtTVuKnBVxbgO/Eg6+LGG+br3QFdizLaLAJIcG9BwaUHRMF6
         kXvYbwviRP+H1pr8SF+X1jELxD5g11K0bSgaL69earzldzmHvNbbXlOF59lc4UJ9Q5ef
         U9UrjR3sxpbL6di+NK1F2HDTmJHNLHYvfCOgeQknI+mD8foSjeVoycapSg9UtoEzlNm/
         F1qVluYczN5IqcOAF6zR2egLQvduTuciJXoCZX67jIEf59FfqNB3AvcwywjH/RJhDk7Z
         XAwj1+jMUmW0VCX4CaUBJTrdHHOnXl/6aJYID5h6LWad5aOf658fyiYkBNYeUMw9NFpt
         GDlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=qxj14/Lcqu+z2P/mjw8aSMPFRsnwMrg3WhANEpRoi4w=;
        b=qmPp80eojjDNSQbFS1aoZ0Dt3elDuY5e2xJGd8DPrq3/msSeCA/IZ5J3I0rmTssNZ8
         joBnPjmcESSXEgP/3V2YKKOYdI9M74dJHw5gvZRNNBxRFAfdzr6mj5jzcNVc7unhz1UV
         fpjzpkZbz74+AgBt69II9RVKc3jPjAHtNhjaOnap8MwpbWeTwWBrQERWFAlIeyF8QgVz
         sy11DqLI6qwv9p1st5EGsjugK/nyXjyl2nR3wXWw3g5nckNwpdy9nBLs80bDibtg9B21
         1oK9eE5xqfNimWWFLjNZ/Iq/96u/5xddlzUzOkQs/shzKE2Lh6sVwGeb0UE4aURmvwsM
         ahpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f64+GA1Q;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qxj14/Lcqu+z2P/mjw8aSMPFRsnwMrg3WhANEpRoi4w=;
        b=fFQevKOQ6SkVALn+iy1vzlAQ+fbZuCXG/pfWuTE807jGKxlkMRDyC2z+46SwXBjo2d
         MY2/R9UZZd69JAu8gqhVIqubYaerUQtRUdP0rFA8qtwgj1I9x0OmxbpwjKoLgWBLKlf3
         Dh/SyNLDBTIHOFsVTUvg0l4VhJyU1E1FKfRuXNTNv3plmtwILzUpmQNZRr2+D84HRhVQ
         dURBacCw5AjNbilcS4IcgWdYwgZRoZnm1qZAlvUGYR6MTK127+9NlxuzLYRRGLFD59Hl
         TF96oFvqtfHwnVsa0snY1GH8gsnvPqAn9DXLqeL0PxdUNIK8TPWKPGKCx70i598aUoUt
         kSFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qxj14/Lcqu+z2P/mjw8aSMPFRsnwMrg3WhANEpRoi4w=;
        b=UUsrf3QIsvPj9xHA4z4ahSgVJ1u6lYhYARJ6MWak1qfDDuQhX2yfmRWJSrL6hLL1c8
         omHqeZunL0lG2bh71DB6pD2oltdvO4o70e1YTAEzLLgwVwJLZ0yOV/Gl6FIWVcZXFp6d
         ZTXi+b4VK554LdNprSh54NA8WnUijJ7kdsGukRYgYVbNxK5vu674uydxDxYq8qHtjrcv
         UiuhTZWsdPEVfupc5C6AZZWuP76ueKxSmMFmbSmdxqDTTfzyeM76PhUNXyn8sYmSaJEF
         2mocqROm3HgKroF4pfpVzCMPrG6wBBkc+oYkMq8NZvXONw356qS0MWsoWDy9KB3zkp1o
         TlbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qxj14/Lcqu+z2P/mjw8aSMPFRsnwMrg3WhANEpRoi4w=;
        b=WUnKRgop84+uQjYnxoUcvBQ0Vk2KVKvgyVh2xEnq5Ffk7jSow9SfFwswQ6VOWCnGiF
         KLGni+V8AYfy4ARUYqZfFxk76c+6+8f8+OWWmnZS22CtTqhA17JLBd3X1mJZ3aqUtWfo
         8QAG7ONBqDc64wkcnytgYBu+vWO00pSVt55CoVs+AXZJHMBedi+H+73szXghX2QyJwwb
         +z6iArROh0z6Qqf/C6uWZTElijQ9Gceq1vY1wT9vrhYwYOYq4BT9QYFER0TQ8E9Cp801
         tBfMh04CMSBGP6br3boTGW73fm3zbmwa6SXH8+yEdGT5/VVKCOne5c2abXkOFaYDYsui
         ymuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ES4olbLLwAjmNEFeDMCP718aMdm9HUlezY6V7iTEjwugYwWas
	5Cz1AqVVrtC3AWiT3idK0gw=
X-Google-Smtp-Source: ABdhPJx8Lj4CNLpCPaU/mZhNowI/gE7mT/EjLuLx2PoJXHP4YjqVBGB5DbMdbFr11j4ak/c6rqRaSg==
X-Received: by 2002:adf:f40d:: with SMTP id g13mr6393521wro.69.1628809882426;
        Thu, 12 Aug 2021 16:11:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cd8a:: with SMTP id y10ls5620944wmj.1.canary-gmail; Thu,
 12 Aug 2021 16:11:21 -0700 (PDT)
X-Received: by 2002:a1c:5457:: with SMTP id p23mr766186wmi.50.1628809881537;
        Thu, 12 Aug 2021 16:11:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628809881; cv=none;
        d=google.com; s=arc-20160816;
        b=qXUYmnEIPWpPtNSMwBN+fRobK5T5pjVQSzM9cHT2G+gzYt6BA0wY7JYjheKbo9K/x8
         42SfRNB0W7wehCDI23eoitpLH8MxAGwq2hSejPCwYBzOztXClRZQFQn4fc1ixOENHrA3
         UkG6m8Fr8yWZruBa4ZUyCOzOeQpOmG3XVVtoB6sNDVyueel28PXwPHwJv85cjZPkp0jt
         LSwwowNtvR1BM+Ad73L46dzmjDmisJOJkdy1hyI7b345VZ2dusgaDZH6N5U+VmkT/dv2
         DmLiMR032Ip5h1LjEZ8CEUauYbOajh2Eiq6ExPcXFI1S4mPXpQaFPbwrSobH/q93vg6T
         qOVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9pldq4BQLhbXUiMQyVqnQvEJ+WijB05dp31Np55Rm74=;
        b=WBEO2TKzg3s02DkyTVfoMw7HnBaXsbgZmzGkXDI32qKxXEWYkkpfsf7NCVXsQVa/Sp
         tt9dNiXASIFo/4SDxbxLggw675mSnS+ahSGaAWO8K6PnayQk2dsQZNf0P2u4dZ+vr9LN
         BEHUAIb/NM06xxAJbU3hXpmzdHltxZr4jfsIS2RrT6mLLh1eUqwB/2IqH11wRahHjYzy
         T+ttvnlKVqTWSPxeaC2Abn/qpCdQ7jq8jM5bt7a63M0ly9901sltSCBIZwn6h83pxcly
         2oSyR58bSxhjvjifqvqDSKn5NDoDUMILEJtob66fCV5V+vfHs506avDaJr9yxVj48S6M
         Ox+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f64+GA1Q;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id w3si780880wmk.1.2021.08.12.16.11.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 16:11:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Received: by mail-ej1-x629.google.com with SMTP id b10so6283511eju.9
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 16:11:21 -0700 (PDT)
X-Received: by 2002:a17:906:4fd6:: with SMTP id i22mr6054053ejw.92.1628809881282;
        Thu, 12 Aug 2021 16:11:21 -0700 (PDT)
Received: from localhost.localdomain (host-79-22-109-211.retail.telecomitalia.it. [79.22.109.211])
        by smtp.gmail.com with ESMTPSA id v24sm1789314edt.41.2021.08.12.16.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Aug 2021 16:11:20 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Phillip Potter <phil@philpotter.co.uk>, Larry Finger <Larry.Finger@lwfinger.net>, Nick Desaulniers <ndesaulniers@google.com>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/3] staging: r8188eu: Reorganize error handling in rtw_drv_init()
Date: Fri, 13 Aug 2021 01:11:19 +0200
Message-ID: <1651213.ETx7SW4KbR@localhost.localdomain>
In-Reply-To: <20210812204027.338872-4-nathan@kernel.org>
References: <20210812204027.338872-1-nathan@kernel.org> <20210812204027.338872-4-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: fmdefrancesco@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=f64+GA1Q;       spf=pass
 (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629
 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thursday, August 12, 2021 10:40:27 PM CEST Nathan Chancellor wrote:
> [...]
> Looking at the error function as a whole, the error handling is odd
> compared to the rest of the kernel, which prefers to set error codes on
> goto paths, rather than a global "status" variable which determines the
> error code at the end of the function and function calls in the case of
> error.
>
"status" is not a global variable, instead it is a local variable with only 
in-function visibility and it has an automatic storage duration (i.e., it is 
allocated on the stack frame of the function and is destroyed when the stack 
is unwound at the return from the function). 

According to the above definition there's no difference in storage classes  
between the old "status" and the new "ret" (the latter being a merely rename 
of the former). However, "ret" is a more appropriate name for that variable.
Furthermore, your handling of errors and return value is more consistent with 
best practices. 

Therefore, apart that minor misuse of the "global" class in your commit 
message, it's a nice work and so...

Acked-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

Regards,

Fabio
>
> [...]
> 
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/staging/r8188eu/os_dep/usb_intf.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> [...]
>



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1651213.ETx7SW4KbR%40localhost.localdomain.
