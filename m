Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBZENZTVQKGQEBZUGY2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A16AC3DC
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 03:24:53 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id m17sf1773373lfl.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 18:24:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567819492; cv=pass;
        d=google.com; s=arc-20160816;
        b=JK4ETbEPrr9mvug7n7iugAwCwmFVVIdovnyQKjgmFKdQFFsBngjgafZJwqcHxT5VPH
         mHWsx/Ot/i2Rd3t25k6Qfsm4hqRa4XJBxZ4rzhWY3ylAgqdlQjxzCHO0bEQjdkNCd6pd
         IqHbaJ2jK+Viq1uMOHB+TcrbXiwNXpGR8HeApnX5hXoBpY/+slB2UvkpLC+hubBltNsZ
         UZH8/t9LjZr9HA8QLZA+Rz2Xp1y0CfrChzlj4B+70h3YnTTz1tFw7LwPpxjOJ6K7a3Uz
         22iATCu/RC4LY85UTTIf56ERgHFn2nxJIBg/29S8X1szCtVupe4hLLWjRewnZFjYR4xG
         4lQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Y6R+uzZPtFWCGmVEm7dTnpkiQpGgvYOcxylPN9wNeis=;
        b=EgHXlvwoDoZV6V7zAekjhwYHIp1+rFEWP3q5FgmBo1ze/K8XL4eF6Gj4ed+AStWgh+
         3vJcdRzdp9p9qst8D6Ceh7y7yG6pQyi2pmRSdXaziGhBFwz2xLX1E4iyFXsC8p4SLNc1
         zaJ7tanf2pNNy3XGrssX/FNCiNbeDUc3TLSxF5NJF6qKl8nK89Rc1QwO+/nGogaOwvW5
         P2BG23ik8ZcEwxbfr9hzFPpnvM0Vnd+HUvHgJrZt8ld+DBhUi4tOVp+YtyyBVbzRlIp3
         9KQxu2/RBWTRwr0VYx7JLDl8szjsrBieMwzN8qrpIVPMQhPc3wV3C/mmGjDpLCjMvC+d
         icCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MPK8QXdT;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y6R+uzZPtFWCGmVEm7dTnpkiQpGgvYOcxylPN9wNeis=;
        b=IRUKsnbvcJaJ+Tn9pm2J1EibHLoUt+uuFmZq6OwbWeFYyJXaVCrSQsdxxyxwu4aJEj
         SvXpqPphp6sPAEA5n0b+i0TwmN/nbulDJtUsnmi9geFnUwFv7SeCEdsdMgF5Pr4Z9UHT
         LQ/VrdrFaJRqO8zZClFjXtylm26avGDYGlqdjVbihn9C31GpcWwZPGcbOf3oGL5rMF47
         SL2aqi0zC9eCiywFAzC7S4eIcv7qPDWAjhgUFbUKn7l7bWnCpZfIz0Owm4oznroB7SyU
         EUcb2c+8viCfryIMFd8/FLEkgOiW6dTBKDoRk4gE6N2RtrlQ3TIUCeaW4YUe+S7OKdPk
         JcBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y6R+uzZPtFWCGmVEm7dTnpkiQpGgvYOcxylPN9wNeis=;
        b=k2o8ycpRVV2L8g7lDpOtOhV2fU5HkAO3pJhMcjXbrYfM9qJy7BclCNVJ2lxCvRLgrH
         CqyouyCfld8ou7E9dHIR8Yv6vBah+kq11ptCPr2q+HVCPmnVDp1ojInaaeuCRfFOPkpf
         GBAL+AY9omlV2o4tH0k5NDI7wWe7Tg74/2ARLF8uaQvvZRmsyev4yk6fYeqBZBWI/uxO
         F+5BLtuodsjc7yi8C9tBbfweKWp8Yo96XDS2bvFqsFDKPQkB/E3ln1o9pp5VLHBqVgEt
         83sngk+ocb4nfNcqfym5MquoSLK3zVSO1g1jOCARkjOQIhAIEHzKx3+rulJbtAXp5+Gg
         MO9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUtV/BHiElUit9O18ipSW8FIGrg95N4dOgnUIWXlqBleqRLZFWL
	+8y58xKNSxldoHPralPeee4=
X-Google-Smtp-Source: APXvYqxfkUl705Th/x81zNu+d5DV8OXoIUY7YmHLCwn8MhlED4Sp2tqdysUDHhMhXTNtzZWu15EVOw==
X-Received: by 2002:a2e:58a:: with SMTP id 132mr7146802ljf.132.1567819492894;
        Fri, 06 Sep 2019 18:24:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5ed0:: with SMTP id d16ls799182lfq.7.gmail; Fri, 06 Sep
 2019 18:24:52 -0700 (PDT)
X-Received: by 2002:a19:8c1d:: with SMTP id o29mr8542404lfd.73.1567819492450;
        Fri, 06 Sep 2019 18:24:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567819492; cv=none;
        d=google.com; s=arc-20160816;
        b=zJ1etDQbcrwAbtJYyZPng0rSHKJgYDK7lhbgOb65G078aDGzqUkS6eNjuJBtVtx7J9
         VEKGOOnx9jZBWYtFF5T5zTGIEvHjxSdnyk4qpV+e3FEdHxRxFSJXR00dxPv4CJYdoAAZ
         Dm+87lFJCdxMuNDhjsPVPv+DLwsACO4s3XevQFBPMvA17hjHJyMmpG8wfXFGRdR8x2gh
         EOvDzNMjGAuCIOHyGF33OZ8sftRU/CfyN9SzFTvxjRDeSitIrrL5RV1vPGTxwUZEBCSI
         6eRgDg+TmdQCROIWalbq4dYxvTyCQT698a1rO49O1BtWvPgSpPhgqEGA0hCBTMW7pPXD
         o+jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=dEvfAeH1+QnRAS4bDZMCk0ZaJEhgzrd8FSpH8DNHr7E=;
        b=XOnlHmkcdCG44bfJ+3kimarCmQPbRw6qnKcSZxyQBtsu407TJQqGJt/KrNunxgYnb6
         OA2Tf0esd/EuH6cxl+pjbIUJ92ZHkU1skLfepCLURFQh0WNj7Ji6LqCC69jBrkcjy0fh
         EIVCoQAyRYeagKh8r2lSK/C/xqqRsGZZEDC5usaAjrM3RBTr8YCPkLVFm0bAlH6ZLWMx
         CIN9APgMNkcgWKp4Qan8wLrBc2KQyOVpgq1oJieHPMgUwGNmmiWx5y4p1PxDr3JHq6H9
         NMGeEJmX2SN8gdVVrnJ45oEAnb1AE9xRCRc2uLwoyCTO6DMskGLyyn6qAgBpswav0GXZ
         jDcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MPK8QXdT;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id c8si438765lfm.4.2019.09.06.18.24.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 18:24:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id d10so6494698lfi.0
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 18:24:52 -0700 (PDT)
X-Received: by 2002:ac2:5451:: with SMTP id d17mr8094711lfn.77.1567819491989;
        Fri, 06 Sep 2019 18:24:51 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id e21sm1413684lfj.10.2019.09.06.18.24.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 06 Sep 2019 18:24:51 -0700 (PDT)
Date: Sat, 7 Sep 2019 04:24:49 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next 8/8] samples: bpf: Makefile: base progs build on
 Makefile.progs
Message-ID: <20190907012448.GC3053@khorivan>
Mail-Followup-To: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
	ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
	davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
 <20190904212212.13052-9-ivan.khoronzhuk@linaro.org>
 <20190906233429.6ass5x5inaypvbpr@ast-mbp.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190906233429.6ass5x5inaypvbpr@ast-mbp.dhcp.thefacebook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=MPK8QXdT;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Fri, Sep 06, 2019 at 04:34:31PM -0700, Alexei Starovoitov wrote:
>On Thu, Sep 05, 2019 at 12:22:12AM +0300, Ivan Khoronzhuk wrote:
>> +
>> +If need to use environment of target board, the SYSROOT also can be set,
>> +pointing on FS of target board:
>> +
>> +make samples/bpf/ LLC=~/git/llvm/build/bin/llc \
>> +     CLANG=~/git/llvm/build/bin/clang \
>> +     SYSROOT=~/some_sdk/linux-devkit/sysroots/aarch64-linux-gnu
>
>Patches 7 and 8 look quite heavy. I don't have a way to test them
>which makes me a bit uneasy to accept them as-is.
>Would be great if somebody could give Tested-by.
>
I can try to split patch 8 in v2, but not significantly.

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190907012448.GC3053%40khorivan.
