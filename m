Return-Path: <clang-built-linux+bncBCQYFH77QIORBXFU3T5AKGQEXU4QSAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B5299260A44
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 07:45:01 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id p6sf104432ooo.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 22:45:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599543900; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dr8Ob8rk553IHy6+YFraFX5mHJxvK60qu08szixoBqACvbHY5H/hsX33U/vFWIMAsg
         J/e13jxGT+vfLZYX/OHYZpqhPZK4eP0Twg81kpG/epJbo/mzfGRs0MvfcfkI/s+S7C10
         38o4fNIvV4+5jCScuee4zJEjf8rHqfBJPVPE28s5n9u4ufmxDwm5R+Wd/u0FPLR9dmPX
         KEsqdNHw528OlhycIgqD5I8swVWvW+OBPi2bIvy4Nq0E+LS/T6amaeAW0UtEecJOTKlY
         HtFo06pkqrET3BbgkoNEBX8pxJLlb0KCOB86FeID/Pm02/A9KI22JibDM897TFX8j/Sa
         NB3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:feedback-id:date:message-id
         :user-agent:cc:to:references:in-reply-to:from:subject:mime-version
         :dmarc-filter:sender:dkim-signature;
        bh=o/3RbdFpGQCcFqzQTuDg8/VS9H2foE8pVzTlZ97+naE=;
        b=ts1fzX8JdtcwwkFi959eywJhwITzA/RmelES7oK7zLV8sar8yzWzlSJlWsTs6PaN8j
         jp4jjQIW91ZVk1MAikVMJJLEgzBHKJhbBbhG/5HmyrH9n7fWKkHYEYUOQmydAPXdhbNt
         9J52NuyqKdOjhp06j+fYrjxNRh/4kCmlJ/kQs37WHldgLN1+PDppP5dhJk5qEYOuNPVM
         ImvZSdK0O7mmixJzYzSw5UgP/xfHj9CuPulhvEcypFBCoD2Uhv6Yi4FhfFAkaurRC69h
         MByRMH6C/pqdGtOs5LtqYcSJ27r2Oxw4/8ogYfsa/4mZSxFLHyfYQ5s64rDTVNFQSaQi
         fRMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt header.b=Jw2RnG+r;
       dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=GK0I3YNz;
       spf=pass (google.com: domain of 010101746c3ef3d7-7231d9fb-e5dd-4850-a434-958f8884ea76-000000@us-west-2.amazonses.com designates 54.240.27.187 as permitted sender) smtp.mailfrom=010101746c3ef3d7-7231d9fb-e5dd-4850-a434-958f8884ea76-000000@us-west-2.amazonses.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:mime-version:subject:from:in-reply-to
         :references:to:cc:user-agent:message-id:date:feedback-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o/3RbdFpGQCcFqzQTuDg8/VS9H2foE8pVzTlZ97+naE=;
        b=GJArqrq+5FEuYp5nR7nDv4mxruJTZNqmT3uK1rpWqtOsupicJyzZ0KKjcU4sHo8bGI
         J7hhWW390ricEyt2ncBvTw9hXFQER58dIx7BMWnV54obVaLcDf33mxy+TItNNntBOtai
         wVinop6JK7zZmApdlR1dApUNu4+ealR2qFTVq4uka6FNjCKHwC/u1ryx78nqPNWvfcfN
         7LpxjrzO2QkVHSyMOj1VPX6S6u/UEcIKse2mcYfSRC5gYEjRgAi1wyQGsb93+rCdYcJa
         +ahfRoi0Y87heIVOkV0wMJ02RXqKi6YWr7RybsGi7/jtNNSH2vSE9M8xGnBAq6/4HjiI
         duzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date:feedback-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=o/3RbdFpGQCcFqzQTuDg8/VS9H2foE8pVzTlZ97+naE=;
        b=aL49/VRNuuDy1SlIbClXyGBR4NNBjdxJVMfRVJLNxOr2IQeyuj5smI7tsb9wWgl0pX
         uWfioQb2ERHGq8//QP9o/V909/4DGUzsAVuEpmJcV4OoSYqPeVdhgXPrekWeDjBOB7F4
         j6zptqHyI9cZkRikLCeuhoNywIjkoV6Dx+n0sAOwzqTd1Jsp7ZPWTlyB6xcYFWTmopHD
         JQ4TICo183U5/4h1q4AGHMPjY5+kQmQ8lAxNxDro31UJ9a49sjm8LoNPYPkbJTq05KOS
         jpQNGpLQ3BDo0696Fkiln4btr0UWKjHxqP7eQfhZ06tm3UuPbgacrzp27aJ3EI+K0xZU
         EThw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bqXMKRpomVUJLV7RDxvsaMO91+yjuk1UyIJ+k6THuJiGxNf96
	IHjqQE/BlBaYyyIKyNDYpxU=
X-Google-Smtp-Source: ABdhPJytcJxP7iVhMd5Qa00wssx+MJ+wiyXU1+XxzQ8CFUDzJl3m9h20hlt+Em7QMZR+pziZJO0OlQ==
X-Received: by 2002:aca:4d89:: with SMTP id a131mr1670506oib.69.1599543900397;
        Mon, 07 Sep 2020 22:45:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:210a:: with SMTP id i10ls4685006otc.4.gmail; Mon,
 07 Sep 2020 22:45:00 -0700 (PDT)
X-Received: by 2002:a9d:7dd8:: with SMTP id k24mr2579356otn.160.1599543900127;
        Mon, 07 Sep 2020 22:45:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599543900; cv=none;
        d=google.com; s=arc-20160816;
        b=QG2S7Bezb6apJAguxbKWwDwJx556cFEXPqkrFE8UVIZJ8aZ94tc0opvKu0Z9sKSN+M
         R/5S9st9SKCBZp7f2GYYl0S4DHX/jMAm29JRZ1+rEkQ9OKW7exIIxB6jUoSoj5/WLC3f
         fw1O10Y78sZZoxYJkJKCqap7VVGasJBsaE7hHkT8S2q0oa5TbAOMJiCTWXJSJWXDCFvW
         ulMrIHY++GqcPl/cf2B7kAhIaTtyRAGefewWPeJn6XKd9cVMIbdsSL6TVYJwGLN4g5Hj
         3H/MUk13YU7+mhUb+d3+Y/Cqpb1kq/shmLa16eJ7sgF+OQB3/6l+1gbVxhxRYqTicYPv
         +XtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=feedback-id:date:message-id:user-agent:cc:to:references:in-reply-to
         :from:subject:content-transfer-encoding:mime-version:dmarc-filter
         :dkim-signature:dkim-signature;
        bh=L49JyNgEkE8zYruuPvRZkEp0LrLaKSa80V9yBQ6OSRA=;
        b=CwAj3b5REUsz2nY2gxx9eXje9CR0ePgM2Qbj0zYYw+TuaPyODn4jtUp+Cx25g83PaY
         myzVAMGuvSwph9OaaFncM5xVD9q6m0q/MLx0wclGrMEBCYQdkYIpPlr4PqygXouubu+O
         vv4pOCrTTIu+PFstxKd9UZjUCysEiSfKnce9MttDAm5oRj7meaSR8E7y/PQh4GeDeq8O
         hRVXyxykkwNPGnUPIuk8RFPlEN4lBygTn0BmFCRG8j2coavePT+q5m7qiskPFnst3MYL
         Yr93Y4Z3wJzUnRa3EiXh/wLovKECIS0YMhhF8kctX30mR4305U5Vdy9RGWKzFXK/lG39
         sK9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt header.b=Jw2RnG+r;
       dkim=pass header.i=@amazonses.com header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=GK0I3YNz;
       spf=pass (google.com: domain of 010101746c3ef3d7-7231d9fb-e5dd-4850-a434-958f8884ea76-000000@us-west-2.amazonses.com designates 54.240.27.187 as permitted sender) smtp.mailfrom=010101746c3ef3d7-7231d9fb-e5dd-4850-a434-958f8884ea76-000000@us-west-2.amazonses.com
Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com. [54.240.27.187])
        by gmr-mx.google.com with ESMTPS id l19si753264oih.2.2020.09.07.22.44.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Mon, 07 Sep 2020 22:45:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 010101746c3ef3d7-7231d9fb-e5dd-4850-a434-958f8884ea76-000000@us-west-2.amazonses.com designates 54.240.27.187 as permitted sender) client-ip=54.240.27.187;
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_DATE,MISSING_MID,SPF_FAIL,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0635AC433C6
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] ath11k: fix a double free and a memory leak
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200906212625.17059-1-trix@redhat.com>
References: <20200906212625.17059-1-trix@redhat.com>
To: trix@redhat.com
Cc: davem@davemloft.net, kuba@kernel.org, natechancellor@gmail.com,
 ndesaulniers@google.com, mkenna@codeaurora.org, vnaralas@codeaurora.org,
 rmanohar@codeaurora.org, john@phrozen.org, ath11k@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Tom Rix <trix@redhat.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-ID: <010101746c3ef3d7-7231d9fb-e5dd-4850-a434-958f8884ea76-000000@us-west-2.amazonses.com>
Date: Tue, 8 Sep 2020 05:44:59 +0000
X-SES-Outgoing: 2020.09.08-54.240.27.187
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=zsmsymrwgfyinv5wlfyidntwsjeeldzt
 header.b=Jw2RnG+r;       dkim=pass header.i=@amazonses.com
 header.s=hsbnp7p3ensaochzwyq5wwmceodymuwv header.b=GK0I3YNz;       spf=pass
 (google.com: domain of 010101746c3ef3d7-7231d9fb-e5dd-4850-a434-958f8884ea76-000000@us-west-2.amazonses.com
 designates 54.240.27.187 as permitted sender) smtp.mailfrom=010101746c3ef3d7-7231d9fb-e5dd-4850-a434-958f8884ea76-000000@us-west-2.amazonses.com
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

trix@redhat.com wrote:

> clang static analyzer reports this problem
> 
> mac.c:6204:2: warning: Attempt to free released memory
>         kfree(ar->mac.sbands[NL80211_BAND_2GHZ].channels);
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> The channels pointer is allocated in ath11k_mac_setup_channels_rates()
> When it fails midway, it cleans up the memory it has already allocated.
> So the error handling needs to skip freeing the memory.
> 
> There is a second problem.
> ath11k_mac_setup_channels_rates(), allocates 3 channels. err_free
> misses releasing ar->mac.sbands[NL80211_BAND_6GHZ].channels
> 
> Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
> Signed-off-by: Tom Rix <trix@redhat.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

7e8453e35e40 ath11k: fix a double free and a memory leak

-- 
https://patchwork.kernel.org/patch/11759745/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/010101746c3ef3d7-7231d9fb-e5dd-4850-a434-958f8884ea76-000000%40us-west-2.amazonses.com.
