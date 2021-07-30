Return-Path: <clang-built-linux+bncBCD2DO52VAFBBKMLR6EAMGQEHJFKCQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D2A3DB5D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 11:26:01 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id de5-20020a0564023085b02903bb92fd182esf4366120edb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 02:26:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627637161; cv=pass;
        d=google.com; s=arc-20160816;
        b=P3SRyg/ht4OB+jXlePqiWxe9ep8qpthL/oPOwh/Rwp/eUPu8ik9+TWVT2D5K75roaj
         Y+M9xf7/xUMJM/bA3kFOcpJA1BS89E14yMXOXBuyPac3qrGReyOd8UYQ52zJMzyRZUk5
         VkqWfARc9S2t1RL749dA261ZZ+/YCZb4c8SEdgMwy6SewihJHDWU9opWxm5qchVYMrYl
         BwOo03FdreQNSbInOaX/dRJfQiBewXy/hIxH/FuWW2RXmylbqCr6wOlvO4xoegYjVYx2
         beu7KAuFF9EJRgk9z9aper5+fGfcVhA42L1J60tJiRtv0hIeTp+c9Z6y6kc4O748TiuU
         yPLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:sender:dkim-signature;
        bh=hT37Gw7CK1a7OKM/DGc1TaF17X/mAL4Bq8sYaiJYa2k=;
        b=mJZQfdeneHaPCzqnvDVHPuj8KBKc00TbK6ZH48k91K+xZ00hdN8QXrDHTqOShcxKkb
         Fmcs+DD08bEHoK061PHnLOIsHtTAQNfgtTDMyd9OzbWsddc5w+ljfQOR2s+ojxMSJWHg
         AJLKoZ7hUk5KcrrqDx6+uDrtRGWJHywVGRlwZGUzQGU7Zijn0iaFKBpR5OOpB/IQayVX
         RBuqa3gM/epqw555zYH16Q+RKhXuiAM/VDOUIQgGZuIq03YKvFpkctmlwFQxxNWbmu4p
         oSLgXFiEgSwkMJ++wFmDkMuePMlMFVY2oS9ieG/o2kiKluVe9NMB/wOlHYOcBWrW328c
         Qt5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linbit-com.20150623.gappssmtp.com header.s=20150623 header.b=lylUtumR;
       spf=pass (google.com: domain of lars.ellenberg@linbit.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=lars.ellenberg@linbit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hT37Gw7CK1a7OKM/DGc1TaF17X/mAL4Bq8sYaiJYa2k=;
        b=XYoPst6QL37j0untztJtWMXsGItflsSY+VYZYSn+7drxa+beYc5lo6rKKPBhRZfQmp
         3YnMQCxXkcfHOcBGllcUcl5LrneLJP9E/skm1X7t0WfzFcd3/WU1JO93X8C/jSYQKGUx
         JwvQhBEbELHeBm4G2Oe0cFYV5D8G7SKPsGlMh7FlspIXRmt8k8sRROicfSkMckIs2+j2
         Fl4SSUxiZtd7n3KTbvvtyjfl4K6LDMrdTj0K+ImzpC+4cEiHJtIZpCW9o+mYVCrAch0b
         UjTgbEeFo78CvJOka7tD3dE0LvtVxXQHtReiNWt4z2jjvjIknN6Ztn/P7dfH1UR61DR0
         h2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hT37Gw7CK1a7OKM/DGc1TaF17X/mAL4Bq8sYaiJYa2k=;
        b=aD+2CBbgz4QAKFBa0wRw3JHnSgBsbHy6RwDfRmByENDqRieqh2YYkPAiZniUVSOAGw
         2Bu60WacHt6Yy0XZS7rMX+RLjR/JchstQ/8OWO+kKJMdGCsViF8ZAQr5PZpcTno7PVVu
         CBiV4c68Uv4BsiyJInCRuTWTiL7lyt+maZwmpNHKgH6S1suEg6LbaLfCYt8Lijqxr6xJ
         fLDWPYsqNhyclfWaUKiDBXTpq1iulAbnwRaxP1u4nEiU1SAx49mm9TeDlB6dSZWRCcPj
         Ko3uE6mOMcSLfUMG0U+ZXnqYH8sLh0zWSk3HCxbwAQlOnJPRcgU3+j+HNUZ3NKgvEJCv
         qoNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531v1bauwtmmuhKCW0BKKjaXmcTUCz+QmHDql4ewGyBNkk4AosaM
	8tgNKF/gtBJox9oOYEusmF8=
X-Google-Smtp-Source: ABdhPJwtNVo1HgE5PBT7Rskt3I+Zgcv6UDKuYR1c9iBUjDfm5L1piKW1Mlm50/FmgRvhcyQAyrp6dA==
X-Received: by 2002:aa7:de92:: with SMTP id j18mr1849702edv.141.1627637161384;
        Fri, 30 Jul 2021 02:26:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd13:: with SMTP id i19ls1263282eds.2.gmail; Fri, 30 Jul
 2021 02:26:00 -0700 (PDT)
X-Received: by 2002:a05:6402:c9:: with SMTP id i9mr1918989edu.48.1627637160352;
        Fri, 30 Jul 2021 02:26:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627637160; cv=none;
        d=google.com; s=arc-20160816;
        b=vc3WiJ5THYK7gIHc3bR6jEpVic7YIaOF0aI78lr2tVCPrEXydspD70mXkz2T6godPE
         FC1DQMSJSN7S0F8ipKily+WJ4sZFuMJ9cXZyZlHS/dkssbZtdq+Rn2riCk2yhRQJYDAb
         /6cCk6AArsFc8u1609/fmOWQpSEbyimDGGxxCe3mVIKrOScYOxEZWYHYyjep+A9r+s4r
         TDPGGcjW/FDTP2Li9kKaMm1P6YEpeCiTK9ACYDZHeIw/A4eJdBrxLZCJYZOezATHPf2+
         Hb3Uv9zqXriI3WpsoyGxF3D8NHJFkv9egIDWT4LVZgx0E8nRRLo6bOIU9tgoaO0GYVex
         MtOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=AkuGs7W3jKofUPHLtLFgYg9f4YA+eRGF5if/gTr/VXg=;
        b=aRRhjgNuvbtCurIM/5PIq9XJNhROLPvPRCub+C3K/L0t7E48GxjwFXw61UsSwbxW7Y
         /2iYzFZH80443RVRIYWLTjLNGokoz67zn0gr06MoqaWqRtBe252a+s2SMLPGvCOG1sF9
         bNnh2AodonS8lUjCger9b8q1DEP/I1xbBCmFr0GsfrZa0fpZps89Pmp/VOVrSXJZpZlR
         3kUjXUoyS1QRE6FS28HZFHZmIFfCPbcAElG5GgF2Ss8CuCX/NoRHezO4l8iOjNpdx3kH
         doZOukA6n2IpMkHwdj1R+S3Bej7Wq5bnWt1T90T4+Uy9O6gufWvC6lqLOx3Ghn1pYeH/
         UWyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linbit-com.20150623.gappssmtp.com header.s=20150623 header.b=lylUtumR;
       spf=pass (google.com: domain of lars.ellenberg@linbit.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=lars.ellenberg@linbit.com
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id q21si68126eds.2.2021.07.30.02.26.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 02:26:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of lars.ellenberg@linbit.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id d8so10437460wrm.4
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 02:26:00 -0700 (PDT)
X-Received: by 2002:a5d:6448:: with SMTP id d8mr1920645wrw.295.1627637160119;
        Fri, 30 Jul 2021 02:26:00 -0700 (PDT)
Received: from grappa.linbit (62-99-137-214.static.upcbusiness.at. [62.99.137.214])
        by smtp.gmail.com with ESMTPSA id v15sm1259298wmj.39.2021.07.30.02.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 02:25:59 -0700 (PDT)
Date: Fri, 30 Jul 2021 11:25:57 +0200
From: Lars Ellenberg <lars.ellenberg@linbit.com>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 48/64] drbd: Use struct_group() to zero algs
Message-ID: <20210730092557.GC909654@grappa.linbit>
Mail-Followup-To: Bart Van Assche <bvanassche@acm.org>,
	Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-49-keescook@chromium.org>
 <1cc74e5e-8d28-6da4-244e-861eac075ca2@acm.org>
 <202107291845.1E1528D@keescook>
 <0d71917d-967f-beaa-d83e-a60fa254627c@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0d71917d-967f-beaa-d83e-a60fa254627c@acm.org>
X-Original-Sender: lars.ellenberg@linbit.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linbit-com.20150623.gappssmtp.com header.s=20150623
 header.b=lylUtumR;       spf=pass (google.com: domain of lars.ellenberg@linbit.com
 designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=lars.ellenberg@linbit.com
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

On Thu, Jul 29, 2021 at 07:57:47PM -0700, Bart Van Assche wrote:
> On 7/29/21 7:31 PM, Kees Cook wrote:
> > On Wed, Jul 28, 2021 at 02:45:55PM -0700, Bart Van Assche wrote:
> >> On 7/27/21 1:58 PM, Kees Cook wrote:
> >>> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> >>> field bounds checking for memset(), avoid intentionally writing across
> >>> neighboring fields.
> >>>
> >>> Add a struct_group() for the algs so that memset() can correctly reason
> >>> about the size.
> >>>
> >>> Signed-off-by: Kees Cook <keescook@chromium.org>
> >>> ---
> >>>   drivers/block/drbd/drbd_main.c     | 3 ++-
> >>>   drivers/block/drbd/drbd_protocol.h | 6 ++++--
> >>>   drivers/block/drbd/drbd_receiver.c | 3 ++-
> >>>   3 files changed, 8 insertions(+), 4 deletions(-)
> >>>
> >>> diff --git a/drivers/block/drbd/drbd_main.c b/drivers/block/drbd/drbd_main.c
> >>> index 55234a558e98..b824679cfcb2 100644
> >>> --- a/drivers/block/drbd/drbd_main.c
> >>> +++ b/drivers/block/drbd/drbd_main.c
> >>> @@ -729,7 +729,8 @@ int drbd_send_sync_param(struct drbd_peer_device *peer_device)
> >>>   	cmd = apv >= 89 ? P_SYNC_PARAM89 : P_SYNC_PARAM;
> >>>   	/* initialize verify_alg and csums_alg */
> >>> -	memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
> >>> +	BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
> >>> +	memset(&p->algs, 0, sizeof(p->algs));
> >>>   	if (get_ldev(peer_device->device)) {
> >>>   		dc = rcu_dereference(peer_device->device->ldev->disk_conf);
> >>> diff --git a/drivers/block/drbd/drbd_protocol.h b/drivers/block/drbd/drbd_protocol.h
> >>> index dea59c92ecc1..a882b65ab5d2 100644
> >>> --- a/drivers/block/drbd/drbd_protocol.h
> >>> +++ b/drivers/block/drbd/drbd_protocol.h
> >>> @@ -283,8 +283,10 @@ struct p_rs_param_89 {
> >>>   struct p_rs_param_95 {
> >>>   	u32 resync_rate;
> >>> -	char verify_alg[SHARED_SECRET_MAX];
> >>> -	char csums_alg[SHARED_SECRET_MAX];
> >>> +	struct_group(algs,
> >>> +		char verify_alg[SHARED_SECRET_MAX];
> >>> +		char csums_alg[SHARED_SECRET_MAX];
> >>> +	);
> >>>   	u32 c_plan_ahead;
> >>>   	u32 c_delay_target;
> >>>   	u32 c_fill_target;
> >>> diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
> >>> index 1f740e42e457..6df2539e215b 100644
> >>> --- a/drivers/block/drbd/drbd_receiver.c
> >>> +++ b/drivers/block/drbd/drbd_receiver.c
> >>> @@ -3921,7 +3921,8 @@ static int receive_SyncParam(struct drbd_connection *connection, struct packet_i
> >>>   	/* initialize verify_alg and csums_alg */
> >>>   	p = pi->data;
> >>> -	memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
> >>> +	BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
> >>> +	memset(&p->algs, 0, sizeof(p->algs));
> >>
> >> Using struct_group() introduces complexity. Has it been considered not to
> >> modify struct p_rs_param_95 and instead to use two memset() calls instead of
> >> one (one memset() call per member)?
> > 
> > I went this direction because using two memset()s (or memcpy()s in other
> > patches) changes the machine code. It's not much of a change, but it
> > seems easier to justify "no binary changes" via the use of struct_group().
> > 
> > If splitting the memset() is preferred, I can totally do that instead.
> > :)
> 
> I don't have a strong opinion about this. Lars, do you want to comment
> on this patch?


Fine either way. "no binary changes" sounds good ;-)

Thanks,
    Lars

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730092557.GC909654%40grappa.linbit.
