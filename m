Return-Path: <clang-built-linux+bncBD26TVH6RINBBHNCVSCQMGQEUT22LRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7758838DF41
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 04:36:15 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id p21-20020a6374150000b029021aa1da6342sf16244692pgc.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 May 2021 19:36:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621823774; cv=pass;
        d=google.com; s=arc-20160816;
        b=KFy9PitC8EzS0ywXhL0cyBVW/Shr0ObxrEAKlNGfNo6N04pgQ1zyq6pB+A7wc/YUF/
         VmKP2RhlCpzZ/jlhG+zF76Viqq1U/kqD0mZA1F6Lhh6hqCTTtatErkkRHqEoExoglBia
         jO0pSce4p8sktiDfMQkM3AMSKW6HhudNA5KPLYrE5aJ42LdCpo0PqnFHPygxqVGtFSB6
         zLIfKCcqtV425xGBswnoelBC5fBBoQgemrdbPqBvh5awxpzSd8DY/U19rM0cPexEQLRF
         BZ75hBsssPxi7LuFevHkilqpuEnQ1awGk3xeApEr3qlsjxsfqUcpLifddCVoi2cY8/1W
         FE2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=J2odEUlDEdVOmtrjkIm02uuZol/Mx3pZA6+yqofXvmY=;
        b=U3zCtXZlhc/FE5vV0M4mQRxz/DN2dgJ+6x6cSDUdhB2cth7khP0BENG+x27U42T1h+
         GAgVIwpXvo/PbN1Mn0OYCgi95SUIxwlR9xio6G/2L4RBDFYXbnnb4egq7De4iZpQ2aJ+
         DgnMxGKHc/Uf6RU/X4Ec8Vv+//CamYzQTBatWV/XD38TEDQVWhXwTkHyBcmPEAwZ3YtI
         0z0MBSNBsywpqDylUfQRd+8DmbD3DbE6NycxyifPLD+ef3uw0PzF4/jwZa+AKhzJU/Pu
         qrkS4Np93jSNUX+oiFWrXVWBNqkuEotV77tsiEPB1/bzd8gCpGqEYyIGUEr8h3sWCWDi
         +vNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J2odEUlDEdVOmtrjkIm02uuZol/Mx3pZA6+yqofXvmY=;
        b=V32Is+wI46bpONf21955iSmix49zS2/gNXWXkjVdld/DY9H2lR4LupVakBqzdcbGHm
         r/PbMD+W9OuYMh1yeMQb67dfHhG0Y1MpohWv4plrfy+1zDG0rJ+b9n1J0hiWh7aQ1MrD
         hRX1IAEoi4A6aYPvg1hYmen5lSY1XJWKStexDlf2nOHugPTfE6r8PWammtdX4ag3Z6SP
         wZsEL+UUjQld3oS+Mlh3eGJ1QDmxWAiwHNUR5TR/DH+u38F2HFMVh4MR1iOl056jHU80
         eJZfoLvgESRakNd5x0bkdjE2ga/UiJGLBLFFzFVfblDGG1uFvE6j2pjxEkE0WGIuZyDL
         9+ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J2odEUlDEdVOmtrjkIm02uuZol/Mx3pZA6+yqofXvmY=;
        b=qozJK+NqMdaikT1o7KEooB6eT82M2zVqiM82AFfP4Si/y8zvKugMdtZnNLMoZLf/zs
         AzS6CHodHSpkxfmqH2ks44ClthL5a8xSACC3ojhFQo6ucpCdRqg3lktuERK+mIH90jKf
         3gVu/76U3VSPXUcnzoDlF49C/EWlp9tdPnabgzd+ptAW8xiCmUj2W8Dq2DM60ERcCM3J
         uhQ3LpPV+Y1U6qH0mXx+DC/3/kBd3hGSqOuZavM3jd7mR9N/qeeWcx1us+YlLcOvvf/C
         rgoGz7je3sfrnq+JJ5Om8mPg1WOC/tQo93TErhPbgQXdybg8PnrtfvvUlQiblx6gXSFC
         YiFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EjQi37k2lZoNcBHlEPIM0vEJwiRRUSmkWsrIpcexVa9jMzPfa
	YGOvSadbnLOoRufBs0aXRFg=
X-Google-Smtp-Source: ABdhPJzZZkEpC6Cs/haexMyfXODwcKX5p/+J9pVcReEcDooh60zJeYpTtlDQLXkTnolQ7P/tZFc4jQ==
X-Received: by 2002:a17:90b:30cb:: with SMTP id hi11mr22340587pjb.204.1621823773746;
        Sun, 23 May 2021 19:36:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa46:: with SMTP id c6ls7520072plr.4.gmail; Sun, 23
 May 2021 19:36:13 -0700 (PDT)
X-Received: by 2002:a17:90a:fa88:: with SMTP id cu8mr22973543pjb.233.1621823773135;
        Sun, 23 May 2021 19:36:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621823773; cv=none;
        d=google.com; s=arc-20160816;
        b=PqEcenUm287/fPQrYCBHGDVAFndtuJoy6B33p+9rm9CqTVaebejZ0TPny+7D0v3iiA
         cp8Z7lc76RriQAuda1MNY7rk7f4uVroMJY6MgjCnKp7MgNsMxNaUK9C2CCezfOp5rd5K
         RQbcfH2b++DnOyvd/yuP3rb8z1zHtZtvVEy3ytWxX5cQ9756cfFVX8cvszisXF0QHZOn
         T5Qatq8KKZedXrgb/nhzu71cH610gE7p+FGm/kIM2wTU/QzGQOpIY5TZHYh1jgJmDKhU
         2ZI69AwgFmaqLsd7CcBMAgT6d6OFMWRgTqJgxYdBGMVRB7YoCvRYI3CmHK7wKkGQ+JHF
         iTew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=SZwBmIh+y33KqFKUv4JWI2BqhNjd+H9a0Yh6l1lkWww=;
        b=VVv2ugbjwOKmqWwdHLMFPg/jLFBP2cwwE9/8ijWd+mVKfsWykLUGjkXyuRtDQui9//
         9ciCBr6rSZ3mI9NXKJyPRMbej11ZGZXz8bfyGO0f8QAwiHkr00i6WGK7QdV+RVCzEXZO
         KmT/x2C+3JrIjFS4rTzPh36hIGTZ9HwEQflfgthw2/SRcjdV+wn8/eyd1BEcynhPLLrR
         ZcLehP4e2Es1RQwHliWCOxxkScAu8bmL4wgnVxHphTTgMisubxJRugvJinSgZPgsUI+Y
         vhf5O0s1n/mXQQCOceL+IQ2/QY0kHsiB5OIPGGHrrRCZBB7e9k6VjIAMRsSGw8DsIloJ
         5JRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id j184si1403845pfb.1.2021.05.23.19.36.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 May 2021 19:36:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: lXWye1UhgTTxS7JWW4d65f7XoDM+iriYXD2S8v0BSDssNscwAeOZ6LY6JaohlKNRwtbhKotR48
 u0vND1AoSZVw==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="199933265"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="scan'208";a="199933265"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 May 2021 19:36:07 -0700
IronPort-SDR: au2wRn9YHT8Qgi4zyUhKoeIu0pltWjDmQdp+Nmmh0aLR9HIVyzUBPrrc2TwRm5hMo7c1u6PjjS
 i3mifn4AWxVQ==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="scan'208";a="475640581"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 May 2021 19:36:05 -0700
Subject: Re: [stffrdhrn:starfive-bad-dcache-flush 4/39]
 drivers/char/hw_random/starfive-vic-rng.c:238:34: warning: unused variable
 'vic_rng_dt_ids'
To: Huan Feng <huan.feng@starfivetech.com>
Cc: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Emil Renner Berthing <kernel@esmil.dk>
References: <20210524005335.GL2687475@shao2-debian>
 <F687C5AA-DBE1-4892-A041-F1C6A3524B65@starfivetech.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <f1977fe0-76e2-217b-8057-f62e2828ca00@intel.com>
Date: Mon, 24 May 2021 10:34:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <F687C5AA-DBE1-4892-A041-F1C6A3524B65@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.120 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Hi Huan,

I can't apply and test your patch, which is the proper branch to apply?

Best Regards,
Rong Chen

On 5/24/21 9:40 AM, Huan Feng wrote:
> Hi:
> 	I can not get the source code from github.
> 	Starfive vic gpio and rng hardware is on Starfive vic7100 Soc, which is RISCV ARCH. So maybe they are not used on other Soc or ARCH.
> 	
> 	May be the attach patch file is usefull.
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f1977fe0-76e2-217b-8057-f62e2828ca00%40intel.com.
