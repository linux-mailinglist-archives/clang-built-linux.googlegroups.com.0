Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKPQWX6QKGQE2L5JSIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFE42B0BF0
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 19:00:11 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id t13sf4048383plo.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 10:00:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605204010; cv=pass;
        d=google.com; s=arc-20160816;
        b=el+jNgOzLhuduua519dekbR9JOnMFW+ly6pk7d5AuXxt5q5v3UpV4w4ZY8oc5kMnr1
         PLxNPcicOp7WP6YVs3z9DTUPZnzeVwvlfPILYnnHMG5xuCzn5We80RkKRdfgCFbmvKJ5
         +7pXaodT9k9EMFqaPMQjxD8+gWLgKSuywsVr2BfPAgFwT7Cu/QYlWl9FaBIl0Mb3B1Yv
         A6XrFIv8I6Tm3/JAq7cqUr/J3x7Z4lmfVNU/jFgl8At36UIPHRJzENw3mpcn35rqGbry
         PFTald4tlBbKDoUmPyOjbKjqKOnfFyaspvj1NWtq3tkMEVxVR0Vx9bugBI+ImATRvbiK
         l2mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Nhy5MrWmnTE8uns3OiRevf+WfNoqsys9NwQPSW/SmBw=;
        b=E7UaJpS1u8KQGZH2p3CsEO04pG/E16Sd5D+6crqJqmDvgzTMtr+ZWg6LHnCpNy9H6L
         UT7zxRv9JY8qWbzmVMYHh+cZthkgHkcPqq6hocN9LUv3IA2vj5FsIBBzHvSfxXBLQOLF
         WWTG5f8MtdCWr0n51Z0eAzf1bEAxVTeljfEdWiVSViTAyUhF07jjaMY2TQKr2jd4qs2d
         tBebymSXmFaVzvrhv+3EQNZvV3flCTFM1cP0lpNXnU8eiKzawcZ3iWqDw6LbfqbK2VmJ
         Ls5Ks+W+7RyiRczLDARijLqN69k5UxbiVTVVpK/IbAcpsMBIppilLp4l9OPU9IFzU7SS
         MoNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i/YhZTJP";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nhy5MrWmnTE8uns3OiRevf+WfNoqsys9NwQPSW/SmBw=;
        b=AGPFshgSdqqRI3wKt5AWT+8bHES+TnSuSwQPh1afgVrBskK1LXVgldmuOST+Js4c1n
         /YyzWoBvHgksRFarZlaLA9awT5jbJNxhKa1rf8DzDuV9P3CyeJrsGia7s0bFy9li9f9G
         pr0kyGg63t/zJ2PUEbYKj+4oNmI43bi86Rjva0KsKHyp7lQG6YPBFuQ0si2+Wta+aaiQ
         M/f350dyEWsQwt03xZ/S5BqSn9T3GhDvD2CvQ9Hx7eRQULAoJzuwh1fV0zC9TXdi5sz8
         Lu23lbKHph6w7VZx/LhzN22B2/CpEEp65/h2CbjONsoxPfO10OCpSWFluUNbauGLawb9
         VBVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nhy5MrWmnTE8uns3OiRevf+WfNoqsys9NwQPSW/SmBw=;
        b=WIqCCCH4NeGHoQlH+idO/U3TbHfSZHsZ9d0/ts8kdHpJNq+UCfNwnUA03B0SmBcMje
         YHQAxRZHqLuqE4+H1mNL2SoOoorPAFlkEBB7YqgdR2zfcExjxMsRsFpvgkm8swfPHtUe
         +QW1ddq195rt7Z4hn7qNgP4X8/Afny178g/Y5m+JdA9uIERY5aVOOJgdHfFGNf7eeoAl
         IQU/0cl/EMiJSHkeBZLbxW4NS1SCjWoqQtcA1H8BJL38sNfH7MT8g2KNGxKlsf6Yfubc
         plZTs8axvSda0c/J2DuQVtfc7yDTltYbddZXQnfXmIn1Neu/6A46a7d5tFuER10Epk5p
         iPUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Nhy5MrWmnTE8uns3OiRevf+WfNoqsys9NwQPSW/SmBw=;
        b=kr6Ma89ItaXks3FY5grlNiHk1duHYfHeBhtP6XR+c/DnhzX8jwbobi/y6Nz/IdUV0q
         xDKRcKpiDNcZAREU/ouZNeYhFYq1+FrjzINjc01qPrDbRP+wcJBOiDTiQsw2FAHJKJW0
         i1BDxyN39gxaKpZeOfyTaQOZAd1+orXcazX0zsxlwY+CTXY11pF6txIWk3fV6uv3hiAG
         +/t4HlQlQZDBeW/fXyXN9cdSI2qkJnUXyeoQS0twuSL7F42/kTB/R+nszki9zUwrhag9
         zTChfCQnBaRQpm/7R06kMHy7yAy7fCqwIFnABoBsNHHa8eyzFQvJHbTFudqElU/G2VRH
         SXIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OD10i2+XrNPg30AqnTwb0xg6Zp025lxHVC1ELBug147BcWIvZ
	7zp82roGwMSNJqZA6h31tu0=
X-Google-Smtp-Source: ABdhPJzk48PCPjc6S8bW+njaNYkYqjDz10uF9J4TdK9NOSTTjjiLnDaAQOE9eEJYHdP3xYhSSNxWcQ==
X-Received: by 2002:a17:90a:fe88:: with SMTP id co8mr350034pjb.137.1605204010084;
        Thu, 12 Nov 2020 10:00:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c395:: with SMTP id h21ls2064538pjt.3.gmail; Thu, 12
 Nov 2020 10:00:09 -0800 (PST)
X-Received: by 2002:a17:90a:648b:: with SMTP id h11mr324081pjj.221.1605204009451;
        Thu, 12 Nov 2020 10:00:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605204009; cv=none;
        d=google.com; s=arc-20160816;
        b=Q3Amb+z8xz9PtFh7nYASm9sT5TJPBoPVPsAtHyTpEQiDJPK64OyvD5mASBbYZq5Ibz
         SLOmrENbGwHfvOA7uiyJOac/2bF42uVClNgdbbbEhVkJ8YD/ipeO+IEU1gFxlUi30aDq
         w2cmUNxYyp6eLzuw5Ytjetg/puc1ycb52pXqEVBC35QQ+uxUfZ4lhYq0wh9iapnovXl/
         g09WJDKMH/Vgf3bt+gBb4NoYv1d+ON7TuASm9WVQsQqbbhLZFC05WjxsMIxz0x8PK1nM
         IfDpCxYF6U5Dzvv/sZI8Tu0JDyH9OUwbBSMjxWpIIwi3//zhcjsSoqM202Avhvjavl3h
         ALCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nWQxQxmFLSVrQK0chW1Meim1NDrbshpHTTnicdDWmbA=;
        b=cnhgj9nUmQJ8japrbN8AmdDCRpmETa7m5NzsAFGcdhP6H/1TtMlqp1SKc3pszhxQFN
         rPOBAfqFuTr4z09QUKj/E9UX3rCo36G0vt7lpwx36qEjW0ZYJ3nIyusZeOTQNjv8PUHM
         3tEn0ghZhqoPhX5Im0ksV+wPTEpOTwjGMCCddXZbIyGe0kfJbXdkHNM3FsVPt5c4ZIIu
         Fs/p/ppVCmP7qMdKIiZk+6k4a9QCQYgYdQCM2stHoJNTp/mAOJP4ZSErAamlwR4Dxsg2
         qRG8Ot5unCVwFNHJs90cwG3nBrlbNLHPymlj5+v2kD6AX/+hwRaK+D49HMR7G1tSqMmF
         8ZUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i/YhZTJP";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id 38si378112pgq.3.2020.11.12.10.00.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 10:00:09 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id d9so6116034qke.8
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 10:00:09 -0800 (PST)
X-Received: by 2002:a37:b342:: with SMTP id c63mr1048937qkf.146.1605204008659;
        Thu, 12 Nov 2020 10:00:08 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id q20sm5369269qtn.80.2020.11.12.10.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 10:00:07 -0800 (PST)
Date: Thu, 12 Nov 2020 11:00:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Mathias Nyman <mathias.nyman@intel.com>,
	Johan Hovold <johan@kernel.org>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] usb: fix a few cases of -Wfallthrough
Message-ID: <20201112180006.GA934688@ubuntu-m3-large-x86>
References: <20201111014716.260633-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201111014716.260633-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="i/YhZTJP";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Nov 10, 2020 at 05:47:14PM -0800, Nick Desaulniers wrote:
> The "fallthrough" pseudo-keyword was added as a portable way to denote
> intentional fallthrough. Clang will still warn on cases where there is a
> fallthrough to an immediate break. Add explicit breaks for those cases.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Aside from a minor nit/question below:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/usb/core/config.c    | 1 +
>  drivers/usb/host/ehci-hcd.c  | 2 +-
>  drivers/usb/host/ohci-hcd.c  | 2 +-
>  drivers/usb/host/ohci-hub.c  | 1 +
>  drivers/usb/host/xhci-ring.c | 2 ++
>  5 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/core/config.c b/drivers/usb/core/config.c
> index 562a730befda..b199eb65f378 100644
> --- a/drivers/usb/core/config.c
> +++ b/drivers/usb/core/config.c
> @@ -1076,6 +1076,7 @@ int usb_get_bos_descriptor(struct usb_device *dev)
>  		case USB_PTM_CAP_TYPE:
>  			dev->bos->ptm_cap =
>  				(struct usb_ptm_cap_descriptor *)buffer;
> +			break;
>  		default:
>  			break;
>  		}
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 3575b7201881..e358ae17d51e 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -867,7 +867,7 @@ static int ehci_urb_enqueue (
>  		 */
>  		if (urb->transfer_buffer_length > (16 * 1024))
>  			return -EMSGSIZE;
> -		/* FALLTHROUGH */
> +		fallthrough;

This is fixing the same kind of warnings but it is not called out in the
commit message. Maybe this hunk and the next hunk should be in a
separate patch? No strong preference either way.

>  	/* case PIPE_BULK: */
>  	default:
>  		if (!qh_urb_transaction (ehci, urb, &qtd_list, mem_flags))
> diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
> index 73e13e7c2b46..1f5e69314a17 100644
> --- a/drivers/usb/host/ohci-hcd.c
> +++ b/drivers/usb/host/ohci-hcd.c
> @@ -171,7 +171,7 @@ static int ohci_urb_enqueue (
>  
>  			/* 1 TD for setup, 1 for ACK, plus ... */
>  			size = 2;
> -			/* FALLTHROUGH */
> +			fallthrough;
>  		// case PIPE_INTERRUPT:
>  		// case PIPE_BULK:
>  		default:
> diff --git a/drivers/usb/host/ohci-hub.c b/drivers/usb/host/ohci-hub.c
> index 44504c1751e0..f474f2f9c1e4 100644
> --- a/drivers/usb/host/ohci-hub.c
> +++ b/drivers/usb/host/ohci-hub.c
> @@ -692,6 +692,7 @@ int ohci_hub_control(
>  		case C_HUB_OVER_CURRENT:
>  			ohci_writel (ohci, RH_HS_OCIC,
>  					&ohci->regs->roothub.status);
> +			break;
>  		case C_HUB_LOCAL_POWER:
>  			break;
>  		default:
> diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
> index 167dae117f73..eac43a7b7f23 100644
> --- a/drivers/usb/host/xhci-ring.c
> +++ b/drivers/usb/host/xhci-ring.c
> @@ -2418,6 +2418,7 @@ static int handle_tx_event(struct xhci_hcd *xhci,
>  			xhci_warn_ratelimited(xhci,
>  					      "WARN Successful completion on short TX for slot %u ep %u: needs XHCI_TRUST_TX_LENGTH quirk?\n",
>  					      slot_id, ep_index);
> +		break;
>  	case COMP_SHORT_PACKET:
>  		break;
>  	/* Completion codes for endpoint stopped state */
> @@ -2962,6 +2963,7 @@ static int prepare_ring(struct xhci_hcd *xhci, struct xhci_ring *ep_ring,
>  		return -EINVAL;
>  	case EP_STATE_HALTED:
>  		xhci_dbg(xhci, "WARN halted endpoint, queueing URB anyway.\n");
> +		break;
>  	case EP_STATE_STOPPED:
>  	case EP_STATE_RUNNING:
>  		break;
> -- 
> 2.29.2.222.g5d2a92d10f8-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112180006.GA934688%40ubuntu-m3-large-x86.
