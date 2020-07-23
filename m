Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBA43434AKGQE22ELKQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7D922B027
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 15:15:48 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id u3sf886272vsp.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 06:15:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595510147; cv=pass;
        d=google.com; s=arc-20160816;
        b=XUwKhOUaRd8wnAh1yqQZRZkIcYFcvTmAQr3Hef0XilxzNY0K2FdWFghu/HauLhTvmb
         sUs4zsfniz94QYmNzaYUMuqrLdN/n46/fkEHRCrTkPK+zZfaq6hf9aJ+nwlN11zKq1PM
         vSNtE8Eun6Lol7U52/ae1ZRlRlSCvCBoOViZqRLgBY+fIiQA9B9AxEb4s2CSdTr2ms3O
         jiKIRDNAjW2+ynBSfGljBX+b4zDo/fVMWEi9pA22SF+nchSk/YNt0jYZsQpB2iHEdKMA
         UP9RPqwZjatektrBcPN0eQZj6QxKsPjuDrjb/kP0Izrd6jzueFw+IAYHyUbyZsuhofdk
         RGsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7CLBULNRaw7r1uGsuN1CZ76EcBwzSZs9GP55yRZbu/E=;
        b=WgWK/YQJIk5zUkFL6pm68IsKAT0QzAgvvsCjLNEYQmtXhgP1H/KqLdw5vg649QeMwQ
         l5TSDfFu5fha6Ij4r/PTCHTde12OBQ+EQg+pFZ/FnaFbEtBpLvS15jFt1t/UGOi7UQVB
         qxICe9suoz5FI6Bbs9gGK7mTsH8pK24689K/g66yhwhyXTX+7pmNHUuIf1xFtO4iwmn4
         Zvk2gUkMCDvWEBOdObitcp7S4hxVgukTgUd4TCcil6pqR24QaCHT8JCdE3ttcWlLiuik
         ah9unNNHnUY5hB45uRtUsaD92rDbooZeA+2tLDJtR3j8JyIeghCZwUCXh6RnF6Q4M/Dq
         2HTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7CLBULNRaw7r1uGsuN1CZ76EcBwzSZs9GP55yRZbu/E=;
        b=Y0wYhWIS+sIRo0FMkpdVqUybOXrjjQUZ60qqT1WWO+zGUez2g5vqOABcw/6/mnZ9FD
         KouHGaEhbaPHc/g9rQP/k4oaYqGnml7KZ4ahQt/2jvro8LH2i44btXBtS7I9GFDQHsts
         vkmXJG1XeqFOc6fBgK8phr+km6ZRmWAee1H5Z8KtMu82+asSTO/gEF1UyXstvGhY1fEO
         L7dFfdTywnjrp6xfZNmaaPe7xkMFbfhgJHMC3QnSUrgviyCO2TrJ1E0Xfjsp41QGnFWY
         BKeGNYnLPSfxJT9Y2FPpub5RrlPijM9uS9ioNQlF0fMyQMBIoq8DLRBGQth6JxJdab2X
         l2Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7CLBULNRaw7r1uGsuN1CZ76EcBwzSZs9GP55yRZbu/E=;
        b=Ibob+5pB6NehI2nbXliq5HQYSayn/B+AdtZU0zQVDxz4yF8MbpjXnJVunmCfDpxG4F
         bmTWJ062U0+uA0UN9DQ3IYHRFSywTm8TMKwAGRroTYsTb+kGKYj/49Eq8Yuq/L5TDUAi
         Z75vwPD7uTz4N+Mj8HESG5WjAdWghRJc6f4lWE/5WTNLZ4C+Lc62PXQBbPHwd+KmAfPz
         ITPHNmDSPYPSEA4PlvD9UWk7JbDowRKz3APllBhPeNhbYtAejBtYP8gKevRtWuXo+izT
         HKNDRlVf/jbph/01L7pnUYgXr6LtBCOKD0SbzfjAA5nvuw/Wlqme7+xj5OHU89gCMIdF
         4LKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532n5KbGOdOTclbq/xZA9xj3YT5d7hPZaMbU3pd1gm2S9v7Gml9/
	/IFRlRJZmYSjHURJsqp8yUA=
X-Google-Smtp-Source: ABdhPJzVzJnCGP+DQedcud2U5k6K4jAy++nlDooMCwBOJkMdpy8HkB8Fhq7AvPN6uviQFWNtpfb7ZQ==
X-Received: by 2002:ab0:481:: with SMTP id 1mr3715564uaw.11.1595510147471;
        Thu, 23 Jul 2020 06:15:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2549:: with SMTP id l9ls395947uan.7.gmail; Thu, 23 Jul
 2020 06:15:47 -0700 (PDT)
X-Received: by 2002:ab0:6353:: with SMTP id f19mr3858648uap.69.1595510146999;
        Thu, 23 Jul 2020 06:15:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595510146; cv=none;
        d=google.com; s=arc-20160816;
        b=RSgE2U3fqsPVRygIlzcycblnU3lRCnAMrHO83ZrDNKOu0F1OCpCGSLG/F+z2LxBHgh
         C0bUPS2hU+5tM8pMPmI4H/srUCNm4OYdVRsJAu6bpxnD+Zya3RIgcIcJkge1VhmwZG2m
         X3ZUqkO3445b0kGdTMbiBKuTcLj7jUCJxdWuDXHUIBKFQv3wNRnpAgDNBc1KESawT74n
         C9iB2WZi3pqRPxJLOBoOeEEhiR0U2GPFNQWL4lroO8FMK+0H/igUGDqv/Jttai9k6Baz
         mg94fX2krsmxbNmeMqofIoeFBmnSHxaibS/pLmruzB7lnVfZWXmCzUwV3kQWjOmJZaFy
         Ihjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=8T6uF+rVth3ENUlpdAiA63VQm0nrlpNJzOKzAWKr8+0=;
        b=qv0f6rRabbgHi9KGCgq36mhlnmDOg8R6n2seK8nHhqPfmP1+IBRickT/173w4TGaT8
         YCOEmJod352QrKyl9pGBCHMzYfUGBPpgCdlgp7hesdThYbbKwexO2Hb+UwYiLF8C6Sgc
         p7Tfz6LTysKJlXB5UcLHmlMfJZEH4N+h3Gmd4Pd3Csp/p+F1Sk+6tLlHulO0yDIN+a3x
         NjRfWFbPxVUuntSH7l30agyhk63xvK83vBMH0ZYowakO0gcE4YHmZ1HUnk5mvcyy9bwL
         MFrwkAMnmpp6jRIkb9qSK8w0/Yqdsfir/taWn7ZFer2XjpXSfuVsf/7LipBvXP+GQ6KF
         pgpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01:e000:3a1::42])
        by gmr-mx.google.com with ESMTPS id j1si259487vkl.1.2020.07.23.06.15.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jul 2020 06:15:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) client-ip=2600:3c01:e000:3a1::42;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 797D32CD;
	Thu, 23 Jul 2020 13:15:45 +0000 (UTC)
Date: Thu, 23 Jul 2020 07:15:44 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Lee Jones <lee.jones@linaro.org>
Cc: Federico Vaga <federico.vaga@vaga.pv.it>, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/1] doc:it_IT: process: coding-style.rst: Correct
 __maybe_unused compiler label
Message-ID: <20200723071544.6ae66920@lwn.net>
In-Reply-To: <20200723103333.GO3533@dell>
References: <20200715122328.3882187-1-lee.jones@linaro.org>
	<4e50d1ee2ebd55f8f87fcd5c631e97f3@vaga.pv.it>
	<20200723103333.GO3533@dell>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as
 permitted sender) smtp.mailfrom=corbet@lwn.net
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

On Thu, 23 Jul 2020 11:33:33 +0100
Lee Jones <lee.jones@linaro.org> wrote:

> On Thu, 16 Jul 2020, Federico Vaga wrote:
> 
> > Of course, you are right! Thanks
> > 
> > On 2020-07-15 14:23, Lee Jones wrote:  
> > > Flag is __maybe_unused, not __maybe_used.
> > > 
> > > Cc: Federico Vaga <federico.vaga@vaga.pv.it>
> > > Cc: Jonathan Corbet <corbet@lwn.net>
> > > Cc: linux-doc@vger.kernel.org
> > > Cc: clang-built-linux@googlegroups.com
> > > Signed-off-by: Lee Jones <lee.jones@linaro.org>  
> 
> Any idea who will/should take this?

It's a docs patch, I'll apply it once I get back to the queue....

Thanks,

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723071544.6ae66920%40lwn.net.
