Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBWMOTGCQMGQEB4Z634Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2907738ABB9
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 13:26:18 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id z14-20020a2e964e0000b02900e9ad576f5asf7273739ljh.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 04:26:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621509977; cv=pass;
        d=google.com; s=arc-20160816;
        b=fy8ca+X7xojkkdWgmW0spjjr38RUR6muzBllaJaiY2vDJs6QUaiBTNcGjNBLugZ6rl
         jVQyily/w7bgJ7I86Gru6nUIff+SVIEme2nNCdya4vchFFb/MUhD6LdW3SR2yZndf9wV
         mJ6cjOzJYHFneSDMHKLakn+KYBnyaD8mAnbA59vpY/nnaxBFG3axzsQ2Nz29BJuUZbup
         gJ3v+TR/0bPcFygPjov0uF1C02t16eL8LCHKRBH9b9QjOJRO7CezYWGwDUHD4pvejhzU
         TKTeihD5eSsqevh6c3r95iOcpSkRzD1q74PzH8+nDlasJwdxwvbEmzTK+k4Qwj3T5l/O
         hkjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5qhSPV4RxG2U450Y+BJ26iWKcQoe/5d2bm5HlcXk+Y4=;
        b=DdSGGebHv9ByFeq9OzDm6lnnJFy6aeEJVWBF9qOml+zN6OgABRbbP08dSD1VIBX0BA
         OdpH6oCiEaQeHjR3X+jEvbWINqJy/hkTZi3a3c+PCgZT0GzUxhfnWoqNbwLRehzCKKtG
         lw2WieI28AymMxqPZRB6c4NK7FKIVnmt97OtlBnjCnLTeyCQMa2z+lXr8911O9AR3TjH
         0zkr4oj6TxUWuUdSYw7cFXgQv/sGMmTqFn5iKVwOM6qAAhEL0a1UZWJl3Y3egMVATKrb
         bVldB5oTFlAoI1ZIvN+yOL2AB1josjaHFUo6mFyrDubfQdFjGfEge74/VnCOPw7yqNxT
         MZYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=SU6XlUHS;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qhSPV4RxG2U450Y+BJ26iWKcQoe/5d2bm5HlcXk+Y4=;
        b=HLCus4LSABkSza21OuT8btKAi9L5c1RVfnXWyNqFCDH8m6FC6YD+iqn3ClDOPDDSMd
         hJRkIeycK4FcmJ4C2yIZ6HHtqpVekCX70zWC89MF88SnHgI6VLDYds26QFtHazI0Q+Iv
         yP5TFaHRWjaOuOI5WaCgpZo1Iar3c0Q3WJaFeUVW5MesYSafSrNMJ/PBV2kn/LOwi2CD
         Vy9cEsNrHxoFe5dzOXcV3FWVBbJdcxu918s3trXKrtJg4N0cxTp8kESTup7jEIIlzaPM
         TFOic4kNHxJWpjkrui7gdWqOJRqO9eCruDCvNbnX+CyR8GRNJF9lFXAJtXZE9hRBeGEg
         EF6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5qhSPV4RxG2U450Y+BJ26iWKcQoe/5d2bm5HlcXk+Y4=;
        b=kcSZ3mJ/trbSgFNux+jdVWuIfzWgwhbeIgh2a8i9zGfseL+Jqzdpk4k+jdAbZfYYd/
         ZuCn2RCiwrOXgKGlChfmX5gESdQ+cb0wOp6fZxiZXfcInnlIl/cPenh1J2nzCXOcXyAG
         bPp/QdfxlpIWf3yNQfPcWniLX8QFHKuDlnY5o2SjzDquKLZiTgRBX9HlqG0O/5YTxg5d
         a/4kJRS7dcZasodBdHTA1XT1B5Jw3LoHVNiTg9F4ue3JlojPZHlcpL/A2W8WfrbaW9MB
         6mPaIatzWy3N8uis20IRCEhFeO9na5N3hHklWPeZFepPI2PmUA2ciEdFTejOkulEjgFJ
         O2+w==
X-Gm-Message-State: AOAM532apisM/J8sGIyJBReSDpkbSnjTM0fFZtwVKAdnfMWSPg+2uHT8
	soWnHUO9SSEFUiT6qjUTgW0=
X-Google-Smtp-Source: ABdhPJxELAp0gugEG7dSuXEl9SNXlWK2J08559mCh36L+QbOBT/vzRSa72Hu0CylEyFy9IKd7ltyMA==
X-Received: by 2002:a05:6512:31d1:: with SMTP id j17mr3006380lfe.512.1621509977396;
        Thu, 20 May 2021 04:26:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5592:: with SMTP id v18ls592246lfg.0.gmail; Thu, 20 May
 2021 04:26:16 -0700 (PDT)
X-Received: by 2002:a05:6512:c01:: with SMTP id z1mr2975567lfu.39.1621509976320;
        Thu, 20 May 2021 04:26:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621509976; cv=none;
        d=google.com; s=arc-20160816;
        b=mVP0NfsanJKeIHhYdIO8R+IVv5certu/SuZHx0dZcvYwx+XC6M83NrvZJ7lDW40UCh
         sc0vdY7YWygHn4rsVYFXWEzzQPUvF1aCekeGzWw00y7qevxcB6Mm5HL1CcRbv7U2u1fT
         NKnxCjI24PTK03Yo/Za1R6hfVSc0W7MKJ+jm/C4uWbderAVYdLaRSOW4xicueqNKE1H7
         WP+A4UiSTkpNS6HxLNxfm48OOfmRya3duOPW9RGf32/v4p3314Hp0VhMgrfAxPHXQmZq
         pWuT8//qAKMuU+J7mtaJYOYQcpsRahPqGeVS9+k+P3aKqdZALEDtHglQjPeYVPUIfvNX
         TaUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=jqNfPIxIDmqFlBeVEmMp4wkx0fm6Zo+X3532NE3LEc4=;
        b=Tun3R3kSWl5asx8I9iIKuSSa9jxxfltkSp+REsz0gGAtev0b5L6fWErVZRTIWzfOk9
         m30IYT32yfnjZON4eqUioINSbJuuKmSgET4kR5ud54zQRo69YgnMDd8zOST9iU3fl+XB
         LPd4baUjAO3xQMM1bzLeccL8zeMzpkFGaawSp2hziKiQmtZOXGCf/rPrrDqBKUW1QH/4
         Cru857FpzHLjgAJ2BbWEfSTMWqMWlnAfpdCSagXywZsZoddcg3N33ZY/+iE17MRVJ9oY
         PutiqYzASg9nY+lwRjy9umfqSny5lf/balG4UyOLmLXOfy1P5/qAVsdjZyx1kaLy9Ckq
         05Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=SU6XlUHS;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f14si106003lfv.2.2021.05.20.04.26.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 04:26:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 7879AAC85;
	Thu, 20 May 2021 11:26:15 +0000 (UTC)
Date: Thu, 20 May 2021 13:26:15 +0200
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Martin Liu <liumartin@google.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tejun Heo <tj@kernel.org>, minchan@google.com, www@google.com,
	davidchao@google.com, jenhaochen@google.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kthread: Fix kthread_mod_delayed_work vs
 kthread_cancel_delayed_work_sync race
Message-ID: <YKZHV7TIZ0QALfWd@alley>
References: <20210513065458.941403-1-liumartin@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210513065458.941403-1-liumartin@google.com>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=SU6XlUHS;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Thu 2021-05-13 14:54:57, Martin Liu wrote:
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

Great catch! The patch makes perfect sense.

Reviewed-by: Petr Mladek <pmladek@suse.com>

Andrew, could you please queue it via -mm tree?

Best Regards,
Petr

PS: I am sorry for the late review. I was somehow busy last week
    it it has fallen too low in the mailbox :-(

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YKZHV7TIZ0QALfWd%40alley.
