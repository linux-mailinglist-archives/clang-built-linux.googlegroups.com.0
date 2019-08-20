Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBIU36DVAKGQEKNGVTXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED9B963D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 17:11:30 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id j10sf7184354wrb.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 08:11:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566313890; cv=pass;
        d=google.com; s=arc-20160816;
        b=vCzBF0dz4KwVu0vV9Y8rEB2GCpwnRfzWNKIVEQ6CcUBGjtJL0ZiUaCAu08XvfU1XCs
         dZwSMYXm411WQauXv+CJxlhbJYIeSAbdYDBrwGtsB+4CJrZMdqC9CxMN56v1fCZCktbQ
         bT/+oOuQgT+OuFNGd2zzgGv+jEqn4+8TR8JQJkjnL7VL9aUbIF+EqGVhYQqd2qyrz5Bk
         LT1yFnTygSROdlmfE8vFyVsnEaHEUerH+oJQkPaaZqihKPH5lRUuA+g95XBfr7TVKfpm
         E+l61CzfXUrS/sqs/5Y1tuh52mZuBrNfd6NL4Ak/gMvngJGHd+5fipOOBGVCR+hqQb1A
         mzcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=GQq8RB9++a5LNycJJDsWjjgXqdV9+CroSRrVh+v4Daw=;
        b=mycoQlhWH7OSQ/FqXB/QPiD/KichZy2TtJzUed0FSvF2eNVVPMkVUsnxPHX/Nd+2sZ
         na/uokCVwMuxf2xeNjCGpPlxkJ1YtanXyh6yW/7owD0dm57JX1X1zUtwTvkbYpXh+FVh
         JbkHuNqufTfShIUUPmahNZdbDY75CKDNKDBSRK6q7drE6J1kGfZcFZFSPTXhHzEv6JJ0
         Pjb/YYRWC/wZxVaqK1FCOxTB2Yk1w7d9uf6emMWpUbwkpD19bfZ863MMZGcwZ8QiNO32
         So+zQwXlaadYHCFIAxtgZTNtfO6P4md3U4RsvaKiWYMpMlkTVwwsH9+yqmJBE92XVOQw
         YQMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GQq8RB9++a5LNycJJDsWjjgXqdV9+CroSRrVh+v4Daw=;
        b=M0fMUwJ9XDOMRDIZ3Cjve/HYY6fCOmSMFYWDrMMxvJr/nT/0f+lt7WgOUtuzZA34ir
         V0PxENFqMKgo4mnO2u36nf11wjY9AIRME9A8mIz7MA+7NEE3A5MmE48QEwdP7SFgGAZw
         rVZhFyDLzzrocCdD7vp+7KNGy0ejH3chNvr/dfD7SFOn5Jta1muNtSX+8wPjveiyKuuX
         iaOEGuPM6uS4dMxJiAWTOmSPyzP6VmV+3WvzPlXl+58+h8xUxjYy25v8eF5OoolcX+O9
         PxM9Thot8ZJqlVmVRyETF5G5lgfZZ8g3y9hKIKiFfHiKjN/O/Anjdhd33GuEwnVJ4sCH
         Hrcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GQq8RB9++a5LNycJJDsWjjgXqdV9+CroSRrVh+v4Daw=;
        b=dKAoh6fwy4CkkqMcKJ/sXd6vYNnCL9fSr6LaQeGE6xeakT0ZjqV2OriuelTei733cK
         kU67ztG+OvtV/BetQWXJplT97AwH0lackv2RfuXxPBiP/e9Zs6L81ZAH6TyMc+WVNJ+3
         zuYgb5/yzEsIlx8yQgVGGoYgR6T/AOU5SiERWEAVvT3DcV0C6HKQKGT7GO3QtYzNB6nd
         6L5Cts+bUt072Er3TI3ytykWwLFC9/7Tjuj6O4SmdZybzqjcgzx+3afrPxs6y6xWjIIx
         T5uv3hr6Mj8zWX3lHgKD3UklZ2Yp0C4tfvjNKhE9Thn2dU4xpweYtzOMSi48R6cJr5zb
         dC7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVE8qoQTh33MdfL+md2wTil96djTFhlxMlGCO97l35mLxJpa6qo
	VVQmoc+FXYQbxvu6arwdmgM=
X-Google-Smtp-Source: APXvYqxvdNbHKBHpDf/zoZr4JE5ewiMcJ2RvNl9GKtzzBxbshEtcWnkWI5lcrtMtF137qsmThzlVqw==
X-Received: by 2002:a5d:4448:: with SMTP id x8mr35848719wrr.119.1566313890330;
        Tue, 20 Aug 2019 08:11:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5411:: with SMTP id i17ls1082045wmb.2.canary-gmail; Tue,
 20 Aug 2019 08:11:29 -0700 (PDT)
X-Received: by 2002:a05:600c:d9:: with SMTP id u25mr553438wmm.26.1566313889784;
        Tue, 20 Aug 2019 08:11:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566313889; cv=none;
        d=google.com; s=arc-20160816;
        b=DCt0xgC/Q5vfaRJjQhVDb6+IpVW4cvIZr6uKg8NgUciiHTKtblnry3u+Wm+gWIv7T5
         1SdKv9x6pfQiLy2vFm846WQB0RuCn8Q+aJoSXJrlwbW0R+M4V7pPgcGS5vkGwSXGyujK
         gAUU/YD1E4Fz4O5G6Fn4Xtsimi+oYKoq388ErYznTONWOv7FmCwv5WQvZos2eFwm5Ob0
         BV/hoyawLW16kIg4VR/mVWT+TxTbyWcJbGB26HOma+oeT2woDLgYxyJm5lStM9CV6f3b
         aIy5oawIwampsxKh+W/iprgw7hugO0/Ru4HIf5RfFNQjdJfs8cDykQ1o9IrQUhj77s0Q
         3bkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=IjcmPww+qgA4CVvye/OC2HMoJacAUPaybH8UKmMlftI=;
        b=N6sHDbsuHxZM6/FwPGkQqpx6j5ci93LQyzJG1C/pvc6ZPu/U6FWIb/RSrpd2F+kYup
         l0QCwFxDVwbq9oPOehvB/XX+RePG8jt+VUxk9osDy/TW1WwmKob7Bf71LnK4ch6TA3qC
         z1uVkl4XpJ+hcPHDk2UI+6OqOZqSREQsw6/NYN/Gb5izQsLMHr1MqbAFiZV8V390KODm
         YRTwR74TOHxZzS059Iw0jr5UYmLjwkHLMJAQRbRClqdiK8pGOdHn8EofeV6pbPYoKyq/
         M1oKmdPkBBw3HY0hDL4zXI8jognw+qzU0Lr/GMe/RhYjntvydEnIddSzKrELTZ/PrKCE
         U+1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id c4si860271wrw.2.2019.08.20.08.11.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 20 Aug 2019 08:11:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1i05nC-0000ZY-30; Tue, 20 Aug 2019 17:11:26 +0200
Received: from [178.197.249.40] (helo=pc-63.home)
	by sslproxy05.your-server.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89)
	(envelope-from <daniel@iogearbox.net>)
	id 1i05nB-000Sxp-QN; Tue, 20 Aug 2019 17:11:25 +0200
Subject: Re: [PATCH] test_bpf: Fix a new clang warning about xor-ing two
 numbers
To: Nathan Chancellor <natechancellor@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>
Cc: Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20190819043419.68223-1-natechancellor@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <636449fa-9bfb-2c1e-af20-2ddac83a2143@iogearbox.net>
Date: Tue, 20 Aug 2019 17:11:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190819043419.68223-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.3/25547/Tue Aug 20 10:27:49 2019)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 8/19/19 6:34 AM, Nathan Chancellor wrote:
> r369217 in clang added a new warning about potential misuse of the xor
> operator as an exponentiation operator:
> 
> ../lib/test_bpf.c:870:13: warning: result of '10 ^ 300' is 294; did you
> mean '1e300'? [-Wxor-used-as-pow]
>                  { { 4, 10 ^ 300 }, { 20, 10 ^ 300 } },
>                         ~~~^~~~~
>                         1e300
> ../lib/test_bpf.c:870:13: note: replace expression with '0xA ^ 300' to
> silence this warning
> ../lib/test_bpf.c:870:31: warning: result of '10 ^ 300' is 294; did you
> mean '1e300'? [-Wxor-used-as-pow]
>                  { { 4, 10 ^ 300 }, { 20, 10 ^ 300 } },
>                                           ~~~^~~~~
>                                           1e300
> ../lib/test_bpf.c:870:31: note: replace expression with '0xA ^ 300' to
> silence this warning
> 
> The commit link for this new warning has some good logic behind wanting
> to add it but this instance appears to be a false positive. Adopt its
> suggestion to silence the warning but not change the code. According to
> the differential review link in the clang commit, GCC may eventually
> adopt this warning as well.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/643
> Link: https://github.com/llvm/llvm-project/commit/920890e26812f808a74c60ebc14cc636dac661c1
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/636449fa-9bfb-2c1e-af20-2ddac83a2143%40iogearbox.net.
