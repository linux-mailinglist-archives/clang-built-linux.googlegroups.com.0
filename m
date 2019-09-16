Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBMUMQDWAKGQEN7LH3WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BEDB43AD
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 00:01:22 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id t84sf352112lff.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 15:01:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568671282; cv=pass;
        d=google.com; s=arc-20160816;
        b=hkkITPWF5xDTHp9uZd7KoWWkq45WqauAB2zY3j/9HNpRFv6Ymz1BwleohXH6suBvJ4
         69SjQHtBPGLCBEXynK5NeIIzTSDTraGBJlFhCBesfrBw6Wp+q/I7JFg04g73Zbv1OVDq
         GFvnY6OENUN8iVua3M0ENEF9Rf5QiwG1jtin7JyxLC+/VCNUofP+43MGJq6qtbtzeNU7
         FPyF5Q1cMipBqg7isiqy63zfklW/JOTQCB7sPpo2fUmuvU6YsdWjwoIE3c8FXbgHZNM3
         Mtn2ZEzTOHB8/t82e8Ra6jmXvCV0VFC1mhIxFzYnF1iXBa4YaSkV6F+SgsowEwRQCfuc
         bk5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=T7SDSC+FQChrNmDUQuUjKIdERb3H0yAQR+7sCPe27Q0=;
        b=aHHNGKkQIV1jSxrDbIHmA6uzao+LiD2X36GCpZfUCptCURCThxzPElTBbKtjuITdru
         6B0dpDZXakkfZI30BrqFzvcYmwbCFpQlJ1UH8NIEdCiYCDlz2bscoro0LDEm30Byhz8z
         5XBDanf6GCjecEx5GV4NnYXe/8PbqUGps6QtLxgVytxQMJtjX5ND4v73srYNSILeTfjo
         B45zhqe9HT8CK4eS+aHQ9kS2YC8fLGX+4iCnM/ELUf4ssmcpg8/bCrAPSYQo6640ajGJ
         fKbEJysT1YrKMGW06cg4Y4XJnrB1ZGoaRMXYPioHZh2emOAtd6iw5VXc31g97IHFjab1
         rnHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KYd1qA46;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T7SDSC+FQChrNmDUQuUjKIdERb3H0yAQR+7sCPe27Q0=;
        b=dnByvkc+7aJh2T1b3C0hWCm2ilqfvN/tz9RUwhGRsebE1QXGvrw9oa65/LBHlTzx38
         raqfpQ54NkZuBItFtOZsmHIY7JY+8Cpym1bcFWq2IUyKAG6fmnLnOYaa2dZDiFQRyAuf
         zFQH7h4bsUSodizcEW2qybr6endBa5HKDhkRTFoOhLKfovEvgv2eFEr9Vt/6zf4r9tz6
         HZZo5CGXhsul4N2eKSlW23lnyoVab0FsmV4HvUTEAKXJb01N6pyRlp1AwYw2rhWXFboW
         7kPdZ82/iFH7fKX7ShdyN5HRgpaEczzL8vqD9AB7qhH1P4iADHAMaAwPS1h2U+DJZp59
         1UTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T7SDSC+FQChrNmDUQuUjKIdERb3H0yAQR+7sCPe27Q0=;
        b=QsDAEA6IAS51GMV7wOWXVcFni8nYVrIgNm3yxSB1Aj3uzbqoLfeeHM3CHUWcZaGStv
         UflEa7IyxNbJz7Do04gGxOIv0ucGaPdhR8mR/ZosptIPbm0TKRvKWnO+KZkWremRb0kb
         UPwxrr4ntc6ogew2wiTqWMcwSpvuIe0ux1v2kOdDPHXfiQV3ancdRMJ9CEz3/2C5kzht
         1y8mknnutZszsi/j1bDt0fek86+X0Vi78f6pmt458gspU+RIEzwQD73co1kIXHa2R6d8
         ta7/uBjm6D82Y4FadgRlS1O15Y8sItOabLrWCzNsF5K5M2f/qJhG0xgbuD9zGA6Bp5+y
         v8ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVX3125SNhwEaqpTgtUdPtMZ6d2jX2TGSRY/lQIqUH5OAvt78x1
	IBmLBQVGSByIjMqpVuoS77o=
X-Google-Smtp-Source: APXvYqzYehi890IEd0fkQ4JftNoPjOmoCNTaoMzu6M1Ts9hLyViNTbt2fBu7qvwL41ShFxnKJ4ZzqA==
X-Received: by 2002:a2e:8147:: with SMTP id t7mr50250ljg.75.1568671282192;
        Mon, 16 Sep 2019 15:01:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3613:: with SMTP id d19ls129604lja.6.gmail; Mon, 16 Sep
 2019 15:01:21 -0700 (PDT)
X-Received: by 2002:a2e:9159:: with SMTP id q25mr40425ljg.225.1568671281716;
        Mon, 16 Sep 2019 15:01:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568671281; cv=none;
        d=google.com; s=arc-20160816;
        b=sx39klqsC1qY5Mjb8jM/Wy12XCFRwSXoh806XiqW6T1wLComGy/oam44BVVgMf10O+
         bZfZW7g5OacMcnR6taV5+hEoDgOF/6lUJRb74f+BOi1g/nmHjRYct70mX7kxfQCKmqXZ
         Tf/LgtvazTZzEPKHGrgE61lL85UYPYmdEhsnh48SqsjKMSfOEa9vIuRIpMCEBwQYr5L6
         IgnE1pqJj2hkVjJLZ1ySARPWcqlduxJSMYnPBDU99ijvGJKrKtsbIFhK5MeTl+5bPenT
         s0G1VjfGgqKQr09kBOisAYHtEQzhtLrwKMKeNeNhlkMW2y4P1Z5jfD+TJ7i4tICHzB59
         lWwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=f3SMr7nW/IIKR4uf3MqZBa7hhd+3LcyORNLugjWgB8w=;
        b=DhOp9zKv1WtJpP70WRj+26cVNKlhJPD4PScJP2VXaByVAX5Iqk0H5fyudOaUpYvoG7
         wIpNuGE7xdZA1ZY54zmTsj8zHcF5jK6w60Iuah7MdmEQU7MJwEaZ6y4XzrFJl18VY7Aa
         sWcX/l+/ur1EA8pk8b/+1MPbQ8U+SNkiYRu9pwKOFn0yCqJDxm5WTdasLcL8FnMTRlCm
         qNOGBb+zfjCQMPYninFhqIKyK9CYd/ntdcRyHWF8M5cmdei8NF6Q1XtqeauMi2KnArU2
         r25FtQUnJ0MrFnkyze0JuPPce+9jBEfIaRMgdjx1KTMu5rrzDqc1qIqrva6Gta4P4Juf
         hl3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KYd1qA46;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id o30si110545lfi.0.2019.09.16.15.01.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 15:01:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id d5so1389887lja.10
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 15:01:21 -0700 (PDT)
X-Received: by 2002:a2e:8805:: with SMTP id x5mr66628ljh.102.1568671281368;
        Mon, 16 Sep 2019 15:01:21 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id r8sm10192lfm.71.2019.09.16.15.01.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Sep 2019 15:01:20 -0700 (PDT)
Date: Tue, 17 Sep 2019 01:01:18 +0300
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
Subject: Re: [PATCH v3 bpf-next 04/14] samples: bpf: use own EXTRA_CFLAGS for
 clang commands
Message-ID: <20190916220117.GB4420@khorivan>
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
 <20190916105433.11404-5-ivan.khoronzhuk@linaro.org>
 <CAEf4BzYJ5Q4rBHGET5z6nPBhh=8qAK7uuCK=Qnsh14FDH-24gA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzYJ5Q4rBHGET5z6nPBhh=8qAK7uuCK=Qnsh14FDH-24gA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=KYd1qA46;       spf=pass
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

On Mon, Sep 16, 2019 at 01:35:21PM -0700, Andrii Nakryiko wrote:
>On Mon, Sep 16, 2019 at 4:01 AM Ivan Khoronzhuk
><ivan.khoronzhuk@linaro.org> wrote:
>>
>> It can overlap with CFLAGS used for libraries built with gcc if
>> not now then in next patches. Correct it here for simplicity.
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>
>With GCC BPF front-end recently added, we should probably generalize
>this to something like BPF_EXTRA_CFLAGS or something like that,
>eventually. But for now:
>
>Acked-by: Andrii Nakryiko <andriin@fb.com>

I can replace with BPF_EXTRA_CFLAGS in next v.

>
>>  samples/bpf/Makefile | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index b59e77e2250e..8ecc5d0c2d5b 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -218,10 +218,10 @@ BTF_LLVM_PROBE := $(shell echo "int main() { return 0; }" | \
>>                           /bin/rm -f ./llvm_btf_verify.o)
>>
>>  ifneq ($(BTF_LLVM_PROBE),)
>> -       EXTRA_CFLAGS += -g
>> +       CLANG_EXTRA_CFLAGS += -g
>>  else
>>  ifneq ($(and $(BTF_LLC_PROBE),$(BTF_PAHOLE_PROBE),$(BTF_OBJCOPY_PROBE)),)
>> -       EXTRA_CFLAGS += -g
>> +       CLANG_EXTRA_CFLAGS += -g
>>         LLC_FLAGS += -mattr=dwarfris
>>         DWARF2BTF = y
>>  endif
>> @@ -280,8 +280,8 @@ $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
>>  # useless for BPF samples.
>>  $(obj)/%.o: $(src)/%.c
>>         @echo "  CLANG-bpf " $@
>> -       $(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(EXTRA_CFLAGS) -I$(obj) \
>> -               -I$(srctree)/tools/testing/selftests/bpf/ \
>> +       $(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(CLANG_EXTRA_CFLAGS) \
>> +               -I$(obj) -I$(srctree)/tools/testing/selftests/bpf/ \
>>                 -D__KERNEL__ -D__BPF_TRACING__ -Wno-unused-value -Wno-pointer-sign \
>>                 -D__TARGET_ARCH_$(SRCARCH) -Wno-compare-distinct-pointer-types \
>>                 -Wno-gnu-variable-sized-type-not-at-end \
>> --
>> 2.17.1
>>

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916220117.GB4420%40khorivan.
