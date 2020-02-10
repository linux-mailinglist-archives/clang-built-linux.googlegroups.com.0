Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBTOTQ7ZAKGQENRAKZUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D5D158638
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 00:39:57 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id cy24sf7591765edb.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 15:39:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581377997; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bu2cCdrm6BN6Ibnca96aei9IJIE2V7T8y+V4Ht9rIRW6JbodnLBBsMD1/7Bx5nHrTa
         FbkPNF+6usJFM3iK6hA8xaTtNZjXMeIJ0O/TtyKqzzmjU90I5cH7fQWiQSoXzXygH64k
         YGyl9wbfDF6DHvlCjTHch9BVa0Oa8CJBNSbSalriuxiUbT52qDHR1OJaL3QhI/ApOkBI
         8ev9R8cL7ahIUolwCT4SLt5hK5GyyFYgriSMGRi0TG2IhdBDa5UbQ3KUD0UUVcQhunr/
         9gT3SKcnpbwHWplxUEABJ2RUgSwaWt94dPj4Fc3/w0ycvCWPlJ+fXXLECCvpkzvjcK7A
         nqMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=2CZJFDPH5KE0Qlervg37usxP9l36ADzSe7Mf+kl5QO0=;
        b=TWtEtweNlOepnZVze+Z3p0xOpLU+msULWw8+HdUMpeWc9Xh5WJBCwNB1qqgjXljTtJ
         i2Vt/QjI0LrTQfPgwRLYJHvKm0GyaDPikQ/QsWdXHJB4ZOGYjX1/lZsH5vjDA0nGPKGC
         xOoPT7jHQeFKMW1RLMnH/u1SvaN1RpyVRWZgeVwXLvZhusgiDkgyPOfkUof8iNOZPhQk
         JR18fEF1JBo0hEWM4Ew09GVXzvPqFcC869rq22uiXtQ0/EHvyErtxZX0RjKzf/HO1nR7
         hr8q5c4HcTG6FcwgSxwGoxmgWS7zZbh9A4/xBqc+hU3yRw9+OXTaYVf9Ios0Ooc5eUXj
         ns7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2CZJFDPH5KE0Qlervg37usxP9l36ADzSe7Mf+kl5QO0=;
        b=L4TMs4w1FxT2MntEBxV7edOxZhh7BCqusjkXkrXiOvv/J1R0F4dbdYkXfDlnWXSHgp
         xIhYSCfG9aE6rxMgVNGbDp1hCh/PmyzEs8EWMkgVeoarxXMOhY/PeEe85ebZAbEg73Zm
         2X+OUH6XjwtPcVlL3t0E2Zr3a0wYcX64/SiJtPu6poFeP8997mVfd+eJCKjYh+VkSGUw
         Vr+Ur2t7RcbV4lb4iTXyguHCdvLjobIEawUxErdFHFJ2YL8pfiRLv0FiSlGNTPOhaqfD
         Mw5wHYeLcfzTkwGrZxvUD0AOvi6UAR/OAPXowFancr9W0YIib/W9wvR5Ebu5azIgEr5q
         ZbVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2CZJFDPH5KE0Qlervg37usxP9l36ADzSe7Mf+kl5QO0=;
        b=ayqgsOV30+OceLJJ68Pj2y/ZkKxUiMDPi0iyGK5eTjcPF33505TsBka7VgJd4k5OjK
         8D3W4sKeXOkqj4vVaau+jtjhEtQ1+kC8sQvbxsjLZh3YbMVBNOAvd57+p1Ngt4KwaGIA
         w5ahyvtrjvDzeg/uDpJ/t0U7F478c8zduw+/0Bh134lSY3HewQNuEvprg3jGCmYlQm4e
         krxOxWdV8CatNn/lBQayZgbIJAbSmBbiJnKyMJ9sy0cUk3xBOLj8XX/KW6143mf5ONv+
         EkC41GtZNoYMPZOsro/bsZjjN1n+JNGQjofilCDL0QkPENo56i5Wcv+0WcSv09JUUBjK
         a4Vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWce3Q02bnRUKz86A+lEdQWtxwgoWFwcGA45bPRmI6OFYeIxD10
	XGvcU9XW2bcUt86bFAaEXLQ=
X-Google-Smtp-Source: APXvYqxmaJ5z+b2P8GvIwUlk/Ib4jakZne8ACdDqazXxq9WbUpSXyQpC6TF8a++4IGK60Xo3aTmAag==
X-Received: by 2002:a17:906:1d50:: with SMTP id o16mr3275740ejh.111.1581377997118;
        Mon, 10 Feb 2020 15:39:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d30:: with SMTP id dh16ls4582760edb.10.gmail; Mon,
 10 Feb 2020 15:39:54 -0800 (PST)
X-Received: by 2002:a50:f704:: with SMTP id g4mr3500543edn.123.1581377994656;
        Mon, 10 Feb 2020 15:39:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581377994; cv=none;
        d=google.com; s=arc-20160816;
        b=lSxww06JbaMohpL5aTpGR+7jU3KuVGnE++nTLQvBXXa0FGisDu5RtGJnO/ywFGJCmS
         2SEZKRAC9ptm2gCtZ2l62DpOivQ91G3qiN35oPIjUivsK//XNBdWF2oNqfxEBVU9iNaD
         60Z7BjEckGX5QofBx0a+35k4Me0DHptvhjZsHZ7m0J6rgtdDaO2YIDyfx+8pFuSu5JhX
         5pItBNDLoaouP32o8UWKbpkLUYq0hCcIF344oUb15kFKn6086aSnTINX04uHHHlXnoJS
         rAQGLY8RaGk3VhLXNMb/TtF3nVhEFohVaYaNWsKkcfijynUJf0gR8RftshNzu/X4knl4
         kMeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=dKfPZDkt2uAgy3U6ZeUs6F+HVZTLQqFv1ZT6E8u8SOQ=;
        b=P0R/Q6rn46Tjuup4Q64luJTwFeNvkDKDaZJyU8ANKQKyEo+at+3pvRi6FLJmTkBKlz
         mANZtrpCtetPq1RVj7I/1lF/wRdGZNcqTJWpLqaiQT1U7LZ0FXSC+DQNUMNRVvpB6xyb
         Bilk1Bg60WKh5xClz56jsITGt9+DrnvlwuUqoWw3+ufBNWmFt3cV5rcc7wU5xYOl6d6W
         6hTX/dKiI/PwbyrB3+oLF2H/6gZtaEqP3IMNvPLa6/f/hWM/hU22tqcSzPORalfkryve
         W0yVcKuOXYmuedqXvh1fjk1u3/1JrhiHE06H1UM432MG23GCJI8hbI6rItONtSN1Rlnb
         ndAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id df10si116438edb.1.2020.02.10.15.39.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 10 Feb 2020 15:39:54 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1j1IeY-0000aS-7d; Tue, 11 Feb 2020 00:39:46 +0100
Received: from [85.7.42.192] (helo=pc-9.home)
	by sslproxy02.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1j1IeX-0009BV-R6; Tue, 11 Feb 2020 00:39:45 +0100
Subject: Re: [PATCH bpf-next] bpf: make btf_check_func_type_match() static
To: Hongbo Yao <yaohongbo@huawei.com>, ast@kernel.org
Cc: chenzhou10@huawei.com, kafai@fb.com, songliubraving@fb.com, yhs@fb.com,
 andriin@fb.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20200210011441.147102-1-yaohongbo@huawei.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <4393e977-0801-6137-208d-f2ec15dc5ec9@iogearbox.net>
Date: Tue, 11 Feb 2020 00:39:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200210011441.147102-1-yaohongbo@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.1/25720/Mon Feb 10 12:53:41 2020)
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

On 2/10/20 2:14 AM, Hongbo Yao wrote:
> Fix sparse warning:
> kernel/bpf/btf.c:4131:5: warning: symbol 'btf_check_func_type_match' was
> not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Hongbo Yao <yaohongbo@huawei.com>

Given this fixes a warning, applied to bpf.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4393e977-0801-6137-208d-f2ec15dc5ec9%40iogearbox.net.
