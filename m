Return-Path: <clang-built-linux+bncBCQYFH77QIORBBUVYLZQKGQE2XRLSUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-f189.google.com (mail-vk1-f189.google.com [209.85.221.189])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A37D187B46
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 09:29:59 +0100 (CET)
Received: by mail-vk1-f189.google.com with SMTP id h197sf9013702vka.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 01:29:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584433798; cv=pass;
        d=google.com; s=arc-20160816;
        b=xd5Jvzft9HlCUiOK5jPMrxk4uPBFV5nHbJE9JIduKE6PLQdl3KXf345GGFkDCmKZi1
         3w+kKP9mHFo1+EfPQlu4/9nKe2EAQX2w/Z+maPlAr+TG7GXOnTsmKZBpabFYBpdyN26b
         grKIHsd+0LLGjeZZqYtAE4z77BgNN3y+x+c7zfFHT16wIHvmRRIjSZQJ6BRgU9ru8SqT
         p2Dgp7ecVvUMVni8wtmvWEEhyZFwNCKtYg4/aPMXNZkhn+KXPynpCJP0b77PAIK0nsyb
         yvGMr4CfNo/+GZKApHc46DcBCXI4SxonMNrbVRsdL2f7bD/5giapKRjCRTB9orvY0OXZ
         zG+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=rKi5WYDbPyPtVtT5EaP2cQN2WHTg2QgHXwDw1yufZ60=;
        b=KMSw/P5LVMLf0tK1LTp79F8jwjuVKnKfvpKlTGLiKDLL8Hu8gM01x8zSrxk8mowr2G
         ARfRf3hM1CHI4IVTF5BwgLbP8rC8muzVpdf6IICEkT5TMam0GEOK2Up3M5g2j793DmR2
         805A5vSyEDMlip8uvqCzyrgpcnTJkoV/zytlMDVAyiq5yDa2mzJyScKOy3P2FPc93Mki
         0GFOkuXdgpUBkxszhsXlB5ZGoT7iiH6a6/pkzt+hz4eRZIC9+Hlu+OOuQoEft4fWGQkS
         j25PwsVIYaWXtyLGmFc2q0X3nUwlwyvD2LON5VOXauwTv0nLi97wsUUkGzMhXnKeUEF9
         0lTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=OWKgasPl;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rKi5WYDbPyPtVtT5EaP2cQN2WHTg2QgHXwDw1yufZ60=;
        b=fYu42iqznk/WFtDJkLAX1idAXqAf7eNq30PzGbVzqIEet/74/jGqddypcc66Qywq8M
         DXmzYw5ouIlrJ0IBxRdubR9FZNW3R3EzNonqYeiKH2XqGtwqLRXziB5ZJjw+2jyow+7o
         ysx4WfqStwIrPqG+ObF820cgmPO9DdqrQ0n57yPK7Sc+BvYwC6LQekHjBwd0m0re6AVP
         AFlAhUowHkb4B2y9VySUdr4GoBnefAWjKbniOJca8wdrMkiWxEq4XPYQewKA/EO7jx8v
         ITtTjT9I0DPhmkQSDWF6M0T7PVZPSTV6Bj38YtMnr+iM9/NhhxBdXZ0tkOvs7QalFABb
         5tpw==
X-Gm-Message-State: ANhLgQ1hZhzYIDfUUmUaq/Ks0GkKv0WtXJ0T2DqCQDq+ZOboKk3xfXmS
	o6GHrc4xDJTjR4IMe1qaRmM=
X-Google-Smtp-Source: ADFU+vsTsxJICQ+cmTy9B6RwD53ubmP2iFUYJ85DTcY5rSqOe7o/amo1PNZZUy0QJYThLl01hSllAQ==
X-Received: by 2002:a05:6102:48d:: with SMTP id n13mr2638853vsa.102.1584433798327;
        Tue, 17 Mar 2020 01:29:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ce9a:: with SMTP id c26ls1960940vse.7.gmail; Tue, 17 Mar
 2020 01:29:58 -0700 (PDT)
X-Received: by 2002:a67:c01e:: with SMTP id v30mr2852178vsi.71.1584433797983;
        Tue, 17 Mar 2020 01:29:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584433797; cv=none;
        d=google.com; s=arc-20160816;
        b=UgLTctCc4HGnv5JL1QYEpb/F26rEyYMu19c35YlhVQyjNLW93srcnz2/kMsEhdt/cV
         n+6zpneZr0kOQwkj4jDDff121RKtrWLeGCB8t4Sc3I9IwqhykkY5ynNLXS112EHm0zYZ
         TRZa8SaLjDQZG+VaeoZ+jtzaudjNocBbOyiC+6BBbvpf6Xp8AoFutgt5sLEHLR/lY0Fo
         Hrd+Fv7Et/Z6ibcvc5aXPXp6M4nPhhs49rtQnZTHvZnNOU+FoslMuuUW1+pQfbEXuuCv
         YcZ4D6c6s8AZtG+ARsA7F9LCxWQ3r7p6H+7VEndb3K68oYSCFXfzHEHl4io9/yfKgGbG
         JGsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=AJ1sbLDL7neO9w+ssQWSvnpFi4VgK5dJ0fFRUXIC/Y8=;
        b=GfsPxdHWp7+2YI3mT+sC4skXe/Z6vmgKCO0RZ1tbnfvgCutsgcoyzrOoVVCa4C7QGd
         w2FrDcLBZ6IHNBdkPlrvtqAI6eS5lIfTUEtDONxX6ux10mRMC911M3T3SR7cpZBjb9ve
         cpGPtAGI83n4JMP6Cc92RFMBwuzqrBEaDiJ+It2iqlFUK2zKEZ3VK2TOR9YvNVH2eMNZ
         P6rNvcks9oeVyv1oD0DEyMItjkIM55CzvzW0JTLlmwT8V3nfS7P26z+zyLURYyOWscSG
         83Ge3pleTYexHPyMANaFmliVVQTbdC/fwPpRi777brgM227xIhXOd4Z9A8VlsTOSrSv0
         01hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=OWKgasPl;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail26.static.mailgun.info (mail26.static.mailgun.info. [104.130.122.26])
        by gmr-mx.google.com with UTF8SMTPS id t191si75386vkt.0.2020.03.17.01.29.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 01:29:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) client-ip=104.130.122.26;
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e708a76.7f8b3ca8f180-smtp-out-n05;
 Tue, 17 Mar 2020 08:29:42 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 5D2F4C44799; Tue, 17 Mar 2020 08:29:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 13985C0451C;
	Tue, 17 Mar 2020 08:29:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 13985C0451C
From: Kalle Valo <kvalo@codeaurora.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Network Development <netdev@vger.kernel.org>,  linux-wireless@vger.kernel.org,  LKML <linux-kernel@vger.kernel.org>,  clang-built-linux <clang-built-linux@googlegroups.com>,  Nathan Chancellor <natechancellor@gmail.com>,  CI Notify <ci_notify@linaro.org>,  ath11k@lists.infradead.org
Subject: Re: [PATCH] ath11k: Silence clang -Wsometimes-uninitialized in ath11k_update_per_peer_stats_from_txcompl
References: <20200130015905.18610-1-natechancellor@gmail.com>
	<20200211142431.243E6C433A2@smtp.codeaurora.org>
	<CAKwvOdkcT6jdFu2Mj5ZKErKmm+MyGAoJ=R_0LatR+_A0j7OtYw@mail.gmail.com>
Date: Tue, 17 Mar 2020 10:29:35 +0200
In-Reply-To: <CAKwvOdkcT6jdFu2Mj5ZKErKmm+MyGAoJ=R_0LatR+_A0j7OtYw@mail.gmail.com>
	(Nick Desaulniers's message of "Mon, 16 Mar 2020 14:15:17 -0700")
Message-ID: <87a74fl6z4.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=OWKgasPl;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Nick Desaulniers <ndesaulniers@google.com> writes:

> Hi Kalle, I still see this warning in KernelCI builds of linux-next.
> Is ath-next flowing into linux-next?  I just want to triple check that
> this fix gets sent along.

ath-next is not pulled to linux-next. But this commit is in
wireless-drivers-next now and that tree is pulled to linux-next.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87a74fl6z4.fsf%40kamboji.qca.qualcomm.com.
