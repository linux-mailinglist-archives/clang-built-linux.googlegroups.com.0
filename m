Return-Path: <clang-built-linux+bncBD3JNNMDTMEBBF5AQ6EAMGQE27RMABA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 103FA3D97B7
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 23:46:01 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id az9-20020a17090b0289b0290176a0987ce6sf4217301pjb.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 14:46:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627508759; cv=pass;
        d=google.com; s=arc-20160816;
        b=YgADrzZSOFqP+E55nV4lmD0zL0Dyosndi4L8HRbNqIYI2DifceebSAUDW4iB8Ge8XV
         pVRJqZcuKRs0FqNevC0ERBmtXwBG9HC2oDAuomBcwxBrxmR4mYZI6IGZxozZx2vCI92o
         nvxFIQuI0dV4HWYn7alf5MdhtQ+Nav03rwxU2OLuiUnGOhL6G+ZUAEdg5q01gxq4bf2a
         /CRxez74rQvIO3GAxcx+a4jct383arHFqyWbjgmcjaHUDvoX+zEbKe82oaCz3ygSZBd8
         E3LWCuW9m+CLG+uZirnHrhFAuV4qSuGStWIc5jxnaxQDiwozgw6nQLSxGZi9959dsKUy
         ZhkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Nllxr3zctAUNpuhFigaxfTxJ/9AY1KaEIBruc+90C9I=;
        b=Yzre92KwanWx90VFMVO3odubFwjWh6zjZQsXJ6/JdGIWfZrUD1/BWbYCUP/hAJZFa7
         /p1GKLNowtjLRLDsjrjnsZFxA0EK4zf4aSWOzc775fK2gokSTID8JmgmLjN6un2/qIhm
         FfXD53vpV5LCuISryAp/lzPDyOngy4Ld/3FuKOpk1e22FWZP5PZfVn1U0TWNdj98EMMH
         +nyKsC+oY/q5V9aOGPMqgvaHCbTg2mMYec5fL4Lik/OPcEmSOBs7fECjEFC+T/b8bx/O
         mMc+jSi/+FhlF/OI9DEUaafBvrJdnnKMUJXSuTOUOJMwHV4IQT/xp4ltsuCEfZ8X7bix
         gYxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.170 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nllxr3zctAUNpuhFigaxfTxJ/9AY1KaEIBruc+90C9I=;
        b=GREFfeYgG489/suPnKd7Q4Tap5Iwd8KejwMG4o4PqdfKcNEfh6IvXac9Xb8HZwlTdm
         +PDZf9z7TeqauT+gvArun/WJEU/8YWzzKL8KACj9hNoYCsbjFxE9CkyHQjH6GzyI28JM
         TIzsRdze7K4Vn0dm0ngqjsmqVWCbKUIldjNSc94iQULvF5QaCAhKKP4mmLh7u4JnYUbe
         vxOq4AANeh5xXowI1jON2PzHQrPVWzyoYP+KOWm7R84uFlmYNBx6f8Q6zK8NtWO29uve
         RUfc4PqAPEYJcC/FFcKW4ClVl7vZPvqzhNJ9J0uNx31yUD8vk4sHRcO6JOl6GbVyKrl8
         apgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Nllxr3zctAUNpuhFigaxfTxJ/9AY1KaEIBruc+90C9I=;
        b=jSV6xxJXPU3ioJmt84WfUIaEdYemuxQGum1zzFfC61gVpALUIzt9fMufBJ/gaU5oex
         lHZyYDD7hWoM+efodn9SKmz8mGulq+3+c2UkYKBsFXV/2UAJt3h0MAJ2ynfgDvGaG2dp
         KyT//43J3Ky71lE64qGRbzfAb3TYVA0X3V2SzKfwkZazAacA8MfaQYeLR11rVJFET2xG
         SVGzGZhnrmoNbWsj+guGAn/cMVevmyjo0E9CZ2aTjfwEWO5R78/6xxqgk9z8eJ6wl3wK
         BwgWmfRwiFZ+JGJvAqYFv9cG/UonuEQ9KSQOeMrHat6HG9wNCzs3NVGJqh4PXQDJydbu
         JDOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310fs4TIjK1Ox85Ey0YQXKg/l55vOA80fzWQcC/Fbz2QFcjztSZ
	oqxPmMl0dQgIsfkFuozYgA4=
X-Google-Smtp-Source: ABdhPJzcmrdonkr4OuuepKVYveHTxduB7qJNZ5jlkIDRBWt/XlU/9J4PuAgjXbnDguG7uLCPhqwOJQ==
X-Received: by 2002:a17:90b:4016:: with SMTP id ie22mr1876545pjb.68.1627508759622;
        Wed, 28 Jul 2021 14:45:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:758f:: with SMTP id q137ls1374371pfc.10.gmail; Wed, 28
 Jul 2021 14:45:58 -0700 (PDT)
X-Received: by 2002:a63:b950:: with SMTP id v16mr904133pgo.328.1627508758872;
        Wed, 28 Jul 2021 14:45:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627508758; cv=none;
        d=google.com; s=arc-20160816;
        b=OzX7KupNLCQ+9gAN3vmifygdxO8eg+qq0FEFeJoX+GehFFhafJZ3uZ/sQmyCzQZPt7
         hZPNhuTRhWnI3QLHdYOKQnhhsn6kQB7EO2QOpaL2BMuHqt+Vq8+qzRF4vBjEvbmfamkf
         XP7W4uLbzbgw1PnoqFX7eZb4bhKrgFD60wP3HTOp5yoyFrdM3P1NWFwVftBDWWlvuOfU
         mxg/KtSSfIKpGxt7oEFJWgSdIKQOAOx8zoS+u/nGNyVWoK401bmG1fw0B3DO5zrRzynl
         yiugSvpf9+/9Nzh4qNkO4U35IV/Hn1VYLAiSNhroNPYyUr9FggjyeXwJ2JgTq6fbolyA
         tr4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=XicekCZGMuTmx7BgzDuVSPZdtJx2YNBwg9Vgy0Mbawo=;
        b=cq2lVRE7PLazJyiTWWKAlSWJyrckc6+5NeOyPbElDOrGb62d78T1dzJquT0x7i3cWo
         VkAlccqupeSyASOKve5zUGyiqlvY7hZF9XardqyjXjnGI4UluHWzBu1GQK/n5QrtamKc
         5hgtQFda2EVwJBHJANMGgHZs9thJ6MwcTX3hguVqJMgMAlyzxrOKG9Dg7nX1vpq31602
         Ril5srKtdo2RPfnMzwjFiQEG/opzhgopoNP2MLeJc5EXTvlJ18zlJY2dm4/mmulKDlno
         PmdxpgC3AAbVvz4oHrKq7q0g3gkLJm9uW61uRO8ghYlIfaEzPkNJawQmfCUPFTBOjuDj
         vXOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.170 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com. [209.85.214.170])
        by gmr-mx.google.com with ESMTPS id a6si68544pls.4.2021.07.28.14.45.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 14:45:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.170 as permitted sender) client-ip=209.85.214.170;
Received: by mail-pl1-f170.google.com with SMTP id z3so3063060plg.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 14:45:58 -0700 (PDT)
X-Received: by 2002:a62:61c3:0:b029:35b:cb61:d2c3 with SMTP id v186-20020a6261c30000b029035bcb61d2c3mr1780844pfb.62.1627508758153;
        Wed, 28 Jul 2021 14:45:58 -0700 (PDT)
Received: from bvanassche-linux.mtv.corp.google.com ([2620:15c:211:1:3328:5f8d:f6e2:85ea])
        by smtp.gmail.com with ESMTPSA id b15sm876167pgj.60.2021.07.28.14.45.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 14:45:57 -0700 (PDT)
Subject: Re: [PATCH 48/64] drbd: Use struct_group() to zero algs
To: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-49-keescook@chromium.org>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <1cc74e5e-8d28-6da4-244e-861eac075ca2@acm.org>
Date: Wed, 28 Jul 2021 14:45:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210727205855.411487-49-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.170 as
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

On 7/27/21 1:58 PM, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Add a struct_group() for the algs so that memset() can correctly reason
> about the size.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>   drivers/block/drbd/drbd_main.c     | 3 ++-
>   drivers/block/drbd/drbd_protocol.h | 6 ++++--
>   drivers/block/drbd/drbd_receiver.c | 3 ++-
>   3 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/block/drbd/drbd_main.c b/drivers/block/drbd/drbd_main.c
> index 55234a558e98..b824679cfcb2 100644
> --- a/drivers/block/drbd/drbd_main.c
> +++ b/drivers/block/drbd/drbd_main.c
> @@ -729,7 +729,8 @@ int drbd_send_sync_param(struct drbd_peer_device *peer_device)
>   	cmd = apv >= 89 ? P_SYNC_PARAM89 : P_SYNC_PARAM;
>   
>   	/* initialize verify_alg and csums_alg */
> -	memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
> +	BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
> +	memset(&p->algs, 0, sizeof(p->algs));
>   
>   	if (get_ldev(peer_device->device)) {
>   		dc = rcu_dereference(peer_device->device->ldev->disk_conf);
> diff --git a/drivers/block/drbd/drbd_protocol.h b/drivers/block/drbd/drbd_protocol.h
> index dea59c92ecc1..a882b65ab5d2 100644
> --- a/drivers/block/drbd/drbd_protocol.h
> +++ b/drivers/block/drbd/drbd_protocol.h
> @@ -283,8 +283,10 @@ struct p_rs_param_89 {
>   
>   struct p_rs_param_95 {
>   	u32 resync_rate;
> -	char verify_alg[SHARED_SECRET_MAX];
> -	char csums_alg[SHARED_SECRET_MAX];
> +	struct_group(algs,
> +		char verify_alg[SHARED_SECRET_MAX];
> +		char csums_alg[SHARED_SECRET_MAX];
> +	);
>   	u32 c_plan_ahead;
>   	u32 c_delay_target;
>   	u32 c_fill_target;
> diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
> index 1f740e42e457..6df2539e215b 100644
> --- a/drivers/block/drbd/drbd_receiver.c
> +++ b/drivers/block/drbd/drbd_receiver.c
> @@ -3921,7 +3921,8 @@ static int receive_SyncParam(struct drbd_connection *connection, struct packet_i
>   
>   	/* initialize verify_alg and csums_alg */
>   	p = pi->data;
> -	memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
> +	BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
> +	memset(&p->algs, 0, sizeof(p->algs));

Using struct_group() introduces complexity. Has it been considered not 
to modify struct p_rs_param_95 and instead to use two memset() calls 
instead of one (one memset() call per member)?

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1cc74e5e-8d28-6da4-244e-861eac075ca2%40acm.org.
