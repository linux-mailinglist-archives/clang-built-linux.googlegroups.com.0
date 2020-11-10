Return-Path: <clang-built-linux+bncBC27X66SWQMBBU6YU76QKGQEESH3GKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0C22ACA70
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 02:26:45 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id x9sf8076558pff.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 17:26:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604971604; cv=pass;
        d=google.com; s=arc-20160816;
        b=YpSv33T+YgWCwzKnn+7Dj2XMnuQGl0+9NzbAOgrLN6Tg7bWLARY/BPQ8kKH4Xz51QO
         wAR48YArOzuq9cBXIcDEmdE2sqloQVLNmKuxwfZLisfAoS/t3djlE+z6byDWDx7NjTPj
         Ni2DozMELE4wvbkoRaxdvcjhXXELvX5TW238eysSc1K9gYthhYW2kYMse7Q+LFfJIZEJ
         9iqE3IIHNJ2n1FxzFbFfHUNuP4wp/gmD3KQ+cNoh0n57miLEwoXvdO/lyJ8nxFP2YKV9
         sW9UnH6+jLr/1fDr2cRljEU7TgREiRu1XgDr1+WYhwNZ3sCUswN1QSr7PT3cY+yG56y4
         T+aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=0MeODZJbO73J6CS3Dzf0zxs5MxjC/KZCS8G17hZ6NPc=;
        b=PmRHFjBfkuvA0dETt7zyufzvKVG+wq7cxfrIzsoZ35DMwH9uPbKr1nBXbnuR9gi9SD
         0ldyyOEzsn66EEzMpNn61Zqsl4JkJVi1Razoe3wdrSpY4mx2Zk7uGOpTBSP7/PXtC4Z0
         FD4iYZn4LtcOICWi6gGOzMdxzuRqCqpsDM8GCEN2alR4c5555orreMByVMTrihlfR7F2
         esjydgQLICEZ87Klb1LAeTb79bHWxsLoLbzgBvYmaQT2qmdZRXWsNaTyJWbsMrl8yzwS
         2+l/HCqyMBNEjoDw8dW4HlPVbnya6dJRjRwVo6xk5CoXCorSXckrv2hXZ0LfUhRAZqse
         meXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=a5cXAsAz;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0MeODZJbO73J6CS3Dzf0zxs5MxjC/KZCS8G17hZ6NPc=;
        b=sqSY1ozL0kwJPzB4aAdW/47Ohx0bnobIS0sTUHWZKUxAsNqpZA5MOTeTGkCi2HkfPy
         0VjWR1X0pwsNUIN9TPpw6Fj0cjDQZADiSwMt1bhpRapZDqAdJs01JDCZgM77bbqURBU4
         K1Zkr8OJXUeuX5K4E8/l2O6ZtI6q/Py25P8LLyWyhDDtxOq9Koq1JRtOrEYDXErY+3Tv
         t9jrZVA2bU0a74yuwnebVnQibv1vkBjxzRXknnNueFFKCcGsy4eDFad97RXM45Pbum65
         35z7kkZlM04i2auJzOhqgcCRj0CC5rDJTqa4o/0rzv7SJfcxRCnfVRzaphV5Xgu6ZK6v
         fXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0MeODZJbO73J6CS3Dzf0zxs5MxjC/KZCS8G17hZ6NPc=;
        b=kY18uG9moWT7/8Q5VUrpidEfLr+1VdoHNqU1WpR0sLulsa6kLuvcHXdNRKRWVna+9X
         gmBLplWF6f1W2OqCxUBbk5htFRS5OpzYUzVkx1qhEbObZJAMbMYDl7Nmk8dpjKcM6HsB
         ZSJk/ioie1w+wI/RWEWtB6VDH0t2Mm626oF6G12EyySDY3nxoKePTg3lUJjdOcyvFBGX
         icNBc4sv5glUxclvO7VXZwLfqFB+JybxF/0elpSgVbIgVzTdnbZSH64uMmzwM4X9m4qn
         fdufKYPRuqMa83Ha8Af8dNXRiSeqyki+RUYncJwmym04eNe/l+IYN50CzJ+EcDTBPAfR
         G+5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QGtqZWhHv4dj/GDIE5hAo9gBwSupvGdJ808vpZnUaJKGeeTxr
	3NobwTeks1N0ehIV187S644=
X-Google-Smtp-Source: ABdhPJxJqoQrjtquXXRS+5JUq0MzrTd32z9AwGoJT2Gy3SUz8DPl+yGa4YSDfzo+NoZtvbvBSTiR6g==
X-Received: by 2002:aa7:978b:0:b029:18b:cd71:8d36 with SMTP id o11-20020aa7978b0000b029018bcd718d36mr12811363pfp.54.1604971603932;
        Mon, 09 Nov 2020 17:26:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d98:: with SMTP id v24ls4483026plo.4.gmail; Mon, 09
 Nov 2020 17:26:43 -0800 (PST)
X-Received: by 2002:a17:90a:4fa6:: with SMTP id q35mr2274879pjh.55.1604971603316;
        Mon, 09 Nov 2020 17:26:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604971603; cv=none;
        d=google.com; s=arc-20160816;
        b=txy0YJEKu3G/SQ9ZiJpHNS4zj0P+RtXBmmfXCk0XJu+BETMnyuWaCUUuNe9+4MpTi9
         nn84kSkrLWCdxjbh5T5a8J1m1PjOReCZ38z2Bu5R8Lf1+PjpLO9FB3r0cUw8bh/CnqV2
         aGrhcfOtCGSVXDC6f8sMUzC4D6xuC+hP+WdqWnFdZ1CIRWu3oFIu1RHyHf8p2zzaGYTz
         ksMwUNf2nhipwpuDKXPuigmLRWjN5iC9Goh851CW3831JzIYocDdarJlhWgNhDzdd96+
         pES8ZzlZLa/PMBnychCpBpOzTS2nXfzlZykbhAIyOrmn6ZkpXs6Z0y753mrWDHgJlPtN
         0y5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=t05JtdUe9+ueKiWP7Cd0WcO5v2xombvbloOzDhjvSkg=;
        b=0NQQ/mtpo2acLz9g6IVOHNXoNjNoyNYzi8LO1s6VEd7sGa/zPhREk2NzmtR4zMZBj1
         PRsGi1RPQUQlQ3NWY3udJcBkdc/7XJaCpjzZAkTW90kJbCPIdlYfbIP9wPNR5R7E8CZW
         u9La4TzrGodZfmFR96DchenKXudG68qpMuCTnRXGXxjG2RtkLE83Lp+tWz0gxWiOqxE5
         hW1uYpH1fiB4QnuHouTmAmZL2d1JA6kfDMfo7bx4OEyztTj+hrG2ueJ2BQ6tVQHey0+d
         Zuqb794l1OQAzFQqanzTMIxKra9rwWk1GebPhRSHlUKYgMscfajpsYRMSyli5TkHtKOA
         Uh1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=a5cXAsAz;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id ne10si155493pjb.0.2020.11.09.17.26.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 17:26:43 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-SDmL-T37Ps6gCGqW6FZYrw-1; Mon, 09 Nov 2020 20:26:40 -0500
X-MC-Unique: SDmL-T37Ps6gCGqW6FZYrw-1
Received: by mail-qv1-f71.google.com with SMTP id z9so6987994qvo.20
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 17:26:40 -0800 (PST)
X-Received: by 2002:a05:6214:12e8:: with SMTP id w8mr12148210qvv.16.1604971600055;
        Mon, 09 Nov 2020 17:26:40 -0800 (PST)
X-Received: by 2002:a05:6214:12e8:: with SMTP id w8mr12148196qvv.16.1604971599811;
        Mon, 09 Nov 2020 17:26:39 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id f56sm5363152qta.49.2020.11.09.17.26.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 17:26:39 -0800 (PST)
Subject: Re: [PATCH] sysctl: move local variable in proc_do_large_bitmap() to
 proper scope
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Kees Cook <keescook@chromium.org>,
 Iurii Zaikin <yzaikin@google.com>, linux-fsdevel@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
 linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
References: <20201109071107.22560-1-lukas.bulwahn@gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <e0cf83dc-2978-70ce-aeb2-37873cc81c03@redhat.com>
Date: Mon, 9 Nov 2020 17:26:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201109071107.22560-1-lukas.bulwahn@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=a5cXAsAz;
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


On 11/8/20 11:11 PM, Lukas Bulwahn wrote:
> make clang-analyzer caught my attention with:
>
>   kernel/sysctl.c:1511:4: warning: Value stored to 'first' is never read =
\
>   [clang-analyzer-deadcode.DeadStores]
>                           first =3D 0;
>                           ^
>
> Commit 9f977fb7ae9d ("sysctl: add proc_do_large_bitmap") introduced
> proc_do_large_bitmap(), where the variable first is only effectively used
> when write is false; when write is true, the variable first is only used =
in
> a dead assignment.
>
> So, simply remove this dead assignment and put the variable in local scop=
e.
>
> As compilers will detect this unneeded assignment and optimize this anywa=
y,
> the resulting object code is identical before and after this change.
>
> No functional change. No change to object code.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on v5.10-rc3 and next-20201106
>
> Luis, Kees, Iurii, please pick this minor non-urgent clean-up patch.
>
>  kernel/sysctl.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> index ce75c67572b9..cc274a431d91 100644
> --- a/kernel/sysctl.c
> +++ b/kernel/sysctl.c
> @@ -1423,7 +1423,6 @@ int proc_do_large_bitmap(struct ctl_table *table, i=
nt write,
>  			 void *buffer, size_t *lenp, loff_t *ppos)
>  {
>  	int err =3D 0;
> -	bool first =3D 1;
>  	size_t left =3D *lenp;
>  	unsigned long bitmap_len =3D table->maxlen;
>  	unsigned long *bitmap =3D *(unsigned long **) table->data;
> @@ -1508,12 +1507,12 @@ int proc_do_large_bitmap(struct ctl_table *table,=
 int write,
>  			}
> =20
>  			bitmap_set(tmp_bitmap, val_a, val_b - val_a + 1);
> -			first =3D 0;
>  			proc_skip_char(&p, &left, '\n');
>  		}
>  		left +=3D skipped;
>  	} else {
>  		unsigned long bit_a, bit_b =3D 0;
> +		bool first =3D 1;

This looks fine, but while you are here how about setting, to match the typ=
e

first =3D true

And then only clearing first once

if (!first) =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0
=C2=A0 proc_put_char(&buffer, &left, ',');

else

=C2=A0 first =3D false

Instead of at every loop iteraction

Tom

> =20
>  		while (left) {
>  			bit_a =3D find_next_bit(bitmap, bitmap_len, bit_b);

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e0cf83dc-2978-70ce-aeb2-37873cc81c03%40redhat.com.
