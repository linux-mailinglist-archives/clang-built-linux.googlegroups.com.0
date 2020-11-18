Return-Path: <clang-built-linux+bncBAABBQEH236QKGQEY5OU37Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5F72B8592
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 21:27:45 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id p17sf2636691ilb.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 12:27:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605731264; cv=pass;
        d=google.com; s=arc-20160816;
        b=dzcYsa8uCXYVIuZ45LtF+N0OD9SedCuEkqVc9cgoH6taTD7FvRglqE6IaIP6hI+CiW
         Yqzoq1wTyOorNN3T8aOpQBb9yCdko7o6OB39QOpBNLYqk3vwW8IxJyCRZrOhK7XGZU/y
         i+z4U2P0/053MvR+q1EPWpHImsr+MRzBDlld7cpwpZsInbuxKt3NvKVR1pia7sbG14sN
         J3unqJMgK+XkPXQoJ27ApcLeqp6ZBSbyu6gRCFeYqqCbvFJwD8kbbr3xRa6AjNSsGAWv
         8NGYbulivg3bMpwrZ6XcG1PyUtS7iVPohuSHFRKaFtdJs7OmaOYJe1btEaJuHI9zT1W3
         rD1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=P7csUZW6MclWdl1IzB8f0lNoH6ZVGPbaB+IDyq4KfGc=;
        b=kRQ1HZsUcHdngRVEgtT3FIXNOhNZ/CX3o4LIxsueXlxMvJP5ms0B4zMNWzeRJWUiDd
         xNgTPTnsLGvnjUpH/hyFpcs4C6yZ2qFn7sVN9Jiaw9RYHNLUI08GEV4K7DXVxz3cOQp+
         hqDKSiGlfmEuaS5MsaRal9jngFu3EojH51hP441ebQSPzLvR9V9yaUrQvrV40sG9+I+P
         Bo6MQFXVhngwMXkTf3AefxGSM+JIMknrCR69nrGQ3VfTSx/Pa2D6+r3VWxr3qlqnFqPy
         V75FfudvZRpdS16eisMJ0vjq7fqJTZ6V5a2LW9V1aKQmy9USm9vf5Hw1/MIlqXII1znc
         abJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Tk2xsfB/";
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P7csUZW6MclWdl1IzB8f0lNoH6ZVGPbaB+IDyq4KfGc=;
        b=KFLLfauNM0eHzkefMSoSrVOs612aUmWJZOqvYkp/wEHm1KqGFhyrVq0c7rXOXAyFPL
         64ehl/EEO7hGnxZEqd/0qwBB4eMsPiFnSHRohQ9f5RgHjNoHvF2m8iKNaVMgj5I5t+i0
         Tv7QMCfYJeJGIEfKA8jjuGfwm3gyXYjnkd1HYt18RukVHfPjStSVOnyTqalnkWzOTGhk
         4Zsu2wn3yLwRvzg+CLQscHINu0LDJBopSRjOfZcYXThxDZDmVZRLmRAIdd+fJ3PJvr59
         Hamd4RjgMYTqT2MsvlRqlWKQZB0xwx6ZMtmx8ompBooRjOF0gaF55JRHfvtd+U+y19Gu
         D9rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P7csUZW6MclWdl1IzB8f0lNoH6ZVGPbaB+IDyq4KfGc=;
        b=ebZrUg7luGxGUeqKjN/m5Y/J41EdMWh4J2/FzJXdWrJOwvvesgq02ajN+aCl6Unbk/
         YYW+bitiJjIgtqpieAhOzmxvffv6ufiEju7VfIaiAqVgtBj+t42xuxwzFH0pukUCHlIx
         N60TCFkKoY5bVzfQTCWcpDcGuh0bNMp+Cy3eN5TtvvokhEjMCV3+l2SUilfdHP2/tR2N
         V2afd6/eL8PH4fm597MOJsjwPu0yfiwcruAAN/qYn2a3KmBGw05r9eXFc2PRLgbKRonP
         jLHbqjbZz6wyB/VxysLq+gbyiCZRC0qFcFAcuWPsNR26i9gEqaRif8Kh0rRXlJ1sREJV
         CgUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wKpkIHf2AZWRz1ltbYMZQxvld7/8erDxyeYDoPzZiZ6VzJeK4
	SYGNETO8/Bh3onb6o9EZGUE=
X-Google-Smtp-Source: ABdhPJzE8X3aMTaowdP7K8CpaoRR1fFmJ5Bh4DMHIBYhxCmtIioEiSJNVDeSUjKI266Sem7LiO2tVQ==
X-Received: by 2002:a92:da01:: with SMTP id z1mr13620046ilm.214.1605731264242;
        Wed, 18 Nov 2020 12:27:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:a23:: with SMTP id 3ls148381jao.2.gmail; Wed, 18
 Nov 2020 12:27:43 -0800 (PST)
X-Received: by 2002:a05:6638:22bb:: with SMTP id z27mr10576865jas.47.1605731263786;
        Wed, 18 Nov 2020 12:27:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605731263; cv=none;
        d=google.com; s=arc-20160816;
        b=J0Qa5SJocN3wRBZaf3dFBWrNJjAEqCqd329Yi54NH6aRxXhy7n6kgT4YJWWBP5eEAY
         7f6ZYFbNbm+RZAHahGsyceFsjR70VPoERojm/GrJI29bY+r00LbO7A9VF1ZEie2isEp7
         sqBK9sPnqg+PdeNrki8E3fFOCQrz5yifV0LbuKGDF6damYmntGms0WIMQSLoOT0QMYOn
         5x45/HKeUKDFwuDjuQ3QinBiYFoyUBq2rpf93XnUGmjlCNSj9RetwVsK1E5p7Ac0pWb8
         1SnlF1dQgYHhLJTEUr7mc8hsQ4nM53/BwkObn5lLUYSjVURuWAoYpfsajrykmZ4nZzln
         gTSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=W2+fZw/DbM/3dnEsShoDrxQVAEXlcpD4OE7uu7pLci4=;
        b=QZZyVand+qkArnTkqXueZZcNvnCbk95p5MjpSK+YS0jADT6ZQhnIlOV3b6taJmSij8
         WysxGqcPWRUExWYdmZ8E8pdKFRbRNfIcWWw3SmVd8VvDOSfnpFjVN5nujIGp91iDNpA7
         7on03XwOL+Ci25XYQbbrw/04aHJkfwsdHuuzrlJqQVG8D8i3Hor+VR8haCQBx4XA3YAn
         7MeZsfymuGMdkhKzBwqBnzCU9sNhgPGV2+cgqx4Um+1bwe99e650QWmx2L/5KkPKFWq0
         PMovxO2V4Cfmng2hyyesIvpAiXcobG9WLgvHz1mHUEDNFGfJIvN0ZpgBORdHLn07LQAQ
         a/yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Tk2xsfB/";
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y11si958776ily.1.2020.11.18.12.27.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Nov 2020 12:27:43 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C80AA2145D;
	Wed, 18 Nov 2020 20:27:41 +0000 (UTC)
Date: Wed, 18 Nov 2020 14:27:42 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v2 0/3] PPC: Fix -Wimplicit-fallthrough for clang
Message-ID: <20201118202742.GA15147@embeddedor>
References: <20201118000751.845172-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201118000751.845172-1-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Tk2xsfB/";       spf=pass
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

Nick,

On Tue, Nov 17, 2020 at 04:07:48PM -0800, Nick Desaulniers wrote:
> While cleaning up the last few -Wimplicit-fallthrough warnings in tree
> for Clang, I noticed
> commit 6a9dc5fd6170d ("lib: Revert use of fallthrough pseudo-keyword in lib/")
> which seemed to undo a bunch of fixes in lib/ due to breakage in
> arch/powerpc/boot/ not including compiler_types.h.  We don't need
> compiler_types.h for the definition of `fallthrough`, simply
> compiler_attributes.h.  Include that, revert the revert to lib/, and fix
> the last remaining cases I observed for powernv_defconfig.

I've added the series to my -next tree, together with Miguel's
suggestions.

Thanks for the Acks and comments, Michael.

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118202742.GA15147%40embeddedor.
