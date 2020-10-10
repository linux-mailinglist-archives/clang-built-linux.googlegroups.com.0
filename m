Return-Path: <clang-built-linux+bncBC27X66SWQMBBYXZQT6AKGQELD2CJEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDDF289E60
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 06:47:32 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id y70sf7805939iof.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 21:47:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602305251; cv=pass;
        d=google.com; s=arc-20160816;
        b=WPMyizuEWFfM7nZmP7zE3EcJ94SHk0Kc3DmKZ05aURWCrH2pEca+xLm9E/lpy/jwSg
         gdvpIICkPUblbp2xxCou7Bi/Xxzz71Gu+X7ol74uv9lqTNRQZpIXbYJOenVFbO3+TNvv
         HesBl/WhdswNa+HbVwo98ZfKqjtmuT9fYmIGOE/9Yv9wjT2jJzjRfIkLqpI3sPt36UqK
         MTpqrfjpkEgK1rTK16btc/eWn/xivl8rOPTcbYIdugFz9fukek6a9vLsiM4H6D4igz+b
         wRmJYM+wEDzHVangut7lWlPxI5Vz2xIHlccjcO0IWkkD179ByQXWEbzKLCyuFuYW+4Ff
         Ahjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=aq2L4+ZgwW+0vKOoTI/FNVj+vHJowCP2f3EPfnUMINY=;
        b=Z38VK+ouzqtUnzl0rs6Wm3Vi3kDNSXh5MqSR/C+xBV+ga9D5BAPgHrDy2pREm4ZfxN
         FvfaETdxub2tmP1bASv/Zkr1z2gdoupB+EKLX93OVAtigSP66ogu85LAsPBRzfynEEO7
         v3uRkiGI7YUZ8/4rVTJ+J8yXMzwEJGnPBoNN755abIfLQQljqNMhxJrBYSvMaXHY5liD
         Eg//bTZkXTR8fCaOnj7qY+0hCMwrpZ+avEfxPAhbmIo6Rz0e7ai3hpKF1G81MEctVnR7
         hDIswhGXewPjVfAYP8FitrBfX4dEAY9twdzaxbk7Z/5UgCIZAVmCSDIVxTsMrGBhy+Ds
         g4Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=U+ES4iJF;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aq2L4+ZgwW+0vKOoTI/FNVj+vHJowCP2f3EPfnUMINY=;
        b=qrNfuaOPLzehoKwXAgmB2WTx9zefD+uPzrRDRbEEVtXy9A6ikl0uyEDj7LlE/jINgu
         8iBXvX7klycIO3SESzEprQPS9wu7XAGZBOX1jwyFjAmyxVoeWcwRSGcDYmDP/6Mduekl
         EkrioipZXTwvZzgPBE8CzbWiVBZdAAINeoQRNyKtGMmdUEU4HR8XplfAsQH8XjOZsiK8
         /q2dhJGF5K1hb36/aB/ERrw3u2x+ms/Ytg6FAPgS1R59aauFMdGALX8nXH2hhWmwYW2l
         8aHXGp10zlwnZiWggfeXBwfJz3wxIfb/0g4ucKDzRSzpeYiSlt5/nrBrWdKOQhFBmUua
         lTCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aq2L4+ZgwW+0vKOoTI/FNVj+vHJowCP2f3EPfnUMINY=;
        b=ZdT9aWnqgHnLJmhJJcGv/S7RQBp4m91VGKLV502WlHpNs6945PjO6Xn0YMhEx7YmFh
         i9ON0fAg++mVOk3olGQp1CvCFg8/nckra+jw/FvVYlnmEGVnkxfktpfjrBSOpI00J93v
         YMbGCnEND6ZL5zIiePz6Y7Ib6Hh3xCI9gVYeLtbsJi067hXkp2fGefYuBSQFZbE80s1F
         /Ag3IoYUWWs8PS5ZsZ6VKyvu7tdlL1AGwZoshMjhhi68f8zyBFJSUmvnUEGX2Z7vm5Mh
         3fxTY8RQ6zb4IEVVzXJuEHhlQfXqq5R4KYY0FF3HiWAdmpaQ4FTfmLLku/9FZqudET88
         dvXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IsSEFYRpMs39Z/JqIC3rQZkU15XlahBZdgtkus/xUAncPk7pN
	YhBG9ouTIN38amWyFvjWEr8=
X-Google-Smtp-Source: ABdhPJz3047J5veNh2xUT+qR3jVD7y+BNefa1rOY66rmMvx7v/zqCNDiJHkN+gZgSazgh6PGUfurHQ==
X-Received: by 2002:a02:712c:: with SMTP id n44mr13642066jac.37.1602305251099;
        Fri, 09 Oct 2020 21:47:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2a06:: with SMTP id r6ls2629098ile.0.gmail; Fri, 09 Oct
 2020 21:47:30 -0700 (PDT)
X-Received: by 2002:a92:ca92:: with SMTP id t18mr12903449ilo.287.1602305250711;
        Fri, 09 Oct 2020 21:47:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602305250; cv=none;
        d=google.com; s=arc-20160816;
        b=0x4Dm7m2KIUVeTCCM1lV6SZZglv++rJmJQ2pBn4O7H2/qan0PEJ/aqMDOUJPuRUDAf
         7oq6JaPC3CSTtSmZjGgQQafc4xZNBUGCRhUYus6V9Ln1yaVTwdgIampiYYyCz1a0yH8H
         CwiOOZkTHGG6UUzUuZ2093NIceK4iRZXUUojAnaAgXRAyBQHMsx7zg8RZi6gbedqDjjP
         H6ocN9lYbA+cVQp1mrtcKhRI7yRuAqi9opPP9fZRGOuWRxLvoeBMtJ5WyJR40FUj5gh1
         OJkGu2ffihsl0KEgl5zI6mzJQu5ArgVr9cq7Ru1IMwppWtnCPSRIidZRwUHQ0wdU3N7u
         R+ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=EB+fwVWurtnonhqMgKoeMy3U/DNYWiOCWYkVko6a6Ck=;
        b=c3JCQ6DrHfcdHbAK4tVtjBpWwp9xLBpWuyPKPyFvr2fPjLxiX8NLErQk4d2wfaMeV1
         2i5xST8vRZq5lIHzAWODImDTbGSGt7qiC+G/kPLJLGVpzgn77GCmf7DfEjvn3V2sf8wy
         TzqAfb2liPnml2IuMY6aGdGHCaY7TqP12zwuu681KHtzDF0K5PbIzffw2M5NOJdyZDzO
         S2Tv85f9ZYS5EOWYqo/c/+041iyhXBuPH17LzZyOqcm+HSdsX1GKvGWz4wCC9sx+v2bB
         4A7UxitRZP73J0+6wLV9F5cW2sy8Wqs5UVoymbfdkOxYLLX8c2Cp80IyaIruS6YI/vOb
         5kxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=U+ES4iJF;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b21si263532iow.3.2020.10.09.21.47.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 21:47:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-331-P7XokA08ONeiH13pdTHAgQ-1; Sat, 10 Oct 2020 00:47:27 -0400
X-MC-Unique: P7XokA08ONeiH13pdTHAgQ-1
Received: by mail-qt1-f200.google.com with SMTP id l12so8503472qtu.22
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 21:47:27 -0700 (PDT)
X-Received: by 2002:ac8:5491:: with SMTP id h17mr1205116qtq.47.1602305246931;
        Fri, 09 Oct 2020 21:47:26 -0700 (PDT)
X-Received: by 2002:ac8:5491:: with SMTP id h17mr1205105qtq.47.1602305246606;
        Fri, 09 Oct 2020 21:47:26 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id b23sm3236942qkh.68.2020.10.09.21.47.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 21:47:26 -0700 (PDT)
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
 <92f82632-adbd-ca85-d516-6540a49f01ab@redhat.com>
 <20201010025743.GN29330@paulmck-ThinkPad-P72>
From: Tom Rix <trix@redhat.com>
Message-ID: <945d3540-0d22-4e7f-d819-1b5c4e836354@redhat.com>
Date: Fri, 9 Oct 2020 21:47:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201010025743.GN29330@paulmck-ThinkPad-P72>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=U+ES4iJF;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 10/9/20 7:57 PM, Paul E. McKenney wrote:
> On Fri, Oct 09, 2020 at 05:24:37PM -0700, Tom Rix wrote:
>> On 10/9/20 4:50 PM, Paul E. McKenney wrote:
>>> On Fri, Oct 09, 2020 at 02:18:41PM -0700, Tom Rix wrote:
>>>> On 10/9/20 1:18 PM, Paul E. McKenney wrote:
>>>>> On Fri, Oct 09, 2020 at 12:47:36PM -0700, trix@redhat.com wrote:
>>>>>> From: Tom Rix <trix@redhat.com>
>>>>>>
>>>>>> clang static analysis reports this problem:
>>>>>>
>>>>>> rcutorture.c:1999:2: warning: Called function pointer
>>>>>>   is null (null dereference)
>>>>>>         cur_ops->sync(); /* Later readers see above write. */
>>>>>>         ^~~~~~~~~~~~~~~
>>>>>>
>>>>>> This is a false positive triggered by an earlier, later ignored
>>>>>> NULL check of sync() op.  By inspection of the rcu_torture_ops,
>>>>>> the sync() op is never uninitialized.  So this earlier check is
>>>>>> not needed.
>>>>> You lost me on this one.  This check is at the very beginning of
>>>>> rcu_torture_fwd_prog_nr().  Or are you saying that clang is seeing an
>>>>> earlier check in one of rcu_torture_fwd_prog_nr()'s callers?  If so,
>>>>> where exactly is this check?
>>>>>
>>>>> In any case, the check is needed because all three functions are invo=
ked
>>>>> if there is a self-propagating RCU callback that ensures that there i=
s
>>>>> always an RCU grace period outstanding.
>>>>>
>>>>> Ah.  Is clang doing local analysis and assuming that because there wa=
s
>>>>> a NULL check earlier, then the pointer might be NULL later?  That doe=
s
>>>>> not seem to me to be a sound check.
>>>>>
>>>>> So please let me know exactly what is causing clang to emit this
>>>>> diagnostic.  It might or might not be worth fixing this, but either w=
ay
>>>>> I need to understand the situation so as to be able to understand the
>>>>> set of feasible fixes.
>>>>>
>>>>> 						Thanx, Paul
>>>> In rcu_prog_nr() there is check for for sync.
>>>>
>>>> if ( ... cur_op->sync ...
>>>>
>>>> =C3=83=E2=80=9A=C3=82=C2=A0=C3=83=E2=80=9A=C3=82=C2=A0 do something
>>>>
>>>> This flags in clang's static analyzer as 'could be null'
>>>>
>>>> later in the function, in a reachable block it is used
>>>>
>>>> cur_ops->sync()
>>>>
>>>> I agree this is not a good check that's why i said is was a false posi=
tive.
>>>>
>>>> However when looking closer at how cur_ops is set, it is never uniniti=
alized.
>>>>
>>>> So the check is not needed.
>>> OK, got it, and thank you for the explanation.
>>>
>>>> This is not a fix, the code works fine.=C3=83=E2=80=9A=C3=82=C2=A0 It =
is a small optimization.
>>> Well, there really is a bug.  Yes, right now all ->sync pointers are
>>> non-NULL, but they have not been in the past and might not be in the
>>> future.  So if ->sync is NULL, rcu_torture_fwd_prog_nr() either should
>>> not be called or it should return immediately without doing anything.
>>>
>>> My current thought is something like the (untested) patch below, of
>>> course with your Reported-by.
>>>
>>> Thoughts?
>> Yes that would be fine.
>>
>> In in review these other cases need to be been take care of.
> I am having a difficult time interpreting this sentence, but will
> optimistically assume that it means that you are good with this approach.
> If my optimism is unwarranted, please let me know so I can fix whatever
> might be broken.
>
>> Reported-by: Tom Rix <trix@redhat.com>
> How does the commit below look?

Looks fine.

Thanks

Tom

>
> 							Thanx, Paul
>
> ------------------------------------------------------------------------
>
> commit 75c79a5dd72c1bb59f6bd6c5ec36f3a6516795cd
> Author: Paul E. McKenney <paulmck@kernel.org>
> Date:   Fri Oct 9 19:51:55 2020 -0700
>
>     rcutorture: Don't do need_resched() testing if ->sync is NULL
>    =20
>     If cur_ops->sync is NULL, rcu_torture_fwd_prog_nr() will nevertheless
>     attempt to call through it.  This commit therefore flags cases where
>     neither need_resched() nor call_rcu() forward-progress testing
>     can be performed due to NULL function pointers, and also causes
>     rcu_torture_fwd_prog_nr() to take an early exit if cur_ops->sync()
>     is NULL.
>    =20
>     Reported-by: Tom Rix <trix@redhat.com>
>     Signed-off-by: Paul E. McKenney <paulmck@kernel.org>
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
clang-built-linux/945d3540-0d22-4e7f-d819-1b5c4e836354%40redhat.com.
