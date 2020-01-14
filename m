Return-Path: <clang-built-linux+bncBCTNJS6RZAFBBREY7HYAKGQE7RSOKZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A56213B5B8
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 00:18:29 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id w9sf10030733eds.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jan 2020 15:18:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579043909; cv=pass;
        d=google.com; s=arc-20160816;
        b=m+JzUG5Bh/CT108NZdMko+vIpzGb82urdeUYFFAIVCX5gDfy/qh2n9U1Q4/aHFrrH1
         icxE165nww4tdFlZFOFSrkmsJIy/GyY3f0kADeRHae4z4+XcYlAozvCWdtHwyfQFSGK2
         zedoqldKo2Dwhh+W1HcrX+8Kdqa9p53AQnUy01LlE21sazowUYt0yWk8wkL6XM7/J/+h
         QERbnqudpSYNhx2Ueg9TT8LRK2tV9PBCx1QhjZXB7oNM4+UiV7V5IyVDOkkT0q1wuyEL
         mV7COFdW2P9/IueOnQeV+5jFxKxutA07X61pkKEgJC16d67A8EmhuCycKiv+EmNTT/11
         +yag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=lSkeA22IE6s+6noylOeruSHxS0SDKpLPaewsWwgpjAM=;
        b=TcugNUYXQcj62BAqFQHOb5kaz5uIZ2Oq91ZE35v397ajGKNMLon2niB3HYzzNLMkRc
         LSCqJTFb76/ELKTHTVK1ctD4OlcHZAwzS+8mRsuWC03JGG4LnDHLymI2QWOmjkrG+I5x
         Cjp61SsygAwG7rBbxnXca8e4oR27f1GtWkQAUqHEQL5FqVaMFJO2fbJu3aTCFjIbAHnq
         GDkX5hav8v1eX7Mv8kajFF7cesgr0rKIMq062i4Tju/TLJzwUxdIbKjuaJj9JhfaoBdT
         BDdh1zMoOfYfkxeYK3Xoh8fRPnlZEmxp2FUfoNl0akKJxU/oy4i2EO4k+l/c8pStgt3V
         lRAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as permitted sender) smtp.mailfrom=mail@maciej.szmigiero.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lSkeA22IE6s+6noylOeruSHxS0SDKpLPaewsWwgpjAM=;
        b=TrZJ+QI/nbxiEYqU/TkJS2y34RlC0DIwYOwawfs8WCHwwd0/2lU/RktuhogTRkZg66
         2ivFAgiJ7B2Bx8GhBo3Db7ZkpG84dRd7FRuQ2uR8P87ktrWBsl8/b8BwwyiCfhLuWe74
         IoHGOeIobDhNKK3Xrqi1uv5wZHlhs7Xuf3++C8RzsQIQCpm9FpkJiGAJBK5Q11/UZPoP
         iByiP9p8HvIl3AOl8pWny0C/qn4lNzmNYaiNqV0YcN9CRwMn3ZjETnxqCJbHx5ya3vof
         JAWbA12eK7P+tWDN+FP4R38mY7l+Nr9hxEMW27TxhyGONyyfI0W9p/KwlVMslnuoDT4Y
         0xOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lSkeA22IE6s+6noylOeruSHxS0SDKpLPaewsWwgpjAM=;
        b=IBprSKLGIFAV2o0cWUMkoARQviZXZms+QN3l9rZOPaNCAtoJgMEpbTuWGwB33l3AgF
         vwiw1crua1/IcH82fnDSuVum/KgxWZwBbFUeSjreQKkFEZaDs/RcHtN/3AZajYW5vo5I
         /xoE4+OLIEdm8q9xwzP1aC6Mwe+uIfPpHCy1QXYmeXYiIGe8oEn/X5XNeKuEa+eSGYwL
         qbUVs3E3WqRwvy29kDncsKWaM+nMMFfCeUKduanJBt2WktUOG01aLXj2nd7V2+Dw0R94
         Y0EmrFUUDrt6n3qrUwNYrxJ01SC/KA+yLGEhdbgxstDYd3rQnwf+D2wD9oi3NF6cwEMi
         C/MA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU7RcytXIGZDlzIkk/a4YhnFDTg7BOwnvV4znyTXM6qlUjHWU83
	T9hcjAUclq1vlYwa/itCMyA=
X-Google-Smtp-Source: APXvYqxzdTS0vUXrAWw4Z6nfsWdKlXcKw3xlGSocTzaF+A8m6JIkinhD3NYv5Q9iCdOjmA2xqxprRA==
X-Received: by 2002:a05:6402:153:: with SMTP id s19mr27131336edu.149.1579043908883;
        Tue, 14 Jan 2020 15:18:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c98d:: with SMTP id c13ls3614015edt.0.gmail; Tue, 14 Jan
 2020 15:18:28 -0800 (PST)
X-Received: by 2002:a05:6402:3047:: with SMTP id bu7mr26721336edb.44.1579043908157;
        Tue, 14 Jan 2020 15:18:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579043908; cv=none;
        d=google.com; s=arc-20160816;
        b=Ae/xVDlVcvzsc4WpMRK7GtCeOUTsYPjtuu5c3C6HfJcFEsVHDd2msGPSRk96bP00Nm
         7jMW9HPT8v8MG8WaBuDuqlcRAu0pefIit7cwlqKG8cGO/T5YnpKU2gX0n6XdaRcJuWCP
         dMPksdjWuGE//SmxoC4vllSUu2bEWgrNtzjdIjTtuk51/p/Kq2uMl/8uPLZq41WNSZ+/
         BtPYG5oh7B4W+G0WeysOS+dikQDYRCnVLDqbh8h/0mWYs7cei9PZPlatoFpGj2G+WK40
         hCecjUV8gyDjp41gP5mE6zjDUI5EAJW0wg6qdr0NkVaRZSe7EG9oTeTlNATzgUn31dnR
         0hoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:disposition-notification-to:message-id:autocrypt
         :from:references:cc:to:subject;
        bh=bomJu8veO5Da1CIqv55YPHzp+D6dxHbjH2JX5Jt5Ls4=;
        b=Ut2xn3AcoTzc7BmJ87s69b9hz6E2mhqkPBUNfboaIAowRSBrEKYrqKbCLiU3xQT/eq
         iZzVT9C1r3GvC5q+Fui+IttlOYIhYqyqR7mya+KDYu3uQUz3d1ZQxVu1gDPdPdlCvxI4
         CZpbfyJm5hBi9fheT1F0p1HhKwN4heOgzjpH0uvafay78zxhFY4k4DeHSNcqRLhJdDTn
         tc8OOrVEgyZSkbiWDYiRdZvMk+Gmo/t/clkT/ApYqYbSFGwNR6MWlzspt1ZmkJNTfrQE
         qMEFtv4giklEQo2jFsynuVJfJXWsNJliXBABOyTahyqVh3za5Qtvnh3Mb9v1MBpwmQIw
         zbdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as permitted sender) smtp.mailfrom=mail@maciej.szmigiero.name
Received: from vps-vb.mhejs.net (vps-vb.mhejs.net. [37.28.154.113])
        by gmr-mx.google.com with ESMTPS id n21si638703eja.0.2020.01.14.15.18.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jan 2020 15:18:28 -0800 (PST)
Received-SPF: pass (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as permitted sender) client-ip=37.28.154.113;
Received: from MUA
	by vps-vb.mhejs.net with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92.3)
	(envelope-from <mail@maciej.szmigiero.name>)
	id 1irVS4-000305-45; Wed, 15 Jan 2020 00:18:24 +0100
Subject: Re: [PATCH] perf clang: Fix build with Clang 9
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Dennis Schridde <devurandom@gmx.net>, Denis Pronin <dannftk@yandex.ru>,
 Naohiro Aota <naota@elisp.net>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
References: <20191228171314.946469-2-mail@maciej.szmigiero.name>
 <20200114222025.GC4769@kernel.org>
From: "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>
Autocrypt: addr=mail@maciej.szmigiero.name; prefer-encrypt=mutual; keydata=
 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 Iw==
Message-ID: <de47fdbb-58c3-119d-2cbd-2db992248a94@maciej.szmigiero.name>
Date: Wed, 15 Jan 2020 00:18:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200114222025.GC4769@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: mail@maciej.szmigiero.name
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as
 permitted sender) smtp.mailfrom=mail@maciej.szmigiero.name
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

On 14.01.2020 23:20, Arnaldo Carvalho de Melo wrote:
> Em Sat, Dec 28, 2019 at 06:13:14PM +0100, Maciej S. Szmigiero escreveu:
>> LLVM D59377 (included in Clang 9) refactored Clang VFS construction a bit,
>> which broke perf clang build.
>> Let's fix it.
>>
>> Signed-off-by: Maciej S. Szmigiero <mail@maciej.szmigiero.name>
>> Reviewed-by: Dennis Schridde <devurandom@gmx.net>
>> ---
>>  tools/perf/util/c++/clang.cpp | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/tools/perf/util/c++/clang.cpp b/tools/perf/util/c++/clang.cpp
>> index fc361c3f8570..c8885dfa3667 100644
>> --- a/tools/perf/util/c++/clang.cpp
>> +++ b/tools/perf/util/c++/clang.cpp
>> @@ -71,7 +71,11 @@ getModuleFromSource(llvm::opt::ArgStringList CFlags,
>>  	CompilerInstance Clang;
>>  	Clang.createDiagnostics();
>>  
>> +#if CLANG_VERSION_MAJOR < 9
>>  	Clang.setVirtualFileSystem(&*VFS);
>> +#else
>> +	Clang.createFileManager(&*VFS);
>> +#endif
> 
> Building on ubuntu 19.10 fails, is this related? Or to the other patch? I
> haven't paid attention other than realizing its clang related.

Don't think so, these linker errors you posted look unrelated.

See the following Gentoo bugs for sample compile errors fixed by these
patches:
https://bugs.gentoo.org/695726
https://bugs.gentoo.org/678652

Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/de47fdbb-58c3-119d-2cbd-2db992248a94%40maciej.szmigiero.name.
