Return-Path: <clang-built-linux+bncBCN674663MOBBTHRSSCQMGQEEV6I3CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB0A389356
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 18:11:57 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id w15-20020acac60f0000b02901e5b6e8f60fsf5116142oif.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 09:11:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621440716; cv=pass;
        d=google.com; s=arc-20160816;
        b=mVOw4as5OTSuUcVkQxX/iYEA/3gv8JqAbKWhhkpPbfOihhHZrtCI9x5ESW2KfksHRX
         RZSf/7BOB5/9P3Ks1+JEFF7CkmR5IvC27S8q5cGKNcLhLrW6iPfaTUwJJTn8i3eM6JnF
         XSactTjDyj/tZmLZ3XH4rfT4E4/h6EWDBdUdmn5I6SbJlUkXTlg1uXOT3502u4gGeUnf
         s3X8NnuNiuCVnm1/ebSiY39rBBLDZH25ntRGFUp9+ZHeRJMf9ok79XaXmnK70jh+rfwl
         fo3wdw4jyKhhHGCVmVQ7ogkACjo7B19uIjA6DqA0uhmhWGFVNPrdZ0Wd48DeeTO/gAsP
         wb+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=+Jzsf44WE0VSITFTSoOoiDAihRmrtHlzsuALllv7ohw=;
        b=suzIIvVAdke4/FrEIxVHEqRwsUcCw49tvjQt75Zo66E5vFVVagUItkLkdFjLYyGTHD
         4Ya4FI3CH1KOSzJ14DvJnWPpKWruoAMyE43zDyCcxclm4qvjU5xfRGkamC0HnTgN/Cro
         NK43SnVN397Zo8es3kmUrsO8BlP7Is/XVt+m5ubS4VZDS3P+zNForOXN68ngo26i4dGe
         R4qk8akPyRvg3/mDi/N4jubR436R9k/qumIyNly6VyI+gXC/6tZy+yw9GwQn39xzzXrx
         f7/hGd/v0QOThmoXijlw4wJ1LPYXHUmTTrFDvRifxnt6lH7dJs1r5ApXaIt3F6HE6N3X
         OYjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZxP4q+E8;
       spf=pass (google.com: domain of liumartin@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=liumartin@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Jzsf44WE0VSITFTSoOoiDAihRmrtHlzsuALllv7ohw=;
        b=ItDGq/687todQAS/gAqg5SQTWmJxrKti+eIUinwQ8s7/lkcMdk8d6FTLCENskGA1XD
         Cw97jPl7eXhOl3bfU5D66V6zb5jRuSDAV0wpxF6GvsQ0t7efjWtQnkR0FFyUO1yFVG5Y
         oxpDqcuZLB1I8SoyaUvlwp7YZEJyDQd/38W/ZT/Dsy3UdiDCEFWPlwTPlCvqQZwYMP6B
         HT6fddv6ffm9dxS2Zh0C62LegT36NCZwwGBEB9cS1bxUtOcRDYOTCRKuhkuctwtk1Esa
         w2r9Knrpo8VG5nGUMjS0M/mHOaTqdtDLSaxaUY106Bgu3HBWATgWLZ1/RXQwWncy6EAU
         97bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Jzsf44WE0VSITFTSoOoiDAihRmrtHlzsuALllv7ohw=;
        b=kQJQpRxMAxBjitSBeQawm9PPfEOjglpqWdiTRGQSwPnheEMC9sEKuyPeKqLkqy/KuY
         fySds88X85MW9OkUokySceCyZ57hnidi8dBFb48E0ucyNZjYUQlpUH2W9vQfasiQqonK
         bgeQaurEHoZswBq/+ZUkZjYFeg0vWp7UhQfEFvkEfVThzEAAxzK27511OXSyNjebgDJF
         1h0M7wLfg3ktzH5SpeWiF8n5sQvMEkge2J+hlVlmD+q/0psLJFq1LVnd3OsZXwzkH7YX
         JIoGhDWZl9Qk+V+jiYxJsh9i1xld/SeRZHqlR5xbRRPMXhuQA0JqtDlVOWjQ5Uzlz61M
         4C4g==
X-Gm-Message-State: AOAM5339lWYwNm779PoqJuP8J559zct+5bfy0Dgr1dYXt9BSUlEzYdhV
	kYEcUsaAXn0Gnl036mVpVH8=
X-Google-Smtp-Source: ABdhPJz57VNRX4DekifB4VmDHVoZ9SRq+AnxoW7WvWgaoKwDwCbWcUwt/hi6qMqL1hh6c9z/LzZFig==
X-Received: by 2002:a05:6808:138e:: with SMTP id c14mr1770906oiw.55.1621440716162;
        Wed, 19 May 2021 09:11:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c87:: with SMTP id c7ls16168otr.3.gmail; Wed, 19 May
 2021 09:11:55 -0700 (PDT)
X-Received: by 2002:a9d:1d21:: with SMTP id m30mr122570otm.145.1621440715831;
        Wed, 19 May 2021 09:11:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621440715; cv=none;
        d=google.com; s=arc-20160816;
        b=U4WUhViISXQ3Jfir6kkWXLBORFkVXHxFiGA+MEFcj84pojnAB1Ybug4D/XxKuEmjuT
         qHpQd1wATtSfr2u2iJTYv1+xanVQROtjFR+NaCOC+JDQoo3z6rVU//QATxThCi+sUZRp
         s7BLRQM+4Kz/9NpgirvWLTaavJtiFnrDw2XHOgvmdRaRr0XKhDJ2CjK/noVrohd4Vkrp
         b2TT5zzibF3vdX6u/WwOZtT7TQhiBhgEGjb+odM4c4ZCaiQ1EmBOC4HInq6zo6kS2t/t
         aA2C0g739YH1ILvKltEZs1ACOa6UQHADM+98fkSDeFgrRstokb6jzZkYCxtBSFUfWZTL
         prng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=t7n0Ls+OtKwvCY7O6AjIzNmvldq33XzdrqIXKag52q8=;
        b=uvVRcNv5uXoJAGwHBEA+UwFg1NPedBK1mdx+jyzBimhtatY5dzd7pBY4pIOSvoiFBU
         FuorHOjw5xouKhkaaj6kr0TJQu95rzYtUArGXbPKAi0YIQKA6hp3592aSqtSwirb+KqI
         583QFleixUH4mMWK4HDWKwzfVP8BunGKpHL0X3z8wAXHqene3kvG2SdOVt1ouqb+fU63
         W1foPBTx2zmPTWsIE3BF/UJphDSPUvu2PrqmSPICXRZ5TwyYI27Q257PvD30P/NUB+7/
         4QqwD3h8yvMINCRmoQIJd/ev2kE0QbC/c46X2t6NS1yo+jNgZGEbD9k940rmwZec3bpx
         3Jog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZxP4q+E8;
       spf=pass (google.com: domain of liumartin@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=liumartin@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id w16si3504oov.0.2021.05.19.09.11.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 09:11:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of liumartin@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id lx17-20020a17090b4b11b029015f3b32b8dbso2002704pjb.0
        for <clang-built-linux@googlegroups.com>; Wed, 19 May 2021 09:11:55 -0700 (PDT)
X-Received: by 2002:a17:90a:8688:: with SMTP id p8mr71425pjn.37.1621440714988;
        Wed, 19 May 2021 09:11:54 -0700 (PDT)
Received: from google.com ([2401:fa00:fc:202:761b:68c0:185b:8860])
        by smtp.gmail.com with ESMTPSA id t7sm8487221pjr.29.2021.05.19.09.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 09:11:54 -0700 (PDT)
Date: Thu, 20 May 2021 00:11:47 +0800
From: "'Martin Liu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Petr Mladek <pmladek@suse.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Tejun Heo <tj@kernel.org>
Cc: minchan@google.com, www@google.com, davidchao@google.com,
	jenhaochen@google.com, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kthread: Fix kthread_mod_delayed_work vs
 kthread_cancel_delayed_work_sync race
Message-ID: <YKU4w9pDWn3lj1V+@google.com>
References: <20210513065458.941403-1-liumartin@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210513065458.941403-1-liumartin@google.com>
X-Original-Sender: liumartin@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZxP4q+E8;       spf=pass
 (google.com: domain of liumartin@google.com designates 2607:f8b0:4864:20::1036
 as permitted sender) smtp.mailfrom=liumartin@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Martin Liu <liumartin@google.com>
Reply-To: Martin Liu <liumartin@google.com>
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

Hi Folks,

Could I get some help for reviewing this patch? Thank you.

On Thu, May 13, 2021 at 02:54:57PM +0800, Martin Liu wrote:
> We encountered a system hang issue while doing the tests. The callstack
> is as following
>=20
> 	schedule+0x80/0x100
> 	schedule_timeout+0x48/0x138
> 	wait_for_common+0xa4/0x134
> 	wait_for_completion+0x1c/0x2c
> 	kthread_flush_work+0x114/0x1cc
> 	kthread_cancel_work_sync.llvm.16514401384283632983+0xe8/0x144
> 	kthread_cancel_delayed_work_sync+0x18/0x2c
> 	xxxx_pm_notify+0xb0/0xd8
> 	blocking_notifier_call_chain_robust+0x80/0x194
> 	pm_notifier_call_chain_robust+0x28/0x4c
> 	suspend_prepare+0x40/0x260
> 	enter_state+0x80/0x3f4
> 	pm_suspend+0x60/0xdc
> 	state_store+0x108/0x144
> 	kobj_attr_store+0x38/0x88
> 	sysfs_kf_write+0x64/0xc0
> 	kernfs_fop_write_iter+0x108/0x1d0
> 	vfs_write+0x2f4/0x368
> 	ksys_write+0x7c/0xec
>=20
> When we started investigating, we found race between
> kthread_mod_delayed_work vs kthread_cancel_delayed_work_sync. The race's
> result could be simply reproduced as a kthread_mod_delayed_work with
> a following kthread_flush_work call.
>=20
> Thing is we release kthread_mod_delayed_work kspin_lock in
> __kthread_cancel_work so it opens a race window for
> kthread_cancel_delayed_work_sync to change the canceling count used to
> prevent dwork from being requeued before calling kthread_flush_work.
> However, we don't check the canceling count after returning from
> __kthread_cancel_work and then insert the dwork to the worker. It
> results the following kthread_flush_work inserts flush work to dwork's
> tail which is at worker's dealyed_work_list. Therefore, flush work will
> never get moved to the worker's work_list to be executed. Finally,
> kthread_cancel_delayed_work_sync will NOT be able to get completed and
> wait forever. The code sequence diagram is as following
>=20
> Thread A                Thread B
> kthread_mod_delayed_work
>   spin_lock
>    __kthread_cancel_work
>     canceling =3D 1
>     spin_unlock
>                         kthread_cancel_delayed_work_sync
>                           spin_lock
>                             kthread_cancel_work
>                           canceling =3D 2
>                           spin_unlock
>     del_timer_sync
>     spin_lock
>     canceling =3D 1 // canceling count gets update in ThreadB before
>   queue_delayed_work // dwork is put into the woker=E2=80=99s dealyed_wor=
k_list
>                         without checking the canceling count
>  spin_unlock
>                           kthread_flush_work
>                             spin_lock
>                             Insert flush work // at the tail of the
> 			                         dwork which is at
> 						 the worker=E2=80=99s
> 						 dealyed_work_list
>                             spin_unlock
>                             wait_for_completion // Thread B stuck here as
> 			                           flush work will never
> 						   get executed
>=20
> The canceling count could change in __kthread_cancel_work as the spinlock
> get released and regained in between, let's check the count again before
> we queue the delayed work to avoid the race.
>=20
> Fixes: 37be45d49dec2 ("kthread: allow to cancel kthread work")
> Tested-by: David Chao <davidchao@google.com>
> Signed-off-by: Martin Liu <liumartin@google.com>
> ---
>  kernel/kthread.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/kernel/kthread.c b/kernel/kthread.c
> index fe3f2a40d61e..064eae335c1f 100644
> --- a/kernel/kthread.c
> +++ b/kernel/kthread.c
> @@ -1181,6 +1181,19 @@ bool kthread_mod_delayed_work(struct kthread_worke=
r *worker,
>  		goto out;
> =20
>  	ret =3D __kthread_cancel_work(work, true, &flags);
> +
> +	/*
> +	 * Canceling could run in parallel from kthread_cancel_delayed_work_syn=
c
> +	 * and change work's canceling count as the spinlock is released and re=
gain
> +	 * in __kthread_cancel_work so we need to check the count again. Otherw=
ise,
> +	 * we might incorrectly queue the dwork and further cause
> +	 * cancel_delayed_work_sync thread waiting for flush dwork endlessly.
> +	 */
> +	if (work->canceling) {
> +		ret =3D false;
> +		goto out;
> +	}
> +
>  fast_queue:
>  	__kthread_queue_delayed_work(worker, dwork, delay);
>  out:
> --=20
> 2.31.1.607.g51e8a6a459-goog
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YKU4w9pDWn3lj1V%2B%40google.com.
