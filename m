Return-Path: <clang-built-linux+bncBD3JNNMDTMEBBLWVRWEAMGQEJLWURVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 421013DB196
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 04:57:52 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id n16-20020a170902d2d0b029012c52457579sf6662272plc.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 19:57:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627613871; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wu0rKmXcfxLSiTxwBWt+4bidGmhCyic5rxN/0HZg/SeM739hJEeASm6ZAVXjwRCjtZ
         Fyh5d0+pT8IJI3eS2FQxHNhTtRf/UTeeyJqdrohHyWAVRIn81+CNNJ627YWDW+ASLpQG
         WE+7VAUEqDvfR29179xPhN8DxE2nEWyMyzfVh1xoaJKwm33FDRU0dRjL6MKlvBm86GfC
         Y4RUnn8/Q3gZTGVLhKMRMntVnMk1Ln1lWJVPWNJOb9QWsYvW7vnQe45mPlG0qGy2l7TL
         oGqyumdJX6M8OTa4dS79U4ebhf8ffry4mCOS4EyJ7shNK4cVYcxte+KnbrJNH6Zj+7a8
         WMUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vjKejNOvkaPCoaBHHsvozgZL5VdTuD18q9sG4F17zgE=;
        b=qP88TsMAesPANRArUXyCISltfg3z7/1Ww9U3Owmhh4z4w+EoWQI0Jd0wT2u+Zv3kSG
         YwY3sXOz5eIXGHa7J1twIwBtAa3zMsKagfOyQFg09xjZJROGN5BbXS/77XV2G5nKiogi
         9swgkcG0TErYc0AUS0feBeZEi1BlHdeGInCA4J+F41/F6pu49fcbNK8CHwUXQFayvp1s
         gaa2XfaZojWBVwS2nrPIYVHcdRJNKrnZoswK4+PadONsvfYBnqvKw8IE9t8R/B+Mj4nc
         3HT3saEA96c563Ly/yPFiLv2FQo9PQ1SBvBjkEFCpNiTx7wkSU6iyfzPDdhXdY2Mqvw9
         o7NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.47 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vjKejNOvkaPCoaBHHsvozgZL5VdTuD18q9sG4F17zgE=;
        b=JQAfSDlI7/yGUXeJqU7NkrK1jRk6LmsNcAhEEJe4PDZeiGr+/2Opimf453HEIsu8DU
         msPnjjHaOUu6mucFOOnJpQAbsiK3wOf/EHChXwO+38jvFOUQuw0h//cePwLiXQwlwnKf
         Bo6bXfB1HiIbS6Ws9mW7UCnR3r3TQVMHhGHXnDWPWwFLnAswFIzYrFnsWIbQ+LmEWHGk
         K1RuuBE2ot2WEAnV2Yg5lI2EuSTzKXyOqQ4tiNG0MOtiKw79IChrT2Y96PmvQM7DFcsv
         49iNE/vKO3HtdlBFAK5eUbQMe5SdHLUUYlIMBL272ecfALOU3d9556d9aHzo4aaJLP0a
         2dnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vjKejNOvkaPCoaBHHsvozgZL5VdTuD18q9sG4F17zgE=;
        b=eVN1FMIdAeExToWbFnX7cNPYzT515wIvov0Y88TLrDc5Ip10X64Q+FACsIIT5a2XDw
         szM+1QSyOIJygWMbzbzcJUqC2Ni21ftRcL+Zc5iFhGOAymAM5YwZmhx5C9xi71lLYh5+
         +0Uh1kqUrlYn+UA+clItGLis9jy4eXyQLAhpR7R8VZZ2r5DruzWYMS50SUEWNQ+RivbB
         +zpMi5RxRqcO0VqW9J3Wsq926qiZuWhmQT2yze+IbjaLCe9UHxhIBNfLY3lANW5wRjVn
         o90cuTOlad/j4QE26UFOUPsDcVD5TZsRpFBZ3/nhasCtJe0Zngz7udW1O/DmIdcKOzmF
         U61w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YGD2ccTHo2W6yNzM1jAjwCOCxv65BHQZgi+vXJZCkXGTyYxyl
	oDuhKaEY+gT/hHmEsflMy+s=
X-Google-Smtp-Source: ABdhPJyLjD7OoHC9RKIJQebZlaMB++rf+sSKAgbfoq/Pku5D/Tmhc4LbwJwlBoY3eHfa2lDFOJ9xNw==
X-Received: by 2002:a17:902:a9c1:b029:12b:8ae3:e077 with SMTP id b1-20020a170902a9c1b029012b8ae3e077mr581947plr.75.1627613870971;
        Thu, 29 Jul 2021 19:57:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:41c9:: with SMTP id b9ls82679pgq.8.gmail; Thu, 29 Jul
 2021 19:57:50 -0700 (PDT)
X-Received: by 2002:a63:515:: with SMTP id 21mr293439pgf.70.1627613870330;
        Thu, 29 Jul 2021 19:57:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627613870; cv=none;
        d=google.com; s=arc-20160816;
        b=cVyRNZXaQt3rmMjZjoDeO40r3CwjqnyXYANaJC8fLJiV8yASujMw5eakUmVyEtxbvY
         lMVgL6yRRMV8LyTCqy9Y8D50S01QvUXPVazv0qcPIih5H20rGc42ieo3k2ZF2+hUtzcq
         33bCIdKSAvGIz0fcxkzLgsg/nS8/H7yv5Oi+yJOkxaNHliHCe9rXXwUvYwZlUvntEX8Y
         pWBQhVMdmZEvgBcPmpoaOBBsTPssekx/r99VNP9JWDkehFygoG/xRmxJTzAnL4hcwwxD
         CgjdXnQw5Nsuw/eLND3o3gVRw/qCC9h4MT/NIt0xg1GJ0woUiYXULBcd9B5I7wBoQzgC
         FzVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=SFzRUhN6YLmKo+jXursxkunKR479Zn0dAlkG5jiWhjw=;
        b=M0yM9x20qxIYfETdyEJQQKUNfXTHW2bwPv2njkyoTWJUKM4Victt13/3ojL3/dFwPL
         F9h4Hd8fmmYXVd9C2h+ZqBE0Alakp68C0ze2u1lzrOe8teflct4Fvw3lxsQCtPxqyqrd
         R/YY9U1xrT9aVrumbN7p7TWjC7OOleBiafPt54aS9cSGStViae+NXtAOpV7Ol3ceVTVd
         4EUGen0nR8Bn/vGk8xqYwMIzwUi8Q50sRdVX5iynS6Or9v/Wcky4u5+rGbHUfoXqIb90
         bdPetIABPnAAiJSrSPhb9OKkkb+A5GKFMLEda5CKj1/K4338Wg+/IfUjJpCBdq6zbdYj
         ZIRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.47 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com. [209.85.216.47])
        by gmr-mx.google.com with ESMTPS id 14si43919pjd.0.2021.07.29.19.57.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 19:57:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.47 as permitted sender) client-ip=209.85.216.47;
Received: by mail-pj1-f47.google.com with SMTP id q17-20020a17090a2e11b02901757deaf2c8so12530005pjd.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 19:57:50 -0700 (PDT)
X-Received: by 2002:a17:90a:c092:: with SMTP id o18mr691992pjs.3.1627613869863;
        Thu, 29 Jul 2021 19:57:49 -0700 (PDT)
Received: from ?IPv6:2601:647:4000:d7:3f66:df55:a341:f79d? ([2601:647:4000:d7:3f66:df55:a341:f79d])
        by smtp.gmail.com with ESMTPSA id c15sm221003pfl.181.2021.07.29.19.57.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 19:57:49 -0700 (PDT)
Subject: Re: [PATCH 48/64] drbd: Use struct_group() to zero algs
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Lars Ellenberg <lars.ellenberg@linbit.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-49-keescook@chromium.org>
 <1cc74e5e-8d28-6da4-244e-861eac075ca2@acm.org>
 <202107291845.1E1528D@keescook>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <0d71917d-967f-beaa-d83e-a60fa254627c@acm.org>
Date: Thu, 29 Jul 2021 19:57:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202107291845.1E1528D@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.47 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 7/29/21 7:31 PM, Kees Cook wrote:
> On Wed, Jul 28, 2021 at 02:45:55PM -0700, Bart Van Assche wrote:
>> On 7/27/21 1:58 PM, Kees Cook wrote:
>>> In preparation for FORTIFY_SOURCE performing compile-time and run-time
>>> field bounds checking for memset(), avoid intentionally writing across
>>> neighboring fields.
>>>
>>> Add a struct_group() for the algs so that memset() can correctly reason
>>> about the size.
>>>
>>> Signed-off-by: Kees Cook <keescook@chromium.org>
>>> ---
>>>   drivers/block/drbd/drbd_main.c     | 3 ++-
>>>   drivers/block/drbd/drbd_protocol.h | 6 ++++--
>>>   drivers/block/drbd/drbd_receiver.c | 3 ++-
>>>   3 files changed, 8 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/block/drbd/drbd_main.c b/drivers/block/drbd/drbd_main.c
>>> index 55234a558e98..b824679cfcb2 100644
>>> --- a/drivers/block/drbd/drbd_main.c
>>> +++ b/drivers/block/drbd/drbd_main.c
>>> @@ -729,7 +729,8 @@ int drbd_send_sync_param(struct drbd_peer_device *peer_device)
>>>   	cmd = apv >= 89 ? P_SYNC_PARAM89 : P_SYNC_PARAM;
>>>   	/* initialize verify_alg and csums_alg */
>>> -	memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
>>> +	BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
>>> +	memset(&p->algs, 0, sizeof(p->algs));
>>>   	if (get_ldev(peer_device->device)) {
>>>   		dc = rcu_dereference(peer_device->device->ldev->disk_conf);
>>> diff --git a/drivers/block/drbd/drbd_protocol.h b/drivers/block/drbd/drbd_protocol.h
>>> index dea59c92ecc1..a882b65ab5d2 100644
>>> --- a/drivers/block/drbd/drbd_protocol.h
>>> +++ b/drivers/block/drbd/drbd_protocol.h
>>> @@ -283,8 +283,10 @@ struct p_rs_param_89 {
>>>   struct p_rs_param_95 {
>>>   	u32 resync_rate;
>>> -	char verify_alg[SHARED_SECRET_MAX];
>>> -	char csums_alg[SHARED_SECRET_MAX];
>>> +	struct_group(algs,
>>> +		char verify_alg[SHARED_SECRET_MAX];
>>> +		char csums_alg[SHARED_SECRET_MAX];
>>> +	);
>>>   	u32 c_plan_ahead;
>>>   	u32 c_delay_target;
>>>   	u32 c_fill_target;
>>> diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
>>> index 1f740e42e457..6df2539e215b 100644
>>> --- a/drivers/block/drbd/drbd_receiver.c
>>> +++ b/drivers/block/drbd/drbd_receiver.c
>>> @@ -3921,7 +3921,8 @@ static int receive_SyncParam(struct drbd_connection *connection, struct packet_i
>>>   	/* initialize verify_alg and csums_alg */
>>>   	p = pi->data;
>>> -	memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
>>> +	BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
>>> +	memset(&p->algs, 0, sizeof(p->algs));
>>
>> Using struct_group() introduces complexity. Has it been considered not to
>> modify struct p_rs_param_95 and instead to use two memset() calls instead of
>> one (one memset() call per member)?
> 
> I went this direction because using two memset()s (or memcpy()s in other
> patches) changes the machine code. It's not much of a change, but it
> seems easier to justify "no binary changes" via the use of struct_group().
> 
> If splitting the memset() is preferred, I can totally do that instead.
> :)

I don't have a strong opinion about this. Lars, do you want to comment
on this patch?

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0d71917d-967f-beaa-d83e-a60fa254627c%40acm.org.
