Return-Path: <clang-built-linux+bncBC27X66SWQMBBTH6QP6AKGQE5GCLUMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E53289CB2
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 02:24:45 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id c21sf8008505pfd.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 17:24:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602289484; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sk1YvYSV8qaRUbew7sQzaCy8AfUN8673ZpPUNvkhLeuWFLjKZaR2IY1paxcpOXJpfE
         zF9Y3R/BEULewm9ZlwVAsJDrd18KqieKHjOU4VMhpeVDCfaEFFqh6xzIfSCi9n0eVZIj
         e/GJEUrFF/RMu82+x7pp8XM/ozDgx6O10/9qJiKFr49cyBH7GQbzxj9lk3UxBSK9FACR
         WKj+WWYPKvTJcRCLo6G+wKw8OFOEsLoYC5AqfrlVxCUU6IXnHA2G6KZ7CUFPP2j0qVBz
         paRWU7mvYHY1/pS5V+u9vA+8Kf6hdAnrHoEwKyT+jjTwv0RwfGsfe1eeJCjzK4DyKzb7
         LE3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=qT2UMigRS+UV3bViCFtV4VkvbmeU3pFRIHVhlv/+Fes=;
        b=NB8DBmrAggTMhBA5BUvzkGNNyZYHitWH9K8QMhGMEGpTaaZbE4td4aSuXV5q8OIMkw
         lMsAE3C+84DzfPkVoh8Dw+FAyIZocNbraILXbjWScaKCVWY5sEkyYEeVL93DiZPfpT1P
         hsUnDFJkrKT57lAZkMCfF2hdQ4OwcZSOURpOqV2xK2Olt8CvP0sBdn4BfmoycV1kRIyi
         mk7uJAuVCR5iOfw/NxAlEZ9HCSwLqHiK29WRaRQVM4nYMzlKLyg/viykWMX0XFDebE4C
         xQXZAWM9ydBogV/0cjPVVLUW+SdocIn6wLDnmq6Hzzv1Ae2cX9NrGabiVcoUeZxz16mO
         vNxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ivBrvVrf;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qT2UMigRS+UV3bViCFtV4VkvbmeU3pFRIHVhlv/+Fes=;
        b=o3n6TKJUNm5znkqNHlO+cBhBkw02SS6B9pTfNn7wb+yMcCyvJQBGq/Eh6iHryaaQXn
         y/k3eyGgj9GLTXUol4SSG4Xrog9V70KkjJZpH/iUtaMxTo2tiTDFlUK8XcKFzjVQGn84
         p4Y+/IsuWNlnYZ0wvLznD8F8HYuadYoeu87bUE8yiH3KV4HuHyCG7nrRWw4ZJD5h2hMQ
         /gXzE5sHubUKbIFBUREP1MK3vFohbdAqCWvf0+FQFLbe+/kBm4EwvhKgu70L3uqErZl3
         n2jSUs04HLuS2I88vg14whgtSTo8dVuArgK/L88ypP0QlVXWpkJK961XU9tSdB5QZTYL
         Sqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qT2UMigRS+UV3bViCFtV4VkvbmeU3pFRIHVhlv/+Fes=;
        b=r/c6la07TuNEAWIhq8qZFsaJNMvOI9RRFk1JKLiZB6U9lYxdkurjmtF73xTuNn/KPS
         JkjN3KFepdzrsrZRW9jFQoMGCU9QwP7VPaax+qIVOxvtA0E+/5wTm8VQzbCBHcBM/R4K
         ZcVX/DYbxl4f356c1OuhWeKqhAEPO9BOXYWugn3nDlI/fQ+2G0t9KCSep8gQU0LGyQST
         l957hKoEwhUtQ2BeXrHuYqNNVi5GWL0saFe0r90zI/6bRDErDCSxMtv1ziB15ruPLL0l
         IvkCvJpLVDaeYiyXG6mWtaVuplJWTNQ2ZUtcKSUbY9PIgtWuGcsOqgyMA8n+/8Wus1fC
         IcUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HEh9NOFnUDlPYOncWx+dZzGKyhlNYl9uJLZ3GBp+9v09V2SM3
	fW0j8JkTbjjZiHVQAf0mGsE=
X-Google-Smtp-Source: ABdhPJx+Ny6SqhFoOhpFgd0ER05XWKEuOkxFjPz3HmtnzvrgOSfTfx9AQIeTCaBLCQIoHpfLwPrSDw==
X-Received: by 2002:a17:90a:174e:: with SMTP id 14mr7466191pjm.124.1602289484340;
        Fri, 09 Oct 2020 17:24:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b4b:: with SMTP id b72ls3743203pfb.2.gmail; Fri, 09 Oct
 2020 17:24:43 -0700 (PDT)
X-Received: by 2002:a65:5881:: with SMTP id d1mr5417943pgu.193.1602289483857;
        Fri, 09 Oct 2020 17:24:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602289483; cv=none;
        d=google.com; s=arc-20160816;
        b=UBPbYHbH39hfZ+5iNLU5WPy3+BYQhiPr0O97ON0HjhsKXipTG1pdPg226WgMAPQZoc
         lX3Cl4y2DQwT9IINTla7mW+BGx87oZsveyTYc88+h/koXXMKOqtdmdenSltIym9+S9mJ
         J6U7nQ+dtaZ2k8rNIYXQk8SG+DO/SwVFiKNWc69LvYx86DKq7PqPCQ/Uc8SxeyRlF6SD
         FQVlvdTzKde//yC1/PokOr5AGvt+grNT/YnQqoeyXTEcchpD6b81NVGXlM6DYpsmqxHL
         1I9A9brbbnOKXkGRc63AumJ5m4ythbmI+FXY7k7S98W9aHJZAIg84qNc3tfuxlyvtPnO
         EnTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=j1n5KeMHBgg75rXfWx16VkrJqv8CwDfWMRJRvhBV9wg=;
        b=PD7IDzzuvScIVDNcolII/sly/uEFaXQrFPxrE5FRO32Y/4d03W1U9KqVUbCOKXc6Jk
         WdK68IU2+XqOHNJStkmngYakJM2hsDsWDoytTfuRcaYCcjLFpF0EdJgUaLOKLk3KCGaT
         Rxjox98G62jEoYjKg56EhQrt/iO3mmqnJky3QKB0AC9tzYkz8ImrfwlUyA3vADy+gFJ2
         MiS4qMsDRNdYYZPXdJTMhNEMHrdIaxoIG0+tXjDttYE26qhbtOvtdoFfVusTtmsPZPxG
         DLEsPvERm556fJoUoijGnQdI7rP2gFTb3CJ8XHRi/RYZXosaXFL5CxBzGPiJgyBxs2uO
         C8RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ivBrvVrf;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id t15si720065pjq.1.2020.10.09.17.24.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 17:24:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-432-YiHbx-rAMIOxEzbSlAfS_Q-1; Fri, 09 Oct 2020 20:24:41 -0400
X-MC-Unique: YiHbx-rAMIOxEzbSlAfS_Q-1
Received: by mail-qv1-f71.google.com with SMTP id h12so7027453qvk.22
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 17:24:41 -0700 (PDT)
X-Received: by 2002:a05:620a:809:: with SMTP id s9mr534407qks.57.1602289480546;
        Fri, 09 Oct 2020 17:24:40 -0700 (PDT)
X-Received: by 2002:a05:620a:809:: with SMTP id s9mr534381qks.57.1602289480187;
        Fri, 09 Oct 2020 17:24:40 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id i205sm7478724qke.70.2020.10.09.17.24.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 17:24:39 -0700 (PDT)
Subject: Re: [PATCH] rcutorture: remove unneeded check
To: paulmck@kernel.org
Cc: dave@stgolabs.net, josh@joshtriplett.org, rostedt@goodmis.org,
 mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com,
 joel@joelfernandes.org, natechancellor@gmail.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, rcu@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20201009194736.2364-1-trix@redhat.com>
 <20201009201825.GL29330@paulmck-ThinkPad-P72>
 <03e3eeed-6072-ccb8-a9c6-c79a99c701b8@redhat.com>
 <20201009235033.GM29330@paulmck-ThinkPad-P72>
From: Tom Rix <trix@redhat.com>
Message-ID: <92f82632-adbd-ca85-d516-6540a49f01ab@redhat.com>
Date: Fri, 9 Oct 2020 17:24:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201009235033.GM29330@paulmck-ThinkPad-P72>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ivBrvVrf;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 10/9/20 4:50 PM, Paul E. McKenney wrote:
> On Fri, Oct 09, 2020 at 02:18:41PM -0700, Tom Rix wrote:
>> On 10/9/20 1:18 PM, Paul E. McKenney wrote:
>>> On Fri, Oct 09, 2020 at 12:47:36PM -0700, trix@redhat.com wrote:
>>>> From: Tom Rix <trix@redhat.com>
>>>>
>>>> clang static analysis reports this problem:
>>>>
>>>> rcutorture.c:1999:2: warning: Called function pointer
>>>>   is null (null dereference)
>>>>         cur_ops->sync(); /* Later readers see above write. */
>>>>         ^~~~~~~~~~~~~~~
>>>>
>>>> This is a false positive triggered by an earlier, later ignored
>>>> NULL check of sync() op.  By inspection of the rcu_torture_ops,
>>>> the sync() op is never uninitialized.  So this earlier check is
>>>> not needed.
>>> You lost me on this one.  This check is at the very beginning of
>>> rcu_torture_fwd_prog_nr().  Or are you saying that clang is seeing an
>>> earlier check in one of rcu_torture_fwd_prog_nr()'s callers?  If so,
>>> where exactly is this check?
>>>
>>> In any case, the check is needed because all three functions are invoke=
d
>>> if there is a self-propagating RCU callback that ensures that there is
>>> always an RCU grace period outstanding.
>>>
>>> Ah.  Is clang doing local analysis and assuming that because there was
>>> a NULL check earlier, then the pointer might be NULL later?  That does
>>> not seem to me to be a sound check.
>>>
>>> So please let me know exactly what is causing clang to emit this
>>> diagnostic.  It might or might not be worth fixing this, but either way
>>> I need to understand the situation so as to be able to understand the
>>> set of feasible fixes.
>>>
>>> 						Thanx, Paul
>> In rcu_prog_nr() there is check for for sync.
>>
>> if ( ... cur_op->sync ...
>>
>> =C2=A0=C2=A0 do something
>>
>> This flags in clang's static analyzer as 'could be null'
>>
>> later in the function, in a reachable block it is used
>>
>> cur_ops->sync()
>>
>> I agree this is not a good check that's why i said is was a false positi=
ve.
>>
>> However when looking closer at how cur_ops is set, it is never uninitial=
ized.
>>
>> So the check is not needed.
> OK, got it, and thank you for the explanation.
>
>> This is not a fix, the code works fine.=C2=A0 It is a small optimization=
.
> Well, there really is a bug.  Yes, right now all ->sync pointers are
> non-NULL, but they have not been in the past and might not be in the
> future.  So if ->sync is NULL, rcu_torture_fwd_prog_nr() either should
> not be called or it should return immediately without doing anything.
>
> My current thought is something like the (untested) patch below, of
> course with your Reported-by.
>
> Thoughts?

Yes that would be fine.

In in review these other cases need to be been take care of.

Thanks,

Reported-by: Tom Rix <trix@redhat.com>

> 							Thanx, Paul
>
> ------------------------------------------------------------------------
>
> diff --git a/kernel/rcu/rcutorture.c b/kernel/rcu/rcutorture.c
> index beba9e7..44749be 100644
> --- a/kernel/rcu/rcutorture.c
> +++ b/kernel/rcu/rcutorture.c
> @@ -1989,7 +1989,9 @@ static void rcu_torture_fwd_prog_nr(struct rcu_fwd =
*rfp,
>  	unsigned long stopat;
>  	static DEFINE_TORTURE_RANDOM(trs);
> =20
> -	if  (cur_ops->call && cur_ops->sync && cur_ops->cb_barrier) {
> +	if (!cur_ops->sync)=20
> +		return; // Cannot do need_resched() forward progress testing without -=
>sync.
> +	if (cur_ops->call && cur_ops->cb_barrier) {
>  		init_rcu_head_on_stack(&fcs.rh);
>  		selfpropcb =3D true;
>  	}
> @@ -2215,8 +2217,8 @@ static int __init rcu_torture_fwd_prog_init(void)
> =20
>  	if (!fwd_progress)
>  		return 0; /* Not requested, so don't do it. */
> -	if (!cur_ops->stall_dur || cur_ops->stall_dur() <=3D 0 ||
> -	    cur_ops =3D=3D &rcu_busted_ops) {
> +	if ((!cur_ops->sync && !cur_ops->call) ||
> +	    !cur_ops->stall_dur || cur_ops->stall_dur() <=3D 0 || cur_ops =3D=
=3D &rcu_busted_ops) {
>  		VERBOSE_TOROUT_STRING("rcu_torture_fwd_prog_init: Disabled, unsupporte=
d by RCU flavor under test");
>  		return 0;
>  	}
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/92f82632-adbd-ca85-d516-6540a49f01ab%40redhat.com.
