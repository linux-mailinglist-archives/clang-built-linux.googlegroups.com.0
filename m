Return-Path: <clang-built-linux+bncBDSNHV7J5QDRBHWDYDUQKGQETGZGD3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id A570E6CA00
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 09:37:03 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id d12sf10659302oic.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 00:37:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563435422; cv=pass;
        d=google.com; s=arc-20160816;
        b=IHR4JXapTV3EUfuHUzL0wGfbcIbAmhpKOOqXLaYGniv9thdphDL73UvPVP8sOtVna5
         33vt7LTOOgfVL1Ms8Ig+mRvC/5RARmfHvs9Li5ShwftHGyuNaMHfZ/QFIo+rC0VqG8R3
         ix2u2VJx4Ju1MriTjgSobU3YELuPNC/KOFOG9YQ3UfvnS1Z6iy2Rrp5dMbpQLll6QnIG
         +FPY/mhTzAXo/d4/XY0N29KqhnzOCnT90tTVGUURDcNNUPdPTM1w+uAajprZ1ZXoujHj
         JIruGShhIKVgZNaILlQgEeASMs5/xdIFgek6Fp74N99tKzmA9z/7xdhOBXpSCKfR9GWO
         qK0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Xq3qs9WILvcROKqLp1MKMOHZaOFwyLpH8s6/7MfHV0I=;
        b=Vq/yOE2Ni39V18rdXCU0sGRmV3KyIcE3zJ9uAX01KJZR1FkoHWhe/1/7SXfKpMXu0O
         q2cbfF2N5GuQAPUICCM9fddgXyQmuRsokNuaNUvC6FOXa6gAKLhMh2T8dcNvCK/opguP
         lXEFuIl2iFe75YNwyEIJf8Z9nbuk/15HWfWMU9jcN7sAqDP+Cl7DixaQS0/Qyujfwuk0
         0rf2kYfBkGaIZSUAaqjV8YuGc+riUZVqF//OLxe4JybUCxo14dhNjy5PWr+btf1mWkjZ
         ojlQSdla9omrMwSmHzOYHl8EF2EW5FJTDgHoAHpUubJjyVYuo9mTG4V3hpg57Sap4zcN
         OV4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jbenc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xq3qs9WILvcROKqLp1MKMOHZaOFwyLpH8s6/7MfHV0I=;
        b=pOmHHhayzmuj52SOOSEbv8QlzpHxeSutOXx2VeSPGtbcNL5gzwLOCCYMk3ml4XNw8E
         15EYqKw0jA6I3r9FN9pqGxesvPn7u4StZ960WYhkWf7KVrLmyUzlq4zcU8eNgZk/jzgw
         m/clJNVAjtZGjrCB5N77L3QjLwiBH0nz2ft25kNsYYbvi3DbyKBnx7XVtmATZsdgvxZn
         jHZ8Re34a+6D06EO1BPr7IlK111+hf6joCR3iH48eb6hqMmY0OplLhB3pL1iqWn5zkKF
         UDMnh6+TL3ZfvSkhRVEunJMO9Rh5qiAb/R9z4gmV6ajRPFGdnZerPsCBe1KySPFKGptA
         ZIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xq3qs9WILvcROKqLp1MKMOHZaOFwyLpH8s6/7MfHV0I=;
        b=sO+bu3h/WEv/D74+GZsrCfUdre4w4DXQQV1PrIqOBMyueXrr6HnL4W7/JTTD9XTe+2
         iUXbO5iIyQt6BPG7uP98/Q68wOF9iDwjF0wWqw+hjQQj4SjQmZJd0I3bdDodgER2oKl+
         Txls5TODFQYWMjbp20IkFrdw9BxcHA02k6ckRibFcS7vQYhQTOxxNQ+CJG9SLg0Gxn7N
         hh7G7pTC3Dw8dN5U3JiZRpO92AKoBAK0fXfboudoT14rX00tlMWrO8Wi4ZprA/gl6yxJ
         oa8FCh3W6aUXpcUHGjBlwQ5tl8HsoFGzjR9wR9fin4KFn5ig3FGNlJEOlrHuXs4Cccq4
         1sOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWPjQoqKAhXpMUTL5GuPHUg213tN4oUjF+b1Bl+wl9/aSX291D3
	J9Kgnz+zAYxHuvNJpO3hQ4U=
X-Google-Smtp-Source: APXvYqw9N+RgpZBCymeLYXEry4wbX1CRhKmw7L66G+l1CHxOowBMxL5bnOGlM9OyKex7xuWhR1TxSg==
X-Received: by 2002:a05:6830:120e:: with SMTP id r14mr33815087otp.4.1563435422245;
        Thu, 18 Jul 2019 00:37:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60d7:: with SMTP id b23ls5106932otk.14.gmail; Thu, 18
 Jul 2019 00:37:01 -0700 (PDT)
X-Received: by 2002:a9d:7259:: with SMTP id a25mr33365295otk.30.1563435421833;
        Thu, 18 Jul 2019 00:37:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563435421; cv=none;
        d=google.com; s=arc-20160816;
        b=winSvsuSY8631KyTuSmDLo0e5yNsy5xZ+whpePHVWq+ntRFklvIGvcpLsjREGqw8Wu
         f1bSBW44J48iwB3nuTftu8UlmHIGC8+zPGE222OJW+gvZ/mpa57CntOcwgjPNBO4v+YU
         zs7lgdhsXNvd0h0w6MmNOKDVbIX5D0a2HZPZU6aZz2sz7hnYkNlBkOajKwU2Y/EpcxN7
         Mic/pvfrF+DsG/i9WW/9rYpFo7gGhSa9Pz1uXdVZTLuDbiODxPV3sjC4g4eow5eNaHGn
         vSAzakLAdM1bVmqRvcdU73g5Lc3Pw9NvDLcUyBwlgIVDTRKEnGjryVVb8TdtioGu7pmf
         sgvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=wr47P74qz1UzQ8lHS/rbJYiTyzCmfnaoVOGrxgTIpdM=;
        b=0rvgPtw/us7XnBVXuz5TeYsSdeYeyMlXd52nOcXet748pHb9ZlG/LMK8op/1ncMSbn
         ipWrdo9UAY4YpvMjmFVy+qaXpPmPp4m0Ty0+UrO8cVLLPEoKi5tM/MfKcHdPRc56fQG1
         QRv4u6K+fVEa+Z6Z6mfpRVrVacKYEZWaSuGEoVaiTTVEtEWq2yoDYQNzIZDWR4+cEoyt
         UT9m/ohTWb8BdHK9pk6F1gXsc0rF5Pjr20WUpweyay4TMEhiBvSWdipXfjBtIcxakbcn
         egTD8Bmg3qjndhGmWidGXhl5MYL8oG3iW81kieTpyx01IUR1HhoWwHK5kj2cq+yWS48o
         onsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jbenc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id q82si1461925oic.1.2019.07.18.00.37.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 00:37:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7F92B300CB25;
	Thu, 18 Jul 2019 07:37:00 +0000 (UTC)
Received: from localhost (unknown [10.40.205.12])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2822360C44;
	Thu, 18 Jul 2019 07:36:55 +0000 (UTC)
Date: Thu, 18 Jul 2019 09:36:54 +0200
From: Jiri Benc <jbenc@redhat.com>
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, Yonghong Song
 <yhs@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH AUTOSEL 5.2 226/249] selftests: bpf: fix inlines in
 test_lwt_seg6local
Message-ID: <20190718093654.0a3426f5@redhat.com>
In-Reply-To: <20190717234757.GD3079@sasha-vm>
References: <20190715134655.4076-1-sashal@kernel.org>
	<20190715134655.4076-226-sashal@kernel.org>
	<20190717114334.5556a14e@redhat.com>
	<20190717234757.GD3079@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Thu, 18 Jul 2019 07:37:00 +0000 (UTC)
X-Original-Sender: jbenc@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jbenc@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jbenc@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, 17 Jul 2019 19:47:57 -0400, Sasha Levin wrote:
> It fixes a bug, right?

A bug in selftests. And quite likely, it probably happens only with
some compiler versions.

I don't think patches only touching tools/testing/selftests/ qualify
for stable in general. They don't affect the end users.

 Jiri

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718093654.0a3426f5%40redhat.com.
