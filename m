Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBDHORD3QKGQELP35ARQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id AF80D1F6966
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 15:52:13 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id ba13sf4401348qvb.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 06:52:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591883532; cv=pass;
        d=google.com; s=arc-20160816;
        b=nVMdVLMT9WWmRIfV0KOQC4p/TqeK3OHue7HJTZPB4vPNwYZorMFxFPXzw0p59zMIU9
         OYk+zzhKSmxVo/F6gYhzjD5xlfGL183QDymrCZjQjHTBo9/Ud9mDZspnkoK3GZu8HrS8
         JzXFyl5PpCS9tj1r1Ux1a+5eBszU4nBN0tDsLdvku1RO/fb39S7SBAnUwMXXlJQo+kI7
         ApKc+6ILRGKRMOcdLO9pMcbAKfiUjCPYx30sJ954LqtlBHzud2dtn7Nat/nQBj9SJsKK
         5/cISaShWxUlkLqa/cXPkYdJw8pFjjaD6PDkRFALPDl4P2QAJM7BT8QMy+BFSR6MBTSL
         mBog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=EReUH0l3CJvNrUyCX0RlxGV1HSK5Aw9j9ZLC59mi61I=;
        b=h54peP59BURMq5ujlgHHwGSsjDK9yo3SnfaJmogDKa9zzsjXwn9RYZA3KK70ryGwZC
         MTsWpoHMQgMunSt9BFKgmFN0dc4mQovNUe4N+5QVSZSd47/688mAFqNBNBF2U9Gn30iR
         REnL3AO5PV3fQPGbj3mm5czaODsV/1NR+aGoxVLPTXxiinGNHw+DrnFwp1JITmrpP7gS
         ppoqJVx8j/MZzzpQf77xHhqiAZjN8yVFzFPu2LNdWYVXFJpFa2OfobJXbZrzIF7Iq6Ez
         NFHeMKtdhVGZYxJcr2R3+uVT6EAqbd0TM+mLbernR66JgLED1qYTpNUgxRHfkWhz42CL
         EcSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EReUH0l3CJvNrUyCX0RlxGV1HSK5Aw9j9ZLC59mi61I=;
        b=EwbkCbNyxMYtoA5wYaHIAAZyKDYouq08h1BAtECkFAk7qX5pye7LIK+k5VW8ot0E5S
         1Yiz/YuALOETij2lieeSJir1BEjkPuxYQ+KFAkU1p1+lupQRxFWnLKIApfwpFmIGTLsy
         4ToJRVEGwkqFWcJk0dBp+gjjtt9JAvfMYb3yS78OjNalm/E3dc74ItlFZ9X3eAPNrPxt
         KaItAcjLZDqmUib10ggiDNWWgX+R8fcjmIhf/YvH7Hi03xngm8KV65Ijf59wjbQmIFUZ
         SbEfdhMXM97qWZJY1Z2uQgxzVoW7Nx9nHFmoI9mvjpB6nkwozgUvKY1rp36vi4DWYDGw
         PaCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EReUH0l3CJvNrUyCX0RlxGV1HSK5Aw9j9ZLC59mi61I=;
        b=mxMm2YQDlxYRbF8m1YCcKMZ/+oSN07MXqgu6gxrTt/+yaKR9uHjmsERUgNUcGN9mMC
         NNXQ0kFM+jMs0wJPfXpWBeqfoeVJh5Aubbk1rdzghQbstV0sLpEUFG13IcV7eyJEgSNE
         lpPf+FxZOyRhZzFTZPL72EMWkbJnvNho+UdzZXEJYOz8tU0uSec4gkrclosU+Gi1TJmf
         kFHP9GsSpnllzYDNl5cWsMI3d2s4eqPmkYSfYmJJYUXStX11hDnDxN2m3e4GyL52lIZi
         FryCU5S9LqzbgKpAt/VQLUcZd6heMVjtQ709z9Dh7vTo27zAwFW/os2xLEGpBMdusf19
         Q2ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532V9h7BfmxVr94o+1abEj1M7ah8q5VYqjWXbpit2gc4BGh9dEnv
	K/k280wcGpf4lqpHBO1WVB8=
X-Google-Smtp-Source: ABdhPJz8UMGXIOj2n5TY0bJFjyPBcGCQtvbFNzNdDtyQmspDnzmIi8rDK2ypjYV9LvZu7A8OWTeLvw==
X-Received: by 2002:a37:7d45:: with SMTP id y66mr8427567qkc.176.1591883532611;
        Thu, 11 Jun 2020 06:52:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:90b1:: with SMTP id p46ls469349qvp.7.gmail; Thu, 11 Jun
 2020 06:52:12 -0700 (PDT)
X-Received: by 2002:a0c:f293:: with SMTP id k19mr7147871qvl.157.1591883532242;
        Thu, 11 Jun 2020 06:52:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591883532; cv=none;
        d=google.com; s=arc-20160816;
        b=BKfXNYRELwn+rLT+ktNgJdYCJCtekPk+lTLtWFyaMEidWP0pZhtMDOWqtM9gjOOCE+
         A2owO+xr58KKvbPCqJULfZIGha+pgnQAFDiPVCrIv5PoE58uTmkH8Bfp36Gec285/7Bi
         je/MM+nhrD8er6YJ7YDX9fNGHQN2gzZo1kBOk0908vLr5KNUhp4tTeTmtQnaDVY23pSB
         qAKWqWRxkjVLp0fL5DK75i85VCdfqAjtNyK1fezXstKBfJckm1yPn0YKDdjAHQUQMnHG
         buorcnsVbaXmygu64uBu9NLuNInyRN+UE1OKaVRnBDhIWT10EtXhekE0Q6qkgr71Iwn7
         Ji1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=w9G1mUJFM5PmI0+0mcuSgyCWX+RIas542wEYjgHQhyg=;
        b=ynFz9IKgXUrQPF+Pe4wWSzew2yh7XediBSI2u0YqoX0oYIZJvPmMbLE/ECKNsiEC1L
         Sx+4gi3E41wJ0UbhEdJayZ/aNaPMf46mZho954TuMXYzAEmsbykZdhbweMOiVJdEgwuh
         XCykbpsshib3CdWBvIsumN1UdShU3kvwfeG1A0slGiPkcS/YgBwx8M2lKRz8SUiys8T3
         PsMC87uonRW7iacTBkpocG6Ya8IKu5L5xuAFvXOCzcH8zSJ4i+OX/suZODmzvPY4SyVL
         fG08XmSifeK0L8spajMRBFdOZQieCGu7EI7SqxB+gpjjtuYpcBEQVyD200qZ7KkbuVQs
         3FPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id v16si140344qtb.3.2020.06.11.06.52.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:52:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 7819C6D6;
	Thu, 11 Jun 2020 13:52:10 +0000 (UTC)
Date: Thu, 11 Jun 2020 07:52:09 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook
 <keescook@chromium.org>, Federico Vaga <federico.vaga@vaga.pv.it>, Mauro
 Carvalho Chehab <mchehab+huawei@kernel.org>, David Sterba
 <dsterba@suse.com>, Randy Dunlap <rdunlap@infradead.org>, Theodore Ts'o
 <tytso@mit.edu>, "Darrick J. Wong" <darrick.wong@oracle.com>, Pankaj
 Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Jacob Huisman
 <jacobhuisman@kernelthusiast.com>, Jonathan =?UTF-8?B?TmV1c2Now6RmZXI=?=
 <j.neuschaefer@gmx.net>, Rob Herring <robh@kernel.org>, Linux Doc Mailing
 List <linux-doc@vger.kernel.org>, linux-kernel
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Linus Torvalds
 <torvalds@linux-foundation.org>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/translations/it_IT
Message-ID: <20200611075209.1ec03712@lwn.net>
In-Reply-To: <3a6354fd-90ec-914f-b5df-0c4c219bd26e@al2klimov.de>
References: <20200609201241.81518-1-grandmaster@al2klimov.de>
	<4235548.LvFx2qVVIh@harkonnen>
	<cd260d03-27a4-7794-f58f-21e8e0be9755@al2klimov.de>
	<202006102009.CB14D7F@keescook>
	<8ee16c38-e28b-b4e6-ed30-55a59e216b49@al2klimov.de>
	<CANiq72n50OVRtFAQkAmqjaj=dJTP9VqYYHN7++8O_t4cbfaJgw@mail.gmail.com>
	<3a6354fd-90ec-914f-b5df-0c4c219bd26e@al2klimov.de>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted
 sender) smtp.mailfrom=corbet@lwn.net
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

On Thu, 11 Jun 2020 13:02:08 +0200
"Alexander A. Klimov" <grandmaster@al2klimov.de> wrote:

> Who if not Linus shall review one huge patch spreading across lots of 
> subsystems?

In practice almost nobody, which is why I've said several times that you
shouldn't do that.  There is no flag-day situation forcing this work to be
done in a single big patch.

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200611075209.1ec03712%40lwn.net.
