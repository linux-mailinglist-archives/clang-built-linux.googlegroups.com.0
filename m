Return-Path: <clang-built-linux+bncBCDITI7XW4DRBU5IYCAQMGQEO32XTMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC0331FF80
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 20:41:08 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id bx8sf3833672qvb.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 11:41:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613763667; cv=pass;
        d=google.com; s=arc-20160816;
        b=vn6KZWZWcw9h30qRKBXpxxap0ofi17MNA7DzZxl5o0LDsrbSeimBa3Ie6OU3Eub9Sa
         BFxdA7isj/fAJKHpvrlYUCKGZRY7DZ2jOmsrfUx+xC/sI9qeFacW0wIiUumQKaoeY+Ce
         F2lLAsgxse3zNcnP9T3hSjc7BhnGDUAFWQXrSjPo4hubkn8cxh2mW3oAzwGujoy6mJ6p
         RweXzcKmAUQQSUvGe6tWClUSa3G6rXNnH+LS9pA6Bl+L0gTMIzSL25ijlZ0eR10qBt5H
         Dw8U095Vp2adRcflyGH9G43TezxQj9B/47b3MdXwOZOz+iR0sf//v2H9boUXUFF3A+Ag
         lNXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=edCk7HYrGIGZtWFuQ8y48YfZteI9l8yb9c20269clVg=;
        b=fNS7fZb8CbOopCBU0t8K9WEkCbJFpCWwaKrIPKLqWinIBq/IiblWvi6AE05WTTdBAQ
         efanZJfkMKsB3hH1j7lmTazI8G3Rr+t5dNMqnFnEKXftDvwIQKKc+OSTpsEfj0bSHXfp
         gqXaORT/22M/rNJ+CypHrXklMRUg3Xwhy2ayfMc3xYWwYjX0UA5Jxtt/i9Kwai6sWVh6
         ZXekh++g8HqTVP6pbnJGXcKK7URDgWT9C1U5Jmnyzl726Gf1E59aKEEtpSmyYwIUCwk6
         3X7iyBhTPwPNIKzJV8K/uLJgZDlykieDd8AY8lbZAgdA6MNPTNiSAOKTAffb01zjKVnh
         bhDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=edCk7HYrGIGZtWFuQ8y48YfZteI9l8yb9c20269clVg=;
        b=QQa/VT81EtnhWitx6Nak9qK8v1k03xhml5VQdtKj1ofzxW5cSd0p1om14KYCPn2t7D
         JCW5EiIyshlrhPp0K0nCetiwxnGTXNme9CS3vZmYSSnYrZrc3bJYUneMbUiz671md7YM
         H/fK8aYw+1MfcYP3QIhJab0I8GBKFYJer4BJB7Ni5F2fWAa7fiAKbYWt2sZzsSjFCdx3
         PbR704V/eKO2vvcpjIKh2MyNKBTilV/HW5klGNDBCmaglZxrOLk2dqd1j8mpRc2bz+l3
         zuEf/md+2qHjKYBr//D6Yr4ZrJzTs2DNeWJjgncGHlMHQ4e4iBPZY5qEQqFqTjjH+3L3
         gZYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=edCk7HYrGIGZtWFuQ8y48YfZteI9l8yb9c20269clVg=;
        b=fWFkqTf9mPvkEOQEuhRbGm+RQGkK2vXUWFZ725gsnoDQ2gRNpTztJLWgMd8M5Qjoau
         zcxymwNp/0EYSYqZtS7G/EfAbgPifTaL7bb48xyxIOXyd0g3uCaI7hRRfosV+fkwEvmE
         ulfVnSpP07DJVndJ3RvAfV3YXB7kG7+SJ6qiIbciqyi4sKAG+TZG964EY7mUdPSZfcpq
         YO34t8kQDZkpX/eeqBS6WPQ4B2nMaY4GvdyF6HCwhAIHdt3zxOWmlAezY7il/JUobuPy
         Q4yGWG3UExOZrmu2V9V99LDyRWtZWKeGaCFZCS6g99ItsNUifyDzF5oLz//qgKAuRDw+
         CblA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tY9SFuj2krLnjDH3NRncooWLjVBKsvPDmRz/fmZhl8TL4oSIn
	AUv11WVaBI7AueOf9dj9Hos=
X-Google-Smtp-Source: ABdhPJxZglcG9qsNfaiGO4C4zJl3mVW+ZLIZvCibm8qThMcSoi4mHgPybYh/MDWus/CLWbNvQ2bB/Q==
X-Received: by 2002:a0c:90ae:: with SMTP id p43mr10619131qvp.47.1613763667675;
        Fri, 19 Feb 2021 11:41:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d01:: with SMTP id g1ls5146513qke.6.gmail; Fri, 19 Feb
 2021 11:41:07 -0800 (PST)
X-Received: by 2002:a05:620a:22b4:: with SMTP id p20mr10923633qkh.27.1613763667378;
        Fri, 19 Feb 2021 11:41:07 -0800 (PST)
Received: by 2002:a37:a412:0:b029:15e:d70c:89db with SMTP id n18-20020a37a4120000b029015ed70c89dbmsqke;
        Wed, 17 Feb 2021 05:57:00 -0800 (PST)
X-Received: by 2002:a7b:c956:: with SMTP id i22mr3492987wml.85.1613570219327;
        Wed, 17 Feb 2021 05:56:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613570219; cv=none;
        d=google.com; s=arc-20160816;
        b=kUjkvTwPBNQEDs/dcIEq+Zmdfuffrq/U8d4fECfk25Xy7Wl6wEAxH3TmhKDWS3AJMP
         wHonCJxrc6ojobhPy2dfHMBu4WY1DgNXpZQG8x8+zKGcdwxOR6okKsU4Rdka9t8TEKA1
         jwhPJm5vzpMRNTE+DdihGbPdHj2fflH3PhMrAWpEOe4UMpLz0AL0YtNPCIrBDjEDWl64
         hPIRDY702cSEMFAhNUyxNR5T0jHEYKKy0Qk9QDvtxazZfSrUlpRtozL4ZrZfHBlJUwWg
         rPfQWgbOwdXOerzjK43TSTZHVgBPXljQ2xdNfF8ehiRMQW5hIv4NNy7nuUGkxDRHcUOy
         aTWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version;
        bh=3T7HVKeXf7Cfb1KbcSz0rKsSrhYIEVATJNxs7P0Eetc=;
        b=HUpIAL7T3llls5egpAKGJduzB4dRTLxVBxJnGthuHjaF5AsN1wE5WDsvPb0ufjtE2T
         0Q+hAHa1KTl9z9Bp78a3wbrAsY8ll9/Y5KnlnaJIbPDw89iNH+AQ4mGydZoj2lQm5Axv
         w9upMJNB63Ff4+4B2abwWoiJQbGtERX8TpcFU7ykLtateZQIap1Jmvqkwuf6jrK15AvZ
         NcSsK7dxUm12xIWdhd3DxfQGuDb66VuhsE0foC4izTr3VAOg7bBaFchrXLeTOlqdj0cG
         sLHfSoUoaO9a1bdc/xD0vtYp5qmyZfiaEXfsbTd1GLcfYRb7tbgPp5jevEVGaD0FPDY8
         OtHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Received: from fireflyinternet.com (mail.fireflyinternet.com. [109.228.58.192])
        by gmr-mx.google.com with ESMTPS id 15si58048wrb.1.2021.02.17.05.56.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2021 05:56:59 -0800 (PST)
Received-SPF: neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=109.228.58.192;
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.69.177;
Received: from localhost (unverified [78.156.69.177]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 23891380-1500050 
	for multiple; Wed, 17 Feb 2021 13:56:50 +0000
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20210216212953.24458-1-nathan@kernel.org>
References: <20210216212953.24458-1-nathan@kernel.org>
Subject: Re: [PATCH] drm/i915: Enable -Wuninitialized
From: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org, Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Nathan Chancellor <nathan@kernel.org>, clang-built-linux@googlegroups.com
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Nathan Chancellor <nathan@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Wed, 17 Feb 2021 13:56:49 +0000
Message-ID: <161357020959.15107.941362709800379680@build.alporthouse.com>
User-Agent: alot/0.9
X-Original-Sender: chris@chris-wilson.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 109.228.58.192 is neither permitted nor denied by best guess
 record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Quoting Nathan Chancellor (2021-02-16 21:29:54)
> -Wunintialized was disabled in commit c5627461490e ("drm/i915: Disable
> -Wuninitialized") because there were two warnings that were false
> positives. The first was due to DECLARE_WAIT_QUEUE_HEAD_ONSTACK, which
> was fixed in LLVM 9.0.0. The second was in busywait_stop, which was
> fixed in LLVM 10.0.0 (issue 415). The kernel's minimum version for LLVM
> is 10.0.1 so this warning can be safely enabled, where it has already
> caught a couple bugs.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/220
> Link: https://github.com/ClangBuiltLinux/linux/issues/415
> Link: https://github.com/ClangBuiltLinux/linux/issues/499
> Link: https://github.com/llvm/llvm-project/commit/2e040398f8d691cc378c1abb098824ff49f3f28f
> Link: https://github.com/llvm/llvm-project/commit/c667cdc850c2aa821ffeedbc08c24bc985c59edd
> Fixes: c5627461490e ("drm/i915: Disable -Wuninitialized")
> References: 2ea4a7ba9bf6 ("drm/i915/gt: Avoid uninitialized use of rpcurupei in frequency_show")
> References: 2034c2129bc4 ("drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state")
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

make CC=clang-11 now compiles cleanly for me as well,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161357020959.15107.941362709800379680%40build.alporthouse.com.
