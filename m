Return-Path: <clang-built-linux+bncBC32535MUICBBQGCQ3ZAKGQEYY77BCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0426815824E
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 19:30:26 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id g7sf3732944ybo.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 10:30:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581359425; cv=pass;
        d=google.com; s=arc-20160816;
        b=EwWbd8SyIzzKj83HZ/CrGQKwoNwrHaZsJoS5x8XWUqJMSulwomFll+75gm5RQNVw2f
         VE1+spuTvea1tdJgNfpXwlyMKb4H1SnzwgpfbOJUjsEDJLbFz+6uW0V0TG0E60wmB1AU
         eKoKXjvMvi37AOaOQjGyatw3VkGH0uxni7A+8Rq8zyqV9GW5hdqhe/qgmoN98Ma+bQJ6
         J75Nqv4J9j6AjZqrUuW7GYUcr4XwdfS/2czDN9ocBWEvjCnVs0/GURfz+GayGgK8fY3J
         mcvfgW/j52Ls8luMnAEolr4xtTGTgI5zW9ArU4GSPpPnK0RTa+kVAMvCEYRdjOial7Xd
         eXog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=iYf+XBptAXBWz+ElfhBigsRnJiwp8BnmxUFq5PJLDj4=;
        b=DeCplTEBuhlnGDwgxEUIQYW2rBmYrMt15bqiBnpPL8YKaC2YqXCigWv0MdEdUhmTTb
         wQJsOBRx5A6pBioxl+qyLKxD1+b9EcZGW0z0TfSwhpl2WmZR/ucPaNYzzNPWXYuPg4DE
         OySr7wz8bxBfV6Ww57aRaj8e8cplCnpSJH/Q5fQAH51LJiYllYr+T+bI0arB7TFOAFF4
         tXVTbwcyn4vr8aSnc0isTt///2ZYx8wsviEnPQfSPcbFFGpKKb7T9MbFPNvqE+7BxWW0
         n5LHL3hEsWpip2hHgdRn6soKftMr/geL1utNfoGyiSTLjAQgEZyx1YTA+mKOR5kkceye
         s/rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cOlZf3Vt;
       spf=pass (google.com: domain of david@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iYf+XBptAXBWz+ElfhBigsRnJiwp8BnmxUFq5PJLDj4=;
        b=fOveMmlUarPne7oYKmHe1MUVcDbR02ULGsQDL+1JpMUFtF3qD2I5JhHPa0m3/yJnW3
         MNuKKExy1rg0iezUuW5foP4J2ENq+6QAX/FmiG4iXH+pk3e/fbmsSAUD+t3ECr+ljXYq
         sByezuDC7O4okrUEc+HVTXUE/a02UYsuxJrRtOZc4gC/bds/gB6amBONSSsuvF+y+IFz
         Z3EhhfOmnrGVTXo0OKMChNs4ZRCZxzLpinxAhUMC11uwu91hv/TZ0tJxBlAuNqG/iwkG
         kUVgEXOfaG/K3ROWd7WDlb0lMYj1lN+QNLDNhfAH+WfzQnyoZODmCv3OYajISYbWzUed
         kO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iYf+XBptAXBWz+ElfhBigsRnJiwp8BnmxUFq5PJLDj4=;
        b=rVTJpw4CmCg7ur7PP+FuL3X/WJBr08VNwyeNC9vdc1R3PS9KK3zXAriUSAoX7zzCje
         MwUdiXllaG68M70NgXpOOEPIuosPsY4j6TV3D5wKYM+/Zc6apIVkhyNi4CxVuCAbhUhO
         +pUzjzXnbR9kgq+KYP1dBVEd/gEn0vzMOpEA1tDgUx0fVygDdLiblUClflDQMD0EDnRn
         iRhr+4mtsz3jcXyvlz05T1E5+JfWqbMmed6GVvc8qBKw2pv3+jeC+dUnxeEb/vHS/7Fd
         w+lAxi/PyUaoxA6MQ5g6GGKZ7vLkp+RQ1obXXJ8N1Ihf++30sbjN1WChO5rDv9zjEHx8
         k+KQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW5179e2SRJZ1mR5bPLg44TxQQR1BWYI1zxtN02eodOSUVOaOEX
	s1yeNK4NU9fZRRLsxHVrAZA=
X-Google-Smtp-Source: APXvYqytxK2lNV1iSVLo9kI+OJectr+VoQzI9mb2NLyqSxJdFC8BpdxZ0ESj2UMLZswUw2IjJR9Ljw==
X-Received: by 2002:a25:50c6:: with SMTP id e189mr2527113ybb.335.1581359424992;
        Mon, 10 Feb 2020 10:30:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:381:: with SMTP id 123ls1694596ywd.9.gmail; Mon, 10 Feb
 2020 10:30:24 -0800 (PST)
X-Received: by 2002:a81:a151:: with SMTP id y78mr2178171ywg.317.1581359424636;
        Mon, 10 Feb 2020 10:30:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581359424; cv=none;
        d=google.com; s=arc-20160816;
        b=Dft8cRBpG3ZCq9Pu0PdHLR7sy/F1TimDqkPF5raZFIj9HXWe7C/FO4A9G5oQed8QXg
         TAV8aLQSFGdUIKlZ1Kb68mrvaFSq8dvoh4LLbw9ORa3q1XlY4hqANhPm64pq+QUme1SG
         uS93rT2E/g7cgjGklR5loEatJCyCDAhHgeOjrN0ftjp2IFRsk7BVsLVVOBRPSFANruH/
         lJX5hzZNAkhWDz2cyd0ROvS760Vcr00+DxuPKTVNERZIOTj9QTCsr8GFVjgWFE4ihagE
         7rVb5Y4zeGbmVPLMHSKfvfGRaoFumPZwH0rK4SYRlgGdN1optjaUG9VQy5Py2IR2l3Q2
         vl0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:autocrypt:from:references
         :cc:to:subject:dkim-signature;
        bh=q/FFQFuE5ZjN0FyQs96OtAJ7mVxl6Vlq+KdzOl1+8Jc=;
        b=m5g64vbUlK8GNZqFrISj2WKoCdqYUcpEeSGk7DcutWpdjE8bMnDyQyIrWeUkvDEofS
         I4mRs2Mpp7AdFc0wtrEXsqijYXyuKgV7PQ9t0//S+P2Tb/U7qgmtPcy1JmbwFzL8WV22
         HdztTx8M4lEcaTMJGj37oyic+yJ+SYECkP/yOmCTUeB2bRNTpjte6p+82i/nt9hGpuul
         TIg4Am52dp3D/uKTfw1PBHrwX8kgcauLJXIcYY9sGfVEtfzrq3/Se1xJ9JuqIxqx20hH
         kGZjnfuwHFWsYknt3DgpphNxOTnbNMgom9HhYi0nhEhs4NUADqjoxMXHpyBFTILzAOQi
         4OBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cOlZf3Vt;
       spf=pass (google.com: domain of david@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id v64si68368ywa.4.2020.02.10.10.30.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Feb 2020 10:30:24 -0800 (PST)
Received-SPF: pass (google.com: domain of david@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-OapLhwasOhqE_iWT2lUi7A-1; Mon, 10 Feb 2020 13:30:16 -0500
X-MC-Unique: OapLhwasOhqE_iWT2lUi7A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4694A1005514;
	Mon, 10 Feb 2020 18:30:15 +0000 (UTC)
Received: from [10.36.117.242] (ovpn-117-242.ams2.redhat.com [10.36.117.242])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 34CE460BF1;
	Mon, 10 Feb 2020 18:30:14 +0000 (UTC)
Subject: Re: LKML: Vasily Gorbik: [GIT PULL] s390 patches for the 5.6 merge
 window
To: Vasily Gorbik <gor@linux.ibm.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>
References: <CAKwvOdkCtyGPeO2kNQSJ3adX6t6k46tf3Au-P06c1G3McRE2KQ@mail.gmail.com>
 <CAKwvOdm+1bMq-uZxe96HViKLzT7jRyxdS68KLyOXhMm2hM9F5w@mail.gmail.com>
 <your-ad-here.call-01581357517-ext-6250@work.hours>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <6083286c-d11c-51c3-a873-6a07ccd8d5da@redhat.com>
Date: Mon, 10 Feb 2020 19:30:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <your-ad-here.call-01581357517-ext-6250@work.hours>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cOlZf3Vt;
       spf=pass (google.com: domain of david@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 10.02.20 18:58, Vasily Gorbik wrote:
> On Fri, Feb 07, 2020 at 10:22:20PM +0000, Nick Desaulniers wrote:
>> + Vasily for real
>>
>> On Fri, Feb 7, 2020, 11:02 PM Nick Desaulniers <ndesaulniers@google.com>
>> wrote:
>>
>>> https://lkml.org/lkml/2020/1/28/1141
>>>
>>> Yo, what's up with clang 10 support?
> I believe s390 kernel had limited clang build support since about 5.2
> (with jump labels and ftrace disabled), thanks to contributions from Arnd
> Bergmann. With asm goto support in clang 9 and now everything for ftrace
> in place in clang 10 s390 kernel should be in a good shape feature wise
> (including KASAN). At this stage clang based tooling is the main interest.
> 
>>>
>>> Can I boot this in qemu?
>>>
> qemu tcg seems to work fine for gcc built s390 kernels. While clang built
> kernels run smoothly natively and with accel=kvm there is still something
> to be fixed for accel=tcg (kernel fails to boot on both s390 and x86).
> 

Any details on that (e.g., kernel splat)? Could be that TCG doesn't like
a specific instruction - but could also be that some code is broken that
is not taken by HW/KVM (esp. because TCG implements less CPU facilities
- e.g., no support for huge pages).

Cheers!

-- 
Thanks,

David / dhildenb

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6083286c-d11c-51c3-a873-6a07ccd8d5da%40redhat.com.
