Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBGXH4HXAKGQEHRWGTDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 754AB107B92
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 00:47:38 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id l6sf4874375edc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 15:47:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574466458; cv=pass;
        d=google.com; s=arc-20160816;
        b=yAioMX2RCUDqFkXyOFe6bZmIynVUHuAswOX1qfjPmBmC/0JKdnxtxIVEm4KjquuOrv
         Z9tvaeMx+3ZodvzsSmynS9E36JV+IFDtuO4nkw5ZObMjQzfDWmLlaG27eL0YInRnk1XR
         HtmC7su58Qu4XegdhMctGwDgiX7umrN27xNjkBmfLjBcYVix1tDY76NhEdcPCbLU3czi
         zvcCtNf66kEBg/BZRz5Wa/Nn+LDgZ8sH/KtQB9jnae77/Xc3kbxsh7AJZbEcmWnKYwHg
         EhEi/GkwyzkWzRbqtHTNisSGjtoptWg66h8FtmHNoWRR5AEoMeGucHh2tth3aRPs35G+
         jlIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=3s7z2CcyLIw7k01NLIjvVf+aehMdzPxnHA8WYUpRWiU=;
        b=KfC0OjA8JplkGBUCvGUIj7b8BSVUaCMr1rxDYxMDik1RQHltxQoRHUkrECLdjLxIdE
         DJCFs64C3An+vtwYBAdsyMNl6/gw734txc3Fk+uP2ukry17Bu++p6XlY8ZKMZHP687cW
         vtCu6MnBZfYqqyS60sAdmGHGjOsiC8XG3xXMKhPcILTAY9jbfGhD9JZYQTVrnOlAnUUC
         vNh1xq/9HzT4oKNAwLqsvTjERzpLKRIsj7GIUZisavLCMw3TyUd5lNRzwdimommYdFVK
         3CVIO58eVK6cg05uZHjKZnqbnjtCfvd1ln3qXEoF2ejkjhSTdrrgNTa8pnkeFVFcb946
         k3AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Q8dtbXc+;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3s7z2CcyLIw7k01NLIjvVf+aehMdzPxnHA8WYUpRWiU=;
        b=IqzlO5LljWVty+RxW+42gqaHT50vIdAHf5W8JTnCawW+6G4/Ez5PdNTLh9wQT4x+BO
         2Bpvw4LYl1YtzVBUAYTnY2OBgEETdZU06EpIQXFbjDJ3p63nD3wCOTjzmUh71CcZ5QlV
         PfTQUy2b1gT3F0JnB8NelM+v1MBIE47FTbALiBNODifpWDAwxOWnH3giifrABS2qLeD2
         nj32QqMsEay7eLw6U3XbKnqT9epyvY8VOmOBgaqSL05Wqzbf3gBL7uXbX2NBjyV6Sm4p
         7fgMRis2tBpqbROiz47WU+zBfCz9ECfkcQSFsYjTFRTiNGw1slrATGJ2E14mn68mvHlV
         QQCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3s7z2CcyLIw7k01NLIjvVf+aehMdzPxnHA8WYUpRWiU=;
        b=R+UuVP2Dd6u51UJJHjRr67pymX3puf1MRTha2HljH+cxH1tuj4f2bzs3fdeI0mxn4K
         WkhGwR6tWNOJ2PGauvePtOrGiVAjqpW7iRfktm8vImmhG6Fnv6VXmLk/Dinys8SxN2Mc
         +kjtybZ2VKxoFEmNrOsSRM7kubSLwOBKW13OjKcHZOHFsrL5xarGsvqsN33qk/8bzXd7
         enZm873W5Pn3cjYsQdTJT04CY1uu6wM0kDoHS1VpHnRKrHdT4cCcNNXHDYmJ+AMVRX4D
         KFfwFWsGjr1eC3F/Ji0cpbBg1aTfUJQLPbeM5gXtIMhFt/LdQ2XEmHWwed7UkGDybHMM
         +5+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUtZ8W3LCyfuHljbgF8Wx+EnRFYWwlU/PjrLztS+vVjmix4CWId
	wN6VZGj4y455T+DGFxOWVok=
X-Google-Smtp-Source: APXvYqzFFdYFED2chErj2YS87I5Xjaq9JtWcJMKQRE3WrXknAEqPJHKdRWwQ9kGluc5Y8ZQVLArpGQ==
X-Received: by 2002:a17:906:ccc6:: with SMTP id ot6mr25163859ejb.137.1574466458110;
        Fri, 22 Nov 2019 15:47:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:edc6:: with SMTP id sb6ls4285566ejb.1.gmail; Fri, 22
 Nov 2019 15:47:37 -0800 (PST)
X-Received: by 2002:a17:906:7399:: with SMTP id f25mr25754062ejl.176.1574466457627;
        Fri, 22 Nov 2019 15:47:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574466457; cv=none;
        d=google.com; s=arc-20160816;
        b=WU+yxS9f1mWq6V2LtSwKSsUvAEFLK+AhUxDa2iYW22AjQZmaNGonhqoMgaUFOf27ns
         HpWYW+sWrFM/UqdhOOYuIeaEuO4FjgY1M7aDnmetDTk3y2Wu/Zxw++dJRhgVJi2o8zR2
         Jwp1dz5klx4P0l8Qhh/xSXiEYO9KjETlRuQmo62cEyHmUBEKmYOG2KsZGRaJ37LtHl5t
         KCsMFjwX0l7wNcld0J+JH9jMtspgmqtI/0MtPrPyRYIVMi7eVFUtmAjsjunrUyEzfj9J
         E5hc+SFCfaaV5mPYaqhupWRawr/0jJ6X27FbKRgBH4VUoJnQ8Xjos9ulKgsbCfu6hLSy
         P3rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=BUKr4yoGpKaxYmTEmTDH/7ICwo7GEhPoNnnopGTuMFc=;
        b=TeRmoPJss+AY/yEYv0v6aZBeEG8C5M48mOaSlqebJLZoRx+WvIFu9yHPtk1YsguKBE
         sqFedeHCFhuko/BLV48a9gq2VoW6+4CL+xCpk4Z6G8bUMTyL3R0BC7hdDYcil/luzKxL
         u1ysywcWn4D6t7YgDY87AdNoxqyo9V+5ny3uu90ZVdQ6KC+Vhm6X4AWaUmRW8xbUMDUL
         3uDrXHcSUQvHnJDIjwdKhRYrTP2VSDbP528e1TTRN5VUykvBZNkIy6+5v2+b9o+IieFl
         q6wAy/7mBMUUsnkOJBonaZy0v3+uEM7BRA9lxb7oUOH0OIGjxdZgVoeJ29sKpCoDJ6+K
         M/eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Q8dtbXc+;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id x16si361070eds.5.2019.11.22.15.47.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2019 15:47:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id e9so9195659ljp.13
        for <clang-built-linux@googlegroups.com>; Fri, 22 Nov 2019 15:47:37 -0800 (PST)
X-Received: by 2002:a2e:9a95:: with SMTP id p21mr13622079lji.175.1574466456985;
        Fri, 22 Nov 2019 15:47:36 -0800 (PST)
Received: from khorivan (57-201-94-178.pool.ukrtel.net. [178.94.201.57])
        by smtp.gmail.com with ESMTPSA id t12sm3744290lfc.73.2019.11.22.15.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2019 15:47:36 -0800 (PST)
Date: Sat, 23 Nov 2019 01:47:34 +0200
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Stanislav Fomichev <sdf@fomichev.me>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Andrii Nakryiko <andriin@fb.com>
Subject: Re: [PATCH v5 bpf-next 11/15] libbpf: don't use cxx to test_libpf
 target
Message-ID: <20191122234733.GA2474@khorivan>
Mail-Followup-To: Stanislav Fomichev <sdf@fomichev.me>,
	Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Andrii Nakryiko <andriin@fb.com>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-12-ivan.khoronzhuk@linaro.org>
 <20191121214225.GA3145429@mini-arch.hsd1.ca.comcast.net>
 <CAEf4BzZWPwzC8ZBWcBOfQQmxBkDRjogxw2xHZ+dMWOrrMmU0sg@mail.gmail.com>
 <20191122163211.GB3145429@mini-arch.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20191122163211.GB3145429@mini-arch.hsd1.ca.comcast.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Q8dtbXc+;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Fri, Nov 22, 2019 at 08:32:11AM -0800, Stanislav Fomichev wrote:
>On 11/21, Andrii Nakryiko wrote:
>> On Thu, Nov 21, 2019 at 1:42 PM Stanislav Fomichev <sdf@fomichev.me> wrote:
>> >
>> > On 10/11, Ivan Khoronzhuk wrote:
>> > > No need to use C++ for test_libbpf target when libbpf is on C and it
>> > > can be tested with C, after this change the CXXFLAGS in makefiles can
>> > > be avoided, at least in bpf samples, when sysroot is used, passing
>> > > same C/LDFLAGS as for lib.
>> > > Add "return 0" in test_libbpf to avoid warn, but also remove spaces at
>> > > start of the lines to keep same style and avoid warns while apply.
>> > Hey, just spotted this patch, not sure how it slipped through.
>> > The c++ test was there to make sure libbpf can be included and
>> > linked against c++ code (i.e. libbpf headers don't have some c++
>> > keywords/etc).
>> >
>> > Any particular reason you were not happy with it? Can we revert it
>> > back to c++ and fix your use-case instead? Alternatively, we can just
>> > remove this test if we don't really care about c++.
>> >
>>
>> No one seemed to know why we have C++ pieces in pure C library and its
>> Makefile, so we decide to "fix" this. :)
>It's surprising, the commit 8c4905b995c6 clearly states the reason
>for adding it. Looks like it deserved a real comment in the Makefile :-)

I dislike changing things like this, but I was asked while review and
it seemed logical enough. The comment could prevent us from doing this.

>
>> But I do understand your concern. Would it be possible to instead do
>> this as a proper selftests test? Do you mind taking a look at that?
>Ack, will move this test_libbpf.c into selftests and convert back to
>c++.

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191122234733.GA2474%40khorivan.
