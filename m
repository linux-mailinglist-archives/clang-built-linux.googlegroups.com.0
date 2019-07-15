Return-Path: <clang-built-linux+bncBAABBX4YWPUQKGQE7BISSEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 043F169B0E
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 20:56:32 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id b12sf14222964ede.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 11:56:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563216991; cv=pass;
        d=google.com; s=arc-20160816;
        b=lMQqBPi1j7NL3OShRLxtLJkCII2zilfjlVMss1bEldZ2lW2jj5bfp/Wj7swBJqQOjY
         iOtFO9UrbgbPzbL5A+syp5MpRQxoMQFYmGuUep/yDEUZR0QxWD7SlwpAEGoO9/zs+Y0X
         iJ4es6tmQkItZwvl6V+HEv5nXWjRnYCLEAgXh0/19FGh1+qOD8rgwobK191OKSYd1Kfi
         PWPM8+lJP9m9ZZtcaA68/lPbc1pnh9yaLnSuFAu62K4TSI8dRsbewg4Dc/K2AqCbCEgk
         AnDf1D/oRp+jmAMFeBxukHVUtI/UtZ1yqwOfLgxlh4r0CgVd7RHouOzqMNZPjuIwuLWc
         9PJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=snmS3gmzUlhCb0cuvLgGL5iymn/pblQ40cwYHfZRN0Y=;
        b=Xvf28lu+WWjyO3Q4DaNdcxu/qR5m4dQpNznbJb/pbsxXdmZHEbHZcZW0pPsg4X0hAN
         g/yfF5IkHlI3U9UhCVz/ASJRYsRkGmzWZ+9xOD/yZ4TP3aaBg4RN9g/kTlJ505C66P/X
         qZQe7ui9TLwg8B44LOkemkvyjvr+S55u+UTd/osB0/VNHzTTn2SNqWbP78fJE3A6hGhi
         u5HyGO89gYUlZsXifQ+JI9UPlP/jOCDYovXj3+0E+3ZX4oI+hRdhQA7fwBb/+Jwzm6YW
         Eu6VyogmK7D0JcduW2rDKIsoLDEZ21G54JMdngO6FfBXslj8pCVaot77gBt5oNl9PfYZ
         5VAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of lkml@metux.net) smtp.mailfrom=lkml@metux.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=snmS3gmzUlhCb0cuvLgGL5iymn/pblQ40cwYHfZRN0Y=;
        b=gohf0gS+fSTkVSMoRnwRAmr4Oef+q4Kuez+VoOKDJPLjmVXN+HQ1GcrukvdSNkJe9w
         mSlpT795s9zSdSndvfX2AFWH/iCT61XsEJtToLsh8tPt/c8+hjH/EO7zb2dX6IuaZ4cO
         fsu8u01MTyYG6NK0Y33PvBabCiz34mr0BI3Kw/H64T+Ql8Euy7Tlo7qbvEN9BDYxYtuq
         wZfu83zQcBXn6npdtoJEHXUFKj9XG3uKwdHNNuGoQgjBv+rvrQ3rwKq1wuCaq2UXpEtu
         cYzIC30ADzGAiEZrTKTNnSdJ1uGbIOlUX7QE/aF7sqOkjmYIQLhJox/ounVJhuSTAYy1
         Z7ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=snmS3gmzUlhCb0cuvLgGL5iymn/pblQ40cwYHfZRN0Y=;
        b=p3kATVSTeCgQmdsgIICpUcgIlDkSr8Jh1nqnbQuw2PEfUanim6zTWc4o2Gzzb1awIT
         SUAW8Qkaoe81j5NUHLtAHADo0BUvJWeHYwhA0GWnCl4XD5NaqoyTXI3HCgmxqi+nKo5D
         7c0/0Q90X1B191ADApA5Zq5FxBen+aVJA2lKCoS0uS5JFhyeV7l1RCJyjl7E1W0fiEv6
         fuWYXqGybrTbd+aKbCHpR+BnmLqw1TGsxqCNaCXuKmpOsxZYI+4zmY2RGfnVQEWXEnPo
         bmk9HiYHojyY9ViE+8bacHk094s2kt+9oqfYWtcZdKGua3lV91lcBg4DKxhMggFVkFiZ
         ARAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUpaBhTIs4p1dOX9E64dluwlOSN4dL4GswkG8+SKnuOHarmU42c
	umvKlXx62xp9wgSwVuxlMDw=
X-Google-Smtp-Source: APXvYqwU/7Ld2xbH2fmlUXbm2a2KXJ6Hh96J1NnPYBxlqNiEVWvgRzwCFZoOwHNgzKKlPc27FYv2GQ==
X-Received: by 2002:a17:906:7712:: with SMTP id q18mr21887373ejm.133.1563216991732;
        Mon, 15 Jul 2019 11:56:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9728:: with SMTP id c37ls4307680edb.12.gmail; Mon, 15
 Jul 2019 11:56:31 -0700 (PDT)
X-Received: by 2002:a50:f410:: with SMTP id r16mr25245193edm.120.1563216991487;
        Mon, 15 Jul 2019 11:56:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563216991; cv=none;
        d=google.com; s=arc-20160816;
        b=o8uwVY0tzqHwtDkmcXXi2R25spM7aGxtOJFVu2TSXSxkmKitB5v5mGUdwjXnmnxlrj
         PWtJ9nHEXSDU+cigqb7KQ5mwHaHktlD4HB3yXxURbtA34KeaDkJQnk7kxhTamJkLermb
         8fzTUi9amgb5xoZATI8OxCpERIvbdLWRBq1DFfRRo77QpkNHEjmxDc30o2vnCRHV7jRD
         B4blytfoxiSHB8f8XmXGW1THvUQJR5pbuhwMVKGd3J3KXdcJt6Mx+8q89wHhI4LK9our
         KVATWDQyIdv2sjDzizHiGh0/+G6dqlSD2vRaq2+XOim142qE/UDdwFRuBV9If4a2XZWg
         EK/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=BgCAK6ALFtgvSBkeaTc5ysEKGGptH6SJtFEs5ojteqs=;
        b=U/QO1CyiveNRFxFgtGYcFMU6C2QK7/jTVsywCR048oTViKhuZy4qAe5l4xvl9FZBHP
         BYjrWhYjVFekh6sQARsZhqnFug1Seu4A0UE4Sr5DzBHDElIYUkRhaIo/zUajfp0r3wCC
         eAToEhyi9G1eByyYe3pjgGh36hlJTmp3EgnA6E8tAGZGSfkCETwWgJG2M2FHsAbaDaxo
         Mmxqpz2/6z23JuvKtCc7yCZG4BnIDoPAaJ8rp672FIYyqwV7hf6UKphRESv0fFSNmSuC
         rOUatZRzAbJTr1EaB7UWGlGCS0vuetwp8M5A+or5cGtSJWdenAsWXi/nzei+RijWDaug
         7RZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of lkml@metux.net) smtp.mailfrom=lkml@metux.net
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id t15si969761ejq.1.2019.07.15.11.56.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 11:56:31 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of lkml@metux.net) client-ip=212.227.126.133;
Received: from [192.168.1.110] ([95.118.111.244]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M1q8m-1hktDo3NW4-002IRt; Mon, 15 Jul 2019 20:56:28 +0200
Subject: Re: [PATCH 4/4] debian: add generic rule file
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, Robo Bot <apw@canonical.com>,
 Joe Perches <joe@perches.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 linux-riscv@lists.infradead.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-4-git-send-email-info@metux.net>
 <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net>
Date: Mon, 15 Jul 2019 20:56:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Provags-ID: V03:K1:hvK93i77vK63kJTVR4ogArNlnN1zGWCxPx9UupprhwHlVosg/v0
 j0b/K8jOzkk8IQGd6zTvTXIttqpqPDOa/vQJ6K+lweiKpu3XTPCF1PsDfD+FpzvZ8ILX0Dd
 0h1xeqWSatCfp11/Q+2oKS663Zba5LW9n/+DoaJo2PHehzwiq6gWu/VefhpY+8VmkQzk/Nh
 IHWiacfDp8SZkIlFOYBoA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T4r/34V3t5w=:2rgr2ucWxg6EpGWRp2svKn
 U/llQSqutZffji1Y8HCfGG1iiOz+u6KFT0IuJFO30ifmk3PaofKKmuEY4PWGfclsHupikXcvj
 /WAxt3yfidQ9sgUSfMInSbGS4x4COeTwMmYxoiLykImPGUxfehOsSEsrRyC3IultacUimaeBu
 2OpvAGJWblV1cMCmTRRYWmjIZHDYdR33iyoCM6IS1c14ikVwmtw+nQPGRJr/1UbutG/gEsdok
 xaIG3jzezjviI1Op/sM/PjFsp7jLN7PQe3f1hGidripJKFdoo8HlNTE2LKX7jcextl73gHvE1
 uzL0xyhCzNuvu9szCJfhDYuA6W7TYk3NXGiTA4h8Su34UXNQ7g7HFZabw50pn7aAk6A6VP2QR
 4mSMwBkAVn1S4g4ZDmTi3ft5hVO6jhx8WhkpFYkRzwTXm8YEPT5yxb1Ji7ESlE9mPNGCqP12/
 d7rejThQzZZjz24LuHoc5Bj+/dWK8DKrUhHGtcVLtIpFW3ONdoxEyzNR0amq+LabkcgKnsuW6
 E/5C6l8Lwn90gIVvAHbxaR9OkJUFhXBajOxriYFSfuQM5b++BZOifD5YnimBQn88bWY4RWZic
 0AG5MDj0fs8MCTym1ZOX2Z7DAtu0QzEpox/8Sh6lbYKKJfCOcjWnEWbSHPf3HI5huNTVA87Do
 CkAhQtNiaVP1GfIkR7oGs+Ng/FUP1SFjOz3WBW7NWh48Q4Wotgt2gfwPEj8N8mSegQa3f5GYu
 D8W7h6UiPOuIDZnaJwpBzsc4UK8uoto/4Mt8RibCun/1XFKSKKFnzOXdnqQ=
X-Original-Sender: lkml@metux.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
 record for domain of lkml@metux.net) smtp.mailfrom=lkml@metux.net
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

On 15.07.19 14:28, Masahiro Yamada wrote:

>> The rule file contains a rule for creating debian/control and
>> other metadata - this is done similar to the 'deb-pkg' make rule,
>> scripts/packaging/mkdebian.
> 
> I saw a similar patch submission before, and negative feedback about it.

Do you recall what negative feedback exactly ?

> Debian maintains its own debian/rules, and it is fine.

Not for me, I don't use it - given up trying to make anything useful
out of it. It's extremly complex, practically undebuggable and doesn't
even work w/o lots of external preparations.


--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5af9db32-2cf5-10ba-261c-e08852d0814f%40metux.net.
