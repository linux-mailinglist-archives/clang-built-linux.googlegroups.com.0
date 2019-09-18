Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB4U6RDWAKGQEGF4F7WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A08AB6203
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 13:05:23 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id z24sf1469568lfb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 04:05:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568804722; cv=pass;
        d=google.com; s=arc-20160816;
        b=djL39i5RqDWjigrAtbh1aAtEN8gXi4gANOUoszxXPukIEbwpu4wjsaZnFIAJcbj5mm
         ChAdeubKWsaDdc6vXCSoBIMsCk2UAHelDEAVxdFkB98PMMMv6/KPNc4zH5ULg4Pgyw6z
         cknt7l2ffYGdXbBHe+5bMMbhGeXO0rtAXTf8anXfR61TysVwgWfnUA/vn5JYJ5p+Dh3a
         A146WXyN8ytj/cGAVisEN0/Sok2x2Yt86XoQIZrjhmLwiKS6vAFSSgDWeKMcy6xUNsH/
         lLi+MJqJdHPc4Dx1iFM3OnEyAm9IUDjeux4WdRs8DEuhjTnlXS9pp/fl7XYSyyKqw4Kz
         MqVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=SwumWyPD9KEtUgVjNtjUoiHx6elb46yhMq+KhOz4rzw=;
        b=tNKFpmCL7ph2jtUOXXbO77X5UqVQSlg/1uGMdgJVrVwOVsFq/5OZ4XVIOGmNNGGKrD
         jU7Hp53LyMK8YFati6ZsB9yBLCc2k36SozyC9eBjofr3pTeUE6piBFE/G6ulu02XaAHf
         DRbPlYDf2cf74cbDsFEJzJZISMHVIiNUDuM1/uVwgsQx26NskSqCXJw4IInESh2hwFTn
         qPbsx2QFxhIGhBAdZ6vfyCOpw588smbTuZbPn6x22luZR2ZOFSPXjky2T3BfVXlJJHWM
         8Uv4Xkn+n46BivYOVWdTtCuzTGI+wfw1zhOVgcXwRn3onVLsWS805tay6BmJ8/a67Msz
         isVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=x9PsKe2l;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SwumWyPD9KEtUgVjNtjUoiHx6elb46yhMq+KhOz4rzw=;
        b=H0lNeBMrFu3239qARpOlIU4DgSzHctpz030ijq2A5QqB8FnZw0ujmRuhq+isjRRXds
         i1bvk+7bI7QuGsnpE8AErkCn83O3yXcEfR3Te10XyEdsUuBrshkIxLdBlvLFt0tRktUf
         QATIFDXiIVuAgT2Z5eCPrmBSxzxZeG1DWID+cyXtKhyXHCFI+KIickT6Qgbh0JMfI51e
         OgzEe9zC3pn2iE753H/Bo07u8942CNe3zaYNIq4rxozvuiq2tUPe5gv94U0D+e/v+G1h
         Nj4mm+enN7wf9y2eUdSngCwXgZoTHeinRQlzMKfj4k+JrfnwpxRYYWsxDmDQMmDiWaRX
         gPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SwumWyPD9KEtUgVjNtjUoiHx6elb46yhMq+KhOz4rzw=;
        b=Uvri+wCgweiIRE7GY1SeZmCcTji66gczzNRl4eRrW4YxFK/IJUnImAEyvp5T/PKQNv
         6MtTlbuqeKQy9LFDt/dB6W4dDM3WQuxeOLsflLDXIjWy/x617442cYtvhoJJDViBDrZF
         11kqnDeQ4i53kCj9BALINlB4Fa3JbVfL6CEhaRd/cqVLU8hK+GBSvtvBcsKWc02KebUP
         2QkWNNOLzJqcR+IWNjQ43LwACY158YE7J3Sa4K35Ush95uk4pLXTeHfdrW050auVlaZw
         gCyggA7ox+tqIl0C1lG0DGTvkBqjPPwlUvZqWBX9xE/9wFR755ddwsbcYyEeFQ8GiPa4
         XOrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJ+7Pho5lqc9BF3HgkC8sBeSRowPfOnXtWF1S0hNj0c40xBXxW
	nmnIX2lGgIq6fc12uXKZb6g=
X-Google-Smtp-Source: APXvYqwdX5RGBwQM2CG7qtDybgx4JDN+X0a/U2z5n+S3Yj5m6EShbbo4khiTrPjTP2SoDz9oDhLn1g==
X-Received: by 2002:a05:6512:251:: with SMTP id b17mr1932612lfo.35.1568804722641;
        Wed, 18 Sep 2019 04:05:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9246:: with SMTP id v6ls10459ljg.6.gmail; Wed, 18 Sep
 2019 04:05:22 -0700 (PDT)
X-Received: by 2002:a2e:8805:: with SMTP id x5mr1903518ljh.102.1568804722209;
        Wed, 18 Sep 2019 04:05:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568804722; cv=none;
        d=google.com; s=arc-20160816;
        b=ZsvrbaXaCEW1FESpg5/FZ5N8aL8zNX7o7O0ZA1ivpDFL1iilLK8zIMehCZfSI7lNni
         QnJFI8Zh17bqFPgYOQWofFb5Ue7wAe23/oGJEElAuG7SQakay2ufHQgP9u1R5pKjKwMn
         pC+/FPKJFMVy/ihyXRHn4v4QTe3Nzb63LhTD60uAfJbEf/9mO3f0nQ/c4lsB/uhwDsCB
         PScBpnvGhNxNe/uNxE/bTx1ZM2g7rCfKZYN8vj8PqdcFuBWnPqlNogd60XZQi2QJQJl3
         MY7Z4spgifm78SBIPfCU6pmGbS8sTXbj6OpXTpZZ7OLCkbpfvW7OZ7TG06C8AfXlMqlg
         5kbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=JNIOOCl1FIlLK8OEQrCWm+4MRTLInoFaM8HwgPYRrSI=;
        b=yYScsNA1gWp+6F+ulfTdYBGPWjvW+NB3928k8xT4sWP6m6zJlYPuLnzRotJKKJzb9p
         4rSVUCOALfJZD+P/JwP0CWQ56DUfeGE/oyHmGnqirlcTjuRMv++oc/TJ5GUHXVePotgU
         HI7IOFgG9OjWXMXQ9DSlpykNUgNIyvfFxn1AUsT8Pi9454iJLxe9PemCpwL+pOxOWzng
         EocqhkGjubr0OMAAa0o1QdsLPyLlI+65YPJxCOTjrIbFyW3Ub/28CUJWqB413k35CNUD
         PNK/LzjNS4Ce9nCYUOLd9x2NWWhUR8dIVFyuOge61yJoCutapeXQ4/aZFTYtYRK/hjv1
         Atyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=x9PsKe2l;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c8si439427lfm.4.2019.09.18.04.05.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 04:05:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id m7so6099662lji.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 04:05:22 -0700 (PDT)
X-Received: by 2002:a2e:9ac4:: with SMTP id p4mr1793545ljj.206.1568804721863;
        Wed, 18 Sep 2019 04:05:21 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id s7sm959288ljs.16.2019.09.18.04.05.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Sep 2019 04:05:20 -0700 (PDT)
Date: Wed, 18 Sep 2019 14:05:18 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
Subject: Re: [PATCH v3 bpf-next 11/14] libbpf: makefile: add C/CXX/LDFLAGS to
 libbpf.so and test_libpf targets
Message-ID: <20190918110517.GD2908@khorivan>
Mail-Followup-To: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-12-ivan.khoronzhuk@linaro.org>
 <CAEf4BzZXNN_dhs=jUjtfCqtuV1bk9H=q5b07kVDQQsysjhF4cQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzZXNN_dhs=jUjtfCqtuV1bk9H=q5b07kVDQQsysjhF4cQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=x9PsKe2l;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Tue, Sep 17, 2019 at 10:19:22PM -0700, Andrii Nakryiko wrote:
>On Mon, Sep 16, 2019 at 4:00 AM Ivan Khoronzhuk
><ivan.khoronzhuk@linaro.org> wrote:
>>
>> In case of LDFLAGS and EXTRA_CC/CXX flags there is no way to pass them
>> correctly to build command, for instance when --sysroot is used or
>> external libraries are used, like -lelf, wich can be absent in
>> toolchain. This can be used for samples/bpf cross-compiling allowing
>> to get elf lib from sysroot.
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>  tools/lib/bpf/Makefile | 11 ++++++++---
>>  1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
>> index c6f94cffe06e..bccfa556ef4e 100644
>> --- a/tools/lib/bpf/Makefile
>> +++ b/tools/lib/bpf/Makefile
>> @@ -94,6 +94,10 @@ else
>>    CFLAGS := -g -Wall
>>  endif
>>
>> +ifdef EXTRA_CXXFLAGS
>> +  CXXFLAGS := $(EXTRA_CXXFLAGS)
>> +endif
>> +
>>  ifeq ($(feature-libelf-mmap), 1)
>>    override CFLAGS += -DHAVE_LIBELF_MMAP_SUPPORT
>>  endif
>> @@ -176,8 +180,9 @@ $(BPF_IN): force elfdep bpfdep
>>  $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
>>
>>  $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
>> -       $(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
>> -                                   -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
>> +       $(QUIET_LINK)$(CC) $(LDFLAGS) \
>> +               --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
>> +               -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
>>         @ln -sf $(@F) $(OUTPUT)libbpf.so
>>         @ln -sf $(@F) $(OUTPUT)libbpf.so.$(LIBBPF_MAJOR_VERSION)
>>
>> @@ -185,7 +190,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
>>         $(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
>>
>>  $(OUTPUT)test_libbpf: test_libbpf.cpp $(OUTPUT)libbpf.a
>> -       $(QUIET_LINK)$(CXX) $(INCLUDES) $^ -lelf -o $@
>> +       $(QUIET_LINK)$(CXX) $(CXXFLAGS) $(LDFLAGS) $(INCLUDES) $^ -lelf -o $@
>
>Instead of doing ifdef EXTRA_CXXFLAGS bit above, you can just include
>both $(CXXFLAGS) and $(EXTRA_CXXFLAGS), which will do the right thing
>(and is actually recommended my make documentation way to do this).
It's good practice to follow existent style, I've done similar way as for
CFLAGS + EXTRACFLAGS here, didn't want to verify it can impact on
smth else. And my goal is not to correct everything but embed my
functionality, series tool large w/o it.

>
>But actually, there is no need to use C++ compiler here,
>test_libbpf.cpp can just be plain C. Do you mind renaming it to .c and
>using C compiler instead?
Seems like, will try in next v.

>
>>
>>  $(OUTPUT)libbpf.pc:
>>         $(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
>> --
>> 2.17.1
>>

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918110517.GD2908%40khorivan.
