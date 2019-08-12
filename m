Return-Path: <clang-built-linux+bncBDY3NC743AGBB4OVY7VAKGQEJTIX2OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 607B68AA9E
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 00:40:51 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id k125sf94433241qkc.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 15:40:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565649649; cv=pass;
        d=google.com; s=arc-20160816;
        b=VfD+xm9cDI+LKCduADZ1iaB16wXB879r6Awcr0Q80wxZOc82dlA07lUPg9m6jkP7rf
         wZEa0HLP4p5Eafs1QDHV1wx3XgfcZJw2b+5YXW+ty8U/GKzIRsGXi/4+2DoQGyQOGhXa
         Z3V0gBP3c4In+qQuYdXrHH2mTMmHu4GWGIpr91etaJsWouwkG+RhujWSGTfatP/64wAN
         Q9iWyKRI+DTHu3mhdkAdh5pP4o3siKlCU/NN2uBqorQ6GSKQzBp264PvrQCziGEinrz2
         rIvk33704p7kl73KuAsaYtumaB5hySHV/cOrPZW8wfiCmT9LzHkqg+p4NYh1Emep3udX
         vE1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=OQP8bK9rte2f/GuhXnrge/jlVA/hc4GNi+kXh3eEf8w=;
        b=wqUfnatULMOZ/ZccRuFyd0RA+5tB6k5xMLbmrg+qlTGVokzGdTsvOlP0n540jf78DI
         tii3tiKIgzDUIiZ6vQiEgPk05uZJg/kM4BjWKc1s27oOyQzzV+crMDaLHFlMGTq69H4R
         iIKXwivFY83jlp8ACJM+++y8FH81wQk7tZRLW+smJZRRZ6yWOiSIYjclEARklKSGhxs1
         ANhjcu2E8+vkDWugeUT6DM8UYQKRN8dt8vJx99qu0yCF5hda4rP9yqB1H5orW1YX34DM
         38Tgfc0OnemjK1pOOvDd5skHlWgqbC5Is1VeqA0TeKMK+1bnfIPcNcSrytpSOhVhB9kO
         6VHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.228 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OQP8bK9rte2f/GuhXnrge/jlVA/hc4GNi+kXh3eEf8w=;
        b=gO8ou0xVq4FQlnvGuw5FmZiWjbUw8fXRZEo+PRTmS8ykBQ67OTaiKWMEMo5zK4S7uo
         8jWLpPlXZQD8clzi9akoKmyIGGNqUh78k+3zxCWrwG66EmhMdC5zXRPXlXTlqw/DhL+w
         CxaG89bEtoAzjYQqWsznVrVofrV0Rt2afURi/mxc2No0m6m5aeIhcEbE3Oyz9Ksfk/ve
         +0lKp8JYFqiIF9zRfJW5/TNVepnr7of+LQiKT402uLiTleQX3FpQB6B3a9d6eiM0txDh
         qX66Cj4cS/amGKVK9kbxl77C3AKn58WtT2aqOGjGKEb9tF3e2sM4OsVch8i6mI6BTsKY
         QDNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OQP8bK9rte2f/GuhXnrge/jlVA/hc4GNi+kXh3eEf8w=;
        b=b3svlqFZn1ZbzQT3g2B/POJP1pwMJ5Lq85bbP8iKVFXiypluJMp/pKcmda2Aof4jwq
         2OeUVcRYkpXQVoeBVPvO50oF+L/4/zBP7t3MZLMQda1FWsBlXTrzXvWJJApUpH38gr/R
         X8WktkQtkwvh0EXaNIhQuk/n5i7rJcFdBodNAcT2ERiJdk3TY7J9K+c+mDtWqPUZKF9A
         wKAfj6CPIXNDqByDux9hJnOUv3rhjAnFlrnEqXbQWG6YfPvLlzkrTImkP5BTWA5ph4eB
         1F/maPowv4MjmsbO5n8CQ/hPqtxQUE9qO1x6hm/VGLzsYk1kWQ4yfEX/EIhdvPo5VkO2
         rdew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUPX52nX+mRHMTlFgIsEs3woieiCWLwwbA3pBZdtQ/61l6DjOq
	OGL7stiALqfI5KJmp/EZ0aw=
X-Google-Smtp-Source: APXvYqxggb0e6ioDR9AzpomTo8MAFnX2QvVJT4EiFxHZQzQr3nPdoAZTY9ExWkCmahTTs0gOlFFkkg==
X-Received: by 2002:a0c:8602:: with SMTP id p2mr31754597qva.111.1565649649300;
        Mon, 12 Aug 2019 15:40:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3149:: with SMTP id h9ls3348605qtb.2.gmail; Mon, 12 Aug
 2019 15:40:49 -0700 (PDT)
X-Received: by 2002:ac8:6d0f:: with SMTP id o15mr20513820qtt.200.1565649649048;
        Mon, 12 Aug 2019 15:40:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565649649; cv=none;
        d=google.com; s=arc-20160816;
        b=KtDKkqCP3OzK3Fka4ZPz1DB3KMi3HE6u0jZJ8bgMxv6EExc2xlgNUsSV7kzkUVpZn8
         Ok5RQwnINpEfCUVKTJHOf0s6nu5vmZ+cPRM7LchA4CW3plur9pmhHKj1exZWdHcjAiSG
         iJgkM92IeW68eO7/Q4Q7FtjbEK39monrB3i8bE7k5RypJa9eIkQ1d7lZFEkFd7ROe9ym
         avOsnm2pdJNxOTqKY9n5QOaidLz2roFa2+Xas5GrWqewfdinbSZwWBodIWP30j+qzUFJ
         rXZfziAFZgb402Gc/5jPFAkDZCs/neOfkDVONWyzfRmb9sqGsdGBE8ltgfEtBFrLn+mL
         /cBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=9yDBYlehCX5JOPTrjlBOFFcWnSK6gd3cxU59pteqZ7s=;
        b=DJO2HnYql8ZAbOXBCSgo537RIrpBL60YvS0B5SZ1Yg4Wk1uaHdPZnQFzeg/3CoU81U
         6gYoI5ktjFw4/YSltoG8mAy/pmtK8k+T42jr+giKcfkPdus6+AT+bqAsvUfBq9C36Ueu
         RvfMT87Fdsl+wFRFD9rfDXbTPc/2+wFOMY4PGpmy0Z3DnoNXopTkfhi0ihD8ZnQW/95Y
         zAcaJzawuzdTobBsx3kzcsqvwCibP74FMn0SSUw/xXRJkZbNaPhEEV5cEzSqGcSogg67
         0kYYuQAXty6xI/TkvZQM8xcuJ9O5DyyIQN3BUFH5NTPqcQm0ZYUP58jPuvz1fHW0alra
         L+Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.228 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0228.hostedemail.com. [216.40.44.228])
        by gmr-mx.google.com with ESMTPS id w82si4483129qka.7.2019.08.12.15.40.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 15:40:48 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.228 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.228;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 9180F18014D2B;
	Mon, 12 Aug 2019 22:40:48 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::,RULES_HIT:41:355:379:599:800:960:967:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1801:2393:2525:2559:2564:2682:2685:2828:2859:2906:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:8660:8985:9025:10004:10394:10400:10848:11026:11232:11233:11473:11657:11658:11914:12043:12048:12297:12438:12555:12740:12760:12895:13148:13230:13439:13845:14181:14659:14721:21080:21433:21451:21627:21740:21789:21811:21819:30022:30034:30054:30070:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:27,LUA_SUMMARY:none
X-HE-Tag: cats09_5e29a3c464208
X-Filterd-Recvd-Size: 3130
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf18.hostedemail.com (Postfix) with ESMTPA;
	Mon, 12 Aug 2019 22:40:46 +0000 (UTC)
Message-ID: <814c1b19141022946d3e0f7e24d69658d7a512e4.camel@perches.com>
Subject: Re: [PATCH v2] kbuild: Change fallthrough comments to attributes
From: Joe Perches <joe@perches.com>
To: Nathan Huckleberry <nhuck@google.com>, yamada.masahiro@socionext.com, 
	michal.lkml@markovi.net, Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, clang-built-linux@googlegroups.com
Date: Mon, 12 Aug 2019 15:40:45 -0700
In-Reply-To: <20190812221416.139678-1-nhuck@google.com>
References: <20190812214711.83710-1-nhuck@google.com>
	 <20190812221416.139678-1-nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.228 is neither permitted nor denied by best guess
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

On Mon, 2019-08-12 at 15:14 -0700, Nathan Huckleberry wrote:
> Clang does not support the use of comments to label
> intentional fallthrough. This patch replaces some uses
> of comments to attributesto cut down a significant number
> of warnings on clang (from ~50000 to ~200). Only comments
> in commonly used header files have been replaced.
> 
> Since there is still quite a bit of noise, this
> patch moves -Wimplicit-fallthrough to
> Makefile.extrawarn if you are compiling with
> clang.

Unmodified clang does not emit this warning without a patch.

> diff --git a/Makefile b/Makefile
[]
> @@ -846,7 +846,11 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  KBUILD_CFLAGS += -Wdeclaration-after-statement
>  
>  # Warn about unmarked fall-throughs in switch statement.
> +# If the compiler is clang, this warning is only enabled if W=1 in
> +# Makefile.extrawarn
> +ifndef CONFIG_CC_IS_CLANG
>  KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
> +endif

It'd be better to remove CONFIG_CC_IS_CLANG everywhere
eventually as it adds complexity and makes .config files
not portable to multiple systems.

> diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
[]
> @@ -253,4 +253,8 @@
>   */
>  #define __weak                          __attribute__((__weak__))
>  
> +#if __has_attribute(fallthrough)
> +#define __fallthrough                   __attribute__((fallthrough))

This should be __attribute__((__fallthrough__))

And there is still no agreement about whether this should
be #define fallthrough or #define __fallthrough

https://lore.kernel.org/patchwork/patch/1108577/

> diff --git a/include/linux/jhash.h b/include/linux/jhash.h
[]
> @@ -86,19 +86,43 @@ static inline u32 jhash(const void *key, u32 length, u32 initval)
[]
> +	case 12:
> +		c += (u32)k[11]<<24;
> +		__fallthrough;

You might consider trying out the scripted conversion tool
attached to this email:

https://lore.kernel.org/lkml/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com/


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/814c1b19141022946d3e0f7e24d69658d7a512e4.camel%40perches.com.
