Return-Path: <clang-built-linux+bncBCQYFH77QIORBCMWWHUQKGQEYUYEG7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E49F26868C
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 11:44:42 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 6sf9979835pfi.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 02:44:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563183881; cv=pass;
        d=google.com; s=arc-20160816;
        b=efkseogOLwIDC5TA8NluLYraeYdnBRcYmv3Z6H5NzeNzmQmJz7PEaS42ojm1EP5PO8
         pRulKRnpHnweEwv8etkSeXSksMMTXAyuzpbA4EhQGzHzEYn9G8gdD7WxANSedSkHkAiG
         jHGhG9yP3wivPgGsfBxUdFRrt3he08dMvr3GQXz9wyZXVthcqojwlz2rxBdlkPjFoDQP
         JiEh+dnsJHarO4VaMwAis8gec1x34M3YNg4iJ8TeB/nBvHkWSRPKahm16CCOYnksFqxN
         sbMhh7IQehn56ByUbSBzBxzYrkxOV8fxHV8jw3NoK5eardoIRA+Qvb+bOZ6NGPAV4Bmu
         bm9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender
         :dkim-signature;
        bh=cG19S7VVc1To6pupVrr6ukbumc3PDLSr2VfDLt3jEyk=;
        b=IJzKb2a4hGJpdM+0sBfpMHc20Ufi7MPAfn+pmBPyRdtfbaYoe5S9kY0UpFPTN330Pd
         bWUIqIn+h5GZ1goPXB9L3H8JaF+YGHt/LotjGpdddgYmpgQRDNlp16/zPRyh/9HhfCW7
         TymaYluI3Bt6/Ew9vVllhbfBNbswDlJhVget/bLln0SJPh+r0QdaR8/FdC4TFdwIR4cj
         CKCS/N+VIfW53Wxr/u+vFLuAtaqShuIamfjs0z3RjRykh7eSWZffER9ZOE1BKFdHcT28
         Bj9+r/bnRmDK0UJU0f0EJxI05o67JID/l56xKq7zMmURl7hIaUfs0hDmoZZa3l5rR9Ef
         lVYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=WAVY+C9T;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=PINET64B;
       spf=pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=kvalo@codeaurora.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:from:to:cc:subject:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cG19S7VVc1To6pupVrr6ukbumc3PDLSr2VfDLt3jEyk=;
        b=fC6GYOGw1bpLEUksnHjHt2Smio9LNTTkcye4UsfhN3b5HV5LXlRzZM/lkLVgOgkzpW
         77efI7Yhrwi6r5UBplwZKM44LRSXzKPV+X8IHEo6zfqO2kWKbAreUinNRZNJOMGmeBMZ
         QnJzNrG479fL5ujUj1983hW7Pcf0c4Pogud1s1FcPKRucY94oPwFMyhnGfmWKsbIZV/P
         pD1yR7NxgLVnbH6dHi45SSJc/ZD4sjFiCLJ2j05KQiLJjmYMFu+wf7HelMo1k7ynqhnl
         lyox68ZTrtrADkwr/GLzpo9ia/Fzt/YsPLvUxHbMl6Fxqw/I0QQ0NZR2UHsrKicP0Tv6
         3AEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cG19S7VVc1To6pupVrr6ukbumc3PDLSr2VfDLt3jEyk=;
        b=X1jMcEKznxS48lIKpZS6TGjHUVuig6wrJaHpVBDcrFZBqHbmR76cFDkq8D0K6v0UTv
         ptwcyIzvkx0o3CBIm607NAfd2tsu08hcQ003WoGAiGtTWjKMGnBxhvZTaKW2+NnGsTxN
         QDJHMzXM2Qz2EPS5tKrPHhPcFE+VL9M7a2kULMILlqeoG6wj+EO/kpVovGznUmAJUiEP
         jCJBfzxlhPA0gPPPGA2LOL5PPyNPScaIk3wI80ZYEBVDsKtvIN+2rwuCXF55Hrf27mnN
         YaOdb9VEgDT4ys/1UQslvZdKaOpKg/YO17H1ytl+fK+NzDhv126qIJ2YvAY84uK3HubA
         lzvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUIHFpnNiNFsNDoKcaA4EgfQypuQNDSDI8FoiPkbPkh15X3UHNg
	9VprV/l2pw36PIda+r/iN5E=
X-Google-Smtp-Source: APXvYqzmDdTkx7nEc9TNuuJJY65g33As0N69jYLL8qTvA0/F1JZXCmlQrxkj2yue85IxdqFWJvVgAw==
X-Received: by 2002:a63:3046:: with SMTP id w67mr26543712pgw.37.1563183881074;
        Mon, 15 Jul 2019 02:44:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1654:: with SMTP id 81ls2791814pfw.2.gmail; Mon, 15 Jul
 2019 02:44:40 -0700 (PDT)
X-Received: by 2002:a63:4a51:: with SMTP id j17mr25913294pgl.284.1563183880688;
        Mon, 15 Jul 2019 02:44:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563183880; cv=none;
        d=google.com; s=arc-20160816;
        b=snkfhmqpDbQqWYgRBb7ANkc3HVVlV673WyXr46+C/DIKY75WxLGsQLitjen3MlyKfM
         OcPvuoI5LoO6dbeOvbv4QP3i7BBh5iw8kg8pg/KTVpyAHD8dPnu+c7gtnkJPQFnWwQRn
         JI6f2VU04qwQcmI+WsJ871xeu4qXNbO26IDMYqxktuLHVoCeWljw6jwe29AiO2AlLH48
         qrsDBtAYoF73Tnh2D/BbxWWbOSeX4RKsmCynW2aujZioVnB4laCzDafxVM6DYvRrizbm
         y6Y9M6aquQ1stnR2KQcjsVxf+oDXYau5Ct6zc2DSn8xMpkTlkhaWQUIHHP7jmZQLdxej
         xcyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:dkim-signature:dkim-signature;
        bh=4MUxgyucsk3t1FHZHAzcHhcuq1XxoVwX3i5+AZmqU2Y=;
        b=dRex1eS10YxF/kbx6ibTJ+GX1QLqyG8XrBeHyCM8mkCBiihFdhemAPWYO1zc3P04D2
         CSzLHU/+NayRdqCgli2oxmAuOZtLePeF6CIn+u5pUUAeUyJtxVa9exzf9gZWFfhITFWH
         HXuzTj3dfVZSe/hzQ1fq9jqHbW2r/yrX3iTOwmjdyYHcYliAFIOF4QkeHKMR5rOSTxJg
         /0cI88+atZ4frUZtx9zE5SVVuc+xu2PxE7oO0rKQ4KYKofgfMLkT9FL5QjQ/66JFkoJ1
         lQ4GRqxEYp9UrSSJz1gfSYBJ9J4OcDzFhsBiKqjmGCvg26WaKYqlo1+cTUzPtMuLtfD3
         teFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=WAVY+C9T;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=PINET64B;
       spf=pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=kvalo@codeaurora.org
Received: from smtp.codeaurora.org (smtp.codeaurora.org. [198.145.29.96])
        by gmr-mx.google.com with ESMTPS id t35si930799pjb.3.2019.07.15.02.44.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 02:44:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) client-ip=198.145.29.96;
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
	id 35F8D60F3C; Mon, 15 Jul 2019 09:44:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
	version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo@smtp.codeaurora.org)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 124296049C;
	Mon, 15 Jul 2019 09:44:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 124296049C
From: Kalle Valo <kvalo@codeaurora.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Miaoqing Pan <miaoqing@codeaurora.org>,  "David S. Miller" <davem@davemloft.net>,  Rakesh Pillai <pillair@codeaurora.org>,  Brian Norris <briannorris@chromium.org>,  Balaji Pothunoori <bpothuno@codeaurora.org>,  Wen Gong <wgong@codeaurora.org>,  Pradeep kumar Chitrapu <pradeepc@codeaurora.org>,  Sriram R <srirrama@codeaurora.org>,  ath10k@lists.infradead.org,  linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,  linux-kernel@vger.kernel.org,  clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ath10k: work around uninitialized vht_pfr variable
References: <20190708125050.3689133-1-arnd@arndb.de>
Date: Mon, 15 Jul 2019 12:44:33 +0300
In-Reply-To: <20190708125050.3689133-1-arnd@arndb.de> (Arnd Bergmann's message
	of "Mon, 8 Jul 2019 14:50:06 +0200")
Message-ID: <87v9w3pr7i.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=default header.b=WAVY+C9T;       dkim=pass
 header.i=@codeaurora.org header.s=default header.b=PINET64B;       spf=pass
 (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as
 permitted sender) smtp.mailfrom=kvalo@codeaurora.org
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

Arnd Bergmann <arnd@arndb.de> writes:

> As clang points out, the vht_pfr is assigned to a struct member
> without being initialized in one case:
>
> drivers/net/wireless/ath/ath10k/mac.c:7528:7: error: variable 'vht_pfr' is used uninitialized whenever 'if' condition
>       is false [-Werror,-Wsometimes-uninitialized]
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7551:20: note: uninitialized use occurs here
>                 arvif->vht_pfr = vht_pfr;
>                                  ^~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7528:3: note: remove the 'if' if its condition is always true
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7483:12: note: initialize the variable 'vht_pfr' to silence this warning
>         u8 vht_pfr;
>
> Add an explicit but probably incorrect initialization here.
> I suspect we want a better fix here, but chose this approach to
> illustrate the issue.
>
> Fixes: 8b97b055dc9d ("ath10k: fix failure to set multiple fixed rate")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I'll queue this for v5.3.

-- 
Kalle Valo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87v9w3pr7i.fsf%40codeaurora.org.
