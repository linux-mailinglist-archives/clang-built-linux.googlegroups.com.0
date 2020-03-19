Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBWPZ7ZQKGQEINJEZRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A6018C26D
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 22:43:36 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id b192sf2159318ybg.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 14:43:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584654215; cv=pass;
        d=google.com; s=arc-20160816;
        b=jXDRNxnh1ZRi5YYiS/joNYt+dVNrz3c2OV566LkQgUH6zUs878wXTeIuz2lKhjxgrQ
         7YBpveHCR+nvb9t3ctz3JFuyOw3HsqtExPUFyqgHuXpNh/IHek7yDRwc+tdiR3lOHYO1
         J89flLvH0p0uJZZWZO64uFDTtrbCmp6grH6fZMZt1wu31C3xOSGHNXyoSuVBGgZOg6S1
         I1DzyoqCNbUtD2wT7zk0F9r4ODBlk88M9w27nN7D/p3Fnuo71xF6x+J6YXZJz8kghEV2
         +0fNG7ThB84/qP/iGGyU9D+Y734hjQEHEOAz2iyvVHcSh6OF38/MG8KoLO8iHXAI57QD
         /BDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=KQKCtDw6t6iyWNGjxqXjmYMsD80Ju09xCLGGeJl4kYY=;
        b=iwm1/fkM/71NwErVatpyhClIaHjkfswbG8WHmFSAGydETUyYLY8n8XBFUIYJL9lSzE
         mwqUG5JxGmF/FSkMAfETOaageFRRjNQ03tRHToPKbxNlxgtdZfVItdTuh8KE8vf8mcyH
         VqD9kH3z+sqoXMXyeQRAaG6cEUvow1z5DaMN0JtDK2QqdSnoYjJ7p2eadvdUd8zJ7wHx
         R344u9dM5WBwNSuuJXX3pSjJT2aP8f+wq2b6A1MNOHWg+IO+eLkLgHhq5yiMzGzZ8lAX
         MbaO5EJ9NRZywmMQMfscvbl+8SdNNexZFSULsP/UtLi08y6vJrTLidS2ovY76tXOxclX
         fXWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Okb9JBtL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KQKCtDw6t6iyWNGjxqXjmYMsD80Ju09xCLGGeJl4kYY=;
        b=ap9Sw/53Kc7jHzRMWEsI9OUw2Oam7fEPXCrA+/IeCuAc1RpD/ED/WnIgokAmNLFfwk
         3M7pG9xMq/hzUC1v81uELza7yslq5Yfuq1egTYCyScQYnCYfYJYlnQToangO3le8fqtv
         jZsZRarrZe8/2/Pt7+glBA8Ofl2vqp6AlrtZMvIs//tfJYtFTyNtHbnTMIVuJfKr5CW1
         BJsIjySzKmySdL4OcuQdslduYUrVo0CjK5HY07vCYrLDKIixchgIsPDdVFQf0KTi1/I/
         wvkv7F/31BfyEBGozOZeHVXdQo4sJ0dKIMbFLMnFnpyxqwKegw78cPw5in8nZejhuqPt
         BMPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KQKCtDw6t6iyWNGjxqXjmYMsD80Ju09xCLGGeJl4kYY=;
        b=nJLTiaAjfZb42U8A/VldMMOzzx8CWRSYKM2IiqctkNc69775z0rm8PYyQvQTUkj9jF
         wrXYFChBidav+AvkAqFrq+Gn/j/cIrrMEuB0N9Mqrcna0HOBZyyzzzD1n/20CnjVCHCi
         uEk38uEBPrmGzMOq8+z2jrcaa2WZoZ1WHlTUkZX+lTZCLrj9fdTrFPlcDZQAyvsif1f3
         n+mahXbVT/PeQpGKocTXkRlGu+jMnnlORRpIgWntWMpVm4ln+ZWHZLW/VhL1zm/ntXdf
         mM2Tzs63FwarkJTQyXVyHJTtKQUQ8q6c54t1uRj6ma6bjfmi9SmjPsd30S9M3a+sseSI
         2RJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KQKCtDw6t6iyWNGjxqXjmYMsD80Ju09xCLGGeJl4kYY=;
        b=c1Khpt1yainUDe67RLtYss/qcG+CDdH3uUEWInamRT2l7QcqVYuW6iyOTj15SjbXp5
         hMru33/9z8cL4RSQ0fNfvgEMpV+e87+ccncMVo6BT9gpJF60U3yniW9AwGFbri3OW4WC
         LXenCOfD/B1NWwdA1OZXYZN09u0J6AnErTCaz/vpnDhC3oJBoFi1eqsNQ6txeZrtGYjg
         kuDADOSeqHIy1d/9RtuuWYkZHNLrZxsshIYWTZas46JfoszEkoebJDGDTVUxDlPbnQt9
         Moqo55w+dH2MI/y9XrRWM2d6XhEkSqIBDP4+nQ82DTv4UNByCquZpwNbcO5YvO054Muq
         nlDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ17zTtqLnMYi4HmMLlJI6f7NHdErkO5RLZiV0Z35hbuJQhCrcro
	1d7zy89wpaFbbW+raczHAtI=
X-Google-Smtp-Source: ADFU+vvgerwH211Pb/OX/mH/CzZrNTTf8VJitqW7W4o3zmm0Gwf3UzRELVCq4+WHjeU+KuctLr0NwA==
X-Received: by 2002:a5b:401:: with SMTP id m1mr7840261ybp.508.1584654214927;
        Thu, 19 Mar 2020 14:43:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:5cd:: with SMTP id w13ls78431ybp.10.gmail; Thu, 19 Mar
 2020 14:43:34 -0700 (PDT)
X-Received: by 2002:a5b:f0a:: with SMTP id x10mr8158030ybr.434.1584654214523;
        Thu, 19 Mar 2020 14:43:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584654214; cv=none;
        d=google.com; s=arc-20160816;
        b=FnocJZeGJKzdBZZHi2j/w01f/LKr/bET8AWBzzhzZlG5pLfzu3JnGx9pkUV6V4up2q
         zq7w34MQWQDwaKPyvZljotwXneDwIKofXd6sPQ2ZWQUV/gbZSKR1CqWzLX8lVEs01BhR
         dci62azr8YOYHLlRXiW9aGGO7e1d8PZsEwxLvcOdyE19/tXzySezk4ACp7ZXBrqtCalF
         HDjBZJQSNXi3uz7byUuRmpgDuK9qWBSuetvQJHiEoVO5qr6qx7KpNowFGOJYIvvFDZPE
         hRKpxSAcsqwLY/wVTEkaNRQ0XJxIfDvzbYquXjpP63U9ks9eYIHBhd+gbVhpz9UZ/CE5
         Qdzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PiU105LwR4CtW43tXMObNmMhkqu4rll7p1Rlw/fDhGQ=;
        b=W65P0EHeJKWhbozeEDdl97WntwE7uMCOIJPqm4+8vmB42cFbvBkzlSK60mVdrVDeb1
         Ncqbfo4SC2VD4cJbrOEneY8MGghamIr71qlVI9UzdrIGHXuZsWsBpHY7iP6AnXsUPKUu
         mlPJ3L57IB9ewS1GvV+fbvQghiLnbfVELIgJkzZs3tLaJ1RosK5T4u7zEL1NZMQ9GsTB
         G+aGM7qLPaBazhsXEDqCnDoccAqowVBStn40IOvMPp9Jk6LwtzYQXu85yX37pXUxOfNp
         DGPB0ETfP2SVUO3ytDp1MoSeygIZZ1/dhaC6JHZRw5s8cs+gJexxyeJh47PM5fc8G8bU
         4jPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Okb9JBtL;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id e14si255503ybp.0.2020.03.19.14.43.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 14:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id i12so4070213otp.4
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 14:43:34 -0700 (PDT)
X-Received: by 2002:a9d:7750:: with SMTP id t16mr4049797otl.333.1584654214036;
        Thu, 19 Mar 2020 14:43:34 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v12sm1197807otp.75.2020.03.19.14.43.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Mar 2020 14:43:33 -0700 (PDT)
Date: Thu, 19 Mar 2020 14:43:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jason Baron <jbaron@akamai.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v2] dynamic_debug: Use address-of operator on section
 symbols
Message-ID: <20200319214331.GA53874@ubuntu-m2-xlarge-x86>
References: <20200220051320.10739-1-natechancellor@gmail.com>
 <20200319015909.GA8292@ubuntu-m2-xlarge-x86>
 <4b766edb-73e2-c295-22eb-b501405baa9f@akamai.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4b766edb-73e2-c295-22eb-b501405baa9f@akamai.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Okb9JBtL;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Mar 19, 2020 at 04:03:39PM -0400, Jason Baron wrote:
> 
> 
> On 3/18/20 9:59 PM, Nathan Chancellor wrote:
> > On Wed, Feb 19, 2020 at 10:13:20PM -0700, Nathan Chancellor wrote:
> >> Clang warns:
> >>
> >> ../lib/dynamic_debug.c:1034:24: warning: array comparison always
> >> evaluates to false [-Wtautological-compare]
> >>         if (__start___verbose == __stop___verbose) {
> >>                               ^
> >> 1 warning generated.
> >>
> >> These are not true arrays, they are linker defined symbols, which are
> >> just addresses. Using the address of operator silences the warning and
> >> does not change the resulting assembly with either clang/ld.lld or
> >> gcc/ld (tested with diff + objdump -Dr).
> >>
> >> Link: https://github.com/ClangBuiltLinux/linux/issues/894
> >> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> >> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >> ---
> >> v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-5-natechancellor@gmail.com/
> >>
> >> * No longer a series because there is no prerequisite patch.
> >> * Use address-of operator instead of casting to unsigned long.
> >>
> >>  lib/dynamic_debug.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> >> index aae17d9522e5..8f199f403ab5 100644
> >> --- a/lib/dynamic_debug.c
> >> +++ b/lib/dynamic_debug.c
> >> @@ -1031,7 +1031,7 @@ static int __init dynamic_debug_init(void)
> >>  	int n = 0, entries = 0, modct = 0;
> >>  	int verbose_bytes = 0;
> >>  
> >> -	if (__start___verbose == __stop___verbose) {
> >> +	if (&__start___verbose == &__stop___verbose) {
> >>  		pr_warn("_ddebug table is empty in a CONFIG_DYNAMIC_DEBUG build\n");
> >>  		return 1;
> >>  	}
> >> -- 
> >> 2.25.1
> >>
> > 
> > Gentle ping for review/acceptance.
> > 
> > Cheers,
> > Nathan
> 
> Works for me.
> 
> Acked-by: Jason Baron <jbaron@akamai.com>

Thank you!

Andrew, I assume you'll pick this up?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319214331.GA53874%40ubuntu-m2-xlarge-x86.
