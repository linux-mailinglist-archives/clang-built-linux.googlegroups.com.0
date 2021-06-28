Return-Path: <clang-built-linux+bncBCU73AEHRQBBB2XU42DAMGQE3TLV7UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 094C63B5D7F
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 14:02:52 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id m7-20020a924b070000b02901ee89e4ffbfsf2867489ilg.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 05:02:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624881771; cv=pass;
        d=google.com; s=arc-20160816;
        b=fqKPAntDOPQzyuPcw1lW1b1e8yRidwahU5gqDz864260X2lmPgPDGpxaHXR2jjS0qo
         ZyBXkSvFHraL0EGq/zNBgK9s8qt3/xfXqnmqIiOzq36GCRKESRvxPoTfOuZ9W+Hc1pk9
         553coixPg7EeqnHWMhBr4IU58Wdmx98BhGL+kLjyk3aqZVappEDDCITcvXsogx3shT8e
         hk+0X3XxfFZwZ9KTScSissooC1RxRJL3feXaM55PqxsOEd1y6tAOulK91bCois9t2Eiz
         KA8mjpiZMWys8csTXNhtdyaPgUILHJv6Dqk5j7OUf09GG+AtbtrwoUdRpK/fujkjY+9l
         PC2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :mime-version:references:in-reply-to:user-agent:date:sender
         :dkim-signature;
        bh=TutljOUHTNwwGrq5FkmC4d8fVMxl3i+NfbU/bRpkJfQ=;
        b=IVLxOEFfbRwNTttnSd4Od2UTXHvSKgoxsxhhyMs21rLOo2zXOuxH0fEZ4j+sSI3a98
         NEhrIckbMKha3dpv30SwB+IyqeV6SpvQuHASBPrjfMvIczeXU4zEY4bWPgcTPoFIkPi8
         gTlQxotYv7Y94uE68a9eigwvF3Lkq4joMUzvwVLDkiazrqtOulfDxqrWoVESRh8/LBUR
         It1yozogSsEvT8w/S0aoVv/rvxRnINOhteVLc3KQywG3Vhum0UGonovHlFQyXqDloRuF
         zzwrlNfgOcX720OHAzmPqKH6Es08m/5HkyXU5Da2mNtjwvhfq5/AFwWf/+EZLDUB04Ci
         Z5VA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.64 is neither permitted nor denied by best guess record for domain of rostedt@goodmis.org) smtp.mailfrom=rostedt@goodmis.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:user-agent:in-reply-to:references:mime-version:subject
         :to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TutljOUHTNwwGrq5FkmC4d8fVMxl3i+NfbU/bRpkJfQ=;
        b=r0VKpqmxQX0c/JRhpio9A3SRclV8CtDAfMNgbYUHi3j5pOh9O5bVGsAXLyLcukbsfV
         tW8c0b8X7dkyCOrMxv031pvave1My3TomKUYJpKJN8Sg8apXj1NyDNU/CVHA442qTHr7
         8/7tb1JMjXBcShBISbZab5y0Mspet2wQfyL9onf+WX4IMSRufypVuut1Ml0siFfI4V6v
         BkcJuFALJVZmELtye3lvjQYrvE/0FOiCh3FTItmIfMSEjhXbDMzQ5IDQvz2DNPE/SNqr
         dnajIQ0GOyohUJDAtT8O+SjERLzbfgL0o5mUoOXSI06dTq7BveEfVAf7OQO0Qh1MY56F
         t1pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:subject:to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TutljOUHTNwwGrq5FkmC4d8fVMxl3i+NfbU/bRpkJfQ=;
        b=RIi+CHwneQVHMCi5ZxRjPasGJGyfNplGewZySY5IlkqlfJWlIKaaO8QerQrVxKz/9e
         hzunFZCHIuH9gitRToLyBckvAfpxs3DaL8SC/r8GgKVLhVuCbs78OSPCsjE6XjftN9we
         C+5zaCUXLKDPS4kxZveU0+RPziTG/UTtndU+ynpJ3fLQ1GipjqFMRoMWCTlXIibmenCJ
         we7GGhcRM2K2aw0HxWQBcGhVDqyO9PRwSbDOQNLJ/X0Lq1Y83lRrgs/yyxubjHglniTH
         skSWw/dYmmDdOE+VJFxHmJEEyyio7mhqWkvWy+4YhoanxTol4KMjZwppRJWW8VGRg3xM
         2Ykw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TpYCGaVTMfJlbPZCscYDV5GtVCZ7HW6yRYUHsMz72tVIGR76J
	ISbiXJNWyJKpm698lXeuycU=
X-Google-Smtp-Source: ABdhPJyfQ3kOgUWIfjbgPpXJLG8xTlroSWAKvzcZ9k9t9X4BrucBUpwVtVOJisa5xKayU6IhNczf0A==
X-Received: by 2002:a92:6605:: with SMTP id a5mr13452792ilc.15.1624881770985;
        Mon, 28 Jun 2021 05:02:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:22cb:: with SMTP id j11ls2826890jat.5.gmail; Mon,
 28 Jun 2021 05:02:50 -0700 (PDT)
X-Received: by 2002:a02:272d:: with SMTP id g45mr9018183jaa.104.1624881770562;
        Mon, 28 Jun 2021 05:02:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624881770; cv=none;
        d=google.com; s=arc-20160816;
        b=yy+2Ey88tpNqVWnbExbiOEVrrXmTy2KzVUg1USGbKp/KwryOAouMkvtumMVsoO5T7c
         mF54m/8G3zW0uVE/E7NGdaE5dHx9hRv7sxQYBfICfRZZ9J8Q9wRwpTNQaDC7zTjAmPqH
         GcMiiVntskgN6E2DiOxCsglogXF+TYk+Oq+BPw3hCYrWWFhKOfQNM6AhTPNspBne9lWx
         JaT0yULi7DReBo2Iwk7Qy+dg23K5QIODQUkVh00VvEDrtFQqTQBaGh7IoE5NBY8zWwwu
         iPU2no7OEKIXXSffTu9yvSF/TNrjyExysRAp4xoFuJElV6pl0XiPeFTn2tmEb7PrY1jO
         MQGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date;
        bh=UhuuB3EGvpBExUV/MtIzY/JLNr1Bt5TNr1Q+E/rCu/A=;
        b=VZQ0+MCFeVpgCMGHFPr+apeeX/VDTx7wvusjEORbnMWA7oAircctgjr0+l/iw8aaLv
         4u1beipyJen9FfS/A0g82xuAsaOBTr/7lVCO/zGtuVSocTVDFOkzc8o6MDzDPnlT9E9C
         AAGGiBSiAYe5KDlhTAu0i/qtw67mZWyI/UaXC5NIxL/hUjEi/k3+/ugmw/UTV0mHxERt
         l24ogcHO8+fjwcXD0hVkrhlZV1N1sbg9SmhYDXG1yvWxD9aZP9PIwOgjwwAGZBnyjR59
         WmXKoM1jfml12Y5nos5Gsy4TrosoHDeY9uXubnJZ2Fbf/HvBsjqJhlaYqb2GzuPAIUTE
         QQtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.64 is neither permitted nor denied by best guess record for domain of rostedt@goodmis.org) smtp.mailfrom=rostedt@goodmis.org
Received: from smtprelay.hostedemail.com (smtprelay0064.hostedemail.com. [216.40.44.64])
        by gmr-mx.google.com with ESMTPS id w8si249112ioc.1.2021.06.28.05.02.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 05:02:50 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.64 is neither permitted nor denied by best guess record for domain of rostedt@goodmis.org) client-ip=216.40.44.64;
Received: from omf13.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id C630018028EDB;
	Mon, 28 Jun 2021 12:02:49 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf13.hostedemail.com (Postfix) with ESMTPA id 4CAE21124F7;
	Mon, 28 Jun 2021 12:02:49 +0000 (UTC)
Date: Mon, 28 Jun 2021 08:02:46 -0400
User-Agent: K-9 Mail for Android
In-Reply-To: <d27f1f38-9b4e-c7be-03ca-055d89bc12e2@redhat.com>
References: <202106270431.0esjH5YC-lkp@intel.com> <20210627232122.73f00a07@rorschach.local.home> <d27f1f38-9b4e-c7be-03ca-055d89bc12e2@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [trace:for-next 38/40] kernel/trace/trace_osnoise.c:1584:2: error: void function 'osnoise_init_hotplug_support' should not return a value
To: Daniel Bristot de Oliveira <bristot@redhat.com>,kernel test robot <lkp@intel.com>
CC: kbuild-all@lists.01.org,clang-built-linux@googlegroups.com
From: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <262EBD63-E7DB-43C2-966D-0E391FF2C5FD@goodmis.org>
X-Spam-Status: No, score=-0.61
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 4CAE21124F7
X-Stat-Signature: sic1951dh4sqn9gz8bsp4irj5cwpcr98
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/Ay+kaFsQcF09mwpbY582DXuV+5aT3FFc=
X-HE-Tag: 1624881769-62472
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.64 is neither permitted nor denied by best guess
 record for domain of rostedt@goodmis.org) smtp.mailfrom=rostedt@goodmis.org
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



On June 28, 2021 5:13:12 AM EDT, Daniel Bristot de Oliveira <bristot@redhat.com> wrote:
>On 6/28/21 5:21 AM, Steven Rostedt wrote:
>> Daniel,
>> 
>> Can you fix this too.
>
>Fixing...
>
>Regarding the "return 0" on void functions, I am making two patches
>because one
>Fixes: bce29ac9ce0b ("trace: Add osnoise tracer"), and another that
>Fixes
>c8895e271f79 ("trace/osnoise: Support hotplug operations").
>
>Thoughts?
>

Two patches are fit.

-- Steve

>-- Daniel

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity and top posting.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/262EBD63-E7DB-43C2-966D-0E391FF2C5FD%40goodmis.org.
