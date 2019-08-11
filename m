Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKXIYDVAKGQEYHY3KCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C838924E
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 17:28:42 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id z2sf4181687ede.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 08:28:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565537322; cv=pass;
        d=google.com; s=arc-20160816;
        b=R4UyryLdIWGIU0ZDOwSjXNZCS4ANM7RzIps+0o+W4Vl6zgnuIZvu2lbuI7LJkQ+tfu
         C1amnCxuBAD9P+0LqQ5J/T5uQ3UKkEWaJGq0KObViiFFCiRb0HbJ7vk0p5KdkAASfND6
         Grnnf7yE6B6Iy0IExgqWOpQPTgCFg6ehcY03kmfk0MsUx0hICj1wnkrUQFXjxztlIVpv
         mx5wHHf5FvjQSUXE15gBWUEA3cj41U5ADt1L8mA+iubvNE65XzazYqXl0S9uxWzzMDqc
         LckHU3qnMfVmK8cIKsOmJ8gxoEh3E65gcyqne0LBGsyLWYgxofvKjoFqPwCMN48lRqCd
         hcTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=whRmUWAYy6OexuFUw3g/fMXc3gXfI1LNN2IqhEVCB5E=;
        b=EYs6BSeP/6OKy7VnZUf7YqWuNdy0lbLswzxvvlr7vZih2VXNOTHt/bcG2YlSXAqp4j
         a4qQ/EgxvDN9f5QfHVHrrqrXetLYGgBl+ZhcdFul6LDzsIiZzMO+F06k8NT7Wq2CYtW4
         nwa8Lz1P4JdAaWU71hpNFYjHXidvSdIhxhOCRxT4+uHR8y9gtd0xfiTmOtq2bIyO2nJp
         hou3NCDbCClx5F08OE3xwgeess3cGuvBaebNS4xHKLmt74SEMZamGYI2KuV5JmRT9mXs
         aq6/x9peKJfdUSRgRBYwEsEPxdRDoIU1EUyJH5p5fso6jtnXY+gyqycJvaveXxQ51N5M
         264g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YtX8iptA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=whRmUWAYy6OexuFUw3g/fMXc3gXfI1LNN2IqhEVCB5E=;
        b=rPRcOqG+gH1mzOpm4UGc1DErX5kBMQq+CGT0G5Pak5iHEMD4moJa8A0wqmk1xk2DsW
         nH8BdXmXb6qZ+TBiqXRd5txQLEOrvW65sjlqjVYg3COPy9PijdFgjfGFDXwY8k7Imf4p
         7eBIr6IU7Km1pdWAEej+6W09GFBJSI1JUkOB4fwgS2rVybb3tV1IsOLtBFI75TVWnGPz
         r0L3g9eNNFPf077k6rNlpgTBy3NTOXijaPUhFr+gl4iVfcTcwHB5JvX7qfMRoTpF6hls
         A04NlqnyhpCAWz7gvv76VxXpmiKzrHPK74INTsBaKWgGEnYGFi9B3ZymBNMDRQTECt6x
         n09Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=whRmUWAYy6OexuFUw3g/fMXc3gXfI1LNN2IqhEVCB5E=;
        b=gY33oQpgw6E8LuIk7B75fwa2EDaEFt+k0bso2VG+FeFKaIHnzj1ZBdpCOBzr1Ua5sh
         QL+P2NLTmAW6RyE18/TC6v9npemqIoQtXFzetMm38NX2Wo61TyvR/eLNTheQj/Y6JPyU
         qB4Bbd+/eApa3uA1orDJu27AJk+pKCHmcRjQ7Dl20rogQgNMD75Z7erN4xh6ijatLhwo
         UkCZLSFb7zLX/XtKMZoisvO8yKMXBfJcAspGg7ax5vnOUPof6qpT7k5OVn29cGa+1a0v
         aE6RsV0AsWASXdlqO1VWVt5f/BGHkdm41LqcCZTRi89sumtx7oRO6npCewFsTGtaMEZP
         G2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=whRmUWAYy6OexuFUw3g/fMXc3gXfI1LNN2IqhEVCB5E=;
        b=f8ECJu5y5qrM/PklaVczOU19pLEmJqsi8vVcAt5NrY9I6l+fT2a35P+gEtwtYwBdS2
         3PlchZpk5g2mgj7c/JUAfO1UYzOHIXRoPXATTLttYsfwAh5Oh3PgTC8OvG8HXLB520QY
         t0Qt1q3r7zK/2/8zQ1CkWqsJcSU3ATOZGiNLoHJ2jd/L58LSfAC/Sodwlx/YL5CYNd0M
         zCi0JLBpisjPwFA0C/vxGpx/4QNeWQlGKK9ySuUMdKfVOb1734XmZFKeyFTRMAv/HoAv
         6rzYhnwIhzv7Qn0IHmF1r50SoVwWNvcPf3ypxoAaYPuzhLlKqL507ypSGJRDB1k55KO/
         RlhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWrnrJibqQkLa0q/aQej6TVe3GuMr1sW4Y3zOSZiAbCqa1K41bW
	Z18cXgMbzuTbWweC90sjwdY=
X-Google-Smtp-Source: APXvYqyEyA3fd9V/6xp2W4WopL2FRdcPpi70NDH+Tyw4f71VhHrOi2+UoZgldIkuUKB68U0q48bhEw==
X-Received: by 2002:a17:906:d201:: with SMTP id w1mr18828200ejz.303.1565537322526;
        Sun, 11 Aug 2019 08:28:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:94ce:: with SMTP id t14ls29229533eda.7.gmail; Sun, 11
 Aug 2019 08:28:42 -0700 (PDT)
X-Received: by 2002:a50:fa96:: with SMTP id w22mr32583211edr.45.1565537322158;
        Sun, 11 Aug 2019 08:28:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565537322; cv=none;
        d=google.com; s=arc-20160816;
        b=x1F6MQJNa0kKSPctuKwE5m7RWjGNuqrMSQWtJudRlZCLfcM9COVqg9v4rW7gzSfpat
         0laJ1fD4FaeL37V5Q17uNHDQ+jGqzFZ9d3W0FnLBmDcAdVNxf9JFyH+8M3Pqav8pYBxY
         xMAI1CXJkDQPrufq9kfbv59gbZZ/GTNumbSTonKUMcm72LsLZoWlDSVkFUs6/GYIKEYi
         wU0awaRYBCGzWOytdtaD9DKWIAJjTZhq3QMnERgSLKQyHsa169Tp7ufFEXsjQMHDrPAx
         EC8kSkQDQVQcSzOQnKTjoY3pfPUu2m0vFPzhn+nTFtYFJRAzbaoR22cfmBF01XwdaUVw
         wPFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zCs/1xlC31rSesm5ztz3xZ9K59NATlxwchcCu3xpWI8=;
        b=0nI69uh8tCXE8qoMjU8zIVaNVCNWdg2D2dxEqrGMhknWn6MjX/ZMyUanHv/jpB70Hj
         mg0DkIJmKypnDoiMBA7C5AUEy/g7D1gLGFQGqTZGreb5/5sfi3zTCCG0JAIBYD5MYv1r
         UwcDR+e1xyjJoQm40jE+xhFsr3zTag1fhbWWJHZyHlorufXdxEpnTOqc24vjlLgZqS5E
         9oscVw+ELL8iUT6KFZp/TKMX9Y534KMnlJ9p1CGvzR0+akiIOJlF2UTVmbpHWF89UykG
         L5mdGND6vMxVDjJaDqS9KIxtWQMnsr+H3X/+P1ps55Gb0mJN9GP/GUhqjhWdrVj07Yg9
         HSjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YtX8iptA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id m29si131719edb.3.2019.08.11.08.28.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 08:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id r1so3424647wrl.7
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 08:28:42 -0700 (PDT)
X-Received: by 2002:adf:e8d2:: with SMTP id k18mr7576096wrn.229.1565537321562;
        Sun, 11 Aug 2019 08:28:41 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id l15sm15228343wrq.64.2019.08.11.08.28.40
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 08:28:41 -0700 (PDT)
Date: Sun, 11 Aug 2019 08:28:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [hch-misc:ia64-remove-machvecs 26/28]
 drivers/misc/sgi-xp/xpc_uv.c:165:21: error: token is not a valid binary
 operator in a preprocessor subexpression
Message-ID: <20190811152839.GC78637@archlinux-threadripper>
References: <201908112146.OfDS6okk%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908112146.OfDS6okk%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YtX8iptA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Aug 11, 2019 at 09:43:51PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Christoph Hellwig <hch@lst.de>
> 
> tree:   git://git.infradead.org/users/hch/misc.git ia64-remove-machvecs
> head:   272e6cdad9843255c51eeadc68a3356c31d2132e
> commit: a7c4681fd0a7a70a03ef8c27610f4f99ce9a2ae0 [26/28] ia64: remove support for machvecs
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout a7c4681fd0a7a70a03ef8c27610f4f99ce9a2ae0
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/misc/sgi-xp/xpc_uv.c:165:21: error: token is not a valid binary operator in a preprocessor subexpression
>    #if defined defined CONFIG_IA64_SGI_UV
>        ~~~~~~~~~~~~~~~ ^
>    1 error generated.
> 
> vim +165 drivers/misc/sgi-xp/xpc_uv.c
> 
>    159	
>    160	static int
>    161	xpc_gru_mq_watchlist_alloc_uv(struct xpc_gru_mq_uv *mq)
>    162	{
>    163		int ret;
>    164	
>  > 165	#if defined defined CONFIG_IA64_SGI_UV
>    166		int mmr_pnode = uv_blade_to_pnode(mq->mmr_blade);
>    167	
>    168		ret = sn_mq_watchlist_alloc(mmr_pnode, (void *)uv_gpa(mq->address),
>    169					    mq->order, &mq->mmr_offset);
>    170		if (ret < 0) {
>    171			dev_err(xpc_part, "sn_mq_watchlist_alloc() failed, ret=%d\n",
>    172				ret);
>    173			return -EBUSY;
>    174		}
>    175	#elif defined CONFIG_X86_64
>    176		ret = uv_bios_mq_watchlist_alloc(uv_gpa(mq->address),
>    177						 mq->order, &mq->mmr_offset);
>    178		if (ret < 0) {
>    179			dev_err(xpc_part, "uv_bios_mq_watchlist_alloc() failed, "
>    180				"ret=%d\n", ret);
>    181			return ret;
>    182		}
>    183	#else
>    184		#error not a supported configuration
>    185	#endif
>    186	
>    187		mq->watchlist_num = ret;
>    188		return 0;
>    189	}
>    190	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-August/062927.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190811152839.GC78637%40archlinux-threadripper.
