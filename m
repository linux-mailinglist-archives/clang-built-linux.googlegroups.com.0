Return-Path: <clang-built-linux+bncBDV2D5O34IDRBOMTRWCAMGQEDNRBU7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D00D369C8B
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 00:27:05 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id j128-20020a1c55860000b02901384b712094sf1270539wmb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 15:27:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619216825; cv=pass;
        d=google.com; s=arc-20160816;
        b=KCwjGB21BzBWUPAexxp3O/eTinYT6axBaRHbjgnglwhHXAR0sSSu3+SVSfP8C0Yo4I
         RmZ5Z4YCJ+94g3Bi6AFlubGOwmFB5p4NQw6pMq2k4xhyDB2AeEZOygDpQ5M+m8Z/52xr
         G5JuAUaBpfl9bxkkt023yBGXUYgF9eW0d0UgiEIbWaRhO46A5ASUu+iX4Ol27YsPlBie
         ss7T3ckgPFFwvXBipa9MScXVcFuuFZ2B2FTGieJBK2wlYg9SfjdRM5CgxYjZLwTR1Lci
         hRWE4KS9z7Frnaym+0u+rP7fJ9IeA+wVcuh+0lASsCMcn7YXsh4J7rKtglSu3Mmw6Exa
         AICw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Bh7nLaJazjkuILy7WxCv9G0Halnl/H4o8daQHlpBgqQ=;
        b=CDVMy2JaZ29zNC4jxr9cWt7cHDbpr9Ez8IYAgoaCiQB82sVON475l0orj4PoREem1Q
         cF0W5+jl85O+SJNs42dJHWJEkg8o/a0pGmDU4vsv1aMYQPn7iL4tk4XyX52rqzxz/h9L
         xbRFltRzfckSCw8SiNzl3uvm4AZA7KVe3OMnaKEsmGiJwSzjOHSyo4k9lJuur9tGI0Sw
         j1T8Y2qXyehe2wZMvJMWIRhlfusMo+O3srwjyKcUAiS7NtFcj15xryThaZp7Ratdpnyx
         D1GRiMFQEuWPi7lBUpEBWbCSfI++FEyFywZqZ7/sZYsGYlCtLS6IFqN0owpbiI274wkL
         ch5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=VUsIIiWa;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bh7nLaJazjkuILy7WxCv9G0Halnl/H4o8daQHlpBgqQ=;
        b=ogAA/fXrziZ69jyN+tQg8cRk85TTJcNFZbheoJ6kpcPzshgSNBwAfRM+fsUS07bzNi
         6vlYUSGv5S3/ywpKKhukuDW9MdgyrLFo+yheA5mQXDJZRlrStn+li9iBqytdGI1yltcZ
         mUXYVBKr/+bJQSuK/TaKOWXv/SdNRJ6C1CwbDDWSHEBAyj3NLAoDPQvJqeCsQpre4WZJ
         QCEptwoRyfFLnYin+Sr1E+bfYieymHEFkLsbF5DfbIrDjh6THEzeubdJONbDWoFlfrwK
         Axd1Bgm5v0LrD7kC5bs4kkzcRNUO9T7pCSgBui4RKBIvGkc1VG1P+uRRfiG2LYpTWCnb
         Jy2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bh7nLaJazjkuILy7WxCv9G0Halnl/H4o8daQHlpBgqQ=;
        b=Q+O9R3JxAX3QMlF/BUkt7duwAt1zfnBVPiR8bwox8qcoqmJND5PoiW9J1MmGr9+TRX
         dHbf5EADjOanBKCJLSI1ClQY+LOfpFFrfOONtQAOPUOmOqmnnoAjMr8k6Jmlh/jcd4uy
         blWHXB1TLs6brFU0yjEvNQ6xKdRi7p1yHi2cSW8x5idBc9w0peBTzmZUHK2+Va5ljx/o
         /gdcGO9TG10YiCqKGUXqkrK9Kn9iu4Mga7vIE68nsOhgJSWdW4QewLvKgqRBXZe5OlvN
         qEiT+c4xkWiMWJUUEleeJqBYi/OXwM7ufpfNW1Qlg8HlxT6k6c75KZYgaF6TzdAn2Lz0
         Ocxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318vidTzPg3+EZQO0H7UU26if1tFJm/47PGW6o+o4S+nqPfN5r4
	pXtWwgFwUsAcN/QioAK+Syg=
X-Google-Smtp-Source: ABdhPJweZuRz9LFWIoHRPtSiD+1f+ma9zNiNcg4/OvwiLQVHZIWCuSCeGF2LCx38BwLeZteW68ll4A==
X-Received: by 2002:a05:6000:114e:: with SMTP id d14mr7186178wrx.281.1619216825335;
        Fri, 23 Apr 2021 15:27:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls967198wrx.3.gmail; Fri, 23
 Apr 2021 15:27:04 -0700 (PDT)
X-Received: by 2002:adf:cc87:: with SMTP id p7mr7332776wrj.388.1619216824471;
        Fri, 23 Apr 2021 15:27:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619216824; cv=none;
        d=google.com; s=arc-20160816;
        b=MIFMuACVKNia9FAla17RC+SXRrV7aNLaX9C5thbeO4xxAf8z8BVdc8nUbWThxglLDF
         SzoCDozZEEBVwGY9u/qz58GuPq7bc6lOTYO0LO9ueykR8oh2TpOinlz1NTh8T40s9Y8R
         MCAhx7rYa1nBk2SPg3aIxaIMmZhHAD87dk7M1CJMpz/gb8yC18rgInpfSIYnhhWgmgz+
         v39qt/IyqPxn8jSg85II7JeriKqE1qb1iVqg+LpazdLFBPDiQDC2phyv983xiZYXV7hx
         1xNOSRxtupYLQW8vkYz0BlczBWhpGB8eJk3r84QlNc8qcVm03L148XseTSGjDYQ13D3H
         qMXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=9p+f2yEK4EX631yr0nLf67Yo+8aAuwLas6USm3q+guE=;
        b=0V/XXTZdrqXbi5bsMSTITtlCgd47FdlUk5uYZ5WAjzpR+mFsaRuM/HuJtwY9jDbjyL
         ErtOeb1QJZqScuH5cWBmLooH2Hgmc1PL4z0FhEMuIlIZMpJaG3GE1/QLj+CfVsfZj73V
         k3zYwOVUXyIj6ATBijJQntBg/qgAOI8Z0PMXbWSB0eoAH6Lsd05XylekqAd8/V3avkWa
         VbIcPasgyKNiShK7nyA1sG/Y2K2vBTmkC16DVZViIsMefW4+6FUtv20ftsTtNUYpPf9K
         3ucyJ6PVo34vNfLIgUFMlWTMMeIltukwzuIlNXXQXlNitEm8X09RgC9fEUxt2418o6DO
         l5Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=VUsIIiWa;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id 187si529807wmb.0.2021.04.23.15.27.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 15:27:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from [2601:1c0:6280:3f0::6d64]
	by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1la4GL-002VV4-9G; Fri, 23 Apr 2021 22:27:01 +0000
Subject: Re: ARCH=hexagon unsupported?
To: bcain@codeaurora.org, 'Arnd Bergmann' <arnd@kernel.org>
Cc: 'Nick Desaulniers' <ndesaulniers@google.com>,
 "'open list:QUALCOMM HEXAGON...'" <linux-hexagon@vger.kernel.org>,
 'clang-built-linux' <clang-built-linux@googlegroups.com>,
 'linux-arch' <linux-arch@vger.kernel.org>,
 'Guenter Roeck' <linux@roeck-us.net>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <fa0bed95-5ddf-ecad-0613-2f13837578c3@infradead.org>
 <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com>
 <026d01d73877$386a1920$a93e4b60$@codeaurora.org>
 <027401d7387e$f5630120$e0290360$@codeaurora.org>
 <24da08a4-e055-d8ac-8214-97d86cdcfd3d@infradead.org>
 <02a501d7388f$8dfb3b90$a9f1b2b0$@codeaurora.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <42ab3057-3b43-7f98-6387-6e79761d2d3f@infradead.org>
Date: Fri, 23 Apr 2021 15:26:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <02a501d7388f$8dfb3b90$a9f1b2b0$@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=VUsIIiWa;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 4/23/21 3:25 PM, Brian Cain wrote:
>> -----Original Message-----
>> From: Randy Dunlap <rdunlap@infradead.org>
> ...
>>> It's published as a container in the Gitlab Container Registry.  You ca=
n use
>> docker/podman to pull "registry.gitlab.com/qemu-
>> project/qemu/qemu/debian-hexagon-cross" in order to use it.
>>
>> Hi Brian,
>>
>> Maybe that will be useful to someone.
>>
>> However, I am looking for something like a tarball that I can download a=
nd
>> deploy locally, like one can find at these locations:
>>
>> https://toolchains.bootlin.com/
>> https://download.01.org/0day-ci/cross-package/
>> https://mirrors.edge.kernel.org/pub/tools/crosstool/
>=20
> Randy,
>=20
> 	I 100% agree, I would prefer a tarball myself.  I have been working with=
 the team to produce the tarball and we haven't been able to deliver that y=
et.  No good excuses here, only bad ones: somewhat tied up in process burea=
ucracy.
>=20
> I can share the recipe that was used to build the toolchain in the contai=
ner.  No Dockerfile required, just a shell script w/mostly cmake + make com=
mands.  All of the sources are public, but musl is a downstream-public repo=
 because we haven't landed the hexagon support in upstream musl yet.

Hi Brian,
I can wait. :)

Thanks.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/42ab3057-3b43-7f98-6387-6e79761d2d3f%40infradead.org.
