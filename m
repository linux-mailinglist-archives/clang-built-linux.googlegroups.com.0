Return-Path: <clang-built-linux+bncBDFLHYPKYQGBBWE2ZP5QKGQEIUER4OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFE827BCAE
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 07:59:53 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id v21sf1162158oif.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 22:59:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601359192; cv=pass;
        d=google.com; s=arc-20160816;
        b=jUuc7KYcCWmTKJiDr+/EFyf//HtuQ97ikITzVCh4p5Qm+KqXZq/fzUSWiINU8nqQGn
         s9t6pOScTGC3rcxvFmuhVQFYxoH695esoy+pIxLzomDQ6SyB+z41ozzCLP3qt9z0pMG8
         WVnqzRq/WR77lh21wYjXbyavF83/7pTD+QyyhfJsBz08kEV2B9BP2H5gkEX9h+JPhVyM
         ZJlk7RXNCEISkwdoreTr4ij/XIxQ2yEWZi684hdTZ8q8zqYecYfrExc3laceMTVZJxk7
         PZCdAvTocCDUp21g8uxFhvfV9608uGSjF5BMrGocYsJ6+WhefCl4BlGEmK2HvjeZK5TK
         PLWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=v+7STIGTanAVi/eUm/oJMNVkCjixJi9weX11AXold5g=;
        b=V/IednvsqQVqDw9D7CPbt84VrqpwLQT8rA1sTcE7K+J0U48RLL7BiR9U5Mzf2+CS9w
         DTR/muOVNhIZ4OXjVuOHuxH4dq3cQkUlLlMq5LUbLWuf6PjYHkC4/HlvZ2yz8RAbg2hw
         zLJcIhIpuKxWhtdkyd8FyhohTYT5rSdr7JLAIYVLQUIu9dwzUL2aQSFEMZ8saSVRFsTo
         rCO4n/FbbxVeL7K3P749Zb6XO/iuh2C+WGRUWVc8QYGceohUFRu1aM6fPWJ+pKbvN+ZF
         cbV/TAM8sFFPt6PYfgA15yEtVGF4aH8mjgLCnKjHyotglWVg23MHimGMEfECmss5aHvi
         7KLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=gqGVhGn+;
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v+7STIGTanAVi/eUm/oJMNVkCjixJi9weX11AXold5g=;
        b=KgdfxCnUSNgQaGk5LYTgnOvPyK01t/BBwNNwdC4JSGMLUYBnQYHFv+EFx/FzKx0Je1
         HgAQilbo1oSmZ+U7D0C1jJMHXV4OwSI76CyEoJT+D5X/vAF/bE2DuFNJytunJd5ZvA1Y
         19fkILL+yzW9XDrHzxBC9vqWBGJmxlJ1GnkH7W4+FK5at6DyYu19g5mz0d7J4EFurPt+
         tkM9Gq+5LbwtBwSJqA9tAedF7phnDeZwFa70uJ9rguU4Oklt89mtDoBtktU7kcPNy7if
         phxve8A6F+mkchGBc2IJRlPk/bISGnp15pOzblL7wNHb1QwHEKXbAdhzuonks9hstWt+
         DZ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v+7STIGTanAVi/eUm/oJMNVkCjixJi9weX11AXold5g=;
        b=VfmlxaAwjQfb4KW1of19eD3x762C+aefOYa6xz0Xx7oY2KGnuozAobMPWPYWo95DQR
         P6b9ISRRkF5GA91Ii5CuF2QcotzIX2PS6DYwlpmJQPKvRqcuIdU4faOO1C14NeTNfWNT
         CgSzsyc893mNfX3HNwOhyG5AaXMUxstD3GX7bfRRTOvMNmWuglCNNHR99Fmk0sRNWlpD
         jWEuU4n4aXLhZnAPF/1QCpWpDEbEBgv31XvVs+zJqmZxpKo/lQft1FnlacjjwlkGXCC8
         4wOFtWUQN9BdoV+pq05NPfgyfxFIAD9FNun5yPOD4Q6W0vbgWqkJd7KpbbYhGT6TPnDI
         /rZA==
X-Gm-Message-State: AOAM532EuxFOlWHHzWPpEl7y+pDOIA3IGPKDam0sMe1BChp7k2guBVgG
	sc6gz/A58j3onXBJu7IJv0g=
X-Google-Smtp-Source: ABdhPJzmOckogOntIYQ2h24KrzIAjI2Lv8qDk6RztVvTXzOti4JvZN0xHaqc1lMl+8YCNTgzOhOxgw==
X-Received: by 2002:aca:654b:: with SMTP id j11mr1539494oiw.77.1601359192106;
        Mon, 28 Sep 2020 22:59:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dd0b:: with SMTP id u11ls826001oig.6.gmail; Mon, 28 Sep
 2020 22:59:51 -0700 (PDT)
X-Received: by 2002:a54:4e90:: with SMTP id c16mr1491124oiy.53.1601359191723;
        Mon, 28 Sep 2020 22:59:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601359191; cv=none;
        d=google.com; s=arc-20160816;
        b=LeVUfX6eKjN/a6FDgGMGPgbNwklaIxkrA381gXa35iOyLKTbzI8WXvchnC1F2Oi0nI
         XlmA9nraArU/oMHVDdm2BXNmOuy2kjNt1H8TeRUdyyfOG03jtN5u/vbQOjD8dtg8zcCi
         FSCY4KkwO0k46RE31wGxvfH5uSKkj3KVi+kQl8K39nmk5pT4ywDQbn2SmXiFq0tWXuj/
         vkOd2toDZvqxftX+hxZwd9FyYIIpZFWdPaeS5A+/MxaTiw/J3xhb0lT12aOvI7yQCnZl
         IEeUru9VR3UdZesZ0K4ifQmE/Chrf87NQofQ+pPMR+6sf/CxTYGxcOhdQthBRm/2X102
         HY1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=TrXUDYwBoolpojQ6Vfg8wnJtYyuv0RloSLQXWZhaFZ0=;
        b=Ar+L14/QTOTjJVcINOC904chiEgvIad9m61oONSe3TkEbPLOy/uHg0M0QNefgS8tPK
         Jh0VHM2DMxWTSw9odeHd+qTdnvCoJBEuTxC7ZzqpQOyfa1EN1dALbwlUy1DaIUf+HOMl
         k+Zce0lUWu2r4ziBQfvtZ4Pd9B3Sk8GH/OytZ5oTxnp+6uxlBIm075tJCoYdQiBmoiqQ
         UT/3a5KjtZwcEUFHGVljeBgINsj04Y7xlAJk6CGSlCT++7cS29Se+DGaLHaD9krbFyiV
         Dgh1UWESlYoNFuumPcPqxJ6HlRZh8/rnzIrhqN3VJCH8KNluASFGUj1ovl39bsrRcVpo
         SF1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=gqGVhGn+;
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id k144si262679oih.5.2020.09.28.22.59.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 22:59:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08T5xoZD117847;
	Tue, 29 Sep 2020 00:59:50 -0500
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08T5xohb101094
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 29 Sep 2020 00:59:50 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 29
 Sep 2020 00:59:50 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 29 Sep 2020 00:59:49 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08T5xmPH048457;
	Tue, 29 Sep 2020 00:59:48 -0500
Subject: Re: sound/soc/ti/j721e-evm.c:528:34: warning: unused variable
 'j721e_audio_of_match'
To: Mark Brown <broonie@kernel.org>,
        Nick Desaulniers
	<ndesaulniers@google.com>
CC: kernel test robot <lkp@intel.com>, <kbuild-all@lists.01.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML
	<linux-kernel@vger.kernel.org>
References: <202009271553.4OjMpGkX%lkp@intel.com>
 <76cae106-b643-57a9-e82e-48e46ebf1b70@ti.com>
 <CAKwvOdnsQY6S+3zAH6_SD0ifbUaSDFj9mBdhF4GVq6VB=tjFsA@mail.gmail.com>
 <20200928180412.GA4827@sirena.org.uk>
From: "'Peter Ujfalusi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
X-Pep-Version: 2.0
Message-ID: <c97e8363-1e8e-38fe-3214-cff47f09e459@ti.com>
Date: Tue, 29 Sep 2020 09:00:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928180412.GA4827@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: peter.ujfalusi@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=gqGVhGn+;       spf=pass
 (google.com: domain of peter.ujfalusi@ti.com designates 198.47.19.142 as
 permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
X-Original-From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Reply-To: Peter Ujfalusi <peter.ujfalusi@ti.com>
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



On 28/09/2020 21.04, Mark Brown wrote:
> On Mon, Sep 28, 2020 at 10:52:54AM -0700, Nick Desaulniers wrote:
>> On Mon, Sep 28, 2020 at 12:27 AM 'Peter Ujfalusi' via Clang Built
>=20
>>> Right, in the attached .config:
>>> # CONFIG_OF is not set
>=20
>>> There must be a clean way to handle this without extensive ifedfery...
>=20
>> Pretty sure I just saw a patch go by wrapping another device table
>> definition in #ifdef CONFIG_OF, so it's not unusual.
>=20
> It's the standard solution, it's just not as clean as would be ideal :/

The ifdef would be preferred if the driver could work in non DT boot (to
save few bytes) but since it is not the case here:

https://lore.kernel.org/alsa-devel/20200928074330.13029-1-peter.ujfalusi@ti=
.com/

Not much point to size optimize for randconfig builds ;)

- P=C3=A9ter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/c97e8363-1e8e-38fe-3214-cff47f09e459%40ti.com.
