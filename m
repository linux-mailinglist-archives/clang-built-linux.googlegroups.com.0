Return-Path: <clang-built-linux+bncBAABBWVU6X5QKGQEZWCCK3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B62285870
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Oct 2020 08:04:11 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id i21sf377616ejb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Oct 2020 23:04:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602050651; cv=pass;
        d=google.com; s=arc-20160816;
        b=VS/kwpOGBAK9kgvCd4mNoOY2R/HZN0kKAF0MTy7muTDGM6CGUHlbZCTMAKVtpHKQnm
         B5ClPBnzI02YYZZfZrcOi+D5fZR54nXgITSw+lcQadN52yPhMOsIlor+DUtl4LkH82Xj
         8arCd92jWSPPQoHvyrAK8pKQ/m0oRy6XMXwYdGwVs4QlYzjV0HSaieZ5Uk1lZm4M8N98
         2CvsuXPWjXQtbESGyfsn6BgSmQ6PyXGAUdZSE9P0SpltAtk3NcWTXNmf55GQcvTaNmaN
         GeM4E31BhHOiZyg1BPtX55cBncsVaCoWMk9YkoXCaU/geqmcRE14e2ZGzXcIxTXUDWYC
         nfsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=wlTWpd0RcjaYG/JOiTw9y5V7zOTVilTWh5OsaOFCGQc=;
        b=IBPYpribPc+00Bo2D3iEkt9elzD+YWNQRHWY05QsB2oIg9hcrxvBDLD0bnTDpC+lCg
         yNUuP+pFRe/w7X01ng4tbeGerLFrFBM6SR2hOuaJgrWvX96mZI7zgiF/TVs19CVAkK4t
         cHxx7isf/ZDSxwYZGZEiKiKzqo+N1sZEnrNstzVzNIN7fa43ziJAiuEVKWeyL1zFAnxH
         kMZFN9q/E7uZMImD0g9xc9JBvrArpY4ThfSszdbO/GSCkvDjcETB+WoSoZtWSHBF/Fi9
         VM6HPkwQ+8LQlO/+5zitg7MSCvtKQTZiZzEv4xM8L7YMLFpkL5Z7NqK4IyhesBLcKWIV
         UgnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wlTWpd0RcjaYG/JOiTw9y5V7zOTVilTWh5OsaOFCGQc=;
        b=s5eaQZ6kzBgdD5OyXfMIBQOFQ+I36uYeoTSCaeIOh7fkrmY9z5NlVAs0FbqqZeVN8x
         q0Igk7AbR+bH68KD3wITOZqaHpxBu1pDQN2VZrGSLrmaBZ1rfUjdsZ+Uwr1nVLL3HOP9
         iNRK4MgyADm3xJsufpbfdsr//epEIkq5B8CZruPT4PO1zLSRBnJrSqN2p8vSFsSao9BZ
         DVbPGn9+MoogrcUFYOL3ixoGtdzkN9/SPxNObHVNXfYrobZW7b6Bot9z6Bgecrr54PLu
         GdT2CRuKgAEU19RYqhzosxoBrZOopsHj3eMVw0WwHdUi5KVCP7J8EX9SjxejLr1rvkzf
         EIjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wlTWpd0RcjaYG/JOiTw9y5V7zOTVilTWh5OsaOFCGQc=;
        b=PaybQTG7ntZzc4wtXC9nI6rBlwgRhYrwZ91NvbYhZalD/r8KkoleBr/r4yaY0kEKwV
         ZQ23WEHqR2v8E1kHGp35VIAwLqnJH0r8hGDRL8HDUOqQoVxH2qPK9q43ujEI3Hde587b
         thfcFw2CFAmlFhWpX+91MHXRXu02usQRbo/wthd6ZgSfY3ovFtfOMlF8DMEDqZylLLRU
         iUmyjyzGY1EIhCjhQX+AMjBis5za+xNAuutFawa6yJHUVBoySLUP23BmLGe9IuzqeGat
         p9xHo1SsA6Snk5BRRpAbhLH+9nKM1PJ1ukNDvoAZ5/QmSS7RHQYliI0BOSRhiwj4MfMB
         OFlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SmZi3WyWOO9s9qmUvEBfCGeMHcctNQ3X30UYALjXtNbbbgj51
	cpjsvEvZD/yyX/3c4Sj6jNs=
X-Google-Smtp-Source: ABdhPJyQHYuz7Coz0eJJ4o5fb2GxlVsB7qcBxQTIA5CqQ6/LJllHUG9Dpu2cMMRRHVmHJ574PkJWyg==
X-Received: by 2002:a17:906:7f8d:: with SMTP id f13mr1447245ejr.540.1602050651207;
        Tue, 06 Oct 2020 23:04:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d3c:: with SMTP id dh28ls1176650edb.0.gmail; Tue,
 06 Oct 2020 23:04:10 -0700 (PDT)
X-Received: by 2002:aa7:c54f:: with SMTP id s15mr1825845edr.107.1602050650449;
        Tue, 06 Oct 2020 23:04:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602050650; cv=none;
        d=google.com; s=arc-20160816;
        b=UdN5BBvlw4kny/2vUwXEagJe7f1Xd1GoP+AnryBnRy/+hT4gkdkXX/fS0pV3/Uin0+
         lIjWg8RD7NBrAvg3XW77x3eKqJAzVTOwcuRmLsiLZCHK/aSgqwj9yJJgO955XaSEOlsh
         wW7j7z5RKnZXxVhT7qa5s+Ps4GIWTIMDzLQW8bs6Np4K3Bo3exIIERsgfb1KR4MepdHW
         UKJzH8td3TZQbKBOMyQo5gLF1KtgOvA7QzVpu8s9kGfdvu6/zOwlzo+QieFPym1+f6Od
         G2M5xIESlVhmvVPnShD9m8CaFgvU/NIM/dQJ8+WYNYWbL0YsrY/ZPegA3z+uG47oxNwM
         Kj2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Oso8i+0XeZBW1twVLNqgpTZYIwzOtFJ9zubvLJt/pQI=;
        b=dY8g5k1iZBLKEXcTok6egrT2vkLMnApIEPLhVet0gWX79p7YRfdC0PiswzjEmBFnCJ
         eZcyPjRY29Ir8Mwa8EmNJyVoFzq88B8NFNL+VUk59Q1fpP99EOhM49MZs2ehEAdbmtiP
         +QAKoIO92/3wCM9xsQ87GsxWXHLo4Iq1+WGSgSDAulHapD6rReJWON1ltrqufX/ACxol
         ptNsHPM/0glm4ouRzCyH1M3pr7ISQuKsAsJLMU7DX7pDKNOZiWGusL2tVLtN0UTfezl3
         Jmm/1BWS9ooYYKWaWue0EZij+XedtmWL+Kj+/fIdfxDfJAMHGSevQJQGO/tIdiSlB34F
         aXVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id v18si28751edx.4.2020.10.06.23.04.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2020 23:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4C5kLJ6hhDz9v0Mg;
	Wed,  7 Oct 2020 08:04:08 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id C3Q4p0VCWNtv; Wed,  7 Oct 2020 08:04:08 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4C5kLJ5Xg3z9v0Mf;
	Wed,  7 Oct 2020 08:04:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id B489A8B801;
	Wed,  7 Oct 2020 08:04:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id MTwXJtHzQ69o; Wed,  7 Oct 2020 08:04:09 +0200 (CEST)
Received: from [172.25.230.104] (po15451.idsi0.si.c-s.fr [172.25.230.104])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 7A6AC8B75E;
	Wed,  7 Oct 2020 08:04:09 +0200 (CEST)
Subject: Re: [powerpc:next-test 76/183]
 arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; found `@',
 expected `,'
To: kernel test robot <lkp@intel.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linuxppc-dev@lists.ozlabs.org
References: <202010070441.K8Bb46Rt-lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <9d8b2abf-000f-bad8-ae76-719a592584ff@csgroup.eu>
Date: Wed, 7 Oct 2020 08:03:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <202010070441.K8Bb46Rt-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 06/10/2020 =C3=A0 22:41, kernel test robot a =C3=A9crit=C2=A0:
> Hi Michael,
>=20
> First bad commit (maybe !=3D root cause):
>=20
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git=
 next-test
> head:   72cdd117c449896c707fc6cfe5b90978160697d0
> commit: 231b232df8f67e7d37af01259c21f2a131c3911e [76/183] powerpc/64: Mak=
e VDSO32 track COMPAT on 64-bit
> config: powerpc-randconfig-r033-20201005 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1127=
662c6dc2a276839c75a42238b11a3ad00f32)

There has been already a discussion on this, see=20
https://groups.google.com/g/clang-built-linux/c/ayNmi3HoNdY/m/ROdg7avVBwAJ

This apparently is a clang issue. The commit mentionned here is only exposi=
ng the issue, but the=20
issue is not in the commit itself.

Regardless, this error should go away when we switch to the generic C VDSO.

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/9d8b2abf-000f-bad8-ae76-719a592584ff%40csgroup.eu.
