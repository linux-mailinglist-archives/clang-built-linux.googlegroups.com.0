Return-Path: <clang-built-linux+bncBD3JNNMDTMEBB4EWRCEAMGQEYASOK3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CD33D9B60
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 03:59:14 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id s16-20020a170902b190b029011aafb8fbadsf3523080plr.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 18:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627523953; cv=pass;
        d=google.com; s=arc-20160816;
        b=oDPJWpVvKhphVGeDlx7tLas3DsTMDEoVXc5t3H9YGOugURoZqEuJ2zuNw/jLY+V28f
         eBmmoKnr1YObmPIGCQCo43LHWl3+sricULfnNxmJkPX76eXjHML4pkOM8YcFZo6jcmDL
         sjP4EUuE7VXF7m8nrzAWgO3Zkw+/jAesLFuds6F4zu0akxrriC8KTBfwALxltPojDGRy
         j1S+sua58LzamrSwJbfG4ee6ljL/4+NiLiZgLTHCJumyIsXFWCtZP58VeWqMuOBJMgRd
         AW5VhryaLvb+kgjr5RN8njbHresvzwlQeM/tO2zTGvlQJXwMM7KgZcPN7C7OJSUBzN+j
         ruFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=VpD1wRrYmMfG3/rnuR6oILWt2+YrXRGvHolV99xQ5jo=;
        b=hm9n+3Vqb4AZoRyCVdQ/Rufh2qteURB/peoKZ6ZkwaZLEEpzmbUnq8q6PNGFXrzr/f
         BH5euzqDGzUJhBWZjbg+UY/sWWqeaPXXbZI8kxphegNa1tQUa5lntJ/WwciQo5Grs4bO
         b8zfPyMBKPAm889/roJpvPGYUH8CpZswR60VQ42iCw0CdoYifuDnG2c/8cenD86yCjeE
         J2hzU8B+klxW/MpZQM2VEmQjbntZG2kYvRv/DjDuMKOvfeC+DutdL4iN0oEvaSZKNGGM
         lhm+ojCkvYo/AUTeBen8P820l7S/iAWo0uqLzKbVrRQonSxM+5TzrSuYLqRZj++QFJjb
         nNag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.42 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VpD1wRrYmMfG3/rnuR6oILWt2+YrXRGvHolV99xQ5jo=;
        b=P4gtzlnmGVCl0Mf2IUJwSufLnL6uYDuSPZqgDv5i15dKzn7XDvvaTXrCXX58Yei3GM
         ZI/lF20LYAxo7FFsYMWO21QVoEV9Kq4VPL6fsWmvfRRjpWF9xu+5yucTs9xvmIVyx6EW
         r6Wo0IgXgEezr12u3Pn3n0IIQNYqIJfs04Tuf/uaAtOZXCAOhrjbn4BBvnBrLUhtGn8k
         lXQG9iLP3wpyFDYmxTB2Sb7/wTO4uG16Ts6VfRT7g1tosoo6KgCrb/oymwsLKfIYKzw3
         mJnSNhj2OxY8LIyCbPRioVM2bPKQ8z8sxpT5W6JYSq/1wiBcOgDaGQu0f/7kO7iyx9dD
         LB9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VpD1wRrYmMfG3/rnuR6oILWt2+YrXRGvHolV99xQ5jo=;
        b=rkSOEyInCdToqfYiGoRAUouW4u7bLYqog9O7FxkCzDxD6vbOjs0Bwn3QksQhmj5LzE
         cTWj/YaDEhh4ELUAL0vTTmUKzlsfPHCupQVbbFAtuSoB4ho8s47HeVkcaHpqqsnDCADl
         RzflPv1rmG2qTc2LunTo8S4gcIB4nFMCBt9nnMzmyf/1IOSThLRAm7i+8cS6nYbw/JV8
         YDbBAuYjhEzryIwImnirl0vyKPPg6MFKOUi4/AYzKNgDRdqaCLMGe9tw+NXaoe9ywyvm
         UfeHXz/WN9l8xute7zijooz08fj2yqb4m+4FcsU0KJmGxp5S856wutsEVjayh4IOYXRI
         5Vcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JOT79jxHCc3Pt+S0frNKjALmTCHAtUKJXXRfVihdqxIH6Gsba
	gQDliv+OBZFTj3/WauJoQB8=
X-Google-Smtp-Source: ABdhPJz0iWbAYSqAU7YmHkyP1QNjjlxbHMEx2CfSrnQ96R3pDkvjueZFSWPpOvAyU3nNC3l0z6Sg4Q==
X-Received: by 2002:a62:804b:0:b029:328:db41:1f47 with SMTP id j72-20020a62804b0000b0290328db411f47mr2498339pfd.43.1627523952614;
        Wed, 28 Jul 2021 18:59:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls2144412pls.3.gmail; Wed, 28
 Jul 2021 18:59:11 -0700 (PDT)
X-Received: by 2002:a17:902:bf46:b029:12c:75f6:f643 with SMTP id u6-20020a170902bf46b029012c75f6f643mr923176pls.6.1627523951663;
        Wed, 28 Jul 2021 18:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627523951; cv=none;
        d=google.com; s=arc-20160816;
        b=sj976RL7gCq4LIOKsP49c8f6GTbs/tVjqWinPNcmqFf4P6Ux+QVIVzQfGEe53u7XW9
         QVt48qSGYOhuZlcMAwwJwbxwUF5LcWWJ2zpf5g3NiIwhAfaz6jw1DIq4PfyimOy/5EKi
         P/0625UAkSFW6pkIUSyimZRbfr4Njf2BPyFA7SBtYqBMkCm1GHqeHudACBedLgoU8T1B
         S5IIcqPh09DhuSzMRq9K0qS6QjNnPQzzw3v53xKvMhQbnlHVTrHriRNMCKeOT4Qz98/A
         02otQ5UGXJKjhLwqCe4gEdWru02awf7f7AuKxqGUXp2EtHfZCHEn2R0JsImRv+5RBpq1
         57lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=/EMnvbg1lkcKUNHoTGAUlLRl80RwVqD1WDQs78+Ryng=;
        b=sLgN8OytHkgZ3K4TurJLTeuVxZMQwmT9y1UCqeWC0aUglmXtQYf6S/OPLi7uocm3RK
         kPD2DnbcegG0ZVOk8gCtAclWN0AsHWq5oU80NjwySeIfufKkJTvDIQ8crSqWh660uw+I
         KbG/XDuA5xSSOTdwiTiSULZTAnuJrKwxyHzAgUmcCK/HhGiLeFOsRKduTAWWJm/UHb5y
         /VmWyZNKZlgM/0W3bduOXCx+jbgUnEW8vY+ZSdDZ6lwTuxrO3nP/aeXx94G8sE9xybEb
         AjjWWiEnpX3jBxr72fHtcrsHF8uCQXWxXoo3RudGurbzfPFBtNQ6SYqPaw2J2Mkg/QqR
         yhqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.42 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com. [209.85.216.42])
        by gmr-mx.google.com with ESMTPS id c23si105364pls.5.2021.07.28.18.59.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 18:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.42 as permitted sender) client-ip=209.85.216.42;
Received: by mail-pj1-f42.google.com with SMTP id ca5so7925184pjb.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 18:59:11 -0700 (PDT)
X-Received: by 2002:aa7:93dc:0:b029:328:d6c9:cae7 with SMTP id y28-20020aa793dc0000b0290328d6c9cae7mr2579458pff.53.1627523950822;
        Wed, 28 Jul 2021 18:59:10 -0700 (PDT)
Received: from ?IPv6:2601:647:4000:d7:9eeb:60dc:7a3c:6558? ([2601:647:4000:d7:9eeb:60dc:7a3c:6558])
        by smtp.gmail.com with ESMTPSA id z16sm1344383pgu.21.2021.07.28.18.59.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 18:59:10 -0700 (PDT)
Subject: Re: [PATCH 19/64] ip: Use struct_group() for memcpy() regions
To: Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-hardening@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-20-keescook@chromium.org> <YQDxaYrHu0PeBIuX@kroah.com>
 <202107281358.8E12638@keescook>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <45855f4f-f7cf-b7b3-bcd6-c9ebc3a55c64@acm.org>
Date: Wed, 28 Jul 2021 18:59:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202107281358.8E12638@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.42 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 7/28/21 2:01 PM, Kees Cook wrote:
> On Wed, Jul 28, 2021 at 07:55:53AM +0200, Greg Kroah-Hartman wrote:
>>>  struct ethhdr {
>>> -	unsigned char	h_dest[ETH_ALEN];	/* destination eth addr	*/
>>> -	unsigned char	h_source[ETH_ALEN];	/* source ether addr	*/
>>> +	union {
>>> +		struct {
>>> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
>>> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
>>> +		};
>>> +		struct {
>>> +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
>>> +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
>>> +		} addrs;
>>
>> A union of the same fields in the same structure in the same way?
>>
>> Ah, because struct_group() can not be used here?  Still feels odd to see
>> in a userspace-visible header.
> 
> Yeah, there is some inconsistency here. I will clean this up for v2.
> 
> Is there a place we can put kernel-specific macros for use in UAPI
> headers? (I need to figure out where things like __kernel_size_t get
> defined...)

How about using two memset() calls to clear h_dest[] and h_source[]
instead of modifying the uapi header?

Thanks,

Bart.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/45855f4f-f7cf-b7b3-bcd6-c9ebc3a55c64%40acm.org.
