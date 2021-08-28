Return-Path: <clang-built-linux+bncBD65ZB5APQIORC5JREDBUBBIPEZ2M@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B183FA637
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 16:19:21 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id u30-20020a67c81e000000b002c3cf9d4614sf1776615vsk.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 07:19:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630160360; cv=pass;
        d=google.com; s=arc-20160816;
        b=qv/mT9qXD0T2pbtBz5ixHvaCWlLnmRWllCj3w/s+T0U6NyWAmXjDFiqPiY+Fpenwsk
         d9W5xi0f46r4B6gD2+5jeJMTA9OtAJqEqSXZAwkCcKJK0G2juBPE9APATNjssxfoU/5N
         UNZDR45QYhxe+3GFuGHbfOh6iJ8IORyUNwxeVU/fx4OvKllRqn8AD1OJlWr/ZSIWEZsX
         KQbveolokZ9bZeOhsfwHw7FWiLod6aSxQThhEeYwKtkwVRLnLaOfYc1CmlQYWCtt7RKU
         EsFT1B0ugFseDZKHSXu/1zp4hH/AavZoZ+jp/XkQ3k8qCK98TLWWHxCEpO+2EqmN1fIh
         TdqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uCQYKzb7/rCGTbYQWzX/GX6bwZJkMGb7AYwAXksGgYk=;
        b=QZ+wVxgzu0rR7iRdbfJCXRhegvehauWoiqe3zqhlImIejqAp0cEd1fLSZE2+C1zJhn
         LyYev8x853uYJaSr36xCOaObBhXOmk/sIlPjuhopN6kxiYBMhU7U/a7fxSFl0VPU/+Rt
         Xcbh2erGhS1TzMgp2dKcyMcpMS3ttfhL/AZ4Ny/eTbDaQbAyTH531gsqYXC9ey7TFh+8
         4v7aWQHWdlsjS/qmV2vuebAzBUscpmndLDxJJoe2ZjY4Yxx0SnqTk60EHJO18efxiy+M
         bz4btx0FGydJ0lMSraSxM5YMySpZWRu1agJVsbD4wBI9PHrEVBAUJwcla2kWBPEdwq7b
         5i3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cItyuobQ;
       spf=pass (google.com: domain of haliu@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=haliu@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uCQYKzb7/rCGTbYQWzX/GX6bwZJkMGb7AYwAXksGgYk=;
        b=YGqp5qcm//gcadoMBzLi6qZfimSYjyuNddwop1izVxHY605GKxu4xRiyVyGtreDDYA
         3hYfFDANHBlSapk3hJKLl5yaxvcDsgSxJxZiQRHJcFXLZCXrPk4c60SKa1praUckXEkj
         RAX0aRjmoGW5oeNAUvz2zkWIdGEwlIEiOu5ARw0wXSPW9Uu9Y991JSnlZjLy0WnZyuo2
         lV94Gks519qmNcoPAUMM3Gi8+gvvAasy/L8sws3JqXTduCvya7oiHjeGBZHEFUPA9ihJ
         eZVEl94xQXEAkX9X72zA9Eq3N/QxLfb+JqUaWUhLvIj60oNi5jpjrLVDF2jor2YYtJnT
         aG0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uCQYKzb7/rCGTbYQWzX/GX6bwZJkMGb7AYwAXksGgYk=;
        b=KQEau3Afkt6Y/mmaOQXUhd1Y2pNL1isyVws5CE5miTgs1YajcQrRJhUmi+0ZOXM1Oo
         NkPi+capnEa9woFWN+rnsK7g7LK5W3YElblNtFZpJ2lwvJIB7D83TPGVXHqC8jvLvN7W
         2mOOa427gxuzEKPWSW1sQT5aigFiaWoSOGC4T8wU2CW8Vc3IseIVd3gBp+iVmkWZKlKm
         mVfoNKKB6i6INiUghodFKRmF91NuIdkkHMtrrvOniK97WTgZ1ZCsQEwlU9hBYIawe1ID
         gUJg6h6FK2UXj0Widk5j+Xl8SLahQ0NbL1/vKmq2cHxrWObx6iSMBHx0FqdvOgHyJoCe
         xGFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ny1bZMvc8j0oJqq/zv5CNHo5quWZVZxFLUm5d6TxpcPfQ44YZ
	iWji/qA+JrFFycx9xULpq8U=
X-Google-Smtp-Source: ABdhPJzf5Z0WdeiPNipUPre5IQG0RnziE4BHjC41miXQwDJTCa35hOR9zq3gchZl6RcEnjbD88ekhg==
X-Received: by 2002:a1f:a68c:: with SMTP id p134mr10265092vke.14.1630160360345;
        Sat, 28 Aug 2021 07:19:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e24e:: with SMTP id w14ls2256234vse.6.gmail; Sat, 28 Aug
 2021 07:19:19 -0700 (PDT)
X-Received: by 2002:a05:6102:3e92:: with SMTP id m18mr10515691vsv.53.1630160359805;
        Sat, 28 Aug 2021 07:19:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630160359; cv=none;
        d=google.com; s=arc-20160816;
        b=WiRbhAfPuk70APzPn+ermetH7npQhQRJtPg/ypF/85J/ndZTBPYGKcGp2/AV9/brjc
         r6z2GMY9pmrF6SGyNfC77QVrcML8VCMlFUc/mLcdPp8gT/g0SyFfjIqaAQD3c/3dtO4y
         xHIICwZtEcfJpsCTvvajcoe0CMtIvke6wnEa0Dbaswdu3JYUpzRZcWlIl21gGvYSa7gx
         Wp0M/k4NKNnF5v0By3IedKUGXvLxf5ogMAaAkQ8mNlE3b0bvmihAucHLjzuO74E8HAPq
         Wtwpw4ode64PWb4mPinVLD/9xULF6lQ/kx4/hiqZjU4MF+NiAWnV5Wrjfxkfqmihvy0P
         PkiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CwedDW3lgdmXbvb6e5O0o+KgOhpDZpqjAIOTlYDDcno=;
        b=h/PKAveuOSiRRFyHh313HNS2YcJa29HgPvVJmJ7nkQ0ckmWKkTIb7Q6TfJVzDPakLS
         skrOu3A0nCmaP8uPS+0EDLFAsRWYX2Q8jDEf7fLjpq4M5FpPJNLxNNIMxtGs+0wgW2ey
         3JwAvGY9ANtYyGtrB0iv2TU7kf3VDh685mdNc6K43R0fUNMYcDwNUq7xTJuFFOA5rdGl
         Ma6CpzUYnY1IbFFAVoY21YqYP92zqZgJRTrdzZGCx1cgLgAm4lr72GUsirE9anok21Jn
         nMESj0qGU+M29mwuKt4g+zDv7RDp4XJcNVqY17mb1cSB7haLJZ32v+AlwWcLHgKNQeP1
         6Zww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cItyuobQ;
       spf=pass (google.com: domain of haliu@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=haliu@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id m184si626479vkg.1.2021.08.28.07.19.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Aug 2021 07:19:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of haliu@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-16-QuPtuzBPOXG7N9Q5l5AlfA-1; Sat, 28 Aug 2021 10:19:17 -0400
X-MC-Unique: QuPtuzBPOXG7N9Q5l5AlfA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5965A1008062;
	Sat, 28 Aug 2021 14:19:16 +0000 (UTC)
Received: from Laptop-X1 (ovpn-12-59.pek2.redhat.com [10.72.12.59])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4733A6A90A;
	Sat, 28 Aug 2021 14:18:54 +0000 (UTC)
Date: Sat, 28 Aug 2021 22:18:50 +0800
From: Hangbin Liu <haliu@redhat.com>
To: Kees Cook <keescook@chromium.org>
Cc: CKI Project <cki-project@redhat.com>, skt-results-master@redhat.com,
	clang-built-linux@googlegroups.com,
	Memory Management <mm-qe@redhat.com>,
	Jan Stancek <jstancek@redhat.com>, Filip Suba <fsuba@redhat.com>,
	Jiri Dluhos <jdluhos@redhat.com>,
	Fendy Tjahjadi <ftjahjad@redhat.com>,
	Milos Malik <mmalik@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>, Yi Zhang <yizhan@redhat.com>,
	Jinghua Wu <jinwu@redhat.com>, Jianwen Ji <jiji@redhat.com>,
	Li Wang <liwang@redhat.com>
Subject: Re: =?utf-8?Q?=E2=9D=8C_FAIL=3A_Test_repor?= =?utf-8?Q?t?= for
 kernel 5.14.0-rc7 (mainline.kernel.org-clang, fe67f4dd)
Message-ID: <YSpFytRhC2fc9oGn@Laptop-X1>
References: <cki.1BFC96371E.L9SGD4WTN7@redhat.com>
 <E0BFA0B2-BB53-4AD0-B1FC-BE13AC3E4242@chromium.org>
MIME-Version: 1.0
In-Reply-To: <E0BFA0B2-BB53-4AD0-B1FC-BE13AC3E4242@chromium.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: haliu@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cItyuobQ;
       spf=pass (google.com: domain of haliu@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=haliu@redhat.com;
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

On Fri, Aug 27, 2021 at 07:43:55AM -0700, Kees Cook wrote:
> 
> 
> On August 26, 2021 7:06:23 AM PDT, CKI Project <cki-project@redhat.com> wrote:
> > [...]
> >We built the following selftests:
> >
> >  x86_64:
> >      net: OK
> >      bpf: fail
> >      install and packaging: OK
> 
> Are you able to add seccomp and lkdtm self-tests too?

Hi Kees,

For upstream testing(it's a little different for downstream testing), You need
to ask CKI to build seccomp and lkdtm test first. Then update kpet-db[1] to add
seccomp and lkdtm test.

[1] https://gitlab.com/cki-project/kpet-db/-/blob/main/cases/selftests/kselftests/upstream/index.yaml

Thanks
Hangbin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSpFytRhC2fc9oGn%40Laptop-X1.
