Return-Path: <clang-built-linux+bncBCU73AEHRQBBB3HIZXYAKGQEWUMIZTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 90939131719
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 18:54:54 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id p16sf19416384plq.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 09:54:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578333293; cv=pass;
        d=google.com; s=arc-20160816;
        b=p252SQV1n1hRSRrNs0MOjDKYWkb+RoZ1RbTIKDDQBFI3NXxnZC0lLjiiDUSIubum+0
         Uz74503wIQjG7KuFeCIIiO4IEE1Dfd0cwwAcjTqEdtE/RPssfK+olOGRL5Pzyfd72Nwc
         59GhCjig5hpdMCrHAIxRUDfnns7AMdlAYIj3z6bojWvsxh5rTBWNjSaAHR8JlACXo6sN
         rAuUr4nkBnD1IoA1t63RIlGa9oubNoZkYN2awymLwyeZdw5PFpVt+QidXKNaZNQsoOqF
         bqXEa6he8fyV0gwv/Wpxtxk1s4kgvXjyTzxySCO+dzXlh1QeyOjQUBCNvUycYROtmtV9
         /b3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=3Yjf7z0zF69EqbIEiGeDLXKpg5lajezrEvLxMXK/14Q=;
        b=pU2WKb6u+HX1ImS18NrEtcNYJFecW9t8j9R5K+s+QcecDbV/YfY0wKII6AjHqtzFoD
         WJa3Ns5Nba/8+sfmIZFC1f44Zg6cDKP6lyUMDs36L/7jxH0y2NBv32uyr8gdU740eWqM
         qxNi8j2B/VgzqRm8qIeV78/cbdPsVQCJQXeu4BatR1a6RKUmorrPdxtIbtbu0nyF0lFA
         oiy7dpv8/F2JfZCBkjcu/HUYC8ctaej/04vI7ikYnfDAVEAo8XQNqCsruRTtnHoJsuqZ
         IH/FBVPCTkQzcPY3F5xN1+HEgJQlrei7VX0KYYQvVu3UkcnD4rDlHCjBMhTl3eSKzvnw
         RR9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=ipd8=23=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=IpD8=23=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Yjf7z0zF69EqbIEiGeDLXKpg5lajezrEvLxMXK/14Q=;
        b=s6oWeNX+8tOKVikyxrfc3LukOCb7oZYqDUUrpUfRezJ4SEItBZXILKd+YNbKhPqFbL
         y/hnq1YVI2B7k9oFnalWNOdoE3sMH0Cg9bzurbe9tgLaJUk3u2hBTGJ54MPqKbUA8SJ/
         dDWSSBhBWAVGHAtc3vUd6QFKlTydSxue0o46/jyhTZRJzDS9TIPLV0UbRr8JxpCFNIaI
         ZWAdsDqrmVWaiWPvh4QSgQduo7EvX6MkA5dKrRaGxG+2I9wmpBj1vddigAKHaTaHob9/
         WEpD45ARAtaQnUroNhx2Hz4am9uB6iv/p4GzAP9KZKWt37tfMDjBGGeXbkTaGCjEJcfZ
         KZ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3Yjf7z0zF69EqbIEiGeDLXKpg5lajezrEvLxMXK/14Q=;
        b=PN0gAxb5w+66c2S93hGOXOvM4O9uGLnEGkHYewrhIuSO20pYOynUzRgIgJyp+Hb70E
         wfI9aATCdyhS6WPpur2k9QrHePfFb1qwbrZLUjrgnAZv3XZSGTJKAFTHtSBCL1T2lFoE
         bvYbA/PmwKix4wrLfORpoeqtS2t0ZgE5uMAQlEmLgIfjSNF073pOIQAr02ZK0VcOyxml
         wczMVevBpCpXhpuie6dzRiQzasAkXQTcYpYQCffT0am9aN+5NzyhnfchnJNtL0T+WvFJ
         oIljPGqEn9zxD+pu+y03AJb8fb+ZL7jEycBirvtrlPDzQgVktU00+bMyZDHUD07X2AdY
         8AGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWvd+o/NRQLgyB2JIMscIdwUdNz35ue4AWIfzLceiWG8xkhTuWz
	0cIvVRhGICau8bOSGGK2lOk=
X-Google-Smtp-Source: APXvYqzH8OaPPEAZwfzlA+anmYmqlw0pK073TOTx3ZVuWM2dyNvCfGK8mjXFqlXmqpjMMpkHO9vYVg==
X-Received: by 2002:a17:902:d204:: with SMTP id t4mr108417233ply.167.1578333292699;
        Mon, 06 Jan 2020 09:54:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:90ca:: with SMTP id k10ls10615943pfk.12.gmail; Mon, 06
 Jan 2020 09:54:52 -0800 (PST)
X-Received: by 2002:a65:68ca:: with SMTP id k10mr114273496pgt.222.1578333292095;
        Mon, 06 Jan 2020 09:54:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578333292; cv=none;
        d=google.com; s=arc-20160816;
        b=v8a9ulhpTFyK9nqUozmm5EA2Qx/FLYx87CxbLdzHneDNcMpf+F30g8GyFfFM9btiuz
         qMnq869i5ik375+/J9B83fBWrM7SIwAFY2hw8sK2CLe9V0a2u/wGCsP4BwlSNxj+KPeS
         gtmahcyt8C10LDvDsTnP/OtrRwrIRd+25OPd+fOVEF0P5gGR10KFBdVkdCb6Pl0oJhxH
         Kd1K7skmczrE7QDVJvvRXxFOWf4wbuxq/mr5n6FoNmBSW14RR+aE/CPsaj7Yw34IKusu
         VZzU2M8vLsYA4nif/Xg8Q6yxlfytbTWUgEeZBrTOjGXRw2Cv0G27u0dyTII0+2ZJ5rSG
         Lu5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=lRqSss4SqAXMQhfDnzJg17qBZ/Lw6fyEDMuW/S0jatI=;
        b=MEZzYJvm2lq+Bw+C9ytRaPAiJGM3shj0XatKyImdAz6F2cBolwWjMlVKqWXauajwIV
         S8IH6OgGQe9FyOAcgSUsdW9Rss1UNtW1Xe4IK3RLOlTRfOE8aWYwrYv/7iBkQu6tfvva
         yvn49B9vj+0X2vrdU5TbMJAOzGwtMnLd/WnQMHYewcGp97wpEJiIFZyVPpZ4ekiB0S/1
         GZJ6oyjm0Bj9LZEJKEK6JEED0T+gA+QOefLbdnPkUkDzNVfXwB7yFlfUDK0eOKT0shWQ
         Tv6Sh4DbNERoK3h6vG427NN7qIqTUoD4xGq8SUTkcAS16rLOcaRd0YbnnO6DjAi4kpMw
         Kxsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=ipd8=23=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=IpD8=23=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si928928pjv.0.2020.01.06.09.54.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Jan 2020 09:54:52 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=ipd8=23=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A93EC2146E;
	Mon,  6 Jan 2020 17:54:50 +0000 (UTC)
Date: Mon, 6 Jan 2020 12:54:49 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Qian Cai <cai@lca.pw>
Cc: Peter Zijlstra <peterz@infradead.org>,
 clang-built-linux@googlegroups.com, Alexei Starovoitov <ast@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: "ftrace: Rework event_create_dir()" triggers boot error
 messages
Message-ID: <20200106125449.563a2047@gandalf.local.home>
In-Reply-To: <3F343134-63CB-4D99-97AD-F512B8760C94@lca.pw>
References: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
	<20191218233101.73044ce3@rorschach.local.home>
	<3F343134-63CB-4D99-97AD-F512B8760C94@lca.pw>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=ipd8=23=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=IpD8=23=goodmis.org=rostedt@kernel.org"
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

On Mon, 6 Jan 2020 12:05:58 -0500
Qian Cai <cai@lca.pw> wrote:

> > diff --git a/kernel/trace/trace_syscalls.c b/kernel/trace/trace_syscall=
s.c
> > index 53935259f701..abb70c71fe60 100644
> > --- a/kernel/trace/trace_syscalls.c
> > +++ b/kernel/trace/trace_syscalls.c
> > @@ -269,7 +269,8 @@ static int __init syscall_enter_define_fields(struc=
t trace_event_call *call)
> > 	struct syscall_trace_enter trace;
> > 	struct syscall_metadata *meta =3D call->data;
> > 	int offset =3D offsetof(typeof(trace), args);
> > -	int ret, i;
> > +	int ret =3D 0;
> > +	int i;
> >=20
> > 	for (i =3D 0; i < meta->nb_args; i++) {
> > 		ret =3D trace_define_field(call, meta->types[i], =20
>=20
> Steve, those errors are still there in today=E2=80=99s linux-next. Is thi=
s patch on the way to the linux-next?

No, because this bug is not in my tree.

I'll send a proper patch to the tip folks.

-- Steve

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200106125449.563a2047%40gandalf.local.home.
