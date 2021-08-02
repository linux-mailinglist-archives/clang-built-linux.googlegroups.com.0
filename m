Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBF4MUGEAMGQEP67TYSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 059E43DDFEF
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 21:23:05 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id bm25-20020a05620a1999b02903a9c3f8b89fsf13846232qkb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 12:23:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627932183; cv=pass;
        d=google.com; s=arc-20160816;
        b=1JI+Dx+U4qQctfwmQXUm/YwmI7U0qDJ85BZUlvyWeJUYuwEDzdYdxIu4IWHgDCVSB0
         TAvhSXDLBi+AJJf+h8/poAcIGVAwjgb+MnscNh2tI4O4yQ4CLkS1BmLkXVQf4Z6dJ7yF
         AL/qVJDtTuQ7hnVKrI+6Aey92ba8X2lMsZ5pPsWsfZcYeNAgy0c6jKLCM5G3MAWePZea
         EU+UCjIn8M8gBYs2AMBqnl/cjrT86air8GLThPzeA5FNu3dqic88QetrW9d2ZrXB4sBK
         TRJULpkOepgFtOV9OGYpZ9cpdqQVsxsjWqRD8Uc8iCzRtvvJGwam0vC9b1pvBsf6KZXm
         U22A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9eOMUGIHsuP+ZNfQ1GkIAk6x1BFkx0bYiRDQld6NIMI=;
        b=pfRp8i+icZSUp4jm/2PTcdER72dpeYRD+Ci+CMIHjS9tUEAmEDCuRZA092Xs0KstPX
         7k990ci7vnZF9UR+SLudMU9BtkuDlN+9GQq3NKz9K15rexX3wt3KQMku2pv/ZbhaFBO/
         QWDFZN0Hc7WhaC1g1hrW8NofRm31vQHeafVYhIOUlA7ZGNGcnoOaLkrIVnYrCVWZfoQB
         A5rKAx7Gs1CaBOtY2J4dUWj+perqg1WVHWNbGhT4iMW4OVVAmDJAkIMfXgD0FRWVbihJ
         TPcPJ07b7sorUELz5js82SPuxPhHVoe6d8pqOWKNURAeEM+4H7Uzgf6L4dxIaw9i3z8M
         XTQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dRFwk3Mr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9eOMUGIHsuP+ZNfQ1GkIAk6x1BFkx0bYiRDQld6NIMI=;
        b=Xo+yHPSjz9nmsRtIHSlqeOCBcOYYkhV76rbFpw60F67S47evuKgOlHVoQpr72BrnvK
         fQ94IU3dqDfqSL1Qj5BzC+zBwOd9xe78IGM0o4LJqrp0kph52y4guB1p5hP1jpQVwfLp
         G7CyI2NF2Im1eWKh5BnuNExqlzr4WNRtn+P0GDA/i46kShT4CbhSXsrFg7fRKvAssrEn
         zYsGQuYdJk3CMypEV9vqlOi06S9QB7YnfNQF2XpoXUN9S7fZZi2Cs/ct35IwvBUwYWCt
         Na76zB7w2xVmBmrX0LW7IqSkQyInxetpeUGx24q6KpsJqgkeSAOVZogeKyR67RcZ7Yo0
         8M4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9eOMUGIHsuP+ZNfQ1GkIAk6x1BFkx0bYiRDQld6NIMI=;
        b=B7QcDfqnCwCN23vCCd0oNEvnB0mxqCjk2Du5pqqRGDnT8kVNpyhUklcndiU0cFHqUg
         yHr+EgTufqa1qeklTRJ8/MIYdfKZrFN4Moefq4x5r2iNEM56i9/xtHmZI2wLaA7+tOLm
         AxrKmFLnlqVSMhPNtE5cVn+YLJd5l8TCyayXNdP2Qy7hr34VFNuCovoMdxhJHEFrPJBx
         XNEUTWLaGNrtanuXVmsyRL6NRfR/iWANP/NpeyZys8lpBWtmnh0AnRrPVxIFFvq+YJ21
         /Pfm+KsOwTqYquEeSSIMVN8ZVA75FfEYxY2mETpTIyv0K56as8XxOCqMA+8MPZqjbDqT
         3wtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533O02MUNpZ4i596NbuqqWuSgOHMa0ED50YN5xq+0OLutZ5N2lqu
	bSiQ6RTAJQjCszoitJrI6YE=
X-Google-Smtp-Source: ABdhPJzd5z24+WW7Nf99k8O67rwfde/DzCjwnj34ecDtDegsO0/mAI64W99KMtDxTCqeJr/9JnkkcQ==
X-Received: by 2002:ad4:5884:: with SMTP id dz4mr18002661qvb.34.1627932183756;
        Mon, 02 Aug 2021 12:23:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:aa8d:: with SMTP id t135ls9171578qke.0.gmail; Mon, 02
 Aug 2021 12:23:03 -0700 (PDT)
X-Received: by 2002:a37:6516:: with SMTP id z22mr17505759qkb.203.1627932183324;
        Mon, 02 Aug 2021 12:23:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627932183; cv=none;
        d=google.com; s=arc-20160816;
        b=IlBggKP1bkFze5tizfO586bpY8hjXvRaD6XkGZ/9xZya6IXMjjxBhDVBLv2KpnjCnd
         rtS9KGSTwQDM0EsYo1ILXwNbR5ZnZF7CLrl2tJm06BvY0hDYke8k+YrAgsCF7L8PK3rL
         85MxhXIU2MZb0ZMUVzuM3SzQh9Er/fztR1nYD7VsF2N1RAjvYt8xYAc1S53ZlwOZQr/p
         Y7+8N8JI/TCfrL2XsEs5Ybt+FwKfZwJaZQA4jvYNPFo6Vsv7SdHB+QTZ+dSsmwCxlctI
         KancVsvzWdmdsVwcdiPmS9iqcodZjMNZwXmNP+A7T8W//DJM5bZb8x+A6bGFe582xxMl
         JWSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=x1yFLujanjruL8tjbYdgL1mGKIhVzdEtQWx+zhon38A=;
        b=CLgBWbze4Z6QGSjhtPj1Fkp9F4zbtdvRL/SPkRO7ZNMdmrGg+8Tm5XAKqgrcBOmrRO
         sv1AHu2xCQkhhTdrCi/MYwpvWu2WcdJ6/f2dGbu/EgQ5J5ZqNb3ey3ymr96qVyIqTHFd
         0BZRVfoJSI/hU87LR0evSvSyJMEEGSbeecrAtekhIBHdcSU/UhvPU5GKS+QPHltsMgV+
         px8L+yg4jUAblbL4O7MiLm9Jz6JbNx4YCiXwqIjNv/3OSiqzd7Ek2P2Hf2nZnVT0Uh/A
         TgOty5czy64ccXvAjDJrJtmQIPzLXgcJ3/rd2Rt0YjXC++i+9mRRwBA3Brz4/i/0xulC
         hd0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dRFwk3Mr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h9si497331qkn.2.2021.08.02.12.23.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 12:23:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 080E360F51;
	Mon,  2 Aug 2021 19:23:01 +0000 (UTC)
Date: Mon, 2 Aug 2021 15:23:01 -0400
From: Sasha Levin <sashal@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org,
	Linus Walleij <linus.walleij@linaro.org>, ci_notify@linaro.org,
	"stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-stable-allyesconfig - Build # 4 - Successful!
Message-ID: <YQhGFU85Q4k1dKfe@sashalap>
References: <1406720038.945.1627915387982@localhost>
 <a41ca429-9480-9ecf-242b-5e68fade3c10@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <a41ca429-9480-9ecf-242b-5e68fade3c10@kernel.org>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dRFwk3Mr;       spf=pass
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

On Mon, Aug 02, 2021 at 10:28:02AM -0700, Nathan Chancellor wrote:
>On 8/2/2021 7:43 AM, ci_notify@linaro.org wrote:
>>Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-stable-allyesconfig.  So far, this commit has regressed CI configurations:
>>  - tcwg_kernel/llvm-release-arm-stable-allyesconfig
>>
>>Culprit:
>><cut>
>>commit 341db343768bc44f3512facc464021730d64071c
>>Author: Linus Walleij <linus.walleij@linaro.org>
>>Date:   Sun May 23 00:50:39 2021 +0200
>>
>>     power: supply: ab8500: Move to componentized binding
>>     [ Upstream commit 1c1f13a006ed0d71bb5664c8b7e3e77a28da3beb ]
>>     The driver has problems with the different components of
>>     the charging code racing with each other to probe().
>>     This results in all four subdrivers populating battery
>>     information to ascertain that it is populated for their
>>     own needs for example.
>>     Fix this by using component probing and thus expressing
>>     to the kernel that these are dependent components.
>>     The probes can happen in any order and will only acquire
>>     resources such as state container, regulators and
>>     interrupts and initialize the data structures, but no
>>     execution happens until the .bind() callback is called.
>>     The charging driver is the main component and binds
>>     first, then bind in order the three subcomponents:
>>     ab8500-fg, ab8500-btemp and ab8500-chargalg.
>>     Do some housekeeping while we are moving the code around.
>>     Like use devm_* for IRQs so as to cut down on some
>>     boilerplate.
>>     Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>>     Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>>     Signed-off-by: Sasha Levin <sashal@kernel.org>
>></cut>
>>
>>Results regressed to (for first_bad == 341db343768bc44f3512facc464021730d64071c)
>># reset_artifacts:
>>-10
>># build_abe binutils:
>>-9
>># build_llvm:
>>-5
>># build_abe qemu:
>>-2
>># linux_n_obj:
>>19634
>># First few build errors in logs:
>># 00:03:07 drivers/power/supply/ab8500_fg.c:3061:32: error: use of undeclared identifier 'np'
>># 00:03:08 make[3]: *** [drivers/power/supply/ab8500_fg.o] Error 1
>># 00:03:10 make[2]: *** [drivers/power/supply] Error 2
>># 00:03:10 make[1]: *** [drivers/power] Error 2
>># 00:04:05 make: *** [drivers] Error 2
>
>Greg and Sasha,
>
>Please cherry pick upstream commit 7e2bb83c617f ("power: supply: 
>ab8500: Call battery population once") to resolve this build error on 
>5.13.

Queued up, thanks!

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQhGFU85Q4k1dKfe%40sashalap.
