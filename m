Return-Path: <clang-built-linux+bncBD6MT7EH5AARBNMAQDWAKGQEMRQW6VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D58DB4340
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 23:35:50 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id q10sf461825wro.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 14:35:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568669750; cv=pass;
        d=google.com; s=arc-20160816;
        b=YiwKwYuXf7fMeZ9j2neawFGyOtpy9Ed6aTSRAujbop9mxMc1m9B25jv+oRKnv0nIQz
         sr7E1WK9NnYe+u0pqgHKO6nxZv/M0Tpy+FrjEu9Fq5f0yLtBCtLYWfoR8poebOJ3R6vy
         EqaPCjiABCqAjcvhYnCB2maotybgvcSQdlwLTTlqY1TwVBIh0qoXPyi8ZIMJeJiVI4aD
         EpxZtu+6RtDKdGBuk5BxDx8z2QN1lb93crXVBn66y+39hgXUHiCA7ZQj4p5AUePNt8Sa
         qPLlGb6jzKKKI2O19AKWnJRzevZGh5ff2O+ntdibfI1RPBOYUCuMzY/ZJhXwhuyLNCRI
         /PvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=U+BexjsHlBdC9MUr3JJXBtka/3IHv4DtWHngFEnKKGk=;
        b=H8dMWqq/Ll8Y4RgwmQyjl+pNeQP9tOiYsDr5gNBM5/MwBtln0JWEx+Ifbts2eAC6gg
         7P2oE/7APkhmYuzgERM+saMxXq2Stg/auE/AEdn4S6aoaGebWzxSNR9UMT2Z4IdOk0VO
         cxVLeP3SkIphsUIrARnnItEvUg392+dk7OpmOraJWfXwi7n15tkjj4PyxpAvekg0Hxdo
         1ed29uyNiMa29N7zrtBiyT+ZZkD95MWv9SP9V/RkAKqXFTOWqpVO/hqKUxCkyWiGbPlQ
         r08/KtYAzAaK2xhfW21AbyljzC7SaE+Jp2gyAKQXURKP2mmEZW8miiMKVky//AG8qfJf
         TMxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of whitebox@nefkom.net designates 212.18.0.10 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U+BexjsHlBdC9MUr3JJXBtka/3IHv4DtWHngFEnKKGk=;
        b=mb7hDre/Lb6rqCED2cHmh13EzaeFZKlvuMI1R15bNC4NlRHY5qx2NWCIPGJntczSGo
         sDpOTWl+/Z7OJzWNvIy7RPvUUrnoMwn1ShoTBIOzCHHXsyfobnt9sj0HgCfbzNu5l1pC
         mftjKsWi6inerJ8Wx38Fi1Bh67dA/Lht+9yJuTOmJpitZRXuNi2Dz3q7khM+exPP8Y+G
         J794pNz1oaN/lM5udHhgRt8mVK7yX8P1QP9yUj8yybGcd+5eanq0eUKxo/6Ew0qQapfF
         vZmMkTtSCt0mKE8Peos3k2c2UqlnUgrEMcG4WTnLK2+i7O4MYi7hgokKV/ob7tiKPVzd
         ocNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U+BexjsHlBdC9MUr3JJXBtka/3IHv4DtWHngFEnKKGk=;
        b=Bd/WXJGCgiFv6rPJ66JYar/pp/zZ7ikj8h0wl2jJ4c4bCJjjHjQRpfKyzBkbwYyrYl
         E1DbggSr/Pqw+UJotpUA65pc4cQs428MYuYBhxWzw9c3XIKgVdwaZOjcmyUbmHDo0ryM
         MVJITUtOQ2QFUKtMxCywoWTRtvtJMrwz1oqvcC+6GUPzE2iZ1pI7thwIoXAexgFRAMgM
         9P/2lmmTYLqma2QTyefIJjtNO32/a79iawLE3wjBh5g2Gc74GLdv/op3RymUP+g5rK+L
         4tFXr7BOxvy2tzh0ArotAy0BKC95uuGfjCMBmc/Y5Ol19NGQVSPrdc5kVZRvpC1QzO5a
         khjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVT2zdQ1jdNhcKBw0llA4V5ha40vRlPIjryXHg+DCAZL71bsXVv
	+s5HySf3cte4+dDHtHITNNM=
X-Google-Smtp-Source: APXvYqzXdEzu4NxZUM6yaD/QiFQMExnMho4OaMI1Ip0Ho/RRSGIV/R5t/0PMciHZUj9qhWUA4ktTcw==
X-Received: by 2002:adf:e908:: with SMTP id f8mr325919wrm.210.1568669749956;
        Mon, 16 Sep 2019 14:35:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7502:: with SMTP id o2ls255178wmc.4.gmail; Mon, 16 Sep
 2019 14:35:49 -0700 (PDT)
X-Received: by 2002:a1c:f01a:: with SMTP id a26mr794784wmb.84.1568669749398;
        Mon, 16 Sep 2019 14:35:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568669749; cv=none;
        d=google.com; s=arc-20160816;
        b=boRzGn0kfmYFvE2DmMFusMcoUZBudu4X/PflAtnmngEycHj+iNXve+xgRAZyyEgeyv
         TC4ycqt/rUjNyCO1W27H3AgEin71xRhr3Mu21s0rIL3yTY+7D0YrzWZa/QaPJ8oP/eoj
         RjmORqUy9qtuGqXcg2R/qsTkgZ7UmmRo4S9/UIPo6ysH0rOfp7hu1z5hhLSido2/AyC0
         7RZUJdTnkTyriSngE03z2o4YgBXO2rh5/MWe8Lj++juzo8ox5XQlQE7iIqojgNvhJkLu
         bZvKH5AvbPQLAWo42SP5Roxh4cBJ/ClwBkb/U3AyKb1qVIO5lpL7q2u+F/VpvMHtenC0
         1RjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from;
        bh=zpJIje3IAiTFPgzuA0LjDPdGxGpCjCXVAKKg6bDYq+w=;
        b=K47YffogCIQpMQo9mWlpI6a/tlyR07pFm5E2ZRfgJCaLANMcuTGhQO5IFv9Yh+1+C4
         4un3sqb6LvZ8w3IGHT8UbEHkR3AyPLn8AjA7B7fX7VZ+g0I7ve7rc7WYqjZKYD+hQi3K
         /MP5D1yZqVdlo/48InO2nO/DlhNrS52oLGVktrr62JH8tSdZS7ppMoz8MYeNoj+ldCOE
         bjQ3ZKGZoBfQIvTTnD9CxWdvmSN4a5W+eWZCimU4ppOoJELC83ECAyjauBqNkACQAoOP
         reDQpERvHlKaGdW1U1f8Dyb2OwJhX2Nbq9F6TdB8k8HpbUHnOlmU8m7U+NAGbuLUFeE8
         z+AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of whitebox@nefkom.net designates 212.18.0.10 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
Received: from mail-out.m-online.net (mail-out.m-online.net. [212.18.0.10])
        by gmr-mx.google.com with ESMTPS id j4si9132wro.5.2019.09.16.14.35.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Sep 2019 14:35:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of whitebox@nefkom.net designates 212.18.0.10 as permitted sender) client-ip=212.18.0.10;
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 46XKKt6p0Kz1r7hh;
	Mon, 16 Sep 2019 23:35:46 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 46XKKt4s1Pz1qsD2;
	Mon, 16 Sep 2019 23:35:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id vL_Z3Yvzkzi9; Mon, 16 Sep 2019 23:35:45 +0200 (CEST)
X-Auth-Info: 7Yzorz4cL64cpIXYMwEei+hYY6VSe697biienY//MW0u7gRp/4RLUg4/7I3tvenS
Received: from igel.home (ppp-46-244-165-89.dynamic.mnet-online.de [46.244.165.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon, 16 Sep 2019 23:35:45 +0200 (CEST)
Received: by igel.home (Postfix, from userid 1000)
	id A03192C0173; Mon, 16 Sep 2019 23:35:44 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>,  Alexei Starovoitov <ast@kernel.org>,  Daniel Borkmann <daniel@iogearbox.net>,  Yonghong Song <yhs@fb.com>,  "David S. Miller" <davem@davemloft.net>,  Jakub Kicinski <jakub.kicinski@netronome.com>,  Jesper Dangaard Brouer <hawk@kernel.org>,  john fastabend <john.fastabend@gmail.com>,  open list <linux-kernel@vger.kernel.org>,  Networking <netdev@vger.kernel.org>,  bpf <bpf@vger.kernel.org>,  clang-built-linux@googlegroups.com,  sergei.shtylyov@cogentembedded.com
Subject: Re: [PATCH v3 bpf-next 01/14] samples: bpf: makefile: fix HDR_PROBE "echo"
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
	<20190916105433.11404-2-ivan.khoronzhuk@linaro.org>
	<CAEf4BzZVTjCybmDgM0VBzv_L-LHtF8LcDyyKSWJm0ZA4jtJKcw@mail.gmail.com>
X-Yow: I always wanted a NOSE JOB!!
Date: Mon, 16 Sep 2019 23:35:44 +0200
In-Reply-To: <CAEf4BzZVTjCybmDgM0VBzv_L-LHtF8LcDyyKSWJm0ZA4jtJKcw@mail.gmail.com>
	(Andrii Nakryiko's message of "Mon, 16 Sep 2019 13:13:23 -0700")
Message-ID: <8736gvexfz.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: schwab@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of whitebox@nefkom.net designates 212.18.0.10 as
 permitted sender) smtp.mailfrom=whitebox@nefkom.net
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

On Sep 16 2019, Andrii Nakryiko <andrii.nakryiko@gmail.com> wrote:

> On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
> <ivan.khoronzhuk@linaro.org> wrote:
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
> printf change is fine, but I'm confused about \# at the beginning of
> the string.

From the NEWS of make 4.3:

* WARNING: Backward-incompatibility!
  Number signs (#) appearing inside a macro reference or function invocation
  no longer introduce comments and should not be escaped with backslashes:
  thus a call such as:
    foo := $(shell echo '#')
  is legal.  Previously the number sign needed to be escaped, for example:
    foo := $(shell echo '\#')
  Now this latter will resolve to "\#".  If you want to write makefiles
  portable to both versions, assign the number sign to a variable:
    H := \#
    foo := $(shell echo '$H')
  This was claimed to be fixed in 3.81, but wasn't, for some reason.
  To detect this change search for 'nocomment' in the .FEATURES variable.

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8736gvexfz.fsf%40igel.home.
