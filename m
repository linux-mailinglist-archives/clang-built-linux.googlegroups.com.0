Return-Path: <clang-built-linux+bncBDY3NC743AGBBKW6U7WQKGQESPW3AYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E82BCDCC0E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:58:19 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id c205sf3569936oib.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:58:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571417898; cv=pass;
        d=google.com; s=arc-20160816;
        b=pmGvz5+ReGAFuJw41HU5WZelczu6hrJpuv3nfGTmHRPR+vq0JuqxK24pRB9XKpWhGP
         Zmr1WymanW80kc/SwEGi94T2e148xDcnb0QlsOC/4ZXWjyvO6leiLzPA7IBj2DMxR/s2
         mzncr0iGOsMGBAlFG6llXS8loYlykEm06m4nLzkhg+lH0UtRLDsWXBYlApDEON3M14hq
         Wgu1Z/qHLrfjtjjIRGbk9NOItz+h5fNccOPY5Q0muKi7QQuw+N9PdcX/WsTlED1EE/W5
         XdJo/qNFgkvulAgl+sBEdm+m5eidlz1iS1AeqXEAhlQoasCu3Gw8N3pTG/00DimsVclq
         ZWmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=jNIY5yYYGLrqZ/SLc70QBuP0/tYeem3bWKvfN3T+rJw=;
        b=N1zq8j2eiFKMzcr+KdQ8mMnLc9yTwU7XGS656b9mChKsHEi6WuMrRvslPwiA3o+6xH
         1ZVuK8ju4dUu2sGJGq0QMQOKejb2L8+ot6tUigoe/tRscWsBOZm9JqpP165RpEz9epQg
         ykJ5KBfcgbJ83iVWfoN+sBcruYAlcICT+G3vJfH6blJKhU/NAdCKbz4WpiP7vtpFKZn+
         ApXSli59wjq4Cpb3ZBzDjO2grzCpDHy/HETKpcxvyH+VJhKsxBejxu/G32DwL5kGpr0s
         kClQ/6cuJnO4onmELf21vo4snIlxANfiRfSCLW6BX2eeNAH6+z7XK/yax+FUAuMLYHYS
         TViw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jNIY5yYYGLrqZ/SLc70QBuP0/tYeem3bWKvfN3T+rJw=;
        b=MNBLAOQupn6pkSbByBxyWfYaInoPL8mHw3d1FFKmk6x56VKbWXdmnhhlWCLKKqZ3iV
         PVjW2XSk9VUhWaQ9A8Lv6SSm3P0s0EuCbO5wH9OhjRa9EMHGb/apBKUwjsBINZauigtU
         +mNQ7HBE6LWvSKQpz08m7lPQLUje6p0/jjXGd4cLMdBkJHYf9GhuHJgdXK4myCN5jJ0Q
         3oTunC3Jc6uuUTkW9um7CsWyzhWqlYZxOET9JPfuQdBmg7hjbB2BaTo2ne45b2yjqmk6
         r6Aw8i1NLEAqqU0RGgiJfjctegBlbu8qCdMVN1MmrcoMeNL7GuFbaCY06g8sp2lwOMB2
         VfRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jNIY5yYYGLrqZ/SLc70QBuP0/tYeem3bWKvfN3T+rJw=;
        b=hHl04uaf4y3giCY71lKaYLEszDx1lFRVkyB+2ordqY+FK0EMNFmn3A8xO7RNcMfhri
         vzYvgRsmv2OQVpfjdfTTd8kciI4rJ/BKkVYe6D20zqYHKEe/da329cks/SBbTWsU6LUY
         VAYvw0gwW/tbH0qUn1kaA1ACQf/YAn/3vRhESDud4m6qNY3NaRuNpG73MT3o5k2E1N6F
         0MhEfBgDMoim+BdIIy1PLTeZe/nx84ztsYMpyfa/Q+P6SIfCFBsDvGqQLIbqxM4qH39l
         80HFGdXlqqkv15RUkVMPCf32BJ7C33Bd8JwmltPLZVav1L/2AQLHd1UIUvYjXXmfp/3N
         Dk5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUpqyb6mQ+je4WGkBU5p7q+LfaP5/j/LikPO3Xh7HzdPY03jnMW
	Ig19wwUrCsx/uQ5/12daCik=
X-Google-Smtp-Source: APXvYqwoBGzvUiRX3lhuAF1+leH9jf1+m4zqD+Vpn46WkMkN79VuzwODmiBtnLXqL5TZE089XW8ogw==
X-Received: by 2002:a9d:3b76:: with SMTP id z109mr14229otb.193.1571417898786;
        Fri, 18 Oct 2019 09:58:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4f98:: with SMTP id g24ls1126148oiy.12.gmail; Fri, 18
 Oct 2019 09:58:18 -0700 (PDT)
X-Received: by 2002:aca:d18:: with SMTP id 24mr9267583oin.56.1571417898424;
        Fri, 18 Oct 2019 09:58:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571417898; cv=none;
        d=google.com; s=arc-20160816;
        b=RYGwbTxyQW0WOPHKpWhpEnTJ9sjNsGdBw7lmi04c7CqI2aGQ04jxjFmV00uIUQZbGF
         v4Ep6THYAnwKspPC/JavChxZxJMzNyYiEAWM+lT4W9nf9E93cBDWwrp9aPC73NQ6bNkM
         mxFi7ICE5beHb7m7RRf1mwNfETlzfVRTu132TZJj/w2GgwqWYRFq5psQksSDTHwSBRL/
         SuzrWsUY0ZYaVBGCevWE4+jYbmLmQhcJYJ9eb7Krc69C/6pC59vSkvcTsyV5qT4PThv2
         68oubmBjLZuxrewNv48X6ewuuAO98XQn/3Xn19N2VO4L49IegL7untb4uLrhJ1Jh1gEj
         fZJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=5ixbAhC867IgbnYtVGohsTy7KnvK9YRwzHoWBeLUR8c=;
        b=xBBd6ks8GaEAI0ZVpG17OwJxVWXJ1dFFra1GVp4MlYl0R3EmujPL3z5vNhoVj7yByO
         wLfTS9fj/Pi6N2T9eRos47o1sOMfsNhjkM654YpmBywja/TBLgcB/o5NLnuiYRX29eEF
         TI7eRkLB39zBRcDbo5e7hoBeageeHywdp8ELArNQGTdNDmrVzRUonMCo3zIH5CcfAn1T
         HQ9VvDvZf5j5fPO8dkEI84pHcrzYiRHj9kNkZcmSWaEmSNDsBGhf3YQibyXxfNzSF/OF
         JYSPTZgCaqJzXwFJgrH/6uR2PQkN+9bsp1YU1/AwdOQwR4RBhD+ANNiwLLyC60U4yPOb
         +5iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0048.hostedemail.com. [216.40.44.48])
        by gmr-mx.google.com with ESMTPS id w205si304625oib.2.2019.10.18.09.58.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:58:18 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.48;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 9DF0745B3;
	Fri, 18 Oct 2019 16:58:17 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1981:2194:2199:2393:2559:2562:2828:2897:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:4321:5007:7903:8660:10004:10400:10848:11026:11232:11658:11914:12043:12048:12297:12438:12679:12740:12760:12895:13069:13148:13230:13311:13357:13439:13848:14659:14721:21080:21212:21451:21611:21627:30054:30070:30091,0,RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:25,LUA_SUMMARY:none
X-HE-Tag: fruit53_8252359efdc20
X-Filterd-Recvd-Size: 2322
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Fri, 18 Oct 2019 16:58:15 +0000 (UTC)
Message-ID: <8268ba22cccae0dccf5a8d1902bc1409877fbd4e.camel@perches.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
From: Joe Perches <joe@perches.com>
To: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt
 <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
 Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com,  kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Fri, 18 Oct 2019 09:58:14 -0700
In-Reply-To: <20191018161033.261971-7-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	 <20191018161033.261971-7-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.48 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2019-10-18 at 09:10 -0700, Sami Tolvanen wrote:
> This change adds generic support for Clang's Shadow Call Stack, which
> uses a shadow stack to protect return addresses from being overwritten
> by an attacker
[]
> .diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
[]
> @@ -42,3 +42,5 @@
>   * compilers, like ICC.
>   */
>  #define barrier() __asm__ __volatile__("" : : : "memory")
> +
> +#define __noscs		__attribute__((no_sanitize("shadow-call-stack")))

trivia:

This should likely use the __ prefix and suffix form:

#define __noscs		__attribute__((__no_sanitize__("shadow-call-stack")))

as should the __no_sanitize_address above this

> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
[]
> @@ -202,6 +202,10 @@ struct ftrace_likely_data {
>  # define randomized_struct_fields_end
>  #endif
>  
> +#ifndef __noscs
> +# define __noscs
> +#endif
> +
>  #ifndef asm_volatile_goto
>  #define asm_volatile_goto(x...) asm goto(x)
>  #endif


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8268ba22cccae0dccf5a8d1902bc1409877fbd4e.camel%40perches.com.
