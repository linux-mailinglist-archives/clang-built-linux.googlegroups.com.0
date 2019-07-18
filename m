Return-Path: <clang-built-linux+bncBCFPF2XH6UDBBK4BYPUQKGQEFPNFXTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3AF6D43E
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 20:55:39 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id p3sf6335686ljp.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 11:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=boG3SSPlmES071txCrhIcHVuDMB2F3sCnpvNTdAQxN0=;
        b=Js5aNh04V7iRVbNaaR7PTouNhCYLvuPYzdnQLHJUq4tRPiIfxvRvSxQpnxFSeELSj6
         1kktEktjbzbpOIFvGbZ98HcgTIjkE2Zx3GYhN3TGJ3ZmzR7nuUd8PQyWQcq5Uwcy7Aqw
         aYZpuVsNxQi7049mYnJzq8yZQsik27sxcjPBXH2SEwTFlBrRKrnyg/dwPR3VpdyyhitS
         3f+/WJ6XIkHuMWw5ixhnqmbevGzHFCK5IWSUA3IKL00s/ffhxuXAUiHckeF9xo2502Qk
         Py4gRtl3f7BODbOIexI0EssNgETPlNxQUQ/09D5vx4uXAkzW6bs2ArRnW+i26zzGBNOo
         aBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=boG3SSPlmES071txCrhIcHVuDMB2F3sCnpvNTdAQxN0=;
        b=igixXTDKOHROM9al4r70y6FbTpgKnfUhLlmoIW5Z/Bd/SrGopq9uouYMVHulLOJAmq
         mzdJe5yp+SdgfbUtL0DOakWbXXJm3uocZw2hg0gg7H+zQaXJDqGU7vzRHV3fpMFeuUBt
         Oud0iFe9+FaCKvhn3w8Oqkj1KOTyUMbujkRsxzcrYzgYKew3dQ6BkOwuC2smI/Qocv9M
         /KlJu57QJMJtQjP1T5hLjnC8cngIwnT4X1XIaae6V/yO00DAHsYV+2Srj1YsqLhH+lRz
         rJ57eIg8h82McR0hjuAbbQC29z8+CzhxlIKxXnvWu2L9AfxAg4xfJdHZ1QgghusOeMYc
         FYqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX92KP8wfEGSFJNoyBiLqRf2BuzEfHsyyBdln42UBaTL87nWVtc
	L9EKm5mxExNUwoWMIGQ165c=
X-Google-Smtp-Source: APXvYqwH5sLut0kPLLRY+R1J0hsrl+Rz6qSrQld2KS6ULcvHgoGV/A8EeGw6p1TRd/bfAtPtPTa4KA==
X-Received: by 2002:a2e:92c6:: with SMTP id k6mr25310804ljh.148.1563476139155;
        Thu, 18 Jul 2019 11:55:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8854:: with SMTP id z20ls3406574ljj.5.gmail; Thu, 18 Jul
 2019 11:55:38 -0700 (PDT)
X-Received: by 2002:a05:651c:87:: with SMTP id 7mr17541267ljq.184.1563476138541;
        Thu, 18 Jul 2019 11:55:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563476138; cv=none;
        d=google.com; s=arc-20160816;
        b=b2MjJI8hIBXdbcvugzVKnZoAZS1xODzjUQfYe21LnjtprBvWits+A0CxdhGv/aCwzQ
         jwUzqEMMHpBu3C+p5GvzsejZ2rYljq2VnN5SW+f1yd5+nJLoLHiqVB0jf+kvN22QvMQX
         lIj3NKoUbv2VkgEAkE7F3z/DVIHStuN3ZMs2PamEJTVqt+UhQEl/X9o8bDubDniS3gMZ
         FgkS1/Le/VBdsWgM8HbmOUa/swF9XGhnVh1yWwnzq3JecrLRxftK9AGSZdv/8qrh53Jp
         YDJ3oSG5naWVTQYjGyJct7QCFDuEbDloDtWkOZ8si/xc35UVhBfjPqsjun7NZZioiA5u
         kbAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=boG3SSPlmES071txCrhIcHVuDMB2F3sCnpvNTdAQxN0=;
        b=tfD3jSxltTw+J+WWpyAbI/UaY1bO+jy7Ufzp1yyt1SLkjZ+9OTIqK8T3tl2g6bJQFE
         5OwQ4IRbHjXu1kHHqYOYlSCLYwHto58Us7g/vhjfvleUw5WTXYXh+uur50V/S/YnTykU
         wYDZR8RbGaXgMbUNOK5yO/6843EveHpNk6pPlmuni/FQgSK7yoiPiLNU4PiE0pCONkLE
         W2OQfHiVHqzCm6u7FlCaUWx6hQlKBqHspItXlGJkkSQWmbt43/Rg8FlKls2hp3Avz+pt
         2wSmfdJywfkXn/3Te3KU+adhKDJqrbFKkJJ7va+JapEiV9AjVNI5gQjAe+O/68183ghA
         72FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id f26si1398901lfp.5.2019.07.18.11.55.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 11:55:38 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 4E14F1527D810;
	Thu, 18 Jul 2019 11:55:35 -0700 (PDT)
Date: Thu, 18 Jul 2019 11:55:34 -0700 (PDT)
Message-Id: <20190718.115534.1778444973119064345.davem@davemloft.net>
To: jbenc@redhat.com
Cc: sashal@kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, yhs@fb.com, daniel@iogearbox.net,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH AUTOSEL 5.2 226/249] selftests: bpf: fix inlines in
 test_lwt_seg6local
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190718093654.0a3426f5@redhat.com>
References: <20190717114334.5556a14e@redhat.com>
	<20190717234757.GD3079@sasha-vm>
	<20190718093654.0a3426f5@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Thu, 18 Jul 2019 11:55:35 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Jiri Benc <jbenc@redhat.com>
Date: Thu, 18 Jul 2019 09:36:54 +0200

> On Wed, 17 Jul 2019 19:47:57 -0400, Sasha Levin wrote:
>> It fixes a bug, right?
> 
> A bug in selftests. And quite likely, it probably happens only with
> some compiler versions.
> 
> I don't think patches only touching tools/testing/selftests/ qualify
> for stable in general. They don't affect the end users.

It has a significant impact on automated testing which lots of
individuals and entities perform, therefore I think it very much is
-stable material.
