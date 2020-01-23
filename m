Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBNNAU7YQKGQEE2XVF4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 210B0146EB6
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 17:56:23 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id k24sf437731uag.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 08:56:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579798582; cv=pass;
        d=google.com; s=arc-20160816;
        b=LJIZ11r6Cp6In0M9aucMr8DZh0NI4KMxkFrs51gzYiBIIrhY2yfQSdXCBNc9tIpx5H
         SXosaHcaTtxTQI4A553Ej13Qb/l9HOcnj0plBWLE5mJso5JzMmlDANPcP1++7234FXKR
         7+jWhribFea3iYYRZPmHA7LihXjGyRh/VPKvo0ZoYWO8ZKJjGTTp+HClJlF06XV9eU5M
         EHcOhhumdSZbmufPaGFmBnFjc79yZI5TgviMe66PKn43TnztN1Btdp42SxiNPwbiYfg3
         0jRAwi8MAhQSIvtZPEt8uw3X3YtmuXt96hpac4vs000G5xMZq+ds5h3iP2A7vTd8fP6M
         s0yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=A7FQhW4h4GS0qwNnY3TFEW3kjb6pK7XL4aJxDtCddXE=;
        b=axlUcSD3q2OnJBnzDv+J1ePvzkJ+J6mh1V45Ee0A/bHwXAGBCATA5Da2CzW0kSTu8S
         7efK48DPHlIhuYu7CkNInh9oeyRmLCdHGuel1m7TPaFPYtcO6rXXfG1hrWsOessOAOi4
         IIw9z+zyKTpePVOZjchnqCqS7hpItyrjNbhWlBPlfy1CrtEk5sxjSvRD03WZvrO7GyxQ
         Kx6ntJNvlTagQrGFe3IwCoa98rALoOXLqSoU5mFCz2cAnFLl4DNdaagXTmp+ka6ybmXr
         fqMmjGToJw8MQ1C3DN/1rnm4OhmE5NJQCij3JpsBOj4kyF/bmiJU7MS5olzJP7EJG0CP
         1Ilg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q+TtOV4t;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A7FQhW4h4GS0qwNnY3TFEW3kjb6pK7XL4aJxDtCddXE=;
        b=Z8RuuMgwBJGlVBFZ/d2bbDuvpTNa0mQFez/q62hzBu5Bcn1qjo9noHvlcehKACWYWO
         WYXIKpHlbKs4UjalYHpYJAbMlnRylOgVeHdS0tvbrtGonX+iCsYC3uN/SqOpRwdiKLE1
         qWYG0Nn3vSXz4Oh2/OrN/TURlQ7BrpYR/m+4dZC9/IJWZ0UkdwxbNvWKCEx9zZE6jIr/
         zLKxIGpAx0KxapnR7RILNFDJgvH49hJCkabpwSA4Fa0Cqng35gW2UPHDydtIKsUO/1pB
         AoI0qjcS728jCcoXcMynOCvziaZrHnc89ovctl142G3tBOLCmxRyppwf2YbUroLW2vuE
         ReMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A7FQhW4h4GS0qwNnY3TFEW3kjb6pK7XL4aJxDtCddXE=;
        b=g56+vBkEReShEWYu3/BK0vIhijmCTLR9HbjEqbdHb9WnUXPpw8gEzP1NvIaX2AyCDN
         VxsSon9TrRma5hAA4m4VSIlpJN0So8cylrqElQ6GwudLVnMMGRdfQOolHyfuQQqtTD/s
         J3aboArnPLXrHUQpNPzELI3tOZbTMJ5S9vzwYwQMAl09uH00JfyfIvFqrP3ypNbbBk5I
         7GjmCKk5tv1uM9zZaPKNh4yNjm6dyuL+QOVqmZM7KJutDJ+WcMtYXfafWKldiY+zqItx
         ypsneznXVbiyYchL8vaK0TnyYWELS2ijat/urrznKlmqKvyluCKm1vx8BtUE0Fmupcp9
         Vchw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWI5v7E07BQjSScCHBXpxAgu1OMI+zMjt4+EcKbnMSPu+ozqHC3
	kh0Gqz+Z/2ylWW9I4gm63/A=
X-Google-Smtp-Source: APXvYqyZY5bju0zcADSqkX87zKs3bn8ZmVFGW4Fw3eEAVeN4MCt4LrKgL3J7178SoSTzTHphdI8chA==
X-Received: by 2002:a05:6102:2437:: with SMTP id l23mr1130628vsi.23.1579798581976;
        Thu, 23 Jan 2020 08:56:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:1de:: with SMTP id h30ls146585vko.2.gmail; Thu, 23
 Jan 2020 08:56:21 -0800 (PST)
X-Received: by 2002:a05:6122:10ea:: with SMTP id m10mr10539318vko.74.1579798581482;
        Thu, 23 Jan 2020 08:56:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579798581; cv=none;
        d=google.com; s=arc-20160816;
        b=FKlwQawJuAttFPx0M6ddvVTa6ZMAyxiOriTc4umxDP3cJT/7qRd/Yr6DsdVe9UkJqy
         YteZBacthXo1HplMSEJHFei+h6JE5SaUdYoCm5ix091qUhq/ml8T2uU8+Jmycipm1rvz
         SR3GwarrJ3pec+n58zUkcC2sLX5fHVYoYqeCo6E6yThhoCaJbPDHzp8FhEakIdV87UzQ
         jfVliUho+GgjTuuKTH37ss5eiCU0ercb18f1Sb7RbhhKVqV83NYxpbQRhAVqNqO457oT
         6eXOeuKGOg8R6kTKD41Oll5XXK22L3upa+PQs69g8G0b9UObPhThFAm33u7EoTphWgMq
         7HgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qHBj8+xNjYfP5F9n6dRNoi0qVUbDDIWac4lHNGUi1Mo=;
        b=eN/+wqw+nMuQzTQt0GIjDZZDcvqz+aK4s5MbBu/qrD0Lgr9rC265W4sDp+erkO/5dx
         VE0M1+sgjapMrrL2PnEBHO41OllbpDau9bVMdXS2Hywn6NCCDSXBgdh7aATk20MBvrGk
         3V6cRaPOFMpdwyV6r+4h54Qi+U/Kye8hJwizWoiBYUMQYFlwsQ3g9tMkwT4NtKnY4IXJ
         6dpxgAqYR9oLibbF6SwmX0Kr5xfYUR3sHhcmQUofFf2R6dDULe74qYah1Q/R9Od0aMLB
         aMgNCsr69j2OfC+b2yWyy92l3NVBXZWwvbYzPY3SI129nshMvgbV2UhTfezFwHHiB1pt
         Hb9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q+TtOV4t;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o3si104959vkn.3.2020.01.23.08.56.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 08:56:21 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E2BB021569;
	Thu, 23 Jan 2020 16:56:18 +0000 (UTC)
Date: Thu, 23 Jan 2020 16:56:15 +0000
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Cc: peterz@infradead.org, longman@redhat.com, mingo@redhat.com,
	catalin.marinas@arm.com, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH -next] arm64/spinlock: fix a -Wunused-function warning
Message-ID: <20200123165614.GA20126@willie-the-truck>
References: <20200123162945.7705-1-cai@lca.pw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200123162945.7705-1-cai@lca.pw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=q+TtOV4t;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Jan 23, 2020 at 11:29:45AM -0500, Qian Cai wrote:
> The commit f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for
> arm64") introduced a warning from Clang because vcpu_is_preempted() is
> compiled away,
> 
> kernel/locking/osq_lock.c:25:19: warning: unused function 'node_cpu'
> [-Wunused-function]
> static inline int node_cpu(struct optimistic_spin_node *node)
>                   ^
> 1 warning generated.
> 
> Since vcpu_is_preempted() had already been defined in
> include/linux/sched.h as false, just comment out the redundant macro, so
> it can still be served for the documentation purpose.
> 
> Fixes: f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for arm64")
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  arch/arm64/include/asm/spinlock.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/spinlock.h
> index 102404dc1e13..b05f82e8ba19 100644
> --- a/arch/arm64/include/asm/spinlock.h
> +++ b/arch/arm64/include/asm/spinlock.h
> @@ -17,7 +17,8 @@
>   *
>   * See:
>   * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
> + *
> + * #define vcpu_is_preempted(cpu)	false
>   */
> -#define vcpu_is_preempted(cpu)	false

Damn, the whole point of this was to warn in the case that
vcpu_is_preempted() does get defined for arm64. Can we force it to evaluate
the macro argument instead (e.g. ({ (cpu), false; }) or something)?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200123165614.GA20126%40willie-the-truck.
