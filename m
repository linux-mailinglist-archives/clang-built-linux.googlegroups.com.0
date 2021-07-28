Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBAHOQOEAMGQE3KKZPKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EDF3D87C4
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 08:19:45 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id h5-20020a05620a0525b02903b861bec838sf992963qkh.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:19:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627453184; cv=pass;
        d=google.com; s=arc-20160816;
        b=iE/dk4AaZE17u3x1F09MvpnXXRyq2lBYuUfgmW/kKvxzt4EjlMSspACZcKxb04oJQu
         qVyeheDRkE6J8RxuVgsWAuqEq/qmnXjbE0DhL7FsH7LydB6b96F1Ys4oemEqaeZSUCDS
         ofhjT0+40ADvZIaVuoXyad2zZLuyGm2FQwFN5jLMq1xyrVS0OBNEiGznHKlTix78nUTA
         P1FK0No7VLAbFt0FayHqwx4kogI8SQ067zkwtXlUTYcqOoheVKo+VlLNfORs0PtdczSA
         zH+RlzFN2V+SC5T0vuMORV3L8joLJcBQSPENG4dUqEhMxE0JaRh57PVIbAkhCmRMa1fw
         6j2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mtHHZO9P9G6BDBgMIeOYApu7oE8t7VWxNIspatVb2NQ=;
        b=0xi878Obp3FO56nEi0uEo00yfy/7LCQ7NCNvnd9qn+L1gjaEDanCdsLSoUQVAv5PKI
         OF5h4HmMqQWsP/xAczrKERbZZuPZEAhyN8qvx41WKHb7uyNeKHCftQTAIaYE+9REceY7
         3X/eHunMZi3gR62vqtYivLBjXv4HGhFsTX8b1LmTywDrum5idy/YO8/W7HMBzWOxl24M
         lKvk6Eg6nfz0tkJSq0L7KNWyidOSUITbcthG0c4HHJG3B9dz2B4bgHF/DDg4Tkm3vbJ+
         ezwW3a+FBKoeHFdvmXusVL/8iZQe+9YyVCuowQ4n9p9EZX9daOOSzA9ibK/0HeT5JxH0
         Cq1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=G415GDub;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mtHHZO9P9G6BDBgMIeOYApu7oE8t7VWxNIspatVb2NQ=;
        b=dVjD/r2Ac8IYuET57t9R0dnDF4qjkjWFBmcMr6a4ZfIClbxcZQ8VJmcLd0yL9vofn/
         B22Y3gri/IZJVgvOn5d//JN3ZPrwnPRq1UyUrYU7MuoXGYDAs/fy6fugyw7O4aq91G1g
         wQE5HR9875IpX4iZfHH7P4ShggWhKPMd9Nxdw8oL+G51TXjCx/4+Ua1LXmgqGxylwC4W
         aetnw3XJIerSV7kj+mscl5RxM/dtR/VoQzet9o+ZHPBk1J4mctbZ2C0M3h6M/aNVHNwF
         HfAjApvbMZ4voBHJH/eLwhBwGyyYNED3ly5jFZRMYqQNox4aCJGwTr/EIT9ne1MTdFoi
         itdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mtHHZO9P9G6BDBgMIeOYApu7oE8t7VWxNIspatVb2NQ=;
        b=JI97diVD7hhLYEFWx25Of8YGrOf9fAtIQl4yLY4qbvsuCibAVhqrqFRvv5ohw1+JZy
         VinIpBeXtiAsnw93z1s/YGCskd3DmYdZoCbdELvbccL0deP8OdtFvGhHoUin7/DmBSpj
         SQF0nbkjyE3RRDmVyEu5bTwH1DSVyKOGb33K2sbd3aFiIqT2PQgpWcjpFK/Llz2ZCtUk
         KJld/1E6hZ34dkaZ889wKrLVL+VO2REYtKCc0UQJ9U2GtNATKVeLNZnMBJnmp7mbC9zl
         1/cUcRqBkJl+pURV5lwI3wtR9tLKdsbTlID97HgAnu64L7XupESOxWQwalYJ2KC1BIR8
         iTwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321abuGqary3MOGEQygnKkSWlsHcseFoTh5zaELpFD+EfWpz+Kx
	0tSj9ycADGstKkLSy2ucXw4=
X-Google-Smtp-Source: ABdhPJzXb6465FUrtUZycLsQLK6zE/+5db9vcFGvLQdCMs4FfMqGTRTxan8ajhkPLCMhghRVVgyLiA==
X-Received: by 2002:a05:6214:129:: with SMTP id w9mr26961502qvs.13.1627453184328;
        Tue, 27 Jul 2021 23:19:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2485:: with SMTP id i5ls687269qkn.2.gmail; Tue, 27
 Jul 2021 23:19:43 -0700 (PDT)
X-Received: by 2002:a37:6291:: with SMTP id w139mr10059453qkb.303.1627453183874;
        Tue, 27 Jul 2021 23:19:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627453183; cv=none;
        d=google.com; s=arc-20160816;
        b=dZKHD2pwMY93B6rpywwB6W/VmDI1Aq3heqskMT5ozo2DQxaCwv6U4WkSR75Xp1l56o
         UtBAx/zhfEVHgrIrfAOL8NWCyP4/r3ZkkKqJn0bgXxB5VbGi0qyZuMqSN37ERo8z+u1f
         yOxuRZ7F3mz/Edy+8DWI/2L8wEwtZk72KjCqcRyBD3ZULpeA+7kom4tJgdFsHhVXj7cz
         3IFiwC/xg9yxlEhlMAd1W2zc5qntF8bFP/XkPJxBdo/dUQts1s5LXgizprjMWwLcmKBg
         BGRTNd2D+PMmcSGfZ/dCVXZ+qliJw9MirbnPOMyr7zoNpgCBrAtmcLYr35YXrCAzp3Qc
         M15Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bsu7xGENC4+aEoRNs30EBk+MtK8ofLqZ2O8fS1l7w30=;
        b=JMkI1+hy1eF6BbES4/LuPT3TrYO4dFHo2uFdlFnj/4iNnpSJicJGYf9lgvM9xHPVU2
         /h12GUpFH9UVt4NmOVnYfRv6zRJxTRycwmoTjeXoVa7KqZIXN/KcP3ZWVckbsS/ss0Sa
         KwGMC+S0RMWUChmNQzumf4DnT1gY7kfB126D0G1phVyUxwdXHQXMLM8HQM4nlNqyUC1l
         /91pP/FJuMEdYMH6ntyjFohT2pkzfw8o1vNTEps/0JN/cBUILudOZBXrVBENKXSssq1g
         3EMevsarMzSvQZkiHDQR4W2Xrqufmf0n0oWDb3e3VHtRzTnmCRfQDOGKSdJ6V6kpES2W
         Hl+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=G415GDub;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bi21si205012qkb.3.2021.07.27.23.19.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 23:19:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2B8BC60F59;
	Wed, 28 Jul 2021 06:19:42 +0000 (UTC)
Date: Wed, 28 Jul 2021 08:19:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 19/64] ip: Use struct_group() for memcpy() regions
Message-ID: <YQD2/CA7zJU7MW6M@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-20-keescook@chromium.org>
 <YQDxaYrHu0PeBIuX@kroah.com>
 <baead202-569f-775f-348c-aa64e69f03ed@embeddedor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <baead202-569f-775f-348c-aa64e69f03ed@embeddedor.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=G415GDub;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Jul 28, 2021 at 01:14:33AM -0500, Gustavo A. R. Silva wrote:
> 
> 
> On 7/28/21 00:55, Greg Kroah-Hartman wrote:
> > On Tue, Jul 27, 2021 at 01:58:10PM -0700, Kees Cook wrote:
> >> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> >> field bounds checking for memcpy(), memmove(), and memset(), avoid
> >> intentionally writing across neighboring fields.
> >>
> >> Use struct_group() in struct flowi4, struct ipv4hdr, and struct ipv6hdr
> >> around members saddr and daddr, so they can be referenced together. This
> >> will allow memcpy() and sizeof() to more easily reason about sizes,
> >> improve readability, and avoid future warnings about writing beyond the
> >> end of saddr.
> >>
> >> "pahole" shows no size nor member offset changes to struct flowi4.
> >> "objdump -d" shows no meaningful object code changes (i.e. only source
> >> line number induced differences.)
> >>
> >> Note that since this is a UAPI header, struct_group() has been open
> >> coded.
> >>
> >> Signed-off-by: Kees Cook <keescook@chromium.org>
> >> ---
> >>  include/net/flow.h            |  6 ++++--
> >>  include/uapi/linux/if_ether.h | 12 ++++++++++--
> >>  include/uapi/linux/ip.h       | 12 ++++++++++--
> >>  include/uapi/linux/ipv6.h     | 12 ++++++++++--
> >>  net/core/flow_dissector.c     | 10 ++++++----
> >>  net/ipv4/ip_output.c          |  6 ++----
> >>  6 files changed, 42 insertions(+), 16 deletions(-)
> >>
> >> diff --git a/include/net/flow.h b/include/net/flow.h
> >> index 6f5e70240071..f1a3b6c8eae2 100644
> >> --- a/include/net/flow.h
> >> +++ b/include/net/flow.h
> >> @@ -81,8 +81,10 @@ struct flowi4 {
> >>  #define flowi4_multipath_hash	__fl_common.flowic_multipath_hash
> >>  
> >>  	/* (saddr,daddr) must be grouped, same order as in IP header */
> >> -	__be32			saddr;
> >> -	__be32			daddr;
> >> +	struct_group(addrs,
> >> +		__be32			saddr;
> >> +		__be32			daddr;
> >> +	);
> >>  
> >>  	union flowi_uli		uli;
> >>  #define fl4_sport		uli.ports.sport
> >> diff --git a/include/uapi/linux/if_ether.h b/include/uapi/linux/if_ether.h
> >> index a0b637911d3c..8f5667b2ea92 100644
> >> --- a/include/uapi/linux/if_ether.h
> >> +++ b/include/uapi/linux/if_ether.h
> >> @@ -163,8 +163,16 @@
> >>  
> >>  #if __UAPI_DEF_ETHHDR
> >>  struct ethhdr {
> >> -	unsigned char	h_dest[ETH_ALEN];	/* destination eth addr	*/
> >> -	unsigned char	h_source[ETH_ALEN];	/* source ether addr	*/
> >> +	union {
> >> +		struct {
> >> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
> >> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
> >> +		};
> >> +		struct {
> >> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
> >> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
> >> +		} addrs;
> > 
> > A union of the same fields in the same structure in the same way?
> > 
> > Ah, because struct_group() can not be used here?  Still feels odd to see
> > in a userspace-visible header.
> > 
> >> +	};
> >>  	__be16		h_proto;		/* packet type ID field	*/
> >>  } __attribute__((packed));
> >>  #endif
> >> diff --git a/include/uapi/linux/ip.h b/include/uapi/linux/ip.h
> >> index e42d13b55cf3..33647a37e56b 100644
> >> --- a/include/uapi/linux/ip.h
> >> +++ b/include/uapi/linux/ip.h
> >> @@ -100,8 +100,16 @@ struct iphdr {
> >>  	__u8	ttl;
> >>  	__u8	protocol;
> >>  	__sum16	check;
> >> -	__be32	saddr;
> >> -	__be32	daddr;
> >> +	union {
> >> +		struct {
> >> +			__be32	saddr;
> >> +			__be32	daddr;
> >> +		} addrs;
> >> +		struct {
> >> +			__be32	saddr;
> >> +			__be32	daddr;
> >> +		};
> > 
> > Same here (except you named the first struct addrs, not the second,
> > unlike above).
> > 
> > 
> >> +	};
> >>  	/*The options start here. */
> >>  };
> >>  
> >> diff --git a/include/uapi/linux/ipv6.h b/include/uapi/linux/ipv6.h
> >> index b243a53fa985..1c26d32e733b 100644
> >> --- a/include/uapi/linux/ipv6.h
> >> +++ b/include/uapi/linux/ipv6.h
> >> @@ -130,8 +130,16 @@ struct ipv6hdr {
> >>  	__u8			nexthdr;
> >>  	__u8			hop_limit;
> >>  
> >> -	struct	in6_addr	saddr;
> >> -	struct	in6_addr	daddr;
> >> +	union {
> >> +		struct {
> >> +			struct	in6_addr	saddr;
> >> +			struct	in6_addr	daddr;
> >> +		} addrs;
> >> +		struct {
> >> +			struct	in6_addr	saddr;
> >> +			struct	in6_addr	daddr;
> >> +		};
> > 
> > addrs first?  Consistancy is key :)
> 
> I think addrs should be second. In general, I think all newly added
> non-anonymous structures should be second.

Why not use a local version of the macro like was done in the DRM header
file, to make it always work the same and more obvious what is
happening?  If I were a userspace developer and saw the above, I would
think that the kernel developers have lost it :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQD2/CA7zJU7MW6M%40kroah.com.
