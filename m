Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPGW22EAMGQE2XNMF2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCAB3EAD83
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 01:14:06 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id 187-20020a4a01c40000b029028b01802752sf1052884oor.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 16:14:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628810045; cv=pass;
        d=google.com; s=arc-20160816;
        b=iLOnkkji65tF3eoUEmRScWSySP8b3Yq2X/VGaTv8MImPMDQ3sI6wVg1dW99Qgro9DW
         9GGL3qanS3O/tH5xAnKmpZwibSCb9XY1Umn/XoK9HWQJYaQ3koteNBZIzSMqs9//1xCZ
         YIA/zCCNO6I2xOMFi0BDpb4ZFSeMJmbaewfwQRRiWbWG9JrxFJxPrpBIJy5XgTbHlwHb
         JY/bCva/WxTZo1o2hxmkMRxqPL+E0hPsLZled9SpUut4m0sUOSjgo1Hp/vj0KRpbMIsY
         BaiXBPpbK28TTT27saROzhETQAcTOD55uLRC6kgcOMQZLEBy3aHXbd1zATUJScwysL72
         iOLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=b5va0RZhGqAPM85JF3Zjii9/AcH2wy8miEJvHWOJmhk=;
        b=iGFyRt0XAUTpg36ZQS/mj+MJpmIaUu240j46LlEgQqxePycgHxACbQPv+GpOtsyryy
         kaTCogGN6lI8rXFpetd9bHJB+RLPDUyFyXdHvntSaOa2dvvCGd5NRLQ5C6M9X2HKOB2i
         9rGEB7BdtLJCRRz8GUMThIowPNMWUzYSDpDQhTSuJrlK2wm5zBFmMN2yh+zLR98g/uhL
         n2IcsjtvDacjDH/98le0CJxxrQZnB9zLSHctJHTd3rFPKqG1G+jMmRlrzb4FpMQNFBzr
         kLVYPbydGyqA3ptmxe08hGMeKsWQhyFbMEZii5UWMcmWAL70/S1YEZb2Awt5/POc2NI1
         AurQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="U/Wt0xmp";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b5va0RZhGqAPM85JF3Zjii9/AcH2wy8miEJvHWOJmhk=;
        b=jeKAQ3B/3uaO/mYs7oyxqpsTvHwZRLznCt7c53hOhsrnpA0kZ52gQ8zIllbWIsHDCJ
         nngxpevWROVSEZaZLO2f9r2zWNHz7L/GnJvB7GmZZsRzfPgSXfBcRDf98Z8F+9UfnpIC
         qUX0lakqt811oWsx0vNVd+dIuEnI+OmMO6taHn6k93nn3uvIrlQuh7KPqiTfEbuvRLPf
         dc4TcXBdsH2XrsbTJsHdEwqNROfQjVJGo7MgDWClXcbp7w/bHSJNhpW2PfAw+n50Mx1M
         8E21npSr36il3b4x4I8KQ0s0CQKlpNoysKXlvdYw3UtlRu9rBT64ep9g9Xyyouv0VVEB
         8xTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b5va0RZhGqAPM85JF3Zjii9/AcH2wy8miEJvHWOJmhk=;
        b=FK9pGIJ5xpMzPoW9W3PvT3arXjGXCD9GdTQB9UfW8hz/cwZl2pbn1Halvb2p2CBHEw
         sgF1Nzm4JF+/7GEX3SsNUEsoYRJO5LOf6IqaO6pfdNv6woGIoJVTxk+cwubanL6HYyoU
         z6ouYRypB4rAVCrB7VS3m8DAB/yNoVzHwVCAUnYMF7WrCWlXiclvQWHJkkZzAkmawxm5
         I06FxRxMMnSGVHlkLUK++xbQE+ZZhrYs3dJzB/IJhInkuZlOJ9ti2m8chb5/RzqIR1+a
         J88PC4FUJsu7Kyi7MeKH6hekH9rpqSxwrxxrNVsi52bThoEd52rF6DwBxC70zD7e72x1
         z3cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cnoU1Ctl+p4SjGNrjDNrTJuPFPWIovPfKJme0McjCfZlI/gV2
	K44194p87VOJq3qoQ6aS2ws=
X-Google-Smtp-Source: ABdhPJxT2j3EbXjogeAiAG7zIP6QPmt7J5OI3UuNHdEEypZlVLURtB8e2HEkx+bS99/MF4BWFP/5XA==
X-Received: by 2002:a9d:759a:: with SMTP id s26mr5174051otk.115.1628810044971;
        Thu, 12 Aug 2021 16:14:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:15a6:: with SMTP id t38ls1767191oiw.0.gmail; Thu,
 12 Aug 2021 16:14:04 -0700 (PDT)
X-Received: by 2002:a05:6808:1791:: with SMTP id bg17mr5446590oib.46.1628810044466;
        Thu, 12 Aug 2021 16:14:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628810044; cv=none;
        d=google.com; s=arc-20160816;
        b=YzC4rOnKTSEV+wSeLQ8ZsfZyR9IEAMefX3WkxNeFpERRhm41/uen8mODIPqGSiYeFF
         hkiGgwqnu/kFz0sx6K3oTmsGQfomlV1LWrg4nrDjcAif6STEawpqMYTDhRKgmjzgN/8/
         vcDkPLs5NHb3pHq2BPe4BdbwFbwoZFUMfKVn2D5qukfSnACK6QNGXkoOTQ4Rqt9vtI1O
         dHIyZ8VJ+gcmZs3Khia2/+/tMsdmydzGhJ0RjzAMP+b1l4ri/g8hBeoRBpqqHf+m9lvJ
         etyj+9fGIUJsK2xZ8yJPgrwSdIU0QSA53inIsypIjG+rqUNL4DxqEjm/6ZVWx85N9BTk
         6FvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=9hKkz1lx1aLm+kTyJZbEnNp+lmFdPxXG/3j8tSQu8mw=;
        b=JvNVFVclXxaM/BYbZLPuFDpmT4Th/89l/Sbk5cxyvbKTgbrvVAXozBSsUK4/+wAxRy
         5S24Lx8ntQZix0VmMOrcfbqDT5YXKK/giKnATUUJZ3wBghByTnrwV78swl6701JZxWxj
         CT3IH5gmvJkIxmagwecOOnnR+vPTM2RHgWTcFlvOg1tFP34KRIGr9mvba19/l+cyHMuj
         QVzU9dSStvY8fFJyNoVC8UyN5bbXvGFo6LHTkV0Fua7j+oOQjV4Gz5NZUUsPZsg10LJs
         nAOkfyji/zZ+Fcyezx1Xg13BWnQf8v62C22kzRbSEigQyDlR62O1NyYUBIADiRci/uIg
         NZzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="U/Wt0xmp";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w6si299529ots.3.2021.08.12.16.14.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 16:14:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DF36F61038;
	Thu, 12 Aug 2021 23:14:02 +0000 (UTC)
Subject: Re: [PATCH 3/3] staging: r8188eu: Reorganize error handling in
 rtw_drv_init()
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Phillip Potter <phil@philpotter.co.uk>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210812204027.338872-1-nathan@kernel.org>
 <20210812204027.338872-4-nathan@kernel.org>
 <1651213.ETx7SW4KbR@localhost.localdomain>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <24e15d45-40b8-b8a7-b633-9e538324a29b@kernel.org>
Date: Thu, 12 Aug 2021 16:14:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1651213.ETx7SW4KbR@localhost.localdomain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="U/Wt0xmp";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 8/12/2021 4:11 PM, Fabio M. De Francesco wrote:
> On Thursday, August 12, 2021 10:40:27 PM CEST Nathan Chancellor wrote:
>> [...]
>> Looking at the error function as a whole, the error handling is odd
>> compared to the rest of the kernel, which prefers to set error codes on
>> goto paths, rather than a global "status" variable which determines the
>> error code at the end of the function and function calls in the case of
>> error.
>>
> "status" is not a global variable, instead it is a local variable with only
> in-function visibility and it has an automatic storage duration (i.e., it is
> allocated on the stack frame of the function and is destroyed when the stack
> is unwound at the return from the function).
> 
> According to the above definition there's no difference in storage classes
> between the old "status" and the new "ret" (the latter being a merely rename
> of the former). However, "ret" is a more appropriate name for that variable.
> Furthermore, your handling of errors and return value is more consistent with
> best practices.

Sorry, I meant "global" with regards to the function (as in "was there 
an error in the function"), rather than "global" as a storage class.

> Therefore, apart that minor misuse of the "global" class in your commit
> message, it's a nice work and so...

I am happy to redo the commit message if you and others so desire.

> Acked-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

Thank you for the review and ack!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/24e15d45-40b8-b8a7-b633-9e538324a29b%40kernel.org.
