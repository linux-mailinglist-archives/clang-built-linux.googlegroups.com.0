Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBG7WQOEAMGQENZAF5HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1BD3D8813
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 08:37:16 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id u4-20020a05651220c4b02903606e832f3asf562252lfr.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:37:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627454236; cv=pass;
        d=google.com; s=arc-20160816;
        b=OkyMd0jse5HvPjg5t5UIYDjCugLZGy8MEJTUZZcv7Flduj68c5Zmpxupx11RhPDmR8
         Fdy+RFtOdpXAmM+MVaObi4NNgrcfp37fSBr5okztU09fnA6k+r4UA4tDKTFCCpboThbW
         YE0/D8HDaRiW8/VpJvINhIQs/vu2dwZ9czafAt5tZb4E5QRga9QTn43rqjHd1AjzmWJx
         WYUtdIr4jjnJ0bfgKKHoF7hGf68W9mmm2IE1YeBi2BSQUVreXmkkwAIJZZS6Rbu/OoCy
         9nd9dXmBRzaDg+SUw4paE37MmTy2opetKdvzFpJDyJ9zY/Ls2dlvaawLUa89k7dSTBwO
         ddFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=hIxiHTnz/Bbq479Us4fAq1uhbxmMcFj4vKmTle3JH9w=;
        b=rGyUJoykkGO1RlEXkEn4T5N8wsZeVCXyKiE7/xzMY70q4suYhjtSMSNCfaNgVFL/JS
         eDHJl0brNdcjFBKs2TGVMyRfgjrpORdXUn2V5Q+i26GAEfo8y7HO2zIRqk2vmpcQ7qrA
         93CKhxChYVERp7U5zAA/nN4wk3B/iXq0PvFMwLjWd27yOrT4kQFxL1EdxYQt6o/WKnGO
         d6IgFvGOxexXL9mx5+glsmMdHdTTn1uzZvult07MYcL6XLDxUdlXyDzvgBpbbcvMHhmE
         +/SbwP1bimN6O0rwLhegU7A3nFZTVlMiK8g3vDQ8RPzJtV6VJOQRofmcH1zM0lOTMnZG
         zehA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b="J4h6G/X4";
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.84 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hIxiHTnz/Bbq479Us4fAq1uhbxmMcFj4vKmTle3JH9w=;
        b=icv0azot4IImbV/cvD1iVQt6Xqte66DUohQY/ygYlNldpVWXVc8IwL6aOpY0X0jbRZ
         SW33SdyspYl8ath1d7hT6Xtu4D/A3MM1xF/FQn0yBLOQUUQOejS3Tdl1mz2H5UT4w221
         vftnbxZgYIjHyy1reLwSEHK9hkSjmMF2LEIxO1K90fDAiMW68n1bTLvQIzlHoNJHny2i
         aMzznveRu0BBGzs8PknyZZNVTCVMxyx++PaQCOZTqaFYQIKnoUkWWxU4fTbqbJCHfsFf
         Opg+e8RNDmfrhgC7IIGOo+lLzZtboFYFmEnHnU8lejMLBpDz58hP77aD8lhCGZpOq9Lo
         MA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hIxiHTnz/Bbq479Us4fAq1uhbxmMcFj4vKmTle3JH9w=;
        b=cMJELLxvScwdlO3z1ZiMAw7ifdghWqixeOTOSnp8DTvQgkztLzo0pxq74c/nIQIOmW
         1t/GSzzOMi2BmmX1+LShGa+6lcx/oZ+aXFzmcVrc1Y1eX5tViOIYZijv74KOquQIfAjQ
         GPWiNW6Y6Oy5LFYCCYedTQHo2VZm2PRTMlH/qZEANQdk1I2lxQHVGRSonEmcMRV9Gmgq
         6jb0AYAOn4KUv7OROpmRNQvyA+yLUBaxc3VNiq5J4AxlRZ7QvhMRK5o13eASF7yomomZ
         qPssi+aEdstHH+AKCr5qCzYPqAL68NMLeicYRsSs/ITME4JWagmMsDZzPFHxCZ/v1g1K
         NlnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319W4vGCdnyILEkpz9PRNKybn0uIqWXCKfbHvSHbzUBxAEPJJT+
	9gBcLNLvqJWFODuUHfumtsk=
X-Google-Smtp-Source: ABdhPJzymTv0ObbI+BhT7yf+3YvKOSRqP3QiusysVnuvFHKEKhGX4FKSXbNWFXqeUDA1C8WlurMD7Q==
X-Received: by 2002:a05:6512:20a:: with SMTP id a10mr18771715lfo.205.1627454235754;
        Tue, 27 Jul 2021 23:37:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:b89:: with SMTP id b9ls780349lfv.1.gmail; Tue, 27
 Jul 2021 23:37:14 -0700 (PDT)
X-Received: by 2002:a19:fc13:: with SMTP id a19mr20307022lfi.581.1627454234778;
        Tue, 27 Jul 2021 23:37:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627454234; cv=none;
        d=google.com; s=arc-20160816;
        b=BWHskz2hrFS0PTtSwST1HiEj19rnMPXTTadhT/88PA9+gm9mIAk9zkE48wdNlLkScA
         U5rHdnGe16cYP2hoElIFcu9AQHtCJeOpgc7/Abx9ydiwWxjxYvBA2foChXsRgcXVEtjq
         Xzg2IMrFYjtFheYj1BFyAaePmjSRLkNIkGnc4aHvmOXPuBEGeb4dI75DFXWOGBuCzkIz
         S1Y7mELkY9SmE7g0zBiV9daAu5jDUegbLcYfDTI6TCOs0KDepW2lm6Maxda1nFKI4fVj
         ipw68NG1t3ASvdGtWO/Fl8QgLI5CPsQSvpAR4Kk+mPSmHjECnNiG36ilK6hcFU0/eVj0
         DcRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=Yd5qvDofzDaNNwpGdbNUuqb18y/xFATzxRujwJoGZRA=;
        b=msqqOyTGJQWvZqp4SeZIdk3StcHpgYOSCt1P6ENgoFJqgzBDBNhuBrA8QKgti+HsS+
         vkCmVMiVLyYMEQuGez13UlOCwgu/LSHI4d/MOx5iP4lgLQmO3YyWHmovxm5ZVEeG/Rva
         trwT0PnfN/euEVn9bdcPaRGi0d8UwOclKmSuTs5TF9mC+lg1WzqtP03zw3Hw0+HYmvwc
         IXVeZU0chlxMaBCRug+05mwTb8k9zpDZKi1/+HDyoDlbVXaW9FlHPjWPQWCIeWib4rOk
         SiOf315AuITRTVgJkBCvBJwzqQcEWby7BShmVOpixgO8e2E12hZE0jEv5h2Da43iXENr
         atBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b="J4h6G/X4";
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.84 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com. [192.185.50.84])
        by gmr-mx.google.com with ESMTPS id z24si266694lfq.5.2021.07.27.23.37.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 23:37:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.84 as permitted sender) client-ip=192.185.50.84;
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id C98FE7E5A2
	for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 01:35:55 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 8d9qmmB1qjSwz8d9qmWpxR; Wed, 28 Jul 2021 01:35:10 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:44914 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1m8d9p-003qHh-4N; Wed, 28 Jul 2021 01:35:09 -0500
Subject: Re: [PATCH 19/64] ip: Use struct_group() for memcpy() regions
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-20-keescook@chromium.org> <YQDxaYrHu0PeBIuX@kroah.com>
 <baead202-569f-775f-348c-aa64e69f03ed@embeddedor.com>
 <YQD2/CA7zJU7MW6M@kroah.com>
 <e3193698-86d5-d529-e095-e09b4d52927b@embeddedor.com>
Message-ID: <b46e1ac6-ee40-1d23-dbba-b985d9764971@embeddedor.com>
Date: Wed, 28 Jul 2021 01:37:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <e3193698-86d5-d529-e095-e09b4d52927b@embeddedor.com>
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
X-Exim-ID: 1m8d9p-003qHh-4N
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:44914
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 42
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b="J4h6G/X4";       spf=pass
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



On 7/28/21 01:31, Gustavo A. R. Silva wrote:
> 
> 
> On 7/28/21 01:19, Greg Kroah-Hartman wrote:
>> On Wed, Jul 28, 2021 at 01:14:33AM -0500, Gustavo A. R. Silva wrote:
>>>
>>>
>>> On 7/28/21 00:55, Greg Kroah-Hartman wrote:
>>>> On Tue, Jul 27, 2021 at 01:58:10PM -0700, Kees Cook wrote:
>>>>> In preparation for FORTIFY_SOURCE performing compile-time and run-time
>>>>> field bounds checking for memcpy(), memmove(), and memset(), avoid
>>>>> intentionally writing across neighboring fields.
>>>>>
>>>>> Use struct_group() in struct flowi4, struct ipv4hdr, and struct ipv6hdr
>>>>> around members saddr and daddr, so they can be referenced together. This
>>>>> will allow memcpy() and sizeof() to more easily reason about sizes,
>>>>> improve readability, and avoid future warnings about writing beyond the
>>>>> end of saddr.
>>>>>
>>>>> "pahole" shows no size nor member offset changes to struct flowi4.
>>>>> "objdump -d" shows no meaningful object code changes (i.e. only source
>>>>> line number induced differences.)
>>>>>
>>>>> Note that since this is a UAPI header, struct_group() has been open
>>>>> coded.
>>>>>
>>>>> Signed-off-by: Kees Cook <keescook@chromium.org>
>>>>> ---
>>>>>  include/net/flow.h            |  6 ++++--
>>>>>  include/uapi/linux/if_ether.h | 12 ++++++++++--
>>>>>  include/uapi/linux/ip.h       | 12 ++++++++++--
>>>>>  include/uapi/linux/ipv6.h     | 12 ++++++++++--
>>>>>  net/core/flow_dissector.c     | 10 ++++++----
>>>>>  net/ipv4/ip_output.c          |  6 ++----
>>>>>  6 files changed, 42 insertions(+), 16 deletions(-)
>>>>>
>>>>> diff --git a/include/net/flow.h b/include/net/flow.h
>>>>> index 6f5e70240071..f1a3b6c8eae2 100644
>>>>> --- a/include/net/flow.h
>>>>> +++ b/include/net/flow.h
>>>>> @@ -81,8 +81,10 @@ struct flowi4 {
>>>>>  #define flowi4_multipath_hash	__fl_common.flowic_multipath_hash
>>>>>  
>>>>>  	/* (saddr,daddr) must be grouped, same order as in IP header */
>>>>> -	__be32			saddr;
>>>>> -	__be32			daddr;
>>>>> +	struct_group(addrs,
>>>>> +		__be32			saddr;
>>>>> +		__be32			daddr;
>>>>> +	);
>>>>>  
>>>>>  	union flowi_uli		uli;
>>>>>  #define fl4_sport		uli.ports.sport
>>>>> diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
>>>>> index a0b637911d3c..8f5667b2ea92 100644
>>>>> --- a/include/uapi/linux/if_ether.h
>>>>> +++ b/include/uapi/linux/if_ether.h
>>>>> @@ -163,8 +163,16 @@
>>>>>  
>>>>>  #if __UAPI_DEF_ETHHDR
>>>>>  struct ethhdr {
>>>>> -	unsigned char	h_dest[ETH_ALEN];	/* destination eth addr	*/
>>>>> -	unsigned char	h_source[ETH_ALEN];	/* source ether addr	*/
>>>>> +	union {
>>>>> +		struct {
>>>>> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
>>>>> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
>>>>> +		};
>>>>> +		struct {
>>>>> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
>>>>> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
>>>>> +		} addrs;
>>>>
>>>> A union of the same fields in the same structure in the same way?
>>>>
>>>> Ah, because struct_group() can not be used here?  Still feels odd to see
>>>> in a userspace-visible header.
>>>>
>>>>> +	};
>>>>>  	__be16		h_proto;		/* packet type ID field	*/
>>>>>  } __attribute__((packed));
>>>>>  #endif
>>>>> diff --git a/include/uapi/linux/ip.h b/include/uapi/linux/ip.h
>>>>> index e42d13b55cf3..33647a37e56b 100644
>>>>> --- a/include/uapi/linux/ip.h
>>>>> +++ b/include/uapi/linux/ip.h
>>>>> @@ -100,8 +100,16 @@ struct iphdr {
>>>>>  	__u8	ttl;
>>>>>  	__u8	protocol;
>>>>>  	__sum16	check;
>>>>> -	__be32	saddr;
>>>>> -	__be32	daddr;
>>>>> +	union {
>>>>> +		struct {
>>>>> +			__be32	saddr;
>>>>> +			__be32	daddr;
>>>>> +		} addrs;
>>>>> +		struct {
>>>>> +			__be32	saddr;
>>>>> +			__be32	daddr;
>>>>> +		};
>>>>
>>>> Same here (except you named the first struct addrs, not the second,
>>>> unlike above).
>>>>
>>>>
>>>>> +	};
>>>>>  	/*The options start here. */
>>>>>  };
>>>>>  
>>>>> diff --git a/include/uapi/linux/ipv6.h b/include/uapi/linux/ipv6.h
>>>>> index b243a53fa985..1c26d32e733b 100644
>>>>> --- a/include/uapi/linux/ipv6.h
>>>>> +++ b/include/uapi/linux/ipv6.h
>>>>> @@ -130,8 +130,16 @@ struct ipv6hdr {
>>>>>  	__u8			nexthdr;
>>>>>  	__u8			hop_limit;
>>>>>  
>>>>> -	struct	in6_addr	saddr;
>>>>> -	struct	in6_addr	daddr;
>>>>> +	union {
>>>>> +		struct {
>>>>> +			struct	in6_addr	saddr;
>>>>> +			struct	in6_addr	daddr;
>>>>> +		} addrs;
>>>>> +		struct {
>>>>> +			struct	in6_addr	saddr;
>>>>> +			struct	in6_addr	daddr;
>>>>> +		};
>>>>
>>>> addrs first?  Consistancy is key :)
>>>
>>> I think addrs should be second. In general, I think all newly added
>>> non-anonymous structures should be second.
>>
>> Why not use a local version of the macro like was done in the DRM header
>> file, to make it always work the same and more obvious what is

Yep; I agree. That one looks just fine. :)

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b46e1ac6-ee40-1d23-dbba-b985d9764971%40embeddedor.com.
