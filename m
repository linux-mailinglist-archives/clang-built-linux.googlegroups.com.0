Return-Path: <clang-built-linux+bncBDOMDVMI5MBRBU6GUH5QKGQEYWTN3SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 143B8271DD6
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 10:24:52 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id g6sf5570538wrv.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 01:24:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600676691; cv=pass;
        d=google.com; s=arc-20160816;
        b=W6EVuCinTwLFge3y+on2mJ9yioIHoBG2zcYAh+FMxMf76b6XhvjlO1fBfcNCv8wFH5
         DfDaxqMkvlgY/WdDSQzM9alSFsT86vLXAZT8/Tk9DBtQNhkOH+rtEIudzysT3cdsIF4N
         cnDcQXgQ+HJoeSzd3W8eaPJ3N68rwfYhUhHUzQw7cK79Kwhqq3L2vmi2MXs5VQz/kzjQ
         ULkR8k2rOhgL8JEjgcIeI20YwRle6H7j1s0WYfQOlNeqQlEHa0uuj3VeAL7IkvHJxhFV
         reu2W2jlK0qZB9THrwxpWVEzshzd7HvpQ1BPIRfP3D4JqvgGLRbm1weBBfw9YMtlSbi3
         Pp0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:subject:cc:to:from:message-id:date:sender
         :dkim-signature;
        bh=/z1Z8lYTcop717mYlh8OaG/p9q5U61SmeCE13mezuzs=;
        b=rVTmccw6rbNXHiOLHrOdBQU9B4r3xCJGkQkTB6AF9v6niK/FRZ7IEQoi/JPck7AK0S
         7UXVk76S8JbBiTTmsC8RFjD6lbXgteCnqzpLVbWh+lDbCpNvRvQ9det/hVGVJE0XCGu2
         2AAu4qPlikmpGJLHCYpZimn6SPTPN3enuGReAQ/+39dcEfS9VJWVUk2TUKuBreEArtpM
         l853n+SPRux0BkhJav639dX6LeCAffhrh07TPQ9JmFL4SiWuY5S09GKp0KKniYr0U897
         EEJuxR2rlMtBVXG2NIRS8OhPNEhE5yXlJKGbZ82ufoNiQC4CTizOwb6VPWXormMYB/gF
         2/Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tiwai@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/z1Z8lYTcop717mYlh8OaG/p9q5U61SmeCE13mezuzs=;
        b=oPPz7tyE2UVwVvkVB8GEWk+xeGiCvTQLX+/4UJnl9pMq5q/ShZE7z78Dn3R1ApvBe8
         KkfwmAGhthIeAfW2zky7aW9AvgBCYReXhJwO2NWVJKLqn1pVRXN4LnFYXUezf0YlmM1o
         2UzL+Uf2WfTGd7KAKVxbQwCPxnt/dH6v70Vgm0fh9wRZSehxKEo8cTJgs9z9uUXiOgLi
         b2oWZg59KJtJCAl97vDpp+JrcHY9n9c7DLrFrQrm0MacE5oXJNExeTZQ/yvMxLMGg/rD
         7vQEpErRkxciY+MDokNLBhmWpesKcdk1HLWHq/FMSABdiYhCUvr2vSyKCiMshVaasvQ4
         PuJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/z1Z8lYTcop717mYlh8OaG/p9q5U61SmeCE13mezuzs=;
        b=ryUzoK3hW04csPJvH90FPIaR3QaegwHfyLEqMOmcLcfhBDC1648EnL1SS4wH8sMP1z
         +9uGcwphg59oX8UmoviUsWnAJxpvrjXvphWf6V1TBAuM6lkkbrausyJa8QoYqkgZFHIo
         nUnUy/2qBgXGKH6YWCeDk3ybeLuPqxISySs9UuCyF4Wrof6eV5UyO5u26bX+CfeBKQHz
         YrHHKjEnlKZnonYW8u2r9+a5Nsczz6TrJoJCJT6SVwwCvZCOeu5FzN5i6Hb9QI/OEnsr
         DECb9l7/6BdcgzZSh0A2SVYYOcYpdQnhvCR9VGqbHY5VyW+Z/TYPJX5JxW4W6tcaHrzT
         9LYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xGrsFfTBebuC8kXZ/JgAhR4cQYrww0INn0LwRK9ER46emMkOz
	MmGs9V2DqS83L2MR6IOkTbg=
X-Google-Smtp-Source: ABdhPJyNCBXfzZZoYSeaHfAiCs1pjJaqkY9IFaCsvu2mYGpUdUb7RgK63wAmLmhI8S1IaO8nwT5hDQ==
X-Received: by 2002:adf:f80a:: with SMTP id s10mr54080480wrp.351.1600676691881;
        Mon, 21 Sep 2020 01:24:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c2c1:: with SMTP id s184ls6145811wmf.2.canary-gmail;
 Mon, 21 Sep 2020 01:24:51 -0700 (PDT)
X-Received: by 2002:a1c:e40b:: with SMTP id b11mr28800229wmh.100.1600676691127;
        Mon, 21 Sep 2020 01:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600676691; cv=none;
        d=google.com; s=arc-20160816;
        b=mdseYPphMDs79Yyvx3vMHHtMP2lNCrp2OtV+b1/R/Q0LODtfVHT4SpXYvSxT3JOrKt
         zn9bkFJycd/e4VJcyuM/6IzhYS+RKEEq5ykyqRFNl6/LNshuuZdUzRtmDoI5ay2Ib1gR
         orX3hD/AOL6CXXIC9LlFyyKq4ILbvStAiLVz39hSnbQ+U3hEqVhnlNkaamFNDaDe2yPp
         rNKv6FnOaoNjmHBD9dIXKV9qrEz0ysFycVMBWniWP4Fw33GA8W4CHMXprWpCuwyHyw4x
         HvZiMXOmKHaDfgpxSqp0D8YprdwdMNmTGCmfQ4x65QHszKnBgBE8wLURQAiReN/yvGzw
         1mfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:subject:cc:to:from
         :message-id:date;
        bh=SNJqTurfOIjNQ3t5a1DkB7Qr1tWiHA7VaaW5dgv3xmA=;
        b=uc8JxyrStRsDsUvDn3LRsNmxhLr2OUcc71Q7PO8eidoLfQnZdMuwQiW4RXR1+uwCMq
         ZLD4BmAFT2Ps4XArzsNVuZIWS1yHq/NCpvmQLsOspNKGR75DulFMcQMXfHtCJRlHcplB
         7w6r9MgnuKGWqIBcUtLcuJkwpu9B+tmn8qJ33dcSjQ6KBrOn33tfsz0nTfNosBosuULK
         cqDxk7PyFIKTZiXeWqZodYaCUszYtWkgthCO/9mAyn9P2rsIpPtVKAWoRySyYwZwX9+d
         icFGSz/ta3gjJd85VwZb2QI0cIsvf4WJfG4l/35r2obUppEVlBmrD2Sx4JHPZo5bsRY6
         5I4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tiwai@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id w10si68642wma.1.2020.09.21.01.24.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2020 01:24:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 6010DB288;
	Mon, 21 Sep 2020 08:25:26 +0000 (UTC)
Date: Mon, 21 Sep 2020 10:24:50 +0200
Message-ID: <s5h1rivr0z1.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: trix@redhat.com
Cc: perex@perex.cz,
	tiwai@suse.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	eblennerhassett@audioscience.com,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ALSA: asihpi: fix iounmap in error handler
In-Reply-To: <20200913165230.17166-1-trix@redhat.com>
References: <20200913165230.17166-1-trix@redhat.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI/1.14.6 (Maruoka)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 Emacs/25.3
 (x86_64-suse-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI 1.14.6 - "Maruoka")
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tiwai@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tiwai@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=tiwai@suse.de
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

On Sun, 13 Sep 2020 18:52:30 +0200,
trix@redhat.com wrote:
> 
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis flags this problem
> hpioctl.c:513:7: warning: Branch condition evaluates to
>   a garbage value
>                 if (pci.ap_mem_base[idx]) {
>                     ^~~~~~~~~~~~~~~~~~~~
> 
> If there is a failure in the middle of the memory space loop,
> only some of the memory spaces need to be cleaned up.
> 
> At the error handler, idx holds the number of successful
> memory spaces mapped.  So rework the handler loop to use the
> old idx.
> 
> There is a second problem, the memory space loop conditionally
> iomaps()/sets the mem_base so it is necessay to initize pci.
> 
> Fixes: 719f82d3987a ("ALSA: Add support of AudioScience ASI boards")
> Signed-off-by: Tom Rix <trix@redhat.com>

Thanks, applied.


Takashi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/s5h1rivr0z1.wl-tiwai%40suse.de.
