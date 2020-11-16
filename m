Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBH7QZD6QKGQER3YDJZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFFF2B3E9A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 09:28:16 +0100 (CET)
Received: by mail-ej1-x638.google.com with SMTP id 27sf7333206ejy.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 00:28:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605515296; cv=pass;
        d=google.com; s=arc-20160816;
        b=DrVXOReqeml2LMzwrlgY5PQWnMZvG1yjXpro3vo+JX+7hRQPx4g7K8y4ZA+xOkdwfh
         kWBDcfwYkB9pNB4ImKDwP52e8NWHtp0tv5FC1+rgD1whdUHUyL6G7p3SO1mN2Tn5zQiJ
         ipzaZpdOV5NazQmLc+BQ3Lwe4Y8yq4wcJrl+46v9ADm9+IZ6ZeZKC/3ZGIAV0SL8rh+9
         uQ5ies6hq6EUR5ZXpW8sm9vCBXRzm+WtDXR+59POss8a295HAAk0H4QH8eSRDqkAYL8H
         rzbKsGyJ4F60blpywrz1HFMmYk0ADtNBwCNdl4z8o94hfUwEbY1f0N9Ka4XfjLZdtmhG
         vpuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=x1fUoPft4i1pGJc5zPESidvfPW80kaIvqSGO+gL6GO8=;
        b=FUm7qwGwqrnOoCK95X8Hzc04mC6Rt3CeBTv5aVQvl6GBZdTMRzvh/uZSeHWs+1/Hqr
         747tVo+4NAdx02m92V3LBrtDC35VgOgkP0PQOGz4sW6zr5yBI1cO4PeVkObovXNxQigB
         dV0inQl9OUUgnRA/IIHohQzAr9A/np1nB3gNya7zpxrxQZtsQjUYDtR+PIK3ZVT7MpCb
         +lVIZpbCG7GV0CBANh5rpOSQuPpjjDb+hJ/A6j6hrPDZYv+b+sEh/EZlNUEK69AnIqjt
         bGLlYgLMYECvipInb4SWTKPA4sg/geQYLSncVzYf61JCFW4Hl9n74iJsSSKpcK81gVUX
         biwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x1fUoPft4i1pGJc5zPESidvfPW80kaIvqSGO+gL6GO8=;
        b=Kt3FKLeN7I6wX8kGFJtJZ7ixuwX2+KPAkPynvJ8QfgZgFErISoDKQToDJlJUgDU8Q+
         ySTi73X6DwSkDQ11hNYlA8f2nKz3TezLdkhljz/3id+zIHc/Tuj1ILqtXRzdkjMqF5d3
         Dbak5fNGo/EejZIsecTeeHiUyTHR/l0s+0e32GIthON3nLAVT4N2NH1YGeedHojcMg4L
         XKXo6b/uIV2YEeQWGeXC7lcXE90i8H/5CJILuSdaurzSlaWBqXxKn3Im8NpZ9Mi9pf/R
         4OvjS6V8Xf5xYKgofgTnuNRNBtmI2aDLtIAgoVQQZPlBBzVHdaxIaSDr6x8bv5DIlef6
         /owQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=x1fUoPft4i1pGJc5zPESidvfPW80kaIvqSGO+gL6GO8=;
        b=PYe3qVaJsIjZIFIbHX37Qm400Cgr6vlI8mN1USXa3IQn/mdIaPl1lpEnNERIgLvohD
         NcqjEvRGpFsSGuSbfP3xRmaYcsXPJWx6fi9tZ9RVw1twIH7WKVfeIU/g5YpH5KkHhA0Z
         xu7KR7auEiQkuHrx1AHxrTXbkVf3peSH+KvnbjlV/JWHHF1zjfVFt/C5m341/MMAiyUx
         2VnpVCKcDdgsSVBAzcpY0e57aKX0IruYjw53D525trpAuq/RlJcTAC99X00kicEVRugB
         6yQVvMXBU7Cla4yUzayUCBWhgTL2a9F9rbph5KjBThv4ETP4hh19e1JDfyGVoVZw1zRv
         w84w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531S8zTeEq5+mm5NneT9EaYHvrOT3tqva2Jxdnu43TrqoqMG72IK
	ONFI6mN/qcRx4SkQXbXHHes=
X-Google-Smtp-Source: ABdhPJyIpek662TUFjGe2tthSMGeY3r3oTkYnyVK3YRiCGR5BN1bV4eqcqUVIRtcJxtYQQJXd1eiPg==
X-Received: by 2002:a17:906:888b:: with SMTP id ak11mr13193824ejc.278.1605515295943;
        Mon, 16 Nov 2020 00:28:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:28c2:: with SMTP id p2ls2965047ejd.10.gmail; Mon, 16
 Nov 2020 00:28:14 -0800 (PST)
X-Received: by 2002:a17:907:119e:: with SMTP id uz30mr13849639ejb.125.1605515294742;
        Mon, 16 Nov 2020 00:28:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605515294; cv=none;
        d=google.com; s=arc-20160816;
        b=OfV0LPZiRUkJHG1qe2R21X5m7Wodp9Xmdkd7JRAh4vsuVEXecXIYJmgFwfTNJXCjl/
         WXA1wrR7gwfbm4bIpNMItMPmpVDG70/WKZjmoPMk1hzKJ5FMDIC49ocsw0mSbTe+bdx5
         6Qhg1NAJBGhcrx6mPlyebCUBNw4xW+R6pYeqH3l9yWfQAbskpUWsJxa8OLyvZwDA8YSn
         vsoy01QqNRtEbVpxSWry0Uj0K3Hrb8bjvBEYkktQCa/cYLSJlddKH3hQWSmT3rVU3VPY
         7v8GaotTo+lrEHNECNQCoCkbYIOyOypzkjWQvqx9NoL6YlDpIASbFUoc0IKC7YtmHtAL
         Gmdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=l2WBiCb5duYJRA9nKpihqrJOH1Qjg6utSrFiu8qAdtc=;
        b=oc5tDiS8qzWhLHOID5/7AYq+rqDXlfbegVf2zT3doC8L27pYjZacCrURrRu05CkJpe
         9sia0tEAPtF30RWcw8bNea4+YFDnp/AQ4qztKt63jYXmqKD8EWp9zGtyVR4abrRSPMRP
         UDoNCXNByEEr/9Bg7FwzZrLJbd5ES0mWAkXpvAVu/Ndxhwxm6lCoQCRXm1ztB7I/Qv37
         HMzDMVUQ/OZ7o+RFeaFhFSDy4TssRZB6JsMmcejiL75ty+G+ff1sAgU1Bhpz521lH8bP
         kCvzng8Cbu29OmdZkMqhE0FZjl8HNJcJb67ZkBSrYcrlFgoaCch2gLBcKPchkcyJsknp
         /+Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id v7si863628edj.5.2020.11.16.00.28.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 00:28:14 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 0F2F56736F; Mon, 16 Nov 2020 09:28:13 +0100 (CET)
Date: Mon, 16 Nov 2020 09:28:12 +0100
From: Christoph Hellwig <hch@lst.de>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	"James E . J . Bottomley" <jejb@linux.ibm.com>,
	linux-scsi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: sd: remove obsolete variable in sd_remove()
Message-ID: <20201116082812.GA17192@lst.de>
References: <20201116070035.11870-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116070035.11870-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116082812.GA17192%40lst.de.
