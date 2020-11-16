Return-Path: <clang-built-linux+bncBAABBGFYZD6QKGQEPDLWS2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 862AA2B3D1E
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 07:28:41 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id t127sf5602174vkf.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 22:28:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605508120; cv=pass;
        d=google.com; s=arc-20160816;
        b=wu5gDn6VTZo2o1vYTbw1HirNOA+lIS9Fqn1BqR1nT/2a2NjMGgwLREoCFjcDJ8CzGH
         9juP3x+5dJeE0zKqfCmWVsW8WMZOdNxYS2JGqqWZmChzN2T/li6a8UyJbtScbJXKzqnP
         +AKKWBnJfUQqJlHKUyS4qq1sc19hCZI3y2+rWy9AQ1DE5pSpD+WC0lbvn0mtWKRLv5bN
         EeRGMKWppclkCjaYo0MvHtVi/n9M3ksCYdOb9PPGryAi6DvmGWIU6Ke/uR+AkoK4H+w9
         OrAs0VyjSypDK6Ecm8OxJ6jY22NMnTaXb3YaWtF+Y3cHDhbg5X5ZmIZud5vxK0ezHr9g
         g0OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=haJWJRiVryCW97j+tA+MB6Aez6s4uQd+bVAR9hQQt64=;
        b=Zton4HbDpTEvaR4EH2HFy1PM7mrrLHofYl3cz4H+5Sd+QF19PEncTwGjIgmGQ+vSiM
         VbFFjps9ctK5m2L9UstviqGhbmd+LZqdmVbFguTuTcR36Z7YFr8rBiL0LsoF1cOIHwTQ
         Avaf/AinxXrwZSgZGGD/hRo2JKl7j64stleejxMMAwdQfCK/0cD1Jc7OQqKq3guuHBAl
         0RxG738AR14HXmGEMH2Nmwp9LdYToj6fEynV5sDB1/mfizqIN7TbJktICTrfxAAlx94J
         sPwIfTE3JR3csAwzOnknl/A8K2y+n75Njdd+r8+0giJJypjL8JtlpDNn9N7yrIvkyArG
         OQmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="h/By4HRj";
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=haJWJRiVryCW97j+tA+MB6Aez6s4uQd+bVAR9hQQt64=;
        b=H6481x8wwPJp2nRsTwtMwe5LBkNARd2mZDiZdkIXHbBv5mMxwI/wcXB2Nbjb68lIzq
         +TTV0KAary16ULX3SQCyMdUxYjLZ1ex7UK1SPSArpR6OZdHrNoBW8/RAonNWAB4FLi4s
         MnsUBBw6sB/Z9jH56V1DdFNCMaw0b8taGkeM3tYj3YZJ6s1HJmct39diB+4GsI6MAEZY
         hiTtrbM+lcB0LejFhcG5nNrITw7y5X4z1IVdnYOCRg7CTBVPwJtabecGPSnbHlvniddy
         mhMcc8fBpBb+bW8fKWyga55bCuXCW371WNxJ9cecD0gBKDA7svOeZNpaLHLWW0cnecB7
         b+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=haJWJRiVryCW97j+tA+MB6Aez6s4uQd+bVAR9hQQt64=;
        b=Y6lCxpoe1iaeZQSl7wxLbdXLX88/kkFh+hhFnON8I78O7Dfwp9kA5t9cNGompNrSMj
         PKHOQaJ14FDa3SySvIoMDislwENLZ22huChYRvYJdWm4EcF68PhJ3N0HDpeCR8XKemG4
         019w82fLENbmDOv7Aa0etEEkL4UCl6lphSS0v5LonjHo4UE8S3BeLGiSVOk8WDv7Afug
         PVo8SD+68Lu1QHldVKg0/nI8HO0bz0V38rkkhV4EwNEcN9y/VZiLlJ651zAOBGytsnnk
         VK4rsEy/QJJXrBBJc0+arHcJujJyJRavCDyGeKflhqgj5vhVB9wfQGq3M+/WzSWfUSA4
         piHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dXTIPXO7r4NZNn3rhOiOzUxuFxuPh2Nt4BCB7HIb8X/n3wBpH
	2Qd1SuL0oVshtEUWj2houB4=
X-Google-Smtp-Source: ABdhPJwd1v2jUGzwalgvVtWn0DQv3OaocuSwGY8BXiFds7VVF3+4r3/7u4LtqomOqJa69oGshasw0A==
X-Received: by 2002:ab0:23cc:: with SMTP id c12mr5496745uan.89.1605508120392;
        Sun, 15 Nov 2020 22:28:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:649:: with SMTP id f67ls854972uaf.8.gmail; Sun, 15 Nov
 2020 22:28:40 -0800 (PST)
X-Received: by 2002:ab0:6dd1:: with SMTP id r17mr6795130uaf.108.1605508119975;
        Sun, 15 Nov 2020 22:28:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605508119; cv=none;
        d=google.com; s=arc-20160816;
        b=fBa/dpNgu1WAXIZGAEnWX3cxPxmEhk3dYffRu90yBuz0g5Qhh+mk5eZ8p0IKApJqd/
         YoTc6CZppM33/MQ05XXwF/YwrI9fhNTyp7dnN20tpnleYL+QHB+dbYwsw7yEFBTMugME
         l99WbWXuzV0/5+Cq2DItqw74/akGc0nY6Ico/R2srlduFZrmOHCr0+zdHdOn3pG4Ys7i
         uA0iJL+4/tHE83e35W36iuGW/cn4o32kZFG7KyTe0p6BUVsajNOgaHaWxhI5nbZiHvIv
         ugbNfjLHlrXD2AqRuWTffgcB5fOP8iLXGL+aNp1LOqlCOnIh1ZyULbPtUiXnRWU7gnF6
         q4oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2D8v1s0z6J/N9Pzon2O6hFYXfB0YUp7JPXz3oX3L87U=;
        b=y2+mphNMiswiyvNuGpelDyyRJS/hNxW68KjJC4Ct8XayDYCyEXzhDMK9VAZ3wvCBd7
         qHpmbjo5NRPDo0+qyFyMH6URhCUv6br8BbNq7+nUO7+fCYm9xFJ09yxsZGuOZZCKpt3Q
         HKdzpEauCcFMr3/S9xksGXWynSvCFHibWBsu/mrWHhvTP3Wr6BU1vGYAmBifeglYi6fi
         1mTgCXafZrvxgGq/4+IsbVIYorIgLjGO8XqME2usbHWP76lRukYNJK+HanZ3rtKWQfxY
         oY9dCDtlGXe37750OXPY/UAnKHfZSpV9nkhqUpKRWaFl09aEzsXmL3grvgrM0R7dCrpr
         FOww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="h/By4HRj";
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m17si1128499vsk.0.2020.11.15.22.28.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Nov 2020 22:28:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DA9FA2222E;
	Mon, 16 Nov 2020 06:28:37 +0000 (UTC)
Date: Mon, 16 Nov 2020 00:28:32 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] powerpc: fix -Wimplicit-fallthrough
Message-ID: <20201116062832.GC7265@embeddedor>
References: <20201116043532.4032932-1-ndesaulniers@google.com>
 <20201116043532.4032932-4-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116043532.4032932-4-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="h/By4HRj";       spf=pass
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

On Sun, Nov 15, 2020 at 08:35:32PM -0800, Nick Desaulniers wrote:
> The "fallthrough" pseudo-keyword was added as a portable way to denote
> intentional fallthrough. Clang will still warn on cases where there is a
> fallthrough to an immediate break. Add explicit breaks for those cases.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
--
Gustavo

> ---
>  arch/powerpc/kernel/prom_init.c | 1 +
>  arch/powerpc/kernel/uprobes.c   | 1 +
>  arch/powerpc/perf/imc-pmu.c     | 1 +
>  3 files changed, 3 insertions(+)
> 
> diff --git a/arch/powerpc/kernel/prom_init.c b/arch/powerpc/kernel/prom_init.c
> index 38ae5933d917..e9d4eb6144e1 100644
> --- a/arch/powerpc/kernel/prom_init.c
> +++ b/arch/powerpc/kernel/prom_init.c
> @@ -355,6 +355,7 @@ static int __init prom_strtobool(const char *s, bool *res)
>  		default:
>  			break;
>  		}
> +		break;
>  	default:
>  		break;
>  	}
> diff --git a/arch/powerpc/kernel/uprobes.c b/arch/powerpc/kernel/uprobes.c
> index d200e7df7167..e8a63713e655 100644
> --- a/arch/powerpc/kernel/uprobes.c
> +++ b/arch/powerpc/kernel/uprobes.c
> @@ -141,6 +141,7 @@ int arch_uprobe_exception_notify(struct notifier_block *self,
>  	case DIE_SSTEP:
>  		if (uprobe_post_sstep_notifier(regs))
>  			return NOTIFY_STOP;
> +		break;
>  	default:
>  		break;
>  	}
> diff --git a/arch/powerpc/perf/imc-pmu.c b/arch/powerpc/perf/imc-pmu.c
> index 7b25548ec42b..e106909ff9c3 100644
> --- a/arch/powerpc/perf/imc-pmu.c
> +++ b/arch/powerpc/perf/imc-pmu.c
> @@ -1500,6 +1500,7 @@ static int update_pmu_ops(struct imc_pmu *pmu)
>  		pmu->pmu.stop = trace_imc_event_stop;
>  		pmu->pmu.read = trace_imc_event_read;
>  		pmu->attr_groups[IMC_FORMAT_ATTR] = &trace_imc_format_group;
> +		break;
>  	default:
>  		break;
>  	}
> -- 
> 2.29.2.299.gdc1121823c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116062832.GC7265%40embeddedor.
