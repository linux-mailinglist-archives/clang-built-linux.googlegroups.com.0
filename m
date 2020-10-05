Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBA775T5QKGQE3CDK34I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 362BC283B84
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 17:45:09 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id c3sf5970382pgj.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 08:45:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601912707; cv=pass;
        d=google.com; s=arc-20160816;
        b=cp/hDkG9ciyyCaG5CL0I4rYirmlCc+4AmPcX+mULsBKPen08dTP8OcFSXeDYMVJsHc
         autlBE051UFg+VfjYsaFJJJ2dwMPwje8nwD2A3LcGZ9bAd1tiHpRJLU7kJ3Mn0n1LP4d
         IoN8blgookkior1O1bF5XHUcrglhLCEvMqpMaZV3tAY15h2cqtHq8sQKltUOKx0G0tRN
         /X8lWDzo8zrf0dfbj6seww36ZeOWOu4dXs2LC6TLoRKdaiXqILD9zEXRpjB9rBKBaueE
         rSEoZsgGUNL7ifu+AVg3KJA8+zYmpieHtF/oJwKD1XcN8mTHkd/AEket3sAg2TyWKPfI
         J0mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BFVBoiLFQ3PjGDgcI9/fIkHiUkpVBEkKZWIfhJD8pZI=;
        b=NjRVPTlM1EhMeTohCw2GSXR4Hqn0O9aaMeIzKHvgeR7cE6BtXHXU+9VUKtwtTIjeFw
         hPIT0mL+jyw413QUxve52r5wjEOhQlA3jV9NoH/ZQugJIR+geO0KZsTeaKvOObsNS1rE
         mcG1PaXzRqqKTDGkm1S7Ti5Uct6hiStcx/ULKfv2s1bHUtJ1HfrxMqghRGSOy1eP0GzO
         bA8RdOR+gV0D3egoo+yurQFG2iWGlbHcz8txuf9ukk80OpU5etwnKfoQQzME88rE2bdY
         hChyb5TJiLu2/MeGx3KJ1Y1GXGDEMU3tqGuQR6T6ksN27vwGoFBTt1zAzXJaXZIlUm8M
         dZWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BFVBoiLFQ3PjGDgcI9/fIkHiUkpVBEkKZWIfhJD8pZI=;
        b=rAeYywl9HBDlhm+63C2YcykaHBdJzPt+aO14iNbkPdSS83uUB+fdscmAUkXUXUgiHm
         ckIqjmViKWB8nzes3ul5i5LdPgyBMI+A6aPAn+wHNHQm8Btr3eWozYW3YR0XaoMeWPh5
         YaDztUexgB12HcYxIHVNCoC66or1/nnHHu0UxZWBN7qmDiM8SXANW3vhZV945a2TdLc0
         H5aVFcVK1nhI9lUbzVXB58fiqjBhXEZaRKBq/oOwZ+EJ99AaoQTYOkMLpq+ACLJjyRfV
         XSIwntunZFagwxUSEgjJA/oNpnRBASQIEjMCToz+NNmjqrcuErU/SGnow7b7GOfSR4AA
         hYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BFVBoiLFQ3PjGDgcI9/fIkHiUkpVBEkKZWIfhJD8pZI=;
        b=UGTeK169zryoRSfl/Q2m/vJt40d/di17iCOpw1IvXf5Pw00CihOgxW1finGYlY1zKU
         k7OPDZnR6DE4M07k7W+u8LPdIK2an0Crg2+6WsuQzK9EvhLDLWn6zbVltD5lHKR7rrIE
         FODTOa945pttt+svSq7scXr6WREnEjOnSBL100skB8nB7HSZAB4CT/ZxaydjoTv4e7Zj
         /yfFRcstymyCQCQnuT0QRyRRDjetbgQBewJQq2bNm/kRR9WSXmHOJmq+V4mpUi++XsRE
         meIdU5sKgTAcl/lvB6nU0oZj8bIS/+ltGrC2f8gwnWQbA4ctJXhnFDr8tEFYv4cBB/jm
         wDlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530o/z5K0HVOUGDPAys3P+IWvP8QyB7tQ9QWtK5r2pzj5WrCHtib
	tQ9tixkDaruPPgeLQ72KaOI=
X-Google-Smtp-Source: ABdhPJwfO2Wom4vd/tW0g0qWEhBgcSQ0A2G3HSVZJ0kQTAo5Dcf274PhSfDwhqKtTXU7rzgk2h2tUg==
X-Received: by 2002:a17:90b:1649:: with SMTP id il9mr24186pjb.94.1601912707396;
        Mon, 05 Oct 2020 08:45:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4706:: with SMTP id u6ls3716093pga.8.gmail; Mon, 05 Oct
 2020 08:45:06 -0700 (PDT)
X-Received: by 2002:a62:1410:0:b029:13e:d13d:a129 with SMTP id 16-20020a6214100000b029013ed13da129mr421893pfu.17.1601912706727;
        Mon, 05 Oct 2020 08:45:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601912706; cv=none;
        d=google.com; s=arc-20160816;
        b=QoTvttth2m+hfc14R0kLBrrIQ3dPn/WdwFGdTudhxuXxKaJC4q67oXbgEjHxG6ks/U
         RVuxHjC/QY3iVF/HAu8hgSEFHc0iofzAJHhmQIEkcEd21RLeps68tEIzI4LEpPVKZ5pW
         dZdzJe02E6T/bkUmyiYC8yLGSI3UiyAQEJYuZGC4+1/8LTLdk08i3n7whscXSw7f7dHs
         sKs/IUICdKfQqsWvBmJ0LEbccgRqcvL9BZ0e5ZZTrNgKLU8s4KpeZx8ATXSZ9quBG1qN
         G39NoHEdzkmaB7bwL2F3/NTW6r1yxlBNC9InQ7JSx9apMHjI0WMqoOWfm5iZ+i3bcqz8
         yXKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=GtvM7Mk7P3PllJzN+pxJMmiNfIhM1PCYUs0EYH0PFWQ=;
        b=F/ouowFGEkSi2xLjTcHP8EDRvcI5/Q/+s+ivvNm++AjgOfDRTe1kuH4Umj/9IBDnTr
         1/pG0Umt8D2HFQjXbOdrQ3D9it5j+tRKBmwFEVFEWVARiYSaYjxoPUB7HGBiPxqQte7g
         ZUOuzibOtanHgXxwpZxcDIshNiuxHFwgRM4OCHeV0CzPrkZs96QRJFoGfx5eL+iMPG89
         nTj7rGLAirpjOUP7sAX3MG0qIRZ8b+sWauo740av1MDZaGQ8oZXQ+/OHjt8Rl5r7xzkF
         0/Q07AJ38gjosgSn+cXNVcwcBPy+4cRo1kYqI+EaV/3lnRlnwtLowZ/JVkxuR4nnuhIk
         23Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id x4si840pjv.0.2020.10.05.08.45.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2020 08:45:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 24E6A2B7;
	Mon,  5 Oct 2020 15:45:04 +0000 (UTC)
Date: Mon, 5 Oct 2020 09:45:02 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] docs: programming-languages: refresh blurb on clang
 support
Message-ID: <20201005094502.40b187ab@lwn.net>
In-Reply-To: <20200929211936.580805-1-ndesaulniers@google.com>
References: <20200929211936.580805-1-ndesaulniers@google.com>
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

On Tue, 29 Sep 2020 14:19:35 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> Building the kernel with Clang doesn't rely on third party patches, and
> has not for a few years now.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Documentation/process/programming-language.rst | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Applied, thanks.  I also took the liberty of removing the duplicated
"docs" pointed out by Randy.

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005094502.40b187ab%40lwn.net.
