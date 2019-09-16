Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBAX277VQKGQEPVCMJOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BFAB42EE
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 23:22:10 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id ca13sf759502edb.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 14:22:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568668930; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ph1u1h2SJ8cnyz/DwwfN7lMWmD/DZbL9iat9ry0m88zGevo58l5ZQCUaX24U5nFOEA
         Bp7h7UFKWwONJwQquicp+sCgFct1AOCWlWjjU5yu0z6rNQTzkRctyRqZwzaEh1aELhrS
         GcceL1vh6uUPgp1G1vNNCHJhEqHkTepxrYMpMiaB/bblvSDud/RgSQhDHNHuux5l+jg0
         N2q9fuqo+bvXo1hJC4I6qKJ9R0oWy9zkzQVAuYNUz8AC2xfJ5VFWUlyy9ihCw6PawEAz
         J3y+7GN1+9P/uVehVIkRWJJWwSOb0dqTDph9p8TYg1L78O32vTgvATAX/0ZW2xWjWZDQ
         JtLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=TlaRpFHZmuP7v49apcL0/d5sOVcU5MzxObDIerL2U1Y=;
        b=ZSQpDciExH14R++S5abhX947c4/uWWNZwGH5gDhOLx1/N8C3NRkQkhZNuaDJnsohif
         Il8o0eFhue9KM4gfWp3uJod5xOUaEDojYJzaktWdR4ngM4YLzBQC0tgsMhvBAlKdav8i
         icolLuAswdMbX+tY13Vs8+RIR+8laPXySaHlvIHldIpVjbolf2Hc5zsbFIxrCUr/iThZ
         qNp7Xwec+6Kl2d2v7dzuFvelKpF6Bog6CDL7xPA7LoHChY3xYY4PkL+rxNVvlO2zOAge
         WTgtQFYr8fIs33QEKX56lRSF29Ke8DahZeSnVs2cOl42dFwcCQ9MGmIpJgH+tC3EfoPe
         GJYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Ne1r7/Ag";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TlaRpFHZmuP7v49apcL0/d5sOVcU5MzxObDIerL2U1Y=;
        b=Fo84AAn/2GG3f86SWiJAhvHaHeNgdGFS9bra1oYRsA0IBlzcnrcNj9wMiHyWD0eTjI
         +jxgn9LtTG9pkiANgda/WRhiY9zT1rALwECLY6SxEq5uhqTchIeBt7RISX3iETIJgIeD
         wkrEbN4tlRbWctZOzhDopAp9dFC1st8l0SMSs4jzvuJ0a6dKx/bMo3F4Q2afvzPJUsH6
         8GxIRDY+cNXlCY6GVKRWeXya46Q5tND1iMhs7xgcgNWkndXK7pQSzXKiMkvd0W7oYEnq
         DltiFZpQ2A+erWXVMsFOXS3aSQN32CNVNCfZ63UaArNcSBt+pH3fR9WFwg/0l+7IBxkg
         9YhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TlaRpFHZmuP7v49apcL0/d5sOVcU5MzxObDIerL2U1Y=;
        b=GRTtayYjll84BvK9x2OlkzWsrKdCbOdG0Ml1nECv/UNqrexTHIDPJ6swu01tUKDHlG
         1n9AVk2+aEBjl6pB3zq0PBoI1vwgqz9KKegKP1UyMmfPvEGeM65NrrqBMU64mVTsVboU
         yDgbtUGaSYo1dxJ5Uz45fEk1oGtw93HJE6NzDy82BLPfwUncXyEYU8GwpUoNbtuGZz5u
         oLipVdBaRuhZcw0Lu8N3QPSsIDtH/Kw/0xlztfbRfmYBYgGbvXccKwJ//WK/qblc9W5C
         XwGteLOv8a6OTAsQb6vHGvLXwqcfYF/7MHjS2n4LoV/YvGtwOrm48M4ZAu5khcjpiJjd
         mKFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUAbYXbD2QXizaZdQl8SYAt9B34rCOhqwQaROrHIU9p+LFyToAr
	7X5tUaj1OnZEpY6N6iZETvU=
X-Google-Smtp-Source: APXvYqxYi5j8ClSNazwzYkgkPjKEoYBeUC9FWGvLceDSm5/0hANzzVuCVGntxj7KK1B2bSXik20U5A==
X-Received: by 2002:a17:906:5813:: with SMTP id m19mr1881061ejq.246.1568668930152;
        Mon, 16 Sep 2019 14:22:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b2d2:: with SMTP id cf18ls277002ejb.8.gmail; Mon, 16
 Sep 2019 14:22:09 -0700 (PDT)
X-Received: by 2002:a17:906:a954:: with SMTP id hh20mr1944335ejb.196.1568668929775;
        Mon, 16 Sep 2019 14:22:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568668929; cv=none;
        d=google.com; s=arc-20160816;
        b=VUzoiQspTIL14CITv1ZTTHlYZl3ov7o1CRDlElJn4Bx3ERGMDzukXea1GmIm5BtRZ4
         xAmx3dqTOab3jPVcU/4W4ZW7WgwfnsXOo7iZXdYzYFUZbbzqIxG0djN6GGeTcqyqx+Ma
         f4GgrJC/U13RD4iO7DZgftkOc6WeR58Vz8Y6AfTHKqW+ISfUkok92q3466x8WfpamtQw
         awhQsxI+M1s6YAVy7jPV9AbZd4ERAt3xq6P6Z2itG0ppO0FDStNSJ2pZiw1l04YAIR5h
         tIgtLjegu3sVMQl4Uy3cGdIcaXjmvHoNUUybX+e2i5pO1xwvQXPZffQLFJ8z43QeuEce
         rcCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=dkfcLQF/tIOTeeIdqJMbWZiDa2xY+OxFlDcGtEBgvPs=;
        b=BJdLOpCzMpybScoJLc8UL/xEga4SjcG1zWfTqZKCxQx95jPDl17iM1G2JSqPdwL11t
         Sp0RgpRZWxpj38G4TmR8kwLG51AYf3KY6ega8m5RDqEC1JBcigu7xUNFSDoAv5+VS4wZ
         2HF2BUXvHOxf5BA6E5NkmLOPs2NUm+BaUUX18lvsa0FIRQBGy7dCGxMdcYTtOGYD3kKo
         ILbeq5227AhoJwEu3umx628PfqI0FSH1/noTAHhxYR2m2S0cqF/BIqqQtOhoHLBAau6g
         CNVEhAR1VwG1sbktpNj13cAQHaV/Su717FnjZRJ+Ey18OUiS9RJrxfEgylcmREChegOU
         uPwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Ne1r7/Ag";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id r20si97341edp.3.2019.09.16.14.22.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 14:22:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id a22so1389754ljd.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 14:22:09 -0700 (PDT)
X-Received: by 2002:a2e:98d2:: with SMTP id s18mr4661ljj.68.1568668929218;
        Mon, 16 Sep 2019 14:22:09 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id r6sm14547ljr.77.2019.09.16.14.22.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Sep 2019 14:22:08 -0700 (PDT)
Date: Tue, 17 Sep 2019 00:22:06 +0300
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
Subject: Re: [PATCH v3 bpf-next 01/14] samples: bpf: makefile: fix HDR_PROBE
 "echo"
Message-ID: <20190916212204.GA4420@khorivan>
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
 <20190916105433.11404-2-ivan.khoronzhuk@linaro.org>
 <CAEf4BzZVTjCybmDgM0VBzv_L-LHtF8LcDyyKSWJm0ZA4jtJKcw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzZVTjCybmDgM0VBzv_L-LHtF8LcDyyKSWJm0ZA4jtJKcw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="Ne1r7/Ag";       spf=pass
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

On Mon, Sep 16, 2019 at 01:13:23PM -0700, Andrii Nakryiko wrote:
>On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
><ivan.khoronzhuk@linaro.org> wrote:
>>
>> echo should be replaced with echo -e to handle '\n' correctly, but
>> instead, replace it with printf as some systems can't handle echo -e.
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>  samples/bpf/Makefile | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 1d9be26b4edd..f50ca852c2a8 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -201,7 +201,7 @@ endif
>>
>>  # Don't evaluate probes and warnings if we need to run make recursively
>>  ifneq ($(src),)
>> -HDR_PROBE := $(shell echo "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
>> +HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
>
>printf change is fine, but I'm confused about \# at the beginning of
>the string. Not sure what was the intent, but it seems like it should
>work with just #include at the beginning.

At least no warns, but looks like should work.
Will try it in next v.

>
>>         $(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
>>         echo okay)
>>
>> --
>> 2.17.1
>>

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916212204.GA4420%40khorivan.
