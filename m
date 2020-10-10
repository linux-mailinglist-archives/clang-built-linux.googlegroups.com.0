Return-Path: <clang-built-linux+bncBC27X66SWQMBB3PQQ76AKGQESCRSLLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DC228A121
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 20:07:43 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id d9sf1408094vsl.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 11:07:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602353262; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZwRf/cJ9KHT6QL+4U+LSdTSCbCYdqUJoxr+9dX+0cBViH6Vz+PqbVFwoHK+LEMNddk
         DEWGxjImp6h0bJYNW84ae1Itnm9HV5LkwpmGNjcw/FAtBsBKIpUjeCMX2oiIX/T5Uoes
         gf6MXsd7Ry0gNxXTfkI4EUvqYL7KeEXRqOZPLS1xnk7sk/Oz13tIJ/bSpq7GYy9K8bed
         IYPaGXQIa0+FV/zhstxc8onWB4tpKECqFwE/RSY/QJjjiJApEqbHTp7O+61FZpfsKCEO
         OWudxZmA+ZuEuDwego7RYjNYWCG/jEpKlkropeLZd+qBSxTqQvA0Zj7NWgdjKJXyLXft
         f1Bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=dhkf3Ftnb5bhUg9Poetxt6tJRJ223BVG+I4iqS5HcZU=;
        b=SwwYbBe8bQeJc9SwsaK6HmJ7E/Mnd5+qKCthdCJOATY3s1Jx6ND9aNsIY/bPRsaQt7
         Wxp3QseP4v+Ndv9yoV/6Iw1bhV9ryrRbh6uZ/cwdMFTIQ9/wOkIWEb3q2njezZs1qc+m
         pzI4eIhyVIENXRbkI5KkoqvfVrRpHLbZ6MILkaj7EblP4fzRglJADKEKtOc3tnL9QgcD
         6ultpiASPd6OFLP0XNaFaJlI0xd7KAwmR1+g2JmzWQ44IByPTYxJuslXorfsZFrAGoLT
         HZf3n85UElqIw4zGx2+yfoSe1lavl3yS+yudXQtulm5I4HWDdh0b6AK2JPfyxnyrjY85
         TALg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TI4KJt7s;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dhkf3Ftnb5bhUg9Poetxt6tJRJ223BVG+I4iqS5HcZU=;
        b=lfwT243TlIEQ96VNgcaGYIDW1ByZaSCulxzdzQW23ZnV1jAxpwvI71cB3nCLBumCYM
         AoLE0toKHk95BJUuuCK2OdAo60B3mjbUWzPAYKyI7E/l95VHXBniZs0WTkNTQqnwUoi4
         ytDZ1RnYB5EdhIqdM9Mpei7Gd0YyKoSqYoGIhRzk9fPiRo29qfH9AR4ge58itfaxkANE
         yWCcAo2qfPdSqyxVx8GOeVpZLYzR0ywreIQ7JVJk98EQ/xH5Kb88mLFftRNf9oLI5yxk
         svciPx+79FoS/v9FQWQyepDmLq22f88apLE3FvrtIusmrnJ1qPtk7KoHUFL/R7fRvNX3
         ePDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dhkf3Ftnb5bhUg9Poetxt6tJRJ223BVG+I4iqS5HcZU=;
        b=IUexlBYqd9w1E3ox+8zZ3hKq28wi9K5XQl1BtFTLP0D+l7jqbLV3Gifg9jGHvGwYml
         qGI9MTvIfxwCmyxuqupyDvoe9z1nin5LsG2g2VsRqrhuA0cCRAVtD3Ax5ct2k2Uxi1tv
         Sp1SJ8MrnSejifH1QLVeWouPfd/8qkgzHqoCVxoWPgKWMia7outqfCP/1Cf18LXGXmKR
         x3Va+Ilg7cUqKd3jsI8MedM2XtQAh1DaVaKwlu6DWBkczXAUPAIMJnCTxAlQ5VudIM7M
         7FOuUTlkWZ7Pcm70iVJSfGXc2ZdEXbdBukGC9YX1Ot8qFrCI2X4uMibdGqNbxG8TZBH+
         ZOQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530X73+DZdApVXxgmr8wqYm3RiGAvtzP7sIhTm+efdN8uimtm7p4
	XdoZP+LdG8fpzxG+YTAacS0=
X-Google-Smtp-Source: ABdhPJxWFTgmWGN90ybe2+vKlTp8e29bUxdfTLSY01POsRboTxZEJy7YPA6j0UpcLF35FZdY3PB3gA==
X-Received: by 2002:a67:790f:: with SMTP id u15mr6905669vsc.38.1602353261868;
        Sat, 10 Oct 2020 11:07:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:6144:: with SMTP id v65ls629397vkb.5.gmail; Sat, 10 Oct
 2020 11:07:41 -0700 (PDT)
X-Received: by 2002:a1f:ed86:: with SMTP id l128mr10523272vkh.16.1602353261367;
        Sat, 10 Oct 2020 11:07:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602353261; cv=none;
        d=google.com; s=arc-20160816;
        b=ij/B18OLQzupHbJomKZi/ZBFD+tzoCz44IRRulCsJNBsYwkcQgjNUmSrwQllElA5Gn
         RFB8gkqncXPkLNwEy19O7rUuDzJnrkAIIM+1Mn3m02CaY5JjqzLUFhH7ouBZKr51mQrz
         K10S/dJTpizmKlpYQt7LTlDDqbEVeHUo8Va91ccjuxFBQaSMngqiLACTF84Zz8usmsbx
         qZfqZOIYeLf7K9eVDOgmqpvxrT6+aWPS/WqkWQvUCVzIjzzD6uDg+1peSYyjR/Qg9On8
         bwOC6u8tpp7U2jGMa9JaoOP8zQCYWGcQ1e9V0kRyp1jHggqMUFbfgD2AdHrPwO+5JFDZ
         lobA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=o1U6g5wkRy2MmIMDmN+8cP3usquGYm44wAD9C0CHP9c=;
        b=AkNX7cTbLZ94mado7snHy4wENwC0zOP1ZD+2vZKSHqkIwHinECfJwhncG9ZiEi8qiV
         ZbRyjKBFNXuDSizqQxPo+GSiKdJNqggZ+/jC0Eiq95xhM+WW/PfbYojwhf7exNaLaMMb
         L9d5+XZzzeD06b9kqFjqxYipCX3yCNCkRttBcGnw8D7+Av4g92fBnlZ/UBzzathT6q+9
         hHVZSQCvxc9flQh/2hi/K0NMaF1f+ByC7D4Nim/QL577/ehHcsQxeNlc5S4tiR7aS42I
         ZnkbGwMcGvSuaD+UXgLXD0gMoBfFrZE3wl0AZKmTMt5ugj7P899RWH8JWNZ3agW+FFD9
         HzQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TI4KJt7s;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r131si555030vkd.0.2020.10.10.11.07.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2020 11:07:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-145-MOqITfY_M4ClCtaQqoGtKw-1; Sat, 10 Oct 2020 14:07:39 -0400
X-MC-Unique: MOqITfY_M4ClCtaQqoGtKw-1
Received: by mail-oi1-f197.google.com with SMTP id w192so5723589oie.20
        for <clang-built-linux@googlegroups.com>; Sat, 10 Oct 2020 11:07:39 -0700 (PDT)
X-Received: by 2002:aca:dcd5:: with SMTP id t204mr6437496oig.47.1602353258074;
        Sat, 10 Oct 2020 11:07:38 -0700 (PDT)
X-Received: by 2002:aca:dcd5:: with SMTP id t204mr6437477oig.47.1602353257697;
        Sat, 10 Oct 2020 11:07:37 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id 22sm5286695oie.54.2020.10.10.11.07.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Oct 2020 11:07:37 -0700 (PDT)
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
 <20201010175751.GA5714@paulmck-ThinkPad-P72>
From: Tom Rix <trix@redhat.com>
Message-ID: <c56a94ca-68d0-2e14-7374-a51c4e85b3cc@redhat.com>
Date: Sat, 10 Oct 2020 11:07:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201010175751.GA5714@paulmck-ThinkPad-P72>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TI4KJt7s;
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


On 10/10/20 10:57 AM, Paul E. McKenney wrote:
> On Fri, Oct 09, 2020 at 07:57:43PM -0700, Paul E. McKenney wrote:
>> On Fri, Oct 09, 2020 at 05:24:37PM -0700, Tom Rix wrote:
>>> On 10/9/20 4:50 PM, Paul E. McKenney wrote:
>>>> On Fri, Oct 09, 2020 at 02:18:41PM -0700, Tom Rix wrote:
>>>>> On 10/9/20 1:18 PM, Paul E. McKenney wrote:
>>>>>> On Fri, Oct 09, 2020 at 12:47:36PM -0700, trix@redhat.com wrote:
>>>>>>> From: Tom Rix <trix@redhat.com>
>>>>>>>
>>>>>>> clang static analysis reports this problem:
>>>>>>>
>>>>>>> rcutorture.c:1999:2: warning: Called function pointer
>>>>>>>   is null (null dereference)
>>>>>>>         cur_ops->sync(); /* Later readers see above write. */
>>>>>>>         ^~~~~~~~~~~~~~~
>>>>>>>
>>>>>>> This is a false positive triggered by an earlier, later ignored
>>>>>>> NULL check of sync() op.  By inspection of the rcu_torture_ops,
>>>>>>> the sync() op is never uninitialized.  So this earlier check is
>>>>>>> not needed.
>>>>>> You lost me on this one.  This check is at the very beginning of
>>>>>> rcu_torture_fwd_prog_nr().  Or are you saying that clang is seeing a=
n
>>>>>> earlier check in one of rcu_torture_fwd_prog_nr()'s callers?  If so,
>>>>>> where exactly is this check?
>>>>>>
>>>>>> In any case, the check is needed because all three functions are inv=
oked
>>>>>> if there is a self-propagating RCU callback that ensures that there =
is
>>>>>> always an RCU grace period outstanding.
>>>>>>
>>>>>> Ah.  Is clang doing local analysis and assuming that because there w=
as
>>>>>> a NULL check earlier, then the pointer might be NULL later?  That do=
es
>>>>>> not seem to me to be a sound check.
> In this case, the diagnostic was clearly pointing out a latent bug, so
> my bad.  So more of a code-review comment than a diagnostic.  Therefore,
> if clang really wants to be in the code-review space, I suggest that it
> more clearly explain its code-review feedback.  ;-)

Ok.

I have another a change in other area queued up.

I'll improve it's and future comments.

Tom

> 							Thanx, Paul
>
>>>>>> So please let me know exactly what is causing clang to emit this
>>>>>> diagnostic.  It might or might not be worth fixing this, but either =
way
>>>>>> I need to understand the situation so as to be able to understand th=
e
>>>>>> set of feasible fixes.
>>>>>>
>>>>>> 						Thanx, Paul
>>>>> In rcu_prog_nr() there is check for for sync.
>>>>>
>>>>> if ( ... cur_op->sync ...
>>>>>
>>>>> =C2=A0=C2=A0 do something
>>>>>
>>>>> This flags in clang's static analyzer as 'could be null'
>>>>>
>>>>> later in the function, in a reachable block it is used
>>>>>
>>>>> cur_ops->sync()
>>>>>
>>>>> I agree this is not a good check that's why i said is was a false pos=
itive.
>>>>>
>>>>> However when looking closer at how cur_ops is set, it is never uninit=
ialized.
>>>>>
>>>>> So the check is not needed.
>>>> OK, got it, and thank you for the explanation.
>>>>
>>>>> This is not a fix, the code works fine.=C2=A0 It is a small optimizat=
ion.
>>>> Well, there really is a bug.  Yes, right now all ->sync pointers are
>>>> non-NULL, but they have not been in the past and might not be in the
>>>> future.  So if ->sync is NULL, rcu_torture_fwd_prog_nr() either should
>>>> not be called or it should return immediately without doing anything.
>>>>
>>>> My current thought is something like the (untested) patch below, of
>>>> course with your Reported-by.
>>>>
>>>> Thoughts?
>>> Yes that would be fine.
>>>
>>> In in review these other cases need to be been take care of.
>> I am having a difficult time interpreting this sentence, but will
>> optimistically assume that it means that you are good with this approach=
.
>> If my optimism is unwarranted, please let me know so I can fix whatever
>> might be broken.
>>
>>> Reported-by: Tom Rix <trix@redhat.com>
>> How does the commit below look?
>>
>> 							Thanx, Paul
>>
>> ------------------------------------------------------------------------
>>
>> commit 75c79a5dd72c1bb59f6bd6c5ec36f3a6516795cd
>> Author: Paul E. McKenney <paulmck@kernel.org>
>> Date:   Fri Oct 9 19:51:55 2020 -0700
>>
>>     rcutorture: Don't do need_resched() testing if ->sync is NULL
>>    =20
>>     If cur_ops->sync is NULL, rcu_torture_fwd_prog_nr() will nevertheles=
s
>>     attempt to call through it.  This commit therefore flags cases where
>>     neither need_resched() nor call_rcu() forward-progress testing
>>     can be performed due to NULL function pointers, and also causes
>>     rcu_torture_fwd_prog_nr() to take an early exit if cur_ops->sync()
>>     is NULL.
>>    =20
>>     Reported-by: Tom Rix <trix@redhat.com>
>>     Signed-off-by: Paul E. McKenney <paulmck@kernel.org>
>>
>> diff --git a/kernel/rcu/rcutorture.c b/kernel/rcu/rcutorture.c
>> index beba9e7..44749be 100644
>> --- a/kernel/rcu/rcutorture.c
>> +++ b/kernel/rcu/rcutorture.c
>> @@ -1989,7 +1989,9 @@ static void rcu_torture_fwd_prog_nr(struct rcu_fwd=
 *rfp,
>>  	unsigned long stopat;
>>  	static DEFINE_TORTURE_RANDOM(trs);
>> =20
>> -	if  (cur_ops->call && cur_ops->sync && cur_ops->cb_barrier) {
>> +	if (!cur_ops->sync)=20
>> +		return; // Cannot do need_resched() forward progress testing without =
->sync.
>> +	if (cur_ops->call && cur_ops->cb_barrier) {
>>  		init_rcu_head_on_stack(&fcs.rh);
>>  		selfpropcb =3D true;
>>  	}
>> @@ -2215,8 +2217,8 @@ static int __init rcu_torture_fwd_prog_init(void)
>> =20
>>  	if (!fwd_progress)
>>  		return 0; /* Not requested, so don't do it. */
>> -	if (!cur_ops->stall_dur || cur_ops->stall_dur() <=3D 0 ||
>> -	    cur_ops =3D=3D &rcu_busted_ops) {
>> +	if ((!cur_ops->sync && !cur_ops->call) ||
>> +	    !cur_ops->stall_dur || cur_ops->stall_dur() <=3D 0 || cur_ops =3D=
=3D &rcu_busted_ops) {
>>  		VERBOSE_TOROUT_STRING("rcu_torture_fwd_prog_init: Disabled, unsupport=
ed by RCU flavor under test");
>>  		return 0;
>>  	}

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/c56a94ca-68d0-2e14-7374-a51c4e85b3cc%40redhat.com.
