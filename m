Return-Path: <clang-built-linux+bncBC27X66SWQMBBOFHQP6AKGQEGR433AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DA8289A82
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 23:18:50 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id a37sf7583154pgb.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 14:18:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602278329; cv=pass;
        d=google.com; s=arc-20160816;
        b=p0vhvQZFgdPyIz7JFvvGWt3EfciK7APX4p/Dd2XFPVGvFPT1t5abvHeZlvgEEyKi5S
         xB6in+fIxMSzybI+1xnt0tY/RTsLUNVi2lY5jrxttb8F/HB/Uq+DqndWXDn1sZrii89R
         5OfyflUdzFTRLAhP4cyil5dc4x3mo/kiuGfbWlcbupWoD7Y0WF05A7u/KbiAWVKb26lJ
         b3ddRyqXPPqCvPiWy5yszg2+I7NV6eMI9pCv6qaJLYRWCQvRklO6ZYTWW7L4S07wsFH4
         DHGZYNACxdnI0v7oA4l2+eqclKZDlGnunAmg7+NQzgxqZEvjgvXM92MWaKDzrTVu0TwT
         fwSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=xjephSYpbM1i1Fu6KIPPXoQFZ4I1PnvWs5GBdnr2iOY=;
        b=1ITn+YnUV936s3eGfRkPrLzNM5mvr/VKWx05V4xONR34vGBmi+5moU0tlhXN5vNhtp
         jD9iiYXxZcFwqySQ1NzWGr4ZdJHvCGJfNqsGP1e66JP8zYDfYUv01SLsburiDlUO95CA
         clgWkaznjcidLxgz7s1XyiLau/6Nz3yQYNOHuz+FrGyTUSakML36vGGtm7MBhBhAS/Ae
         zxubL26WUs2qysDZ+Ks8S4tT0bvtRnNAwNN4VPq72hV9kxblXgUA9eDcsmFxR2SiBY7+
         RCEj33YqBml3wv+kcWN7J5R/KQQeyg+45FloQV0bsc9hmQIGInzv7Dl4Y+9HKQm6oqAP
         qLcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=X7ZUv9UR;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xjephSYpbM1i1Fu6KIPPXoQFZ4I1PnvWs5GBdnr2iOY=;
        b=KmtXp0f86M5ug5wz/WkgIUwk7nffx+qeP8CEosfv/Zd+Efk6YybKW16NcnPZoGY8yt
         ASlVYtRQLeOVXOyp2bF37oXMDE0IvYUk6D5E72VJY9bCfsrJohfNy34dcrTWnc73dSp8
         KvJCDS3yxl14Nr+Z4of9gpqxt672KM5ecwDGblYmryJU1NUnLt9k4GB7GrsWOqS6TyOp
         eGUX6AypjNAiBGXzfeQHtwXBuB+VzTg+4kLAlhe94u5cylnUBAAXkt89cz/+fpXkKcOy
         kTHGJbozqyDRXDMNZxSVuZGTp8tGsNBAatqlL1o1E8k4hmrHGBps9XTat9ia4HUyaNmg
         Hknw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xjephSYpbM1i1Fu6KIPPXoQFZ4I1PnvWs5GBdnr2iOY=;
        b=EZ902R3JTGL7tEn5RJbB4d2SaxYEd8RBucR20TqlDYy25YrcQL+KFeAKBExHqrSZ5Y
         5NPEXUJVlQVtyZfXblIItVrBb+VFVr8Pfwa26kJpcpjDVtIhIlRbqKDouLM1ACY75XWd
         MWpQxdjiqbLxJmQRK7pIasaZDEP7YexTV7qVZFWwYh7MY0Ys8gtFj5Ef4H/6JLMriIlQ
         4gbZ6Qof4Wcnudv2ARIEUXklD2GXJWfDtX/Kh0y89hBihGk84qNoARcZbicvAb4HlPTv
         PLsXnMwJ199PjLao4XRZxsTfgS2Q8EHg1TeIL+3E9sV0OLR+aWxVPbDgZyGblc93MWfz
         fL0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532H7DuPpNXiYdmEQnd/XSwCpcU78k73woREg7nrLNfZ+w2PcBbY
	dxgjtVcIsvzLR7P6t2XjM9Y=
X-Google-Smtp-Source: ABdhPJwYFjIdVvAcJeFq73VvtWtTzMZmndGD9cvFUtOzaauqbuEXZtK9EZ9Kp9tJ+DxaHnxQchHhug==
X-Received: by 2002:a17:90a:1181:: with SMTP id e1mr6856324pja.77.1602278328832;
        Fri, 09 Oct 2020 14:18:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:990c:: with SMTP id b12ls461669pjp.1.canary-gmail;
 Fri, 09 Oct 2020 14:18:48 -0700 (PDT)
X-Received: by 2002:a17:902:528:b029:d2:ad1a:f47c with SMTP id 37-20020a1709020528b02900d2ad1af47cmr14154183plf.25.1602278328279;
        Fri, 09 Oct 2020 14:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602278328; cv=none;
        d=google.com; s=arc-20160816;
        b=jTk25/+MPf+7/fcu205g23Wd0wlWOxSrTHphG6ncL2Rrup0tmJtkeWa2ymuvaVRQxu
         5BbzJSIkFiENJEKZlbG1hyXQedlKSfxf0IijAyRN1+B0K5lHjZ7wo+1JTzZUoIsZF6+i
         EjFTgkPmldrCeYE0JsH3NS0j72pqRgj8gdOZiRNP4DJja6Kyf/W8NHvoXZOVOX7nSw68
         qzSkPQolFlSbfNHmTLrO3KYpnEYAXvo8t6nSvwlIoGzDmNT9GkobKydXrql1VNWMVhkv
         VDOlmIiF6ijVkwOqrx3VuAu+cigbmCCGR/ftpdDe5wO+o9fmbpEc3Ng8/E2B44Q90HHt
         fWgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3QDABfjQ7mFtWSIvWu7QzsPLKaUIpGA23N/8EAqsvcQ=;
        b=vVjg5f1OTwOL8ENCgQDj2tBdJ08ElsTeH9wzak+bz5xg8rKGUlPoxGVbfXh8fiaeTc
         /d1gRIzcaBzGAxzgXIUWiQE0WA6Q6YyAOy/mtR6a/RSNBclJNPEydWQ4nWgHiCD6eXaP
         t73Y8wkGOv67rCso0v0mJuQLBnHbYdYrGJxLJB2X54Uw9DHOC2Ej5rJNYB7fc1c4CO70
         PYzS34fod77HH6J1P+iIvCKntNdpywAc6YDCqhznKkg3aioJyZ2OjeYARmVOhrVSGkd1
         d6+loLGsf0wSNtUiAwIu9Wn7TeCs5Eh4lyqquJXSIfbd+z6kw9o1ZhAWRWdYQ5onWvRB
         NcVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=X7ZUv9UR;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id n8si768697pfd.4.2020.10.09.14.18.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 14:18:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-USjMHDN8NLiMh6Au0JWIwQ-1; Fri, 09 Oct 2020 17:18:46 -0400
X-MC-Unique: USjMHDN8NLiMh6Au0JWIwQ-1
Received: by mail-ot1-f71.google.com with SMTP id y12so3418939oto.22
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 14:18:45 -0700 (PDT)
X-Received: by 2002:a4a:db6f:: with SMTP id o15mr10587126ood.36.1602278325009;
        Fri, 09 Oct 2020 14:18:45 -0700 (PDT)
X-Received: by 2002:a4a:db6f:: with SMTP id o15mr10587111ood.36.1602278324691;
        Fri, 09 Oct 2020 14:18:44 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id s66sm6809547oib.16.2020.10.09.14.18.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 14:18:44 -0700 (PDT)
Subject: Re: [PATCH] rcutorture: remove unneeded check
To: paulmck@kernel.org
Cc: dave@stgolabs.net, josh@joshtriplett.org, rostedt@goodmis.org,
 mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com,
 joel@joelfernandes.org, natechancellor@gmail.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, rcu@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20201009194736.2364-1-trix@redhat.com>
 <20201009201825.GL29330@paulmck-ThinkPad-P72>
From: Tom Rix <trix@redhat.com>
Message-ID: <03e3eeed-6072-ccb8-a9c6-c79a99c701b8@redhat.com>
Date: Fri, 9 Oct 2020 14:18:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201009201825.GL29330@paulmck-ThinkPad-P72>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=X7ZUv9UR;
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


On 10/9/20 1:18 PM, Paul E. McKenney wrote:
> On Fri, Oct 09, 2020 at 12:47:36PM -0700, trix@redhat.com wrote:
>> From: Tom Rix <trix@redhat.com>
>>
>> clang static analysis reports this problem:
>>
>> rcutorture.c:1999:2: warning: Called function pointer
>>   is null (null dereference)
>>         cur_ops->sync(); /* Later readers see above write. */
>>         ^~~~~~~~~~~~~~~
>>
>> This is a false positive triggered by an earlier, later ignored
>> NULL check of sync() op.  By inspection of the rcu_torture_ops,
>> the sync() op is never uninitialized.  So this earlier check is
>> not needed.
> You lost me on this one.  This check is at the very beginning of
> rcu_torture_fwd_prog_nr().  Or are you saying that clang is seeing an
> earlier check in one of rcu_torture_fwd_prog_nr()'s callers?  If so,
> where exactly is this check?
>
> In any case, the check is needed because all three functions are invoked
> if there is a self-propagating RCU callback that ensures that there is
> always an RCU grace period outstanding.
>
> Ah.  Is clang doing local analysis and assuming that because there was
> a NULL check earlier, then the pointer might be NULL later?  That does
> not seem to me to be a sound check.
>
> So please let me know exactly what is causing clang to emit this
> diagnostic.  It might or might not be worth fixing this, but either way
> I need to understand the situation so as to be able to understand the
> set of feasible fixes.
>
> 						Thanx, Paul

In rcu_prog_nr() there is check for for sync.

if ( ... cur_op->sync ...

=C2=A0=C2=A0 do something

This flags in clang's static analyzer as 'could be null'

later in the function, in a reachable block it is used

cur_ops->sync()

I agree this is not a good check that's why i said is was a false positive.

However when looking closer at how cur_ops is set, it is never uninitialize=
d.

So the check is not needed.

This is not a fix, the code works fine.=C2=A0 It is a small optimization.

Tom

>
>> Signed-off-by: Tom Rix <trix@redhat.com>
>> ---
>>  kernel/rcu/rcutorture.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/kernel/rcu/rcutorture.c b/kernel/rcu/rcutorture.c
>> index beba9e7963c8..6efc03a1d623 100644
>> --- a/kernel/rcu/rcutorture.c
>> +++ b/kernel/rcu/rcutorture.c
>> @@ -1989,7 +1989,7 @@ static void rcu_torture_fwd_prog_nr(struct rcu_fwd=
 *rfp,
>>  	unsigned long stopat;
>>  	static DEFINE_TORTURE_RANDOM(trs);
>> =20
>> -	if  (cur_ops->call && cur_ops->sync && cur_ops->cb_barrier) {
>> +	if  (cur_ops->call && cur_ops->cb_barrier) {
>>  		init_rcu_head_on_stack(&fcs.rh);
>>  		selfpropcb =3D true;
>>  	}
>> --=20
>> 2.18.1
>>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/03e3eeed-6072-ccb8-a9c6-c79a99c701b8%40redhat.com.
