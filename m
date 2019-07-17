Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBL7HX3UQKGQEEAJHNKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EF26C3A0
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 01:48:01 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id b63sf19979339ywc.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 16:48:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563407280; cv=pass;
        d=google.com; s=arc-20160816;
        b=pJrcAaBUGB+ds2B4qFWGgIkVX6R3XEJBr3BCN/HvZf3tFxAEvWYeK9JN08rtroTZMN
         dKtOAya2vRGX4j1eCWABU5yjACxcpmc7zytG/RbBA/JvTcy8yaVx53Jijy0A20QYfWut
         BpOl57Pa5+uxNOT4d1v33XWCSt9YJucMpVypXQubbqx4G33P0aXI38D5PbsRGuHtbsYk
         UTA0rVwWYHsrLVhylf5VyiBDeGdFtR5IWURDAJeabbnl43yVvIx89/f8t83Y5QS9D6Ht
         X5OzjYX9lgnjzNxAPhh7r4nvQI/JKjPS3oW1HfwYF8ZTtHtqKzKBn5/QylYl/p/Zmnrh
         WGng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4d16hFStUr4iEgKhcysI9ThK8/FTb0Du2OzNbcPpLSQ=;
        b=e8pZduJS25nm9wnUI0plUskegVFhXFcJYKwfWfBbmUEp+6T0DKCrTr5sFBhW7tDEaA
         EFCv1+oIqq3PavMoKlj12jjGpzrEYkiNOkvOM3r8zfpYuYSPMIsr41Qni8kMWeCxM9Gi
         vv9Obsd2jNEo4DpqoSAZp59ls6leqxRY8RJ7zDgzaaPtcpz6YHejH7Ym1EHcM1M4x+hu
         uawSOFIhjgy4UDCpw9foPNTVGp7bQqcxo+dUnyZwtLbmGSp69/x8hljQM7QhYbGtq0B4
         V6hVKUTa9vMsPQdQg7fhhY8ppcgbC6f08B8jrBgtsc9rvopnZzC4+GFmhBhfjIlxI30W
         FWvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BdnE4x7o;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4d16hFStUr4iEgKhcysI9ThK8/FTb0Du2OzNbcPpLSQ=;
        b=jWKb6f4PUrVfw/bxBASXYKlbCJH3A8kR16AGHXdoPR4oMZGwtDCAKQ/hqbi5+aX6R0
         +FHIEn+RPZNWyiuUwlDxumE2LXQMh9DOf4mJk7koK2X+GWxRs37ol8p7MR9RQUW7L/M7
         GTpxj8/7JYCl+Pum1a63MZwVW5Z08nigpuz0x2FF/GgWmZ1uYstQN1ldfNe0lyGMpSdM
         CRGZYAj9GDh4AH+Z6xZJ993nZiPBBmMlWahQL6AC2FdInFgjdgUjWlOaADvV7H0Yh53B
         Sp321glpNrbiCh4gC7RT5CZj/zu9aIXoNzY6UooxJNpvmoX0fnAPbztjBiAD7Nnl3IoF
         ppmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4d16hFStUr4iEgKhcysI9ThK8/FTb0Du2OzNbcPpLSQ=;
        b=S7i3eynLHfMTHY3DWNLcBUDBnM/R8eVkv7u2TP7tu5zk+rgPeHKZbDj6syi70Pxnzg
         WNlIyP+A7rNwPnVMacq3bdrFVvzV3rJCbtf2/kP3/KzTWya43R6Cw5/1M39ooGIfhSE2
         P0Zww67tdvd24dBav4VF9uJmZ4zdS9oVsqmbKIQZnzRNQEN9nsxs8Dy2vJtdn0M5KS5w
         qsezjV2Boi771CUQT3WeYd0yi+YxgyOCRgJxfohrr1+ehVNfq18PJ9QBxNSdbLWxtugu
         qpW1uuWIyZjhfeU/0fcIvbIfxzSxsnPioCiJcH27ozSojIe/U8GPKceC6hwmQjo879Av
         aKBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXc6y51oYYxBckC6yGfz5wlhrtdWYRTMoWy8D52tDz0VDshfYz6
	R0TmebPnHZIPFlm6/N5IO3s=
X-Google-Smtp-Source: APXvYqwD7z0ysP/qmvMMAbtbApKI2a3tAguHnYBZ5fDGj7etpTNvrXBzooM/mRS820+E2smozOthwQ==
X-Received: by 2002:a25:d297:: with SMTP id j145mr26963090ybg.472.1563407280051;
        Wed, 17 Jul 2019 16:48:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:818a:: with SMTP id p10ls334927ybk.2.gmail; Wed, 17 Jul
 2019 16:47:59 -0700 (PDT)
X-Received: by 2002:a25:38ca:: with SMTP id f193mr26691681yba.447.1563407279721;
        Wed, 17 Jul 2019 16:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563407279; cv=none;
        d=google.com; s=arc-20160816;
        b=ZGU4WRvSDSvFIIJeX1GAUbNuLYExuuzchf+gGu5h9IDWjhZTiQRQ5E/rl5amdEzh/P
         MdFM+UALpsP7szVvFU4l1u7WJuzabOYdoI7jrhCId7pdKYuOtRAT/iK4UdsGTq9ESWVd
         bb18toE7XcP1z5ddld5fZboAsyfXG7UT53yFTZ4DKd9k4VT6/pQi2sUvT04NDdQjjqyH
         TgTyX3CKAYIKkGX80yjRNQCGvTffqkyV7Zbh7OCrhPUbZ62IF/zjlvIn4CHhKcciFtvx
         ieCld75NzHBX/sGDzVJGtVhFkSkvcSvNySkgYjfUiD+Z31xi0IvadWeArt3tqK6hhcIk
         QIwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Siv/KnNF60mlRWThubfKazGtO8AyOQXZRuU8aJ8ckCg=;
        b=OlG3/BC4RCf7i3RgFAhLauy8qQaQPuqG2LBQ9pGQVLa5cFsSBOAGDKIRoPI0vRJF22
         eVQmSHvwA/SyoZAWvfK9hWBvZ6tSzNF8TiuThgR0age07Lja4iunTSEN2PlCM6G0BY7c
         VmVUJ9u1BKWzG6sta+ai/xWOdPhnLNdE9orsF3L9/X4cFnv4i2XYTxI4sCwadwYwG7fG
         HJGZ461RJUvuxeHIgg57Bh6zXC4cX736aQ5iXSi2c0U/cM1PRARLvegqHafq3IzNjKO5
         66f9TSObMbxcjIcX1M/q+SIP+Q6JH/xf3DqhA8iGRug41HC8pLlZCZ8Cloi+FLbag6Am
         ysLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BdnE4x7o;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b74si918670yba.4.2019.07.17.16.47.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 16:47:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 60CBF21783;
	Wed, 17 Jul 2019 23:47:58 +0000 (UTC)
Date: Wed, 17 Jul 2019 19:47:57 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jiri Benc <jbenc@redhat.com>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Yonghong Song <yhs@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
	linux-kselftest@vger.kernel.org, netdev@vger.kernel.org,
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH AUTOSEL 5.2 226/249] selftests: bpf: fix inlines in
 test_lwt_seg6local
Message-ID: <20190717234757.GD3079@sasha-vm>
References: <20190715134655.4076-1-sashal@kernel.org>
 <20190715134655.4076-226-sashal@kernel.org>
 <20190717114334.5556a14e@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190717114334.5556a14e@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BdnE4x7o;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jul 17, 2019 at 11:43:34AM +0200, Jiri Benc wrote:
>On Mon, 15 Jul 2019 09:46:31 -0400, Sasha Levin wrote:
>> From: Jiri Benc <jbenc@redhat.com>
>>
>> [ Upstream commit 11aca65ec4db09527d3e9b6b41a0615b7da4386b ]
>>
>> Selftests are reporting this failure in test_lwt_seg6local.sh:
>
>I don't think this is critical in any way and I don't think this is a
>stable material. How was this selected?

It fixes a bug, right?

--
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190717234757.GD3079%40sasha-vm.
