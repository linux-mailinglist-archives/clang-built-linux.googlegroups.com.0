Return-Path: <clang-built-linux+bncBDH7RNXZVMORB7MRRD4QKGQE5SHAZGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C1823283D
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 01:40:47 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id x19sf13443152ooq.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 16:40:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596066046; cv=pass;
        d=google.com; s=arc-20160816;
        b=yoY4R8LRsJU8i7OAQ0VV4F4RJbZJctpOfSwtvI5druSdqp4I1ui9OBQLGVgU/cCCDN
         36VZHFxQLhfjEY6oPk+nc3TmfPt2QKG93LPFBjiAH4EDMvxleaPrW06hOB8dgzBwG3GN
         vtZu+aFgcH2o7RRv9LvY57LI5gEShBULdYbxPvZcgTkgljhMn+tVXTPNz2Xvnf1Du48X
         aZUzGygA6hX9saFG6EJkGVOxCzCqTQHhZK6OTCD1Pd3A3CN5InPNbNCSr1jn3cDMwmxm
         M6kQn/3YdwKyb+75RtdKTkomgVae7XZShYx1Yal6hV/CCRic8eNq38H7IFlqnQrUIp3h
         gACg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :dkim-signature;
        bh=/Lqzzsx/hkyxUoGrrxh0rjOFYItG1hh3EYr7LDdcCUg=;
        b=jYFQOHpFzYA87ekfX7ONSGyNrscO+Ht/4TSm3+F7SMpw315+HErc7wt35tAJcJs44a
         h0qqul32XOQ+R5mIll80QFYNF/LHudppApT9QOYiqeRH9Ep+N/i+KEPCnT3a5GytYP6l
         JPaZJIB1ushENo4nwHQQXqlp9LkTzhMrKjekYosNbUitVpN6plqIpvvqoApUcZDgSXfH
         NPwx4kLhvJipbECJ9Q6Y32ZWIhd1PgHnkF65jFH3SX5RFeRSCdFGJtrnuOTANgjlT8ev
         s3w7K+mw7eMui6fHVCX+Ue8KI0/mK5x40aeUwov1gt0rhlx9+hVM0as1EDqLtqxIXCEN
         7x+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mqCQBH9v;
       spf=pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=rientjes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/Lqzzsx/hkyxUoGrrxh0rjOFYItG1hh3EYr7LDdcCUg=;
        b=LqiEk38h/UBPCJBD/mPpsJHazdFXrapUFFKpehncpWe8wZ4F85LrK1hE2KtsPs5p3g
         oKgr/867PdIjuhkBtxTc4V0E4W9SipmsYquJWFY7vUaBGTj/zkCiOf/7SmnRC94wTFJa
         pmoiEKZky7aUvyek0hSTD+b2Q2lT3awFpJiNFHne2/cL2dLHi4pvz2P4dEz03MaCpD3T
         ASaJc8TcjruhuZAfEcBsDbAKKz2wPpHL7nhCipwuoATtsCD8/NHQRcLLz6ThsHXyBB07
         5OWZ3tWQ8lWxox+7CsgKlqSryv02emdCmoljWHzhizZgBuK35i48FKr77ZS+AuKGOxc2
         TzHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Lqzzsx/hkyxUoGrrxh0rjOFYItG1hh3EYr7LDdcCUg=;
        b=NDEFassLO+NguPBi6gmwExInnseyZpsb6ZAHnjUYvYLhhqra0VqR60Mg/Tz0uVl/Sz
         zwgls4EhCkY4d2/PksDzDe/vBHCjeN56aeUqqGP6FxCdl8qzD6yhaFy6Uv7LJhMMJom/
         Dtn01WcDj+4Rs0TVWmvFiG2CEZmba/ni74Ur0ICzrvRQkn7wp4uPJFJ/b+OzUOOh6+A3
         SNRi4PUdXVptoZvlH6SKaWmyD/l+Zu8Jki1NwoNmmIbqzZuizuqbNPhtoCGA/2QaYinR
         ImLxiMjWrYfr6MNpf3i474StAvE7PmSjtZAxWz+JvSVLMfjC8wcnl4w5DmkdEKF4Xev5
         AkwA==
X-Gm-Message-State: AOAM53355Oq1pEQB0EBXRicZH+0NbvmRqaDGx0Q81+1LW9Wq6k89/VJB
	4smuUV2HmVMYwPr0/0UB/I0=
X-Google-Smtp-Source: ABdhPJxvmUEgW7u3tqBRJPUh08Ldu+e8b5swSDyuHEk9JZj6YVLot0MxJKbExVBM95vMYKv3kA6SDw==
X-Received: by 2002:a9d:6b92:: with SMTP id b18mr116833otq.367.1596066045570;
        Wed, 29 Jul 2020 16:40:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4404:: with SMTP id k4ls799372oiw.8.gmail; Wed, 29 Jul
 2020 16:40:45 -0700 (PDT)
X-Received: by 2002:aca:aace:: with SMTP id t197mr7854471oie.105.1596066045134;
        Wed, 29 Jul 2020 16:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596066045; cv=none;
        d=google.com; s=arc-20160816;
        b=rZPwakSPkIc7kwFycFKJ5aAjT91SrrWOq7rpgcQhF2xa5GDXXSixrAcsrDZmynwYe9
         cq8MQe+zQXLefhSZxS3wr2UjKu+2f9+eQlwXB7ZlkLvdO6RroGimHXHnhcIso9e9VCVW
         dlwyq5l1OxrtBPN60hudHF/x1MVdVxMfUrbTUkx900Bix10ov2ueJGO/XB11QX8/YdmD
         rJJ+BWmpkpd/QmErtop3YtxWgFJ/1vHnpBaBYyNUpIRyZj/oSBoCzLwvm8wxBLvYw6XA
         uFmjhMtfV+eVLQzlTS7lYGvkb0rvUWfi4qbdyegxvRrdadAPQSt/1strOLdrGRlCvGSY
         rbMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=ehka3Bw+qd9RU1NQVDq9GEs2det9sBZFzS6S/ACMdzA=;
        b=y4avOvgAnNGym8Qwfk11yFkvbx4OhxU32cCTDqAXVvtU3mFgMkzhZk4acmhdvnAsZV
         +Ro6nR0ClNc4M6oIiXsVtJWLnCvsh5sstGhyR5tuTPE35CSR0giueKUJr/T2T1BQF7bQ
         fUSXZNThO/QK6yUK3vBWVkZ//yaTJ8CbHKBA7tWrguVW4uve3gSD9TtW7HZyNxGnYVJM
         g6pyWW4qbUNERPYURdZNIcz+mWCSS9WNPChtFMFJZsQ66WkjkVgi/+yjbX/RNfO5wLMH
         d8obITDOulDp/aTQseajazQbgJ4Psl/Jukk2kTbnbyR1TES8NVZepA8ar6z6zGTZFt36
         ydWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mqCQBH9v;
       spf=pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=rientjes@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id c142si224438oig.2.2020.07.29.16.40.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 16:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id q17so12771192pls.9
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jul 2020 16:40:45 -0700 (PDT)
X-Received: by 2002:a17:902:7c8b:: with SMTP id y11mr28788386pll.142.1596066044318;
        Wed, 29 Jul 2020 16:40:44 -0700 (PDT)
Received: from [2620:15c:17:3:4a0f:cfff:fe51:6667] ([2620:15c:17:3:4a0f:cfff:fe51:6667])
        by smtp.gmail.com with ESMTPSA id m190sm2051252pfm.89.2020.07.29.16.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2020 16:40:43 -0700 (PDT)
Date: Wed, 29 Jul 2020 16:40:42 -0700 (PDT)
From: "'David Rientjes' via Clang Built Linux" <clang-built-linux@googlegroups.com>
X-X-Sender: rientjes@chino.kir.corp.google.com
To: Qianli Zhao <zhaoqianligood@gmail.com>, Roman Gushchin <guro@fb.com>
cc: cl@linux.com, penberg@kernel.org, iamjoonsoo.kim@lge.com, 
    Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org, 
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
    zhaoqianli@xiaomi.com
Subject: Re: [PATCH] mm: slab: Avoid the use of one-element array and use
 struct_size() helper
In-Reply-To: <1596034214-15010-1-git-send-email-zhaoqianligood@gmail.com>
Message-ID: <alpine.DEB.2.23.453.2007291640140.3120473@chino.kir.corp.google.com>
References: <1596034214-15010-1-git-send-email-zhaoqianligood@gmail.com>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1482994552-2092936226-1596066043=:3120473"
X-Original-Sender: rientjes@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mqCQBH9v;       spf=pass
 (google.com: domain of rientjes@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=rientjes@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: David Rientjes <rientjes@google.com>
Reply-To: David Rientjes <rientjes@google.com>
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1482994552-2092936226-1596066043=:3120473
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 29 Jul 2020, Qianli Zhao wrote:

> From: Qianli Zhao <zhaoqianli@xiaomi.com>
>=20
> There is a regular need in the kernel to provide a way to declare having =
a
> dynamically sized set of trailing elements in a structure. Kernel code sh=
ould
> always use =E2=80=9Cflexible array members=E2=80=9D[1] for these cases. T=
he older style of
> one-element or zero-length arrays should no longer be used[2].
>=20
> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes.
>=20
> [1] https://en.wikipedia.org/wiki/Flexible_array_member
> [2] https://github.com/KSPP/linux/issues/21
>=20
> Signed-off-by: Qianli Zhao <zhaoqianli@xiaomi.com>
> ---
>  mm/slab.h        | 2 +-
>  mm/slab_common.c | 7 ++-----
>  2 files changed, 3 insertions(+), 6 deletions(-)
>=20
> diff --git a/mm/slab.h b/mm/slab.h
> index 74f7e09..c12fb65 100644
> --- a/mm/slab.h
> +++ b/mm/slab.h
> @@ -34,7 +34,7 @@ struct kmem_cache {
> =20
>  struct memcg_cache_array {
>  	struct rcu_head rcu;
> -	struct kmem_cache *entries[0];
> +	struct kmem_cache *entries[];
>  };
> =20
>  /*

This is removed in the -mm tree, see=20
https://www.ozlabs.org/~akpm/mmotm/broken-out/mm-memcg-slab-use-a-single-se=
t-of-kmem_caches-for-all-allocations.patch

> diff --git a/mm/slab_common.c b/mm/slab_common.c
> index fe8b684..56f4818 100644
> --- a/mm/slab_common.c
> +++ b/mm/slab_common.c
> @@ -166,9 +166,7 @@ static int init_memcg_params(struct kmem_cache *s,
>  	if (!memcg_nr_cache_ids)
>  		return 0;
> =20
> -	arr =3D kvzalloc(sizeof(struct memcg_cache_array) +
> -		       memcg_nr_cache_ids * sizeof(void *),
> -		       GFP_KERNEL);
> +	arr =3D kvzalloc(struct_size(arr, entries, memcg_nr_cache_ids), GFP_KER=
NEL);
>  	if (!arr)
>  		return -ENOMEM;
> =20
> @@ -199,8 +197,7 @@ static int update_memcg_params(struct kmem_cache *s, =
int new_array_size)
>  {
>  	struct memcg_cache_array *old, *new;
> =20
> -	new =3D kvzalloc(sizeof(struct memcg_cache_array) +
> -		       new_array_size * sizeof(void *), GFP_KERNEL);
> +	new =3D kvzalloc(struct_size(new, entries, new_array_size), GFP_KERNEL)=
;
>  	if (!new)
>  		return -ENOMEM;
> =20
> --=20
> 2.7.4
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/alpine.DEB.2.23.453.2007291640140.3120473%40chino.kir.cor=
p.google.com.

--1482994552-2092936226-1596066043=:3120473--
