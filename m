Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB7O7QOEAMGQEL7W5XZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CE13D876B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 07:49:51 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id w4-20020a5ec2440000b029053e3f025a44sf940376iop.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:49:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627451390; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y1fsi8DczQjRinEdzBNCV2BKCj1r2uRBLSlpfsYKsdO5Zl/GTfMQNpHnPgy4tYXsUY
         vOgn9a+K57zSnS4M9ObJtxbPEE+wd/Qgp1LuGesUpEVSWy8j+jt75m6Iy7/4nyPZlNeC
         rZeG/cy/xaw9A1XT6GJKJw6W7/WUMRPdb5l3/0xG/JojBX5bM4PVmK4ioTGcRBcZvDtC
         vyAw+FJcpAh/0dGGrEbw9Xa61LwQc2Kvmfj5Z3VloDjn9VizIOVNkHQjc/uniKYu0TlD
         cb32F4KbrBs9mvGjctLMyYaK+tN2fhuIJt/TntIZK+awS/T+1hUcBJIvl/sI4x6is/3e
         eR+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RmkeWmiURhdPBQQ8fgtvUqCcJOjOgsonaa3JXQf/nbM=;
        b=T+azROa8+UEH8gA8pMyPme/BKZjKjRp28QB7vleGr7Y6H9UlEAfBqWiaqnHEOZZ9BH
         DKpHGkAgEaJjPjfVmo+Q6Zf+RwdCBw0L/MV+hBfcqeEAVf6Qv4TzFyg6ft/NZebCPevt
         QrCHCGf8mhm1hcCvF7bNV9rYTnNZGKotC1hsCtxFULt4U+lA9QkzfkPqkgjOkEGdT/Ze
         ClLaWp12azV/hJuScZv8wIbGb7aBjB2Vo49MU5/DSCRU/CtE+zxWy7fUC6c15bjBxNE1
         izTMxZn4VloujVJdtGPFbbh2gaIWJXJs/mF24s5mza0nmR37w5XE3Qf4CM0QDBC8/qO0
         NYUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xXqgpI3g;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RmkeWmiURhdPBQQ8fgtvUqCcJOjOgsonaa3JXQf/nbM=;
        b=s32VJerCp4MLVkg8hKc6dqYjC9EKZNP3WhBCflMX0GSsG93LEJNApcOTAYE6xIqP6e
         1zskmraLThmrNjwxnj5Q2m79lib/RAYWPgl0NfPxSKljUu/Lp6A4hpxsaLkL/DpagphY
         Z9g7ouSYYOMJJCCheZOut8jMRgji9dgZr8WmKVD14J9lKD7xl4qykb3MPdHn5dQvD4eB
         yfg4FmwN+00nYJ/UDwvvM0eKIbKJn71Vy8mrBZdT/5+UznS5qZ0lfmuwcCfmaM9DEY6I
         b/0EguP+GaHFrTCpbeBNKUuW+bJ/o6tGPzCHGipybTUI0E5vBwiGVGw+3ZRzYJA2W3Uu
         ufvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RmkeWmiURhdPBQQ8fgtvUqCcJOjOgsonaa3JXQf/nbM=;
        b=UxBZ5u4xKpE4gItFBRguAFhR1rIqdYNY9t6LVawTD60fYR+b1xWoMIGciTI1upwPiY
         YlFzu5EqA1jKSOZv/ZYtDNkt5ckyoZXVqMmwbg6XBkjuPHIdtSmc5BAQrF1HmutugYzy
         Ggt25gaq5e08gVFykgF18SQOTZHJL7PpP1+2jugWcEBGfvX3JuK/6asvq9CxcViqxyUN
         lB+LGs3am3vmawNcCCHOdiZ4v2QUIXOPMdJ7flJQ7nN1ZlGTaOpoK/vUz/GKUiPNTiTk
         23ZkCTNb9fk0Kz4o1kK5xNh9jWxDxLIXkJGA2EocSlnV1ghi2JLWRTXzihh5OMm2fDCk
         BMiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NupF99lr1nVonQs29tQHCkVZI/gegzCzeSL+cNaQJs7oGDdek
	yz7U/2zdYIC/EkoOMI1C3ZA=
X-Google-Smtp-Source: ABdhPJxrA31oKVYEC5QxpyamkEZ31SHZ6b9rBgJAkS8+t2L/0fdqlAAA6fZGhMNo/5Ta6ZiEyUb2FA==
X-Received: by 2002:a05:6e02:ecd:: with SMTP id i13mr20460981ilk.182.1627451389840;
        Tue, 27 Jul 2021 22:49:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:32a4:: with SMTP id f36ls196493jav.1.gmail; Tue, 27
 Jul 2021 22:49:49 -0700 (PDT)
X-Received: by 2002:a05:6638:1350:: with SMTP id u16mr24659807jad.19.1627451389373;
        Tue, 27 Jul 2021 22:49:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627451389; cv=none;
        d=google.com; s=arc-20160816;
        b=h1lwM/p4JFez1Mb27VhN6DKX659Z+veadoIwqH6FLTfyr/WjORJ6aH7W8BC/rOLi0O
         sFXmYNSMYpzlnYGysufQ+mZDvkR+7/tapEfS4Xt06HtDEtTO0XMtFvLDTUFDPUqYLvig
         jA0Pz0HbVTCBbjSiIcomQiJaUkbm9N0okNfMVitp2GcZjWq0OjchmJ45rtddI5EcLLjI
         pFvv/Q4sZN2f/aDRnrbs5iECguxCprblckTFL8Da/3NfSv/GoGJ1/L/IPlVTeTi8wJw7
         UdWpKuuUUJYnT9Z0GGQYBp8mbjvYlafjPPrJdx+LLFwtD4h0FkZxZxGBiFgU9d5w0dIu
         cuJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=itCVzuy6swbe8OiMARAQwS8Y1kYaolo/xAWScNaa674=;
        b=WaZHs4R6eU8eeSjLKPKWARrJggR3SNrwW0RhA+jzKiEF6DW+s3+v6HmvNv0SpRutEE
         SnD5yMkOewlFreEM31sFbqXeQ8XWQGUZMx0wyeQ9KfG6rtMIXoP/KTwss7MQL8NtIAFd
         BuF5JC0Mkpsj1b1PTAnEN2r03Wm5wK4RIeIJOVPX+J90hFUMUwaTdArrUTlQdUSV2Lcs
         xybpL6QV1axOq+TyxpLfRcBijNHy7UCiEYy+Ir4H7ZCCJKsRAIRu8egMwFDnkuDeTg63
         HTrhdiQuWJ6ZLEg/w2gO3mOUwNCruDY471CRGbFHOanu9Ix9IReHu2kYJQ3L4JV1e1MF
         9hQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xXqgpI3g;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k3si416600ioq.4.2021.07.27.22.49.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 22:49:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1AAED60F00;
	Wed, 28 Jul 2021 05:49:48 +0000 (UTC)
Date: Wed, 28 Jul 2021 07:49:46 +0200
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
Subject: Re: [PATCH 62/64] netlink: Avoid false-positive memcpy() warning
Message-ID: <YQDv+oG7ok0T1L+r@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-63-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-63-keescook@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=xXqgpI3g;       spf=pass
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

On Tue, Jul 27, 2021 at 01:58:53PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Add a flexible array member to mark the end of struct nlmsghdr, and
> split the memcpy() to avoid false positive memcpy() warning:
> 
> memcpy: detected field-spanning write (size 32) of single field (size 16)
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/uapi/linux/netlink.h | 1 +
>  net/netlink/af_netlink.c     | 4 +++-
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/include/uapi/linux/netlink.h b/include/uapi/linux/netlink.h
> index 4c0cde075c27..ddeaa748df5e 100644
> --- a/include/uapi/linux/netlink.h
> +++ b/include/uapi/linux/netlink.h
> @@ -47,6 +47,7 @@ struct nlmsghdr {
>  	__u16		nlmsg_flags;	/* Additional flags */
>  	__u32		nlmsg_seq;	/* Sequence number */
>  	__u32		nlmsg_pid;	/* Sending process port ID */
> +	__u8		contents[];

Is this ok to change a public, userspace visable, structure?

Nothing breaks?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQDv%2BoG7ok0T1L%2Br%40kroah.com.
