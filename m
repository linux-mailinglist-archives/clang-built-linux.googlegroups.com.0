Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBSWK3L5AKGQEJSLDR5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4BF260639
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 23:25:31 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id e4sf510097vkb.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 14:25:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599513931; cv=pass;
        d=google.com; s=arc-20160816;
        b=dj5q88+Aar3xJq1fnbtpM1DGTRx2J+8u0rdlcxEUXt3i7chf9UX9V5sCJPjyrfpPc5
         WDxEat0asEl/+Jb0IpAnNLJr+64FTt3NYZxDZrGrFoNVStHCj8jdquxGFaXaZO1+OtYV
         FZQwp3uPNSXFlpGtUms15aOtAqhlH25o7SxZcV2Ao3279XdKBVcT68B3zST5uPd1bUUC
         hJ1KO+xNu/yIKsMp9jSuI4/p0mj3SxF/2SnWE9oOeLzDz/5/LZrV45s6aP54b+CRdKdU
         tAh/wmLhztcX6h0wBN5mgPEUuVuiffT9Tj7IHEN9o4IzLtrVgxcaw0RGMYFhfbVXoJmD
         mc3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZaMvR+30El+BtdpxNOaHUbQLCUoIXQ91+t9OEyODq+I=;
        b=O8uEpCyiM/ecN2/7ONdZBvFJ7R1NfKkPSMaYYdQSaKMHPCZP/shIH5s6Yz1mrwAJgV
         W0x/5URRu4880L18YolLxkvHIpNNvRyKvorFbZ6BjADzAkI0hGahhtq1CRRoIliJa6yM
         yNViEgb1E8HeaW85ZJX0+oXaizJNK4//nhyTjlpglh/4KK0I9xXz+/TdOu3qufQciFQa
         +7OxkTVUK8vp/ip0VxXAE/j+37A7nGDqGoMgRKMy6BrIBOQ17fd3xDCxdHXk2d3mBNA6
         58Kn3zzAqmMSssWDc20QLIAKcr5cSeFmwENpVf5tfJNJo5v4BiMxkXFKPGErtDEX2/wS
         zQzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bN89ZMsM;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZaMvR+30El+BtdpxNOaHUbQLCUoIXQ91+t9OEyODq+I=;
        b=ToJH8DfchqjblhwmDPnRuiiruSaSkazy0fBBmq1BNsbs2fRSiAWWF4V4CFICwDhFsB
         LO3cR5sAzo7x5I5DcaSeSb8/Oms3nkxGjbKD6ZwELd97aPRXv+9T+fDCDPVLLPWdnpLz
         3cD11BiWe5qJgCZO63CgkGxlLXMfnTGzkr1tC7JV7CVa8+bEopMfi9/Ezpt/qrjxMQib
         8QCMvKbNiQBF4pHhH+RvZ6rRA+8tNugIH8Ne4Y9zejilD29K/5Oc1EYhRfzFtEdhEdC5
         WYwUvFzzL8YPthMDtn8jlB6mn0tBtrbSQTju8m97uVYI/Cwh4+tvCaW0+FKTLXAjkf0n
         rkHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZaMvR+30El+BtdpxNOaHUbQLCUoIXQ91+t9OEyODq+I=;
        b=FoZgF+4JAk4dcbsMOBHrjI8C76kZXUhZhoh46zfuZ6x2YX50HRETUiipMfKjP4E3OA
         6jS2LFSUk2Y0HdiHg8LRAYSzCU7Q63fAZKJuHxPl/7z78uDPLE/Z+dztyVYoyyPMfn35
         mlWfgPFvQEojs/bhSMTU8XVik+PsiOlnCVFrssvSPT8Gumvmh5a+6FGaYy/QK9WzAgnB
         5pnDcfNwR7LPx1M3qdFlkIk7oqxUo1GwycdwMQUiSdbJsSVLVPWoZehCNw4simR7WWod
         Rg6CxOfvyipSqXLJkoh+gTi0no3i37MooIHa7O6CvJp0VNUOo6LaDSENtMoADvwdTDCc
         aoUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GQF+1uSrf59FJ0Wtkaifh/Gc7gagQt6CdcUVjTfZhbYI0/aU2
	EtiIxvXYnrXHYX/D41eXXrM=
X-Google-Smtp-Source: ABdhPJwID9+A5VCNhlG6OQAsafPDJfxd8W3Jm5RcH4vIxmEMe0vIsxS5bQDp8mUYJK59ocTfLOOlkw==
X-Received: by 2002:a67:ecc6:: with SMTP id i6mr12713399vsp.25.1599513930970;
        Mon, 07 Sep 2020 14:25:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ce11:: with SMTP id s17ls2155406vsl.11.gmail; Mon, 07
 Sep 2020 14:25:30 -0700 (PDT)
X-Received: by 2002:a67:f296:: with SMTP id m22mr4775729vsk.21.1599513930043;
        Mon, 07 Sep 2020 14:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599513930; cv=none;
        d=google.com; s=arc-20160816;
        b=NQZ+SRj+HT5kC6QvObfOvNZyG/gHgEuYsnIaJNacOIN2ziRedHwBj7Aikk2LwYOCR1
         TQRirYHWVIDMAX4v3JyA5JFxT1Vv0bEFmEOGJtxj2B4IrNMcXmtEw8FFNVEi7Dd1z5gq
         rMEhuiifjzdyiPSK/W/AhNs+4zRTKEuIP9zEY/fRC3n5L6zG6SUzcMfBRxesuKsB4D7j
         lMjFG0C3Hb8d+AMwAK7VCJ/zRtYgdKWbQ4D8wvVR2U+Pj3fCpaw9+qZs2ZWKMBiBvWJc
         /IByczSYLtXsbkv74qBUit/51pi61xkiKLVNEuXQ3WMpMnPw5KvN4sMy69IrvavQnaus
         zt6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RTavEjSkrxeijJfKGHo4c96d6R3BDjCdWO5/Wq/K5/0=;
        b=zzEN3xtdwwyi+uDsGPp7Wkx864hOOdmRLICuRbNTAf62AS0fvJj78wXePVQ3FlagPK
         iyNRUVaJJIS82x0PREOSfifWbp1K4CNaz5xNbtH+yCyBX+8UnZgTUd40Ta6OsTpy5vte
         WBcgMhwKJTe5b+ziLvH384S7gBjza2vt4F8l/5mVR3JFrp7sy4Vd2Sz59uPYgS3nkTtw
         AKfNZyq3ZU0NV6ltgodyf+NAx2CSER0eNuI+7x3HuXDbKEypu7ldRS5iC+xl0luqJtub
         SLEQn2rq43laEN9169nWl1YefvM+9iLIvsZxYY6K93KfVPUMb5obx87EgTPWf3EMvkYB
         LHRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bN89ZMsM;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 134si845674vkx.0.2020.09.07.14.25.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 14:25:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ABF8821919;
	Mon,  7 Sep 2020 21:25:26 +0000 (UTC)
Date: Mon, 7 Sep 2020 22:25:23 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 7/7] compiler-gcc: improve version error
Message-ID: <20200907212522.GB13815@willie-the-truck>
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <20200902225911.209899-8-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200902225911.209899-8-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bN89ZMsM;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Sep 02, 2020 at 03:59:11PM -0700, Nick Desaulniers wrote:
> As Kees suggests, doing so provides developers with two useful pieces of
> information:

I struggle to parse this. "doing so" what? These things are supposed to
be in the imperative.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200907212522.GB13815%40willie-the-truck.
