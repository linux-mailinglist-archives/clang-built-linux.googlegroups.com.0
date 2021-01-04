Return-Path: <clang-built-linux+bncBDPN5MW44EDBBC7WZH7QKGQEAHFPIWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC4E2E8F61
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 03:18:53 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id m23sf20949538pgl.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 03 Jan 2021 18:18:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609726731; cv=pass;
        d=google.com; s=arc-20160816;
        b=wI9/Tz0R4Z2kSU2d57F5Vt3ZkBBK8UMBJLav44NLP4t2O8AZ2YlbiMWX4Bp5kgIdJq
         6f2AXizM/U7HxivYBSP3cH3YqZ4ienl/fvTTtEYACNcclW+9d999itoAoDnvncGaFm6P
         /hv7HZvhG9LcarNiU8onmRtk9zFvfVpAc1fQj3MUL3vUNbBkcPzQtxTSTy4HX0HpyKTg
         JBl4MSXBmxCFEcr6gHsvppBQQtzA8bHViaEXSnJ65U6ZUjKtQYFVhDKgt4WmlqKq2jIT
         GU05wE5JhhM9Qo00OgPrMg2THhQHttO24TtYcaWmSvOeVuW+LAjtd4H7qqO2Kxfiq6bg
         nbHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=9CGEdhpxYxQfPMcgF3q9uu1FZkhTGNNdZJYtxr1ZJE4=;
        b=M2g7R6oSVUfsrnobsJ630RrTeC18wtZQNrqwq0EDwaBkfve4nspzjRlDK4P+aCvLLX
         2BKO3TjgO2zREd8saSWKcKzz3Z9DWzMzzJD05tWGx/9lflYbs0OYUV2cRlWeolI8ysUJ
         AySmavg9vjkpK/S7nRNfYfpEIrlPdf5+kqnB/WOn1qOm3gMG+ahWFw0vLFapaWZ6oeFn
         5Ez2XS8ij462q8utjdQn4cynPZaXhnW9RiJtARKcxI7RwK4/+o6vdS27zSrb+KIJgl8W
         kRw+PHhJIVUfax30Q/NP2fDx7EMmbh8ndYzghcHa4N3VTsWvq1cjje6yWTeY9YHTauHF
         7L7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ieee.org header.s=google header.b="WqeDyl/n";
       spf=pass (google.com: domain of elder@ieee.org designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=elder@ieee.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ieee.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9CGEdhpxYxQfPMcgF3q9uu1FZkhTGNNdZJYtxr1ZJE4=;
        b=Z27Z3LIqR+YagOKu31n39Pbiq/Dl1ZjR8/uDfX2fzQFKK2YDLd2SZjxCjLx8OBLrgM
         7nXe8hpb0j5s2+Evvro2whh0cOTEhNH/dH72XtZIZhwkg7VbdSXRPTXn1pB32L6sB+io
         rQB+ZcHz+rmEmXziAKf0f4MnDg1YAXk6cRWkm2DzEhAPcOkjPFJeiDBae53ISlkbBZTd
         b8f6oF48eL2EAGjVww8HS0pArLvXKK229MI2Y9aii6LUo2NbsXPeEHtHcIDTzs9XteNi
         0ARBqSDBLm2ST8r5WvtMPsqLQBiR/DgXEflSc0sPxSJ8y6G5cDEdrnQfIT2SgWC1yGa1
         jEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9CGEdhpxYxQfPMcgF3q9uu1FZkhTGNNdZJYtxr1ZJE4=;
        b=O3PHkR49BJ9KQ5Blqo3cUATL2IefQDg7CpwcduWvWRxHA5YVpcxkkYXw6tcvmE6JTp
         03TqO14dx6ZBd9hyhjPAGVy1bm4PfSuUaRUOvaE4U5jDPSk1uI2M18Oo0lpQnAmdwsBw
         hqgNC/H8GzQFEt3ZL9FBFxFfj0W0CRtcNOS07yrLsarfe/fe6WzxlGjBRgjfmuQEzLBy
         MEFENqbivU2m9QRmxInlVyXMnJqg1cdd0eK3GFZHHUXDs28dXO80nICdgDWyisLBSCeQ
         uPCXVwV+k11dp1gjFTbCEO2LS+/w1ryL8HDWkyuKcBOJLFsqpahC5OT/BgVtVyRMNv6b
         CTyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lnUFfk52VlIFXpzw2nMUKdznfkJoEozkXfnlgEKUl7Xc/y/8J
	n8DpjUp23mlki7Fsq7ZD/38=
X-Google-Smtp-Source: ABdhPJyOFeJfu+dwYYdaDv+HTj0zdCZpM2P1lWeOXxjxDAL1N9oP5+vOj9aBdpEHeQRmmcKIZ6dYcw==
X-Received: by 2002:a62:80ce:0:b029:19d:b280:5019 with SMTP id j197-20020a6280ce0000b029019db2805019mr43395147pfd.43.1609726731365;
        Sun, 03 Jan 2021 18:18:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls24009063plq.7.gmail; Sun, 03
 Jan 2021 18:18:50 -0800 (PST)
X-Received: by 2002:a17:90a:8c87:: with SMTP id b7mr28449068pjo.158.1609726730750;
        Sun, 03 Jan 2021 18:18:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609726730; cv=none;
        d=google.com; s=arc-20160816;
        b=kWxiAHbnzc76aL7XCswQQ071JSbS68N65iFUc8J5m9lEzRu2kAL18DXU60bAkelLa+
         BIoy8qYhAnh8orhcCLDYkQ5cK3saInzc3e4y1jQFyRWZnKxxyoyqDneTCheTazMPP8Jq
         Gmqw6uYiGmJMNX43koGwljv2HftyfquVXjTBANQhizVov3UzNxRKZ3+FrtCC3jqen+kP
         guU6oTJpGjdtQE8c225K87MjYHSqnRiNUux53T9J2arU9wToP6S4BBuEC/wLNd0k7PJF
         AtQc74fg2S7KEbSGwqFzR6voc2VDq4g+pAevqQvJ1Y6bi+jzAaOgc3i5fKOK1gGdPPtC
         XS9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=T3zwU8+9vJsSFH0cocgNEnbGtFiXyYPpUvK1pfeu9Jc=;
        b=cjolh829fKiNuuHjmoDlN+NQSJ5PVJWkSIihRyuAltLQgpU/Zul0H+m4wXGCdS0r2o
         FbxJuLuBv72Fn0hBXcsILg9udeex0TqZ/YQZyiPxCezwl0B2w7ZlorUAMmhsgZ7n2b9k
         wufOJ/XxeV7GyKTmmd9SlN1IPIeynuPeMffbfOxssSPX3lpiKRfCqycUTQAuJt3vndmw
         Zh9Ady6npJMQI0ENLP3n7ogrFh5ShyVzrpQpHlAcKkzc3uMrJmpV+hQgJI/wU+WINEzK
         yIpHKp1c22+nPGrYgsub5e0Yf3sSeMjX+by63EVe8jnljFnN9+mdUFD/DL4c8NpcadOh
         mfbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ieee.org header.s=google header.b="WqeDyl/n";
       spf=pass (google.com: domain of elder@ieee.org designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=elder@ieee.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ieee.org
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id r2si3542742pls.2.2021.01.03.18.18.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jan 2021 18:18:50 -0800 (PST)
Received-SPF: pass (google.com: domain of elder@ieee.org designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id d9so23722069iob.6
        for <clang-built-linux@googlegroups.com>; Sun, 03 Jan 2021 18:18:50 -0800 (PST)
X-Received: by 2002:a6b:7d42:: with SMTP id d2mr57793459ioq.176.1609726729750;
        Sun, 03 Jan 2021 18:18:49 -0800 (PST)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id y12sm42527985ilk.32.2021.01.03.18.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jan 2021 18:18:49 -0800 (PST)
Subject: Re: [PATCH] staging: greybus: fix stack size warning with UBSAN
To: Arnd Bergmann <arnd@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 Coiby Xu <coiby.xu@gmail.com>, greybus-dev@lists.linaro.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210103223541.2790855-1-arnd@kernel.org>
From: Alex Elder <elder@ieee.org>
Message-ID: <d9c341c9-9005-b425-9dd8-e797869bbcb0@ieee.org>
Date: Sun, 3 Jan 2021 20:18:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210103223541.2790855-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: elder@ieee.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ieee.org header.s=google header.b="WqeDyl/n";       spf=pass
 (google.com: domain of elder@ieee.org designates 2607:f8b0:4864:20::d31 as
 permitted sender) smtp.mailfrom=elder@ieee.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ieee.org
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

On 1/3/21 4:35 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang warns about excessive stack usage in this driver when
> UBSAN is enabled:
> 
> drivers/staging/greybus/audio_topology.c:977:12: error: stack frame size of 1836 bytes in function 'gbaudio_tplg_create_widget' [-Werror,-Wframe-larger-than=]
> 
> Rework this code to no longer use compound literals for
> initializing the structure in each case, but instead keep
> the common bits in a preallocated constant array and copy
> them as needed.

This is good, but I have a few comments.

You took out the default case, and it seems you are using
a w->type value bigger than the initialization array to
determine validity.  But there are more values defined in
the snd_soc_dapm_type enumerated type than are explicitly
listed as cases in the switch statement.  So the switch
statement no longer treats some types as invalid (such
as snd_soc_dapm_demux).  Am I missing something?

You are setting explicit names, such as "spk", "hp",
"mic", etc. in the initialization array.  But you
update the name after (struct) assigning from the
array.  I have no real objection I guess, but why
bother?  Why not just use null pointers in the
initialization array?

You change a semicolon to a comma in one spot, and you
should not have.  I'll point that out below.

I like that you got rid of the type casts, which were
apparently unnecessary.

You dropped the break in the final case in the switch
statement, but in an earlier discussion I think we
concluded that wasn't a problem.

I guess the main thing is the first thing mentioned.


Thanks.

					-Alex

> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/staging/greybus/audio_topology.c | 106 ++++++++++-------------
>   1 file changed, 47 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
> index 96b8b29fe899..c03873915c20 100644
> --- a/drivers/staging/greybus/audio_topology.c
> +++ b/drivers/staging/greybus/audio_topology.c
> @@ -974,6 +974,44 @@ static int gbaudio_widget_event(struct snd_soc_dapm_widget *w,
>   	return ret;
>   }
>   
> +static const struct snd_soc_dapm_widget gbaudio_widgets[] = {
> +	[snd_soc_dapm_spk]	= SND_SOC_DAPM_SPK("spk", gbcodec_event_spk),
> +	[snd_soc_dapm_hp]	= SND_SOC_DAPM_HP("hp", gbcodec_event_hp),
> +	[snd_soc_dapm_mic]	= SND_SOC_DAPM_MIC("mic", gbcodec_event_int_mic),

. . .

> @@ -1050,78 +1088,28 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
>   	strlcpy(temp_name, w->name, NAME_SIZE);
>   	snprintf(w->name, NAME_SIZE, "GB %d %s", module->dev_id, temp_name);
>   
> +	if (w->type > ARRAY_SIZE(gbaudio_widgets)) {
> +		ret = -EINVAL;
> +		goto error;
> +	}
> +	*dw = gbaudio_widgets[w->type];
> +	dw->name = w->name;
> +
>   	switch (w->type) {
>   	case snd_soc_dapm_spk:
> -		*dw = (struct snd_soc_dapm_widget)
> -			SND_SOC_DAPM_SPK(w->name, gbcodec_event_spk);
>   		module->op_devices |= GBAUDIO_DEVICE_OUT_SPEAKER;
>   		break;
>   	case snd_soc_dapm_hp:
> -		*dw = (struct snd_soc_dapm_widget)
> -			SND_SOC_DAPM_HP(w->name, gbcodec_event_hp);
>   		module->op_devices |= (GBAUDIO_DEVICE_OUT_WIRED_HEADSET
> -					| GBAUDIO_DEVICE_OUT_WIRED_HEADPHONE);
> +					| GBAUDIO_DEVICE_OUT_WIRED_HEADPHONE),

Please fix this (above) to preserve the original semicolon.

>   		module->ip_devices |= GBAUDIO_DEVICE_IN_WIRED_HEADSET;
>   		break;
>   	case snd_soc_dapm_mic:
> -		*dw = (struct snd_soc_dapm_widget)
> -			SND_SOC_DAPM_MIC(w->name, gbcodec_event_int_mic);
>   		module->ip_devices |= GBAUDIO_DEVICE_IN_BUILTIN_MIC;
>   		break;

. . .

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d9c341c9-9005-b425-9dd8-e797869bbcb0%40ieee.org.
