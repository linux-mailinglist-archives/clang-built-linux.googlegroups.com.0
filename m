Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBQHKQOEAMGQEUL6D2JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id C081C3D87B2
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 08:12:16 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id t10-20020a056512208ab029037e853a8057sf529565lfr.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:12:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627452736; cv=pass;
        d=google.com; s=arc-20160816;
        b=vu/iJgkttx8mx+s7nwfxrV9skod3vl8WKa6ZzBNk+TZb9JCtLK80y7PuELBYKDgZz6
         I7eRp/yNvvUg35RMItw3Vu0RcHf9VIcn14fgfnNpvavqkuikF7L1p6YxjR7sVmc5wMuo
         TYsGc4ZvcsRCXXZR2Nn6KXg7YuSo9oaqb446Vqh0onhUJIIhfaQ6pTbYgSnOETG0WN6t
         hAul3uXdb7vnJ+xTcCPL17EMkhLVL4UI3wI6fydsi8QYZm48nKQnNpniWBql4QdxQEwA
         nXoIzr3alXj5drXAaDvAblww8Hnqqr2xgsuDJmvxB2MaR400xTD9SJfjXSrlGjxzFP2t
         IVEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=7zsGLtPxTUxqHTsA0N/qHT8Fn3eL13SIoCEE0ZUfsYw=;
        b=yGJcZ4eK0NpybzLqn1P4uGPSSWzcLgsnoIMpIRe8Vi9hknsP6eaUqZyoukqUyRGB9y
         fRgVZAN3mh7eVn/de7eEvlPYvOERij9u8SbZxR3r5cueagPMwB4bbJezy6OyU2mf5J9X
         Y0qpv2NKllYGkFgxgHiiaylBfvqMShMFgVovZlSqn8OmGC83vWBh9S+XCqG6nMPFWp5G
         jqbMKVvFn0Sv1NiMR1GM/CkH+GiBVbXSgO16Hmzj2IVfFQdsnlKznnW6AjIKtflQ+UE7
         YrmdZMpSyUCpIgoI9XDBABlZe4fsuGOdlPBItHPdlm0CYgcA2R4PFOIwEyOXYLPrlhY6
         sZfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=VcIfYrm9;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.84 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7zsGLtPxTUxqHTsA0N/qHT8Fn3eL13SIoCEE0ZUfsYw=;
        b=AkhlTF3div26SC6ZIiW+7hB8QpcF3xRWBNsYZQKtI3okg9wMK6PUPmPL/mEwuuIB3G
         /zKd3NjMn8xNZXqlCkErol65VWZMW0cksNA5DX+OivBNEtUHWoNbEy/a/wowbkVz54NH
         9NaJX9Qit9E8V1/4TTJ1fex78rGJi66hRjbZvo7L6h2+csyvKbi/84HIJTel78ohroBl
         q5ZxLk3nw+BMdiz6nFyXTtoSSJ3b5IaZlw/BxZgttzrzkqH7hU4c9Rx3bHADFEeJn14q
         caiDTKrzjF3qh3cDtWa288ovB0lKhL4KnXE1O43PC8h44HyBwzdb40t76uaxy476LO6M
         X/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7zsGLtPxTUxqHTsA0N/qHT8Fn3eL13SIoCEE0ZUfsYw=;
        b=hCHfaYhlDE3IR5hAtM6rL4fW4wuM9MJ/2diTXm0U8+snWs5NOO6PXTKJ904uTkbB8R
         4Kn7biyElJxfRdzI71s15B1Y39RAh9wEiO5qX8OZc36GH3vlEbeP4kGyV+Xu7j5Jk4u9
         auEIfsfewddR5JDFE1Kp9JQamRX1TeA2O7wWLEqc+yE8We250GW0U7gvyldGuVTsTZb3
         0vLQNf1mHcw35sMyqMi6w9bR4XE6op5q/1Xo6SM/nt60iFKI+6mdOTDfdUG/jLkSU+Ww
         qCWI3o/bB8kaQsgMFKB8EICDIfqoIAqCiySsCmEGqGVuqCJc/jTOSEKvUm1LF/dKwlK5
         zLfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531F6uK64/BkRQao2FjT0u3WY0bRudzk7WMdFCXoMACyLJedidvg
	Zkyjt52w8YSx9KN1e1IITn4=
X-Google-Smtp-Source: ABdhPJwewCU/TwwvMQ8hj4YZOv3bWOmHXatrCm3+a+oDkEIasW5WNER78b9Rz4AmeVQYxpMInFoOWw==
X-Received: by 2002:a05:6512:4004:: with SMTP id br4mr19243771lfb.2.1627452736327;
        Tue, 27 Jul 2021 23:12:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:36c2:: with SMTP id e2ls725434lfs.3.gmail; Tue, 27
 Jul 2021 23:12:15 -0700 (PDT)
X-Received: by 2002:ac2:58ef:: with SMTP id v15mr18442163lfo.408.1627452735295;
        Tue, 27 Jul 2021 23:12:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627452735; cv=none;
        d=google.com; s=arc-20160816;
        b=zhWKRBQUsLWOpNFW6U+mZMcHF76UzlqhZE51Unl8PzzHlRbAUwqhPS0M9TG1xDOJHI
         VUyT44zIXVqd3D3B23J8TQ5QqzX2phMDSWyR14luvZD6ec3w9EcIVcxvZ6Mx7qW/onON
         Yzu0cjw9Pvseh7w55HXr/tAuuYn3nMTCimojtj0INBK9yd1PBUBCIOHZiQB8f59Klk2S
         bs4XsmctWVTNbNCBe6sqHICgK4ZrNP+rv1R7IL9MBsatCXasUSDjHmDuT7suWmXfTJun
         ZovdtMYeAv2KwWEYKzgsOWARzst8Omeh3jJfpoys3w5aI5QrhXtt0jIG6B9fFKEuuD6a
         +E4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=/gCRywG3p9gdzDsdnfCiyJuRt7hlhcIRTlf1DfYGxQk=;
        b=pTQJDdiCr1icJ1d69hAROCaL0NMUQpPHu82rQKME2DpPk3VrKnUuJnkkAFtxvHc/5Q
         /BBHaXsc8oh2BoqfvyBhEn8K6BnszoDn3yQOJ62F6OvKPwGYcZlSH6GiMAIyEIVCo30E
         Ph1+zskXNqaa1f5pBnLq32SHXQ0qvj9yGqSOdeeUyxGHDdv2OYcpCeLblOOTZQesfLHW
         g9AceLFMXC3XDlsyK/jjunBqJUVlOxyMe1yL4w/CiAfexWyN51VLhnkmAQTsNt8hR4DJ
         7wLX54J4COBzIDBcpAdyufmr0YjBVZ1jbYF262zdst3/Fj3JTHTnSBEI5HyQNFhJyYIZ
         NVMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=VcIfYrm9;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.84 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com. [192.185.50.84])
        by gmr-mx.google.com with ESMTPS id c40si218696lfv.12.2021.07.27.23.12.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 23:12:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.84 as permitted sender) client-ip=192.185.50.84;
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id 446037861
	for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 01:12:11 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 8cnbmBitvsCiy8cnbmumei; Wed, 28 Jul 2021 01:12:11 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:44814 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1m8cna-003PI6-Vi; Wed, 28 Jul 2021 01:12:11 -0500
Subject: Re: [PATCH 19/64] ip: Use struct_group() for memcpy() regions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-20-keescook@chromium.org> <YQDxaYrHu0PeBIuX@kroah.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <baead202-569f-775f-348c-aa64e69f03ed@embeddedor.com>
Date: Wed, 28 Jul 2021 01:14:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YQDxaYrHu0PeBIuX@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1m8cna-003PI6-Vi
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:44814
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 14
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=VcIfYrm9;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.50.84 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 7/28/21 00:55, Greg Kroah-Hartman wrote:
> On Tue, Jul 27, 2021 at 01:58:10PM -0700, Kees Cook wrote:
>> In preparation for FORTIFY_SOURCE performing compile-time and run-time
>> field bounds checking for memcpy(), memmove(), and memset(), avoid
>> intentionally writing across neighboring fields.
>>
>> Use struct_group() in struct flowi4, struct ipv4hdr, and struct ipv6hdr
>> around members saddr and daddr, so they can be referenced together. This
>> will allow memcpy() and sizeof() to more easily reason about sizes,
>> improve readability, and avoid future warnings about writing beyond the
>> end of saddr.
>>
>> "pahole" shows no size nor member offset changes to struct flowi4.
>> "objdump -d" shows no meaningful object code changes (i.e. only source
>> line number induced differences.)
>>
>> Note that since this is a UAPI header, struct_group() has been open
>> coded.
>>
>> Signed-off-by: Kees Cook <keescook@chromium.org>
>> ---
>>  include/net/flow.h            |  6 ++++--
>>  include/uapi/linux/if_ether.h | 12 ++++++++++--
>>  include/uapi/linux/ip.h       | 12 ++++++++++--
>>  include/uapi/linux/ipv6.h     | 12 ++++++++++--
>>  net/core/flow_dissector.c     | 10 ++++++----
>>  net/ipv4/ip_output.c          |  6 ++----
>>  6 files changed, 42 insertions(+), 16 deletions(-)
>>
>> diff --git a/include/net/flow.h b/include/net/flow.h
>> index 6f5e70240071..f1a3b6c8eae2 100644
>> --- a/include/net/flow.h
>> +++ b/include/net/flow.h
>> @@ -81,8 +81,10 @@ struct flowi4 {
>>  #define flowi4_multipath_hash	__fl_common.flowic_multipath_hash
>>  
>>  	/* (saddr,daddr) must be grouped, same order as in IP header */
>> -	__be32			saddr;
>> -	__be32			daddr;
>> +	struct_group(addrs,
>> +		__be32			saddr;
>> +		__be32			daddr;
>> +	);
>>  
>>  	union flowi_uli		uli;
>>  #define fl4_sport		uli.ports.sport
>> diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
>> index a0b637911d3c..8f5667b2ea92 100644
>> --- a/include/uapi/linux/if_ether.h
>> +++ b/include/uapi/linux/if_ether.h
>> @@ -163,8 +163,16 @@
>>  
>>  #if __UAPI_DEF_ETHHDR
>>  struct ethhdr {
>> -	unsigned char	h_dest[ETH_ALEN];	/* destination eth addr	*/
>> -	unsigned char	h_source[ETH_ALEN];	/* source ether addr	*/
>> +	union {
>> +		struct {
>> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
>> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
>> +		};
>> +		struct {
>> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
>> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
>> +		} addrs;
> 
> A union of the same fields in the same structure in the same way?
> 
> Ah, because struct_group() can not be used here?  Still feels odd to see
> in a userspace-visible header.
> 
>> +	};
>>  	__be16		h_proto;		/* packet type ID field	*/
>>  } __attribute__((packed));
>>  #endif
>> diff --git a/include/uapi/linux/ip.h b/include/uapi/linux/ip.h
>> index e42d13b55cf3..33647a37e56b 100644
>> --- a/include/uapi/linux/ip.h
>> +++ b/include/uapi/linux/ip.h
>> @@ -100,8 +100,16 @@ struct iphdr {
>>  	__u8	ttl;
>>  	__u8	protocol;
>>  	__sum16	check;
>> -	__be32	saddr;
>> -	__be32	daddr;
>> +	union {
>> +		struct {
>> +			__be32	saddr;
>> +			__be32	daddr;
>> +		} addrs;
>> +		struct {
>> +			__be32	saddr;
>> +			__be32	daddr;
>> +		};
> 
> Same here (except you named the first struct addrs, not the second,
> unlike above).
> 
> 
>> +	};
>>  	/*The options start here. */
>>  };
>>  
>> diff --git a/include/uapi/linux/ipv6.h b/include/uapi/linux/ipv6.h
>> index b243a53fa985..1c26d32e733b 100644
>> --- a/include/uapi/linux/ipv6.h
>> +++ b/include/uapi/linux/ipv6.h
>> @@ -130,8 +130,16 @@ struct ipv6hdr {
>>  	__u8			nexthdr;
>>  	__u8			hop_limit;
>>  
>> -	struct	in6_addr	saddr;
>> -	struct	in6_addr	daddr;
>> +	union {
>> +		struct {
>> +			struct	in6_addr	saddr;
>> +			struct	in6_addr	daddr;
>> +		} addrs;
>> +		struct {
>> +			struct	in6_addr	saddr;
>> +			struct	in6_addr	daddr;
>> +		};
> 
> addrs first?  Consistancy is key :)

I think addrs should be second. In general, I think all newly added
non-anonymous structures should be second.

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/baead202-569f-775f-348c-aa64e69f03ed%40embeddedor.com.
