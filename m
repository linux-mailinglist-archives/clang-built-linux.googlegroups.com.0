Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB7F7YCCAMGQENAKMMYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0914E3718D9
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 18:08:28 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id u6-20020a2ea1660000b02900d692882addsf974977ljl.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 09:08:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620058108; cv=pass;
        d=google.com; s=arc-20160816;
        b=xf/lkrv/xM6xbfUZx0O3y2H+iFM9jV0te15jzi7vAGTxDktwyBo3eDNXVPKjfCLWlK
         ym065e8hmTVHjsMw6eiMXm2lR8SbBnikE2mosptUVjeWIdjVIiQTxgbUSF3l1++8vxob
         HefwQtkc24waAriWB/FrKaXblWDKrbu3A+kOqHrP4EV+1UqZTJmkuMnuPELIEN4HOGlJ
         Qo+Bj9/EoXiznMUrTwPIVV6ySu2e5igq+hF0Dhe7DBGmSBqc5B8liKsnTaVlmuH9XoLI
         lj4tLPUmDEjhDqV1PKjw1T9aAN/6mPgJLTerWyx6hh35A+2Ce67+TgEwp5v5nQgam65O
         mhZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=U9OAwjwlZf2iCRvpXCo7aFWzt3NoyPAhU+bWQ48Xwkg=;
        b=L2jyRbvVqnlbrFwN1SPHjNWf/F+HSxa8kGpjN5mKnAOECZsndDLFidah5vMQ78JqBR
         6IxEWtwFATb8IjQzy2hJEPy4Qe50ViH6WWFKO+gfj67TtwaDxPzZxcRHwl96cDmFDLSv
         Wu1dqqFRlG+wIsegl6Gl6VmKusBQ1cK97PGbysaNR6YcNcQL2SHoz8hLi/E+DGOaJ+0x
         PzY2H92+YD/qZsbTW6fDvEsnV+lH5W/mZGqzMgq6UEG3b9XM3U1HoHqSu6a7SHFm+SAE
         bXAfpVlE+DlRheg7NCanrYF0xRn0hysAKJUtqWwZWV1beBbWkHzzTciihWIzjQ2gN0lF
         Dr7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U9OAwjwlZf2iCRvpXCo7aFWzt3NoyPAhU+bWQ48Xwkg=;
        b=VY1lILmKwSCDGZu3Xy6kjTNxKnFNj1/2i7uRIswPqgivQZ50UdNclUyPvCqqjJYxva
         QbZQwVrTzOo7Gqq9NOJkjNFUUIr+5wujLuQol8qXAKFPaeTdwHXrXJeRcwpTH/yzvw6H
         bSWWvNZQfQFZRJl75btoFO48ouG7/aAz+IPOXARjuDceCvjI/f9x4sBIRp9DLXy+ngNK
         lbxsnmHJ3W+Gpchf3xgObFk0hf7McvUjw4lJVgpLV4Qun+sbvbEvCYGK5tfrBROhRCOs
         NZqLIZ0Hmel7V0H0U8cUkmnDqhwPaQftM1pFTe2NiaNf+ELxF+3vr/ox+kEIqi5TEqMs
         8AeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U9OAwjwlZf2iCRvpXCo7aFWzt3NoyPAhU+bWQ48Xwkg=;
        b=m8cXf7jT2IGUUzqt28CXjmqJ6vzInMa5dqJ+RO6Mc6RUT9VueLbg2epNsFvDhDc0Lo
         OziQnGnhHrzpO2pHucZ3zPRn8TZMBuU21FCAGfHbQC13/fA4kmljcquta6dqNbbplP7F
         A0HgJLNiV7fKAmhpVZ53shjni09daaGJOV5fyMBgIpkk9w4skadutPdTdQmQHW0FqV/T
         a+8uKr/IEkGXSWmydWMEKBK7BzcV053AsT/l9yJvEm1ssKD1s9QHcg+pFUd4qYixwTCI
         44Q//NTLnhEg+J/We4XbS2AKDX7NXPgj/UyC8ZGvrDIiWH2Nr00dshxgYZoZocyse9dW
         GFjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vDaLz1LsXiMjxWHHnk66xOZZLsZgCAI8YQQ7+lIYYPSLe3qqT
	c1AVqTnUKlqoPsUszBcPl8A=
X-Google-Smtp-Source: ABdhPJxkMju1JtjDYxmgmsERHG+MuMlpqWJdUUAYZo4LfLvhjR5h9NdF8Jo2CJKQBsyja3GiW36p4Q==
X-Received: by 2002:a05:651c:290:: with SMTP id b16mr13670659ljo.453.1620058108520;
        Mon, 03 May 2021 09:08:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e2c:: with SMTP id o12ls747861lfg.2.gmail; Mon, 03 May
 2021 09:08:27 -0700 (PDT)
X-Received: by 2002:a05:6512:b14:: with SMTP id w20mr13750232lfu.528.1620058107464;
        Mon, 03 May 2021 09:08:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620058107; cv=none;
        d=google.com; s=arc-20160816;
        b=QHJOJj796C6CLmrFSB2kfkNGSep1MhWVrF5yRMqySZCayGqkSPxeurOLwaQnpbWa25
         /3QH/z/RFQwhYs8C9SjQ/9ZMaLmLKsJ8abhTAhBBdr3MzpnuokEvpb65CN0DuqVMn+JU
         Hmic/bwmr+rHtDErz98xlj3qHacPqEsQ+St3xr2ztUf8tn5Z8AtQgjYO48aRaMtzcXww
         R3SqbmeOl8TWMxI2iWmxkFY4oaihH6F2IsETfzIk0y1J1NsxZszj/CCUZGB7EhLEbKAd
         f5v2wekpyNagYHWDCZnpBCiXbvUFVSjUkBoWzsFIyloo3nwmMFBOgmtEB4XslCem1p80
         VIXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=4NoG7yaTfr3Ag07IElR2xxPrvYe9hfRf/DNNbGgeRNY=;
        b=l6BMxI0flgLdNozEIQ5HvDyaKN2xJ70lvR6pJsRv1O5F38ExEtXFj5Ypw5zOMDyqVU
         xLkCT/knv0N4TNzSt4o5CC4aY7EkJwx/RybOe9tDOjvMC0KYRKSPmwDPOOf0T/j/sdRQ
         yU75XVdFYq/zZcdQYyrshtDzkeIxjWy7kzv6ssEwumSEUNiUuh6sZa5fa13TgiKYCmym
         pN23tn3KsCw6kFNSuqmNJ8Qb0sbtMfUqcA/b6cN2hPgzN3T5cS4oSqZwT0thAA5ilm7Q
         yXlZ7myDoTAjemFf4xIfKhs5dMS8F0g3xYBiu6T1sBC81ZXOcJfYoRP5le+Ph65N1CyG
         t8oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id v3si1210688lfp.0.2021.05.03.09.08.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 09:08:27 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from mail-wm1-f42.google.com ([209.85.128.42]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MY60J-1m3F6F2CI1-00YTtT for <clang-built-linux@googlegroups.com>; Mon, 03
 May 2021 18:08:26 +0200
Received: by mail-wm1-f42.google.com with SMTP id b19-20020a05600c06d3b029014258a636e8so3832860wmn.2
        for <clang-built-linux@googlegroups.com>; Mon, 03 May 2021 09:08:26 -0700 (PDT)
X-Received: by 2002:a7b:c846:: with SMTP id c6mr32166374wml.75.1620058106200;
 Mon, 03 May 2021 09:08:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210430111641.1911207-1-schnelle@linux.ibm.com>
In-Reply-To: <20210430111641.1911207-1-schnelle@linux.ibm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 3 May 2021 18:07:41 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3mCujxC0=_cL6Z88Xh2cb=OY_Ct7DVpJNvRn1v9=FhkQ@mail.gmail.com>
Message-ID: <CAK8P3a3mCujxC0=_cL6Z88Xh2cb=OY_Ct7DVpJNvRn1v9=FhkQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
To: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>, "David S. Miller" <davem@davemloft.net>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>, 
	"open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>, 
	sparclinux <sparclinux@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:KfRDUteQSMKAZdQdMrRaZO7ATc29v3SuNR+c+XYnnq0Vq5s8cps
 Cmp3QeFk4FfggReqmPuSSxWMb05u1Fetw0nMVbPntQsqv6pe1cT7vvYtgFJFEUz8ujYvCtk
 ihNx9eejeaw4kiqLv/S5n/Lwv0LRBjFo2kUFFyA2M4px9oyzIXM5M/bKyIrfyISfViZLEs6
 ZaNV7JkR+LqCeIDtdNiXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Hac/n19uum4=:1j/tfMtSMvYN4Ory8YS+IG
 mmFAjwofHfJCnwSAGMZa6FfaUZ3T908FnEJtOAL4JinTBZqX4G1WUBMv9lmtU4dobmuMOmAaI
 NqG+9tWDaBqVWdHLBNu7WTptvFH5PlUdM2ZDJ7NaRo1w2XxoYGZC4q6gyx+yo/nmtjxSQTAJJ
 aPhLDXN6u6RTdLMdds9QSe2lFF2Qz1DHG+aaZB0rxjPqOW8BJcnU6GM+UfBsFgHVwof5uvuXP
 YQzthz8faZMcs+deN7nRNRLtwGXLwQACz81JU0Nb0+LerwuRWYSDo0AD5DyMZ+d76nmrEQsI8
 vhYQJow8tal/LMDYUnEWEHU3A39PP9y9n3tbTQ9NRA2LpbxT0ro1YRlW3hzYPvhSDPDitc1qd
 M5hcnrw8FnfCMjvOdy4PiXEAI0GSn9ciYPVjSOZ9tb01jzY0XIBcih6KbrH3602Up0nO0JF+l
 eAk4jn+av9OmV7qOHVVCNm4oykdqzVzZgjKJ0whq+v+59DKUiqj+hI3w2Z60F62PP1hQf9RAH
 j5XP5qtp2LPuCL7CS4eyXU=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, Apr 30, 2021 at 1:16 PM Niklas Schnelle <schnelle@linux.ibm.com> wrote:
>
> From: Niklas Schnelle <niklas@komani.de>
>
> This is version 4 of my attempt to get rid of a clang
> -Wnull-pointer-arithmetic warning for the use of PCI_IOBASE in
> asm-generic/io.h. This was originally found on s390 but should apply to
> all platforms leaving PCI_IOBASE undefined while making use of the inb()
> and friends helpers from asm-generic/io.h.
>
> This applies cleanly and was compile tested on top of v5.12 for the
> previously broken ARC, nds32, h8300 and risc-v architecture
>
> I did boot test this only on x86_64 and s390x the former implements
> inb() itself while the latter would emit a WARN_ONCE() but no drivers
> use inb().

This looks all fine to me, but with the merge window open right now, I
can't add it into linux-next yet, and it wouldn't qualify as a bugfix for 5.13.

Please resend them to me after -rc1 is out so I can merge it for
5.14 through the asm-generic tree.

Please add two small changes to the changelog texts:

- for patch 3, please include a 'Link: tag' to the lore archive of the
  previous discussion, that should cover any questions that people
  may have

- for the risc-v patch, I would suggest explaining that this fixes
  an existing runtime bug, not just a compiler error:
  | This is already broken, as accessing a fixed I/O port number of
  | an ISA device on NOMMU RISC-V would turn into a NULL pointer
  | dereference.
  Feel free to either copy this, or use your own explanation.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3mCujxC0%3D_cL6Z88Xh2cb%3DOY_Ct7DVpJNvRn1v9%3DFhkQ%40mail.gmail.com.
