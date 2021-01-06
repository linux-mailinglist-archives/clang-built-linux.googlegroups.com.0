Return-Path: <clang-built-linux+bncBC27X66SWQMBBQNB3D7QKGQE44VKOZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1B82EC3F8
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 20:34:27 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id h75sf5690586ybg.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 11:34:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609961666; cv=pass;
        d=google.com; s=arc-20160816;
        b=gfMTCV63yV2YVqQZGAJraKg8tq/P8rNkTLKbEcAVlhCoiMLyywspiZCejAhJfuJkS6
         9HmK1nFaSGIJ9lNq8Q+aS2CEvAsvAI/4G8CEOkxF6S1MO2biqdN5GOU8DI6nnj+sLXDY
         Bhelz1zgFx5wLewtnbjkotlTqzycNfMj+d+AJKeDyw2Edl4+p4z8WL/vb7UaFaeZpqK9
         4UTjywhCSFWZPWeV7Mdlm0ZYez5z7jP4Iwj95+L4gcYgc9S9Xj5FuKsUp2GBijnHmfdQ
         PevvsSBeozUXxgcvicsFsPf6GE7qd3+bHakjQGM7bV+03ih7IXrXFYIWNkpoKoVYSBBB
         TDgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=xVnamT+UVn+3xwV/tnrNNu9dgEjaeBSmYneKoJoWwnM=;
        b=aH0Qq6KvXFkFlnWfgY9Xpfl1AmwG5sjKn7fBREl5PS6HSYsG63iK+8MrmtdjhQH78z
         HP1sLQRz1ghxaF1GLYzcG3hJDBZyfeIURQ4Cnp5EasP/lJ/CK0oLJSyY1biIQMIoRR13
         RXdOKce7pO5IiBZlb/guvg8Ss8lSm4dgVZw+EAdHEKSVwajlwLEdoSz8XfAGoPvkmMwo
         CqryKPplU3utjXqJij/q+T+GolFQgAkKY+vxinIEXC1HyJq3HPD9qekiZf/pFuVqV9sc
         3wiOSFjpUB1+Tmn+AfxRd/lvKDBbxXFck/11ttH9qKqmL3lOVN5GJ7ac6Ni6DAJiyxGN
         zhQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aVm6gRsG;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xVnamT+UVn+3xwV/tnrNNu9dgEjaeBSmYneKoJoWwnM=;
        b=sha8XDg2jJDoIvzHPUojHKIsdBdlat9N1nr4ptH/nSmCIR7H1LjyaPialccRlA8joC
         tDlqW7Br0Uy63xW0YkE5meESn2EnPHI5MlFmNSJgpWDoo1qTldd3ZKndcMQpgU/dlzg+
         FVEjORVyECNvNqwgMYx1f2/D5Ju+lIXHrqUfl9M+xWEm8/iJc8pm7Zbd6mw1zTTVcKSf
         kcELxL7bYPTKmbQLudP4w40hH7Ns/Tpt1LZFbHMjq6eXByfneIpaE6wfbs5EuhsRrmOP
         EadD5Sr/8WyR1JavFoKJM4XtfB1pSl9gpRC0RejfPqzmYakegFI9NGWwzCPZz7ltIKd8
         csRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xVnamT+UVn+3xwV/tnrNNu9dgEjaeBSmYneKoJoWwnM=;
        b=Qb3O2G7UU6YC80IuU2xv8CX1147foZnqt4WHFTiMqI/ESwYJQfU7Td0M0w5q9a1C0Y
         QM5MR0I/x2UFJjNSamKV0kHoGExJH9wKDUKLldV4dOeOKYK/3Ooqpe1v916GpsoQAZpv
         MUgxuqixdmX2UxsZ2eW4Ipn/BxOUFvAWRPVMyDGXMVxiwtmvsoNWbwZ/6q6ONmhGKZ24
         donZIQnkxVMbSh/fp/QUHfnRNDAWLUg2D4wGxu/wGEdvvph/aBIxIokVqqDw/dP02VFE
         D6FCU35CTS9DBKiAtWEDHieFSsILMt5KnQXk39C4FURruKZfg6lvwB52tUCiIdTANSpN
         zSNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311m4kIvyBuKvu0podFM8zopvAYJef2z6TgqXjwW1ZadKxkwi6v
	W5guGoBBMAx6S/XHZnyxYO8=
X-Google-Smtp-Source: ABdhPJyuZJn6qVFoYTN8hGB+FrNbWCBs0z+TVr8U9sB7VOxSGCoXVW16qJN+FgQOmSyBne2N2wcMaQ==
X-Received: by 2002:a25:6dd5:: with SMTP id i204mr8572869ybc.78.1609961666004;
        Wed, 06 Jan 2021 11:34:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:23d1:: with SMTP id j200ls2333264ybj.11.gmail; Wed, 06
 Jan 2021 11:34:25 -0800 (PST)
X-Received: by 2002:a25:bdc7:: with SMTP id g7mr8375098ybk.299.1609961665618;
        Wed, 06 Jan 2021 11:34:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609961665; cv=none;
        d=google.com; s=arc-20160816;
        b=zckH3+ZyngxiYKeLtCtLHv6TL/l2dRsSmeKq0FW3+r8gJssOrS1DRo7xuQo3QL+mJY
         GvwLmqfyZbWd3U8WGxInOeCBbrQw0qZI1AyTY7OqWcFkmxW3ozRLZGvm2SrSQ/FJYAP+
         n1ro9bT79fX9JdgGZzBe3TeIJaFni/CYrTEiBmQHGfV6dkIZzaN61cZCL0MuSDKBubqh
         VQruBU9+ARY7WmuwDf0qYTzIpMjezh0WB8uozW0Z1eVytXeUDyFOETWHM4WqfgHagQT5
         gFtMwzzfWceMP/sTh9vwPtlpSPp5SVl6HcHz21MQD90Mi5jp947ZvIT5FrsSD0Kynn3E
         ykDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Of+syXHD3qkkkFpUiohxwPsHN2cOLpKYdOBIorA+8sU=;
        b=aRP857lCthVntLNmo1toWIsEd1PxTJ0cwKXPzJw9LHeUrSARE8BFjmeaXsGemUs+tH
         LmcHWfknqYZ0cHzgAqTx5/BvkXG5I23uWDmg+BJwlIpTdWnMBDovJFH+UHrHuxoHgfjh
         NeZFxyv4AAyw+0q0tMESEdSBOil7kbZU9i10a6CBSTxNCev/DbrVoxWIvwhJBzm/gJ7K
         d96LJFcJeQuO183n7pAW/5rckLQlC4avybW0dIFpOv60nVPTuI2xdqeQ9l/IsQfWbvVG
         lv6Yu9tQFM0jqfnTtHdCQkvF5GUtuWQLiqm+T33gOmVxShK0tn593cHdlS407rs9pAoF
         +HPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aVm6gRsG;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id i70si287799ybg.1.2021.01.06.11.34.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 11:34:25 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-70-k8goRdnYPWW4Z7Hyx4u4HA-1; Wed, 06 Jan 2021 14:34:21 -0500
X-MC-Unique: k8goRdnYPWW4Z7Hyx4u4HA-1
Received: by mail-pl1-f197.google.com with SMTP id d6so2255419plr.17
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 11:34:21 -0800 (PST)
X-Received: by 2002:a63:cc05:: with SMTP id x5mr6086086pgf.254.1609961660426;
        Wed, 06 Jan 2021 11:34:20 -0800 (PST)
X-Received: by 2002:a63:cc05:: with SMTP id x5mr6086058pgf.254.1609961660080;
        Wed, 06 Jan 2021 11:34:20 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id y16sm3422874pfb.83.2021.01.06.11.34.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 11:34:19 -0800 (PST)
Subject: Re: [PATCH] rxrpc: fix handling of an unsupported token type in
 rxrpc_read()
To: David Howells <dhowells@redhat.com>
Cc: davem@davemloft.net, kuba@kernel.org, natechancellor@gmail.com,
 ndesaulniers@google.com, linux-afs@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <548097.1609952225@warthog.procyon.org.uk>
 <c2cc898d-171a-25da-c565-48f57d407777@redhat.com>
 <20201229173916.1459499-1-trix@redhat.com>
 <259549.1609764646@warthog.procyon.org.uk>
 <675150.1609954812@warthog.procyon.org.uk>
From: Tom Rix <trix@redhat.com>
Message-ID: <f02bdada-355c-97cd-bc32-f84516ddd93f@redhat.com>
Date: Wed, 6 Jan 2021 11:34:17 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <675150.1609954812@warthog.procyon.org.uk>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aVm6gRsG;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 1/6/21 9:40 AM, David Howells wrote:
> David Howells <dhowells@redhat.com> wrote:
>
>> How about this?
>> ...
>>     Fix the second loop so that it doesn't encode the size and type of an
>>     unsupported token, but rather just ignore it as does the first loop.
> Actually, a better way is probably just to error out in this case.  This
> should only happen if a new token type is incompletely implemented.
>
> David
> ---
> commit e68ef16f59aa57564761b21e5ecb2ebbd72d1c57
> Author: David Howells <dhowells@redhat.com>
> Date:   Wed Jan 6 16:21:40 2021 +0000
>
>     rxrpc: Fix handling of an unsupported token type in rxrpc_read()
>     
>     Clang static analysis reports the following:
>     
>     net/rxrpc/key.c:657:11: warning: Assigned value is garbage or undefined
>                     toksize = toksizes[tok++];
>                             ^ ~~~~~~~~~~~~~~~
>     
>     rxrpc_read() contains two consecutive loops.  The first loop calculates the
>     token sizes and stores the results in toksizes[] and the second one uses
>     the array.  When there is an error in identifying the token in the first
>     loop, the token is skipped, no change is made to the toksizes[] array.
>     When the same error happens in the second loop, the token is not skipped.
>     This will cause the toksizes[] array to be out of step and will overrun
>     past the calculated sizes.
>     
>     Fix this by making both loops log a message and return an error in this
>     case.  This should only happen if a new token type is incompletely
>     implemented, so it should normally be impossible to trigger this.
>     
>     Fixes: 9a059cd5ca7d ("rxrpc: Downgrade the BUG() for unsupported token type in rxrpc_read()")
>     Reported-by: Tom Rix <trix@redhat.com>
>     Signed-off-by: David Howells <dhowells@redhat.com>
>
> diff --git a/net/rxrpc/key.c b/net/rxrpc/key.c
> index 9631aa8543b5..8d2073e0e3da 100644
> --- a/net/rxrpc/key.c
> +++ b/net/rxrpc/key.c
> @@ -598,7 +598,7 @@ static long rxrpc_read(const struct key *key,
>  		default: /* we have a ticket we can't encode */
>  			pr_err("Unsupported key token type (%u)\n",
>  			       token->security_index);
> -			continue;
> +			return -ENOPKG;
>  		}

These two loops iterate over the same data, i believe returning here is all that is needed.

Tom

>  
>  		_debug("token[%u]: toksize=%u", ntoks, toksize);
> @@ -674,7 +674,9 @@ static long rxrpc_read(const struct key *key,
>  			break;
>  
>  		default:
> -			break;
> +			pr_err("Unsupported key token type (%u)\n",
> +			       token->security_index);
> +			return -ENOPKG;
>  		}
>  
>  		ASSERTCMP((unsigned long)xdr - (unsigned long)oldxdr, ==,
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f02bdada-355c-97cd-bc32-f84516ddd93f%40redhat.com.
