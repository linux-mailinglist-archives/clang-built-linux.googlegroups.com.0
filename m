Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBON2ZH5QKGQEZUQIJ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FDE27B759
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 00:01:30 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id a63sf2801493otb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 15:01:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601330489; cv=pass;
        d=google.com; s=arc-20160816;
        b=nBy2fJBfk11DrhhFnrRhtZws9PG29uSPcmAZ84ng/HUU2GxcV3ZCW4Cs9HcBRt438C
         p75yuzZqPZ5/+60I7ZK+dpRzawhWcq+a6VtqfXHDe4aacsnI4IwBe2yLLa/vtlNn/VZH
         gUrG3vIh00heBzCLwIndVJApiQD2PorbF1XDMqNc53+uQQNPUmScxnPB6bYqlgakPu7P
         KteGA2Ebtjc1fE9TC9CNAuY+ada0LXAxAxr7RCjqAVSR+S02qL8fASaWau2enG7n9Auy
         jG2FON8y2Xi8QjHKbnDT2pa6j/ycWBow/s3QxTL/chZI/0HkkqGj+/WzMlW+vtDUBe9e
         KV6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KCriU8wEkUnPYdo4bILHHev/c7Gv6dHoMHIyK9H4rTg=;
        b=eSEJr3YpgA8WWicNKxTwRuZPkLpJl0WZ+0Qme3wGfym/4U09F7N6LMeHlqp6/XV+ro
         8NzpQtAnrZU2gFHmD3F3wGZdVvIdmLVAlkLeUQzov2N+PHF+YOAB5rC6RT1JJQwTsLSz
         Yil6aZ1s2ETJGvcNqH8LYYJlgIpLoLbEynso4SW7BY/mPO8RYs6mLoAYaGkluZMNZG1a
         rSM8PLFD6tTGer6crugRKEZCMPTrGsGHdQbIDXOLneObTJH7Rch8kwWh2pdCLv72Ua5x
         8yciJcBAE0Wc3UWAImnWeaTasl1PvjXIDO9vPWY1DbOtfyahZg8yQcleObfYTFcfX7rX
         QV+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=10JFGv45;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KCriU8wEkUnPYdo4bILHHev/c7Gv6dHoMHIyK9H4rTg=;
        b=rZJsTgOoR3L52GHrGgHBuyyZQcsptGUydyHkroK+6DxPhkaEHO+j2T98Y4AyLxLBGc
         QSk86zpuinQ+BgSL+vLMmyYqVYfNdo+JeaScAwhbsgpPSJwGUofxdB5MLV0ldm7Kjrxk
         zuVjAUuGO4AddQbS8EUnu03gAhNog/+vxYiv98EVq8ehFnHqC+28KhPwsdd6VwelfsnF
         ob2qldBjd6pJ6LRjbnUQ+fGFq19Sxi9M58zIv4ImLMF3nmnPVxpx/mSXAJPtYHbaO642
         cpeDIfQe/cRE00LEf7dLEUP3Xu+bf72oyERWDZhTRjWJ6Cj9OIOOSt3wkpIW5zwgIihy
         n05w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KCriU8wEkUnPYdo4bILHHev/c7Gv6dHoMHIyK9H4rTg=;
        b=At5oHVaAlzWn36iU6F9l8upyF+Xi9FC7mQaMF6ZKHLXXHS8Nu2n8w0rmGZLr9AqUQu
         nELpe7votPJZexYLRXgIA/6yCEyVQth4M8I1KPTIyJpLbHHMllu+IrB1ngNkB2guW3jL
         ngDM0vzHxfjy9wk7dkmbXsAiytuZrxqZ6H97tmz+dCpMLZo19tWheV72qOqnepKh6OT0
         FAmZ/pMReRKvIM9LiGOoxaiMA93oS2F/+ACElJCbwsGbnlrBj110PX/Swjbr6jabQ1gd
         leBnhX19YxZEMEwazBmZI90J7T9xo6gBPg6GikPUXxyxc7hUHwOK+ry+Z4DLkYegxSQp
         Ro/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/0hZQexCudX+Em0H1TxcRCBgj0QNFzkoLs9rKbKZHkICz0KTr
	67lcXh/FBOstQWSHueTTDwI=
X-Google-Smtp-Source: ABdhPJzfq1lNcOrRvwbW5vcxS71mnsR1nHUwT78NdLhxUjzE2ij6Rt2adUWYh3NOSres1v5mPamvpw==
X-Received: by 2002:a9d:68d3:: with SMTP id i19mr771623oto.308.1601330489422;
        Mon, 28 Sep 2020 15:01:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:75d5:: with SMTP id q204ls565790oic.2.gmail; Mon, 28 Sep
 2020 15:01:29 -0700 (PDT)
X-Received: by 2002:aca:4ac2:: with SMTP id x185mr639860oia.96.1601330489074;
        Mon, 28 Sep 2020 15:01:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601330489; cv=none;
        d=google.com; s=arc-20160816;
        b=wxJ+Zc02eb8A0M07zs0L6PWbXXBSU7wg+DdTm/HCFWwOZ+NtnyY5C3j2rv986tdzMV
         ThjOjfH3y2qQsSxmMSaMeIlUaDHYoxCYjajVoQkJjrHxFVLHShwNoU7imJMREDG/1dAH
         FHDfBI370GlqnAmss7b+ipCvtYW7/6qhfe1leElxu9vn69ppJ465AVxFhBs+kqM0TIE1
         bLmwo6JJ4LnUN/d00IjimjglKBXxKzOg88ibdQXEJrpcEC7NKN4au7sup1wxwbDMLd3X
         qm9nKRy7ew03LsCzs62vhOWSFkLESWKH8Vhoo+t2jixFFG8N91ZlFBOGpKrMvwgfSTpC
         lf0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zYrDdS2KsWH6a1Yi8I0MyKSMCfr/He4QJnzpxexf1ks=;
        b=kVyG4AATijKyFx6ZQknkAWz63IJiaRY+KmiZhTuLmC/Wca/JYLEXG9e2dVjK1XLB2o
         ntjaUhwY870BfNIVOxqAAh1hJcIPAgMxuTKpvojjs8jOg05M/d06FEAiNrqiTGWuSJH/
         /Ou1bi1yw/7JOoLTt58uRbG6Se440/laPAq4MDXXFTwB19yRzaOkckzrsqBC3UaVQvpI
         aDOEQP6SekeyDWyGJcy+Wc8lTg/hNptNFQUrep142l5PL1qh33PPmyBLxH+dPtl/7XhR
         9s5N+plb/+nHSKvEVt0HlBgO7HksCQsAniJxcuRG2iFPhCh2KznEGG0IR5bvt3hXBk9D
         srQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=10JFGv45;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m3si274522otk.4.2020.09.28.15.01.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 15:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0F62721D7F;
	Mon, 28 Sep 2020 22:01:27 +0000 (UTC)
Date: Mon, 28 Sep 2020 18:01:27 -0400
From: Sasha Levin <sashal@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: linux- stable <stable@vger.kernel.org>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	open list <linux-kernel@vger.kernel.org>,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>, clang-built-linux@googlegroups.com,
	Jiri Olsa <jolsa@kernel.org>, Leo Yan <leo.yan@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>, lkft-triage@lists.linaro.org
Subject: Re: [PATCH AUTOSEL 4.14 112/127] perf parse-events: Fix incorrect
 conversion of 'if () free()' to 'zfree()'
Message-ID: <20200928220127.GE2219727@sasha-vm>
References: <20200918021220.2066485-1-sashal@kernel.org>
 <20200918021220.2066485-112-sashal@kernel.org>
 <CA+G9fYteKZxdLVtQzXyh36hhaj6W5e17U_emsXwZdjPoeyj+OQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CA+G9fYteKZxdLVtQzXyh36hhaj6W5e17U_emsXwZdjPoeyj+OQ@mail.gmail.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=10JFGv45;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

On Tue, Sep 29, 2020 at 01:24:32AM +0530, Naresh Kamboju wrote:
>On Fri, 18 Sep 2020 at 08:00, Sasha Levin <sashal@kernel.org> wrote:
>>
>> From: Arnaldo Carvalho de Melo <acme@redhat.com>
>>
>> [ Upstream commit 7fcdccd4237724931d9773d1e3039bfe053a6f52 ]
>>
>> When applying a patch by Ian I incorrectly converted to zfree() an
>> expression that involved testing some other struct member, not the one
>> being freed, which lead to bugs reproduceable by:
>>
>>   $ perf stat -e i/bs,tsc,L2/o sleep 1
>>   WARNING: multiple event parsing errors
>>   Segmentation fault (core dumped)
>>   $
>>
>> Fix it by restoring the test for pos->free_str before freeing
>> pos->val.str, but continue using zfree(&pos->val.str) to set that member
>> to NULL after freeing it.
>>
>> Reported-by: Ian Rogers <irogers@google.com>
>> Fixes: e8dfb81838b1 ("perf parse-events: Fix memory leaks found on parse_events")
>> Cc: Adrian Hunter <adrian.hunter@intel.com>
>> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
>> Cc: Andi Kleen <ak@linux.intel.com>
>> Cc: clang-built-linux@googlegroups.com
>> Cc: Jiri Olsa <jolsa@kernel.org>
>> Cc: Leo Yan <leo.yan@linaro.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Namhyung Kim <namhyung@kernel.org>
>> Cc: Peter Zijlstra <peterz@infradead.org>
>> Cc: Stephane Eranian <eranian@google.com>
>> Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>stable rc 4.14 perf build broken.

Dropped, thanks!

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928220127.GE2219727%40sasha-vm.
