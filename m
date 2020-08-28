Return-Path: <clang-built-linux+bncBDE6RCFOWIARBZNJUT5AKGQEM4RHXUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B11D255C6F
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 16:29:58 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id w3sf482450wmg.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 07:29:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598624997; cv=pass;
        d=google.com; s=arc-20160816;
        b=FUZlCTvsZqlcWtrZUTb2mwt393dBt9Tr7U2+sIqkgOuDDa6UmA2mU8rsX4bOPSO8sz
         YsXzZ7Ak5uIvtfzGI2A8ajLJFx0c0oPpu0FTf6k+pqSr2B30IAkbuVDCbYOKpYbtd52i
         J+EL4rVuK/WjJAFC2ccWmlxXRzDqlwtSbsHT6uz1WiDE9AVqRp/D5c87SE6xQkb02XBd
         07c4K1l8esu3HMtyUkL2c0ywhb1XNeZXxp5hvn5gcVUk2N0ARpOl7LThgNHveKY1cJHd
         Z8VnsGBu6g/wnyREBJ9+Ps3pkP8sw5i1E2NiVEgNMRjUH5HrbuF2FgUKSzpz9VD8RFnB
         k/PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=JFabGwoQIACGw8ymmUE7MxnGLf55uwqFDWmDRb3el4M=;
        b=XxoQb0V6XLGRcd7DWh6njiR+LRhXNIQQeptPyaIw5bITTKXK9vCdF7UGYAmjPeBvqL
         myHDXQan5B4/aCCHaq2j6UGh2iNcmjJgq/4mSZF5h6GgUwilNFqUMam243k9lxeT/w0r
         xv/Ji6YfDf3NtHhmD6g1PfGRx9YpHT+OjtV77E0GgklYYcDTMB8aXcYe5JajRZCYFDpp
         tlpvOnlwCjQgVoniwsYGf6qTrsDgT8yibI9vHnFv+e2vz2k97irV1RumoGbyGgKZpg4l
         wNVeeg/M8RnFuHs+YgQXyttZrRXoT1YpGB+dvkZdot3W05tBB+Qvq6oYBofmjsNv+m9q
         Xi8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=a5gkz55L;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JFabGwoQIACGw8ymmUE7MxnGLf55uwqFDWmDRb3el4M=;
        b=Qo04UwI4jyxD0yd4epu740/jrXwe7ltNQhc9kDq5I7aKJY4wSaiv9CQSHUXTiD7e4q
         SGoEvWXmQDQGwOCQLCFvhGP22qBR8ReWk3sbdEI4FtsFRIs3TB9Vqii5UKlaYxP9+dkd
         48AcrgCqJEFKnNQE16G2vCFqBgr2+mkz2oiWJ9PPDASMFqkWeQ6UmnRvlr6ozBTm8FkD
         8Imcn/NFAG5idPqwwNKMOCYx/cVLlAd62x3i12Mhco3MYe+cqVVFYXqmO7jdU1ISxMtv
         jB3k4ML2T0qAibGVdZCS7atwSIGwwuZYwSOQSlh9JShGlzvh/JaF3cQYf7QzlRa8HBcb
         L0bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JFabGwoQIACGw8ymmUE7MxnGLf55uwqFDWmDRb3el4M=;
        b=m5xF9DKV/AgX/qGERlcDq/MSZq3TQasZvCxhYqEbEmhZ/ajCkBCyVTg6D+qvumzxwD
         x1s45UWhG6lqG9gKIiLK8Smj5/TULJ8L+AjZeTrLHnnZVPN8+crF/fbZ1MUmLILwpkBv
         IS8aJuWtEM46uoGVXvdDuwBFjFcHeuuxEZAEsTUDQjUTz8MsV/S9nozRY1q6Ez80wR05
         kcN1OfAH55zfcvem7OJcnmilq2apKEcX7wLCqU+B4EvLvP9OCGv+KdurjO4/unk0d6C+
         dQLjXUF9IhpTAR/n/NNJvaK8ptpjIV3BkyI+X0qdomzsEur2cfaRHEDoNzVIYIx9oBRj
         dsHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QkRMNAfhPCM5iGkwTK8mpjS8jrAmZAdy/ix55rCL0q/HIP4ld
	zDTSu2/mckHYzcRAdY6yuzM=
X-Google-Smtp-Source: ABdhPJzlvtkEdLm2L2YWIRx/2s0GXwvIWsR20f4/M+KZOAlVYjAYTcV5dp5oxuFpT4dIbZvWUWh0/g==
X-Received: by 2002:adf:fb87:: with SMTP id a7mr1907897wrr.390.1598624997662;
        Fri, 28 Aug 2020 07:29:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4c:: with SMTP id 73ls717229wma.0.canary-gmail; Fri, 28
 Aug 2020 07:29:57 -0700 (PDT)
X-Received: by 2002:a1c:7707:: with SMTP id t7mr2013908wmi.82.1598624997030;
        Fri, 28 Aug 2020 07:29:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598624997; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9gk/g47VSHzjQdCXzduHzv+HcnPQKnQQ40ukTxuPwfcsnN7+j+1Gnd7NJmzsfirLB
         QB3Fx4UBCxMmB+Job/XFXgElHeZfkdFZ0uPPJ8yxe0ZdWthiQ1W9qRXMFXddzPgsPKhW
         nJP2/cf2ofUaFnLElrYL35HuezSTcIej+ml7JSCiyNOT+y5sAhKM0gNLl15xpFWMGPsu
         +GHKSQ8RpBPPXmprM6+P+dhnpKcYxqSeqcDN02DNZpSfJJRDx+63f3BEMXs087mnIUuS
         V6LVLJa7n8s3MrXVjYpOq4L8eN6yJkwpzkt3Ue34h8p0NdquDTj9+g7H1fEFqlrmHsn2
         5nMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QhL6kVPpf//E0eP09dB94FXNl/JWUcmK3etmXLgf2zA=;
        b=ENQqdhDwSAqWRJ0+X2VM2vWLwnUpRlFYQNOhqr8yjEBgda8i02effosleagSH2R/LW
         KWXVsBzQcRKp3dTqrOSYgxsraJFiW2ZL9GLupdFPys1vI1SYwp3E4gpPay7UbGbwYynD
         5jJJD9YaUenL8ybvHtLAVGPARuk4ZVamFHHqXTrW5TRN0SxtwUi83mGYfPhx+VRU1mpD
         h72tnZ4UyFDcYujx27eSY+R+7YtkTGGl+ENi/RJ9nw6eRRHjHudbJZmfHLIAVaubteoT
         vBNcY/+AevHLQi/wVMmzJ4EYerVAWSnB5VQF3+pTnNJBzKp6KzLoI23PWSrW6Vj4y2Aj
         WMvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=a5gkz55L;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id w127si79930wmg.1.2020.08.28.07.29.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 07:29:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id w14so1542495ljj.4
        for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 07:29:56 -0700 (PDT)
X-Received: by 2002:a2e:558:: with SMTP id 85mr1048525ljf.293.1598624996774;
 Fri, 28 Aug 2020 07:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20200827185829.30096-8-krzk@kernel.org>
In-Reply-To: <20200827185829.30096-8-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Aug 2020 16:29:45 +0200
Message-ID: <CACRpkdb-AfyD-E2yT5PEBw-GsteLw9HK9JLiZajixNBJUquR3g@mail.gmail.com>
Subject: Re: [PATCH v3 07/27] Input: bu21013_ts - Simplify with dev_err_probe()
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>, Sangwon Jee <jeesw@melfas.com>, 
	Eugen Hristev <eugen.hristev@microchip.com>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Linux Input <linux-input@vger.kernel.org>, 
	platform-driver-x86 <platform-driver-x86@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=a5gkz55L;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, Aug 27, 2020 at 8:59 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> Common pattern of handling deferred probe can be simplified with
> dev_err_probe().  Less code and also it prints the error value.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdb-AfyD-E2yT5PEBw-GsteLw9HK9JLiZajixNBJUquR3g%40mail.gmail.com.
