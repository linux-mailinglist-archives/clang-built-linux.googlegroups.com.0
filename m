Return-Path: <clang-built-linux+bncBCS6NPVSS4JBBVN25D7AKGQEZY6MOHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1166A2DC26E
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 15:44:39 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id m7sf10999588oop.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 06:44:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608129878; cv=pass;
        d=google.com; s=arc-20160816;
        b=tkEQ0tuSKGTl5Oo2KRqyz0Nw1tX4RNvTIhrKckj2Uwil2x85nJltm0TCiQ3zoeKdsf
         HQ3d30pGgu+p6EGzyy5xD4EXhyAtUCWerE9UFAkAI3NhGHMJr2xwtQEqI2RjCi/Gtsw3
         7EPn5h+ltrCKGB+9Ctoul9bhSkdEjwIi6clGseyFJiJ6JaGMtUSZOL+0oJfQlgNfT6+k
         1slnZIZK05qZrear9QjoDEQUgyvvnCAT4N2HuZHYEPQ0Mo8lIV3Q2Zr2JNgbbEKzr2Kc
         AhbtLxUeWIN7iTpfVjFq/YdwYXQlwVG19CelDk0WVene6gmipgIlt9lCvKKPH5EwPWr/
         OUug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=U47ksqnZXCdkA+vV0vzPosDVVQWCC6/4ItvVN+NnLMQ=;
        b=eX1il3W2kR4lqcyt91IzCOtVPspQcnh0emS1hx2QI24zN0dpovLddzIgVhbHe1CJFR
         GA/ibXylVNr4Z85GUqetrHYkLKFfNSzufX5HJel49LqrzLBOIdj1lBvyuijrl0vA+8XV
         TzoyhxyxAZaGvuRyy6lXDmoll+5Z+Rlg6U1ekMsMA+8DpgG1CxBGI0eXfjbpO5gZXP1C
         B+A0stsmZ6hKCe9NCrkGcczi6kOzjRmDJ0X+99HwIg5NDOPFU42D8vXl6JUVVOCM8X3d
         OU7x4Cj1JgjmyZVWPWKzqDEYAjhuY1sqPkrPcUMX88B3bCixAvT6K9sLibePrHdJP7af
         BIMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b="IpAg/hq/";
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b="2BcI/H/i";
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U47ksqnZXCdkA+vV0vzPosDVVQWCC6/4ItvVN+NnLMQ=;
        b=a2MBER0NCvpmD43n00WEZeHuOC/yjhuFN+zefxjJlumNxaVDn/W0YrwKFFMtZuZz1L
         S4dBS1CSvhj99Z2CGtMVD2BgYY03AqTl1xGKQBOeeG2CeJsDrjFGv3B2RxRV/OaZNjJL
         txSSHP5vwSC0Yikx9CvFu4DnOS1UtlggwsI4goLW/bUQARh8UQmezO65kyOGFDgXKjbv
         FFaUsHnC9qw2Jl/EHfYlp6zdZnO0UJwbgmKzhootGjSQdgAiplIdhdhmDhU9xK0OjzXz
         +RU0CjVh3uKEKWtRfyyyso709BXYsK7rd59VrhcGZkqhOzLrgbO9kJqyEEAqbMNxL4wV
         eKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U47ksqnZXCdkA+vV0vzPosDVVQWCC6/4ItvVN+NnLMQ=;
        b=itS2Tdu6+uyRDAgIPjBcvftV42c3G+T78j1qd1BsR3B9it9BvrJ4mD9XUVGfGhvOa2
         8FzdhuADpcr6R5uK3kKRI20fEyyW+EnqiD2AL3M5Ii1gl7QbNTcOIn/q6LbfQ8yDoitL
         EcwRNNZBdFAnSRo2VwwcCAUa5DR4vEEI8VlMN5X6ETsBt9Zd+E398jKlqTuQQw7PvRIL
         7WrJJvaZCY4qtUqIuoKHH4xgh7YpUnOR6UVXzY2QfsaToT687KzFSKmYrqoOV05xSpdv
         X3ci+ibEVFomK12xZjVZjj53AvBn8jNihOqGqXyIKam/ZINtwS7t8z3qaj3euhgL5ZjF
         3zug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IgVQZCx8eYApvp9WK+rqtud0600AFpEPR0RD73ev3RIOTRM1a
	oi1I097iuoy46pF2nEoR0c4=
X-Google-Smtp-Source: ABdhPJy+lWNMKKsJ1hstfYYL17839h/nA10yfduXrD3HaLTAjSTN4X8YhZLSniOBXL+bgj0B23+Heg==
X-Received: by 2002:a05:6808:64d:: with SMTP id z13mr2178552oih.177.1608129877839;
        Wed, 16 Dec 2020 06:44:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:648d:: with SMTP id g13ls6413021otl.0.gmail; Wed, 16 Dec
 2020 06:44:37 -0800 (PST)
X-Received: by 2002:a9d:19cf:: with SMTP id k73mr26735562otk.360.1608129877108;
        Wed, 16 Dec 2020 06:44:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608129877; cv=none;
        d=google.com; s=arc-20160816;
        b=mt+B2gSFpHUFlVMdY+//yf47xYcoh2wUKo7HPqeDCcw2GthKAPbkpSgJLV7RI45PBO
         snOd1ujjMdmhpeTeJ+yxB2V6RG5/fNIVtXtu56fZrtpNPyhuqOhIf9PFi/UatDP4yR6O
         hAAxCf7E+KO6pna/612GSVgcfwtAiY89Wcf8170gqetloFjweQX+K/drSI25P/mSAumG
         cO7divFWv4dOmzyxLIWV0w2/JFEkBo1pwQhvciJf/x0SR5BiZmmM47ET60K2eHb+uQnR
         q2Zdf6AXv4ieWc0o08YJKaildRfdxwtAW9LMcA1wNbjSTwDkIKzPPRcnNAd/yj96uZMw
         DpVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=ZPIf88rL9asFqKcBlt0Tyl0EK4EPc/qjzdx1Vp5u8uU=;
        b=K/BjlHlbah5SfqszlR4rtAVTcY+AdrlZtKJ3h+RFwUiRWjzSds6ijphpZCr/TDvd+d
         OqCMYdDAreWOi3B6LMi9kkWiolg0mPrMTez+SE7EO3RWFbFWAjtvfDoTyg1X7ROfWbMU
         crH4Y0dtE2Q4AM8eJFVCoXCjqSEhubR8S28Uiv/xtTNw7IcTmCDApZdZ7P2y2nSUOCB/
         0ILpx/751FjdqAol4S9zW6MnBGSE/H6UU4qyo8DHAw7sD4m1T0XG87NiEPMgZS7jJJp4
         bgE8pTY8y9hiIhqF/q15YWkyKN9xwsE66EM+wQ5k+hh3VcDSaVaYG/MvLR1df0DB/B//
         dYNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b="IpAg/hq/";
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b="2BcI/H/i";
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com. [64.147.108.70])
        by gmr-mx.google.com with ESMTPS id u2si336646otg.1.2020.12.16.06.44.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Dec 2020 06:44:36 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) client-ip=64.147.108.70;
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id B731C8A935;
	Wed, 16 Dec 2020 09:44:32 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id ABEE48A934;
	Wed, 16 Dec 2020 09:44:32 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 2E1A68A933;
	Wed, 16 Dec 2020 09:44:32 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 09BF42DA020F;
	Wed, 16 Dec 2020 09:44:31 -0500 (EST)
Date: Wed, 16 Dec 2020 09:44:30 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Boris Brezillon <boris.brezillon@collabora.com>
cc: Souptick Joarder <jrdr.linux@gmail.com>, kernel test robot <lkp@intel.com>, 
    kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
    Linux Memory Management List <linux-mm@kvack.org>, 
    Boris Brezillon <bbrezillon@kernel.org>
Subject: Re: [linux-next:master 6404/13375] drivers/i3c/master/mipi-i3c-hci/core.c:780:34:
 warning: unused variable 'i3c_hci_of_match'
In-Reply-To: <20201216094658.67472406@collabora.com>
Message-ID: <rrq8n6pn-164s-697p-o538-no5055s8431o@syhkavp.arg>
References: <202012150402.NnbPvD05-lkp@intel.com> <CAFqt6zYZLm6o8EHnJahPQM=iuJaBg-t9P-71Rt6Fty7b-XJ3Sg@mail.gmail.com> <5np5642-89p-61no-4027-475p936rn078@syhkavp.arg> <20201216094658.67472406@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: 355C0D6E-3FAD-11EB-AB98-D152C8D8090B-78420484!pb-smtp1.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b="IpAg/hq/";       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b="2BcI/H/i";
       spf=pass (google.com: domain of nico@fluxnic.net designates
 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Wed, 16 Dec 2020, Boris Brezillon wrote:

> Or adding a __maybe_unused qualifier. Can you send patch for this so I
> can apply it before sending my PR to Linus?

Here it is:

---------- >8
From: Nicolas Pitre <npitre@baylibre.com>
Subject: [PATCH] i3c/master/mipi-i3c-hci: quiet maybe-unused variable warning

If CONFIG_OF is disabled then the matching table is notreferenced.

Reported-by: kernel test robot <lkp@intel.com>
Signed-by: Nicolas Pitre <npitre@baylibre.com>

diff --git a/drivers/i3c/master/mipi-i3c-hci/core.c b/drivers/i3c/master/mipi-i3c-hci/core.c
index 113c4c9054..500abd27fb 100644
--- a/drivers/i3c/master/mipi-i3c-hci/core.c
+++ b/drivers/i3c/master/mipi-i3c-hci/core.c
@@ -777,7 +777,7 @@ static int i3c_hci_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct of_device_id i3c_hci_of_match[] = {
+static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
 	{ .compatible = "mipi-i3c-hci", },
 	{},
 };

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/rrq8n6pn-164s-697p-o538-no5055s8431o%40syhkavp.arg.
