Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB3HCQOEAMGQEENR7QBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A943D8782
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 07:55:57 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id e25-20020a4ab9990000b0290260d4063992sf819490oop.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:55:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627451756; cv=pass;
        d=google.com; s=arc-20160816;
        b=tQ1zA0YjFPPpgXjIRBJU91s8m1XriphKp69eNonOmwG8gjw3hw573WAFbM+yrsnHFB
         IRmH1QJD3XwV4lIUvAnbT6kujAmDnR50O4JM0UdbWB/UE5NfdXT+cdmAWfYzz/XCF3gD
         IOMfZa71zoyDBg4Vx5A2onVbkL7DVJtQHefdEAjDxwi7GhKfPEdPTA3tx3dYMmD+3koB
         Cpl0UBQOVjiNJrhMN+lP1UzXfAEA/1PPlhbMok0m67p4Pa76mItoNF+dJLRsH8YEffp6
         1TzFlK1giGeeiLWO+D11Kh760UWwSy7A8rXQSfFubiEpo7waheSTlZoMl9YfZMS83kkj
         6OaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YfNf7KP5zIgQhf1TfSohdD/eJ76Rly9RVBe61qDIy7U=;
        b=xU86wLVnFIvWHsVmFyVLqQz6Iqt32DPfBJqqsrGgyo0l8v/uOS/Nh/ZLZ7FF5TAOS8
         i4X0Esvp/zyoX+nHnK2JjiCfEbYy2zD9tnCOI2eLrhidxtB+mhbbF112b1Kh3aQQLOrb
         Iymqr8zTeIVX4UKPAVUDQBoD2XtkBC4edX3oA7P8fuIl2690O65juRbN8P5KyFOtUN4f
         fmHLK0LnoGK3V31tRXIL9tUYOclpLh+sFwyDSNbLRV1+bZnlqh4DjXbU9gIXezOAmvWJ
         iP+6LkVcxRvq2PqAukisn7KO8NZeWtZ8vrPnD04oAkGxlHt2jAdASAN5DqAbjRgm3ljS
         1FuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="qLN7/AfF";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YfNf7KP5zIgQhf1TfSohdD/eJ76Rly9RVBe61qDIy7U=;
        b=QVaWEfkjkURftbxPwdRYLv7mFx+GxMwk8wkbzi4ndBJJvGr1t9ddooDW+m4wzLbbdb
         EoHfDClQNnPHPa0njJwosNr06m449KDWHhc80iwvXA2c2F4TTx9XKN4EbeslPuHPp8Fo
         YWxBstVhdASFygEvZmvmNSccci02fTy9mG5G/n+DZ7fkNHQpiDBxdC/QqcvaiXUam34r
         B5Tx5iaY0wo+YJL9hUmJBkE6VvdQDOp7pasUi4/YriAizX2ScVPsj7YAxYWXBmstCk/p
         DlShZlm988Lx/O4og/OEqjPXmbGtro9mTgNMhv240dnbdSefhIdnJh1wi4lgPPQmqMRt
         xWRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YfNf7KP5zIgQhf1TfSohdD/eJ76Rly9RVBe61qDIy7U=;
        b=HE6EXNADPrUxSg1OcKZRxvGek9KrmEqEGTh7scuiHkjIbc4lSFO6U6Ysp/rw18sS1Z
         N6pp5GRxDM2i/4CdRFbcSZdsWQI6+Ttjy4Ej+qpEro3/+PbQC7Trq2reCkA6K7GI75Cc
         M1ebapwYaOdmYQG30g43CJU34rZgps4D3e+hRfU5epPKiOkpuxNqIUn2jDLinFZ1PZia
         BVioAiNJqwEokEbz+RLnjucegQBJbB7eQYbL81fD8dDb79b+ZsUeDEi2pH1zy2E80nXu
         Zo/4fmRmKcW0zWvnnxO6O2/TA80yWP2D6nAL6Sz9iCeMuN2HaH3wqELCxc3X5WHIB45Y
         WWfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sH29WXDpyA2bWCnkxEMIVA988WUi7ErhAXJ4gjHWC1eRcZNYU
	KVFp+LABfLt48gXUWYKeExg=
X-Google-Smtp-Source: ABdhPJxYF1cqBHkR+gNBJ+6P8iqxwrSTEZrFGECnC1Cz91bn+eSnTz8WBb0booazYi904Wvwn2+7+w==
X-Received: by 2002:aca:1e12:: with SMTP id m18mr5288907oic.95.1627451756063;
        Tue, 27 Jul 2021 22:55:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c7c8:: with SMTP id x191ls367941oif.2.gmail; Tue, 27 Jul
 2021 22:55:55 -0700 (PDT)
X-Received: by 2002:aca:b342:: with SMTP id c63mr5196978oif.83.1627451755720;
        Tue, 27 Jul 2021 22:55:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627451755; cv=none;
        d=google.com; s=arc-20160816;
        b=sMd7dFcDaAFDrZGPkl4dpv37WoC/amO2lIUWmFf7GkuQHCJDlAiSyzOrfSfW8/qgaD
         TamQqH+Q9R9UbyCua1RyaLB+XDvT2ezv1/B2s8POmDYa1jTprWjvoBMkWupTDpOh1EDe
         esBaCFKRVll347TzqEXrf29LEbUlqs+bX5GacPqOzz4vekeCTRI3hKG1m43vn/wBgNer
         EBlMk2f6N6m8R9s36CdZGWEtMPjaBCTVJ0HGIBO9ixKasbXknFgP05PT+pZLUFcNlSyT
         YXZriPJan3sgvQEqDX7K70S3M1zmMf1VqhFkttvn1aZOSt8sTiRZ6leY68QP0Qqun67B
         Q0tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SFrNUFMlu/iW83UKx+o9aeYCoQIFKildXabT/9eDDF4=;
        b=m/NG7OYE0S62T27A5SXTGNIxK7D0e/pPiLC6qUs3omAq1hC3DLEfj8E2hcaIa4EZe/
         XVKA87xwEbs5UuVH16D6yc47eiQp1/F7ADYyRHO/qosSL4uFd6Q7+i2cEhgwwD9o9iLg
         mKbbi6ZiQ3FNc10PfppvTlpBgeI/wgzMluAoBHeqLqEBtP2WBbBhrAy40IhhIc9JUAZC
         zW7NENrm245Bh6iJpUC6zZMDk+gH0qWfpmcGR4ARpz8zkVD3CXIhQbV4f7kQDse7AItd
         0LcqEAH1XZxxzP0g5s6DFS5GbNxIRAxn93VEzfhA4Ob6Swfbgzb4L29K6RTNxUSrwfG3
         LqTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="qLN7/AfF";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g9si335411ots.5.2021.07.27.22.55.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 22:55:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9539F60F91;
	Wed, 28 Jul 2021 05:55:54 +0000 (UTC)
Date: Wed, 28 Jul 2021 07:55:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 19/64] ip: Use struct_group() for memcpy() regions
Message-ID: <YQDxaYrHu0PeBIuX@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-20-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-20-keescook@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="qLN7/AfF";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jul 27, 2021 at 01:58:10PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Use struct_group() in struct flowi4, struct ipv4hdr, and struct ipv6hdr
> around members saddr and daddr, so they can be referenced together. This
> will allow memcpy() and sizeof() to more easily reason about sizes,
> improve readability, and avoid future warnings about writing beyond the
> end of saddr.
> 
> "pahole" shows no size nor member offset changes to struct flowi4.
> "objdump -d" shows no meaningful object code changes (i.e. only source
> line number induced differences.)
> 
> Note that since this is a UAPI header, struct_group() has been open
> coded.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/net/flow.h            |  6 ++++--
>  include/uapi/linux/if_ether.h | 12 ++++++++++--
>  include/uapi/linux/ip.h       | 12 ++++++++++--
>  include/uapi/linux/ipv6.h     | 12 ++++++++++--
>  net/core/flow_dissector.c     | 10 ++++++----
>  net/ipv4/ip_output.c          |  6 ++----
>  6 files changed, 42 insertions(+), 16 deletions(-)
> 
> diff --git a/include/net/flow.h b/include/net/flow.h
> index 6f5e70240071..f1a3b6c8eae2 100644
> --- a/include/net/flow.h
> +++ b/include/net/flow.h
> @@ -81,8 +81,10 @@ struct flowi4 {
>  #define flowi4_multipath_hash	__fl_common.flowic_multipath_hash
>  
>  	/* (saddr,daddr) must be grouped, same order as in IP header */
> -	__be32			saddr;
> -	__be32			daddr;
> +	struct_group(addrs,
> +		__be32			saddr;
> +		__be32			daddr;
> +	);
>  
>  	union flowi_uli		uli;
>  #define fl4_sport		uli.ports.sport
> diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
> index a0b637911d3c..8f5667b2ea92 100644
> --- a/include/uapi/linux/if_ether.h
> +++ b/include/uapi/linux/if_ether.h
> @@ -163,8 +163,16 @@
>  
>  #if __UAPI_DEF_ETHHDR
>  struct ethhdr {
> -	unsigned char	h_dest[ETH_ALEN];	/* destination eth addr	*/
> -	unsigned char	h_source[ETH_ALEN];	/* source ether addr	*/
> +	union {
> +		struct {
> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
> +		};
> +		struct {
> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
> +		} addrs;

A union of the same fields in the same structure in the same way?

Ah, because struct_group() can not be used here?  Still feels odd to see
in a userspace-visible header.

> +	};
>  	__be16		h_proto;		/* packet type ID field	*/
>  } __attribute__((packed));
>  #endif
> diff --git a/include/uapi/linux/ip.h b/include/uapi/linux/ip.h
> index e42d13b55cf3..33647a37e56b 100644
> --- a/include/uapi/linux/ip.h
> +++ b/include/uapi/linux/ip.h
> @@ -100,8 +100,16 @@ struct iphdr {
>  	__u8	ttl;
>  	__u8	protocol;
>  	__sum16	check;
> -	__be32	saddr;
> -	__be32	daddr;
> +	union {
> +		struct {
> +			__be32	saddr;
> +			__be32	daddr;
> +		} addrs;
> +		struct {
> +			__be32	saddr;
> +			__be32	daddr;
> +		};

Same here (except you named the first struct addrs, not the second,
unlike above).


> +	};
>  	/*The options start here. */
>  };
>  
> diff --git a/include/uapi/linux/ipv6.h b/include/uapi/linux/ipv6.h
> index b243a53fa985..1c26d32e733b 100644
> --- a/include/uapi/linux/ipv6.h
> +++ b/include/uapi/linux/ipv6.h
> @@ -130,8 +130,16 @@ struct ipv6hdr {
>  	__u8			nexthdr;
>  	__u8			hop_limit;
>  
> -	struct	in6_addr	saddr;
> -	struct	in6_addr	daddr;
> +	union {
> +		struct {
> +			struct	in6_addr	saddr;
> +			struct	in6_addr	daddr;
> +		} addrs;
> +		struct {
> +			struct	in6_addr	saddr;
> +			struct	in6_addr	daddr;
> +		};

addrs first?  Consistancy is key :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQDxaYrHu0PeBIuX%40kroah.com.
