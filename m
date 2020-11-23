Return-Path: <clang-built-linux+bncBC6JD5V23ENBBL6H576QKGQE27P6DAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 456402C104A
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 17:30:40 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id c65sf6333879lfg.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 08:30:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606149039; cv=pass;
        d=google.com; s=arc-20160816;
        b=0SEQqLbWudmmawBA3JZZOmr5kxZwENpZpvy+vFe9cFLsdogfMaadgybq9TTsPSo/JV
         bq9mKNCFZTJtnseRWUJk+Ggt2gzwvGMGWUN/pV6++eGX1YDKjs/Ao5+wbxa8/h8p19pD
         ICF9NFnGlVfbXTP5pGx9aE5cpQ3z+v/Ru5NH8MxvvElMKM7vGn1uxxpgpCLvSOaDWxon
         A/Z+fpX4HjwHzLFtppAkQtwgNpFAo4o8TPXj/9+17CaHD0tCInC/Sr3ALytJi1/rkv3a
         jJDWxJbmbT+BZAajy9iPcQkgjEJsoFZmQwEX0s59kAXiC0L5enO8B+GF6U/sQSsBYh7q
         MYiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XB7a35uAzcDZZ2IDNJeFoY1DVPZ+yhqkkcACIBFa950=;
        b=OvrAQYLEThXY2HeI0tAjxSL+vy/1Vt0uWpVndFleJEPxMJK5lz4xmAIycmYejzzLeV
         svSDKDy4rWBjs4pxBr5aagZGZWmb7WCBBHPYQfDnOZAlyGnYTbCFWcS6E5AONyb/+vJD
         WwtjzepONX+0In94SutPk9MJPMiwGpLhleqt9pjjfSQSItJlqkysnA1xVX2QaXmWfDwD
         Mm2hSH/QjHjf1WfBim2NpjWD+iQ95W+7FfmrGAwqyG1vruOSYFnh112JtIwhWBchewB0
         KKeP8LnBoiadLW5P3/56wmDMeh0kMiN9v6vZomM0wlSrGnL1ei7Khe/dHVVeXo5e2g1W
         4Ntw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.128.65 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XB7a35uAzcDZZ2IDNJeFoY1DVPZ+yhqkkcACIBFa950=;
        b=OkXQ1wpUI7dSjJYPZVLM39TTZiOZoYkcHiYH7Qvbc1+DvjUnuCpsHhH8jbDnSZogjC
         Fw4QfAQCJOMuxwZo0FsdbKYFI8RFd5iCegbtowZtOiViuxjgyGMndChU2Kom6YjIVWu3
         hmxjQbawKXpY9InDOApE1Jp9yeq+0sz4GCpfssSCt617hArKNOzvCW78gl05+GIqL1iu
         dJytNCmQq9a8vuQ0SCi5jjC+g1occS9d6g03o8nyA+nLFGQ77IQjWrOe8LkuWgt4pHU/
         Bq79J1zaKpyUxTN9iftLRWokiv/zHAmex2P02gOazkCNU2GFynqZfxuWA94JI6qyoRV4
         xC0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XB7a35uAzcDZZ2IDNJeFoY1DVPZ+yhqkkcACIBFa950=;
        b=OMGdpgNulvqZX5Q+FItNWg5qZnUnpes9og9wIXSKZKnVpvnzP23hhRv7+bIXROWB/B
         kIy4yAln8mV1lvrsosyG0WnhLUZThR171Ism8emU7T9iKCn8IoWuchLr7lrm74h5+mrh
         YGbKwnAt+zBtQixt1fmWB+8kIeiJvgZavLm9mkiInjrK7R9lGGRTxVLi0u0Nlx+aJ9cz
         MeFdZrCj1LyVs3TRud+q4ia1IsjVijlGBwv6de9A7z1LmM+wVpl1H65sSrmAXkm1x9P+
         pyDULy9qwO7kvQRZ+Sd+TruAmquvWnqc6M6Df1R4nTOUdFsSV3ZWNiIZbdcQWPft0x1T
         NSNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332mbRrS6t3juDZnpSt/yzNQ941UuTdjzeGNJXYPA9iy6vjO0wb
	KpMhSI9nbAsNP/SvZncopjI=
X-Google-Smtp-Source: ABdhPJwd0Y5rfpohVkdB6yXiGsieX4P74Vkd71WUjC2+caHZ6aEdUTSKPPGcL10O0rk3bKBZvpHk8A==
X-Received: by 2002:a19:ccc9:: with SMTP id c192mr14365489lfg.93.1606149039808;
        Mon, 23 Nov 2020 08:30:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6b0b:: with SMTP id d11ls4772627lfa.1.gmail; Mon, 23 Nov
 2020 08:30:38 -0800 (PST)
X-Received: by 2002:ac2:5217:: with SMTP id a23mr74982lfl.207.1606149038684;
        Mon, 23 Nov 2020 08:30:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606149038; cv=none;
        d=google.com; s=arc-20160816;
        b=SFrJpxlPucWhNONU0Irt8BmnWK5Z6xh5MbSzft3UPYjHiWHRAaWzcFh/K/ruXrCQV8
         sV5DaMURG/hwb/duTSTbwBpf7B9MPhs/2v3bi0gkaGE1PtaJxEbXWFEhVr9ue4Xg8dgV
         91UYpJisGQ4UvLbtnK3YTyAeseBfwtFaJ99gzYKVzY4qzEBLLcbx6dq4GysqfAvfdoPE
         MLaDvFaZk7qJbiR7pVtq6Cc5Kb90O+ZjI/BUcUfVTAJIwkrixk8nlKreR2g2/jhTT3/g
         v5uueuKesInLUv4r4NZ6BmtT73pH0wHt+DoBYCxqx3jz2jJgAgbXa+cuUofhw0K/f0Bi
         sLbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=yaoJZoEVBYpM6WD6aCJwupRS15UUhu0CgUeEN6LjY6Y=;
        b=RR7/y0ozPhQOxlT9/AD5GfEoxnE80MSryoajv/B6v58O7+o3QvWeNvZAJWRhq3B2V7
         Y8FD3GishyKhk+/S4hdIME6+TEzp/kApqVo/bMuCiTb+H8FZ85eAr4Ui2X5vzCYFFt5U
         3TTHdfapKErt+47Xcg8GY9D6etkQGFunVbDh+NrO5wap10YM1FJ6rl83cpA3NMpO7j8g
         BxZv242BhFoTw6cnoLqOe5vYX5xKFtNZYDBukZy/qBb4wIb48nRykpvs9t0Yc7K2eEKd
         P6pXMgLZoyTN9vMt5dh4bsoEJjz3fZDdN/MGyCT6VoiftKP8IWhSN3B3zWdWweTD4+Jk
         CwYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.128.65 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com. [209.85.128.65])
        by gmr-mx.google.com with ESMTPS id 206si98828lff.4.2020.11.23.08.30.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 08:30:38 -0800 (PST)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.128.65 as permitted sender) client-ip=209.85.128.65;
Received: by mail-wm1-f65.google.com with SMTP id 10so18434560wml.2
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 08:30:38 -0800 (PST)
X-Received: by 2002:a1c:9949:: with SMTP id b70mr70849wme.85.1606149038123;
        Mon, 23 Nov 2020 08:30:38 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id c4sm22151921wrd.30.2020.11.23.08.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 08:30:36 -0800 (PST)
Date: Mon, 23 Nov 2020 17:30:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Dmitry Osipenko <digetx@gmail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] memory: tegra30-emc: Remove unnecessary of_node_put in
 tegra_emc_probe
Message-ID: <20201123163035.GA209457@kozik-lap>
References: <20201119195244.1517236-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201119195244.1517236-1-natechancellor@gmail.com>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.128.65 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Nov 19, 2020 at 12:52:44PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/memory/tegra/tegra30-emc.c:1275:15: warning: variable 'np' is
> uninitialized when used here [-Wuninitialized]
>                 of_node_put(np);
>                             ^~
> drivers/memory/tegra/tegra30-emc.c:1269:24: note: initialize the
> variable 'np' to silence this warning
>         struct device_node *np;
>                               ^
>                                = NULL
> 1 warning generated.
> 
> There does not need to be an of_node_put call in this error handling
> block after the shuffling of the np assignment. Remove it so there is
> no use of uninitialized memory.
> 
> Fixes: 5e00fd90183a ("memory: tegra30-emc: Continue probing if timings are missing in device-tree")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1203
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/memory/tegra/tegra30-emc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Thanks, applied.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201123163035.GA209457%40kozik-lap.
