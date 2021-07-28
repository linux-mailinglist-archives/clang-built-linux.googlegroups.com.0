Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBJHSQOEAMGQE7WXTKCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A363D87EB
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 08:28:53 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id r17-20020adfda510000b02901526f76d738sf502350wrl.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:28:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627453732; cv=pass;
        d=google.com; s=arc-20160816;
        b=lpp/XK0cxd0B3qzdlT5bhO/Amn49unEZaWZ4FeMJfCoY5VuWZDnW+HPSnMbsY4+6/E
         5fszrZp9/d8N+hnBnMKtKgmwMzVUSeNYPXAcoPRPa6s+55EfcriQDeMOYYWYGf3sNkpC
         fpJOkNn6FUe0ukFJFFJ/j78b21EPvnXrojUiW0Dt+CaTsWakeLvt6F9PiZQZzx2BXHEW
         xBZbx7RQyk3/hNu1JWeL/AskFAzD+na5kvC3niWQPtiGFFIuwfmIvyD2Zr3TsGTYvl6E
         kYMo8L7pux0fkKJKnFL3t/bNS4pdUc00jxM8NOKVKkslV3u5PsUPq3F7rUSYaIMBGPMS
         MfSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=kspby9WUFE6931GUWWTk6U9RMDo2TD6s8SZZOx9DnuY=;
        b=OaVthixIdv05wm5aXfEjmbnHnKjNmygP3PlicMh3NaXb5yDeXAvXTC7nS8Vkmfad/g
         b7bxMHGUGqzPFpNrZ0bc9KuNnzxacclUa71KIehUO5M4Sgd4Kz71A3WFgBs+/OQ5PWG2
         3e7uH3pzRuaptE0nxNsnqAl7RmDPipAD1oEJEHM9qW8w24faLJbfkj0wMRX8yqBwlN9a
         Bj6AihGjrnKt+Ut4yA4AG/iIOdXnfK4VBaMwdfu+U1eD7AsnUkUe3pX2CfgYGiTSXHBF
         ox67/PJTNM04SUnhftJrASSyRJRKKeY76YArJxv5Dtn8rR3OWHICks8cfjlWX0J6VrFk
         iw6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=xWCSVCo5;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.225 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kspby9WUFE6931GUWWTk6U9RMDo2TD6s8SZZOx9DnuY=;
        b=SH2wZVHajfwWsHNNEqrEC5HKeBRI2kebreAVaJpeafSLoNkREIVHkjyTIqnO2odWLh
         z97mAKyq/lFlDUUuEjePQunUhg7tfFHQp8k8WxrIeoG4jWQEWLyUKkCD/ZlJPIr0KYHX
         IcyFLnmG3Cl5hm77V4N/tn2F2G12Raaq3NnlQ2iXbt8oZjx/MB2xPrntHBXPTyAb22Un
         tgXrgTnZ3ci9vOmWmWtBKP8M+pm7qMQllCYjSoU38HWiuzMNXKKkzpotvQUgoc9GXLeW
         EJlSz/KJEIduoFLUKW4z2a7pBMqP8qAzV9NNBwLEhKT9izRRTGF10HyUl0SB0L/+FBwB
         Iy2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kspby9WUFE6931GUWWTk6U9RMDo2TD6s8SZZOx9DnuY=;
        b=Rw9j1SNk4YmTGVfNdouQ4dFa4q12Q9E90Vf2Mk+thUL+ZtSqx4z02hmq/tKfnQ9bGo
         XFyE3v9RIBz12ZMnoyMYuOLAAk/teLF0aMGK8YSfI1jW2u9q1r4kimw5OiG1wpfqyY0U
         YjgsGCqfJ5Erqp5qRnujyviqbALc1Y3AXaB1OYTzGQ3be1sBpKQtG3MKzaSgOmf5vb6t
         jpZFVVxfrIBms4Rl9akaBe1gpJ5pv3OhaVg3U8ajcSX9RURHmWASuwpwtzKvT1/gJegi
         zBx2I1a4xT3wp2WCGU/wBHZ0CDVZ+Re4Vx8+Fn5mZlc9NrVfTSyEoO955TwdxV/LyR1y
         f/eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LQl/XMlZUvUhzdO6MMJ1FSkyEd0F9lh/2kn054f4eU4gZfx9l
	1+ZzB1R62Fw4+oH3lHXIMAg=
X-Google-Smtp-Source: ABdhPJxCMvS/WXV1nE/kOeeitnZ1/2a7QsqKJAligKLPzuCEkY3tnRDYne260q4OLIgjvKkUEOh3eQ==
X-Received: by 2002:adf:d20e:: with SMTP id j14mr17232289wrh.177.1627453732738;
        Tue, 27 Jul 2021 23:28:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls1368292wrr.3.gmail; Tue, 27 Jul
 2021 23:28:51 -0700 (PDT)
X-Received: by 2002:adf:f081:: with SMTP id n1mr20291108wro.235.1627453731909;
        Tue, 27 Jul 2021 23:28:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627453731; cv=none;
        d=google.com; s=arc-20160816;
        b=SpoEFqxqdqbm/P4NuICiO6VubQ8j9cofhxbPuBN7ctEz3hhv0KVL9jEcVwn9fpMdeJ
         8xtA12Ca2Amu/c3qZKn0v9geP8YxCv2V4uAYbAuDtfWZr5J+36jeUeL28LJN+zOb1G4a
         kVkdJpiQojf1eXPBax9CTK/j+85nP6bQ5wWGOQ2hsOsGv6bqkVM6rqZs87uUDDeYiNHi
         H2mtrbTP7YfWvRvJYfhwlcT+LHkGfjgDhh1d6YbeDGGRgTHQ8yrvILdP8wuC+B6/fLP/
         MjQdynTtW/SANmoq1gMYi9vnK/5+4Y8oEnTsUVikyxvnO4H5tNWh+07q0h/VqnS6QWmt
         nxhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=PByFd2qeq/2ftWrrzQXYKD+9AqEh75xYa8NQ7nHf9Jg=;
        b=XSdDv+G/I8NG6xK/qhGS1C1bbRt7Y3b6fIZE1p6O4Uyy83tG6ZJagq9YOo/VTmtJnN
         3xyvcjad7tlUF18Fr2l0L0ga6U77BoVwRWGCyl37pWaebXXXCf325V3BhaPcK36T0arK
         2METTExcylvGN8ambMZLAHTsRmYUeX3d72PyJAzCNbHUPqLWRj2ivMDiYktoW71O3rWG
         zk0+GM4zTeZkpYlkfNF5uZiUXpR7ztknjjr1W638jOojlZGdZWdq9o/7D+tSOwN5eHFc
         kOj0mnFQAaobMVkhMgT63mGEwOtNx3K5zDu9bLy1TUH/WLgi8+TXS+fuwz9Tah7W7skF
         JyDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=xWCSVCo5;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.225 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway22.websitewelcome.com (gateway22.websitewelcome.com. [192.185.46.225])
        by gmr-mx.google.com with ESMTPS id 189si188278wmb.2.2021.07.27.23.28.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 23:28:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.225 as permitted sender) client-ip=192.185.46.225;
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
	by gateway22.websitewelcome.com (Postfix) with ESMTP id 0C2D0FF8A
	for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 01:28:48 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 8d3fmCGudsCiy8d3fmvJe6; Wed, 28 Jul 2021 01:28:47 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:44898 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1m8d3e-003ign-Vl; Wed, 28 Jul 2021 01:28:47 -0500
Subject: Re: [PATCH 19/64] ip: Use struct_group() for memcpy() regions
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
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <e3193698-86d5-d529-e095-e09b4d52927b@embeddedor.com>
Date: Wed, 28 Jul 2021 01:31:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YQD2/CA7zJU7MW6M@kroah.com>
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
X-Exim-ID: 1m8d3e-003ign-Vl
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:44898
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 28
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=xWCSVCo5;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.46.225 as
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



On 7/28/21 01:19, Greg Kroah-Hartman wrote:
> On Wed, Jul 28, 2021 at 01:14:33AM -0500, Gustavo A. R. Silva wrote:
>>
>>
>> On 7/28/21 00:55, Greg Kroah-Hartman wrote:
>>> On Tue, Jul 27, 2021 at 01:58:10PM -0700, Kees Cook wrote:
>>>> In preparation for FORTIFY_SOURCE performing compile-time and run-time
>>>> field bounds checking for memcpy(), memmove(), and memset(), avoid
>>>> intentionally writing across neighboring fields.
>>>>
>>>> Use struct_group() in struct flowi4, struct ipv4hdr, and struct ipv6hdr
>>>> around members saddr and daddr, so they can be referenced together. This
>>>> will allow memcpy() and sizeof() to more easily reason about sizes,
>>>> improve readability, and avoid future warnings about writing beyond the
>>>> end of saddr.
>>>>
>>>> "pahole" shows no size nor member offset changes to struct flowi4.
>>>> "objdump -d" shows no meaningful object code changes (i.e. only source
>>>> line number induced differences.)
>>>>
>>>> Note that since this is a UAPI header, struct_group() has been open
>>>> coded.
>>>>
>>>> Signed-off-by: Kees Cook <keescook@chromium.org>
>>>> ---
>>>>  include/net/flow.h            |  6 ++++--
>>>>  include/uapi/linux/if_ether.h | 12 ++++++++++--
>>>>  include/uapi/linux/ip.h       | 12 ++++++++++--
>>>>  include/uapi/linux/ipv6.h     | 12 ++++++++++--
>>>>  net/core/flow_dissector.c     | 10 ++++++----
>>>>  net/ipv4/ip_output.c          |  6 ++----
>>>>  6 files changed, 42 insertions(+), 16 deletions(-)
>>>>
>>>> diff --git a/include/net/flow.h b/include/net/flow.h
>>>> index 6f5e70240071..f1a3b6c8eae2 100644
>>>> --- a/include/net/flow.h
>>>> +++ b/include/net/flow.h
>>>> @@ -81,8 +81,10 @@ struct flowi4 {
>>>>  #define flowi4_multipath_hash	__fl_common.flowic_multipath_hash
>>>>  
>>>>  	/* (saddr,daddr) must be grouped, same order as in IP header */
>>>> -	__be32			saddr;
>>>> -	__be32			daddr;
>>>> +	struct_group(addrs,
>>>> +		__be32			saddr;
>>>> +		__be32			daddr;
>>>> +	);
>>>>  
>>>>  	union flowi_uli		uli;
>>>>  #define fl4_sport		uli.ports.sport
>>>> diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
>>>> index a0b637911d3c..8f5667b2ea92 100644
>>>> --- a/include/uapi/linux/if_ether.h
>>>> +++ b/include/uapi/linux/if_ether.h
>>>> @@ -163,8 +163,16 @@
>>>>  
>>>>  #if __UAPI_DEF_ETHHDR
>>>>  struct ethhdr {
>>>> -	unsigned char	h_dest[ETH_ALEN];	/* destination eth addr	*/
>>>> -	unsigned char	h_source[ETH_ALEN];	/* source ether addr	*/
>>>> +	union {
>>>> +		struct {
>>>> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
>>>> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
>>>> +		};
>>>> +		struct {
>>>> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
>>>> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
>>>> +		} addrs;
>>>
>>> A union of the same fields in the same structure in the same way?
>>>
>>> Ah, because struct_group() can not be used here?  Still feels odd to see
>>> in a userspace-visible header.
>>>
>>>> +	};
>>>>  	__be16		h_proto;		/* packet type ID field	*/
>>>>  } __attribute__((packed));
>>>>  #endif
>>>> diff --git a/include/uapi/linux/ip.h b/include/uapi/linux/ip.h
>>>> index e42d13b55cf3..33647a37e56b 100644
>>>> --- a/include/uapi/linux/ip.h
>>>> +++ b/include/uapi/linux/ip.h
>>>> @@ -100,8 +100,16 @@ struct iphdr {
>>>>  	__u8	ttl;
>>>>  	__u8	protocol;
>>>>  	__sum16	check;
>>>> -	__be32	saddr;
>>>> -	__be32	daddr;
>>>> +	union {
>>>> +		struct {
>>>> +			__be32	saddr;
>>>> +			__be32	daddr;
>>>> +		} addrs;
>>>> +		struct {
>>>> +			__be32	saddr;
>>>> +			__be32	daddr;
>>>> +		};
>>>
>>> Same here (except you named the first struct addrs, not the second,
>>> unlike above).
>>>
>>>
>>>> +	};
>>>>  	/*The options start here. */
>>>>  };
>>>>  
>>>> diff --git a/include/uapi/linux/ipv6.h b/include/uapi/linux/ipv6.h
>>>> index b243a53fa985..1c26d32e733b 100644
>>>> --- a/include/uapi/linux/ipv6.h
>>>> +++ b/include/uapi/linux/ipv6.h
>>>> @@ -130,8 +130,16 @@ struct ipv6hdr {
>>>>  	__u8			nexthdr;
>>>>  	__u8			hop_limit;
>>>>  
>>>> -	struct	in6_addr	saddr;
>>>> -	struct	in6_addr	daddr;
>>>> +	union {
>>>> +		struct {
>>>> +			struct	in6_addr	saddr;
>>>> +			struct	in6_addr	daddr;
>>>> +		} addrs;
>>>> +		struct {
>>>> +			struct	in6_addr	saddr;
>>>> +			struct	in6_addr	daddr;
>>>> +		};
>>>
>>> addrs first?  Consistancy is key :)
>>
>> I think addrs should be second. In general, I think all newly added
>> non-anonymous structures should be second.
> 
> Why not use a local version of the macro like was done in the DRM header
> file, to make it always work the same and more obvious what is
> happening?  If I were a userspace developer and saw the above, I would
> think that the kernel developers have lost it :)

Then don't take a look at this[1]. :p

--
Gustavo

[1] https://git.kernel.org/linus/c0a744dcaa29e9537e8607ae9c965ad936124a4d

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e3193698-86d5-d529-e095-e09b4d52927b%40embeddedor.com.
