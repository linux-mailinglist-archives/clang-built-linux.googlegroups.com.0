Return-Path: <clang-built-linux+bncBCNIZP7NQQIRBZEB4D5AKGQEXEMR3WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACC0262267
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 00:08:38 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id q5sf443006pfl.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 15:08:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599602917; cv=pass;
        d=google.com; s=arc-20160816;
        b=PZ4UrlDZJ307ywyEiE3DEQx11lURH89E8ri/kwG2bGGgtYwad+gLGvQDXf6m1CasEa
         vwLipxCMUYu6ceNeL4t4ALNBu589yACdjlQasIYuojQifht5PyU+cQKK31s76qFbtLfy
         ftPteWpve1evSc6C9t2e2Z/1yNVmsXHZEvijdUaitsaqhERZJ2gMsK8kpuoRfsRBUUKz
         bR7R1OUQ+M9bTxfeoqke0DT5SyHJyAtU0Nialu5QPM83KVTZLbAW5utP1Iw6qjY4WZlx
         gz2x838RrM/GLNKLxWr+u4h0gHn4oxorh3vnhTOF2tbAp45nUkyPVy5bE1ao81dbDAXO
         SkSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-version
         :dlp-reaction:dlp-product:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=94QS/tTKRm8ZHmEgaftw8Odw6Fjx8LYeWnoKAjbBBpU=;
        b=GwnXvX1VCLW9RJNmoVKsJmIrP9VVYY9WQiTSXrQ+HUMT30A/wT/M5ENBmija8MTxno
         38XwzE9SDdIqqWuE/l2eEelUukYx7z5IwDgM6I9UjU5NXKNtRdDpdVb6Mg1JKf5c4gyZ
         I+T7mCN5xNBGCPktjp9pj9aBhhpbM4yf8BVjA4EhjtVgAyGLR3ItBYKkctnFNqwfNqYS
         z+FnmLMpVLUFh59i5x33FElTQ7zfwY36mzEpgPidavz3KA+3Ho/YAcQphHpJ0xPZdY4B
         8I76f9lJ9L89Zx642jOt4SFbfas5uccGDGXPmaEqknwD1rvFi2cf0GwdmOD2q6b8YiSg
         VEag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tony.luck@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=tony.luck@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-reaction:dlp-version:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=94QS/tTKRm8ZHmEgaftw8Odw6Fjx8LYeWnoKAjbBBpU=;
        b=e/DONf3CLuGzBf31aJ8KKE1G/mZht5DPMQyK2RXGthoYzg9iPI4NVr+sfYGg3EJQ0M
         9IBVU38yS96FQFiJINEzDz0bv866rPjAOq7ZrljoMiJwPE2841UL//B06kmHViwTZabs
         iP8RiaFyNE/q1yO1cJCM6cjU+EhvRRy7UiS/Ex9+5LpKHebCdSHAJwuitO61uNflexpj
         Us4mbGvg1JjQC0yMA5FDrmMj0aZBl9TuxEFv3PQnlruCohdYOe9yq8vWxTfrD++580gO
         cYyEgdxPL1bpEmSvRBMA9JgJtKw6sQE28x4pA/wtJrwRcspa0yUQd7mWPl491/SF9tyQ
         Lfnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-product
         :dlp-reaction:dlp-version:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=94QS/tTKRm8ZHmEgaftw8Odw6Fjx8LYeWnoKAjbBBpU=;
        b=SQLdAa5Y3+w6c8SxL/wCKB3H1R2AMd9DfAEWgNrK22hqrwtEUGHbS3jxwKdqgGVxJA
         t8meN4U9ujb/BuhQ2F9j8RsRM8W8clTVVV6gVpumxkLT6KamzZeYDesi8wBlIsmXWV0D
         7e7Qxtq5enKYsZt4D5EMy8XzGH7+65KGNi4DPEVlegvJOMDHqGg8ez/UOKOWUacWTsev
         bk3vuyCYRycRTrYlhSA9iiUwsbZ11+wypYCS8eavRqEr+9tM+xMdGoi+2C8Tdf+BYyAO
         po4yTTZvuO/Le4ONOqd92fBiQ4j+ft3uFXnOdv9d+JIEmvWSlDlCo8rGjgdhYNCeJSPo
         vZxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313t4sCHzCxoE8SYRZVRuwtQ13kAhbZmKUHmGrxVT00C1Nli2uS
	PGiZ83ZOoQfwqLfEdvzd7y4=
X-Google-Smtp-Source: ABdhPJxK4QhudozFnaq1px0VKtdzysIY4EAtuUJLH6sWcOy1/lHbPdElEMC6outM9dtl3y41YR5mHA==
X-Received: by 2002:a17:902:8a86:b029:d0:cce6:6507 with SMTP id p6-20020a1709028a86b02900d0cce66507mr1175704plo.10.1599602916804;
        Tue, 08 Sep 2020 15:08:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ee0c:: with SMTP id z12ls343342plb.6.gmail; Tue, 08
 Sep 2020 15:08:36 -0700 (PDT)
X-Received: by 2002:a17:902:82c1:: with SMTP id u1mr746828plz.38.1599602916145;
        Tue, 08 Sep 2020 15:08:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599602916; cv=none;
        d=google.com; s=arc-20160816;
        b=QkOc6wXE86snskD8ef/X45hEvwxARs7MFrJpMqsDCNth0kUioV7PsLWVqVlDXQx5ar
         4WsNMQVcKigj/BHYDHokqeUt3pIPFAStTGDL7Gs7ZeH7g4UN0fNvSNlbi7rA3VIwean5
         gYTb5eQd3LvyUN7VcizISunEK6QhPqxtvVimMr3fkGAKhlb3ojFp4bI5qHVjzd4fxn4w
         v1mG/iKhygK4EP2T/iWt6kXQD76rb3yqmc2mqSJY+IudfaS0cvtg6rU/SfkfiCBYm2Us
         mKz6ewXRmfxsq6K/FBvUq/2v3fQc+d93R51dXZm+jdgzarqNf/ZgNJbnoGeQvnZIsWjb
         ppDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-version:dlp-reaction
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :ironport-sdr:ironport-sdr;
        bh=vzVX6cm7FRAuAT4SS0a0gVxWccN+Eqz39ANV3xL35eQ=;
        b=ImeZ15pDrskCzCD1ljDj0NRAtJ5jO4zFmOSgXYEulpGni0oTkLtsLaoDWvkDpMP+H5
         Qt0tM2PCZTyEV8LTwsCnvIMfW8Rcfrf4VrlHMDey6kc7NRWXXczxQzYHBFqsT733X64S
         ZTDmlsTuS2rxbXSjn0jYgYM59XQCDteRdW6n0hNfCgsQYLNpwH6//E+wiOFhNCSrgjVv
         kuUj1iTr2QfZfSbiXIIlzeklEdGbS1aNNl9cbnKYLW3QH0w2DL08FAjuwyE6vUXwgSiR
         Aecmp8wPLnME6d3RRr7igV0hCNC/U1uJd4JGR7nPBwZqgs19YVId0S4SB3YWYOyz5UD/
         Ywmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tony.luck@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=tony.luck@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id bj6si45839plb.4.2020.09.08.15.08.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 15:08:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of tony.luck@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: rtKgzJaEaem3Mxte9x1rIaISpHzEmRLMFRTaInJTEYOdt2bby4Be/vxPCSybD0zsk8l2w2i0WC
 5IlGowyPBHCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="145947590"
X-IronPort-AV: E=Sophos;i="5.76,407,1592895600"; 
   d="scan'208";a="145947590"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2020 15:08:35 -0700
IronPort-SDR: iD9INV+cK10hvjNf5wcoCWfECqjkvPJqs+NlqjOxlQIBOkqvk9Fz6c3A70SJlr4O8fPg3Hqkn0
 ARgq+EuH9Tew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,407,1592895600"; 
   d="scan'208";a="317340286"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by orsmga002.jf.intel.com with ESMTP; 08 Sep 2020 15:08:34 -0700
Received: from shsmsx605.ccr.corp.intel.com (10.109.6.215) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 15:08:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 SHSMSX605.ccr.corp.intel.com (10.109.6.215) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Sep 2020 06:08:30 +0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Tue, 8 Sep 2020 15:08:28 -0700
From: "Luck, Tony" <tony.luck@intel.com>
To: "trix@redhat.com" <trix@redhat.com>, "Zhuo, Qiuxu" <qiuxu.zhuo@intel.com>,
	"bp@alien8.de" <bp@alien8.de>, "mchehab@kernel.org" <mchehab@kernel.org>,
	"james.morse@arm.com" <james.morse@arm.com>, "rric@kernel.org"
	<rric@kernel.org>, "natechancellor@gmail.com" <natechancellor@gmail.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>
CC: "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] EDAC: sb_edac: simplify switch statement
Thread-Topic: [PATCH] EDAC: sb_edac: simplify switch statement
Thread-Index: AQHWhSwd2aPyoNmgw0mlzN1Re9AsfalfTkog
Date: Tue, 8 Sep 2020 22:08:28 +0000
Message-ID: <7525690b6aaa4e539989b9c2e5703a56@intel.com>
References: <20200907153225.7294-1-trix@redhat.com>
In-Reply-To: <20200907153225.7294-1-trix@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: tony.luck@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tony.luck@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=tony.luck@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

> However by initializing the type to DEV_UNKNOWN the 3 case can be
> removed from the switch, saving a comparison and jump.
>
> Signed-off-by: Tom Rix <trix@redhat.com>

Applied. Thanks.

-Tony

[Boris: Pushed to edac-misc and edac-for-next branches in RAS tree]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7525690b6aaa4e539989b9c2e5703a56%40intel.com.
