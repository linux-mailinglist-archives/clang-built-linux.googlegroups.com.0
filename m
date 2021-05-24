Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBBXNV2CQMGQEQUH4CYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B7F38E8A0
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 16:21:58 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id j2-20020a2e6e020000b02900f2f75a122asf12324519ljc.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 07:21:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621866118; cv=pass;
        d=google.com; s=arc-20160816;
        b=ugi2ps1b2SmcMh0Li5d112teqX/+yf1GCwhhc2JfN71IXt+eHAK3X947sfF/i8iOuQ
         RSATjjwbGkVppMDZa06daBaY1zYGiz2a4A/h4qWKD0Zz6slc+f8Vge8AzvgYz4JI/GIz
         O75vfIye0iqdjdLqDjrvnHyZoBxAmTBzsvuX179Zvbhz7bJlXYkEJ3mDjkyyurN8ie8n
         NeI9jCSZGCQDW0YbXuz2KAhPdGSaktdIlU5ZsBe/bniYVxUthBebf6fzS2KFanze0jer
         WT/iSApH29YahRlWVoZn61mp5GThTpOEtLCyACVNAUAIr7x8BA9KbJB1MaVklUTcz6Ff
         uzKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=5Nhq+k3fwfzxT8tLwEy5YvQPGCRQoiRs7xPC/XpR18E=;
        b=eORPghHQQzYITlo1qYBMNfcN9DERu5c0pvKScZ2+4B2nETjIaTf9dYwaTsk8eKxRi2
         2OqVAJ/nwUb/pm+dFRP4ZBO1eMsnN5xEKEBN2nizGCDxDw5TWxdelBNBkYwpuLXfeNhc
         e3YjW3dw/2naWqC2IvAr7OyHgtYUURheKdgw0rSU4tGTKBEjXstXcYqz/7gNjo4KPGLz
         Am3d0sA6o/V9PF3TqQBB0Jm0Z6RmoXsXOGXatRpP1UQtqKlDNlvH2s+He4XjfmYBT3mp
         z37QhLGU5agi3Ek7AAzR3F+zxODN7G7jsXTTiiJ4vhQI3qUK0i1bI4G3Y1cK9sqOECRW
         yilQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o6fgqnwr;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Nhq+k3fwfzxT8tLwEy5YvQPGCRQoiRs7xPC/XpR18E=;
        b=Dmh/Yl7J2mqmRjMdK90Hc6F2IiV7zKOlrPfPYM8ovQrbZz09I5eGykqnEcSBr/L5hL
         wia4EsNo3t0pAKzt7mF2kqEVJsu8Dth+QxaeKph2xmGZBaQB9chnV5p+ElGE4/vJ0I2C
         s+hYQB/Znke61Co5gg4m+w/JbyzoND0beI4cVqPHKCkf3vn0itKEJLt9UX/IUzI1ZUVb
         XemHTNZP2sdZ2DJWSJKo1uNGj2WJlUrC+gkrpcf+VK2lCq8syhUZsJZPjvXOgPaJBuYu
         bw8b2RkDSTWolVObTgho5MM+RWxlj/wlsu9LD9tpCGbNwC077PBBdQJowi84wAw+GLMO
         gLuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Nhq+k3fwfzxT8tLwEy5YvQPGCRQoiRs7xPC/XpR18E=;
        b=G0xzILmRQaO6B331Tov3Rj4xWI2tVW+rTfpEqEPeUGYL32KR/zjVge8Lb1O7CxqPnC
         YtEqjzHLGWXDUEtI7ShhFBP0Itai+Sw7P9kqQ46jpVwrGTHlalQqxaOVGcN/Wby/ZD3K
         piV9AgzKNZZXq+qvRb/7y+hKyi4cC5Flr21IjDlGyfVNPIk2gjpTWm0q64d0yVUsuVD9
         QlKBrqx+47kgZXkHFtANWgby5MDs0SBnjMlm59PjrBxTJBMAllaQAezGpNaSvXxWu6U4
         zssikJkFMn2ofzoszGDzYP9vPBgctRfKMy+kT7AUv/Dq4uYiHBw3vA+clFsz9UxnEBWQ
         r7hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Nhq+k3fwfzxT8tLwEy5YvQPGCRQoiRs7xPC/XpR18E=;
        b=KGwK33Y6rZYvrI/u0QrmtVqHt8SUpuaGA0+JmhFSDwCQSw5taqpyKyPcF1LnhkOfnm
         uFRVH4QpJI5tlv+RXsbroOZ+BUuhgAh3DJBzm/VV4HQlNbJTnJp81nUDqe083+hIRVwN
         tyaXLuox6K0ot6OpnwKEcXBbUvNxCiT8gd3omuJG28ERjFpT2U1R7MBuRKF7iMuQ1lWx
         Bj+/xLy82mA+AFJo+8iyJ/2FOKa965lQkMwWq27BTifZ5P4IMMBgUB6J7wqvba8rclMI
         8GxtG/FAcp/ua31+LNpcco9F08UeCyGgD4lHSlWdd+2Et7uBmzn7ZDyUK+QBTbhdvkDU
         PKrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pqB0can3JYylfMkX4prNNfO3Fhmh+AKLZC2MfZVNlN29DNlFU
	oAE+yQND28vYQ83Wh5YTHR4=
X-Google-Smtp-Source: ABdhPJwwG8oK2upJccqlnkPDNiZK2DZ2ecRp70r6io2ySaG/qdURNi/WcTStXdeR2Ygcq6Lp+qr+MA==
X-Received: by 2002:a05:6512:1192:: with SMTP id g18mr10995309lfr.659.1621866118242;
        Mon, 24 May 2021 07:21:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9806:: with SMTP id a6ls2461458ljj.10.gmail; Mon, 24 May
 2021 07:21:57 -0700 (PDT)
X-Received: by 2002:a2e:b8d5:: with SMTP id s21mr16718416ljp.163.1621866117197;
        Mon, 24 May 2021 07:21:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621866117; cv=none;
        d=google.com; s=arc-20160816;
        b=qblCnHeAITXh7tSW6gAC3izxZzZOaOIUBeOLp8B/ufXkAaxcVpFJrRBzbOU1K78PuJ
         0UxK9G/Rdk67Zsz+NhlThRUBdSEOjjsQriV06dftRLHn2UdHfO4HlxuTkp0ObU45utAg
         tH6KQslyVVrSFkwovezx/IgVO6FPUVyOQQvrmW8G4ipV2sjyLXJ35iVjSFoRnHuB/AwZ
         VC4bio7PLH+fQkBZxLWPRNZ9lxUzKnhTMBBF75ydAufbu/BAL1G9hEAbnyMY18ug4EWv
         0t9MXJaezUZ6fLlzJ9DNTK5+U/EhAG7nFipcIqjRPkRh/xpMzbt8ALNeQE4FhhsIzl0A
         vxQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=WvxUCc4ZAD7JYmOhdqHj+SdkI9uXTGsko5jiNtvAqJY=;
        b=gc6D4vWS3hZr/wlixrJ7/NBe35sv4qyDAKTWTXCuCmY2zfEC/HFxXFi/GOFz031RgN
         kcXC+AKamG+OXeIU6rkzcwanNbhS3OeNsaB5lhxyqIMrw9S9K8SsH/PIiqhwAF5bbceA
         o7fHbjEC7cJj+8Ej459grA8ajA74RIiq6YxABZJXJdlts93HAEcb5bB53gXLs/rm1GD1
         ciebnhvcQvCsV3Zp4QtrudJ/pGRhmhX7etSltqkFa5YvHhyH9N7x2wK4yfjsEV5FiKfL
         egdoFjhcsGGheY0lQvKsPylXkLXiy1L7s/S0mfrf2dDT6v5G0baNqiKDx/dqazE52+QK
         DpCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o6fgqnwr;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id a39si76678ljq.2.2021.05.24.07.21.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 07:21:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id j6so38235674lfr.11
        for <clang-built-linux@googlegroups.com>; Mon, 24 May 2021 07:21:57 -0700 (PDT)
X-Received: by 2002:a05:6512:1027:: with SMTP id r7mr10988589lfr.153.1621866117028;
        Mon, 24 May 2021 07:21:57 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-110.dynamic.spd-mgts.ru. [109.252.193.110])
        by smtp.googlemail.com with ESMTPSA id v25sm1492344lfe.60.2021.05.24.07.21.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 07:21:56 -0700 (PDT)
Subject: Re: [PATCH v3 2/4] ASoC: tegra: Unify ASoC machine drivers
To: kernel test robot <lkp@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 Ion Agorria <ion@agorria.com>, Svyatoslav Ryhel <clamor95@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 alsa-devel@alsa-project.org, linux-tegra@vger.kernel.org
References: <20210523234437.25077-3-digetx@gmail.com>
 <202105241048.gypbTx2I-lkp@intel.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <97f88bb4-2dcf-4905-ac07-f08adf2f6582@gmail.com>
Date: Mon, 24 May 2021 17:21:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <202105241048.gypbTx2I-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o6fgqnwr;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::136 as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

24.05.2021 05:34, kernel test robot =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
>     66=09
>     67	static int tegra_machine_event(struct snd_soc_dapm_widget *w,
>     68				       struct snd_kcontrol *k, int event)
>     69	{
>     70		struct snd_soc_dapm_context *dapm =3D w->dapm;
>     71		struct tegra_machine *machine =3D snd_soc_card_get_drvdata(dapm->=
card);
>     72=09
>   > 73		if (machine->asoc->dapm_event) {
>     74			int ret =3D machine->asoc->dapm_event(w, k, event);
>     75			if (ret <=3D 0)
>     76				return ret;
>     77		}

That dapm_event hook indeed shouldn't belong to this patch. I changed my
build scripts to compile-test sound drivers. This will be fixed in v4.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/97f88bb4-2dcf-4905-ac07-f08adf2f6582%40gmail.com.
