Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE7PR7VQKGQEKNX2WHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 726979D26D
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 17:15:32 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id n13sf4325231wmi.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 08:15:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566832532; cv=pass;
        d=google.com; s=arc-20160816;
        b=A6i14uLkvUFRUtURadiygDROOBOLKetz7EP5GNYBkbafsbl4KXynxdhipObd9TZicD
         s0agZqqwNZqOI044Jzmwn8PlBRxH0eZOzFQIulmpi3x5crYWqPzuaefmTKVVTwYUFsHL
         Nd1dUyJY0MU2POCHI7cIvnA1f1t69yQNlRTt/BjJtemxrrgwD8xwGxCw4Oqw80t0lEz7
         t6+WV7EN1/Luo1uONKpU4s6EP5Mf5Jttb0ea5yb0S9sddymLPEhS/XsT1RFj42HDjcH8
         lyhPGrjtWPIXqo7ceotpC1O9DSivwv7ZgTYTBgneFMwuj8kLWuUmDDEETsoFBG/Oc9h5
         KuTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=EF0RYdN6znGSv7RoNl4uTMtpz/iDV0BViqPQ5qnZcu8=;
        b=yzaqc6joJTmj8RDcRLQxLKjsd91aiIc/mmWPCLrLJJBUk8SaU8qczLxpHvZc3BqOGC
         zzMecN9IfGHkubVBN3CdDb+333b5rq7guLCwJz3fAle7mMt2vvrxVXZ/KSAHGMw7hU5A
         ue1XFuKNPAxhYF4rfRBncX/202GGkZhSozTEAn7QoHw55dT6N3WoDI1A7gwp/LICb2XN
         Ou4F4iab+QVl80lMsWoLjBEXRNY5Dfe65RZ6yOnjieNRM9ovnsQqtXa02Zeo6D8RpnbT
         2Etm5lITYnYHrNfJUxIk7ZRcCjm2fmfw/U9CBCx81uzSI49Zcx7cTwjwH9PZDd+7cwiZ
         9M8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IK4bcaUH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EF0RYdN6znGSv7RoNl4uTMtpz/iDV0BViqPQ5qnZcu8=;
        b=ejbQrerTpo7WL/4dbvsrx+wgyh6d9M+Ws6vRVsMArY6Zc+aHl0yFJSyNZ2Iclx3QKB
         xnL9mzGuLsdhUaT366dfmKWWxJ4v/TZ4u54GnrcH77JJK64fVtnpycJNxIGn59uYtxHH
         xA2TmSrcVzfZyNb5U8fa9rBKgocnR01KnwR+h4TGrosexsJQNyPHXLzTi9t6qI8tfXW3
         vtnYeT+KuRMBPjhB/rSz4ECMm7dBu3N45IUXiIgl+pr/IAxQRFsh1LRWiMxcplJ0iXcF
         G5m5iNFnmXfV5/6PPYoZ10zApxowRo5QyfwSobum9SY1IHIi8n0t6xkfIX0tJV8Af8Pm
         ZeAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EF0RYdN6znGSv7RoNl4uTMtpz/iDV0BViqPQ5qnZcu8=;
        b=huL0MrjnVH+9+jXmc3tBBCahMj6Xp2lQDct51V3hkBx+I5nOSd5i/oGKQGoQoVbpfL
         OoUqbY9TqeizRNR7lw7XVgSy6nUNcovgDdHiKZUoe7v9n2469cuAny4+MGw0AcISwPje
         TUffApmb/jD4hYCp4tldeQFTUtDdvpJLln8BPD6Ocki4drJssx1oTa0e+VGO1DV58fsn
         aQN2pltjl6vFkStHBYfgUyJd0c8ckUc2OrjJ/EiKZERrNsTB5Dv2XlPL+M1LdI5Uejjp
         ow6kh8B54tewnbmsabHjA/xhNlXc/+BXDHmVs5qFZaOSUhlRN38mWt7nT/o9GPJ5CWt1
         RQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EF0RYdN6znGSv7RoNl4uTMtpz/iDV0BViqPQ5qnZcu8=;
        b=OTf0a52/lFoeaiFNDYutW/9WKmBDSjxoUvfGq2qu4GfgG9SeY+0InxZmrkZN2plKe0
         iIebuZZhiWnyqdvujVnNqM/YcqBTdz4r5hJDZo9MlrLQCMmo4sNJcDMHoj6d+fQz1e7t
         gRla2NELDMRYwGg60PDS7jhQYdSCxyLSaCRrVtXhp9KK5wVD2A7Xd+A46zxomiwdZJRC
         hp28UigEBXaF8a1EjT80Vr6k28D8BamK31iFc7PKrbH1vhbkVwy4CasUqvct5sn2J53D
         kwE3sOEazeXslOyoEF6rm+8+Otsm9c7zMRvJrFt15yNeADogEzPMydsQ5BfizLQJ3tTw
         /Sjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUeysnBOPIFJ2F7tE2NZHqwBcrU9iGyZWYPlRe89aquDzCoAXWS
	mZAiaZvZEp7lhsZNrHmQXiA=
X-Google-Smtp-Source: APXvYqyqbTSGbIikUevv0jsB+OpYPnXg84lnFKyNiKEZIyXenC+1bKyLCQTm3h+9JQ5XUAGFc8o/Zw==
X-Received: by 2002:a7b:c318:: with SMTP id k24mr23657010wmj.113.1566832531232;
        Mon, 26 Aug 2019 08:15:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5651:: with SMTP id j17ls4579014wrw.0.gmail; Mon, 26 Aug
 2019 08:15:30 -0700 (PDT)
X-Received: by 2002:adf:93a4:: with SMTP id 33mr23882993wrp.187.1566832530827;
        Mon, 26 Aug 2019 08:15:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566832530; cv=none;
        d=google.com; s=arc-20160816;
        b=qtNxmV+PxRD9/6PEEKQSs3CJXe1LOLPbipfOaDWCZht79Uu8tOsMqWyQ+stV6uP3tF
         OPIiFWfj/83iTWGILgL/5jWb76hYpsIvmEbnvwVDzgDSua+oiiK0j8bARNPJcfi2bohe
         wiBGag3YWy8roDKoi5jpW+Q9UwNl68zXpsNJI57BRPsMXZNcmx+dkhkM7pFc9gbnh+50
         1hWjOX8UNNa2Pz1oaKVBLFBccq7rM1IsvzN4jyXfL22+mZlK0BxN35EiwupqWpGdE4Fy
         668DykdSAd4Xcfv1+/pHwSlDsc/L7OGp/kxnDjM3QCgj+4Y9jnGQ/Tl28tGox+wgwWE8
         kF+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QMc8BlFNPwhPMkitaQqYoQoxo4FLyEe7KvlKmz3CRSU=;
        b=FBr6RULw7s7PNizSvFgYjunPwSLcgeNFVZbNEnIl0KZtWaPHCFKv+gFzJFex5EOeEa
         pcjyT6bS/RWvvo7QoARW0UW2vOIZkwW46vwdzLXwhI7u9OXzJTfHkfZHFciG1MQXWIPn
         nBU2h1DYr2mfFmEGsGIV437RAzsLIfmN+OQQspYvspWliio7Ri08OYpTPMKWdK8CeT8Q
         0eohrb1Z49WElyVV5ysAKhC9SWTFtxHLcmU1oTgVgZnDTy+2GhmQiZ/e8a3kiNOFwktz
         yORJYVdwfu/RDoyau6eooJQTwC6W85h05TpSENxirxN2fEyIiYobNLAaGFXmFy1Vhbs9
         Qt0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IK4bcaUH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id g7si24000wmk.0.2019.08.26.08.15.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 08:15:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id u16so15727592wrr.0
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 08:15:30 -0700 (PDT)
X-Received: by 2002:a5d:4205:: with SMTP id n5mr22982928wrq.52.1566832530322;
        Mon, 26 Aug 2019 08:15:30 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id s64sm25344990wmf.16.2019.08.26.08.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 08:15:29 -0700 (PDT)
Date: Mon, 26 Aug 2019 08:15:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: clang-built-linux@googlegroups.com,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] bus: imx-weim: remove __init from 2 functions
Message-ID: <20190826151528.GA91444@archlinux-threadripper>
References: <20190826095828.8948-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190826095828.8948-1-ilie.halip@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IK4bcaUH;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Aug 26, 2019 at 12:58:28PM +0300, Ilie Halip wrote:
> A previous commit removed __init from weim_probe(), but this attribute is
> still present for other functions called from it. Thus, these warnings
> are triggered:
>     WARNING: Section mismatch in reference from the function weim_probe() to the function .init.text:imx_weim_gpr_setup()
>     WARNING: Section mismatch in reference from the function weim_probe() to the function .init.text:weim_timing_setup()
> 
> Remove the __init attribute from these functions as well, since they
> don't seem to be used anywhere else.
> 
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: clang-built-linux@googlegroups.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190826151528.GA91444%40archlinux-threadripper.
